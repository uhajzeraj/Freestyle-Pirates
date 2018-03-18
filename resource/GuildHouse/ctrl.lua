--------------------------------------------------------------------------
--									--
--									--
--				ctrl.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading GuildHouse Ctrl.lua" )


--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
	MapCanSavePos(map, 0)
	MapCanPK(map, 1)			-- 1 = Turns on PK Mouse Sword Icon // 0 = Turns off PK Mouse Sword Icon ( Need to press CTRL key )
	MapCopyNum(map, 200)
	SingleMapCopyPlyNum(map, 80)
	MapCanTeam(map, 1)
	MapType ( map , 3 )			-- 0 = PvP Off // 1 = PvP Off // 2 = PvP On ( Not allowed to kill Guild and Party Mates ) // 3 = PvP On ( Allowed to kill any player but not Party Mates ) // 4 = PvP On ( Not allowed to kill Guild and Party Mates )        
	
	
end