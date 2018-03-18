--------------------------------------------------------------------------
--									--
--									--
--				ai.lua					--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading Ai.lua" )


dofile(GetResPath("script/ai/ai_sdk.lua"))


vvv = 0
function debugout(c, info)
    --if GetChaDefaultName(c)=="Demonic Snowman" then
       --ChaNotice("New age baby", info..vvv)
       --vvv = vvv + 1 
    --end
end


---------------------------- �漰���̵�AI������ --------------------------------------------
--AITable = {}
--
--AITable[1] = {}
--AITable[1][1] = {}
--AITable["monster"] = {}
--AITable["monster"]["seearea"] = {}
--AITable["monster"]["seearea"]["type"] = "line"
--AITable["monster"]["seearea"].func = ai_idle
--AITable["monster"]["seearea"].func(c)

-----------------------------
-- û������, ����ƶ�����Ѳ��
-----------------------------
function ai_idle(c)

    if ai_host(c)==1 then return end

    if is_patrol(c)==0 then 
  
        birth_rand_move(c, 600)  --�ڳ����㸽��6�׷�Χ������ƶ� 
  
    else
  
        local px, py = GetChaPatrolPos(c) --ȡ��Ѳ�ߵ�
        
        local ox, oy = GetChaSpawnPos(c)  --ȡ��������
     
        local patrol_state = GetChaPatrolState(c)
     
        if patrol_state==0 then 
        
            ChaMove(c, px, py)
            SetChaPatrolState(c, 2) --����Ϊ�ƶ���

        elseif patrol_state==1 then
        
            ChaMove(c, ox, oy)
            SetChaPatrolState(c, 3)
     
        elseif patrol_state==2 then 
        
            if is_near_pos(c, px, py, 40)==1 then
                SetChaPatrolState(c, 1)   
            end
     
        elseif patrol_state==3 then
     
            if is_near_pos(c, ox, oy, 40)==1 then
                SetChaPatrolState(c, 0)   
            end
     
        end
  
    end

end


-----------------------
-- ������ʱ�Ĵ���
-----------------------
 function ai_host(c)
 
    if GetChaAIType(c)==AI_NONE then return 0 end  --ˮ�׹�, ���ƶ�
    
    local host = GetChaHost(c)
       
    if host~=nil then 
            
        local dis = get_distance(c, host)
        
        if dis > 400 then --������4������
            
            local hx, hy = GetChaPos(host)
            local rx = 200 - Rand(400)
            local ry = 200 - Rand(400)
            ChaMove(c, hx + rx, hy + ry)
            
        end
         
        return 1    
    end

  return 0
end

-----------------------
-- �����ϰ�ʱ�Ĵ���
-----------------------
function ai_block(c, t)

    if GetChaBlockCnt(c) > 0 then --���ϰ���ס
  		    
        local flee_flag = Rand(10)
        if t~=nil and flee_flag > 5 then
		   flee(c, t)           --��Ŀ��ʱ��50%�ļ��ʷ������ƶ�
 		else
		   local move_flag = 1--Rand(2)
           if move_flag==1 then rand_move(c, 400) end    --4�׷�Χ������ƶ� 
    	end
		
        SetChaBlockCnt(c, 0)  --�ϰ�������0
    
    end

end

-------------------------
-- ���������Ŀ��ʱ�ı���
-------------------------
function ai_target(c, t)
    
    local ai_type = GetChaAIType(c)
   
    if ai_type ~= 4 then
	    if ai_update_target(c, t, ai_type)==1 then --����������¼���, Ŀ���ѱ�, �򷵻�
	       return 
	    end 
    end
    
    --��ͬ��ai���ͶԴ�Ŀ���в�ͬ�ķ�ʽ

    if ai_type==AI_FLEE then             --��������, ֻ������
        flee(c, t)
        return
    elseif ai_type==4 then             --��������, ֻ������
        star_move_to(c, t)
        return
    elseif ai_type==AI_ATK_FLEE then     --���ƽ��������
        if is_near(c, t, 400)==1 then    --Ŀ���Ѿ�����
            flee(c, t)
            return
        end
    end

--����AIս��������̣���Ҫ���Boss���
	if ai_type>20 then          --20����ΪBossAI
		special_ai(c, t,ai_type)
	else
		local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
		ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
	end
  
    --һ�㼼�ܣ���д�ڽ�ɫ���еļ��ܣ��������
  
    if is_cha_can_summon(c)==1 then 
        summon_monster(c, t)         --�ټ�����ͬ���������Ŀ��
    end

end



