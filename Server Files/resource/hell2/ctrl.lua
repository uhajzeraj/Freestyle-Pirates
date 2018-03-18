--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    MapCopyStartType(map, 1) --���õ�ͼ������ʼ
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_hell2()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=72
	local POS_Y=179
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "hell") --������ڵ�λ�ã���ͼ�������꣨�ף���
    SetMapEntryTime(map, "2007/1/19/21/30", "1/0/0", "0/0/30", "0/5/30") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end

function after_enter_hell2( role , map_copy )

local cha_name=GetChaDefaultName(role)

SystemNotice ( role, "Mysterious voice: Not bad, <"..cha_name..">, to be able to survive till here. If you can cross the water in front, I'll acknowledge your capabilities!" ) 

end

function before_leave_hell2 ( role )

end

function map_copy_first_run_hell2( map_copy )



end

function map_copy_run_hell2( map_copy )

			
	if CheckMonsterDead ( AZRAEL[9] ) == 1 then
		
		if CRY[9]==0 then
			local Notice_all = "Kuroo: The ancient curse has already activated. You will awaken the most deepest evil when you pass through. May death bring you peace!!!"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[9]=1
		end
	end
		
	if CRY[9]==1  then
		
		if HELLCLOSETIME==300 then

			Notice ("Mysterious Voice: Not bad, warriors. You even managed to kill my last pet. But do you remember what happen previously? You now have only 4 mins.")
			HELLCLOSETIME = HELLCLOSETIME - 60
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = "Warning! Collapse of Abaddon 9 left "..closetime.." sec(s)! All adventurer prepare to hide"
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then


			HELLCLOSETIME = 300
			CRY[9]=0
			CloseMapEntry ( "hell2" )
			CloseMapCopy ( "hell2" )

		end
	end
end

--ÿ5��ִ��һ�ε�
function map_run_hell2( map )

end

--��ͼ�ر�ʱִ��
function map_copy_close_hell2 ( map_copy )

			HELLCLOSETIME = 300
			CRY[9]=0

end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_hell2( map ) 

--	local time = GetTickCount ( ) 
	local Now_Week = GetNowWeek()
	if Now_Week >=5 and Now_Week < 7 then
		return 1
	end

		return 0

end 