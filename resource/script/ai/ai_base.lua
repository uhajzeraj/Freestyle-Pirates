--------------------------------------------------------------------------
--									--
--									--
--				ai_base.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading Ai_Base.lua" )


---  ʵ��ԭ��
---  1. ״̬ + ���� + �¼�
---  2. ��������������¼�
---  3. ͨ�����������������¼�, ���õ��򵥵�״̬����
---  4. ͨ��ѡ��ͬ��״̬����, ��ʵ�ֲ�ͬ���͵�AI



-----AI ���Ͷ���-------------------------------------------------------------------------

AI_NONE			=  0  --���ƶ�
AI_N_ATK			=  1  --������
AI_FLEE			=  2  --�������󷴷�������
AI_MOVETOHOST  		=  4  --��������
AI_R_ATK			=  5  --�������󷴻�
AI_ATK			= 10  --�������� 
AI_ATK_FLEE		= 11  --��������+���˱ƽ�������(ֻ��Զ�̹����Ĺ��������ɴ�����)




------------------------------------------------------------------------------
--------------------------AI״̬������ : ����------------------------------------
------------------------------------------------------------------------------
as_guard = {}
as_guard[aic_seek_target] = ai_event_find_target

------------------------------------------------------------------------------




------------------------------------------------------------------------------
--------------------------AI״̬������ : ��Ϣ(����ƶ�)---------------------------
------------------------------------------------------------------------------
as_idle = {}
as_idle[aic_rand_5_1] = ai_event_rand_move

------------------------------------------------------------------------------





------------------------------------------------------------------------------
--------------------------AI״̬������ : Ѳ��------------------------------------
------------------------------------------------------------------------------
--����ص�Ѳ�����, ��ʼ�������Ϣ
--�����Ϣ����, Ӧ�ÿ�ʼѲ����, ��ʼѲ��
--����ִ�Ѳ��Ŀ���, ����Ŀ��㿪ʼ��Ϣ
--Ѳ�ߵ�ͬʱ, ���־���
as_patrol = {}
as_patrol[aic_at_spawnpos]   = ai_event_patrol_start_idle
as_patrol[aic_patrol_begin]  = ai_event_patrol_begin
as_patrol[aic_patrol_arrive] = ai_event_patrol_end_idle
as_patrol[aic_patrol_return] = ai_event_patrol_return
as_patrol[aic_seek_target]   = ai_event_find_target
------------------------------------------------------------------------------







------------------------------------------------------------------------------
--------------------------AI״̬������ : ׷��------------------------------------
------------------------------------------------------------------------------
--������������̫Զ, ��������
--���Ŀ���Ѿ�������Ұ, �����Ŀ��
as_chase = {}
as_chase[aic_at_spawn_toofar] 	= ai_event_go_home
as_chase[aic_target_outofsight] = ai_event_clear_target
as_chase[aic_update_target]   	= ai_event_update_target
------------------------------------------------------------------------------




--ai���� : �ϲ���
ai_type[1]  = { no_target = as_idle,	has_target = nil      , tick = nil 	}

--ai���� : ��׼��
ai_type[5]  = { no_target = as_guard,	has_target = as_chase , tick = nil 	}

--ai���� : ��С��
ai_type[2]  = { no_target = as_idle,	has_target = as_flee  , tick = nil 	}

--ai���� : ������
ai_type[11] = { no_target = as_guard,	has_target = as_around, tick = nil	}

--ai���� : Ѳ����
ai_type[6]  = { no_target = as_patrol,	has_target = as_chase , tick = nil 	}


function handle_state(c, state)
	
	if state==nil then return end
	
	for con, event in state do
		
		if con(c)==1 then event(c) end
			
	end
	
end


function ai_loop(c)
    
 	local ai_def = GetChaAIType(c)
 	if ai_def==AI_NONE then return end
  
    local ai_t = ai_type[ai_def]
    local t    = GetChaTarget(c) --ȡ����ǰ��ɫ��Ŀ��
	if t~=nil then
        handle_state(c, ai_t.has_target)
    else
    	handle_state(c, ai_t.no_target)
    end
  	
    handle_state(c, ai_t.tick)
 
end
