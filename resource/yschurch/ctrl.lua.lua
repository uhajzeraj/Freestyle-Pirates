--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
    MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 0) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1---------
    SingleMapCopyPlyNum(map, 300)   --����һ�������������
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end


function get_map_entry_pos_fs()   --������ڵ�λ�õ����꣨���꣨�ף���

end

function init_entry(map)
	  --SetMapEntryTime(map, "2006/10/18/14/0", "0/0/0", "0/0/0", "0/0/0") --������ڵ�ʱ�䣬��ͼ�����״ο���ʱ�䣨��/��/��/ʱ/�֣����Ժ��ٴο����ļ������/ʱ/�֣�ȫ����ʾֻ���״ο�������ÿ�ο����������ʧ�ļ������/ʱ/�֣�ȫ����ʾ������ʧ����ÿ�ο�������ͼ�رյļ������/ʱ/�֣�ȫ����ʾ�����رգ�����
end

function after_enter_yschurch( role , map_copy )
end

function before_leave_yschurch( role )
end

function map_copy_first_run_yschurch( map_copy )

end

function map_copy_run_yschurch( map_copy )


 --local closetime = CHURCHCLOSETIME
     -- for i = 1 , CHURCHNOTICE , 1 do
		--if closetime == CHURCHCLOSESHOW[i] then
			-- local Notice_all = "������û����ʱ�仹��"..closetime.."�룡��ץ��ʱ������"
			--MapCopyNotice ( map_copy ,Notice_all )
		--end
	--end
	--CHURCHCLOSETIME = CHURCHCLOSETIME - 1
	--KillMonsterInChurch(map_copy)
	--KillMonsterInChurch(map_copy)
	--DealAllActivePlayerInMap(map_copy,"Goto_ShaLan")
	--Notice("Goto_ShaLan  ")
end


function can_open_entry_yschurch( map )  
	
end 
---------ÿ5s����һ��
function map_run_yschurch ( map )
	
   
end
-----------------------------------���ͻ�ɳᰳ�
--function Goto_ShaLan (role)

	--local now_week= os.date("%w")		-------------���ڼ���ʮ���ƣ� 
	--local now_hour= os.date("%H")		-------------ʱ 
	--local now_miniute= os.date("%M")	-------------��
	--now_week= tonumber(now_week)
	--now_hour= tonumber(now_hour)		
	--now_miniute= tonumber(now_miniute)
	--local CheckDateNum = now_hour*100 +now_miniute
	--Notice("CheckDateNum = "..CheckDateNum)
	
	--if now_week==1 then
	--if CheckDateNum==1710  then
		--MoveTo( role,  824, 3530,  "magicsea" )
		
		--else
		--return
		--end
	--elseif now_week==6 or  now_week==0 then
		--if CheckDateNum==2000  or CheckDateNum==2210 then
		--MoveTo( role,  910, 3571,  "magicsea" )
		--Notice("MoveTo1 = ".."910,3751")
		--else
		--return
		--end
	
	--end
	
--end

--function KillMonsterInChurch ( map_copy )
	--local now_week= os.date("%w")		-------------���ڼ���ʮ���ƣ� 
	--local now_hour= os.date("%H")		-------------ʱ 
	--local now_miniute= os.date("%M")	-------------��
	--now_week= tonumber(now_week)
	--now_hour= tonumber(now_hour)		
	--now_miniute= tonumber(now_miniute)
	--local CheckDateNum = now_hour*100 +now_miniute
	--Notice("CheckDateNum = "..CheckDateNum)
	
	--if now_week==1 then
		--if CheckDateNum==1710  then
			--KillMonsterInMapByName(map_copy,"���������")
			--KillMonsterInMapByName(map_copy,"����")
		--else
			--return
		--end
	--elseif now_week==6 or  now_week==0 then
		--if CheckDateNum==2000  or CheckDateNum==2210 then
			--KillMonsterInMapByName(map_copy,"���������")
			--KillMonsterInMapByName(map_copy,"����")
		--else
			--return
		--end
	--end
--end


--��ͼ�ر�ʱִ��
function map_copy_close_yschurch ( map_copy )
end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_yschurch( map ) 
end 



