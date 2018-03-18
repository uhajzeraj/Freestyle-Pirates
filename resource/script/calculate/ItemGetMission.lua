--------------------------------------------------------------------------
--									--
--									--
--			ItemGetMission.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading ItemGetMission.lua" )


---����жϺ���
function CheckMisChaBoat ( role , ChaType )						--��ֻ������
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	
	if Cha_Boat == nil then
		ChaIsBoat = 1
	else
		ChaIsBoat = 2
	end

	if ChaIsBoat == ChaType then
		return 1
	else
		return 0
	end
end

function CheckChaPos ( role , Cha_x_min , Cha_x_max , Cha_y_min , Cha_y_max , MapName )	--������

	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat ~= nil then
		role = Cha_Boat
	end

	local pos_x , pos_y = GetChaPos ( role )
	local map_name = GetChaMapName ( role )


	if MapName ~= -1 then 

		if map_name ~= MapName then
			return 0 
		end 
	end 

	if pos_x < Cha_x_min or pos_x > Cha_x_max then
	
		return 0
	end

	if pos_y < Cha_y_min or pos_y > Cha_y_max then
		return 0
	end

	return 1
end

function CheckChaGuildType ( role , GuildType , CheckType )				--��⹫������
	
	local Cha_GuildID = GetChaGuildID( role )
	

	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		return 0
	end


	if CheckType == 1 then
		if ChaGuildType_Get == GuildType then
			return 1
		else
			return 0
		end
	elseif CheckType == 2 then
		if ChaGuildType_Get == GuildType then
			return 0
		else
			return 1
		end
	else
		return 0
	end

end

function MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	SystemNotice ( role , "MissionMsgCheck")
	local Have_Record	= 0
	local No_Record		= 0
	local Have_Mission	= 0
	local No_Mission	= 0
	
	
	if HasRecordID ~= -1 then
		Have_Record	= HasRecord( role , HasRecordID )
		if Have_Record ~= LUA_TRUE then
			SystemNotice ( role , HasRecordNotice )
			return 0
		end
	end


	if NoRecordID ~= -1 then
		No_Record	= NoRecord( role , NoRecordID )
		if No_Record ~= LUA_TRUE then
			SystemNotice ( role , NoRecordNotice )
			return 0
		end
	end



	if HasMissionID ~= -1 then
		Have_Mission	= HasMission( role , HasMissionID )
		if Have_Mission ~= LUA_TRUE then
			SystemNotice ( role , HasMissionNotice )
			return 0
		end
	end


	if No_MissionID ~= -1 then
		No_Mission	= HasMission( role , No_MissionID )
		if No_Mission == LUA_TRUE then
			SystemNotice ( role , NoMissionNotice )
			return 0
		end
	end
	
	return 1

end

function ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	SystemNotice ( role , "ChaMsgCheck")
	local Is_BoatOrMan = 0
	local At_Pos = 0
	local CheckGuild_Type = 0

	if ChaType ~= -1 then
		Is_BoatOrMan = CheckMisChaBoat( role , ChaType )
		if Is_BoatOrMan == 0 then
			SystemNotice ( role , CheckBoatNotice )
			return 0
		end
	end

	if Need_CheckPos == 1 then
		At_Pos = CheckChaPos ( role , Cha_x_min , Cha_x_max , Cha_y_min , Cha_y_max , MapName )
		if At_Pos == 0 then
			SystemNotice ( role , CheckPosNotice )
			return 0
		end
	end

	if GuildType ~= -1 then
		CheckGuild_Type = CheckChaGuildType ( role , GuildType , CheckType )
		if CheckGuild_Type == 0 then
			SystemNotice ( role , GuildTypeNotice )
			return 0
		end
	end
	
	return 1

end


function ItemUse_LDADYW (role) --[[³�°�������]]--

	local HasRecordID	= 270			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 4096			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 4096			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "Memento of Andrew shows no responese"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "Memento of Andrew shows no responese"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "Memento of Andrew shows no responese"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "Memento of Andrew shows no responese"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "Memento of Andrew shows no responese"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "Memento of Andrew shows no responese"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "Memento of Andrew shows no responese"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "Memento of Andrew shows no responese"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "Memento of Andrew shows no responese"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "Memento of Andrew shows no responese"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "Memento of Andrew shows no responese"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	9	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	8	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	10	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	1	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet < 1 then
			SystemNotice(role ,"Inventory space insufficient. Usage of item failed")
			UseItemFailed ( role )
			return
		end
	end



	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 
