--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry,193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Annoucement: Outside of Shaitan City emerge a portal to Sacred War at ["..posx..","..posy.."] . For players level 65 and above only! ") --֪ͨ������������������


    
--local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�
--    SetMapCopyParam(copy_mgr, 1, 3) --�ڵ�һ��λ�ô���ֱ�����
--    SetMapCopyParam(copy_mgr, 2, 2) --�ڵڶ���λ�ô���ֱ���
--    SetMapCopyParam(copy_mgr, 3, HaiJunSide) 
--    SetMapCopyParam(copy_mgr, 4, HaiDaoSide)
--    SetMapCopyParam(copy_mgr, 5, 0) --�ڵ�5��λ�÷���ʤ����ϵ��ֵ
--    FinishSetMapEntryCopy(entry, 1) 

    --local RedSideName = GetGuildName( RedSide_GuildID ) 
    --local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    local EntryName = "Sacred war Portal: [Navy faction] VS [Pirate faction] (Level 65 and above)"
    SetMapEntryEventName( entry, EntryName )
    
    --map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    --Notice("�����㲥��������ս�����ڿ�ʼ�������˫�������ǣ����췽���� "["..RedSideName.."]"��������ս��"["..BlueSideName.."]"��˫������ĳ�Ա����ͨ��ħŮ֮��"["..posx..","..posy.."]"�������н��뾺����԰") --֪ͨ������������������

end

function after_destroy_entry_guildwar(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Annoucement: Portal to Sacred war for Level 65 and above has vanished. Enjoy!") 

end

function after_player_login_guildwar(entry, player_name)
--    local copy_mgr = GetMapEntryCopyObj(entry, 1) 
--    local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
--    local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )
--    local RedSideName = GetGuildName( RedSide_GuildID ) 
--    local BlueSideName = GetGuildName( BlueSide_GuildID ) 

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
   ChaNotice(player_name, "Pirate Annoucement: Outside Shaitan City ["..posx..","..posy.."] near the location has discovered a portal to <<Sacred war>> (For Level 65 and above) !") --֪ͨ������������������

end




--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_guildwar( role, copy_mgr )

local FightingBook_Num = 0
      FightingBook_Num = CheckBagItem( role,3849 )

if FightingBook_Num <= 0 then
		SystemNotice(role,"You cannot enter Sacred war without Medal of Valor. Please obtain your Medal of Valor from Arena Administrator first")
		--Notice("You cannot enter Sacred war without Medal of Valor. Please obtain your Medal of Valor from Arena Administrator first")
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end


local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "You're in party status, cannot enter scared war" )
		return 0
		
	end

	--local Cha = TurnToCha(role)

    --local RedSide_GuildID = GetMapCopyParam(copy_mgr, 3 )
    --local BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4 )



 if  GetChaGuildID(role) == 0 then
	

     SystemNotice(role,"Sorry but you don't belong to navy or pirate, please don't enter for adventure!")
     return 0
		
	
elseif Lv(role) < 65  then

	SystemNotice(role, "To enter this Sacred war you must be level 65 and above")
	     return 0    
	end


        local Num_1= CheckBagItem(role,4661)
	if Num_1 >= 1 then
		SystemNotice(role, "Please throw away the Repair Wood inside your inventory to enter")	
		return 0
	end

	local Num_2= CheckBagItem(role,4546)
	if Num_2 >= 1 then
		SystemNotice(role, "Please throw away the Crystal Ore inside ur inventory to enter.")	
		return 0
	end

	local Num_3= CheckBagItem(role,1684)
	if Num_3 >= 1 then
		SystemNotice(role, "Please throw away Hard Tortoise Shell inside your inventory to enter")	
		return 0
	end

	local Num_4= CheckBagItem(role,1683)
	if Num_4 >= 1 then
		SystemNotice(role, "Please throw away the Tortoise Shell Fragment inside your inventory to enter")	
		return 0
	end

	local Num_5= CheckBagItem(role,4012)
	if Num_5 >= 1 then
		SystemNotice(role, "Please throw away the Moon Tail Eel inside inventory to enter.")	
		return 0
	end

	local Num_6= CheckBagItem(role,4013)
	if Num_6 >= 1 then
		SystemNotice(role, "Please throw away the Diving Clam inside your inventory to enter")	
		return 0
	end

        local Num_7= CheckBagItem(role,2964)
	if Num_7 >= 1 then
		SystemNotice(role, "Please throw away the Navy Token inside your inventory to enter")	
		return 0
	end

	local Num_8= CheckBagItem(role,3001)
	if Num_8 >= 1 then
		SystemNotice(role, "Please throw away the Pirate Token inside your inventory to enter")	
		return 0
	end

	local Num_9= CheckBagItem(role,4011)
	if Num_9 >= 1 then
		SystemNotice(role, "Please throw away the Squirting Fish inside your inventory to enter")	
		return 0
	end

	local Num_10= CheckBagItem(role,1720)
	if Num_10 >= 1 then
		SystemNotice(role, "Please throw away the Fish Bone inside your inventory to enter")	
		return 0
	end

	local Num_11= CheckBagItem(role,2382)
	if Num_11 < 1 then
		SystemNotice(role, "Please exchange a Life and Death Token from the NPC beside me to enter.")	
		return 0
	end

end

function begin_enter_guildwar(role, copy_mgr) 

--local role_RY = GetChaItem2 ( role , 2 , 3849 )
--local HonorPoint = GetItemAttr ( role_RY , ITEMATTR_VAL_STR)
--local HonorPoint_now = HonorPoint - 15
--
--	if HonorPoint < 15 then
--		SystemNotice ( role , "You do not have enough honor points to enter Sacred War" )
--		return 0
--	else
--
--	SetItemAttr( role_RY , ITEMATTR_VAL_STR , HonorPoint_now )
--	        
--	end

    --local RedSide_GuildID, BlueSide_GuildID
    --RedSide_GuildID = GetMapCopyParam(copy_mgr, 3)
    --BlueSide_GuildID = GetMapCopyParam(copy_mgr, 4)

     local Cha = TurnToCha(role)
     if  GetChaGuildID(Cha) <= 100 and GetChaGuildID(Cha) > 0 then
	     if count_haijun < 45 then
	        
	        SystemNotice(role,"Enter Sacred War Map")
		MoveCity(role, "guildwarnavyside")
                count_haijun = count_haijun + 1
	      else 
	        SystemNotice(role,"Navy side is full")
	      end
	
     end	        
		
     if GetChaGuildID(Cha) > 100 and GetChaGuildID(Cha) <= 200 then
             if count_haidao < 45 then
	        SystemNotice(role,"Enter Sacred War Map")
		MoveCity(role, "guildwarpirateside")
		count_haidao=count_haidao + 1
	     else
	        SystemNotice(role,"Pirate members is full")
	     end

     end 
end

