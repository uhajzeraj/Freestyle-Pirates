--------------------------------------------------------------------------
--									--
--									--
--				ctrl.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading DreamIsland Ctrl.lua" )


--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
	MapCanPK(map, 1)			-- 1 = Turns on PK Mouse Sword Icon // 0 = Turns off PK Mouse Sword Icon ( Need to press CTRL key )
	MapType ( map , 2 )			-- 0 = PvP Off // 1 = PvP Off // 2 = PvP On ( Not allowed to kill Guild and Party Mates ) // 3 = PvP On ( Allowed to kill any player but not Party Mates ) // 4 = PvP On ( Not allowed to kill Guild and Party Mates )        
end


function get_map_entry_pos_DreamIsland()   --������ڵ�λ�õ����꣨���꣨�ף���

end

function init_entry(map)

end

function after_enter_DreamIsland( role , map_copy )
end

function before_leave_DreamIsland( role )
end

function map_copy_first_run_DreamIsland( map_copy )

end

function map_copy_run_DreamIsland( map_copy )
end

--ÿ5��ִ��һ�ε�
function map_run_DreamIsland( map )
end

--��ͼ�ر�ʱִ��
function map_copy_close_DreamIsland ( map_copy )
end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_DreamIsland( map ) 
end 