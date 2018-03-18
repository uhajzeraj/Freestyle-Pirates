--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )

end


function get_map_entry_pos_bountypk()   --设置入口的位置的坐标（坐标（米））

	local POS_X=1357
	local POS_Y=577
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "darkblue") --设置入口的位置（地图名）
    SetMapEntryTime(map, "2012/3/18/2/0", "0/3/0", "0/0/20", "0/0/35") --设置入口的时间，地图对象，首次开启时间（年/月/日/时/分），以后再次开启的间隔（日/时/分，全０表示只有首次开启），每次开启到入口消失的间隔（日/时/分，全０表示永不消失），每次开启到地图关闭的间隔（日/时/分，全０表示永不关闭）。。

end

function after_enter_bountypk( role , map_copy )
end

function before_leave_bountypk( role )
end

--function map_copy_first_run_bountypk( map_copy )
--	lua_SetCopySpecialInter(map_copy , 10000)
--	Notice("10")
--
--end

--function map_copy_run_bountypk( map_copy )
----Notice("3")
--local new1 = CreateChaEx(791, 120, 120, 145, 50)
--	SetChaLifeTime(new1, 900000)
--		
--end

--每5分钟秒执行1次
function map_copy_run_special_bountypk( map_copy ) 
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("Bounty Hunter still have survivor: "..HowManyNoDead.." player(s)")
	Every_5_minute = Every_5_minute+1
	if Every_5_minute == 2 then -- 初级宝箱
		local Monster2 = CreateChaEx(1306, 7500, 3500, 145, 60,map_copy)
		local Monster3 = CreateChaEx(1306, 2700, 5200, 145, 60,map_copy)
		local Monster4 = CreateChaEx(1306, 4200, 9400, 145, 60,map_copy)
		local Monster5 = CreateChaEx(1306, 9000, 6000, 145, 60,map_copy)
		local Monster6 = CreateChaEx(1306, 6500, 6400, 145, 60,map_copy)
		local Monster7 = CreateChaEx(1307, 6500, 3200, 145, 60,map_copy)
		local Monster8 = CreateChaEx(1307, 3300, 3400, 145, 60,map_copy)
		local Monster9 = CreateChaEx(1307, 9900, 3300, 145, 60,map_copy)
		local Monster10 = CreateChaEx(1307, 9900, 6300, 145, 60,map_copy)
		local Monster11 = CreateChaEx(1307, 9900, 9000, 145, 60,map_copy)
		local Monster12 = CreateChaEx(1307, 6500, 8900, 145, 60,map_copy)
		local Monster13 = CreateChaEx(1307, 2800, 8600, 145, 60,map_copy)
		local Monster14 = CreateChaEx(1307, 2900, 5700, 145, 60,map_copy)
		local Monster15 = CreateChaEx(1307, 6600, 7400, 145, 60,map_copy)
		local Monster16 = CreateChaEx(1307, 8100, 5900, 145, 60,map_copy)
		local Monster17 = CreateChaEx(1307, 6500, 4600, 145, 60,map_copy)
		local Monster18 = CreateChaEx(1307, 5400, 5800, 145, 60,map_copy)
		local Monster19 = CreateChaEx(1307, 4200, 5100, 145, 60,map_copy)
		local Monster20 = CreateChaEx(1307, 9100, 6000, 145, 60,map_copy)
		local Monster21 = CreateChaEx(1307, 7800, 3800, 145, 60,map_copy)
		SetChaLifeTime(Monster2,299050)
		SetChaLifeTime(Monster3,299100)
		SetChaLifeTime(Monster4,299150)
		SetChaLifeTime(Monster5,299200)
		SetChaLifeTime(Monster6,299250)
		SetChaLifeTime(Monster7,299300)
		SetChaLifeTime(Monster8,299350)
		SetChaLifeTime(Monster9,299400)
		SetChaLifeTime(Monster10,299450)
		SetChaLifeTime(Monster11,299500)
		SetChaLifeTime(Monster12,299550)
		SetChaLifeTime(Monster13,299600)
		SetChaLifeTime(Monster14,299650)
		SetChaLifeTime(Monster15,299700)
		SetChaLifeTime(Monster16,299750)
		SetChaLifeTime(Monster17,299800)
		SetChaLifeTime(Monster18,299850)
		SetChaLifeTime(Monster19,299900)
		SetChaLifeTime(Monster20,299950)
		SetChaLifeTime(Monster21,300000)

	end

	if Every_5_minute == 3 then -- 中级宝箱
		local Monster22 = CreateChaEx(1306, 7500, 3500, 145, 60,map_copy)
		local Monster23 = CreateChaEx(1306, 2700, 5200, 145, 60,map_copy)
		local Monster24 = CreateChaEx(1306, 4200, 9400, 145, 60,map_copy)
		local Monster25 = CreateChaEx(1306, 9000, 6000, 145, 60,map_copy)
		local Monster26 = CreateChaEx(1306, 6500, 6400, 145, 60,map_copy)
		local Monster27 = CreateChaEx(1308, 6500, 3200, 145, 60,map_copy)
		local Monster28 = CreateChaEx(1308, 3300, 3400, 145, 60,map_copy)
		local Monster29 = CreateChaEx(1308, 9900, 3300, 145, 60,map_copy)
		local Monster30 = CreateChaEx(1308, 9900, 6300, 145, 60,map_copy)
		local Monster31 = CreateChaEx(1308, 9900, 9000, 145, 60,map_copy)
		local Monster32 = CreateChaEx(1308, 6500, 8900, 145, 60,map_copy)
		local Monster33 = CreateChaEx(1308, 2800, 8600, 145, 60,map_copy)
		local Monster34 = CreateChaEx(1308, 2900, 5700, 145, 60,map_copy)
		local Monster35 = CreateChaEx(1308, 6600, 7400, 145, 60,map_copy)
		local Monster36 = CreateChaEx(1308, 8100, 5900, 145, 60,map_copy)
		local Monster37 = CreateChaEx(1308, 6500, 4600, 145, 60,map_copy)
		local Monster38 = CreateChaEx(1308, 5400, 5800, 145, 60,map_copy)
		local Monster39 = CreateChaEx(1308, 4200, 5100, 145, 60,map_copy)
		local Monster40 = CreateChaEx(1308, 9100, 6000, 145, 60,map_copy)
		local Monster41 = CreateChaEx(1308, 7800, 3800, 145, 60,map_copy)
		SetChaLifeTime(Monster22,299050)
		SetChaLifeTime(Monster23,299100)
		SetChaLifeTime(Monster24,299150)
		SetChaLifeTime(Monster25,299200)
		SetChaLifeTime(Monster26,299250)
		SetChaLifeTime(Monster27,299300)
		SetChaLifeTime(Monster28,299350)
		SetChaLifeTime(Monster29,299400)
		SetChaLifeTime(Monster30,299450)
		SetChaLifeTime(Monster31,299500)
		SetChaLifeTime(Monster32,299550)
		SetChaLifeTime(Monster33,299600)
		SetChaLifeTime(Monster34,299650)
		SetChaLifeTime(Monster35,299700)
		SetChaLifeTime(Monster36,299750)
		SetChaLifeTime(Monster37,299800)
		SetChaLifeTime(Monster38,299850)
		SetChaLifeTime(Monster39,299900)
		SetChaLifeTime(Monster40,299950)
		SetChaLifeTime(Monster41,300000)

