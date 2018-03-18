<?php

	if (!defined('PKOSITE'))
		die('Go away!');

  define('CRYPT_KEY', '19800216');
  define('DEBUG_MODE',false);
class Inventory {
    var $type;
    var $size;
    var $maxSize;
    var $no;
    var $crc;
    var $items = array();
}

function getSignedValue($value) {
    $unpacked = unpack('L', pack ('l', $value)); 
    return ($unpacked[1]);
}

function computeCrc ( $inventory ) {
    $crc = $inventory->type;
    foreach ($inventory->items as $item) {
      $itemAttrCount = count($item);
      for ($i = 0 ; $i < $itemAttrCount ; $i++) {
        if ($i != 0 && $i != 10) {
          $crc += $item[$i];
        }
      }
    }
    return getSignedValue($crc);
}

function loadInventory ( $maxSize, $no, $input ) {
    $inventory = new Inventory();
    
    $inventory->rawData = $input;
       
    $data = explode (';', $input);
    $dataCount = count($data);
    
    $inventory->no = $no;
    $inventory->maxSize = $maxSize;
    $inventory->type = $data[0];
    $inventory->size = $data[1];
    $inventory->crc = $data[$dataCount - 1];
    
    for ($i=0; $i < $inventory->maxSize ;$i++) {
      $inventory->items[$i] = null;
    }
    
    for ($i = 2 ; $i < $dataCount - 1 ; $i++ ) {
      $item = explode (',', $data[$i]);
      $inventory->items[$item[0]] = $item;
    }
    
    $computedCrc = computeCrc($inventory);
    

    
    if ($inventory->crc != $computedCrc) {

      if (DEBUG_MODE) {
        echo '<hr><b><font color=red>Error in CRC Check !!</font></b></br>';
        echo '<br /><li>CRC Diff :<b> <font color="red">'.$inventory->crc.'</font> Vs<font color="red"> '.$computedCrc.'</font> </b>';
        echo '<hr>';
      }
      return null;
    }
    else {
      return $inventory;
    }
}

function encrypt($input, $key) {
    $keyLen = strlen($key);
    $inputLen = strlen($input);
    $result = '';
    
    for ($i = 0 ; $i < $inputLen ; $i++ ) {
      $result .= chr(ord($input[$i]) + ord($key[$i % $keyLen]));
    }
    
    return $result;
}

function decrypt($input, $key) {
    $keyLen = strlen($key);
    $inputLen = strlen($input);
    $result = '';
    
    for ($i = 0 ; $i < $inputLen ; $i++ ) {
      $result .= chr(ord($input[$i]) - ord($key[$i % $keyLen]));
    }
    
    return $result;
  }

function loadEncodedInventory($cryptedInv, $key) {
    list($maxSize,$no,$cryptedInv) = preg_split ('/[@#]/', $cryptedInv, 3);
    $decypheredInv = decrypt($cryptedInv, $key);
    $inventory = loadInventory($maxSize,$no,$decypheredInv);
    return ($inventory);
}  

function addItemsToInventory($inventory, $itemList) {
	if(!isset($inventory) || $inventory == null)
		return false;
   $itemAssigned = 0;
    for ($i=0; (($i < $inventory->maxSize) && ($itemAssigned < count($itemList))) ; $i++) {
      if ($inventory->items[$i] == null) {
        $inventory->items[$i] = array ($i, $itemList[$itemAssigned][0], $itemList[$itemAssigned][1],$itemList[$itemAssigned][2],$itemList[$itemAssigned][3],$itemList[$itemAssigned][4],$itemList[$itemAssigned][5],$itemList[$itemAssigned][6],$itemList[$itemAssigned][7],$itemList[$itemAssigned][8],$itemList[$itemAssigned][9]);
        $itemAssigned++;
      } 
    }
    
    if ($itemAssigned == count($itemList)) {
    
    } else {
      return false;
    }

    $inventory->size += $itemAssigned;

    $inventory->crc = computeCrc($inventory);

    $inventory->rawData = $inventory->type.';'.$inventory->size.';';
    $itemRawData = array();
    for ($i=0; $i < $inventory->maxSize ; $i++) {
      if ($inventory->items[$i] != null) {
        $itemRawData[] = implode (',',$inventory->items[$i]);
      } 
    }
    $inventory->rawData .= implode(';',$itemRawData);
    $inventory->rawData .= ';'.$inventory->crc;
    return true;
}       

function getEncodedInventory($inventory,$key) {
    $output = $inventory->maxSize.
              '@'.$inventory->no.
              '#'.encrypt($inventory->rawData, $key);
              
    return $output;
}

function extractItemFromInventory($inventory, $item) {
    $copy = array();
    $extract = array();
    
    $k = 0;
    
    for($i=0; $i < $inventory->maxSize; $i++)
    {
        if($inventory->items[$i][1] !=  $item)
        {
           $copy[$k] = $inventory->items[$i]; 
           $k++;
        }
        else
        {
            $extract[0] = $inventory->items[$i];
        }
    }
    
    $inventory->items = $copy;
    
    if(isset($extract[0])) {
    $inventory->size -= 1;
    $inventory->crc = computeCrc($inventory);
    $inventory->rawData = $inventory->type.';'.$inventory->size.';';
    $itemRawData = array();
    for ($i=0; $i < $inventory->maxSize ; $i++) {
      if ($inventory->items[$i] != null) {
        $itemRawData[] = implode (',',$inventory->items[$i]);
      } 
    }
    $inventory->rawData .= implode(';',$itemRawData);
    $inventory->rawData .= ';'.$inventory->crc;
    return true;
        return $extract;
    }
    else {
        return false;
    }
}
?>