---------------------------
-- �������û��Ŀ��ʱ�ı���
---------------------------
function ai_no_target(c)
	local ai_type = GetChaAIType(c)
	

	if ai_type==4 then             --��������, ֻ������
		--Notice("ai_no_target&ai_type==4")
		star_delete_to(c)
		return
	end 
    local x, y = GetChaSpawnPos(c)

    if is_near_pos(c, x, y, 100)==1 then
       SetChaPatrolState(c, 0)
    end
    
    if ai_seek_target(c)==0 then       --û���ҵ�Ŀ��
  
        if is_moving_back(c)==0 then   --û��������
           
   	   local now_x, now_y = GetChaPos(c)
   
           local dis = (now_x - x) * (now_x - x) + (now_y - y) * (now_y - y)
          
           if dis > 5000 then        
               ChaMove(c, x, y)
               debugout(c, "ai_no_target Snowman distance spawn further MoveToSleep")
           else
               ai_idle(c)
           end
       else
	    
	   local move_flag = Rand(2)
	   if move_flag==1 then
    	        ChaMove(c, x, y)
                debugout(c, "ai_no_target Snowman MoveToSleep")
           end
	
        end
    end
end


-----------------------------------
-- ���������Ĺ֣���Ϊ�Լ�Ѱ��һ��Ŀ��
-----------------------------------
function ai_seek_target(c) 
    
    local ai_t = GetChaAIType(c)
    
    if ai_t<=AI_R_ATK then 
        return 0 
    end

    local host = GetChaHost(c)
    if host~=nil then
        
        local t = GetChaFirstTarget(host) --ͨ���˺��ж�ȡ������Ŀ��
      	if t~=nil and is_near(c, t, GetChaVision(c))==1 then
           SetChaTarget(c, t)
           return 1
        end
    
    else
        
        local t = find_target(c, 0) --û��Ŀ��, ��Ѱ��һ��, û���ҵ���tΪ��
        if t~=nil then
            SetChaTarget(c, t)
            return 1
        end
    
    end

    return 0
end

---------------------------------------------------------------
-- ���Ŀ��ĸ������, return 1��ʾĿ���ѱ�, return 0��ʾĿ��δ��
---------------------------------------------------------------
function ai_update_target(c, t, ai_type)

    if ai_type<=AI_N_ATK or t==GetChaHost(c) then --���Ŀ��Ϊ���������
       clear_target(c) 
       return 1 
    end
  
    local tNew = nil
    
    if Rand(100) < CHANGE_TARGET_RATIO then
    	tNew = GetChaFirstTarget(c) --ͨ���˺��ж�ȡ������Ŀ��
      	if tNew~=nil and tNew~=t then
        	clear_target(c)         --���ԭĿ��
         	SetChaTarget(c, tNew)   --������Ŀ��
            return 1
    	end
	end
    
    local vision = GetChaVision(c)
    if is_near(c, t, vision)==0 then --Ŀ������Ѿ�̫Զ
        clear_target(c)  --���Ŀ��
        return 1
    end
    
    --Ŀ���Ѿ��뿪׷����Χ, ����׷��
    if is_chase(c)==0 then --���׷����Χ, ������ִ��
        clear_target(c)      --���Ŀ��
        local x, y = GetChaSpawnPos(c)
        ChaMoveToSleep(c, x, y)
        set_moving_back(c, 1)
        return 1
    end

    return 0 --����1��ʾĿ�겻��

end



------------------------------------------------------------------------------------------------
---------------------------------------    �߼�ѭ��  -------------------------------------------
------------------------------------------------------------------------------------------------


---------------------------------
--AI����ѭ������, ���н�ɫ����ִ��
---------------------------------
function ai_loop(c)
    
    local ai_type = GetChaAIType(c)

    if ai_type==AI_NONE then return end


    
    local t = GetChaTarget(c) --ȡ����ǰ��ɫ��Ŀ��

    if t~=nil then 
        ai_target(c, t) --��Ŀ��
    else
     	ai_no_target(c) --��Ŀ��
  	end
  	
    ai_tick(c, t) --ÿ�ζ�ִ��
  	
end


---------------------------
-- ÿ��ai_loop��Ҫ���õĹ���
---------------------------
function ai_tick(c, t)

    --����Ƿ������, ������Ұ�ڽ�ɫ������״̬
    local type_id = GetChaTypeID(c)
    if ai_flag_nohide[type_id]==1 then
        local vision = GetChaVision(c)
        ClearHideChaByRange(c, 0, 0, vision, 0)
    end

    --�����ϰ�
    ai_block(c, t)

end

---------------------------
-- Boss(����)AI�������
---------------------------

function special_ai(c, t,ai_type)

	if ai_type == MWHH then    --ڤ���û��������ʥ�����򣬲���Ǳ�У���Ŀ�겻��ѣ��״̬��Ǳ�У����Ŀ���Ѿ�ѣ�Σ���ͨ�������������ʥ�������Ѿ�Ǳ�У�Ŀ�겻��ѣ��״̬����裬Ŀ��ѣ�Σ���ͨ�����������ʥ��������ͨ������
		local StateLv = GetChaStateLv ( c , STATE_SYZY )
		if StateLv == 0 then
			local StateLv = GetChaStateLv ( c , STATE_YS )
			if StateLv == 0 then
				local StateLv = GetChaStateLv ( t , STATE_XY )
				if StateLv == 0 then
					ChaUseSkill(c, c, 123)
					ChaUseSkill(c, t, 86)
					local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
					ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���

					return
				else
					local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
					ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
					return
				end
			else
				local StateLv = GetChaStateLv ( t , STATE_XY )
				if StateLv == 0 then
					ChaUseSkill(c, t, 86)
					local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
					ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
					return
				else
					local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
					ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
					return
				end
			end
		else
					local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
					ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
					return
		end
	end
