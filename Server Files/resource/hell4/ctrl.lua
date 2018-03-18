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


function get_map_entry_pos_hell4()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=191
	local POS_Y=180
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "hell3") --������ڵ�λ�ã���ͼ�������꣨�ף���
    SetMapEntryTime(map, "2007/1/20/0/0", "1/0/0", "0/1/0", "0/3/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end

function after_enter_hell4( role , map_copy )

local cha_name=GetChaDefaultName(role)

	SystemNotice ( role, "Mysterious voice:<"..cha_name..">, I will let you behold the real power of Death!" ) 

end

function before_leave_hell4 ( role )

end

function map_copy_first_run_hell4( map_copy )



end

function map_copy_run_hell4( map_copy )

	
	if CheckMonsterDead ( AZRAEL[18] ) == 1 then
		
		if CRY[18]==0 then
			local Notice_all = "Fifth floor Guard: Foolish humans, Death has granted us the power of immortality. We will meet again. Wahahaha!!!"
			MapCopyNotice ( map_copy , Notice_all )
			CRY[18]=1
			BOSSXYSJ[987] = 4	
			BOSSSJSJ[987] = 4	
			BOSSTJSJ[987] = 4	
			BOSSXZSJ[987] = 4	
			BOSSAYSJ[987] = 4
		end
	end

	if CRY[18]==1  then
		
		if HELLCLOSETIME==300 then
			local week = GetNowWeek()

			if week ~= 7 then
				Notice("Mysterious Voice: I cannot imagine that mere mortals can even defeat Death! Haha! Amazing! Work harder as this will not be our final meeting! Haha!")
			else
				Notice("Mysterious Voice: Haha! At least there is somebody worthy of my challenge! Only Death awaits you! Let the game begins!")
			end				
			HELLCLOSETIME = HELLCLOSETIME - 180
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = "Warning! Collapses of Abaddon 18 will occurs in "..closetime.." sec(s)! All adventurer prepare to hide"
				MapCopyNotice ( map_copy , Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then


			HELLCLOSETIME = 300
			CRY[18]=0
			CloseMapEntry ( "hell4" )
			CloseMapCopy ( "hell4" )
		end

	end


end

--ÿ5��ִ��һ�ε�
function map_run_hell4( map )




end

--��ͼ�ر�ʱִ��
function map_copy_close_hell4 ( map_copy )

			HELLCLOSETIME = 300
			CRY[18]=0
			SPECIALSKILL[19]=0

end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_hell4( map ) 

--	local time = GetTickCount ( ) 
	local Now_Week = GetNowWeek()
	if Now_Week >5 and Now_Week < 7 then
		return 1
	end

	if Now_Week == 0 then
		return 1
	end

		return 0
end 