--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
	MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_puzzleworld2()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=172
	local POS_Y=165
	local a = 100
	local k = math.random ( 1 , a )
	if k < 25 then
		POS_X = 172
		POS_Y = 165
	end
	if k >= 25 and k < 50 then
		POS_X = 147
		POS_Y = 384
	end
	if k >= 50 and k < 75 then
		POS_X = 365
		POS_Y = 381
	end
	if k >= 75 then
		POS_X = 365
		POS_Y = 171
	end
	
	return POS_X , POS_Y

--172,165
--147,384
--365,381
--365,171



end

function init_entry(map)
    SetMapEntryMapName(map, "puzzleworld") --������ڵ�λ�ã���ͼ����
    SetMapEntryTime(map, "2012/3/18/0/0", "0/3/0", "0/1/0", "0/2/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end



function check_can_enter_puzzleworld2( role, copy_mgr )
	if Lv(role) >=50 then
			
		return 1
				
	else
		SystemNotice(role, "Only players Lv 50 and above may enter Demonic World 2")
		return 0    
	end
end

function begin_enter_puzzleworld2(role, copy_mgr) 
    
		SystemNotice(role,"Entering [Demonic World 2]") 
		MoveCity(role, "Demonic World 2")

end