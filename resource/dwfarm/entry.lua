--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --���������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
    local EntryName = "DW Farm Map"
    SetMapEntryEventName( entry, EntryName )


    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Announcement: Ascaron region at ["..posx..","..posy.."] emerges a portal that leads to [DW Farm Map].") --֪ͨ������������������

end

function after_destroy_entry_dwfarm(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: Portal to [DW Farm Map] has vanished. Enjoy!") 

end

function after_player_login_dwfarm(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "Announcement: Ascaron region at ["..posx..","..posy.."] emerges a portal that leads to [DW Farm Map].") --֪ͨ������������������

end



function check_can_enter_dwfarm( role, copy_mgr )
    local Cha = TurnToCha(role)
  
	if Lv(Cha) >=60 then
		
		return 1

	else
		SystemNotice(role, "To enter DW Farm Map, players must be at least level 600")
		return 0
	end
end


function begin_enter_dwfarm(role, copy_mgr) 

	SystemNotice(role,"Entering [DW Farm Map]") 
	MoveCity(role, "DW Farm Map")

end 