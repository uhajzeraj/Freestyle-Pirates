--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCanGuild(map,0)--�����Ƿ�����˳�����
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    --MapCopyStartType(map, 1) --���õ�ͼ������ʼ
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 5 )
    RepatriateDie(map,0)---��ͼ�ڸ���
    SetMapGuildWar(map,1)---����Ƶ��
    MapCanStall(map , 0)

end


function get_map_entry_pos_guildwar()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=979
	local POS_Y=3608
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "magicsea") --������ڵ�λ�ã���ͼ�������꣨�ף���
    SetMapEntryTime(map, "2005/8/30/19/30", "0/4/0", "0/3/0", "0/3/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����
    
end



function after_enter_guildwar( role , map_copy )
      
--
--      local Num_SSL= CheckBagItem(role,2382)
--
--	if Num_SSL >= 1 then
--	   SystemNotice(role, "You have <Life and Death Token> with you")	
--	else
--	   GiveItem ( role , 0 , 2382  , 1 , 4 )
--	end
--    local map_copy = GetChaMapCopy(role)
--    local RedSide_GuildID, BlueSide_GuildID
--    RedSide_GuildID = GetMapCopyParam2(map_copy, 3 )
--    BlueSide_GuildID = GetMapCopyParam2(map_copy, 4 )


    --local Cha = TurnToCha(role)
    
    if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
        SetChaSideID(role, 1)-----------------------------------�������
       
     
    end

    if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
        SetChaSideID(role, 2)-----------------------------------�������
	
      
    end

    --Notice("GetChaGuildID(Cha)=="..GetChaGuildID(Cha))
   
    
--    local haidaoSide_GuildID, haijunSide_GuildID
--    haidaoSide_GuildID = GetMapCopyParam2(map_copy, 3 )
--    haijunSide_GuildID = GetMapCopyParam2(map_copy, 4 )
--    Notice("haidaoSide_GuildID="..haidaoSide_GuildID)
    
	--if haidaoSide_GuildID == GetChaGuildID( role ) then
		--SetChaSideID(role, 2)
		--Notice("SetChaSideID=="..SetChaSideID)
	--end
	--if haijunSide_GuildID == GetChaGuildID( role ) then
			--SetChaSideID(role, 1)
	--end
end

function before_leave_guildwar ( role )


local Cha = TurnToCha(role) 
	local i = 0
	local j = 0
	for i = 0 , SZ_BagItemDelCheckNum ,1 do
	
	        local j = RemoveChaItem ( Cha ,SZ_BagItemDelCheck_ID[i],0,0,-1,2,1 )
		
		if j == 0 then 
		LG("RemoveChaItem","Failed")
		end
        end

  RemoveState( role , STATE_HFZQ )
  RemoveState( role , STATE_QINGZ )
  RemoveState( role , STATE_JRQKL )
  RemoveState( role , STATE_YS )


  local map_copy =  GetChaMapCopy(role)

     if check_need_show == 1 then
         return 

         else

         if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
        
            count_haijun = count_haijun - 1
	    MapCopyNotice ( map_copy , "[One navy has retreated out of battle]" )

         elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
            count_haidao = count_haidao - 1
	    MapCopyNotice ( map_copy , "[ One Pirate has resigned from battle]" )
        end
    end


 

	
end
  

function map_copy_first_run_guildwar( map_copy )
	
end




function map_copy_run_guildwar( map_copy )


    local closetime = GUILDWARCLOSETIME
           for i = 1 , GUILDNOTICE , 1 do
		 if closetime == GUILDCLOSESHOW[i] then
			 local Notice_all = "Time remaining until the map close is"..closetime.."seconds! Please make sure of the time!"
			 MapCopyNotice ( map_copy ,Notice_all )
		 end
	   end
	   GUILDWARCLOSETIME = GUILDWARCLOSETIME - 1


 local hp_hd = GetChaAttr( haidaoSide_BaseRole , ATTR_HP ) -----------------����ˢBOSS
 
	local mxhp_hd = GetChaAttr( haidaoSide_BaseRole , ATTR_MXHP )
	local percent_hd = hp_hd/mxhp_hd
	if percent_hd < 0.3 and create_boss_hd == 0 then
		local x, y = GetChaPos( haidaoSide_BaseRole )
		      x = x+500
		      y = y+500
		      
                local Monster_hdboss = CreateChaEx(1008, 30800, 52400, 145, 1300,map_copy)
		SetChaLifeTime(Monster_hdboss,1200000)
		
                SetChaSideID(Monster_hdboss, 2)
		
		create_boss_hd = 1  --�ر�
		MapCopyNotice ( map_copy ,"Pirate Guardian: Let you see the true power of the darkness!")
	end


 local hp_hj = GetChaAttr( haijunSide_BaseRole , ATTR_HP ) -----------------����ˢBOSS
 
	local mxhp_hj = GetChaAttr( haijunSide_BaseRole , ATTR_MXHP )
	local percent_hj = hp_hj/mxhp_hj
	
	if percent_hj < 0.3 and create_boss_hj == 0 then
		local x, y = GetChaPos( haijunSide_BaseRole )
		      x = x+500
		      y = y+500
                local Monster_hjboss = CreateChaEx(1007, 30600, 10200, 145, 1300,map_copy)
		SetChaLifeTime(Monster_hjboss,1200000) 
		--CreateCha(1007, 30600, 10200, 145, 3600)
		SetChaSideID(Monster_hjboss, 1)
		 
		create_boss_hj = 1  --�ر�
		MapCopyNotice ( map_copy ,"Navy Guardian: Want to tear the statue down? Ask the sword in my hand first!")
	end

 if SZ_Win_CountNum == 60 then
--		local RedSide_GuildID, BlueSide_GuildID
--		RedSide_GuildID = GetMapCopyParam2(map_copy, 3 )
--		BlueSide_GuildID = GetMapCopyParam2(map_copy, 4 )
--
--		local GuildName_Red = GetGuildName( RedSide_GuildID )
--		local GuildName_Blue = GetGuildName ( BlueSide_GuildID )
             
		if CheckMonsterDead ( haijunSide_BaseRole ) == 1 then
		   if haidaoSide_JDNotice == 0 then

			five_seconds = 1
			--local Notice_all = "Pirate faction won the Sacred War!"
			--Notice ( Notice_all )
			SZ_Win_CountNum = SZ_Win_CountNum - 1
			--PK_JJHY_Winner = "Navy Faction"
			--PK_JJHY_Loser =  "Pirate Faction"
			--SetMapCopyParam2(map_copy, 5, 1) --����ʤ��
			haidaoSide_JDNotice = 1
                        CloseMapEntry ( "guildwar" )
                        check_need_show = 1 ---������ʾ�˳���ʾ

			local player_num_1 = GetMapPlayer(map_copy)
			local pn_1 = player_num_1 * 3
			for i=1, pn_1, 1 do
				if player_num_1 > 0 then
					DealAllPlayerInMap(map_copy,"HJ_Goto")
					DealAllPlayerInMap(map_copy,"noside_Goto")
					--Notice("Repeat kick navy��")
				end
			end
			--DealAllActivePlayerInMap(map_copy,"HJ_Goto")
			--DealAllActivePlayerInMap(map_copy,"noside_Goto")
			DealAllActivePlayerInMap(map_copy,"Give_Three_QiYue")
			local Notice_all = "Pirate faction won the Sacred War!"
			Notice ( Notice_all )
			
	            end

		end

		if CheckMonsterDead ( haidaoSide_BaseRole ) == 1 then
		    if haijunSide_JDNotice == 0 then
		        five_seconds = 1

			--local Notice_all =  "Navy Faction has won the Sacred War!"
			--Notice ( Notice_all )
			SZ_Win_CountNum = SZ_Win_CountNum - 1
			--PK_JJHY_Winner = "Pirate Faction"
			--PK_JJHY_Loser = "Navy Faction"
			--SetMapCopyParam2(map_copy, 5, 2) --����ʤ��
			haijunSide_JDNotice = 1
                        CloseMapEntry ( "guildwar" )
			check_need_show = 1

			local player_num_2 = GetMapPlayer(map_copy)
			local pn_2 = player_num_2 * 3
			for i=1, pn_2, 1 do
				if player_num_2 > 0 then
					DealAllPlayerInMap(map_copy,"HD_Goto")
					DealAllPlayerInMap(map_copy,"noside_Goto")
					--Notice("Repeat kicking pirates��")
				end
			end
			--DealAllActivePlayerInMap(map_copy,"HD_Goto")
			--DealAllActivePlayerInMap(map_copy,"noside_Goto")
			DealAllActivePlayerInMap(map_copy,"Give_Three_QiYue")
			local Notice_all =  "Navy Faction has won the Sacred War!"
			Notice ( Notice_all )
			

	            end
		end
		
		if CheckMonsterDead ( haijunSide_LCRole ) == 1 then
			if haijunSide_LCNotice == 0 then
				MapCopyNotice ( map_copy ,"Navy Granary has been destroyed. The defense of the base and Advanced Arrow Tower has fallen sharply.")
				AddState( haijunSide_BaseRole , haijunSide_BaseRole , STATE_PKLC, 10 , 10800 )
				AddState( haijunSide_JTRole_1 , haijunSide_JTRole_1 , STATE_PKLC, 10 , 10800 )
				AddState( haijunSide_JTRole_2 , haijunSide_JTRole_2 , STATE_PKLC, 10 , 10800 )
				haijunSide_LCNotice = 1
				--create_boss_hj = 1  --�ر�
			end
		end
		
		if CheckMonsterDead ( haidaoSide_LCRole ) == 1 then
			if haidaoSide_LCNotice == 0 then 
				MapCopyNotice ( map_copy ,"The Pirate Granary has been destroyed, base and Advanced Arrow Tower defense has been lowered greatly")
				AddState( haidaoSide_BaseRole , haidaoSide_BaseRole , STATE_PKLC, 10 , 10800 )
				AddState( haidaoSide_JTRole_1 , haidaoSide_JTRole_1 , STATE_PKLC, 10 , 10800 )
				AddState( haidaoSide_JTRole_2 , haidaoSide_JTRole_2 , STATE_PKLC, 10 , 10800 )
				haidaoSide_LCNotice = 1
				--create_boss_hd = 1  --�ر�
			end
			
		end

		if CheckMonsterDead ( haijunSide_DYKRole ) == 1 then
			if haijunSide_DYKNotice == 0 then
				MapCopyNotice ( map_copy ,"Navy Ammo Warehouse has been destroyed, Advanced Arrow Tower attack has fallen sharply.")
				AddState( haijunSide_JTRole_1 , haijunSide_JTRole_1 , STATE_JHKML, 10 , 10800 )
				AddState( haijunSide_JTRole_2 , haijunSide_JTRole_2 , STATE_JHKML, 10 , 10800 )
				haijunSide_DYKNotice = 1
				--create_boss_hj = 1  --�ر�
			end
		end

		if CheckMonsterDead ( haidaoSide_DYKRole ) == 1 then
			if haidaoSide_DYKNotice == 0 then 
				MapCopyNotice ( map_copy ,"Pirate Ammo Warehouse has been destroyed, Advanced Arrow Tower attack has fallen sharply")
				AddState( haidaoSide_JTRole_1 , haidaoSide_JTRole_1 , STATE_JHKML, 10 , 10800 )
				AddState( haidaoSide_JTRole_2 , haidaoSide_JTRole_2 , STATE_JHKML, 10 , 10800 )
				haidaoSide_DYKNotice = 1
				--create_boss_hd = 1  --�ر�
			end		
		end
	else


	        

                 
                
              if time_can_setmonster == 0 then
		time_can_setnvsheng = time_can_setnvsheng + 1
	      end

		local Count = SZ_Win_CountNum / 10
		if Count == math.floor ( Count ) then
                   --Notice ( Notice_all )
			--MapCopyNotice ( map_copy , Notice_all )
		 
			local Notice_map = "Victory Goddess will appear in "..SZ_Win_CountNum.." seconds!"
			MapCopyNotice ( map_copy , Notice_map )
			--CLOSENotice = 1--�رյ���
		end
		SZ_Win_CountNum = SZ_Win_CountNum - 1
		if SZ_Win_CountNum == 0 then
				SZ_Win_CountNum = 60
				
				
		end   
		  -- Notice("time_can_setnvsheng"..time_can_setnvsheng)	
	        if time_can_setnvsheng == 59 then
		
		MapCopyNotice ( map_copy ,"Victory Goddess has appeared in Sacred War map!")
		
		local Monster2 = CreateChaEx(1001, 21526, 49419, 145, 1000,map_copy)
		local Monster3 = CreateChaEx(1001, 41559, 11793, 145, 1000,map_copy)
		local Monster4 = CreateChaEx(1001, 13667, 40891, 145, 1000,map_copy)
		local Monster5 = CreateChaEx(1001, 12478, 21656, 145, 1000,map_copy)
		local Monster6 = CreateChaEx(1001, 12416, 49142, 145, 1000,map_copy)
		local Monster7 = CreateChaEx(1001, 52406, 49110, 145, 1000,map_copy)
		local Monster8 = CreateChaEx(1001, 51472, 13326, 145, 1000,map_copy)
		local Monster9 = CreateChaEx(1001, 12405, 8742, 205, 1000,map_copy)
		--local Monster10 = CreateChaEx(859, 36446, 51416, 145, 60,map_copy)
		--local Monster11 = CreateChaEx(859, 36763, 48082, 145, 60,map_copy)
		--local Monster12 = CreateChaEx(859, 53312, 42794, 145, 60,map_copy)
		--local Monster13 = CreateChaEx(859, 53014, 31149, 145, 60,map_copy)
		--local Monster14 = CreateChaEx(859, 53156, 21219, 145, 60,map_copy)
		--local Monster15 = CreateChaEx(859, 52532, 12262, 145, 60,map_copy)
		--local Monster16 = CreateChaEx(859, 8992, 10590, 145, 60,map_copy)
		--local Monster17 = CreateChaEx(859, 13465, 10237, 145, 60,map_copy)
		SetChaLifeTime(Monster2,900000)
		SetChaLifeTime(Monster3,900000)
		SetChaLifeTime(Monster4,900000)
		SetChaLifeTime(Monster5,900000)
		SetChaLifeTime(Monster6,900000)
		SetChaLifeTime(Monster7,900000)
		SetChaLifeTime(Monster8,900000)
		SetChaLifeTime(Monster9,900000)
		--SetChaLifeTime(Monster10,299450)
		--SetChaLifeTime(Monster11,299500)
		--SetChaLifeTime(Monster12,299550)
		--SetChaLifeTime(Monster13,299600)
		--SetChaLifeTime(Monster14,299650)
		--SetChaLifeTime(Monster15,299700)
		--SetChaLifeTime(Monster16,299700)
		--SetChaLifeTime(Monster17,299700)
               
	       time_can_setmonster = 1
               time_can_setnvsheng = 1

	       
				
		end
	end

	
end

--ÿ5����ִ��1��
function map_copy_run_special_guildwar( map_copy ) 
        local random_hezi = math.random(1,10)
	
	if random_hezi == 1 then -- ��һ�����
		local Monster1 = CreateChaEx(934, 21620, 25990, 145, 60,map_copy)
		local Monster2 = CreateChaEx(934, 13505, 26914, 145, 60,map_copy)
		local Monster3 = CreateChaEx(934, 51545, 12982, 145, 60,map_copy)
		local Monster4 = CreateChaEx(934, 49464, 21582, 145, 60,map_copy)
		local Monster5 = CreateChaEx(934, 52142, 27057, 145, 60,map_copy)
		local Monster6 = CreateChaEx(934, 41027, 24583, 145, 60,map_copy)
		local Monster7 = CreateChaEx(934, 39696, 32709, 145, 60,map_copy)
		local Monster8 = CreateChaEx(934, 31214, 33352, 145, 60,map_copy)
		local Monster9 = CreateChaEx(934, 30322, 27936, 145, 60,map_copy)
		local Monster10 = CreateChaEx(934, 12275, 8838, 145, 60,map_copy)

--		local Monster12 = CreateChaEx(859, 14373, 7541, 145, 60,map_copy)
--		local Monster13 = CreateChaEx(859, 10186, 6273, 145, 60,map_copy)
--		local Monster14 = CreateChaEx(859, 10043, 9649, 145, 60,map_copy)
--		local Monster15 = CreateChaEx(859, 17186, 3343, 145, 60,map_copy)

                local Monster11 = CreateChaEx(935, 13441, 49302, 237, 60,map_copy)
		local Monster12 = CreateChaEx(935, 49505, 53814, 145, 60,map_copy)
		local Monster13 = CreateChaEx(935, 52191, 48734, 145, 60,map_copy)
		local Monster14 = CreateChaEx(935, 49514, 36624, 145, 60,map_copy)
		local Monster15 = CreateChaEx(935, 52322, 40969, 145, 60,map_copy)
		local Monster16 = CreateChaEx(935, 39167, 43477, 145, 60,map_copy)
		local Monster17 = CreateChaEx(935, 32042, 44194, 145, 60,map_copy)
		local Monster18 = CreateChaEx(935, 30494, 38172, 145, 60,map_copy)
		local Monster19 = CreateChaEx(935, 22644, 43566, 145, 60,map_copy)
		local Monster20 = CreateChaEx(935, 13309, 37477, 145, 60,map_copy)

                SetChaLifeTime(Monster1,299050)
		SetChaLifeTime(Monster2,299050)
		SetChaLifeTime(Monster3,299100)
		SetChaLifeTime(Monster4,299150)
		SetChaLifeTime(Monster5,299200)
		SetChaLifeTime(Monster6,299250)
		SetChaLifeTime(Monster7,299300)
		SetChaLifeTime(Monster8,299350)
		SetChaLifeTime(Monster9,299400)
		SetChaLifeTime(Monster10,299450)
		

--		SetChaLifeTime(Monster12,299550)
                SetChaLifeTime(Monster11,299050)
                SetChaLifeTime(Monster12,299050)
		SetChaLifeTime(Monster13,299100)
		SetChaLifeTime(Monster14,299150)
		SetChaLifeTime(Monster15,299200)
		SetChaLifeTime(Monster16,299250)
		SetChaLifeTime(Monster17,299300)
		SetChaLifeTime(Monster18,299350)
		SetChaLifeTime(Monster19,299400)
		SetChaLifeTime(Monster20,299450)
		
--		SetChaLifeTime(Monster13,299600)
--		SetChaLifeTime(Monster14,299650)
--		SetChaLifeTime(Monster15,299700)
        
	end
	if random_hezi == 2 then -- �ڶ������
		local Monster21 = CreateChaEx(934, 13280, 20327, 145, 60,map_copy)
		local Monster22 = CreateChaEx(934, 11494, 22938, 145, 60,map_copy)
		local Monster23 = CreateChaEx(934, 8620, 25754, 145, 60,map_copy)
		local Monster24 = CreateChaEx(934, 13434, 27171, 145, 60,map_copy)
		local Monster25 = CreateChaEx(934, 22082, 29060, 145, 60,map_copy)
		local Monster26 = CreateChaEx(934, 22328, 26854, 145, 60,map_copy)
		local Monster27 = CreateChaEx(934, 22300, 23715, 145, 60,map_copy)
		local Monster28 = CreateChaEx(934, 23025, 16585, 145, 60,map_copy)
		local Monster29 = CreateChaEx(934, 20613, 15337, 145, 60,map_copy)
		local Monster30 = CreateChaEx(934, 12830, 12465, 145, 60,map_copy)

                local Monster31 = CreateChaEx(935, 21213, 39440, 46, 60,map_copy)
		local Monster32 = CreateChaEx(935, 10730, 49579, 46, 60,map_copy)
		local Monster33 = CreateChaEx(935, 21988, 34742, 46, 60,map_copy)
		local Monster34 = CreateChaEx(935, 22985, 36209, 46, 60,map_copy)
		local Monster35 = CreateChaEx(935, 22883, 48223, 46, 60,map_copy)
		local Monster36 = CreateChaEx(935, 21350, 45700, 46, 60,map_copy)
		local Monster37 = CreateChaEx(935, 23070, 40910, 46, 60,map_copy)
		local Monster38 = CreateChaEx(935, 13719, 34813, 46, 60,map_copy)
		local Monster39 = CreateChaEx(935, 12202, 39254, 250, 60,map_copy)
		local Monster40 = CreateChaEx(935, 8017, 43392, 145, 60,map_copy)
                

                SetChaLifeTime(Monster21, 299050)
		SetChaLifeTime(Monster22, 299100)
		SetChaLifeTime(Monster23, 299150)
		SetChaLifeTime(Monster24, 299200)
		SetChaLifeTime(Monster25, 299250)
		SetChaLifeTime(Monster26, 299300)
		SetChaLifeTime(Monster27, 299350)
		SetChaLifeTime(Monster28, 299350)
		SetChaLifeTime(Monster29, 299350)
		SetChaLifeTime(Monster30, 299350)

		SetChaLifeTime(Monster31, 299050)
		SetChaLifeTime(Monster32, 299050)
		SetChaLifeTime(Monster33, 299050)
		SetChaLifeTime(Monster34, 299050)
		SetChaLifeTime(Monster35, 299050)
		SetChaLifeTime(Monster36, 299050)
		SetChaLifeTime(Monster37, 299050)
		SetChaLifeTime(Monster38, 299050)
		SetChaLifeTime(Monster39, 299050)
		SetChaLifeTime(Monster40, 299050)
         
	end
	if random_hezi == 3 then -- ���������
--		local Monster23 = CreateChaEx(861, 12167, 25665, 145, 60,map_copy)
--		local Monster24 = CreateChaEx(861, 13564, 23189, 145, 60,map_copy)
--		local Monster25 = CreateChaEx(861, 18274, 13329, 145, 60,map_copy)
--		local Monster26 = CreateChaEx(861, 19167, 9778, 145, 60,map_copy)
--		local Monster27 = CreateChaEx(861, 14915, 14352, 145, 60,map_copy)
--		local Monster28 = CreateChaEx(861, 13881, 9818, 145, 60,map_copy)
--		local Monster29 = CreateChaEx(861, 10854, 11740, 145, 60,map_copy)
		local Monster41 = CreateChaEx(935, 39318, 32214, 293, 60,map_copy)
		local Monster42 = CreateChaEx(935, 31069, 43192, 293, 60,map_copy)
		local Monster43 = CreateChaEx(935, 39177, 52654, 293, 60,map_copy)
		local Monster44 = CreateChaEx(935, 35124, 52286, 293, 60,map_copy)
		local Monster45 = CreateChaEx(935, 36068, 51210, 293, 60,map_copy)
		local Monster46 = CreateChaEx(935, 48444, 48486, 293, 60,map_copy)
		local Monster47 = CreateChaEx(935, 40042, 47521, 293, 60,map_copy)
		local Monster48 = CreateChaEx(935, 40223, 41496, 182, 60,map_copy)
		local Monster49 = CreateChaEx(935, 38767, 38552, 145, 60,map_copy)
		local Monster50 = CreateChaEx(935, 40167, 36772, 145, 60,map_copy)
		local Monster51 = CreateChaEx(934, 38002, 20903, 209, 60,map_copy)
		local Monster52 = CreateChaEx(934, 39240, 19177, 279, 60,map_copy)
		local Monster53 = CreateChaEx(934, 39645, 30047, 279, 60,map_copy)
		local Monster54 = CreateChaEx(934, 39791, 27655, 279, 60,map_copy)
		local Monster55 = CreateChaEx(934, 52163, 27539, 279, 60,map_copy)
		local Monster56 = CreateChaEx(934, 50094, 20494, 279, 60,map_copy)
		local Monster57 = CreateChaEx(934, 49301, 13882, 279, 60,map_copy)
		local Monster58 = CreateChaEx(934, 37727, 14455, 306, 60,map_copy)
		local Monster59 = CreateChaEx(934, 39731, 13703, 246, 60,map_copy)
		local Monster60 = CreateChaEx(934, 41555, 15069, 145, 60,map_copy)
		SetChaLifeTime(Monster41, 299050)
		SetChaLifeTime(Monster42, 299050)
		SetChaLifeTime(Monster43, 299050)
		SetChaLifeTime(Monster44, 299050)
		SetChaLifeTime(Monster45, 299050)
		SetChaLifeTime(Monster46, 299050)
		SetChaLifeTime(Monster47, 299050)
		SetChaLifeTime(Monster48, 299050)
		SetChaLifeTime(Monster49, 299050)
		SetChaLifeTime(Monster50, 299050)
		SetChaLifeTime(Monster51, 299050)
		SetChaLifeTime(Monster52, 299050)
		SetChaLifeTime(Monster53, 299050)
		SetChaLifeTime(Monster54, 299050)
		SetChaLifeTime(Monster55, 299050)
		SetChaLifeTime(Monster56, 299050)
		SetChaLifeTime(Monster57, 299050)
		SetChaLifeTime(Monster58, 299050)
		SetChaLifeTime(Monster59, 299050)
		SetChaLifeTime(Monster60, 299050)

	end
	if random_hezi == 4 then -- ���������
		local Monster61 = CreateChaEx(935, 32934, 48220, 145, 60,map_copy)
		local Monster62 = CreateChaEx(935, 31123, 47392, 145, 60,map_copy)
		local Monster63 = CreateChaEx(935, 29539, 45307, 145, 60,map_copy)
		local Monster64 = CreateChaEx(935, 31953, 39794, 145, 60,map_copy)
		local Monster65 = CreateChaEx(935, 30420, 39552, 145, 60,map_copy)
		local Monster66 = CreateChaEx(935, 29168, 39497, 145, 60,map_copy)
		local Monster67 = CreateChaEx(935, 32033, 34808, 145, 60,map_copy)
		local Monster68 = CreateChaEx(935, 30246, 34860, 145, 60,map_copy)
		local Monster69 = CreateChaEx(935, 29028, 34853, 145, 60,map_copy)
		local Monster70 = CreateChaEx(935, 30913, 32317, 145, 60,map_copy)
		local Monster71 = CreateChaEx(934, 31027, 27601, 145, 60,map_copy)
		local Monster72 = CreateChaEx(934, 32306, 14507, 145, 60,map_copy)
		local Monster73 = CreateChaEx(934, 30652, 14544, 145, 60,map_copy)
		local Monster74 = CreateChaEx(934, 29230, 14685, 145, 60,map_copy)
		local Monster75 = CreateChaEx(934, 31893, 25509, 145, 60,map_copy)
		local Monster76 = CreateChaEx(934, 30293, 25526, 145, 60,map_copy)
		local Monster77 = CreateChaEx(934, 29360, 25536, 145, 60,map_copy)
		local Monster78 = CreateChaEx(934, 31895, 20636, 145, 60,map_copy)
		local Monster79 = CreateChaEx(934, 30197, 20647, 145, 60,map_copy)
		local Monster80 = CreateChaEx(934, 29223, 20629, 145, 60,map_copy)

		SetChaLifeTime(Monster61,298050)
		SetChaLifeTime(Monster62,298100)
		SetChaLifeTime(Monster63,298150)
		SetChaLifeTime(Monster64,298200)
		SetChaLifeTime(Monster65,298250)
		SetChaLifeTime(Monster66,298300)
		SetChaLifeTime(Monster67,298350)
		SetChaLifeTime(Monster68,298400)
		SetChaLifeTime(Monster69,298450)
		SetChaLifeTime(Monster70,298500)
		SetChaLifeTime(Monster71,298550)
		SetChaLifeTime(Monster72,298600)
		SetChaLifeTime(Monster73,298650)
		SetChaLifeTime(Monster74,298700)
		SetChaLifeTime(Monster75,298750)
		SetChaLifeTime(Monster76,298800)
		SetChaLifeTime(Monster77,298850)
		SetChaLifeTime(Monster78,298900)
		SetChaLifeTime(Monster79,298950)
		SetChaLifeTime(Monster80,299000)
		

	end
	if random_hezi == 5 then -- ���������

	        local Monster81 = CreateChaEx(935, 23820, 13953, 201, 60,map_copy)
		local Monster82 = CreateChaEx(935, 21199, 13676, 201, 60,map_copy)
		local Monster83 = CreateChaEx(935, 21773, 26290, 201, 60,map_copy)
		local Monster84 = CreateChaEx(935, 40766, 10069, 201, 60,map_copy)
		local Monster85 = CreateChaEx(935, 21986, 23641, 201, 60,map_copy)
		local Monster86 = CreateChaEx(935, 28509, 14375, 201, 60,map_copy)
		local Monster87 = CreateChaEx(935, 31358, 16347, 201, 60,map_copy)
		local Monster88 = CreateChaEx(935, 29375, 17571, 201, 60,map_copy)
		local Monster89 = CreateChaEx(935, 30700, 22325, 201, 60,map_copy)
		local Monster90 = CreateChaEx(935, 39386, 20026, 201, 60,map_copy)
		local Monster91 = CreateChaEx(935, 39446, 14220, 201, 60,map_copy)
		local Monster92 = CreateChaEx(935, 38707, 16452, 50, 60,map_copy)
		local Monster93 = CreateChaEx(935, 51077, 31945, 50, 60,map_copy)
		local Monster94 = CreateChaEx(935, 47667, 22749, 50, 60,map_copy)
		local Monster95 = CreateChaEx(935, 50310, 20050, 145, 60,map_copy)
		local Monster96 = CreateChaEx(934, 38310, 36356, 69, 60,map_copy)
		local Monster97 = CreateChaEx(934, 40341, 37923, 69, 60,map_copy)
		local Monster98 = CreateChaEx(934, 39346, 43117, 69, 60,map_copy)
		local Monster99 = CreateChaEx(934, 42280, 47669, 124, 60,map_copy)
		local Monster100 = CreateChaEx(934, 41768, 52403, 168, 60,map_copy)
		local Monster101 = CreateChaEx(934, 38234, 53225, 72, 60,map_copy)
		local Monster102 = CreateChaEx(934, 37512, 49433, 145, 60,map_copy)
		local Monster103 = CreateChaEx(934, 31652, 48510, 145, 60,map_copy)
		local Monster104 = CreateChaEx(934, 19855, 51667, 145, 60,map_copy)
		local Monster105 = CreateChaEx(934, 23905, 47757, 145, 60,map_copy)
		local Monster106 = CreateChaEx(934, 22665, 43745, 145, 60,map_copy)
		local Monster107 = CreateChaEx(934, 21576, 40936, 145, 60,map_copy)
		local Monster108 = CreateChaEx(934, 12251, 37484, 145, 60,map_copy)
		local Monster109 = CreateChaEx(934, 8066, 40856, 145, 60,map_copy)
		local Monster110 = CreateChaEx(934, 14042, 41339, 145, 60,map_copy)


	
			SetChaLifeTime(Monster81,297050)
			SetChaLifeTime(Monster82,297100)
			SetChaLifeTime(Monster83,297150)
			SetChaLifeTime(Monster84,297200)
			SetChaLifeTime(Monster85,297250)
			SetChaLifeTime(Monster86,297300)
			SetChaLifeTime(Monster87,297350)
			SetChaLifeTime(Monster88,297400)
			SetChaLifeTime(Monster89,297450)
			SetChaLifeTime(Monster90,297500)
			SetChaLifeTime(Monster91,297550)
			SetChaLifeTime(Monster92,297600)
			SetChaLifeTime(Monster93,297650)
			SetChaLifeTime(Monster94,297700)
			SetChaLifeTime(Monster95,297750)
			SetChaLifeTime(Monster96,297800)
			SetChaLifeTime(Monster97,297850)
			SetChaLifeTime(Monster98,297900)
			SetChaLifeTime(Monster99,297950)
			SetChaLifeTime(Monster100,298000)
			SetChaLifeTime(Monster101,298050)
			SetChaLifeTime(Monster102,298100)
			SetChaLifeTime(Monster103,298150)
			SetChaLifeTime(Monster104,298200)
			SetChaLifeTime(Monster105,298250)
			SetChaLifeTime(Monster106,298300)
			SetChaLifeTime(Monster107,298350)
			SetChaLifeTime(Monster108,298400)
			SetChaLifeTime(Monster109,298450)
			SetChaLifeTime(Monster110,298500)
		

	end
	if random_hezi == 6 then -- ���������
	        local Monster111 = CreateChaEx(935, 10912, 29307, 44, 60,map_copy)
		local Monster112 = CreateChaEx(935, 7947, 34591, 44, 60,map_copy)
		local Monster113 = CreateChaEx(935, 9241, 33020, 49, 60,map_copy)
		local Monster114 = CreateChaEx(935, 11626, 36543, 49, 60,map_copy)
		local Monster115 = CreateChaEx(935, 10168, 35723, 49, 60,map_copy)
		local Monster116 = CreateChaEx(935, 11964, 34517, 49, 60,map_copy)
		local Monster117 = CreateChaEx(935, 13343, 34211, 145, 60,map_copy)
		local Monster118 = CreateChaEx(935, 13128, 32578, 145, 60,map_copy)
		local Monster119 = CreateChaEx(935, 13361, 26732, 145, 60,map_copy)
		local Monster120 = CreateChaEx(935, 9384, 28155, 145, 60,map_copy)
		local Monster121 = CreateChaEx(934, 10697, 29063, 145, 60,map_copy)
		local Monster122 = CreateChaEx(934, 8976, 27353, 145, 60,map_copy)
		local Monster123 = CreateChaEx(934, 13971, 34757, 145, 60,map_copy)
		local Monster124 = CreateChaEx(934, 10973, 34523, 145, 60,map_copy)
		local Monster125 = CreateChaEx(934, 12464, 32075, 145, 60,map_copy)
		local Monster126 = CreateChaEx(934, 9470, 31601, 145, 60,map_copy)
		local Monster127 = CreateChaEx(934, 12686, 28099, 145, 60,map_copy)
		local Monster128 = CreateChaEx(934, 13816, 26277, 145, 60,map_copy)
		local Monster129 = CreateChaEx(934, 11954, 26364, 145, 60,map_copy)
		local Monster130 = CreateChaEx(934, 10516, 25686, 145, 60,map_copy)
		local Monster131 = CreateChaEx(935, 50055, 37809, 109, 60,map_copy)
		local Monster132 = CreateChaEx(935, 51149, 34800, 109, 60,map_copy)
		local Monster133 = CreateChaEx(935, 51507, 33319, 109, 60,map_copy)
		local Monster134 = CreateChaEx(935, 52022, 35132, 109, 60,map_copy)
		local Monster135 = CreateChaEx(935, 48821, 32731, 109, 60,map_copy)
		local Monster136 = CreateChaEx(935, 49950, 32246, 131, 60,map_copy)
		local Monster137 = CreateChaEx(935, 52506, 32960, 131, 60,map_copy)
		local Monster138 = CreateChaEx(935, 50867, 35699, 131, 60,map_copy)
		local Monster139 = CreateChaEx(935, 50149, 38936, 134, 60,map_copy)
		local Monster140 = CreateChaEx(935, 51813, 38899, 145, 60,map_copy)
		local Monster141 = CreateChaEx(934, 49451, 35944, 359, 60,map_copy)
		local Monster142 = CreateChaEx(934, 52574, 29142, 293, 60,map_copy)
		local Monster143 = CreateChaEx(934, 52631, 34629, 145, 60,map_copy)
		local Monster144 = CreateChaEx(934, 49156, 34409, 145, 60,map_copy)
		local Monster145 = CreateChaEx(934, 50884, 33572, 145, 60,map_copy)
		local Monster146 = CreateChaEx(934, 52109, 31771, 145, 60,map_copy)
		local Monster147 = CreateChaEx(934, 50173, 31771, 145, 60,map_copy)
		local Monster148 = CreateChaEx(934, 47947, 31101, 145, 60,map_copy)
		local Monster149 = CreateChaEx(934, 49155, 30447, 145, 60,map_copy)
		local Monster150 = CreateChaEx(934, 48686, 29665, 145, 60,map_copy)


			SetChaLifeTime(Monster111,296050)
			SetChaLifeTime(Monster112,296100)
			SetChaLifeTime(Monster113,296150)
			SetChaLifeTime(Monster114,296200)
			SetChaLifeTime(Monster115,296250)
			SetChaLifeTime(Monster116,296300)
			SetChaLifeTime(Monster117,296350)
			SetChaLifeTime(Monster118,296400)
			SetChaLifeTime(Monster119,296450)
			SetChaLifeTime(Monster120,296500)
			SetChaLifeTime(Monster121,296550)
			SetChaLifeTime(Monster122,296600)
			SetChaLifeTime(Monster123,296650)
			SetChaLifeTime(Monster124,296700)
			SetChaLifeTime(Monster125,296750)
			SetChaLifeTime(Monster126,296800)
			SetChaLifeTime(Monster127,296850)
			SetChaLifeTime(Monster128,296900)
			SetChaLifeTime(Monster129,296950)
			SetChaLifeTime(Monster130,297000)
			SetChaLifeTime(Monster131,297050)
			SetChaLifeTime(Monster132,297100)
			SetChaLifeTime(Monster133,297150)
			SetChaLifeTime(Monster134,297200)
			SetChaLifeTime(Monster135,297250)
			SetChaLifeTime(Monster136,297300)
			SetChaLifeTime(Monster137,297350)
			SetChaLifeTime(Monster138,297400)
			SetChaLifeTime(Monster139,297450)
			SetChaLifeTime(Monster140,297500)
			SetChaLifeTime(Monster141,297550)
			SetChaLifeTime(Monster142,297600)
			SetChaLifeTime(Monster143,297650)
			SetChaLifeTime(Monster144,297700)
			SetChaLifeTime(Monster145,297750)
			SetChaLifeTime(Monster146,297800)
			SetChaLifeTime(Monster147,297850)
			SetChaLifeTime(Monster148,297900)
			SetChaLifeTime(Monster149,297950)
			SetChaLifeTime(Monster150,298000)
	     end
	  if random_hezi >= 7 then 
	     --Notice("Did not spawn out")
	     return
	  end



end




--ÿ5��ִ��һ�ε�
function map_run_guildwar( map )
    
--  if create_two_side_lose == 0 then

--
--	create_two_side_lose = 1
--end
   
   if five_seconds == 1 then
     second_five_seconds = second_five_seconds + 1
   end

   if second_five_seconds == 60 then
   Notice("Sacred War map will be closing in 10 minutes!")
   end
   if second_five_seconds == 120 then
   Notice("Sacred War map will be closing in 5 minutes!")
   end
   if second_five_seconds == 144 then
   Notice("Sacred war map will be closing in 3 minutes!")
   end
   if second_five_seconds == 168 then
   Notice("Sacred War Map will be closing in 1 minute!")
   end
   
   if second_five_seconds == 180
   then
   CloseMapCopy ( "guildwar" )
   end

 
--	local GuildLevel = 0
--	GuildLevel = GetFightGuildLevel ( )
--	if GuildLevel > 0 and GuildLevel < 4 then
--		if GuildLevel ~= ReadyToFight then
--			EndGuildBid ( GuildLevel )
--			ReadyToFight = GuildLevel
--		end
--	end
end

--��ͼ�ر�ǰִ��
function map_copy_before_close_guildwar( map_copy )



 -- local winner = GetMapCopyParam2( map_copy, 5 )
  
	--local HaiJunSide = GetMapCopyParam2(map_copy, 3 )
	--local HaiDaoSide = GetMapCopyParam2(map_copy, 4 )
	--local GuildName_Red = GetGuildName( RedSide_GuildID )
	--local GuildName_Blue = GetGuildName ( BlueSide_GuildID )
	--local GuildName_Red = GetGuildName( RedSide_GuildID )
--	
--
	--if winner == 1 then
		--EndGuildChallenge ( RedSide_GuildID , BlueSide_GuildID , 1 )
		--LG( "PK_JJHY","Victory to the Defending Champion" )
		--local Notice_all = "Pirate faction has won!"
		--Notice ( Notice_all )

	--elseif winner == 2 then
		--EndGuildChallenge ( RedSide_GuildID , BlueSide_GuildID , 1 )
		--LG( "PK_JJHY","Victory to the Defending Champion" )
		--local Notice_all = "Navy Faction won!"
		--Notice ( Notice_all )
	--else
		--local Notice_all = "After 3 hours of intense battle, no winners can be declared, please try harder next round!"
		--Notice ( Notice_all )
	--end
--	How_Many_Active = GetMapActivePlayer(map_copy)
--	if How_Many_Active > 0 then
--		DealAllActivePlayerInMap(map_copy,"Give_Three_QiYue")
--	end
--	How_Many_Active = 0

	local player_num = GetMapPlayer(map_copy)

	--Notice("player_num = "..player_num)

	DealAllPlayerInMap(map_copy,"All_Goto")
	player_num = GetMapPlayer(map_copy)

	--Notice("player_num = "..player_num)
	
	local pn = player_num * 10
	
	for i=1, pn, 1 do
		if player_num > 0 then
			--local Notice_all2 = "player_num > 0"
			--Notice(Notice_all2)
			DealAllPlayerInMap(map_copy,"All_Goto")
		end
	end

        --ClearAllSubMapMonster(map_copy)
	--ClearAllSubMapCha(map_copy)

end

--��ͼ�ر�ʱִ��
function map_copy_close_guildwar ( map_copy )

--How_Many_Active = 0

count_haijun = 0
count_haidao = 0
five_seconds = 0
second_five_seconds = 0
time_can_setmonster = 0
time_can_setnvsheng = 0
check_need_show = 0
create_boss_hj = 0
create_boss_hd = 0
--create_two_side_lose = 0
GUILDWARCLOSETIME = 10800


haijunSide_JDNotice = 0
haijunSide_LCNotice = 0
haijunSide_DYKNotice =0
haidaoSide_JDNotice = 0
haidaoSide_LCNotice = 0
haidaoSide_DYKNotice= 0

KillMonsterInMapByName(map_copy,"Pirate Guardian")
KillMonsterInMapByName(map_copy,"Navy Guardian")
--ClearAllSubMapMonster(map_copy)
ClearAllSubMapCha(map_copy)

--        local cha=CreateChaEx(999, 49533, 11381, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 52777, 12540, 175, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 52882, 9847, 175, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 49834, 9023, 175, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1005, 50920, 10472, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1006, 52023, 10362, 145, 20000,map_copy)--������ħ
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 51498, 11119, 190, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	--local cha=CreateChaEx(48, 51495, 10602, 175, 60)
--
--	local cha=CreateChaEx(1005, 50624, 12932, 190, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1005, 49551, 12846, 160, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 51087, 13433, 205, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 49047, 13460, 175, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1000, 10074, 53194, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 12053, 53488, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 13446, 50438, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 8834, 50818, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(953, 12109, 51752, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(936, 11139, 51872, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 11641, 51235, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	--local cha=CreateChaEx(68, 11618, 51702, 355, 60)
--
--	local cha=CreateChaEx(953, 11952, 49639, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(953, 10800, 49803, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 10333, 48831, 25, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 12073, 48614, 295, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 52679, 48777, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 54063, 51357, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 51387, 54045, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 48948, 51791, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	--local cha=CreateChaEx(50, 51739, 51899, 310, 60)
--
--	local cha=CreateChaEx(953, 51712, 51187, 325, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 50946, 51846, 325, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 49360, 48345, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(936, 49715, 49062, 325, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 48730, 48907, 10, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(999, 30971, 20145, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	--local cha=CreateChaEx(35, 11137, 11078, 145, 60)
--	local cha=CreateChaEx(1005, 11727, 12980, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1006, 10850, 11515, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 11676, 11142, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 12492, 13848, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 14086, 12177, 34, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 12644, 13457, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 9316, 13664, 34, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 12069, 13786, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 12111, 9059, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 8728, 9972, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	--local cha=CreateChaEx(954, 30778, 9602, 175, 60)
--
--	local cha=CreateChaEx(1005, 30998, 19282, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 31940, 19807, 190, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 29973, 19854, 190, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1006, 30119, 22057, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 30884, 26292, 175, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 29580, 22038, 175, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1006, 31372, 22100, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 30725, 22373, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 31813, 22044, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	--local cha=CreateChaEx(1004, 30117, 52848, 355, 20000)--�����߼�
--	--SetChaSideID(cha, 2)
--	--local cha=CreateChaEx(1004, 31576, 52807, 355, 20000)--�����߼�
--	--SetChaSideID(cha, 2)
--	--local cha=CreateChaEx(65, 30842, 53224, 355, 60)
--
--	local cha=CreateChaEx(936, 31084, 49087, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 32140, 48759, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 31371, 48066, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 30282, 48891, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(953, 31203, 50515, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 30045, 50434, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 31228, 49602, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 32214, 50479, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 29599, 51863, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 30777, 51736, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 31944, 51773, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 30463, 52373, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 31307, 52296, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 22542, 46002, 145, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 22842, 40322, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 22425, 35416, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1003, 22136, 24793, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 22339, 20450, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 22653, 17130, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 25491, 12659, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 37790, 11813, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 39105, 20455, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 39366, 25155, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 39316, 16689, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1004, 39541, 35432, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 39326, 39649, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 39636, 46013, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	--local cha=CreateChaEx(1003, 29924, 9911, 145, 20000)--�߼�
--	--SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1004, 26453, 48379, 310, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 34946, 47830, 145, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 36367, 47877, 145, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	--local cha=CreateChaEx(1003, 31413, 9925, 145, 20000)--�߼�
--	--SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 29931, 10698, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 30630, 11220, 197, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 31338, 10572, 197, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 29804, 12096, 197, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 31395, 12150, 197, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1005, 30527, 12269, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1006, 30450, 14196, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 31131, 14589, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 29722, 14559, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 30473, 15437, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 25622, 15420, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 26494, 15358, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 34273, 14783, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 35426, 14748, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 26425, 13830, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 24804, 11407, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 25626, 11098, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 26114, 11621, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 26771, 12247, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 34353, 12512, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 35481, 11480, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(999, 36359, 10475, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 36518, 12642, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1003, 35287, 13572, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1004, 26191, 51235, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 24719, 50298, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 23510, 49731, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 22810, 50114, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 23798, 50981, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 25409, 51497, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 38703, 48578, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 37529, 49192, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 36312, 50224, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 35999, 49941, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 37126, 48890, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 38355, 48209, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1003, 42118, 13718, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1004, 41995, 50676, 85, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 20052, 49216, 235, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1003, 20290, 10940, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(997, 26171, 20331, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(997, 26135, 25139, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(997, 34908, 20323, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(997, 34935, 25171, 145, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(998, 34923, 35539, 145, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(998, 34931, 40336, 145, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(998, 26113, 40342, 145, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(998, 26145, 35526, 145, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(999, 30526, 12996, 145, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1004, 30773, 34564, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 31966, 38371, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 30041, 41467, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(936, 30387, 38429, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 31728, 41471, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(953, 30935, 42286, 10, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 29621, 38427, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(936, 31169, 38416, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 30770, 37773, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1005, 30846, 24456, 190, 20000,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(953, 30712, 36395, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1004, 25184, 48167, 355, 20000,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(1000, 31025, 40986, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--	local cha=CreateChaEx(999, 30868, 25458, 175, 600,map_copy)
--	SetChaSideID(cha, 1)
--	local cha=CreateChaEx(1000, 30762, 35501, 145, 600,map_copy)
--	SetChaSideID(cha, 2)
--
--
--	----��������
--	haijunSide_BaseRole = CreateChaEx(954, 30726, 9792, 180, 20000,map_copy)
--	haijunSide_JDNotice = 0
--	SetChaSideID(haijunSide_BaseRole, 1)
--
--	----��������
--	haijunSide_LCRole = CreateChaEx(993, 11137, 11078, 145, 20000,map_copy)
--	haijunSide_LCNotice = 0
--	SetChaSideID( haijunSide_LCRole, 1)
--
--
--	-----���������
--	haijunSide_DYKRole =CreateChaEx(995, 51495, 10602, 175, 20000,map_copy)
--	haijunSide_DYKNotice =0
--	SetChaSideID(haijunSide_DYKRole, 1)
--
--
--	-----��������
--	haidaoSide_BaseRole = CreateChaEx(955, 30869, 52799, 355, 20000,map_copy)
--	haidaoSide_JDNotice = 0
--	SetChaSideID(haidaoSide_BaseRole, 2)
--
--
--	-----��������
--	haidaoSide_LCRole=CreateChaEx(994, 51739, 51899, 310, 20000,map_copy)
--	haidaoSide_LCNotice = 0
--	SetChaSideID(haidaoSide_LCRole, 2)
--
--
--
--	-----���������
--	haidaoSide_DYKRole=CreateChaEx(996, 11618, 51702, 355, 20000,map_copy)
--	haidaoSide_DYKNotice= 0
--	SetChaSideID(haidaoSide_DYKRole, 2)
--
--
--	-----�����߼�����
--	haijunSide_JTRole_1=CreateChaEx(1010, 29924, 9911, 145, 20000,map_copy)
--	SetChaSideID(haijunSide_JTRole_1, 1)
--
--	haijunSide_JTRole_2=CreateChaEx(1010, 31413, 9925, 145, 20000,map_copy)
--	SetChaSideID(haijunSide_JTRole_2, 1)
--
--
--	-----�����߼�����
--	haidaoSide_JTRole_1=CreateChaEx(1011, 30117, 52848, 355, 20000,map_copy)
--	SetChaSideID(haidaoSide_JTRole_1, 2)
--
--	haidaoSide_JTRole_2=CreateChaEx(1011, 31576, 52807, 355, 20000,map_copy)
--	SetChaSideID(haidaoSide_JTRole_2, 2)



	
end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_guildwar( map ) 
--	local time = GetTickCount ( ) 
--	local Now_Week = GetNowWeek()
--	if Now_Week >=5 and Now_Week < 7 then
--		return 1
--	end
--
--	if Now_Week == 0 then
--		return 1
--	end

	return 1 
end 
function HJ_Goto(role)


local typRoleType = ChaIsBoat(role)			--ȡ��ɫ���� �����ˣ�NPC.......
	if  typRoleType == 1 then 						 --�����ɫ�Ǵ�
		if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
		    --for i=1, 45, 1 do
			MoveTo( role,  839, 3693,  "magicsea" )
		    --end
                      
		else
		    return
		end
		    
	else															--��ɫ���Ǵ�
		local character = TurnToCha(role)	--��ָ��ת��Ϊ��ɫ
		if GetChaGuildID(character) <= 100 and GetChaGuildID(character) > 0 then
		      --for i=1, 45, 1 do
			  MoveTo( character,  910, 3571,  "magicsea" )
		      --end
			 
	        else
		      return
		end
		        
	end
	
end

function HD_Goto(role)

 local typRoleType = ChaIsBoat(role)			--ȡ��ɫ���� �����ˣ�NPC.......
	if  typRoleType == 1 then 						 --�����ɫ�Ǵ�
		if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	               --for i=1, 45, 1 do
			   MoveTo( role,  1188, 674,  "darkblue" )
		       --end
		else
		    return
		end
		    
	else												--��ɫ���Ǵ�
		 local character = TurnToCha(role)	--��ָ��ת��Ϊ��ɫ
		 if GetChaGuildID(character) > 100 and GetChaGuildID(character) <= 200 then
		      --for i=1, 45, 1 do
			   MoveTo( character,  1271, 527,  "darkblue" )
		      --end
		 else
		      return
		 end
		        
	 end
	
end

function noside_Goto(role)

local typRoleType = ChaIsBoat(role)			--ȡ��ɫ���� �����ˣ�NPC.......
		if  typRoleType == 1 then 						 --�����ɫ�Ǵ�
		    if GetChaGuildID(role) == 0 then
                       MoveTo( role,  2259, 2828,  "garner" )
		    else
		       return
		    end
		    
		else															--��ɫ���Ǵ�
		      local character = TurnToCha(role)	--��ָ��ת��Ϊ��ɫ
			if GetChaGuildID(character) == 0 then
			  MoveTo( character,  2222, 2777,  "garner" )
			else
			  return
			end
		        
	        end
	
end

function All_Goto(role)
      local typRoleType = ChaIsBoat(role)			--ȡ��ɫ���� �����ˣ�NPC.......
		if  typRoleType == 1 then 						 --�����ɫ�Ǵ�
		    if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
                       MoveTo( role,  1188, 674,  "darkblue" )
		    else
		       MoveTo( role,  839, 3693,  "magicsea" )
		    end
		    
		else															--��ɫ���Ǵ�
		    local character = TurnToCha(role)	--��ָ��ת��Ϊ��ɫ
		    if GetChaGuildID(character) > 100 and GetChaGuildID(character) <= 200 then
			MoveTo( character,  1271, 527,  "darkblue" )
		    else
			MoveTo( character,  910, 3571,  "magicsea" )
		    end
		        
	        end
		
end

function Give_Three_QiYue( role )
   local Item_CanGet = GetChaFreeBagGridNum ( role )
	   if Item_CanGet <= 0 then
		   GiveItemX ( role , 0 , 2383  , 3 , 4 )
	   else
		   GiveItem ( role , 0 , 2383  , 3 , 4 )
	   end
end		 



		
	   

