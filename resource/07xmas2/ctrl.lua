--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    -----MapCanPK(map, 0) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end


function get_map_entry_pos_07xmas2()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=130
	local POS_Y=156
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "07xmas") --������ڵ�λ�ã���ͼ����
    SetMapEntryTime(map, "2007/12/25/0/0", "1/0/0", "0/1/0", "0/1/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end


function can_open_entry_07xmas2( map ) 
end 
