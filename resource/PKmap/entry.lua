--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
  --  SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
  --  local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

 --   map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
   -- Notice("�����㲥������ҷ��֣���ħŮ��½������ڽ��þ��л�������䣬����Ϣ��δ��ʵ�����йص�λע�⡣") --֪ͨ������������������

end

function after_destroy_entry_PKmap(entry)
    --map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
   -- Notice("�����㲥��������ṩ����Ϣ�����л�������Ľ����Ѿ������ˡ����Ҽ�����ע��̨�Ĺ㲥��ף����졫��") 

end

function after_player_login_PKmap(entry, player_name)
  --  map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
   -- ChaNotice(player_name, "�����㲥������ҷ��֣���ħŮ��½������ڽ��þ��л�������䣬����Ϣ��δ��ʵ�����йص�λע�⡣") --֪ͨ������������������

end