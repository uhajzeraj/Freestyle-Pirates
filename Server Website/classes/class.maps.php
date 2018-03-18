<?php
 
        Class MapPlanning
        {
                var $mapsEntryTime = array();
                var $planning = array();
                
                var $planningScopeStart = null;
                var $planningScopeEnd = null;
                
                function MapPlanning($start=null, $end=null)
                {
                        if ($start)
                        {
                                $this->planningScopeStart = $start;
                        }
                        else
                        {
                                $this->planningScopeStart = time();
                        }
                        
                        if ($end)
                        {
                                $this->planningScopeEnd = $end;
                        }
                        else
                        {
                                $this->planningScopeEnd = time() + 10*3600;
                        }
                }
                
                function SetMapEntryTime($mapName, $RootTime, $OpeningPeriod, $PortalDuration, $MapDuration)
                {
                        $tempRootData = explode('/' , $RootTime);
                        $rootTimestamp = mktime($tempRootData[3], $tempRootData[4], 0, $tempRootData[1], $tempRootData[2], $tempRootData[0]);
 
                        $tempInterval = explode('/', $OpeningPeriod);
                        $interval = $tempInterval[2]*60 + $tempInterval[1]*3600 + 86400*$tempInterval[0];
                        
                        $tempMapDuration =  explode('/', $MapDuration);
                        $mapDuration = $tempMapDuration[2]*60 + $tempMapDuration[1]*3600 + 86400*$tempMapDuration[0];
                        
                        $tempPortalDuration =  explode('/', $PortalDuration);
                        $portalDuration = $tempPortalDuration[2]*60 + $tempPortalDuration[1]*3600 + 86400*$tempPortalDuration[0];
                        
                        $this->mapsEntryTime[$mapName] = array(
                                'rootTime' => $rootTimestamp,
                                'openingInterval' => $interval,
                                'mapDuration' => $mapDuration,
                                'portalDuration' => $portalDuration
                        );
                        
                        $this->preHashMapPlanning($mapName);
                }
                
                function preHashMapPlanning($mapName)
                {
                        $this->planning[$mapName] = array();
                        
                        if (!isset($this->mapsEntryTime[$mapName]))
                        {
                                die('No conf for map available');
                        }
                        
                        $mapConf = $this->mapsEntryTime[$mapName];
                        
                        $countSessionsFromOrigin = floor(($this->planningScopeStart - $mapConf['rootTime']) / $mapConf['openingInterval']);
                        $FramedStartTimeStamp = $mapConf['rootTime'] + ($mapConf['openingInterval'] * $countSessionsFromOrigin);
                        while ($FramedStartTimeStamp <= $this->planningScopeEnd)
                        {
                                $openingTime = $FramedStartTimeStamp;
                                $portalClosure = $openingTime +  $mapConf['portalDuration'];
                                $mapClosure = $openingTime +  $mapConf['mapDuration'];
                                
                                $FramedStartTimeStamp += $mapConf['openingInterval'];
                                
                                $this->planning[$mapName][] = array(
                                        'mapOpening' => $openingTime,
                                        'portalClosing' => $portalClosure,
                                        'mapClosing' => $mapClosure
                                );
                        }               
                }
                
                function getMapList()
                {
                        return array_keys($this->mapsEntryTime);
                }
                
                function isMapOpened($mapName, $baseTime = null)
                {
                        if ($baseTime == null) $baseTime = time();
                        
                        if (!isset($this->planning[$mapName]))
                        {
                                return false;
                        }
                        
                        foreach ($this->planning[$mapName] as $timeframe)
                        {
                                if ($baseTime >= $timeframe['mapOpening'] && $baseTime < $timeframe['mapClosing'])
                                {
                                        return true;
                                }
                        }
                        
                        return false;
                }
                
                function isPortalOpened($mapName, $baseTime = null)
                {
                        if ($baseTime == null) $baseTime = time();
                        
                        if (!isset($this->planning[$mapName]))
                        {
                                return false;
                        }
                        
                        foreach ($this->planning[$mapName] as $timeframe)
                        {
                                if ($baseTime >= $timeframe['mapOpening'] && $baseTime < $timeframe['portalClosing'])
                                {
                                        return true;
                                }
                        }
                        
                        return false;
                }
                
                function getMapClosingTime($mapName, $baseTime = null)
                {
                        if ($baseTime == null) $baseTime = time();
                        
                        foreach ($this->planning[$mapName] as $timeframe)
                        {
                                if ($baseTime >= $timeframe['mapOpening'] && $baseTime < $timeframe['mapClosing'])
                                {
                                        return $timeframe['mapClosing'];
                                }
                        }
                        
                        return null;
                }
                
                function getPortalClosingTime($mapName, $baseTime = null)
                {
                        if ($baseTime == null) $baseTime = time();
                        
                        foreach ($this->planning[$mapName] as $timeframe)
                        {
                                if ($baseTime >= $timeframe['mapOpening'] && $baseTime < $timeframe['portalClosing'])
                                {
                                        return $timeframe['portalClosing'];
                                }
                        }
                        
                        return null;
                }
                
                function getNextSessions($mapName, $maxCount, $baseTime = null)
                {
                        if ($baseTime == null) $baseTime = time();
                        
                        $result = array();
                        $itemCount = 0;
                        
                        foreach ($this->planning[$mapName] as $timeframe)
                        {
                                if ($itemCount >= $maxCount) break;
                                if ($timeframe['mapOpening'] > $baseTime)
                                {
                                        $result[] = $timeframe;
                                        $itemCount++;
                                }
                        }
                        
                        return $result;
                }
        }
?>