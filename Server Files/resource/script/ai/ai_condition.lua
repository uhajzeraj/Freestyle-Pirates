--------------------------------------------------------------------------
--									--
--									--
--			ai_condition.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading Ai_Condition.lua" )


-------------------------------------ͨ�������б�-----------------------------------
----------------------------------------------------------------------------------
--���� : λ�ڳ�����
function aic_at_spawnpos(c)
	
	local x, y = GetChaSpawnPos(c)

    if is_near_pos(c, x, y, 100)==1 then
    	return 1
    end
    
    return 0
end

--���� : ���������̫Զ
function aic_at_spawn_toofar(c)
	 
	local chase_r = GetChaChaseRange(c)
	local x, y = GetChaSpawnPos(c)
	local now_x, now_y = GetChaPos(c)
   	local dis = (now_x - x) * (now_x - x) + (now_y - y) * (now_y - y)
   	if dis > chase_r * chase_r then
   		return 1
   	end
   	return 0
	
end

--���� : Ŀ�곬����Ұ
function aic_target_outofsight(c)

	local t = GetChaTarget(c) 			--ȡ����ǰ��ɫ��Ŀ��
	local vision = GetChaVision(c)		--ȡ����ɫ����Ұ
	if is_near(c, t, vision)==0 then 	--Ŀ������Ѿ�̫Զ
        return 1
    end
    return 0

end


--���� : ����Ŀ��
function aic_seek_target(c)
	
	local t = find_target(c, 0) --û��Ŀ��, ��Ѱ��һ��, û���ҵ���tΪ��
    if t~=nil then
            return 1
    end
    
    return 0
end

--���� : 5��֮1�ļ���
function aic_rand_5_1(c)
	
	if Rand(5)==1 then
		return 1
	end

end
----------------------------------------------------------------------------------



----------------------------------Ѳ��ר�������б�-----------------------------------
----------------------------------------------------------------------------------
--���� : Ѳ�������Ϣ����
function aic_patrol_begin(c)
	
	local patrol_state = GetChaPatrolState(c)
	if patrol_state==0 then return 1 end
	return 0
        
end

--���� : �ִ�Ѳ��Ŀ���
function aic_patrol_arrive_end(c)
	
	local px, py = GetChaPatrolPos(c) --ȡ��Ѳ�ߵ�
    if is_near_pos(c, px, py, 40)==1 then return 1 end
    return 0    

end

--���� : ��Ѳ��Ŀ�����Ϣ����
function aic_patrol_return(c)

	local patrol_state = GetChaPatrolState(c)
	if patrol_state==1 then return 1 end
	return 0
        
end
----------------------------------------------------------------------------------


--���� : ���Ŀ�����
function aic_update_target(c)
	
	if Rand(100) < CHANGE_TARGET_RATIO then
    	return 1
    end
    return 0
	
end

	



