--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry,0 ) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����

end

function after_destroy_entry_abandonedcity3(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 

end

function check_can_enter_abandonedcity3( role, copy_mgr )
    local Cha = TurnToCha(role)
  
	if Lv(Cha) >=30 and Lv(Cha) <=45 then
		
		return 1

	else
		SystemNotice(role, "To enter Forsaken City, players must be between Lv 30 to 45")
		return 0
	end
end

function begin_enter_abandonedcity3(role, copy_mgr) 
    
		SystemNotice(role,"Entering [Forsaken City 3]") 
		MoveCity(role, "Forsaken City 3")

end