function ItemUse_GLDYS (role) --[[���ϵ�Կ��]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 15			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 15			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 4096			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 4096			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "This ancient key has the logo of Thundoria Bank on it"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "This ancient key has the logo of Thundoria Bank on it"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "This ancient key has the logo of Thundoria Bank on it"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "This ancient key has the logo of Thundoria Bank on it"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "This ancient key has the logo of Thundoria Bank on it"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "This ancient key has the logo of Thundoria Bank on it"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "This ancient key has the logo of Thundoria Bank on it"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "This ancient key has the logo of Thundoria Bank on it"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "This ancient key has the logo of Thundoria Bank on it"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "This ancient key has the logo of Thundoria Bank on it"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "This ancient key has the logo of Thundoria Bank on it"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	15	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	15	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	15	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 



function ItemUse_LDADYS (role) --[[³�°�������]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 16			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 16			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 4096			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 4096			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "Andrew's Will has some unknown scribbling on it"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "Andrew's Will has some unknown scribbling on it"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "Andrew's Will has some unknown scribbling on it"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "Andrew's Will has some unknown scribbling on it"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "Andrew's Will has some unknown scribbling on it"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "Andrew's Will has some unknown scribbling on it"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "Andrew's Will has some unknown scribbling on it"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "Andrew's Will has some unknown scribbling on it"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "Andrew's Will has some unknown scribbling on it"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "Andrew's Will has some unknown scribbling on it"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "Andrew's Will has some unknown scribbling on it"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	16	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	16	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	16	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 


function ItemUse_YXYSJY (role) --[[����ҩˮ��ҩ]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 18			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 18			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 1845			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 1841			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 1719			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 1715			-- �ж�����ID �� Y ������Сֵ
	local MapName		= "magicsea"			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "Where do you wish to apply the Invisible Ink Negator?"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	18	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	18	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	18	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 



function ItemUse_RYDKL (role) --[[���������]]--

	local HasRecordID	= 287			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 20			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 19			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 20			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= 1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 184500			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 184100			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 171900			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 171500			-- �ж�����ID �� Y ������Сֵ
	local MapName		= "magicsea"			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "Why don't you look for Jack"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "Mermaid Carcass has an ancient word carving \"(1843, 1717)\""		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	20	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	20	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	20	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	1	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet < 1 then
			SystemNotice(role ,"Inventory space insufficient. Usage of item failed")
			UseItemFailed ( role )
			return
		end
	end

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 




function ItemUse_SXTCQ (role) --[[ˮ��̽����]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 29			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 381			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 29			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= 2			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= 1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 375900			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 375500			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 125000			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 124600			-- �ж�����ID �� Y ������Сֵ
	local MapName		= "magicsea"			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "Detection failed"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "Detection failed"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "Detection failed"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "Detection failed"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "Detection failed"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "Detection failed"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "Detection failed"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "Detection failed"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "Underwater Detector can only be used while sailing"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "Detection failed"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "Detection failed"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	29	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	29	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	29	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	1	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	if ItemID ~= -1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet < 1 then
			SystemNotice(role ,"Inventory space insufficient. Usage of item failed")
			UseItemFailed ( role )
			return
		end
	end

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 





function ItemUse_RJDYW (role) --[[�ռǵ�����]]--

	local HasRecordID	= 290			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 21			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 21			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "The diary records the mysterious journey of Andrew"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "The diary records the mysterious journey of Andrew"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "The diary records the mysterious journey of Andrew"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "The diary records the mysterious journey of Andrew"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "The diary records the mysterious journey of Andrew"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "The diary records the mysterious journey of Andrew"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "The diary records the mysterious journey of Andrew"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "The diary records the mysterious journey of Andrew"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "The diary records the mysterious journey of Andrew"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "The diary records the mysterious journey of Andrew"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "The diary records the mysterious journey of Andrew"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	21	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	21	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	21	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 






function ItemUse_HL (role) --[[����]]--

	local HasRecordID	= 315			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 22			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 22			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= 2			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "The wheel glows and point towards the direction of Ascaron (1497, 1707)"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "The wheel glows and point towards the direction of Ascaron (1497, 1707)"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "The wheel glows and point towards the direction of Ascaron (1497, 1707)"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "The wheel glows and point towards the direction of Ascaron (1497, 1707)"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "The wheel glows and point towards the direction of Ascaron (1497, 1707)"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "The wheel glows and point towards the direction of Ascaron (1497, 1707)"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "The wheel glows and point towards the direction of Ascaron (1497, 1707)"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "The wheel glows and point towards the direction of Ascaron (1497, 1707)"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "The compass gives out a light glow and point towards a certain direction on the sea of Ascaron"			--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "The wheel glows and point towards the direction of Ascaron (1497, 1707)"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "The wheel glows and point towards the direction of Ascaron (1497, 1707)"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	22	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	22	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	22	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 





function ItemUse_WNYDYF (role) --[[����ҩ��ҩ��]]--

	local HasRecordID	= 328			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 30			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 30			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "Omni-Antidote Prescription seems to be sleeping��"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	30	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	30	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	30	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 






function ItemUse_LZL (role) --[[��֮��]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 24			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 24			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "Tear of Dragon emanate a chilling aura"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "Tear of Dragon emanate a chilling aura"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "Tear of Dragon emanate a chilling aura"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "Tear of Dragon emanate a chilling aura"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "Tear of Dragon emanate a chilling aura"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "Tear of Dragon emanate a chilling aura"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "Tear of Dragon emanate a chilling aura"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "Tear of Dragon emanate a chilling aura"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "Tear of Dragon emanate a chilling aura"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "Tear of Dragon emanate a chilling aura"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "Tear of Dragon emanate a chilling aura"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	24	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	24	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	24	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 

function ItemUse_BLP (role) --[[����ƿ]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 369			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= 1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 380200			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 379800			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 55200			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 54800			-- �ж�����ID �� Y ������Сֵ
	local MapName		= "darkblue"			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	-1	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	-1	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	-1	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	4257	--������� ( -1 Ϊ���� )
	local ItemNum		=	1	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	1	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 


function ItemUse_SS (role) --[[ʥˮ]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 26			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 370			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 26			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "The Holy Water gives out a purifying aura and cleanses all evil"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	26	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	26	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	26	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 



function ItemUse_FHSDX (role) --[[�ۺ�ɫ����]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 27			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 362			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 27			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "A normal pink colored letter"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "A normal pink colored letter"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "A normal pink colored letter"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "A normal pink colored letter"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "A normal pink colored letter"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "A normal pink colored letter"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "A normal pink colored letter"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "A normal pink colored letter"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "A normal pink colored letter"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "A normal pink colored letter"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "A normal pink colored letter"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	27	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	27	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	27	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 






function ItemUse_WYJ (role) --[[��Զ��]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 28			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 375			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 28			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= -1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 0			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 0			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 0			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 0			-- �ж�����ID �� Y ������Сֵ
	local MapName		= -1			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "Binoculars allows you to see places far away"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "Binoculars allows you to see places far away"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "Binoculars allows you to see places far away"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "Binoculars allows you to see places far away"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "Binoculars allows you to see places far away"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "Binoculars allows you to see places far away"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "Binoculars allows you to see places far away"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "Binoculars allows you to see places far away"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "Binoculars allows you to see places far away"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "Binoculars allows you to see places far away"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "Binoculars allows you to see places far away"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	28	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	28	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	28	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 





function ItemUse_LDADYW2 (role) --[[³�°�������2]]--

	local HasRecordID	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local HasRecordID_1	= -1			-- �ж��Ƿ����ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1 Ϊ���ж� )
	local NoRecordID	= 14			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local NoRecordID_1	= -1			-- �ж��Ƿ񲻴���ĳ��¼ ( ��Ҫ�жϵļ�¼ ID , -1Ϊ���ж� )
	local HasMissionID	= 273			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local HasMissionID_1	= -1			-- �ж��Ƿ����ĳ���� ( ��Ҫ�жϵ����� ID , -1 Ϊ���ж� )
	local No_MissionID	= 14			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local No_MissionID_1	= -1			-- �ж�û�д�ĳ���� ( ��Ҫ�жϵ����� ID ,-1 Ϊ���ж� )
	local ChaType		= -1			-- �ж��Ƿ�Ϊ�˻�ֻ ( 1 Ϊ �� , 2 Ϊ �� , -1 Ϊ���ж� )
	local Need_CheckPos	= 1			-- �Ƿ��ж����� ( 1 Ϊ �ж� , -1 Ϊ���ж� , ������ж�������͵�ͼ���� 0 )
	local Cha_x_max		= 7900			-- �ж�����ID �� X �������ֵ
	local Cha_x_min		= 7500			-- �ж�����ID �� X ������Сֵ
	local Cha_y_max		= 397300			-- �ж�����ID �� Y �������ֵ
	local Cha_y_min		= 396900			-- �ж�����ID �� Y ������Сֵ
	local MapName		= "garner"			-- �ж��������ڵ�ͼ��
	local GuildType		= -1			-- �ж�����Ĺ������� ( 1 Ϊ���� , 2 Ϊ���� , 0 Ϊû�й��� , -1 Ϊ���ж� )
	local CheckType		= 1			-- �ж����﹫�����͵ķ�ʽ ( 1 Ϊ��ĳ�ֹ������� , 2 Ϊ����ĳ�ֹ������� )


	local HasRecordNotice	 = "There are lots of scratches on Andrew's Memento"		--�ж� HasRecord ʧ����ʾ
	local HasRecordNotice_1  = "There are lots of scratches on Andrew's Memento"		--�ж� HasRecord ʧ����ʾ
	local NoRecordNotice	 = "There are lots of scratches on Andrew's Memento"		--�ж� NoRecord ʧ����ʾ
	local NoRecordNotice_1	 = "There are lots of scratches on Andrew's Memento"		--�ж� NoRecord ʧ����ʾ
	local HasMissionNotice	 = "There are lots of scratches on Andrew's Memento"		--�ж� HasMission ʧ����ʾ
	local HasMissionNotice_1 = "There are lots of scratches on Andrew's Memento"		--�ж� HasMission ʧ����ʾ
	local NoMissionNotice	 = "There are lots of scratches on Andrew's Memento"		--�ж� NoMission ʧ����ʾ
	local NoMissionNotice_1	 = "There are lots of scratches on Andrew's Memento"		--�ж� NoMission ʧ����ʾ
	local CheckBoatNotice	 = "There are lots of scratches on Andrew's Memento"		--�ж� �˻� ʧ����ʾ
	local CheckPosNotice	 = "Memento of Andrew shows no responese"		--�ж� ���� ʧ����ʾ
	local GuildTypeNotice	 = "There are lots of scratches on Andrew's Memento"		--�ж� �������� ʧ����ʾ

	local CheckMissionMsg_1  = MissionMsgCheck ( role , HasRecordID , NoRecordID , HasMissionID , No_MissionID , HasRecordNotice , NoRecordNotice , HasMissionNotice , NoMissionNotice )
--	Notice("CheckMissionMsg_1 = "..CheckMissionMsg_1 ) 
	local CheckMissionMsg_2	 = MissionMsgCheck ( role , HasRecordID_1 , NoRecordID_1 , HasMissionID_1 , No_MissionID_1 , HasRecordNotice_1 , NoRecordNotice_1 , HasMissionNotice_1 , NoMissionNotice_1 )
--	Notice("CheckMissionMsg_2 = "..CheckMissionMsg_2 ) 
	local CheckChaMsg	 = ChaMsgCheck ( role , ChaType , Need_CheckPos ,Cha_x_max , Cha_x_min , Cha_y_max , Cha_y_min , MapName , GuildType , CheckType , CheckBoatNotice , CheckPosNotice ,GuildTypeNotice )
--	Notice("CheckChaMsg = "..CheckChaMsg ) 

	if CheckMissionMsg_1 ~= 1 or CheckMissionMsg_2 ~= 1 or CheckChaMsg ~= 1 then
		UseItemFailed ( role )
		return
	end





	local GiveMisson_1	=	14	--������������ (-1 Ϊ���� )
	local GiveMisson_2	=	14	--������������ (-1 Ϊ���� )
	local GiveMisson_0	=	14	--�޹���������� ( -1 Ϊ���� )
	local ItemID		=	-1	--������� ( -1 Ϊ���� )
	local ItemNum		=	0	--�����������
	local Give_Exp		= 	-1	-- Ҫ����ľ��� ( ���Ϊ -1 Ϊ���� )
	local Give_Money	= 	-1	-- Ҫ�����Ǯ ( ���Ϊ -1 Ϊ���� )
	local DelItem		=	0	--�Ƿ���ʹ�ú�ɾ������( 1 ɾ, 0 ��ɾ )

	local Cha_GuildID = GetChaGuildID( role )
	
	local ChaGuildType_Get = -1
	if Cha_GuildID == 0 then
		ChaGuildType_Get = 0
	elseif Cha_GuildID > 0 and Cha_GuildID <= 100 then
		ChaGuildType_Get = 1
	elseif Cha_GuildID > 100 and Cha_GuildID <= 200 then
		ChaGuildType_Get = 2
	else
		SystemNotice ( role , "Illegal Guild ID" )
	end

	
	if ChaGuildType_Get == 1 then
		if GiveMisson_1 ~= -1 then
			GiveMission( role, GiveMisson_1 )
		end
	end

	if ChaGuildType_Get == 2 then
		if GiveMisson_2 ~= -1 then
			GiveMission( role, GiveMisson_2 )
		end
	end

	if ChaGuildType_Get == 0 then
		if GiveMisson_0 ~= -1 then
			GiveMission( role, GiveMisson_0 )
		end
	end

	if ItemID ~= -1 then
		GiveItem ( role , 0 , ItemID , ItemNum , 0 )
	end



	if Give_Money > 0 then
		AddMoney ( role , 0 , Give_Money )
	end

	if Give_Exp > 0 then
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			Give_Exp = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + Give_Exp
		
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
	end


	if DelItem == 0 then
		UseItemFailed ( role )
		return
	end

end 
