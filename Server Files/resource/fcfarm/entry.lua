--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口
    local EntryName = "FC Farm Map"
    SetMapEntryEventName( entry, EntryName )


    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("Announcement: Ascaron region at ["..posx..","..posy.."] emerges a portal that leads to [FC Farm Map].") --通知本组服务器的所有玩家

end

function after_destroy_entry_fcfarm(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Announcement: Portal to [FC Farm Map] has vanished. Enjoy!") 

end

function after_player_login_fcfarm(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    ChaNotice(player_name, "Announcement: Ascaron region at ["..posx..","..posy.."] emerges a portal that leads to [FC Farm Map].") --通知本组服务器的所有玩家

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