---------------------------------------------------------------------------------------------------------

	if ai_type == MWYH then  --���������Ⱦ�,Ȼ���־�,�ٿ�ʼ��ͨ����
		local StateLv = GetChaStateLv ( t , SK_TJ )
		if StateLv ~= 0 then
			local StateLv = GetChaStateLv ( t , SK_SJ )
			if StateLv == 0 then
				ChaUseSkill(c, t, 95)
				local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
				ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
				return
			else
				local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
				ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
				return
			end
		else
			ChaUseSkill(c, t, 94)
			local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
			ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
			return
		end
	end
---------------------------------------------------------------------------------------------------------

	if ai_type == MWXS then
		if is_near(c, t, 750)~=1 then    --Ŀ���Ѿ�����
			ChaUseSkill(c, t, 325)
		end
		local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
		ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
	end
---------------------------------------------------------------------------------------------------------
	if ai_type == MWBK then
		if is_near(c, t, 750)~=1 then    --Ŀ���Ѿ�����
			ChaUseSkill(c, t, 325)
		end
		local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
		ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���		
	end

---------------------------------------------------------------------------------------------------------
	if ai_type == MWFH then
		local StateLv = GetChaStateLv ( c , STATE_FNQ )
		if StateLv ~= 0 then
			local StateLv = GetChaStateLv ( t , STATE_BDJ )
			if StateLv == 0 then
				ChaUseSkill(c, t, 93)
				local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
				ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
				return
			else
				local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
				ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
				return
			end
		else
			ChaUseSkill(c, c, 223)
			local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
			ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
			return
		end
	end
---------------------------------------------------------------------------------------------------------

	if ai_type == MWJW then
		local StateLv = GetChaStateLv ( c , STATE_MFD )
		if StateLv == 0 then
			local sp = GetChaAttr( c , ATTR_SP ) 
			local mxsp = GetChaAttr( c , ATTR_MXSP )
			local percent = sp/mxsp
			if percent>=0.1 then
				ChaUseSkill( c, c, 106 )
			else
				local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
				ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
			end
			return
		end

		local StateLv = GetChaStateLv ( c , STATE_TSHD )
		if StateLv == 0 then
			ChaUseSkill(c, c, 103 ) 
			local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
			ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
			return
		end

		local StateLv = GetChaStateLv ( c , STATE_FZLZ )
		if StateLv == 0 then
			ChaUseSkill(c, c, 101)
			local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
			ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
			return
		end

		local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
		ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���

	end
---------------------------------------------------------------------------------------------------------

	if ai_type == MWLH then
		local StateLv = GetChaStateLv ( t , STATE_JNJZ )
		if StateLv == 0 then
			ChaUseSkill( c, t, 104 )
			local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
			ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
			return
		end

		local StateLv = GetChaStateLv ( t , STATE_GJJZ )
		if StateLv == 0 then
			ChaUseSkill(c, t, 105 ) 
			local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
			ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
			return
		end

		local StateLv = GetChaStateLv ( t , STATE_SYNZ )
		if StateLv == 0 then
			ChaUseSkill(c, t, 121)
			local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
			ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
			return
		end

		local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
		ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
	end
---------------------------------------------------------------------------------------------------------

	if ai_type == MWHS then
		local job = GetChaAttr( t , ATTR_JOB )
		if job == 8 then
			ChaUseSkill(c, t, 213)
			local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
			ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
			return
		else
			local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
			ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
		end
	end
---------------------------------------------------------------------------------------------------------

	if ai_type == MWHDS then
		local StateLv = GetChaStateLv ( c , STATE_XY )
		if StateLv~=0 then
			State_Xy_Rem ( c , StateLv )
		end

		local StateLv = GetChaStateLv ( c , STATE_SJ )
		if StateLv~=0 then
			State_Sj_Rem ( c , StateLv )
		end

		local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
		ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���
	end
---------------------------------------------------------------------------------------------------------

	if ai_type == MHKL then

		local StateLv = GetChaStateLv ( c , STATE_XY )
		if StateLv~=0 then
			State_Xy_Rem ( c , StateLv )
		end

		local StateLv = GetChaStateLv ( c , STATE_SJ )
		if StateLv~=0 then
			State_Sj_Rem ( c , StateLv )
		end

		local skill_id = select_skill(c) --���ﰴ�ձ���ѡ���Լ��ļ���  
		ChaUseSkill(c, t, skill_id)      --��Ŀ���ƶ���ʹ�ü���

	end

end