end

end


function map_run_bountypk( map )
	
end

--地图关闭时执行
function map_copy_before_close_bountypk( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem")
	end
	How_Many_Active = 0
	Money_all = 1000000
	Every_5_minute = 0
end

--地图关闭时执行
function map_copy_close_bountypk( map_copy )
	ClearAllSubMapCha(map_copy)
end
--
--地图开关判断——————————————————————————————————————————

function can_open_entry_bountypk( map ) 
--	local time = GetTickCount ( ) 
	local Now_Time = GetNowTime()
	if Now_Time ==14 or Now_Time == 20 then
		return 1
	else
		return 1
	end

end 


function GiveSpecItem( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_bountypk = Money_all/How_Many_Active
--	SystemNotice(role,How_Many_Active)

	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_bountypk )
	--	local message = "Today combat has "..How_Many_Active .. "players, each being awarded "..Money_bountypk .."'s gold"
	--	SystemNotice(role,How_Many_Active)
		return
	end

	if How_Many_Active <  5 and How_Many_Active > 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 3755  , 1 , 4 )
		else
			GiveItem ( role , 0 , 3755  , 1 , 4 )
		end
			 
		AddMoney ( role , 0 , Money_bountypk )
		--SystemNotice(role,How_Many_Active)
					
		--local message = "You survived today's combat."..How_Many_Active .."players, each being awarded "..Money_bountypk .."'s Gold and 1 Saint of the Ring Emblem"
		--Notice ( message )
		return
	end
	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 3686  , 1 , 4 )
		else
			GiveItem ( role , 0 , 3686  , 1 , 4 )
		end
		AddMoney ( role , 0 , Money_bountypk )
		local cha_name = GetChaDefaultName ( role )
		local message = "Only survivor in today's combat is "..cha_name.."And obtained  ".. Money_bountypk .."'s gold and 1 King of the Ring Emblem"
	--	SystemNotice(role,How_Many_Active)
		SystemNotice(role,message)
		return
	end
end 

