--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口
    local EntryName = "Arena 1"
    SetMapEntryEventName( entry, EntryName )


end

function after_destroy_entry_starena14(entry)

end

function after_player_login_starena14(entry, player_name)
    
end


function begin_enter_starena14(role, copy_mgr) 
    
		SystemNotice(role,"Entering [Arena 1]") 
		MoveCity(role, "Arena 1")

end