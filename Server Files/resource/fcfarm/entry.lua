--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    local EntryName = "FC Farm Map"
    SetMapEntryEventName( entry, EntryName )


    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Announcement: Ascaron region at ["..posx..","..posy.."] emerges a portal that leads to [FC Farm Map].") --֪ͨ������������������

end

function after_destroy_entry_fcfarm(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: Portal to [FC Farm Map] has vanished. Enjoy!") 

end

function after_player_login_fcfarm(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "Announcement: Ascaron region at ["..posx..","..posy.."] emerges a portal that leads to [FC Farm Map].") --֪ͨ������������������

end



function check_can_enter_fcfarm( role, copy_mgr )
    local Cha = TurnToCha(role)
  
	if Lv(Cha) >=30 and Lv(Cha) <=45 then
		
		return 1

	else
		SystemNotice(role, "To enter FC Farm Map, players must be at between level 30 to 45")
		return 0
	end
end


function begin_enter_fcfarm(role, copy_mgr) 

	SystemNotice(role,"Entering [FC Farm Map]") 
	MoveCity(role, "FC Farm Map")

end 