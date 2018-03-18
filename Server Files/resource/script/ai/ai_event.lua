--------------------------------------------------------------------------
--									--
--									--
--				ai_event.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading Ai_Event.lua" )


--�¼� : ����Ŀ��
function ai_event_find_target(c, t)
	
  SetChaTarget(c, t)	
	
end

--�¼� : ����ƶ�
function ai_event_rand_move(c)
	
	rand_move(c, 400)

end

--�¼� : ��ʼ��һ�ֵ�Ѳ��
function ai_event_patrol_begin(c)

	local px, py = GetChaPatrolPos(c) --ȡ��Ѳ�ߵ�
    ChaMove(c, px, py)
    SetChaPatrolState(c, 2) --�޸�Ѳ�߱��, ����Ϊ�ƶ���

end


--�¼� : ��ʼ��Ѳ��Ŀ�����Ϣ 
function ai_event_patrol_end_idle(c)
 
	SetChaPatrolState(c, 1)

end

--�¼� : ��Ѳ��Ŀ��㷵��
function ai_event_patrol_return(c)

    local ox, oy = GetChaSpawnPos(c)  --ȡ��������
    ChaMove(c, ox, oy)
    SetChaPatrolState(c, 3)

end

--�¼� : ��ʼ��Ѳ����ʼ����Ϣ
function ai_event_patrol_start_idle(c)
	
	SetChaPatrolState(c, 0)   
   
end

--�¼� : �س�����
function ai_event_go_home(c)
	
	clear_target(c)      --���Ŀ��
    local x, y = GetChaSpawnPos(c)
    ChaMoveToSleep(c, x, y)
    set_moving_back(c, 1)

end


--�¼� : ���Ŀ��
function ai_event_clear_target(c)
	
	clear_target(c)  --���Ŀ��

end


--�¼� : Ŀ�����
function ai_event_update_target(c)
	
	local t = GetChaTarget(c) --ȡ����ǰ��ɫ��Ŀ��
	local tNew = GetChaFirstTarget(c) --ͨ���˺��ж�ȡ������Ŀ��
   	if tNew~=nil and tNew~=t then
       	clear_target(c)         --���ԭĿ��
       	SetChaTarget(c, tNew)   --������Ŀ��
        return 1
   	end
   	return 0

end


