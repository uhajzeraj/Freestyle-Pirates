--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
   
end

function after_destroy_entry_dvalley2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 

end

function check_can_enter_dvalley2( role, copy_mgr )
    local Cha = TurnToCha(role)
  
	if Lv(Cha) >=100 then
		
		return 1

	else
		SystemNotice(role, "To enter Death Valley 2, players must be at least level 100")
		return 0
	end
end

function begin_enter_dvalley2(role, copy_mgr) 
    
		SystemNotice(role,"Entering [Death Valley 2]") 
		MoveCity(role, "Death Valley 2")

end