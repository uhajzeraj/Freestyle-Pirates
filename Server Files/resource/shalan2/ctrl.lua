--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    -----MapCanPK(map, 0) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end


function get_map_entry_pos_shalan2()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=1244
	local POS_Y=3203
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "magicsea") --������ڵ�λ�ã���ͼ����
    SetMapEntryTime(map, "2005/8/30/13/0", "0/6/0", "0/4/0", "0/4/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end


function can_open_entry_shalan2( map ) 
--	local time = GetTickCount ( ) 
	local Now_Time = GetNowTime()
	if Now_Time ==13 or Now_Time == 19 then
		return 1
	else
		return 0
	end

end 