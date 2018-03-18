--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

SetTeamFightMapName("teampk") 

function config_entry(entry) 

end 

function after_create_entry(entry) 

end

function after_destroy_entry_teampk(entry)

end

function after_player_login_teampk(entry, player_name) 

end

--��������������븱���ɹ�����ô˺���
--copy����������player1�����뷽��player2����������type���������ͣ�1�����顣2�����塣3�����ᣩ
function after_get_map_copy_teampk(copy_mgr, player1, player2, type) 
    SetMapCopyParam(copy_mgr, 1, type) --�ڵ�һ��λ�ô���ֱ�����
    SetMapCopyParam(copy_mgr, 2, 2) --�ڵڶ���λ�ô���ֱ���
    if type == 1 then 
        SetMapCopyParam(copy_mgr, 3, GetPlayerTeamID(player1)) 
        SetMapCopyParam(copy_mgr, 4, GetPlayerTeamID(player2)) 
    elseif type == 2 then 
        SetMapCopyParam(copy_mgr, 3, GetPlayerID(player1)) 
        SetMapCopyParam(copy_mgr, 4, GetPlayerID(player2)) 
    end
    SetMapCopyParam(copy_mgr, 5, -1) --�ڵ����λ���趨ʤ�������ֵ
					--������λ��Ϊ��ͼ�ر���ʱ
    SetMapCopyParam(copy_mgr, 7, 3) --�ڵ��߸�λ���趨��ͼ������ʱ��ֵ
    SetMapCopyParam(copy_mgr, 8, 0) --�ڵڰ˸�λ���趨��ͼ�״α��
    SetMapCopyParam(copy_mgr, 9, 0) --�ڵھŸ�λ���趨����1ƽ���ȼ���ֵ
    SetMapCopyParam(copy_mgr, 10,0) --�ڵ�ʮ��λ���趨����2ƽ���ȼ���ֵ
    SetMapCopyParam(copy_mgr, 11,0) --�ڵ�ʮһ��λ���趨����1������ֵ
    SetMapCopyParam(copy_mgr, 12,0) --�ڵ�ʮ����λ���趨����2������ֵ

end 

--���ڼ���������
--����ֵ��0�����������������1���ɹ����롣
function check_can_enter_teampk( role, copy_mgr )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "Does not possess Medal of Valor. Unable to participate in challenge." )
		return 0
	elseif RYZ_Num > 1 then
		LG("RYZ_PK","Have more than 1 Mark of Honor")
		return 0
	else
		local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
		local attrtype = ITEMATTR_VAL_STR
		local attr_num = GetItemAttr ( role_RYZ , attrtype )
		local Rongy_xianzhi = RYZ_Rongyu_Min
		local Rongy_xianzhi0 = RYZ_Rongyu_Max

		
		if attr_num < Rongy_xianzhi then
			SystemNotice ( role , "Honor points too low. Unable to challenge" )
			return 0
		end

		if attr_num > Rongy_xianzhi0 then
			SystemNotice ( role , "Honor points too high, unable to enter challenge" )
			return 0
		end
		
	end
	return 1


end

function begin_enter_teampk(role, copy_mgr) 
	local type = GetMapCopyParam(copy_mgr, 1) 
	local side1 = GetMapCopyParam(copy_mgr, 3) 
	local side2 = GetMapCopyParam(copy_mgr, 4) 
	local copy_id = GetMapCopyID(copy_mgr) 

	if type == 1 then --�Ƚ϶�����
		local team_id1 = GetChaTeamID(role) 
		if team_id1 == side1 then 
		    MoveCity(role, "Party PK 1", copy_id) 
		else 
		    MoveCity(role, "Party PK2", copy_id)
		end 
	elseif type == 2 then --�Ƚ���ұ��
		local player = GetChaPlayer(role) 
		local ply_id1 = GetPlayerID(player) 
		if ply_id1 == side1 then 
		    MoveCity(role, "Party PK 1", copy_id) 
		else 
		    MoveCity(role, "Party PK2", copy_id)
		end 
	end

	
end 