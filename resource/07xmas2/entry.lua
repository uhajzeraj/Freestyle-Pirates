--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Announcement: According to reports, near Chirstmas Village at ["..posx..","..posy.."]emerges a portal to [Converse Chirstmas Village]. All players please take note!") --֪ͨ������������������

end

function after_destroy_entry_07xmas2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: According to reports, the portal to [Converse Chirstmas Village] has vanished. Enjoy!") 

end

function after_player_login_07xmas2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "Announcement: According to reports, near Chirstmas Village at ["..posx..","..posy.."]emerges a portal to [Converse Chirstmas Village]. All players please take note!") --֪ͨ������������������

end

function begin_enter_07xmas2(role, copy_mgr) 
	SystemNotice(role,"Entering [Converse Chirstmas Village]") 
	MoveCity(role, "Converse Chirstmas Village")
end