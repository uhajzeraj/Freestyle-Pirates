--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口
    local EntryName = "Temple of Lilith"
    SetMapEntryEventName( entry, EntryName )


    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("Announcement: Deep Blue region at ["..posx..","..posy.."] emerges a portal that leads to [Temple of Lilith].") --通知本组服务器的所有玩家

end

function after_destroy_entry_temple(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: Portal to [Temple of Lilith] has vanished. Enjoy!") 

end

function after_player_login_temple(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    ChaNotice(player_name, "Announcement: Deep Blue region at ["..posx..","..posy.."] emerges a portal that leads to [Temple of Lilith].") --通知本组服务器的所有玩家

end


function begin_enter_temple(role, copy_mgr) 
    
		SystemNotice(role,"Entering [Temple of Lilith]") 
		MoveCity(role, "Temple of Lilith")

end