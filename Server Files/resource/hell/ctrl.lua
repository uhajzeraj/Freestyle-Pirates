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


function get_map_entry_pos_hell()   --������ڵ�λ�õ����꣨���꣨�ף���

	local POS_X=199
	local POS_Y=941
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "jialebi") --������ڵ�λ�ã���ͼ�������꣨�ף���
    SetMapEntryTime(map, "2007/1/19/21/0", "1/0/0", "0/1/0", "0/6/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����

end

function after_enter_hell( role , map_copy )

local cha_name=GetChaDefaultName(role)

	SystemNotice ( role, "Mysterious Voice: Intruders of Death Realm<"..cha_name..">Ah, my pets will rip you apart mercilessly!" ) 

end

function before_leave_hell ( role )

end

function map_copy_first_run_hell( map_copy )

end

function map_copy_run_hell( map_copy )


		if CheckMonsterDead ( AZRAEL[5] ) == 1 then
			if CRY[5]==0 then
				local Notice_all = "Saro: This feeling of suffering is the power of Despair. I'll revive and you all will fall into depths more deeper than despair!!!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[5]=1
			end
		end
		
		if CheckMonsterDead ( AZRAEL[6] ) == 1 then
			if CRY[6]==0 then
				local Notice_all = "Karu: You might have passed this stage, but prepare for the worst!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[6]=1
			end
		end

		if CheckMonsterDead ( AZRAEL[7] ) == 1 then
			if CRY[7]==0 then
				local Notice_all = "Aruthur: I...I was defeated...Please let me off my lord! I do not want to return to damnation!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[7]=1
			end
		end

		if CheckMonsterDead ( AZRAEL[8] ) == 1 then
			if CRY[8]==0 then
				local Notice_all = "Sacrois: Foolish humans, Death has bestowed upon us the gift of immortality. We will meet again! Haha! Haha!"
				MapCopyNotice ( map_copy , Notice_all )
				CRY[8]=1
			end
		end


				
	if CRY[5]==1 and CRY[6]==1 and CRY[7]==1 and CRY[8]==1 then
		
		if HELLCLOSETIME==300 then
			Notice ( "Mysterious Voice: Do not let the defeat of my 4 pets get to your head. Their sacrifice will not be in vain! Prepare as the earth beneath your feet will vanished in 5 minutes!")
		end

		local closetime = HELLCLOSETIME
		for i = 1 , MAXNOTICE , 1 do
			if closetime ==NOTICETIME[i] then
				local Notice_all = "Warning! Collapse of Abaddon 5 to Abaddon 8 left "..closetime.." sec(s)! All adventurer prepare to hide"
				MapCopyNotice ( map_copy ,Notice_all )
			end
		end
		HELLCLOSETIME = HELLCLOSETIME-1

		if HELLCLOSETIME == 0 then

			HELLCLOSETIME = 300
			CRY[5]=0
			CRY[6]=0
			CRY[7]=0
			CRY[8]=0
			CloseMapEntry ( "hell" )
			CloseMapCopy ( "hell" )

		end
	end
end

--ÿ5��ִ��һ�ε�
function map_run_hell( map )

end

--��ͼ�ر�ʱִ��
function map_copy_close_hell ( map_copy )

			HELLCLOSETIME = 300
			CRY[5]=0
			CRY[6]=0
			CRY[7]=0
			CRY[8]=0

end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_hell( map ) 

--	local time = GetTickCount ( ) 
	local Now_Week = GetNowWeek()
	if Now_Week >=5 and Now_Week < 7 then
		return 1
	end

		return 0

end 