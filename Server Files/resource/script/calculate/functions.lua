--------------------------------------------------------------------------
--									--
--									--
--				functions.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading Functions.lua" )


MFRADIX=100 
CRTRADIX=100 
ATKER=0 
DEFER=1 

--------------圣战专用部分----------------------------------------
count_haidao = 0
count_haijun = 0
five_seconds = 0
second_five_seconds = 0
time_can_setmonster = 0
time_can_setnvsheng = 0
check_need_show = 0 
create_boss_hj = 0
create_boss_hd = 0
--create_two_side_lose = 0
--CLOSENotice = 0


count_haijun2 = 0
count_haidao2 = 0
five_seconds2 = 0
second_five_seconds2 = 0
time_can_setmonster2 = 0
time_can_setnvsheng2 = 0
check_need_show2 = 0
create_boss_hj2 = 0
create_boss_hd2 = 0
--create_two_side_lose2 = 0
--CLOSENotice2 = 0

function get_repatriate_city_guildwar(role)

  local map_name_role_guildwar = GetChaMapName ( role )
  return map_name_role_guildwar

end

function get_repatriate_city_guildwar2(role)

  local map_name_role_guildwar2 = GetChaMapName ( role )
  return map_name_role_guildwar2

end
---------------------------------------------------	
---------------------------------------------------



atk_statecheck = {} 
def_statecheck = {} 

function Reset_Statecheck () 
	for i = 1 , 100 , 1 do 
		atk_statecheck[i] = 0 
		def_statecheck[i] = 0 
	end 
end 



function EightyLv_ExpAdd ( cha , expadd ) 

	if ValidCha (cha) ==1 then					--指针存在
		if ChaIsBoat ( cha ) == 0 then			--人物加经验作特殊处理
			if Lv ( cha ) >= 80 then 
				expadd = math.floor ( expadd / 50 ) 
			end 
			if expadd == 0 then 
				SystemNotice ( TurnToCha(cha) , "Distance is too far to obtain any EXP" )
			end 
		end 
		exp = GetChaAttr ( cha , ATTR_CEXP ) 
		exp = exp + expadd 
		SetCharaAttr ( exp , cha , ATTR_CEXP ) 
	end 
end 


function Check_State ( atk_role , def_role ) 
	Reset_Statecheck() 
	--攻击状态判断
--	atk_statecheck[STATE_ZMYJ] = GetChaStateLv ( ATKER , STATE_ZMYJ ) 
--	atk_statecheck[STATE_SMYB] = GetChaStateLv ( ATKER , STATE_SMYB ) 
	atk_statecheck[STATE_YS] = GetChaStateLv ( atk_role , STATE_YS ) 
	--受击状态判断
--	def_statecheck[STATE_ZJFT] = GetChaStateLv ( DEFER , STATE_ZJFT ) 
--	def_statecheck[STATE_BSHD] = GetChaStateLv ( DEFER , STATE_BSHD ) 
end 

function CreatChaSkill ( role ) 
end 


function CheckJobLegal ( job ) 
	local check_job = 1 
	if job < JOB_TYPE_XINSHOU or job > JOB_TYPE_GONGCHENGSHI then 
		check_job = 0 
	end 
	return check_job 
end 

function RemoveYS( role )
	--SystemNotice ( role , "come here" )
	RemoveState( role , STATE_YS )					
	return 1 
end

function Rem_State_Unnormal ( role ) 
	RemoveState( role , STATE_ZD )					--中毒
	RemoveState( role , STATE_MB )					--麻痹
	RemoveState( role , STATE_ZZZH )				--诅咒之火
	RemoveState( role , STATE_SYNZ)				--深渊泥沼
	RemoveState( role , STATE_SDBZ )				--闪躲壁障
	RemoveState( role , STATE_TJ )					--腿狙
	RemoveState( role , STATE_SJ )					--手狙
--	RemoveState( role , STATE_XY )					--眩晕
	RemoveState( role , STATE_JNJZ )				--技能禁止
	RemoveState( role , STATE_GJJZ )				--攻击禁止
	RemoveState( role , STATE_BDJ )					--冰冻箭
	RemoveState( role , STATE_XN )					--血怒
	RemoveState( role , STATE_NT )					--泥潭
	RemoveState( role , STATE_DIZ )					--地震
	RemoveState( role , STATE_SWCX )				--死亡嘲笑
	RemoveState( role , STATE_JSDD )				--僵尸带毒
	RemoveState( role , STATE_HYMH )				--狐妖魔法-魅惑
	RemoveState( role , STATE_HLKJ )				--黑龙-恐惧
	RemoveState( role , STATE_HLLM )				--黑龙-龙鸣
	RemoveState( role , STATE_CRXSF )				--长绒蟹-束缚
	RemoveState( role , STATE_BlackHX )				--黑龙虎啸
	RemoveState( role , STATE_HLKJ )				--黑龙雷击
end 
------------------------------------------REMOVE战斗状态
function Rem_State_StarUnnormal ( role ) 
	RemoveState( role , STATE_KUANGZ )					--狂战术     
	RemoveState( role , STATE_QUANS )					--全身装甲  
	RemoveState( role , STATE_QINGZ )					--轻装药水  
end 
function Rem_State_NOSEA ( role ) ------------------下海时移除状态
	RemoveState( role , STATE_KB )					
	RemoveState( role , STATE_XLZH )					
	RemoveState( role , STATE_PKJSYS )				
	RemoveState( role , STATE_PKSFYS)				
	RemoveState( role , STATE_TSHD )				
	RemoveState( role , STATE_FZLZ )					
	RemoveState( role , STATE_PKZDYS )					
	RemoveState( role , STATE_PKKBYS )					
	RemoveState( role , STATE_YSLLQH )				
	RemoveState( role , STATE_YSMJQH )				
	RemoveState( role , STATE_YSLQQH )					
	RemoveState( role , STATE_YSTZQH )					
	RemoveState( role , STATE_YSJSQH )					
	RemoveState( role , STATE_DENGLONG )					
	RemoveState( role , STATE_YSMspd )				
	RemoveState( role , STATE_PKSBYS )				
	RemoveState( role , STATE_KUANGZ )				
	RemoveState( role , STATE_QUANS )				
	RemoveState( role , STATE_QINGZ )				
	RemoveState( role , STATE_CJBBT )				
	RemoveState( role , STATE_JRQKL )				
	RemoveState( role , STATE_KALA )	
	RemoveState( role , STATE_CZZX )
	RemoveState( role , STATE_JLFT1 )				
	RemoveState( role , STATE_JLFT2 )				
	RemoveState( role , STATE_JLFT3 )				
	RemoveState( role , STATE_JLFT4 )				
	RemoveState( role , STATE_JLFT5 )				
	RemoveState( role , STATE_JLFT6 )				
	RemoveState( role , STATE_JLFT7 )				
	RemoveState( role , STATE_JLFT8 )				
end 
function SetCharaAttr(a,b,c) --[[设置角色属性转化接口:属性值，角色类型，属性编号]]--
	local x,y=b,c 
	local z=math.floor(a) 
--	LuaPrint("Set character"..b) 
	--LuaPrint("Attribute"..c) 
	--LuaPrint(a.."\n") 
	--LG("setchaattr","Setting"..c, "number attribute", "= ", a ,"\n") 
	SetChaAttr(x,y,z) 
end 

function Attr_ap(a) --[[取角色剩余可分配点数]]--
	--LuaPrint("Obtain character attribute remain_ap") 
	local attr_ap=GetChaAttr(a,ATTR_AP) 
	return attr_ap 
end 

function Attr_tp(a) 
	--LuaPrint("Obtain character attribute remain_tp") 
	local attr_tp=GetChaAttr(a,ATTR_TP) 
	return attr_tp 
end 

function CheckCha_Job(a) --[[取角色职业]]-- 
	--LuaPrint("Obtain character attribute job") 
	local role_attr_job=GetChaAttr(a,ATTR_JOB) 
	return role_attr_job 
end 

function Exp(a) 
	--LuaPrint("obtain character current exp or monster exp") 
	local exp=GetChaAttr(a,ATTR_CEXP) --[[取exp]]--
	return exp 
end 

function Lv(a)
	--LuaPrint("Obtain character attribute lv") 
	local b = TurnToCha ( a ) 
	local lv=GetChaAttr( b , ATTR_LV ) --[[取lv]]--
	return lv 
end 

function Hp(a)
	--LuaPrint("Obtain character attribute hp") 
	local hp=GetChaAttr(a,ATTR_HP) --[[取hp]]--
	return hp 
end 

function Mxhp(a)
	--LuaPrint("Obtain character attribute mxhp") 
	local mxhp=GetChaAttr(a,ATTR_MXHP) --[[取mxhp]]--
	return mxhp 
end 

function MxhpSa(a)
	--LuaPrint("Obtain character attribute mxhp_sa") 
	local mxhpsa= GetChaAttr(a, ATTR_STATEC_MXHP)/ATTR_RADIX   --[[取mxhp状态百分比]]--
	return mxhpsa 
end 

function MxhpSb(a)
	--LuaPrint("Obtain character attributemxhp_sb") 
	local mxhpsb=GetChaAttr(a, ATTR_STATEV_MXHP) --[[取mxhp状态常数]]--
	return mxhpsb 
end 

function MxhpIa(a)
	--LuaPrint("Obtain character attribute mxhp_ia") 
	local mxhpia=GetChaAttr(a, ATTR_ITEMC_MXHP)/ATTR_RADIX --[[取mxhp道具百分比]]--
	return mxhpia 
end 

function MxhpIb(a)
	--LuaPrint("Obtain character attribute mshp_ib") 
	local mxhpib=GetChaAttr(a, ATTR_ITEMV_MXHP) --[[取mxhp道具常数]]--
	return mxhpib 
end 

function Sp(a)
	--LuaPrint("Obtain player attribute sp") 
	local sp=GetChaAttr(a,ATTR_SP) --[[取sp]]--
	return sp 
end 

function Mxsp(a)
	--LuaPrint("Obtain character attribute mxsp") 
	local mxsp=GetChaAttr(a,ATTR_MXSP) --[[取mxsp]]--
	return mxsp 
end 

function MxspSa(a)
	--LuaPrint("Obtain player attribute mxsp_sa") 
	local mxspsa=GetChaAttr(a, ATTR_STATEC_MXSP)/ATTR_RADIX  --[[取mxsp状态百分比]]--
	return mxspsa 
end 

function MxspSb(a)
	--LuaPrint("Obtain character attribute mxsp_sb") 
	local mxspsb=GetChaAttr(a, ATTR_STATEV_MXSP) --[[取mxsp状态常数]]--
	return mxspsb 
end 

function MxspIa(a)
	--LuaPrint("Obtain character attribute mxsp_ia") 
	local mxspia=GetChaAttr(a, ATTR_ITEMC_MXSP)/ATTR_RADIX --[[取mxsp道具百分比]]--
	return mxspia 
end 

function MxspIb(a)
	--LuaPrint("Obtain character attribute mxsp_ib") 
	local mxspib=GetChaAttr(a, ATTR_ITEMV_MXSP) --[[取mxsp道具常数]]--
	return mxspib 
end 

function Mnatk(a)
	--LuaPrint("Obtain character attribute mnatk") 
	local mnatk=GetChaAttr(a,ATTR_MNATK) --[[取mnatk]]--
	return mnatk 
end 

function MnatkSa(a)
	--LuaPrint("Obtain character attribute mnatk_sa") 
	local mnatksa= GetChaAttr(a, ATTR_STATEC_MNATK)/ATTR_RADIX --[[取mnatk状态百分比]]--
	return mnatksa 
end 

function MnatkSb(a)
	--LuaPrint("Obtain character attributemnatk_sb") 
	local mnatksb=GetChaAttr(a, ATTR_STATEV_MNATK) --[[取mnatk状态常数]]--
	return mnatksb 
end 

function MnatkIa(a)
	--LuaPrint("Obtain character attribute mnatk_ia") 
	local mnatkia=GetChaAttr(a, ATTR_ITEMC_MNATK)/ATTR_RADIX --[[取mnatk道具百分比]]--
	return mnatkia 
end 

function MnatkIb(a)
	--LuaPrint("Obtain player attribute mnatk_ib") 
	local mnatkib=GetChaAttr(a, ATTR_ITEMV_MNATK) --[[取mnatk道具常数]]--
	return mnatkib 
end 

function Mxatk(a)
	--LuaPrint("Obtain player attribute mxatk") 
	local mxatk=GetChaAttr(a,ATTR_MXATK) --[[取mxatk]]--
	return mxatk 
end 

function MxatkSa(a)
	--LuaPrint("Obtain character attribute mxatk_sa") 
	local mxatksa= GetChaAttr(a, ATTR_STATEC_MXATK)/ATTR_RADIX  --[[取mxatk状态百分比]]--
	return mxatksa 
end 

function MxatkSb(a)
	--LuaPrint("Obtain character attribute mxatk_sb") 
	local mxatksb=GetChaAttr(a, ATTR_STATEV_MXATK) --[[取mxatk状态常数]]--
	return mxatksb 
end 

function MxatkIa(a)
	--LuaPrint("Obtain character attribute mxatk_ia") 
	local mxatkia=GetChaAttr(a, ATTR_ITEMC_MXATK)/ATTR_RADIX --[[取mxatk道具百分比]]--
	return mxatkia 
end 

function MxatkIb(a)
	--LuaPrint("Obtain character attributemxatk_ib") 
	local mxatkib=GetChaAttr(a, ATTR_ITEMV_MXATK) --[[取mxatk道具常数]]--
	return mxatkib 
end 

function Def(a)
	--LuaPrint("Obtain character attribute def") 
	local def=GetChaAttr(a,ATTR_DEF) --[[取def]]--
	return def 
end 

function DefSa(a)
	--LuaPrint("Obtain player attribute def_sa") 
	local defsa= GetChaAttr(a, ATTR_STATEC_DEF)/ATTR_RADIX  --[[取def状态百分比]]--
	return defsa 
end 

function DefSb(a)
	--LuaPrint("Obtain character attribute def_sb") 
	local defsb=GetChaAttr(a, ATTR_STATEV_DEF) --[[取def状态常数]]--
	--LG("setchaattr","obtain character",ATTR_STATEV_DEF,"number attribute= ", defsb,"\n" ) 
	return defsb 
end 

function DefIa(a)
	--LuaPrint("Obtain character attribute def_ia") 
	local defia=GetChaAttr(a, ATTR_ITEMC_DEF)/ATTR_RADIX --[[取def道具百分比]]--
	return defia 
end 

function DefIb(a)
	--LuaPrint("Obtain character attribute def_ib") 
	local defib=GetChaAttr(a, ATTR_ITEMV_DEF) --[[取def道具常数]]--
	return defib 
end 

function Resist(a)
	--LuaPrint("Obtain character attribute def") 
	local def=GetChaAttr(a,ATTR_PDEF) --[[取def]]--
	return def 
end 

function ResistSa(a)
	--LuaPrint("Obtain player attribute def_sa") 
	local defsa= GetChaAttr(a, ATTR_STATEC_PDEF)/ATTR_RADIX  --[[取def状态百分比]]--
	return defsa 
end 

function ResistSb(a)
	--LuaPrint("Obtain character attribute def_sb") 
	local defsb=GetChaAttr(a, ATTR_STATEV_PDEF) --[[取def状态常数]]--
	return defsb 
end 

function ResistIa(a)
	--LuaPrint("Obtain character attribute def_ia") 
	local defia=GetChaAttr(a, ATTR_ITEMC_PDEF)/ATTR_RADIX --[[取def道具百分比]]--
	return defia 
end 

function ResistIb(a)
	--LuaPrint("Obtain character attribute def_ib") 
	local defib=GetChaAttr(a, ATTR_ITEMV_PDEF) --[[取def道具常数]]--
	return defib 
end 

function Hit(a)
	--LuaPrint("Obtain character attribute hit") 
	local hit=GetChaAttr(a,ATTR_HIT) --[[取hit]]--
	return hit 
end 

function HitSa(a)
	--LuaPrint("Obtain character attribute hit_sa") 
	local hitsa= GetChaAttr(a, ATTR_STATEC_HIT)/ATTR_RADIX   --[[取hit状态百分比]]--
	return hitsa 
end 

function HitSb(a)
	--LuaPrint("Obtain character attribute hit_sb") 
	local hitsb=GetChaAttr(a, ATTR_STATEV_HIT) --[[取hit状态常数]]--
	return hitsb 
end 

function HitIa(a)
	--LuaPrint("Obtain character attribute hit_ia") 
	local hitia=GetChaAttr(a, ATTR_ITEMC_HIT)/ATTR_RADIX --[[取hit道具百分比]]--
	return hitia 
end 

function HitIb(a)
	--LuaPrint("Obtain character attribute hit_ib") 
	local hitib=GetChaAttr(a, ATTR_ITEMV_HIT) --[[取hit道具常数]]--
	return hitib 
end 

function Flee(a)
	--LuaPrint("Obtain character attribute flee") 
	local flee=GetChaAttr(a,ATTR_FLEE) --[[取flee]]--
	return flee 
end 

function FleeSa(a)
	--LuaPrint("Obtain character attribute flee_sa") 
	local fleesa=  GetChaAttr(a, ATTR_STATEC_FLEE)/ATTR_RADIX  --[[取flee状态百分比]]--
	return fleesa 
end 

function FleeSb(a)
	--LuaPrint("Obtain character attribute flee_sb") 
	local fleesb=GetChaAttr(a, ATTR_STATEV_FLEE) --[[取flee状态常数]]--
	return fleesb 
end 

function FleeIa(a)
	--LuaPrint("Obtain character attribute flee_ia") 
	local fleeia=GetChaAttr(a, ATTR_ITEMC_FLEE)/ATTR_RADIX --[[取flee道具百分比]]--
	return fleeia 
end 

function FleeIb(a)
	--LuaPrint("Obtain character attribute flee_ib") 
	local fleeib=GetChaAttr(a, ATTR_ITEMV_FLEE) --[[取flee道具常数]]--
	return fleeib 
end 

function Mf(a)
	--LuaPrint("Obtain character attribute mf") 
	local mf=GetChaAttr(a,ATTR_MF)/MFRADIX --[[取mf]]--
	return mf 
end 

function MfSa(a)
	--LuaPrint("Obtain character attributemf_sa") 
	local mfsa= GetChaAttr(a, ATTR_STATEC_MF)/ATTR_RADIX  --[[取mf状态百分比]]--
	return mfsa 
end 

function MfSb(a)
	--LuaPrint("Obtain character attribute mf_sb") 
	local mfsb=GetChaAttr(a, ATTR_STATEV_MF) --[[取mf状态常数]]--
	return mfsb 
end 

function MfIa(a)
	--LuaPrint("Obtain player attribute mf_ia") 
	local mfia=GetChaAttr(a, ATTR_ITEMC_MF)/ATTR_RADIX --[[取mf道具百分比]]--
	return mfia 
end 

function MfIb(a)
	--LuaPrint("Obtain character attribute mf_ib") 
	local mfib=GetChaAttr(a, ATTR_ITEMV_MF) --[[取mf道具常数]]--
	return mfib 
end 

function Crt(a)
	--LuaPrint("Obtain character attribute crt") 
	local crt=GetChaAttr(a,ATTR_CRT)/CRTRADIX --[[取crt]]--
	return crt 
end 

function CrtSa(a)
	--LuaPrint("Obtain player attribute crt_sa") 
	local crtsa= GetChaAttr(a, ATTR_STATEC_CRT)/ATTR_RADIX  --[[取crt状态百分比]]--
	return crtsa 
end 

function CrtSb(a)
	--LuaPrint("Obtain character attribute crt_sb") 
	local crtsb=GetChaAttr(a, ATTR_STATEV_CRT) --[[取crt状态常数]]--
	return crtsb 
end 

function CrtIa(a)
	--LuaPrint("Obtain character attribute crt_ia") 
	local crtia=GetChaAttr(a, ATTR_ITEMC_CRT)/ATTR_RADIX --[[取crt道具百分比]]--
	return crtia 
end 

function CrtIb(a)
	--LuaPrint("Obtain character attribute crt_ib") 
	local crtib=GetChaAttr(a, ATTR_ITEMV_CRT) --[[取crt道具常数]]--
	return crtib 
end 

function Hrec(a)
	--LuaPrint("Obtain character attribute hrec") 
	local hrec=GetChaAttr(a,ATTR_HREC) --[[取hrec]]--
	return hrec 
end 

function HrecSa(a)
	--LuaPrint("Obtain character attribute hrec_sa") 
	local hrecsa=  GetChaAttr(a, ATTR_STATEC_HREC)/ATTR_RADIX  --[[取hrec状态百分比]]--
	return hrecsa 
end 

function HrecSb(a)
	--LuaPrint("Obtain character attribute hrec_sb") 
	local hrecsb=GetChaAttr(a, ATTR_STATEV_HREC) --[[取hrec状态常数]]--
	return hrecsb 
end 

function HrecIa(a)
	--LuaPrint("Obtain character attribute hrec_ia") 
	local hrecia=GetChaAttr(a, ATTR_ITEMC_HREC)/ATTR_RADIX --[[取hrec道具百分比]]--
	return hrecia 
end 

function HrecIb(a)
	--LuaPrint("Obtain character attribute hrec_ib") 
	local hrecib=GetChaAttr(a, ATTR_ITEMV_HREC) --[[取hrec道具常数]]--
	return hrecib 
end 

function Srec(a)
	--LuaPrint("Obtain character attribute srec") 
	local srec=GetChaAttr(a,ATTR_SREC) --[[取srec]]--
	return srec 
end 

function SrecSa(a)
	--LuaPrint("Obtain character attribute srec_sa") 
	local srecsa= GetChaAttr(a, ATTR_STATEC_SREC)/ATTR_RADIX  --[[取srec状态百分比]]--
	return srecsa 
end 

function SrecSb(a)
	--LuaPrint("Obtain character attribute srec_sb") 
	local srecsb=GetChaAttr(a, ATTR_STATEV_SREC) --[[取srec状态常数]]--
	return srecsb 
end 

function SrecIa(a)
	--LuaPrint("Obtain character attribute srec_ia") 
	local srecia=GetChaAttr(a, ATTR_ITEMC_SREC)/ATTR_RADIX --[[取srec道具百分比]]--
	return srecia 
end 

function SrecIb(a)
	--LuaPrint("Obtain character attribute srec_ib") 
	local srecib=GetChaAttr(a, ATTR_ITEMV_SREC) --[[取srec道具常数]]--
	return srecib 
end 

function Aspd(a)
	--LuaPrint("Obtain character attribute aspd") 
	local aspd=math.floor ( 100000 / GetChaAttr(a,ATTR_ASPD) )  --[[取aspd]]--
	return aspd 
end 

function AspdSa(a)
	--LuaPrint("Obtain character attribute aspd_sa") 
	local aspdsa=  GetChaAttr(a, ATTR_STATEC_ASPD)/ATTR_RADIX    --[[取aspd状态百分比]]--
	return aspdsa 
end 

function AspdSb(a)
	--LuaPrint("Obtain character attributeaspd_sb") 
	local aspdsb=GetChaAttr(a, ATTR_STATEV_ASPD) --[[取aspd状态常数]]--
	return aspdsb 
end 

function AspdIa(a)
	--LuaPrint("Obtain character attribute aspd_ia") 
	local aspdia=GetChaAttr(a, ATTR_ITEMC_ASPD)/ATTR_RADIX --[[取aspd道具百分比]]--
	return aspdia 
end 

function AspdIb(a)
	--LuaPrint("Obtain player attribute aspd_ib") 
	local aspdib=GetChaAttr(a, ATTR_ITEMV_ASPD) --[[取aspd道具常数]]--
	return aspdib 
end 

function Adis(a)
	--LuaPrint("Obtain character attribute adis") 
	local adis=GetChaAttr(a,ATTR_ADIS) --[[取adis]]--
	return adis 
end 

function AdisSa(a)
	--LuaPrint("Obtain character attribute adis_sa") 
	local adissa=  GetChaAttr(a, ATTR_STATEC_ADIS)/ATTR_RADIX   --[[取adis状态百分比]]--
	return adissa 
end 

function AdisSb(a)
	--LuaPrint("Obtain player attribute adis_sb") 
	local adissb=GetChaAttr(a, ATTR_STATEV_ADIS) --[[取adis状态常数]]--
	return adissb 
end 

function AdisIa(a)
	--LuaPrint("Obtain character attribute aids_ia") 
	local adisia=GetChaAttr(a, ATTR_ITEMC_ADIS)/ATTR_RADIX --[[取adis道具百分比]]--
	return adisia 
end 

function AdisIb(a)
	--LuaPrint("Obtain character attribute adis_ib") 
	local adisib=GetChaAttr(a, ATTR_ITEMV_ADIS) --[[取adis道具常数]]--
	return adisib 
end 

function Mspd(a)
	--LuaPrint("Obtain character attribute mspd") 
	local mspd=GetChaAttr(a,ATTR_MSPD) --[[取mspd]]--
	return mspd 
end 

function MspdSa(a)
	--LuaPrint("Obtain character attribute mspd_sa") 
	local mspdsa=  GetChaAttr(a, ATTR_STATEC_MSPD)/ATTR_RADIX   --[[取mspd状态百分比]]--
	return mspdsa 
end 
function MspdSb(a)
	--LuaPrint("Obtain character attribute mspd_sb") 
	local mspdsb=GetChaAttr(a, ATTR_STATEV_MSPD) --[[取mspd状态常数]]--
	return mspdsb 
end 
function MspdIa(a)
	--LuaPrint("Obtain character attributemspd_ia") 
	local mspdia=GetChaAttr(a, ATTR_ITEMC_MSPD)/ATTR_RADIX --[[取mspd道具百分比]]--
	return mspdia 
end 

function MspdIb(a)
	--LuaPrint("Obtain character attribute Mspd_ib") 
	local mspdib=GetChaAttr(a, ATTR_ITEMV_MSPD) --[[取mspd道具常数]]--
	return mspdib 
end 

function Col(a)
	--LuaPrint("Obtain character attribute col") 
	local col=GetChaAttr(a,ATTR_COL) --[[取col]]--
	return col 
end 

function ColSa(a) 
	--LuaPrint("Obtain character attribute col_sa") 
	local colsa= GetChaAttr(a, ATTR_STATEC_COL)/ATTR_RADIX  --[[取col状态百分比]]--
	return colsa 
end 

function ColSb(a) 
	--LuaPrint("Obtain character attribute col_sb") 
	local colsb=GetChaAttr(a, ATTR_STATEV_COL) --[[取col状态常数]]--
	return colsb 
end 

function ColIa(a) 
	--LuaPrint("Obtain character attribute col_ia") 
	local colia=GetChaAttr(a, ATTR_ITEMC_COL)/ATTR_RADIX --[[取col道具百分比]]--
	return colia 
end 

function ColIb(a) 
	--LuaPrint("Obtain character attribute col_ib") 
	local colib=GetChaAttr(a, ATTR_ITEMV_COL) --[[取col道具常数]]--
	return colib 
end 

function Str(a) 
	--LuaPrint("Obtain character attribute str") 
	local str=GetChaAttr(a,ATTR_STR) --[[取str]]--
	return str 
end 

function StrSa(a) 
	--LuaPrint("Obtain character attribute str_sa") 
	local strsa= GetChaAttr(a, ATTR_STATEC_STR)/ATTR_RADIX   --[[取str状态百分比]]--
	return strsa 
end 

function StrSb(a) 
	--LuaPrint("Obtain character attribute str_sb") 
	local strsb=GetChaAttr(a, ATTR_STATEV_STR) --[[取str状态常数]]--
	return strsb 
end 

function StrIa(a)
	--LuaPrint("Obtain character attribute str_ia") 
	local stria=GetChaAttr(a,ATTR_ITEMC_STR)/ATTR_RADIX --[[取str道具百分比]]--
	return stria 
end 

function StrIb(a)
	--LuaPrint("Obtain character attribute str_ib") 
	local strib=GetChaAttr(a,ATTR_ITEMV_STR) --[[取str道具常数]]--
	return strib 
end 

function Dex(a)
	--LuaPrint("Obtain character attribute dex") 
	local dex=GetChaAttr(a,ATTR_DEX) --[[取dex]]--
	return dex 
end 

function DexSa(a)
	--LuaPrint("Obtain character attribute dex_sa") 
	local dexsa= GetChaAttr(a, ATTR_STATEC_DEX)/ATTR_RADIX  --[[取dex状态百分比]]--
	return dexsa 
end 

function DexSb(a)
	--LuaPrint("Obtain player attribute dex_sb") 
	local dexsb=GetChaAttr(a, ATTR_STATEV_DEX) --[[取dex状态常数]]--
	return dexsb 
end 

function DexIa(a)
	--LuaPrint("Obtain character attribute dex_ia") 
	local dexia=GetChaAttr(a,ATTR_ITEMC_DEX)/ATTR_RADIX --[[取dex道具百分比]]--
	return dexia 
end 

function DexIb(a)
	--LuaPrint("Obtain character attribute dex_ib") 
	local dexib=GetChaAttr(a,ATTR_ITEMV_DEX) --[[取dex道具常数]]--
	return dexib 
end 

function Agi(a) 
	--LuaPrint("Obtain character attribute agi") 
	local agi=GetChaAttr(a,ATTR_AGI) --[[取agi]]--
	return agi 
end 

function AgiSa(a)
	--LuaPrint("Obtain character attribute agi_sa") 
	local agisa= GetChaAttr(a, ATTR_STATEC_AGI)/ATTR_RADIX  --[[取agi状态百分比]]--
	return agisa 
end 

function AgiSb(a)
	--LuaPrint("Obtain character attribute agi_sb") 
	local agisb=GetChaAttr(a, ATTR_STATEV_AGI) --[[取agi状态常数]]--
	return agisb 
end 

function AgiIa(a)
	--LuaPrint("Obtain character attribute agi_ia") 
	local agiia=GetChaAttr(a,ATTR_ITEMC_AGI)/ATTR_RADIX --[[取agi道具百分比]]--
	return agiia 
end 

function AgiIb(a)
	--LuaPrint("Obtain character attribute agi_ib") 
	local agiib=GetChaAttr(a,ATTR_ITEMV_AGI) --[[取agi道具常数]]--
	return agiib 
end 

function Con(a)
	--LuaPrint("Obtain character attribute con") 
	local con=GetChaAttr(a,ATTR_CON) --[[取con]]--
	return con 
end 

function ConSa(a)
	--LuaPrint("Obtain character attribute con_sa") 
	local consa= GetChaAttr(a, ATTR_STATEC_CON)/ATTR_RADIX  --[[取con状态百分比]]--
	return consa 
end 

function ConSb(a)
	--LuaPrint("Obtain character attribute con_sb") 
	local consb=GetChaAttr(a, ATTR_STATEV_CON) --[[取con状态常数]]--
	return consb 
end 

function ConIa(a)
	--LuaPrint("Obtain character attribute con_ia") 
	local conia=GetChaAttr(a, ATTR_ITEMC_CON)/ATTR_RADIX --[[取con道具百分比]]--
	return conia 
end 

function ConIb(a)
	--LuaPrint("Obtain character attribute con_ib") 
	local conib=GetChaAttr(a, ATTR_ITEMV_CON) --[[取con道具常数]]--
	return conib 
end 

function Sta(a)
	--LuaPrint("Obtain character attribute sta") 
	local sta=GetChaAttr(a,ATTR_STA) --[[取sta]]--
	return sta 
end 

function StaSa(a)
	--LuaPrint("Obtain character attribute sta_sa") 
	local stasa= GetChaAttr(a, ATTR_STATEC_STA)/ATTR_RADIX  --[[取sta状态百分比]]--
	return stasa 
end 

function StaSb(a)
	--LuaPrint("Obtain character attribute sta_sb") 
	local stasb=GetChaAttr(a, ATTR_STATEV_STA) --[[取sta状态常数]]--
	return stasb 
end 

function StaIa(a)
	--LuaPrint("Obtain character attribute sta_ia") 
	local staia=GetChaAttr(a, ATTR_ITEMC_STA)/ATTR_RADIX --[[取sta道具百分比]]--
	return staia 
end 

function StaIb(a)
	--LuaPrint("Obtain character attribute sta_ib") 
	local staib=GetChaAttr(a, ATTR_ITEMV_STA) --[[取sta道具常数]]--
	return staib 
end 

function Luk(a)
	--LuaPrint("Obtain character attribute luk") 
	local luk=GetChaAttr(a,ATTR_LUK) --[[取luk]]--
	return luk 
end 

function LukSa(a)
	--LuaPrint("Obtain character attribute luk_sa") 
	local luksa= GetChaAttr(a, ATTR_STATEC_LUK)/ATTR_RADIX   --[[取luk状态百分比]]--
	return luksa 
end 

function LukSb(a)
	--LuaPrint("Obtain character attribute luk_sb") 
	local luksb=GetChaAttr(a, ATTR_STATEV_LUK) --[[取luk状态常数]]--
	return luksb 
end 

function LukIa(a)
	--LuaPrint("Obtain character attribute luk_ia") 
	local lukia=GetChaAttr(a, ATTR_ITEMC_LUK)/ATTR_RADIX --[[取luk道具百分比]]--
	return lukia 
end 

function LukIb(a)
	--LuaPrint("Obtain character attribute luk_ib") 
	local lukib = GetChaAttr(a, ATTR_ITEMV_LUK) --[[取luk道具常数]]--
	return lukib 
end 




function BSMxhp(a) --[[取基本mxhp]]--
	--LuaPrint("Obtain character attribute bsmxhp") 
	local bsmxhp=GetChaAttr(a,ATTR_BMXHP) 
	return bsmxhp 
end 

function Mxhp_final(a) 
	local mxhp_final=(BSMxhp(a) * MxhpIa(a) + MxhpIb(a) ) * math.max(0, MxhpSa(a))  + MxhpSb(a) --[[取当时实际mxhp]]--
	--LG("chaattr_set", " BSMxhp = " , BSMxhp(a) , "MxhpIa = " , MxhpIa(a) , " MxhpIb = " , MxhpIb(a) , "MxhpSa = " , MxhpSa(a) , "MxhpSb = ", MxhpSb(a) , "\n" ) 
	--LG("chaattr_set", "mxhp_final = ", mxhp_final , "\n" ) 
	return mxhp_final 
end 


function Sp_final(a)
	local sp_final=(BSSp(a) * SpIa(a) + SpIb(a) ) * math.max(0 , SpSa(a)) + SpSb(a) --[[取当时实际sp]]--
	--LG("chaattr_set", " BSMxhp = " , BSmxhp(a) , "MxhpIa = " , MxhpIa(a) , " MxhpIb = " , MxhpIb(a) , "MxhpSa = " , MxhpSa(a) , "MxhpSb = ", MxhpSb(a) , "\n" ) 
	--LG("chaattr_set", "mxhp_final = ", mxhp_final , "\n" ) 
	return sp_final 
end 

function BSMxsp(a) --[[取基本mxsp]]--
	--LuaPrint("Obtain character attribute bsmxsp") 
	local bsmxsp=GetChaAttr(a,ATTR_BMXSP) 
	return bsmxsp 
end 

function Mxsp_final(a)
	local mxsp_final=(BSMxsp(a) * MxspIa(a) + MxspIb(a) ) * math.max ( 0 , MxspSa(a) ) + MxspSb(a) --[[取当时实际mxsp]]--
	--LG("chaattr_set", " BSMxsp = " , BSMxsp(a) , "MxspIa = " , MxspIa(a) , " MxspIb = " , MxspIb(a) , "MxspSa = " , MxspSa(a) , "MxspSb = ", MxspSb(a) , "\n" ) 
	--LG("chaattr_set", "mxsp_final = ", mxsp_final , "\n" ) 
	return mxsp_final 
end 

function BSMnatk(a) --[[取基本mnatk]]--
	--LuaPrint("Obtain character attribute bsmnatk") 
	local bsmnatk=GetChaAttr(a,ATTR_BMNATK) 
	return bsmnatk 
end

function Mnatk_final(a)
	local mnatk_final=math.max ( (BSMnatk(a) * MnatkIa(a) + MnatkIb(a) ) * math.max ( 0 , MnatkSa(a)) + MnatkSb(a) , 1 ) --[[取当时实际mnatk]]--
	--LG("chaattr_set", " BSMnatk = " , BSMnatk(a) , "MnatkIa = " , MnatkIa(a) , " MnatkIb = " , MnatkIb(a) , "MnatkSa = " , MnatkSa(a) , "MnatkSb = ", MnatkSb(a) , "\n" ) 
	--LG("chaattr_set", "mnatk_final = ", mnatk_final , "\n" ) 
	return mnatk_final 
end 

function BSMxatk(a) --[[取基本mxatk]]--
	--LuaPrint("Obtain character attribute bsmxatk") 
	local bsmxatk=GetChaAttr(a,ATTR_BMXATK) 
	return bsmxatk 
end

function Mxatk_final(a)
	local mxatk_final=math.max ( (BSMxatk(a) * MxatkIa(a) + MxatkIb(a) ) * math.max ( 0 , MxatkSa(a) ) + MxatkSb(a) , 1 ) --[[取当时实际mxatk]]--
	return mxatk_final 
end 

function BSDef(a) --[[取基本def]]--
	--LuaPrint("Obtain character attributebsdef") 
	local bsdef=GetChaAttr(a,ATTR_BDEF) 
	return bsdef 
end


function Def_final(a)
	local def_final=math.max ( (BSDef(a) * DefIa(a) + DefIb(a) ) * math.max ( 0 , DefSa(a) ) + DefSb(a) , 0 ) --[[取当时实际def]]--
	--LG("chaattr_set", " BSDef = " , BSDef(a) , "DefIa = " , DefIa(a) , " DefIb = " , DefIb(a) , "DefSa = " , DefSa(a) , "DefSb = ", DefSb(a) , "\n" ) 
	--LG("chaattr_set", "def_final = ", def_final , "\n" ) 
	return def_final 
end 

function BSResist(a) --[[取基本抗性]]--
   --LuaPrint("Obtain player attribute bsresist") 
   local bsresist = GetChaAttr(a, ATTR_BPDEF) 
   return bsresist 
end 

function Resist_final(a) 
   local resist_final=(BSResist(a) * ResistIa(a) + ResistIb(a) ) * math.max ( 0 , ResistSa(a) ) + ResistSb(a) --[[取实际resist]]--
   return resist_final 
end 


function BSHit(a) --[[取基本hit]]--
	--LuaPrint("Obtain character attribute bshit") 
	local bshit=GetChaAttr(a,ATTR_BHIT) 
	return bshit 
end

function Hit_final(a)
	local hit_final = (BSHit(a) * HitIa(a) + HitIb(a) ) * math.max ( 0 , HitSa(a) ) + HitSb(a) --[[取当时实际hit]]--
	return hit_final 
end 

function BSFlee(a) --[[取基本flee]]--
	--LuaPrint("Obtain character attribute bsflee") 
	local bsflee=GetChaAttr(a,ATTR_BFLEE) 
	return bsflee 
end

function Flee_final(a) 
	local flee_final=(BSFlee(a) * FleeIa(a) + FleeIb(a) ) * math.max ( 0 , FleeSa(a) ) + FleeSb(a)  --[[取当时实际flee]]--
	return flee_final 
end 

function BSMf(a) --[[取基本mf]]--
	--LuaPrint("Obtain character attribute bsmf") 
	local bsmf=GetChaAttr(a,ATTR_BMF) 
	return bsmf 
end

function Mf_final(a)
	local mf_final=(BSMf(a) * MfIa(a) + MfIb(a) )* math.max ( 0 , MfSa(a) ) + MfSb(a) --[[取当时实际mf]]--
	return mf_final 
end 

function BSCrt(a) --[[取基本crt]]--
	--LuaPrint("Obtain character attributebscrt") 
	local bscrt=GetChaAttr(a,ATTR_BCRT) 
	return bscrt 
end

function Crt_final(a)
	local crt_final=(BSCrt(a) * CrtIa(a) + CrtIb(a) ) * math.max ( 0 , CrtSa(a) )  + CrtSb(a) --[[取当时实际crt]]--
	return crt_final 
end 

function BSHrec(a) --[[取基本hrec]]--
	--LuaPrint("Obtain character attribute bshrec") 
	local bshrec=GetChaAttr(a,ATTR_BHREC) 
	return bshrec 
end

function Hrec_final(a)
	local hrec_final=( BSHrec(a) * HrecIa(a) + HrecIb(a) ) * math.max ( 0 , HrecSa(a) ) + HrecSb(a) --[[取当时实际hrec]]--
	return hrec_final 
end 

function BSSrec(a) --[[取基本srec]]--
	--LuaPrint("Obtain character attribute bssrec") 
	local bssrec=GetChaAttr(a,ATTR_BSREC) 
	return bssrec 
end

function Srec_final(a)
	local srec_final=(BSSrec(a) * SrecIa(a) + SrecIb(a) ) * math.max ( 0 , SrecSa(a) ) + SrecSb(a) --[[取当时实际srec]]--
	return srec_final 
end 

function BSAspd(a) --[[取基本aspd]]--
	--LuaPrint("Obtain character attribute bsaspd") 
	local bsaspd=math.floor ( 100000 / GetChaAttr(a,ATTR_BASPD) ) 
	return bsaspd 
end

function Aspd_final(a)
	local aspd_final=( BSAspd(a)  * AspdIa(a) + AspdIb(a) ) * math.max ( 0 , AspdSa(a) ) + AspdSb(a) --[[取当时实际aspd]]--
	--LG("aspd", "baspd = " , BSAspd(a),"aspdia= " , AspdIa(a) , " AspdIb = ", AspdIb(a), "AspdSa = " , AspdSa(a) , "AspdSb = " , AspdSb(a) ) 
	return aspd_final 
end 

function BSAdis(a) --[[取基本adis]]--
	--LuaPrint("Obtain character attribute bsadis") 
	local bsadis=GetChaAttr(a,ATTR_BADIS) 
	return bsadis 
end

function Adis_final(a)
	local adis_final=(BSAdis(a) * AdisIa(a) + AdisIb(a) ) * math.max ( 0 , AdisSa(a) ) + AdisSb(a) --[[取当时实际adis]]--
	return adis_final 
end 

function BSMspd(a) --[[取基本mspd]]--
	--LuaPrint("Obtain character attribute bsmspd") 
	local bsmspd=GetChaAttr(a,ATTR_BMSPD) 
	return bsmspd 
end

function Mspd_final(a)
	local mspd_final=math.max ( BSMspd(a) * 0.3 , ( (BSMspd(a) * MspdIa(a) + MspdIb(a) ) * math.max ( 0.3 , MspdSa(a))  + MspdSb(a) )  )  --[[取当时实际mspd]]--
	return mspd_final 
end 

function BSCol(a) --[[取基本col]]--
	--LuaPrint("Obtain character attribute bscol") 
	local bscol=GetChaAttr(a,ATTR_BCOL) 
	return bscol 
end

function Col_final(a)
	local col_final=(BSCol(a) * ColIa(a) + ColIb(a) ) * math.max ( 0 , ColSa(a) ) + ColSb(a) --[[取当时实际col]]--
	return col_final 
end 

function BSStr(a) --[[取基本str]]--
	--LuaPrint("Obtain character attribute bsstr") 
	local bsstr=GetChaAttr(a,ATTR_BSTR) 
	return bsstr 
end

function Str_final(a)
	local str_final=(BSStr(a) * StrIa(a) + StrIb(a) ) * math.max ( 0 , StrSa(a) ) + StrSb(a) --[[取当时实际str]]--
	return str_final 
end 

function BSDex(a) --[[取基本dex]]--
	--LuaPrint("Obtain character attribute bsdex") 
	local bsdex=GetChaAttr(a,ATTR_BDEX) 
	return bsdex 
end

function Dex_final(a)
	local dex_final=(BSDex(a) * DexIa(a) + DexIb(a) ) * math.max ( 0 , DexSa(a) ) + DexSb(a) --[[取当时实际dex]]--
	return dex_final 
end 

function BSAgi(a) --[[取基本agi]]--
	--LuaPrint("Obtain character attribute bsagi") 
	local bsagi=GetChaAttr(a,ATTR_BAGI) 
	return bsagi 
end

function Agi_final(a)
	local agi_final=(BSAgi(a) * AgiIa(a) + AgiIb(a) ) * math.max ( 0 , AgiSa(a) ) + AgiSb(a) --[[取当时实际agi]]--
	return agi_final 
end 

function BSCon(a) --[[取基本con]]--
	--LuaPrint("Obtain character attribute bscon") 
	local bscon=GetChaAttr(a,ATTR_BCON) 
	return bscon 
end

function Con_final(a)
	local con_final=(BSCon(a) * ConIa(a) + ConIb(a)) * math.max ( 0 , ConSa(a) ) + ConSb(a) --[[取当时实际con]]--
	return con_final 
end 

function BSSta(a) --[[取基本sta]]--
	--LuaPrint("Obtain character attribute bssta") 
	local bssta=GetChaAttr(a,ATTR_BSTA) 
	return bssta 
end

function Sta_final(a)
	local sta_final=(BSSta(a) * StaIa(a) + StaIb(a) ) * math.max ( 0 , StaSa(a) ) + StaSb(a) --[[取当时实际sta]]--
	return sta_final 
end 

function BSLuk(a) --[[取基本luk]]--
	--LuaPrint("Obtain character attribute bsluk") 
	local bsluk=GetChaAttr(a,ATTR_BLUK) 
	return bsluk 
end

function Luk_final(a)
	local luk_final=(BSLuk(a)  *LukIa(a) + LukIb(a) ) * math.max ( 0 , LukSa(a) ) + LukSb(a) --[[取当时实际luk]]--
	return luk_final 
end 



--取船只基本属性函数-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Ship_BSMnatk ( ship_role )						--船只基本最小攻击
	local ship_bsmnatk=GetChaAttr( ship_role , ATTR_BMNATK ) 
	return ship_bsmnatk 
end 

function Ship_BSMxatk ( ship_role )						--船只基本最大攻击
	local ship_bsmxatk=GetChaAttr( ship_role , ATTR_BMXATK ) 
	return ship_bsmxatk 
end 
	
function Ship_BSAdis ( ship_role )							--船只基本攻击距离
	local ship_bsadis=GetChaAttr( ship_role , ATTR_BADIS ) 
	return ship_bsadis  
end 

function Ship_BSCspd ( ship_role )							--炮弹基本飞行速度
	local ship_bscspd=GetChaAttr( ship_role , ATTR_BOAT_BCSPD ) 
	return ship_bscspd  
end 

function Ship_BSAspd ( ship_role ) 						--炮弹基本攻击间隔
	local ship_bsaspd=GetChaAttr( ship_role , ATTR_BASPD ) 
	return ship_bsaspd  
end 

function Ship_BSCrange ( ship_role ) 						--炮弹基本爆炸范围
	local ship_bscrange=GetChaAttr( ship_role , ATTR_BOAT_BCRANGE ) 
	return ship_bscrange  
end 


function Ship_BSDef ( ship_role ) 							--船只基本防御
	local ship_bsdef=GetChaAttr( ship_role , ATTR_BDEF ) 
	return ship_bsdef   
end 


function Ship_BSResist ( ship_role ) 						--船只基本抵抗
	local ship_bsresist=GetChaAttr( ship_role , ATTR_BPDEF ) 
	return ship_bsresist   
end 

function Ship_BSMxhp ( ship_role ) 						--船只基本最大耐久
	local ship_bsmxhp=GetChaAttr( ship_role , ATTR_BMXHP ) 
	return ship_bsmxhp    
end 

function Ship_BSHrec ( ship_role ) 						--船只基本耐久回复速度
	local ship_bshrec=GetChaAttr( ship_role , ATTR_BHREC ) 
	return ship_bshrec 
end 

function Ship_BSSrec ( ship_role ) 							--船只基本补给消耗速度
	local ship_bssrec=GetChaAttr( ship_role , ATTR_BSREC ) 
	return ship_bssrec 
end 

function Ship_BSMspd ( ship_role ) 						--船只基本移动速度
	local ship_bsmspd=GetChaAttr( ship_role , ATTR_BMSPD ) 
	return ship_bsmspd 
end 

function Ship_BSMxsp ( ship_role ) 						--船只基本最大补给值
	local ship_bsmxsp=GetChaAttr( ship_role , ATTR_BMXSP ) 
	return ship_bsmxsp 
end 


--取人物船只属性的技能影响--------------------------------------------------------------------------------------------------------------------------------------------------------------------

function Ship_MnatkSa ( cha_role )						--船只基本最小攻击角色技能系数影响
	local ship_mnatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MNATK ) / ATTR_RADIX
	return ship_mnatksa 
end 

function Ship_MnatkSb ( cha_role )						--船只基本最小攻击角色技能常数影响
	local ship_mnatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MNATK ) 
	return ship_mnatksb 
end 

function Ship_MxatkSa ( cha_role )						--船只基本最大攻击角色技能系数影响
	local ship_mxatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXATK ) / ATTR_RADIX
	return ship_mxatksa 
end 

function Ship_MxatkSb ( cha_role )						--船只基本最大攻击角色技能常数影响
	local ship_mxatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXATK ) 
	return ship_mxatksb 
end 
	
function Ship_AdisSa ( cha_role )							--船只基本攻击距离角色技能系数影响
	local ship_adissa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ADIS ) / ATTR_RADIX
	return ship_adissa  
end 

function Ship_AdisSb ( cha_role )							--船只基本攻击距离角色技能常数影响
	local ship_adissb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ADIS ) 
	return ship_adissb  
end 



function Ship_CspdSa ( cha_role )							--炮弹基本飞行速度角色技能系数影响
	local ship_cspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CSPD ) / ATTR_RADIX
	return ship_cspdsa  
end 

function Ship_CspdSb ( cha_role )							--炮弹基本飞行速度角色技能常数影响
	local ship_cspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CSPD ) 
	return ship_cspdsb  
end 



function Ship_AspdSa ( cha_role ) 						--炮弹基本攻击间隔角色技能系数影响
	local ship_aspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ASPD ) / ATTR_RADIX
	return ship_aspdsa  
end 


function Ship_AspdSb ( cha_role ) 						--炮弹基本攻击间隔角色技能常数影响
	local ship_aspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ASPD ) 
	return ship_aspdsb  
end 




function Ship_CrangeSa ( cha_role ) 						--炮弹基本爆炸范围角色技能系数影响
	local ship_crangesa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CRANGE ) / ATTR_RADIX
	return ship_crangesa  
end 

function Ship_CrangeSb ( cha_role ) 						--炮弹基本爆炸范围角色技能常数影响
	local ship_crangesb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CRANGE ) 
	return ship_crangesb  
end 




function Ship_DefSa ( cha_role ) 							--船只基本防御角色技能系数影响
	local ship_defsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_DEF ) / ATTR_RADIX
	return ship_defsa   
end 

function Ship_DefSb ( cha_role ) 							--船只基本防御角色技能常数影响
	local ship_defsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_DEF ) 
	return ship_defsb   
end 



function Ship_ResistSa ( cha_role ) 						--船只基本抵抗角色技能系数影响
	local ship_resistsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_RESIST ) / ATTR_RADIX
	return ship_resistsa   
end 

function Ship_ResistSb ( cha_role ) 						--船只基本抵抗角色技能常数影响
	local ship_resistsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_RESIST ) 
	return ship_resistsb   
end 



function Ship_MxhpSa ( cha_role ) 						--船只基本最大耐久角色技能系数影响
	local ship_mxhpsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXUSE ) / ATTR_RADIX
	return ship_mxhpsa    
end 

function Ship_MxhpSb ( cha_role ) 						--船只基本最大耐久角色技能常数影响
	local ship_mxhpsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXUSE ) 
	return ship_mxhpsb    
end 



function Ship_HrecSa ( cha_role ) 							--船只基本耐久回复速度角色技能系数影响
	local ship_hrecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_USEREC ) / ATTR_RADIX
	return ship_hrecsa 
end 

function Ship_HrecSb ( cha_role ) 						--船只基本耐久回复速度角色技能常数影响
	local ship_hrecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_USEREC ) 
	return ship_hrecsb 
end 



function Ship_SrecSa ( cha_role ) 							--船只基本补给消耗速度角色技能系数影响
	local ship_srecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_EXP ) / ATTR_RADIX
	return ship_srecsa 
end 

function Ship_SrecSb ( cha_role ) 									--船只基本补给消耗速度角色技能常数影响
	local ship_srecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_EXP ) 
	return ship_srecsb 
end 



function Ship_MspdSa ( cha_role ) 								--船只基本移动速度角色技能系数影响
	local ship_mspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MSPD ) / ATTR_RADIX
	return ship_mspdsa 
end 

function Ship_MspdSb ( cha_role ) 								--船只基本移动速度角色技能常数影响
	local ship_mspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MSPD ) 
	return ship_mspdsb 
end 



function Ship_MxspSa ( cha_role ) 									--船只基本最大补给值角色技能系数影响
	local ship_mxspsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXSPLY ) / ATTR_RADIX
	return ship_mxspsa 
end 

function Ship_MxspSb ( cha_role ) 								--船只基本最大补给值角色技能常数影响
	local ship_mxspsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXSPLY ) 
	return ship_mxspsb 
end 

--船只最终属性计算--------------------------------------------------------------------------------------------------------------------------------------------------

function Ship_Mnatk_final ( cha_role , ship_role )							--计算船只最小攻击
	local ship_mnatk=  math.floor ( ( Ship_BSMnatk ( ship_role ) * Ship_MnatkSa ( cha_role ) + Ship_MnatkSb ( cha_role ) ) * MnatkSa ( ship_role ) + MnatkSb ( ship_role ) )
	return ship_mnatk 
end 

function Ship_Mnatk ( ship_role )										--船只最小攻击
	local ship_mnatk=GetChaAttr( ship_role , ATTR_MNATK ) 
	return ship_mnatk 
end 

function Ship_Mxatk_final ( cha_role , ship_role )							--计算船只最大攻击
	local ship_mxatk= math.floor ( ( Ship_BSMxatk ( ship_role ) * Ship_MxatkSa ( cha_role ) + Ship_MxatkSb ( cha_role ) ) * MxatkSa ( ship_role ) + MxatkSb ( ship_role ) )
	return ship_mxatk 
end 

function Ship_Mxatk ( ship_role )										--船只最大攻击
	local ship_mxatk=GetChaAttr( ship_role , ATTR_MXATK ) 
	return ship_mxatk 
end 


	
function Ship_Adis_final ( cha_role , ship_role )							--计算船只攻击距离
	local ship_adis= math.floor ( ( Ship_BSAdis ( ship_role ) * Ship_AdisSa ( cha_role ) + Ship_AdisSb ( cha_role ) )  ) 
	return ship_adis 
end 

function Ship_Adis ( ship_role )										--船只攻击距离
	local ship_adis=GetChaAttr( ship_role , ATTR_ADIS ) 
	return ship_adis 
end 




function Ship_Cspd_final ( cha_role , ship_role )							--计算船只炮弹飞行速度
	local ship_cspd= math.floor ( ( Ship_BSCspd ( ship_role ) * Ship_CspdSa ( cha_role ) + Ship_CspdSb ( cha_role ) )  )
	return ship_cspd 
end 

function Ship_Cspd ( ship_role )										--船只炮弹飞行速度
	local ship_cspd=GetChaAttr( ship_role , ATTR_BOAT_CSPD ) 
	return ship_cspd 
end 



function Ship_Aspd_final ( cha_role , ship_role ) 							--计算炮弹攻击间隔
	local ship_aspd= math.floor ((  Ship_BSAspd ( ship_role ) * Ship_AspdSa ( cha_role ) + Ship_AspdSb ( cha_role ) ) * AspdSa ( ship_role ) + AspdSb ( ship_role ) )
	return ship_aspd  
end 

function Ship_Aspd ( ship_role ) 										--炮弹攻击间隔
	local ship_aspd=GetChaAttr( ship_role , ATTR_ASPD ) 
	return ship_aspd  
end 



function Ship_Crange_final (  cha_role , ship_role ) 							--计算炮弹爆炸范围
	local ship_crange= math.floor ( ( Ship_BSCrange ( ship_role ) * Ship_CrangeSa ( cha_role ) + Ship_CrangeSb ( cha_role ) )  ) 
	return ship_crange  
end 

function Ship_Crange ( ship_role ) 										--炮弹爆炸范围
	local ship_crange=GetChaAttr( ship_role , ATTR_CRANGE ) 
	return ship_crange  
end 




function Ship_Def_final ( cha_role , ship_role ) 							--计算船只防御
	local ship_def= math.floor ( ( Ship_BSDef ( ship_role ) * Ship_DefSa ( cha_role ) + Ship_DefSb ( cha_role ) ) * DefSa ( ship_role ) + DefSb ( ship_role ) ) 
	return ship_def  
end 

function Ship_Def ( ship_role ) 										--船只防御
	local ship_def=GetChaAttr( ship_role , ATTR_DEF ) 
	return ship_def  
end 



function Ship_Resist_final (  cha_role ,ship_role ) 							--计算船只抵抗
	local ship_resist= math.floor ( ( Ship_BSResist ( ship_role ) * Ship_ResistSa ( cha_role ) + Ship_ResistSb ( cha_role ) ) * ResistSa ( ship_role ) + ResistSb ( ship_role ) ) 
	return ship_resist  
end 

function Ship_Resistl ( ship_role ) 										--船只抵抗
	local ship_resist=GetChaAttr( ship_role , ATTR_PDEF ) 
	return ship_resist  
end 



function Ship_Mxhp_final (  cha_role ,ship_role ) 							--计算船只最大耐久
	local ship_mxhp= math.floor ( ( Ship_BSMxhp ( ship_role ) * Ship_MxhpSa ( cha_role ) + Ship_MxhpSb ( cha_role ) ) * MxhpSa ( ship_role ) + MxhpSb ( ship_role ) ) 
	return ship_mxhp  
end 

function Ship_Mxhp ( ship_role ) 										--船只最大耐久
	local ship_mxhp=GetChaAttr( ship_role , ATTR_MXHP ) 
	return ship_mxhp  
end 

function Ship_Hp ( ship_role )										--船只当前耐久
	local ship_hp=GetChaAttr( ship_role , ATTR_HP ) 
	return ship_hp  
end 

function Ship_Hrec_final (  cha_role ,ship_role ) 							--计算船只耐久回复速度
	local ship_hrec= math.floor ( ( Ship_BSHrec ( ship_role ) * Ship_HrecSa ( cha_role ) + Ship_HrecSb ( cha_role ) ) * HrecSa ( ship_role ) + HrecSb ( ship_role )  ) 
	return ship_hrec  
end 

function Ship_Hrec (  ship_role ) 										--船只耐久回复速度
	local ship_hrec=GetChaAttr( ship_role , ATTR_HREC ) 
	return ship_hrec  
end 


function Ship_Srec_final (  cha_role ,ship_role ) 							--计算船只补给消耗速度
	local ship_srec= math.floor ( ( Ship_BSSrec ( ship_role ) * Ship_SrecSa ( cha_role ) + Ship_SrecSb ( cha_role ) ) * SrecSa ( ship_role ) + SrecSb ( ship_role ) ) 
	return ship_srec  
end 

function Ship_Srec ( ship_role ) 										--船只补给消耗速度
	local ship_srec=GetChaAttr( ship_role , ATTR_SREC ) 
	return ship_srec  
end 




function Ship_Mspd_final (  cha_role ,ship_role ) 							--计算船只移动速度
	local ship_mspd= math.floor ( ( Ship_BSMspd ( ship_role ) * Ship_MspdSa ( cha_role ) + Ship_MspdSb ( cha_role ) ) * MspdSa ( ship_role ) + MspdSb ( ship_role ) ) 
	return ship_mspd  
end 

function Ship_Mspd ( ship_role ) 										--船只移动速度
	local ship_mspd=GetChaAttr( ship_role , ATTR_MSPD ) 
	return ship_mspd  
end 



function Ship_Mxsp_final (  cha_role ,ship_role ) 									--船只最大补给值
	local ship_mxsp= math.floor ( ( Ship_BSMxsp ( ship_role ) * Ship_MxspSa ( cha_role ) + Ship_MxspSb ( cha_role ) ) * MxspSa ( ship_role ) + MxspSb ( ship_role ) ) 
	return ship_mxsp  
end 

function Ship_Mxsp ( ship_role ) 										--船只最大补给值
	local ship_mxsp=GetChaAttr( ship_role , ATTR_MXSP ) 
	return ship_mxsp  
end 

function Ship_Sp ( ship_role )										--船只当前补给值
	local ship_sp=GetChaAttr( ship_role , ATTR_SP ) 
	return ship_sp  
end 







function Percentage_Random(a) 
	local x,y=a*1000000000,math.random(0,1000000000) 
	local z 
	if y<=x then 
		z=1 
		else z=0 
	end 
	return z 
end 



function Dis(a,b,c,d) --[[求(a,b)至(c,d)距离]]--
	local x1,y1,x2,y2=a,b,c,d 
	local dis=math.pow( math.pow(x1-x2, 2) + math.pow(y1-y2, 2), 0.5) 
	return dis 
end 

function Check_Direction(a) --判定角色面向方向,x轴的正方向为1区中心线，逆时针依次为2，3，4，5，6，7，8
	--LuaPrint("Enter function Check_Direction(a) --[[determine  character direction, x axis of center as 1, anticlockwise as 2, 3, 4, 5, 6, 7, 8]--") 
	local direction=GetChaAttr(a, ATTR_DIREC) 
	local division 
	if ((direction>=337.5) and (direction<360)) or ((direction>=0) and (direction<22.5)) then 
		division=1 
	elseif (direction>=22.5) and (direction<67.5) then 
		division=2 
	elseif (direction>=67.5) and (direction<112.5) then 
		division=1 
	elseif (direction>=112.5) and (direction<157.5) then 
		division=8 
	elseif (direction>=157.5) and (direction<202.5) then 
		division=7 
	elseif (direction>=202.5) and (direction<247.5) then 
		division=6 
	elseif (direction>=247.5) and (direction<292.5) then 
		division=5 
	elseif (direction>=292.5) and (direction<337.5) then 
		division=4 
	else --LuaPrint("incorrect character angle direction".."\n" ) 
      return 
   end 

	--LuaPrint("Out function Check_Direction(a) --[[determine character direction, x axis with center as 1, anticlockwise as 2, 3, 4, 5, 6, 7, 8]--") 
	return division 
end 


function Hp_Dmg(role,dmg) --[[人物hp消耗处理公式]]--

	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_garner2 = Is_NormalMonster (role)
	local T=0.25	
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		if Can_Pk_garner2 == 0 then
			dmg = dmg * T
		end
	end	
	
	--LuaPrint("Enter function Hp_Dmg(role,dmg) --[[hp consumption management formula]]--") 
	--Notice("dmg3="..dmg)
	local statelv_mfd = GetChaStateLv ( role , STATE_MFD ) 
	local hp = Hp(role) 
	local sp = Sp(role) 
	if dmg <= 0 then 
		hp = hp - dmg 
		SetCharaAttr(hp, role, ATTR_HP )  
		return 
	end 
	
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Elf_Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Elf_Num , 0 , 1 )
		local PowerSheild = 0
		if CheckElfSkill == 2 then
			PowerSheild = ElfSKill_PowerSheild ( role , Elf_Item , Elf_Num , dmg )
			if PowerSheild ~= 0 then
				SystemNotice ( role , "Fairy activated Protection. Absorbed damage from opponent" )
			end
			dmg = dmg - PowerSheild
		end
	end

	if statelv_mfd >= 1 then 
		sp_change = statelv_mfd * 0.25 + 0.5
	--local map_name_ATKER = GetChaMapName ( a )
	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_garner2 = Is_NormalMonster (role)
		
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
	--	Notice("22")
			if Can_Pk_garner2 == 0 then
				sp_change = statelv_mfd * 0.25 + 0.5
			end
		end
		local Check_Heilong  = CheckItem_Heilong ( role )
		if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.5 )
			if Percentage == 1 then
				  sp_change =  sp_change*1.5
				SystemNotice ( role , "Obtain power from Black Dragon set. Skill effect enhanced")
			end
		end
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "Obtained ability of Chaos equipment. Damage reduced" )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "Obtained ability of Chaos equipment. Damage reduced" )
			
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "Obtained ability of Chaos equipment. Damage reduced" )
			
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Obtained ability of Chaos equipment. Damage reduced" )
			
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Obtained ability of Chaos equipment. Damage reduced" )
		
				end
			end	
		end
		if dmg / sp_change <= sp then 
			sp = math.floor ( sp - dmg/sp_change ) 
		else 
			hp =math.floor ( hp - ( dmg/sp_change - sp ) ) 
			sp = 0 
			RemoveState ( role , STATE_MFD ) 
		end 
	else
		local Check_Nianshou = CheckItem_Nianshou ( role )
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if Check_Nianshou == 1 then
			local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				dmg = dmg * -1
				SystemNotice ( role , "Recieved blessing from Goddess. Drains enemy HP.")
			end
		end
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "Obtained ability of Chaos equipment. Damage reduced" )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "Obtained ability of Chaos equipment. Damage reduced" )
			
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "Obtained ability of Chaos equipment. Damage reduced" )
			
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Obtained ability of Chaos equipment. Damage reduced" )
			
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Obtained ability of Chaos equipment. Damage reduced" )
		
				end
			end	
		end
	
	--local map_name_ATKER = GetChaMapName ( role )
		local ZSExp = GetChaAttr( role , ATTR_CSAILEXP )
		if ZSExp > 0 and ZSExp < 100 then
			dmg = dmg * 0.945
		end
		if ZSExp >= 100 and ZSExp < 12100 then
			dmg = dmg * ( 0.95 - math.floor( math.pow( (ZSExp / 100) , 0.5 )) * 0.005)
		end
		hp = Hp(role) - dmg 
	end 
	SetCharaAttr(sp, role, ATTR_SP ) 
	SetCharaAttr(hp, role, ATTR_HP )  
	--LuaPrint("Out function Hp_Dmg(role,dmg) --[[HP consumption management formula]]--") 
end 


function Endure_Dmg ( role , dmg ) 
	local hp = Hp ( role ) - dmg 
	SetCharaAttr(hp, role, ATTR_HP ) 
end 
	

function Sp_Red(role,sp_reduce) --[[sp消耗处理公式]]--
	--LuaPrint("Enter function Sp_Red(role,spreduce) --[[SP consumption management formula]]--") 
	local sp = Sp(role) - sp_reduce 
	--LG("sp_red", "before_sp = " , Sp(role) , " sp_reduce = " , sp_reduce , "final_sp = " , sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP ) 
	--LuaPrint("Out function Sp_Red(role,spreduce) --[[SP consumption management formula]]--") 
end 

function Coefficientadjust_Steady_atk()	--[[调整稳定攻击系数]]--
	--LuaPrint("Enter function Coefficientadjust_Steady_atk()") 
	local steady_atk_maxreduce = 0.9 
	local steady_atk_maxreducepoint = 0.99 
	local steady_atk_maxluk=1500 
	local a = steady_atk_maxreduce / steady_atk_maxluk 
	local b = steady_atk_maxreducepoint / steady_atk_maxluk 
	--LuaPrint("Out function Coefficientadjust_Steady_atk()") 
	return a,b,steady_atk_maxreduce,steady_atk_maxreducepoint 
end 

function SetSteady_atk(a) --[[设定攻击力稳定性]]--
	--LuaPrint("Enter function SetSteady_atk(a) --[[set attack stability]]--") 
	local x,y,m,n = Coefficientadjust_Steady_atk() --[[调整稳定攻击系数]]--
	local sum=1 
	local atkstep={} --[[每档攻击力占有率]]--
	local atk={} --[[每档攻击占有随机数值范围]]--
	atk[Mnatk_final(a) - 1 ] = 0 
	for i = Mnatk_final(a),  Mxatk_final(a), 1 do 
		atkstep[i] = 1 
	end 
	local maxreduce = math.min(m, Luk_final(a) * x ) 
	local reducepoint = math.min(n, Luk_final(a) * y ) * (Mxatk_final(a) - Mnatk_final(a) ) 
	if reducepoint==0 then 
		--LuaPrint("Non attacking wave".."\n") 
		atk[Mnatk_final(a)] = 1 
	return atk,sum 
	end --[[处理无攻击力波动，返回最小攻击力取得概率为1]]--
	local steady_step = maxreduce / reducepoint 
	for i = 0, Mxatk_final(a) - Mnatk_final(a), 1 do 
		atkstep[ i + Mnatk_final(a) ] = atkstep [ i + Mnatk_final(a) ] - math.max(0, (maxreduce-i * steady_step) ) 
		sum = sum + atkstep[ i + Mnatk_final(a) ]  
		atk[ i + Mnatk_final(a) ] = sum 
	end 
	--local gatk = 0 
	--for i = Mnatk_final(a), Mxatk_final(a), 1 do 
	--ccc = (atk[i]-atk[i-1]) / sum 
	--gatk = gatk + i * ccc --[[平均攻击力]]--
	--end 
	--LuaPrint("Out function SetSteady_atk(a) --[[Set attack stability]]--") 
	return atk,sum 
end 
	
	
function CheckSteady_atk(a) --[[稳定攻击判定]]--
	--LuaPrint("Enter function CheckSteady_atk(a) --[[stablilze attack determination]]--") 
	local atk,sum = SetSteady_atk(a) 
	local x = math.random( 0, 10000 ) 
	local y = x * sum/10000 
	for i = Mnatk_final(a), Mxatk_final(a), 1 do 
      if y<=atk[i] then 
         return i 
      end 
   end 
	--LuaPrint ("error! No Hit Rate to Attack, return Min Attack".."\n") 
	--LuaPrint("Out function CheckSteady_atk(a) --[[stablilize attack determination]]--") 
	return Mnatk_fianl(a) 
end 
	

--	function  Skadd_Check( job , lv , tp , form_sklv)									--学习技能判断
--		LG( "Skadd", "enter function  Skadd_Check :" ) 
--		local itemuse = 0 
--		local cha_job = GetChaAttr( ATKER , ATTR_JOB ) 
--		if  cha_job ~= job then 
--			LG( "Skadd", "function Skadd:", "Unable to use. Class does not match" ) 
--			itemuse = 1 
--		end 
--		local cha_lv = GetChaAttr( ATKER , ATTR_LV ) 
--		if cha_lv < lv then 
--			LG( "Skadd", "function Skadd:", "Unable to use. Character level insufficient" ) 
--			itemuse = 2 
--		end 
--		local cha_tp = GetChaAttr( ATKER , ATTR_TP ) 
--		if cha_tp < tp then 
--			LG( "Skadd", "function Skadd:", "Unable to use. Insufficient skill point" ) 
--			itemuse = 3 
--		end 
--		if form_sklv > 0 then 
--			LG( "Skadd", "function Skadd:", "Unable to use. Already possessed this skill" ) 
--			itemuse = 4 
--		end 
--		LG( "Skadd", "out function  Skadd_Check :" ) 
--		return itemuse 
--	end 
	
function Lefthand_Atk ( role , atk )												--双手武器状态                        
	local sklv = GetSkillLv ( role , STATE_FSZ ) 
	add_atk = math.floor ( atk * ( 1.2 + sklv * 0.08 ) ) 
	return add_atk 
end 

function Check_Zmyj ( role , dmg_mul )												--检查致命一击状态
	local statelv = GetChaStateLv ( role , STATE_ZMYJ ) 
	local crt_rad = 0.2 + statelv * 0.02 
	if dmg_mul == 2 or dmg_mul == 1 then 
		a = Percentage_Random ( crt_rad ) 
		if a== 1 then 
			dmg_mul = 2 + statelv/2 
		end 
	end 
	return dmg_mul 
end 
	
function Check_Smyb ( role )													--检查舍命一搏状态
	local statelv = GetChaStateLv (role , STATE_SMYB ) 
	local hp = Hp ( role ) 
	local mxhp = Mxhp ( role ) 
	local atk_sa = 1 
	if hp <= mxhp * 0.2 and hp > 0 then 
		atk_sa = 1 + statelv * 0.1 
	end 
	local mnatk = Mnatk ( role ) * atk_sa 
	local mxatk = Mxatk ( role ) * atk_sa 
	return mnatk , mxatk 
end 


--检测角色隐身状态，移除攻击者的隐身状态——————————————————————————————————

function Check_Ys_Rem ( role_atk , role_def )	
	Check_State ( role_atk , role_def ) 
	if atk_statecheck[STATE_YS] >= 1 then 
		RemoveState ( role_atk , STATE_YS ) 
	end 
end 

function Check_Bshd (statelv) 
	local statetime = 3 + statelv * 1 
	return statetime 
end 

function Atk_Raise ( rad , atker , defer )			--技能攻击提升
	local atk = rad * math.random ( Mnatk( atker ) , Mxatk ( atker ) ) 
	local defer_def = Def ( defer ) 
	local defer_resist = Resist ( defer ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist ) 
	return dmg 
end 

function TurnToCha ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 1 then 
		x_role = GetMainCha ( role ) 
	end 
	return x_role 
end 

function TurnToShip ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 0 then 
		x_role = GetCtrlBoat ( role ) 
		if x_role == nil then 
			LG ( "getshipid_err" , " get a nil shipid " ) 
		end 
	end 
	return x_role 
end 

function ALLExAttrSet ( role )				--根据角色形态分别刷新当前属性
	if IsPlayer ( role ) == 0 then				--角色为怪物
		ExAttrSet ( role ) 
		return 
	end 
	if ChaIsBoat ( role ) == 0 then			--角色形态为人物
		AttrRecheck ( role ) 
	else								--角色形态为船只
		cha_role = GetMainCha ( role ) 
		ShipAttrRecheck ( cha_role , role ) 
	end 
end 

function Hp_Endure_Dmg ( role , dmg ) 
	if ChaIsBoat ( role ) == 0 then 
		Hp_Dmg ( role , dmg ) 
		local state_ys_lv =  GetChaStateLv (role , STATE_YS ) 
		if state_ys_lv >= 1 then 
			RemoveState ( role , STATE_YS ) 
		end 
	else 
		Endure_Dmg ( role , dmg ) 
	end 
end 

----计算船只成长属性------------------------------------------------------------------------------
function Boat_plus_MNATk( Lv , mnatk)
	local mnatk_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_MNatk","Ship level is lower than 1")
		LG("Boat_plus_MNatk","1")
		return mnatk
	end
	
	if Lv > 100 then
		LG("Boat_plus_MNatk","Ship level higher than 100")
		LG("Boat_plus_MNatk","Ship level lower than 2")

		return mnatk
	end
	
	if Lv < 60 then
		LG ( "Boat_plus_MNatk" , mnatk ) 
		mnatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mnatk
		LG("Boat_plus_MNatk","Ship level smaller than 3")

		return mnatk_new
	end
	
	if Lv >=60 then
		mnatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mnatk + ( Lv - 60 ) * 5
		LG("Boat_plus_MNatk","Ship level lower than 4")

		return mnatk_new
	end
	

end

function Boat_plus_MXATk( Lv , mxatk)
	local mxatk_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_MXatk","Ship level is lower than 1")
		return mxatk_new
	end
	
	if Lv > 100 then
		LG("Boat_plus_MXatk","Ship level higher than 100")
		return mxatk_new
	end
	
	if Lv < 60 then
		mxatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mxatk
		return mxatk_new
	end
	
	if Lv >=60 then
		mxatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mxatk + ( Lv - 60 ) * 5
		return mxatk_new
	end
	

end

function Boat_plus_def ( Lv , def )
	local def_new = 0
	
	if  Lv < 1 then
		LG("Boat_plus_def","Ship level is lower than 1")
		return def
	end
	
	if Lv > 100 then
		LG("Boat_plus_def","Ship level higher than 100")
		return def
	end
	
	if Lv < 60 then
		def_new = ( 1 + ( Lv - 20 ) / 120 ) * def
		LG ( "Boat_plus_def","def_new1 = " ,  def_new ) 
		return def_new

	end
	
	if Lv >= 60 then
		def_new = ( 1 + ( 60 - 20 ) / 120 ) * def + ( Lv - 60 ) * 3
		LG ( "Boat_plus_def","def_new2 = " ,  def_new ) 
		return def_new
	end
	

end

function Boat_plus_Mxhp ( Lv , Mxhp )
	local Mxhp_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_Mxhp","Ship level is lower than 1")
		return Mxhp
	end
	
	if Lv > 100 then
		LG("Boat_plus_Mxhp","Ship level higher than 100")
		return Mxhp
	end
	
	if Lv < 60 then
		Mxhp_new = ( 1 + ( Lv - 20 ) / 120 ) * Mxhp
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
	
	if Lv >= 60 then
		Mxhp_new = ( 1 + ( 60 - 20 ) / 120 ) * Mxhp + (Lv - 60 )  * 20
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
end

function Boat_plus_Mspd ( Lv , Mspd )
	local Mspd_new = 0

	if Lv < 1 then
		LG("Boat_plus_Mspd","Ship level is lower than 1")
		return Mspd
	end
	
	if Lv >100 then
		LG("Boat_plus_Mspd","Ship level higher than 100")
		return Mspd
	end
	
	if Lv < 60 then
		Mspd_new = ( 1 + ( Lv -30) / 300 ) * Mspd
		return Mspd_new
	end

	if Lv >=60 then
		Mspd_new = ( 1 + ( 60 -30) / 300 ) * Mspd
		return Mspd_new
	end

end

--取角色公会编号
function get_cha_guild_id(cha) 
    local ply_cha = CheckChaRole(cha) 
    if ply_cha == 1 then --玩家角色
        return GetChaGuildID(cha) 
    else 
        local map_copy = GetChaMapCopy(cha)
        local side_id = GetChaSideID(cha) 
		if side_id == 1 then
			return GetMapCopyParam2(map_copy, 4 ) 
		elseif side_id == 2 then
			return GetMapCopyParam2(map_copy, 3 ) 
		end
    end 

end

--判断角色cha1，cha2是否属于队友。
--是队友则返回1，否则返回0
function is_teammate(cha1, cha2) 
    if cha1 == 0 or cha2 == 0 then 
        return 0 
    end 
    if cha1 == cha2 then 
        return 1 
    end
    local ply1 = GetChaPlayer(cha1) 
    local ply2 = GetChaPlayer(cha2) 
    if ply1 ~= 0 and ply2 ~= 0 then 
        if ply1 == ply2 then 
            return 1 
        end 
        local team_id1, team_id2 
        team_id1 = GetChaTeamID(cha1) 
        team_id2 = GetChaTeamID(cha2) 
        if team_id1 ~= 0 and team_id2 ~= 0 and team_id1 == team_id2 then 
            return 1 
        end 
    end 

    return 0 
end 

--判断角色cha2是否是cha1的友方。
--是友方则返回1，否则返回0
function is_friend(cha1, cha2) 
--	SystemNotice ( cha1, "transferis_friend" ) 
    local friend_target = 1 
    local Map_type = GetChaMapType( cha1 )
    if CheckChaRole( cha1 ) == 0 and Map_type ~= 2 then			--如果cha1为怪物且不在工会地图中，则cha2为怪物为友方，cha2为人为敌方
	if CheckChaRole( cha2 ) == 0 then							
		return 1 
	else 
		return 0 
	end 

    end
	   
--		SystemNotice ( cha1 , "1" ) 
--		SystemNotice ( cha1 , "Map_type ="..Map_type ) 
--	    if Map_type == 4 then									--迷宫PK地图友方判断
--		local team = is_teammate(cha1, cha2) 
--		if team == 1 then 
--			return 1 
--		end 
--	    else
--		return 0
--	    end
		if Map_type == 1 then 
			if CheckChaRole ( cha1 ) == 1 then 
					if CheckChaRole( cha2 ) == 0 then							
						return 0 
					else 
						return 1 
					end 

			end 
		end 

		if Map_type == 4 then									--迷宫PK地图友方判断
			if Is_NormalMonster (cha1) == 1 then						--如果是普通怪物则与怪物是友方
				if Is_NormalMonster (cha2) == 1 then 
					return 1 
				end 
			end 
			local team = is_teammate(cha1,cha2) 
			if team == 1 then 
				return 1 
			else 
				local guild_id1, guild_id2 
				guild_id1 = get_cha_guild_id(cha1) 
				guild_id2 = get_cha_guild_id(cha2) 
				if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
					return 1  
				else
					return 0 
				end
			end
			--local team = is_teammate(cha1,cha2) 
			--		if team == 1 then 
			--			return 1 
			--		else 
			--			return 0 
			--		end 
		end 

--	        SystemNotice ( cha1 , "2" ) 

	    if  Map_type ==3 then									--是队伍战地图则队友为友方
--		SystemNotice ( cha1 , "1" ) 
		    local team = is_teammate(cha1, cha2) 
--		    		SystemNotice ( cha1 , "2" ) 

		    if team == 1 then 
--		    		SystemNotice ( cha1 , "3" ) 
		        return 1 
		    else 
			return 0 
		    end
		   
	    end

	    if cha1 == 0 or cha2 == 0 then							--指针为空
	        return 0 
	    end 
--		SystemNotice ( cha1 , "3" ) 
	    if Map_type == 2 then									--工会PK地图判断
		if Is_NormalMonster (cha1) == 1 then						--如果是普通怪物则与怪物是友方
			if Is_NormalMonster (cha2) == 1then 
				return 1 
			end 
		end 
		local guild_id1, guild_id2 
		guild_id1 = get_cha_guild_id(cha1) 
		guild_id2 = get_cha_guild_id(cha2) 
		if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
			return 1 
		else 
			return 0 
		end

	    end 
	    if Map_type == 5 then									--工会PK地图判断
--		if Is_NormalMonster (cha1) == 1 then						--如果是普通怪物则与怪物是友方
--			if Is_NormalMonster (cha2) == 1then 
--				return 1 
--			end 
--		end 
		local guild_side_1, guild_side_2 
		guild_side_1 = GetChaSideID(cha1) 
		guild_side_2 = GetChaSideID(cha2) 
		--if guild_side_1 <= 100 and guild_side_1 > 0 and guild_side_2 <= 100 and guild_side_2 > 0 then
		if guild_side_1 == guild_side_2 then
			return 1 
		--elseif
		   --guild_side_1 > 100 and guild_side_1 <= 200 and guild_side_2 > 100 and guild_side_2 <= 200 then
			--return 1
	        else
		        return 0
		end

	    end 
--		SystemNotice ( cha1 , "4" ) 

	    return friend_target 
 end 
--	    local is_plycha1 = CheckChaRole(cha1) 
--	    local is_plycha2 = CheckChaRole(cha2) 
--	    local can_PK1 = CheckChaPKState(cha1) 
--	    if can_PK1 == 0 then 
--	        if is_plycha1 ~= 0 and is_plycha2 ~= 0 then 
--	            return 1 
--	        end 
--	        if is_plycha1 == 0 and is_plycha2 == 0 then 
--	            return 1 
--	        end 
--	    end 
  --  end
--    return 0
-- end 

--普通怪判断
function Is_NormalMonster ( role )
  local cha = TurnToCha ( role )
  local Cha_Num = GetChaTypeID( cha )
  
  for i = 0 , UnNormalMonster_Num , 1 do
	if Cha_Num == UnNormalMonster_ID [i] then
		return 0
	end
  end
  

  return 1
  
end

--检查怪物是否已死或已不存在
function CheckMonsterDead ( role )
	if role == nil then
		return 1
	end
	if Hp(role) <= 0 then
		return 1
	end
	return 0
end

--检测技能命中程度
function ReCheck_Skill_Dmg ( MaxDmg , MinDmg , Ran )

	local a = 0
	a = Percentage_Random ( Ran / 100)
	if a == 1 then
	
		return MaxDmg
	else
	
		return MinDmg
	end
end

--检查PK双方等级差距
function ReCheck_PK_Lv ( ATKER , DEFER )
	local Lv_atker = Lv ( ATKER )
	local Lv_defer = Lv ( DEFER )
	return Lv_atker - Lv_defer
end



--PK人物死亡检测
function after_player_kill_player( ATKER, DEFER )
	SetCharaAttr(0, DEFER, ATTR_SP)
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local MGPK_MapNameNum = 10
	local MGPK_MapName = {}
	
	MGPK_MapName[0] = "puzzleworld"
	MGPK_MapName[1] = "puzzleworld2"
	MGPK_MapName[2] = "abandonedcity"
	MGPK_MapName[3] = "abandonedcity2"
	MGPK_MapName[4] = "abandonedcity3"
	MGPK_MapName[5] = "darkswamp"
	MGPK_MapName[6] = "hell"
	MGPK_MapName[7] = "hell2"
	MGPK_MapName[8] = "hell3"
	MGPK_MapName[9] = "hell4"
	MGPK_MapName[10] = "hell5"

	
	local ATKER_Get_Ry = 0
	local DEFER_Get_Ry = 0
	
	local ATKER_Get1_LD = 0
	local DEFER_Get1_Ry = 0
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		if Lv_dif < 15 and Lv_dif > -15 then
			ATKER_Get1_LD = 1
			DEFER_Get1_Ry = -1
			SystemNotice ( ATKER ," defeats opponent and obtain 1 Chaos point" )
			SystemNotice ( DEFER ," was defeated by opponent and loses 1 Honor point")
		end
		
		if Lv_dif >= 15 then
			ATKER_Get1_LD = 0
			DEFER_Get1_Ry = 0
			SystemNotice ( ATKER , "Defeated low level opponent. No Chaos point obtained" )
			SystemNotice ( DEFER , "No honor points will be deducted when defeated by a higher level opponent." )
		end
		
		if Lv_dif <= -14 then
			ATKER_Get1_LD = 2
			DEFER_Get1_Ry = -2
			SystemNotice ( ATKER ,"Defeated high level opponent. Obtained 2 additional Honor points" )
			SystemNotice ( DEFER ,"Defeated by low level opponent. Lost 2 additional Honor points")
		end

		
--		local RongyuTpye = ITEMATTR_VAL_STR
--		local Kill_Num = 1
--		local Kill_attr = ITEMATTR_VAL_AGI
--		local Killed_attr = ITEMATTR_VAL_DEX
		local ATKER_LD = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_RYZ1 = GetChaItem2 ( DEFER , 2 , 3849 )
		local FightingPoint=GetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY)
		local HonorPoint = GetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR)
		local	FightingPoint = FightingPoint + ATKER_Get1_LD
		local	HonorPoint = HonorPoint + DEFER_Get1_Ry
			if ATKER == DEFER then
				ATKER_Get1_LD = ATKER_Get1_LD-1
			end
		SetItemAttr ( ATKER_LD , ITEMATTR_MAXENERGY,FightingPoint)
		SetItemAttr ( DEFER_RYZ1 , ITEMATTR_VAL_STR,HonorPoint)
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )

		MapCopyNotice ( map_copy , Notice_map )
	
	end
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] was defeated by ["..atk_name.."]"
		Notice ( Notice_all )

local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )

	end
	
	
	if map_name_ATKER == "teampk" or map_name_DEFER == "teampk" then

local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )



		local ATKER_RYZ = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_RYZ = GetChaItem2 ( DEFER , 2 , 3849 )
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		if Lv_dif < 10 and Lv_dif > -5 then
			ATKER_Get_Ry = 1
			DEFER_Get_Ry = -1
			SystemNotice ( ATKER ,"Defeat opponent and obtained Honor"..ATKER_Get_Ry )
			SystemNotice ( DEFER ,"Defeat!. Honor points lost:"..ATKER_Get_Ry )
		end
		
		if Lv_dif >= 10 then
			ATKER_Get_Ry = 0
			DEFER_Get_Ry = 0
			SystemNotice ( ATKER , "Defeated low level opponent. No Honor points obtained" )

		end
		
		if Lv_dif < -5 then
			ATKER_Get_Ry = 2
			DEFER_Get_Ry = -2
			SystemNotice ( ATKER ,"Defeated high level opponent, obtained extra Honor reward. Received Honor points:"..ATKER_Get_Ry )
			SystemNotice ( DEFER ,"Defeated by low level opponent. Extra penalty Honor lost:"..ATKER_Get_Ry )
		end

		local RongyuTpye = ITEMATTR_VAL_STR
		local Kill_Num = 1
		local Kill_attr = ITEMATTR_VAL_AGI
		local Killed_attr = ITEMATTR_VAL_DEX
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		local Notice_map = def_name.." was defeated by "..atk_name.." Defeat"
--		SystemNotice( ATKER ,"Honor point gained")
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , RongyuTpye , ATKER_Get_Ry )
--		SystemNotice( ATKER , "Increases Kill count by")
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , Kill_attr , Kill_Num )
--		SystemNotice( DEFER ,"was killed. Honor points deducted by")
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , RongyuTpye , DEFER_Get_Ry )
--		SystemNotice( DEFER , "Defeat Count increases by")	
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , Killed_attr , Kill_Num )
		MapCopyNotice ( map_copy , Notice_map )


	end
	if map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] was defeated by ["..atk_name.."]"
		Notice ( Notice_all )
	end

if map_name_ATKER == "puzzleworld" or map_name_DEFER == "puzzleworld" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "puzzleworld2" or map_name_DEFER == "puzzleworld2" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "puzzleworld3" or map_name_DEFER == "puzzleworld3" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "abandonedcity" or map_name_DEFER == "abandonedcity" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "abandonedcity2" or map_name_DEFER == "abandonedcity2" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "abandonedcity3" or map_name_DEFER == "abandonedcity3" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end


if map_name_ATKER == "hell" or map_name_DEFER == "hell" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "hell2" or map_name_DEFER == "hell2" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "hell3" or map_name_DEFER == "hell3" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "hell4" or map_name_DEFER == "hell4" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "hell5" or map_name_DEFER == "hell5" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "mjing1" or map_name_DEFER == "mjing1" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "mjing2" or map_name_DEFER == "mjing2" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "mjing3" or map_name_DEFER == "mjing3" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "mjing4" or map_name_DEFER == "mjing4" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "temple" or map_name_DEFER == "temple" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "bountypk" or map_name_DEFER == "bountypk" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "dvalley" or map_name_DEFER == "dvalley" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "dvalley2" or map_name_DEFER == "dvalley2" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "dvalley3" or map_name_DEFER == "dvalley3" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "fcfarm" or map_name_DEFER == "fcfarm" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "dsfarm" or map_name_DEFER == "dsfarm" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end

if map_name_ATKER == "dwfarm" or map_name_DEFER == "dwfarm" then
local atk_name = GetChaDefaultName ( ATKER )
GiveItem ( ATKER , 0 , 3734  , 1 , 4 )
end



if map_name_ATKER == "guildwar" or map_name_DEFER == "guildwar" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		--local Cha = TurnToCha(role) 
		local Num_shengsi_1= CheckBagItem(DEFER,2382)
                --Notice("Num_shengsi"..Num_shengsi)
	if Num_shengsi_1 >=1 then
		TakeItem( DEFER, 0,2382, 1 )    
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
	
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
	      SystemNotice ( ATKER , "Target does not belong to Navy nor Pirates, you did not manage to find anything!" )
	   end
	end
     end

     if map_name_ATKER == "guildwar2" or map_name_DEFER == "guildwar2" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		--local Cha = TurnToCha(role) 
		local Num_shengsi_2= CheckBagItem(DEFER,2382)
                --Notice("Num_shengsi"..Num_shengsi)
	if Num_shengsi_2 >=1 then
		TakeItem( DEFER, 0,2382, 1 )   
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
	
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
	      SystemNotice ( ATKER , "Target does not belong to Navy nor Pirates, you did not manage to find anything!" )
	   end
	end
     end

     




        local C_Map = 0
	for C_Map = 0 , MGPK_MapNameNum , 1 do
	    if  map_name_ATKER == MGPK_MapName[C_Map] then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		local Notice_map = def_name.." was defeated by "..atk_name.." Defeat"
		MapCopyNotice ( map_copy , Notice_map )
		ATKER = TurnToCha ( ATKER )
		DEFER = TurnToCha ( DEFER )
		local Have_TSWW = CheckBagItem( DEFER , 3846 )
		if Have_TSWW <= 0 then
			Dead_Punish_ItemURE ( DEFER )
			MGPK_Dead_Punish_Exp ( DEFER )
		else
			local j = DelBagItem( DEFER , 3846 , 1 )
			if j == 0 then
				LG ( "NewItem" , "Voodoo Doll deletion failed" )
			else
				SystemNotice ( DEFER , "Voodoo Doll replace death penalty" )
			end
		end

	    end
	end
	
--	PK_Dead_Punish_ItemURE ( DEFER )

end

--迷宫PK死亡经验惩罚
function MGPK_Dead_Punish_Exp ( dead )
	local map_name = GetChaMapName ( dead )
	dead = TurnToCha ( dead ) 
	local lv = GetChaAttr( dead, ATTR_LV ) 
	local exp_red 
	local exp = Exp(dead) 
	local nlexp = GetChaAttrI ( dead , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( dead , ATTR_CLEXP ) 
	local exp_per = math.min ( math.floor ( ( nlexp - clexp ) * 0.02 ) , math.max ( exp - clexp , 0 ) )	---按照百分比计算损失
	if  exp <= clexp then 
		exp_red = 0 
	else 
		exp_red = math.pow( lv , 2 ) * 20								---按照等级计算损失
	end 
	
	if exp_red > exp_per then										---取两种算法中较小的扣除
		exp_red = exp_per
	end

	if Lv ( dead ) >= 80 then 
		exp_red = math.floor ( exp_red / 50 )
		exp_red_80 = exp_red * 50 
		SystemNotice (dead , "Death penalty. EXP lost:"..exp_red_80 ) 
	else 
		SystemNotice (dead , "Death penalty. EXP lost:"..exp_red ) 
	end
	
	exp = Exp(dead) - exp_red

	SetChaAttrI( dead , ATTR_CEXP , exp ) 
	
	local name = GetChaDefaultName ( dead )
	
	LG ( "PKdie_exp" , "Character Name" , name , "Current Lv= ", lv , "Death EXP penalty= " , exp_red )
end 



--增加荣誉证属性
function Add_ItemAttr_RYZ ( Cha_role ,role , attrtype , Num )
	local i = 0
	local attr_num = GetItemAttr ( role , attrtype )
--	SystemNotice ( Cha_role , "Operation antenumber value"..attr_num )
--	SystemNotice ( Cha_role , "Operation Value"..Num )
--	SystemNotice ( Cha_role , "Operation attribute"..attrtype )
	attr_num = attr_num + Num
	i = SetItemAttr ( role ,attrtype , attr_num )
	local attr_num_1 = GetItemAttr ( role , attrtype )
--	SystemNotice ( Cha_role , "value after operation"..attr_num_1 )
	if i == 0 then
		LG("RYZ_PK","add Honor attribute failed")
	end
	
end


--读取荣誉证属性

--参加场数
--参数：角色指针
--返回值：参赛场数
function Get_ItemAttr_Join ( Cha_role )

	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_CON
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
	
end

--胜利场数
--参数：角色指针
--返回值：胜利场数
function Get_ItemAttr_Win ( Cha_role )

	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end	

	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STA
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
	
end

--添加荣誉值

function AddYongYuZhi( role ,  value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "Does not possess Medal of Valor" )
		return 0
	
	end
	
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num + value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	
	if i == 0 then 
		return 0
	end
	if value > 0 then
		SystemNotice ( role , "Increases Honor points by "..value )
	end
	if value < 0 then
		local a = -1 * value
		SystemNotice ( role , "Deduct Honor Point"..a )
	end

	SynChaKitbag ( role , 7 )
	return 1
end



--改变组队贡献点数
function TakeZuDuiGongXianDu( role , value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "Does not possess Medal of Valor" )
		return 0
	
	end
	
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num - value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	
	if i == 0 then 
		return 0
	end
	if value < 0 then
		local a = value * -1
		SystemNotice ( role ,"Obtained Party Contribution points"..a )
	end
	if value > 0 then
		SystemNotice ( role ,"Party Contribution points deducted:"..value )
		LG("RYZ_Take_Zdgx" , " uses Team Contribution points, deducts "..value.."point")
	end
	SynChaKitbag ( role , 7 )
	return 1
end



--判断是否有足够的组队贡献点数
function HasZuDuiGongXianDu ( role ,value )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= value then
		return 1
	else
		return 0
	end
end

--判断荣誉值是否符合条件
function LessYongYuZhi( role , str , value )
		local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if str == ">" then
		if attr_num > value then
			return 1
		end
	elseif str == "<" then
		if attr_num < value then
			return 1
		end
	elseif str == "=" then
		if attr_num == value then
			return 1
		end
	else
		LG("RYZ_PK","determine Honor character error")
	end


end

--组队时添加组队贡献点数
function Add_RYZ_TeamPoint ( role ,count_num , add_num )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return
	end
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= 1000 then
		return
	end
	attr_num = attr_num + add_num
	local a = math.min ( 1 , ( count_num - 2 ) * 0.3 )
	local b = 0
	b = Percentage_Random ( a )
	local i = 0
	if b == 1 then

		SetChaKitbagChange ( role , 0 )
		i = SetItemAttr ( role_RYZ ,attrtype , attr_num )

		if i == 0 then
			LG("RYZ_PK","Increase Party Contribution value failed")
			return
		end
		SynChaKitbag ( role , 7 )
	
		SystemNotice ( role ,"Obtain "..add_num.." point(s) of Team Contribution point")
	end
end

	

--耐久系统--------------------------------------------

--扣除攻击者武器耐久

function Take_Atk_ItemURE ( role )
--	SystemNotice( role ,"deducts attacker weapon durability")
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 1 and boat == 0 then					---怪和船不扣
--		SystemNotice ( role ,"starts to deduct")
		local Item_1 = 0
		local Item_2 = 0
		Item_1 = GetChaItem ( role , 1 , 6 )
		Item_2 = GetChaItem ( role , 1 , 9 )
		
		local Item_URE = 0
		local Take_Num = 1
		local i = 0
		local Item1_Type = Check_Repair_ItemType ( Item_1 )
		local Item2_Type = Check_Repair_ItemType ( Item_2 )
		
		if Item_1 ~= 0 and Item_1 ~= nil then
--			SystemNotice (role , "Left hand")
			local a = 0.03
			local b = Percentage_Random (a)
			
			if b == 1 and Item1_Type == 1 then
--				SystemNotice (role , "start to deduct left hand")
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","Weapon imbue failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 6 , 0 )
				end
			end
		end
		
		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_2 ~= 0 and Item_2 ~= nil then
--			SystemNotice ( role ,"Right hand")
			local a = 0.03
			local b = Percentage_Random (a)
			if b == 1 and Item2_Type == 1 then
--				SystemNotice(role ,"start to deduct right hand")
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","Weapon imbue failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 9 , 0 )
				end
			end
		end
	end


	
end

--扣除受击者防具耐久

function Take_Def_ItemURE ( role )
	local def = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if def == 1 and boat == 0 then						--怪和船不扣
		local Item_1 = 0
		local Item_2 = 0
		local Item_3 = 0
		local Item_4 = 0

		Item_1 = GetChaItem ( role , 1 , 0 )
		Item_2 = GetChaItem ( role , 1 , 2 )
		Item_3 = GetChaItem ( role , 1 , 3 )
		Item_4 = GetChaItem ( role , 1 , 4 )
		
		local Item_URE = 0
		local Take_Num = 1
		local i = 0

		if Item_1 ~= 0 and Item_1 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 0 , 0 )
				end
			end
		end
		
		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_2 ~= 0 and Item_2 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				
				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 2 , 0 )
				end
			end
		end

		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_3 ~= 0 and Item_3 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_3 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				
				i = SetItemAttr ( Item_3 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end

				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 3 , 0 )
				end
			end
		end

		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_4 ~= 0 and Item_4 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_4 , ITEMATTR_URE )
				
				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				

				i = SetItemAttr ( Item_4 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","add armor attribute failed")
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 4 , 0 )
				end
			end
		end
	end
end

--正常死亡时扣除耐久
function Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	
	Dead_Punish_Item_Num = 5							--要扣除的装备位置
	
	local Dead_Punish_Item_WZ = { }
	Dead_Punish_Item_WZ [0] = 0
	Dead_Punish_Item_WZ [1] = 2
	Dead_Punish_Item_WZ [2] = 3
	Dead_Punish_Item_WZ [3] = 4
	Dead_Punish_Item_WZ [4] = 6
	Dead_Punish_Item_WZ [5] = 9

	local Dead_Punish_Item = { }
	Dead_Punish_Item [0] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [0] )
	Dead_Punish_Item [1] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [1] )
	Dead_Punish_Item [2] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [2] )
	Dead_Punish_Item [3] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [3] )
	Dead_Punish_Item [4] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [4] )
	Dead_Punish_Item [5] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [5] )

	if Player == 1 and boat == 0 then						--怪和船不扣
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								--装备有效标记
		for j = 0 , Dead_Punish_Item_Num , 1 do
				
			if Dead_Punish_Item[j] ~= 0 and Dead_Punish_Item[j] ~= nil then
				
				local ItemType_Check = Check_Repair_ItemType ( Dead_Punish_Item[j] )
				if ItemType_Check == 1 then
					Item_URE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					
					if Item_URE >= 50 then
						k = 1
					end

					Item_URE = Item_URE - Take_Num
					
					if Item_URE < 50 then
						Item_URE = 49
						
					end
					
					i = SetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
						LG("Item_URE","Normal death deducts attribute failed"..j)
					end
					
					
					
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end


				end
				
			end
		end
		SystemNotice ( role , "Death: 5% penalty off durability of equipment" )
	end

end

--PK时死亡扣除耐久

function PK_Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	PK_Dead_Punish_Item_Num = 5							--要扣除的装备位置
	
	local PK_Dead_Punish_Item_WZ = { }
	PK_Dead_Punish_Item_WZ [0] = 0
	PK_Dead_Punish_Item_WZ [1] = 2
	PK_Dead_Punish_Item_WZ [2] = 3
	PK_Dead_Punish_Item_WZ [3] = 4
	PK_Dead_Punish_Item_WZ [4] = 6
	PK_Dead_Punish_Item_WZ [5] = 9

	local PK_Dead_Punish_Item = { }
	PK_Dead_Punish_Item [0] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [0] )
	PK_Dead_Punish_Item [1] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [1] )
	PK_Dead_Punish_Item [2] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [2] )
	PK_Dead_Punish_Item [3] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [3] )
	PK_Dead_Punish_Item [4] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [4] )
	PK_Dead_Punish_Item [5] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [5] )
	if Player == 1 and boat == 0 then						--怪和船不扣
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								--装备有效标记
		for j = 0 , PK_Dead_Punish_Item_Num , 1 do
				
			if PK_Dead_Punish_Item[j] ~= 0 and PK_Dead_Punish_Item[j] ~= nil then
				local ItemType_Check = Check_Repair_ItemType ( PK_Dead_Punish_Item[j] )
				
				if ItemType_Check == 1 then

					Item_URE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					
					if Item_URE >= 50 then
						k = 1
					end

					Item_URE = Item_URE - Take_Num
					if Item_URE < 50 then
						Item_URE = 49
						
					end

					i = SetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
						LG("Item_URE","Normal death deducts attribute failed"..j)
					end
					
					
					
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end
				end
				
			end
		end
		SystemNotice ( role , "PK death penalty: Item durability dropped by 5%" )
	end
end



--检测道具是否可修理
function can_repair_item ( role_repair , role_want_repair , Item )
	local Check = 0
	local Sklv = 1
	Check = can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	return Check

end

--检测是否可修理主函数

function can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	--	SystemNotice( role_want_repair , "Starts can_repair_item")
	local re_type = IsPlayer ( role_repair )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
	
	
--	SystemNotice ( role_want_repair , "Item_MAXURE= "..Item_MAXURE)
--	SystemNotice ( role_want_repair , "Item_URE= "..Item_URE)

--	SystemNotice ( role_want_repair , "requires gold"..Money_Need )
	
	if Item_MAXURE <= 2500 then
		SystemNotice( role_want_repair , "Items durability too low. Unable to repair" )
		return 0
	end
	if Item_MAXURE == Item_URE then								--耐久太低，耐久未消耗不能修
		SystemNotice( role_want_repair , "Full durability. No need to repair")
		return 0
	end

	if Money_Have < Money_Need then								--没钱不能修
		SystemNotice( role_want_repair , "Insufficient gold. Unable to repair")
		return 0
	end

--	if re_type == 1 then
--		LG("Item_URE","Repair is human?")
--		return 0
--	end
	
	local i = 0
	i = Check_Repair_ItemType ( Item )
	if i == 1 then
		return 1
	end
	SystemNotice( role_want_repair , "Non-repairable item")

	return 0
end


--取道具修理费用
function get_item_repair_money ( Item )
	local Money = 0
	local Sklv = 1
	Money = get_item_repair_moneyLua ( Item , Sklv )
	
	if Money < 1 then
		Money = 1
	end

	return Money
	
end

--取道具修理费用主函数
function get_item_repair_moneyLua ( Item , Sklv )
	local Item_Lv = GetItemLv ( Item )
	local RepairPoint = math.floor ( math.pow(( Item_Lv / 10 ) , 1.7 )) - 1
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )

	local URE_repair = math.floor ( Item_MAXURE / 50 ) - math.floor ( Item_URE / 50 )
	local Money_Need = math.max ( ( URE_repair * RepairPoint ) , 1 )
	return Money_Need
end

--开始修理道具
function begin_repair_item ( role_repair , role_want_repair , Item )
	local Sklv = 1
	begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
end

--开始修理主函数
function begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
--	SystemNotice( role_want_repair , "Start repairing items")
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
--	SystemNotice ( role_want_repair , "Money_Have = "..Money_Have)
--	SystemNotice ( role_want_repair , "deducts gold "..Money_Need)
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role_want_repair , ATTR_GD )
	ALLExAttrSet( role_want_repair )
--	SystemNotice ( role_want_repair , "Gold Deducted: " )
--	local a = 1
--	local b = 1
	local i = 0
	local j = 0
	
	
--	local URE_NeedRepair = ( Item_MAXURE - Item_URE ) - ( Item_MAXURE * 0.05 )
	
--	if URE_NeedRepair <= 0 then
--		b = 1
--	end

--	if b == 1 then
	Item_URE = Item_MAXURE
	i = SetItemAttr ( Item , ITEMATTR_URE , Item_URE )

	if i == 0 then 
		LG("Item_URE","Repair durability failed")
	end
	SystemNotice( role_want_repair ,"Repair completed" )
--	else
--		local New_Item_MAXURE = math.floor ( Item_MAXURE * 0.95 )
--		i = SetItemAttr ( Item , ITEMATTR_URE , New_Item_MAXURE )
--		j = SetItemAttr ( Item , ITEMATTR_MAXURE , New_Item_MAXURE )
--		SystemNotice ( role_want_repair , "Repair completed" )
--		SystemNotice ( role_want_repair , "Very sorry, some part of durability cannot be restored. Maximum durability reduced to" )
--		if i == 0 then
--			LG("Item_URE","repair failed repair durability failed")
--		end
--		if j == 0 then
--			LG("Item_URE","repair failed repair max durability failed")
--		end
--	end
	return 1
end


--判断是否为可修理的装备类型
function Check_Repair_ItemType ( Item )
	local Item_Type = GetItemType ( Item )
--	SystemNotice ( role_want_repair , "Item Type="..Item_Type )
	local i = 0
	for i = 0 , Item_CanRepair_Num , 1 do
		if Item_CanRepair_ID [i] == Item_Type then
			return 1
		end
	end
	return 0
end


-----精炼系统32位数字拆解----------------

--读取部分
function GetNum_Part1 ( Num )
	local a = 0
	a = math.floor ( Num / 1000000000 )
	return a
end

function GetNum_Part2 ( Num )
	local a = 0
	local b = 0
	a = Num - GetNum_Part1 ( Num ) * 1000000000
	b = math.floor ( a / 10000000 )
	return b
end

function GetNum_Part3 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10000000 ) * 10000000
	b = math.floor ( a / 1000000 )
	return b
end

function GetNum_Part4 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000000 ) *1000000
	b = math.floor ( a / 10000 )
	return b
end

function GetNum_Part5 ( Num )
	local a = 0
	local b = 0
	a = Num -  math.floor ( Num / 10000 ) * 10000
	b = math.floor ( a / 1000 )
	return b
end

function GetNum_Part6 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000 ) *1000
	b = math.floor ( a / 10 )
	return b
end

function GetNum_Part7 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10 ) *10
	b = math.floor ( a / 1 )
	return b
end

-- function GetNum_Test ( Num )
--	local a = 0
--	Notice ( "This is a testing message from Mars. Please be calm" )
--	Notice ( "Test value as"..Num )
--	a = GetNum_Part1( Num )
--	Notice ( " test numeric part 1"..a)
--	a = GetNum_Part2( Num )
--	Notice ( " test numeric part 2 = "..a)
--	a = GetNum_Part3( Num )
--	Notice ( " test numeric part 3"..a)
--	a = GetNum_Part4( Num )
--	Notice ( " test numeric part 4 = "..a)
--	a = GetNum_Part5( Num )
--	Notice ( " test numeric part 5"..a)
--	a = GetNum_Part6( Num )
--	Notice ( " test numeric part 6 = "..a)
--	a = GetNum_Part7( Num )
--	Notice ( " test value part 7"..a)
-- end


--写入部分

function SetNum_Part1 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part1 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000000
	return Num
end

function SetNum_Part2 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part2 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000000
	return Num
end

function SetNum_Part3 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part3 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000
	return Num
end

function SetNum_Part4 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part4 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000
	return Num
end

function SetNum_Part5 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part5 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000
	return Num
end

function SetNum_Part6 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part6 ( Num )
	b = Part_Num - a
	Num = Num + b * 10
	return Num
end

function SetNum_Part7 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part7 ( Num )
	b = Part_Num - a
	Num = Num + b * 1
	return Num
end


--function SetNum_Test ( Num )
--	local a = 0
--	Notice ( "This is testing from Mars. Please be calm" )
--	Notice ( "Test value as"..Num)
--	Num = SetNum_Part1 ( Num , 0 )
--	Notice ( "changed part one to"..Num )
--	Num = SetNum_Part2 ( Num , 12 )
--	Notice ( "edit part 2 as"..Num )
--	Num = SetNum_Part3 ( Num , 3 )
--	Notice ( "edit part 3 to"..Num )
--	Num = SetNum_Part4 ( Num , 45 )
--	Notice ( "edit part 4 as"..Num )
--	Num = SetNum_Part5 ( Num , 6 )
--	Notice ( "edit part 5 as"..Num )
--	Num = SetNum_Part6 ( Num , 78 )
--	Notice ( "edit part 6 as"..Num )
--	Num = SetNum_Part7 ( Num , 9 )
--	Notice ( "changed part 7 as"..Num )
--end



--精炼内容初始化--

function SetItemForgeParam_MonsterBaoliao ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Monster [j] then 
			k = j
			a = 200
		end
	end

	if k > MaxHole then
		k = MaxHole
	end
	
--	if k <= 1 then
--		k = 1
--	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end

	Num = SetNum_Part1 ( Num , k )
	  
--	Notice(Num)
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_PlayerHecheng ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Hecheng [j] then 
			k = j
			a = 200
		end 
	end 
	
 	if k > MaxHole then
		k = MaxHole
	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end


	Num = SetNum_Part1 ( Num , k ) 
	 
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_QuestAward ( item , Num , item_event )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Mission_1 [j] then 
			k = j
			a = 200
		end 
	end 
	
  	if k > MaxHole then
		k = MaxHole
	end

	if item_event == QUEST_AWARD_SDJ then
		if k == 0 then
			k = 1
		end
	end

	if item_event == QUEST_AWARD_SCBOX then
		k = 2
	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end

	Num = SetNum_Part1 ( Num , k ) 

	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_Npc_Sale ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
--	local ItemID = GetItemID ( Item )
--	local MaxHole = GetItemHoleNum ( ItemID )

--	for j = 0 , 3 , 1 do 
--		if a <= Item_HoleNum_Monster [i] then 
--			k = i
--			a = 200
--		end
--	end

--	if k > MaxHole then
--		k = MaxHole
--	end

	Num = SetNum_Part1 ( Num , k )
	  
--	Num = 2011000000
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end

end


--公会竞标相关内容

--取目前备战公会名次

function GetFightGuildLevel()
--	比较时间，返回level
--	在此插入时间比较，确定GuildLevel
	local Lv = 0
	local Now_Week = GetNowWeek()
	local Now_Time = GetNowTime()
	local CheckNum = Now_Week * 100 + Now_Time
	if CheckNum >= 422 and CheckNum < 522 then
		Lv = 2
	elseif CheckNum >= 522 and CheckNum < 622 then
		Lv = 1
	elseif CheckNum >= 622 and CheckNum < 700 then
		Lv = 3
	elseif CheckNum >= 0 and CheckNum < 22 then
		Lv = 3
	end

	return Lv
end


--取挑战双方的工会编号
--参数：挑战等级
--返回值：擂主工会编号，挑战工会方工会编号
function GetFightGuildID( GuildLevel )
	local RedSide = 0
	local BlueSide = 0
	RedSide , BlueSide = GetChallengeGuildID ( GuildLevel )
	return RedSide,BlueSide
end

--取现在星期几
function GetNowWeek ( )
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	return Now_WeekNum
end

--取现在是几点
function GetNowTime ( )
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	return NowTimeNum
end


--年兽套装判断

function CheckItem_Nianshou ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	local head = GetChaItem ( role , 1 , 0 )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )

	if Body_ID ~= 0825  and Body_ID ~= 2549 then
		return 0
	end

	if Hand_ID ~= 0826  and Hand_ID ~= 2550 then
		return 0
	end

	if Foot_ID ~= 0827  and Foot_ID ~= 2551 then
		return 0
	end

	if Cha_Num == 4 then
		if Head_ID ~= 0828  and Head_ID ~= 2552 then
			return 0
		end
	end

	return 1
end

function CheckItem_Heilong ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )

	if Body_ID ~= 0845 and Body_ID ~= 2367 then
		return 0
	end

	if Hand_ID ~= 0846 and Hand_ID ~= 2368 then
		return 0
	end

	if Foot_ID ~= 0847 and Foot_ID ~= 2369 then
		return 0
	end

	return 1
end

---检测海盗套装
function CheckItem_pirate ( role )

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 2530 and body_gem_id ~= 2533 and body_gem_id ~= 2536 and body_gem_id ~= 2539 and body_gem_id ~= 2542 and body_gem_id ~= 2545 then
	   return 0
        end
	if hand_gem_id ~= 2531 and hand_gem_id ~= 2534 and hand_gem_id ~= 2537 and hand_gem_id ~= 2540 and hand_gem_id ~= 2543 and hand_gem_id ~= 2546 then
	   return 0
	end
	if foot_gem_id ~= 2532 and foot_gem_id ~= 2535 and foot_gem_id ~= 2538 and foot_gem_id ~= 2541 and foot_gem_id ~= 2544 and foot_gem_id ~= 2547 then 
           return 0
	end	
	return 1
end
---检测75BOSS
function CheckItem_Death ( role )

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
       if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
		body_gem_id=Body_ID
		hand_gem_id=Hand_ID
		foot_gem_id=Foot_ID
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
		   return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
		   return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
		   return 0
		end
	else
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
		   return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
		   return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
		   return 0
		end	 
	end
	return 1
end
--乱斗之装

function CheckItem_fighting ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 1124 then
	   return 0
        end
	if hand_gem_id ~= 1125 then
	   return 0
	end
	if foot_gem_id ~= 1126  then 
           return 0
	end
	 
	return 1
end
---算命系统-------------------------------------------------

---求财---------------------

function Suanming_Money ( role )
	local a = CheckSuanmingType ( role )			--检测抽得的什么签
	if a == 1 then
		SystemNotice ( role , "Lady Luck shines on you! You have obtained the best Lot!" )
		ShangShangQian_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "Seems to be lucky today. You have obtained a good Lot" )
		ShangQian_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
--		SystemNotice ( role , "Today looks good. Nothing special has happened" )
	elseif a == 4 then
		SystemNotice ( role , "Very unlucky. You have obtained a bad Lot" )
		XiaQian_Money ( role )
	elseif a == 5 then
		SystemNotice ( role , "Oh dear! Bad luck has befallen you! You have obtained the worst Lot!" )
		XiaXiaQian_Money ( role )
	end
end

---求事业-------------------

function Suanming_Work ( role )
	local a = CheckSuanmingType ( role )
	if a == 1 then
		SystemNotice ( role , "Lady Luck shines on you! You have obtained the best Lot!" )
		ShangShangQian_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "Seems to be lucky today. You have obtained a good Lot" )
		ShangQian_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
--		SystemNotice ( role , "Today looks good. Nothing special has happened" )
	elseif a == 4 then
		SystemNotice ( role , "Very unlucky. You have obtained a bad Lot" )
		XiaQian_Work ( role )
	elseif a == 5 then
		SystemNotice ( role , "Oh dear! Bad luck has befallen you! You have obtained the worst Lot!" )
		XiaXiaQian_Work ( role )
	end
end


--检测抽得的什么签

function CheckSuanmingType ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 35
	qian [2] = 55
	qian [3] = 85
	qian [4] = 100

	for i = 0 , 4 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	return b

end

--财运上上签

function ShangShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 50
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 5 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Obtain some Gold by luck"..GiveMoneyNum_Notice.."% of extra gold" )
		QianAddMoney ( role , 1 , GiveMoneyNum )							----给钱，1为按比例，2为按固定数值
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "Recieved blessing from Goddess Kara. Current region obtained "..time_Bei.."minutes of bonus increased drop rate" )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							---给宝图
	end
end

--财运上签

function ShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 60
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	
	if b == 1 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Obtain some Gold by luck"..GiveMoneyNum_Notice.."% of extra gold" )
		QianAddMoney ( role , 1 , GiveMoneyNum )
	elseif b == 2 then
		local Give_Money = 1000 * math.random ( 1 , 15 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 3 then
		local hp_role = Hp( role )
		local hp_dmg = math.floor ( hp_role * 0.9 )
		local Give_Money = math.random ( 10000 , 20000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "Smash by some gold coins. Almost die…Who throw these coins!" )
	end
end

--财运中签

function ZhongQian_Money ( role )
	SystemNotice ( role , "Today is so boring…nothing ever happens..." )
end


--财运下签

function XiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Give_Money = math.random ( 100 , 5000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Accidentally loses"..GiveMoneyNum_Notice.."% of gold" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
	
end

--财运下下签

function XiaXiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Give_Money = math.random ( 10000 , 30000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 2 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Accidentally loses"..GiveMoneyNum_Notice.."% of gold" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
end

--事业上上签

function ShangShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 50
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveExpNum = 0.01 * math.random ( 1 , 5 )
		local GiveExpNum_Notice = GiveExpNum * 100
		SystemNotice ( role , "Accidentally obtained "..GiveExpNum_Notice.."% EXP" )
		QianAddExp ( role , GiveExpNum , 1 )							----给经验，参数2为当前等级经验的百分比或具体数字，参数3为类型(1为按比例,2为按数量)
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "Recieved blessing from Goddess Kara. Current region obtained "..time_Bei.."minutes of bonus experience increase" )
	elseif b == 3 then
		QianAddState ( role , 1 )								-----加状态，1 为上上签状态，2为上签状态
	end
end

--事业上签

function ShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
--	qian [1] = 40
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 50 , 500 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

--事业中签

function ZhongQian_Work ( role )
	SystemNotice ( role , "Today is so boring…nothing ever happens..." )
end

--事业下签

function XiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
--	qian [1] = 40
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 50 , 500 )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

--事业下下签

function XiaXiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 70
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveExpNum = 0.01 * math.random ( 1 , 2 )
		local GiveExpNum_Notice = GiveExpNum * 100
		SystemNotice ( role , "Accidentally lost "..GiveExpNum_Notice.."% EXP" )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 1 )							----给经验，参数2为当前等级经验的百分比或具体数字，参数3为类型(1为按比例,2为按数量)
	elseif b == 2 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 3 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 1.1 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "Character burst and strucked by lightning...." )
	end
end

--抽到钱

function QianAddMoney ( role , Type , Num )
	if Type == 1 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Money_Have * Num

		Money_Have = Money_Have + Money_Add
		Money_Add = math.floor( Money_Add )

		Money_Have = math.floor ( Money_Have )

		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		
		if Money_Add > 0 then
			Num = Num * 100
			SystemNotice ( role , "God of Wealth drops a a bag of gold coins into your coin pouch"..Num.."% of your gold" )
			if Money_Add >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				
			end
		elseif Money_Add < 0 then
			Num = Num * -100
			SystemNotice ( role , "God of Misfortune struck you! Loses"..Num.."% gold" )
		end
	
	elseif Type == 2 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Num

		Money_Have = Money_Have + Money_Add

		if Money_Have < 0 then
			Money_Have = 0
		end

		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		if Num > 0 then
			SystemNotice ( role , "Found"..Num.."G" )
			if Num >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				
			end
		elseif Num < 0 then
			Num = Num * -1
			SystemNotice ( role , "You found out that you have lost"..Num.."G" )
		end
	end
end

--抽到经验

function QianAddExp ( role , Num , type )
	local lv = GetChaAttr( role, ATTR_LV )
	local exp = Exp(role) 
	local nlexp = GetChaAttrI ( role , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( role , ATTR_CLEXP )
	local ThisLvexp = nlexp - clexp
	local ExpGet = ThisLvexp * Num
	
	if type == 2 then
		ExpGet = Num
		if lv >= 80 then
			ExpGet = math.floor ( ExpGet / 50 )
		end
	end

	ExpGet = math.floor ( ExpGet )

	exp = exp + ExpGet
	
	if exp > nlexp then
		exp = nlexp + math.floor ( ( exp - nlexp ) / 50 )
	end
	
	if exp < 0 then
		exp = 0
	end

	
	SetChaAttrI( role , ATTR_CEXP , exp )

	if lv >= 80 then
			ExpGet = ExpGet * 50
	end

	if ExpGet > 0 then
		
		SystemNotice ( role , "Accidentally obtained "..ExpGet.."EXP" )
		if ExpGet >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				
		end
	elseif ExpGet < 0 then
		ExpGet = ExpGet * -1
		SystemNotice ( role , "Experience lost: "..ExpGet.."EXP" )
	end

end

--抽到状态

function QianAddState ( role , Type )

	local State = { }
	local StateName = { }

	State [0] = STATE_PKZDYS
	State [1] = STATE_PKSFYS
	State [2] = STATE_PKMNYS
	State [3] = STATE_PKJZYS
	State [4] = STATE_PKKBYS
	
	StateName [0] = "Attack"
	StateName [1] = "Defense"
	StateName [2] = "Max HP"
	StateName [3] = "Hit Rate"
	StateName [4] = "Attack Speed"

	local i = math.random ( 0 , 4 )
	local statelv = 0
	local TimeRange = 0
	if Type == 1 then
		TimeRange = 60
	elseif Type == 2 then
		TimeRange = 30
	end
	local statetime = math.random ( 1 , TimeRange )
	statetime = statetime * 60
	
	statelv = 10
	AddState ( role , role , State[i] , statelv , statetime ) 
	SystemNotice ( 	role , "You sense that your "..StateName[i].."increased" )
	
end


--宝图给道具

function GiveGoldenMapItem ( role )
	local CheckRandom = math.random ( 1,100 )
	if CheckRandom >= 1 and CheckRandom <= 23 then
		local GiveMoney = 1000 * math.random ( 1, 20 )
		SystemNotice ( role , "Dug out pirates treasure. Obtained"..GiveMoney.."G" )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 23 and CheckRandom <= 28 then
		XianJing ( role , 1 )
	elseif CheckRandom > 28 and CheckRandom <= 33 then
		XianJing ( role , 2 )
	elseif CheckRandom > 33 and CheckRandom <= 40 then
		SystemNotice ( role , "Today seems to be spining about. Don't know where it will spin to" )
		MapRandomtele ( role )
	else
		SystemNotice ( role , " dug out a hidden pirate treasure" )
		local item_type = BaoXiang_CBTBOX
		local item_type_rad = BaoXiang_CBTBOX_Rad 
		local item_type_count = BaoXiang_CBTBOX_Count 
		local maxitem = BaoXiang_CBTBOX_Mxcount						-- 终结编号
		local item_quality = BaoXiang_CBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
	
		for i = 1 , maxitem , 1 do 
			General = item_type_rad [ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local c = -1							--命中物品编号
		for k = 1 , maxitem , 1 do				-- 随机出添加的前缀编号

			d = item_type_rad [ k ] + b

			 if a <= d and a > b then
				c = k
				break 
			end 
			b = d 

		end 
		if c == -1 then 
			ItemId = 3124 
		else 
			ItemId = item_type [c]  
			ItemCount = item_type_count [c] 
		end 
		GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		local GoodItem = {}
		GoodItem[0]	=	0110
		GoodItem[1]	=	0112
		GoodItem[2]	=	0114
		GoodItem[3]	=	0116
		GoodItem[4]	=	0118
		GoodItem[5]	=	0120
		GoodItem[6]	=	0151
		GoodItem[7]	=	0396
		GoodItem[8]	=	0398
		GoodItem[9]	=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	0760
		GoodItem[31]	=	0824
		GoodItem[32]	=	0860
		GoodItem[33]	=	0861
		GoodItem[34]	=	0862
		GoodItem[35]	=	0863

		local Good_C = 0
		for Good_C = 0 , 35 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.."Dug out a treasure and obtained"..itemname  
				Notice ( message )
			end
		end
	end
				

end
------加勒比海盗藏宝图给道具
function GiveGoldenMapItem_JLB ( role )
	local CheckRandom = math.random ( 1,100 )
	local x, y = GetChaPos(role)
	local lv= GetChaAttr(role, ATTR_LV) 
	local a=math.floor ( lv / 5 ) + 826
	local b=math.floor ( lv / 5 ) + 828
	local monserID=math.random(a,b)				--------随机藏宝图怪829到836
	if CheckRandom >= 1 and CheckRandom <= 20 then
		local GiveMoney = 10000 * math.random ( 1, 20 )
		SystemNotice ( role , "Dug out Caribbean Treasure and obtain "..GiveMoney.."G" )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 20 and CheckRandom <= 24 then
		XianJing ( role , 1 )
	elseif CheckRandom > 24 and CheckRandom <= 28 then
		XianJing ( role , 2 )
	elseif CheckRandom > 28 and CheckRandom <= 33 then
		SystemNotice ( role , "Today seems to be spining about. Don't know where it will spin to" )
		MapRandomtele ( role )
	elseif CheckRandom > 33 and CheckRandom <= 40 then
		SystemNotice ( role , "Oh no! Who let the dogs out! Help..." )
		local new1 = CreateCha(monserID, x, y, 145, 30)
		SetChaLifeTime(new1, 90000)
	else
		SystemNotice ( role , " dug out a hidden pirate treasure" )
		local item_type = BaoXiang_JLBCBTBOX
		local item_type_rad = BaoXiang_JLBCBTBOX_Rad 
		local item_type_count = BaoXiang_JLBCBTBOX_Count 
		local maxitem = BaoXiang_JLBCBTBOX_Mxcount						-- 终结编号
		local item_quality = BaoXiang_JLBCBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
	
		for i = 1 , maxitem , 1 do 
			General = item_type_rad [ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local c = -1							--命中物品编号
		for k = 1 , maxitem , 1 do				-- 随机出添加的前缀编号

			d = item_type_rad [ k ] + b

			 if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then 
			ItemId = 3124 
		else 
			ItemId = item_type [c]  
			ItemCount = item_type_count [c] 
		end 
		GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		local GoodItem = {}
		GoodItem[0]	=	0110
		GoodItem[1]	=	0112
		GoodItem[2]	=	0114
		GoodItem[3]	=	0116
		GoodItem[4]	=	0118
		GoodItem[5]	=	0120
		GoodItem[6]	=	0151
		GoodItem[7]	=	0396
		GoodItem[8]	=	0398
		GoodItem[9]	=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	0760
		GoodItem[31]	=	0824
		GoodItem[32]	=	0860
		GoodItem[33]	=	0861
		GoodItem[34]	=	0862
		GoodItem[35]	=	0863

		local Good_C = 0
		for Good_C = 0 , 35 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.."Dug out a treasure and obtained"..itemname  
				Notice ( message )
			end
		end
	end
				

end

--检测坐标

function CheckGetMapPos ( role , pos_x , pos_y , MapName )
--	SystemNotice ( role , "CheckPos" )
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat ~= nil then
		role = Cha_Boat
	end

	local Cha_pos_x , Cha_pos_y = GetChaPos ( role )
	local map_name = GetChaMapName ( role )

	local Cha_x_min = pos_x * 100 - 400
	local Cha_x_max = pos_x * 100 + 400
	local Cha_y_min = pos_y * 100 - 400
	local Cha_y_max = pos_y * 100 + 400

	if map_name ~= MapName then
--		SystemNotice ( role , "map_name"..map_name)
--		SystemNotice ( role , "MapName"..MapName )
--		SystemNotice ( role , "mapname Error" )
		return 0 
	end 

	if Cha_pos_x < Cha_x_min or Cha_pos_x > Cha_x_max then
	
		return 0
	end

	if Cha_pos_y < Cha_y_min or Cha_pos_y > Cha_y_max then
		return 0
	end

	return 1
end
	
--特殊算命

---求财---------------------

function SuanmingTeshu_Money ( role )
	local a = CheckSuanmingTypeTeshu ( role )			--检测抽得的什么签
	if a == 1 then
		SystemNotice ( role , "Lady Luck shines on you! You have obtained the best Lot!" )
		ShangShangQianTeshu_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "Seems to be lucky today. You have obtained a good Lot" )
		ShangQianTeshu_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
--		SystemNotice ( role , "Today looks good. Nothing special has happened" )

	end
end

---求事业-------------------

function SuanmingTeshu_Work ( role )
	local a = CheckSuanmingTypeTeshu ( role )
	if a == 1 then
		SystemNotice ( role , "Lady Luck shines on you! You have obtained the best Lot!" )
		ShangShangQianTeshu_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "Seems to be lucky today. You have obtained a good Lot" )
		ShangQianTeshu_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
--		SystemNotice ( role , "Today looks good. Nothing special has happened" )
	end
end

--特殊检测
function CheckSuanmingTypeTeshu ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 80
	qian [2] = 100
	
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	return b

end

--特殊财运上上签

function ShangShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 5
	qian [1] = 60
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveMoneyNum = 10000 * math.random ( 10 , 100 )
		QianAddMoney ( role , 2 , GiveMoneyNum )							----给钱，1为按比例，2为按固定数值
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "Recieved blessing from Goddess Kara. Current region obtained "..time_Bei.."minutes of bonus increased drop rate" )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							---给宝图
	end
end

--特殊财运上签

function ShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 60
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	
	if b == 1 then
		local Give_Money = 1000 * math.random ( 1 , 20 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		local Give_Money = math.random ( 10000 , 30000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "Smash by some gold coins. Almost die…Who throw these coins!" )
	end
end


--特殊事业上上签

function ShangShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 60
	qian [2] = 90
	qian [3] = 100
--	qian [4] = 100

	for i = 0 , 3 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = ( Lv_role * Lv_role * math.random ( 10 , 100 ) ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "Recieved blessing from Goddess Kara. Current region obtained "..time_Bei.."minutes of bonus experience increase" )
	elseif b == 3 then
		QianAddState ( role , 1 )								-----加状态，1 上上签状态，2上签状态
	elseif b == 4 then
		QianAddState ( role , 1 )								-----加状态，1 上上签状态，2上签状态
		--QianAddStatePoint ( role , 1 )
	end
end

--特殊事业上签

function ShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 50
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * Lv_role * math.random ( 5 , 50 ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 2 then
		QianAddState ( role , 2 )
	end
end

--增加属性点
function QianAddStatePoint ( role , Num )
	local CheckNum = CheckStatePointHasGet ( role )
	local a = 1 / math.pow ( 2 , ( CheckNum - 1 ) )
	local check = Percentage_Random ( a )
	if check == 1 then
		local attr_ap = Attr_ap( role )
		local ap_extre = Num
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
		local cha_name = GetChaDefaultName ( role )
		
		LG ( "Add_StatePoint" , cha_name.."Obtained Attributes point:"..Num.."point" )
	else
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

--检测额外角色属性点
function CheckStatePointHasGet ( role )
	local str = GetChaAttr( role , ATTR_BSTR )
	local con = GetChaAttr( role , ATTR_BCON )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
	local StatePointTotal_Have = str + con + agi + dex + sta + ap - 25
	local Lv_role = Lv ( role )
	local StatePointTotal = 3 + Lv_role + math.floor ( Lv_role / 10 ) * 4 + math.max ( 0 , ( Lv_role - 59 ) )
	local Check = StatePointTotal_Have - StatePointTotal
	return Check
end

--取宝图坐标

function GetTheMapPos ( role , type )
--	SystemNotice( role ,"GetTheMapPos" )
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local PosDateNum = 8
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1
	PosDateMap [4]	=	2
	PosDateMap [5]	=	3
	PosDateMap [6]	=	1
	PosDateMap [7]	=	2
	PosDateMap [8]	=	1

	PosDateMax_X [0]	=	800
	PosDateMax_X [1]	=	940
	PosDateMax_X [2]	=	1023
	PosDateMax_X [3]	=	1012
	PosDateMax_X [4]	=	850
	PosDateMax_X [5]	=	2810
	PosDateMax_X [6]	=	380
	PosDateMax_X [7]	=	1420
	PosDateMax_X [8]	=	1614

	PosDateMin_X [0]	=	700
	PosDateMin_X [1]	=	840
	PosDateMin_X [2]	=	919
	PosDateMin_X [3]	=	912
	PosDateMin_X [4]	=	750
	PosDateMin_X [5]	=	2710
	PosDateMin_X [6]	=	280
	PosDateMin_X [7]	=	1320
	PosDateMin_X [8]	=	1514

	PosDateMax_Y [0]	=	1766
	PosDateMax_Y [1]	=	1350
	PosDateMax_Y [2]	=	1054
	PosDateMax_Y [3]	=	2950
	PosDateMax_Y [4]	=	3083
	PosDateMax_Y [5]	=	691
	PosDateMax_Y [6]	=	1725
	PosDateMax_Y [7]	=	3000
	PosDateMax_Y [8]	=	2695

	PosDateMin_Y [0]	=	1666
	PosDateMin_Y [1]	=	1250
	PosDateMin_Y [2]	=	1017
	PosDateMin_Y [3]	=	2850
	PosDateMin_Y [4]	=	2982
	PosDateMin_Y [5]	=	591
	PosDateMin_Y [6]	=	1675
	PosDateMin_Y [7]	=	2900
	PosDateMin_Y [8]	=	2615


	local PosDateGet = math.random ( 0 , PosDateNum )
--	SystemNotice ( role , "PosDateGet"..PosDateGet )

	local Pos_Map = PosDateMap[ PosDateGet ]
--	SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
--	SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
--	SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end
--取加勒比地图宝图坐标
function GetTheMapPos_JLB ( role , type )
	local MapList = { }
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"

	local PosDateNum = 3
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1

	PosDateMax_X [0]	=	476 
	PosDateMax_X [1]	=	460 
	PosDateMax_X [2]	=	469 
	PosDateMax_X [3]	=	477 

	PosDateMin_X [0]	=	466
	PosDateMin_X [1]	=	452
	PosDateMin_X [2]	=	462
	PosDateMin_X [3]	=	470

	PosDateMax_Y [0]	=	1052
	PosDateMax_Y [1]	=	980
	PosDateMax_Y [2]	=	1000
	PosDateMax_Y [3]	=	1048

	PosDateMin_Y [0]	=	1000 
	PosDateMin_Y [1]	=	954  
	PosDateMin_Y [2]	=	980  
	PosDateMin_Y [3]	=	1036 

----596,609
----629,953
	local PosDateGet = math.random ( 0 , PosDateNum )
	local Pos_Map = PosDateMap[ PosDateGet ]
	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
	return Pos_X , Pos_Y , Pos_Map
end



--陷阱

function XianJing ( role ,type )
	if type == 1 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "Seriously injured by traps laid by pirates" ) 
	elseif type == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.3 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "Almost poisoned by pirate trap. Escaped in time…Luckily" )
	end
end

function MapRandomtele ( role )

	local Birth ={}
	Birth[0]	=	"Argent City"
	Birth[1]	=	"Thundoria Castle"
	Birth[2]	=	"Shaitan City"
	Birth[3]	=	"Icicle Castle"
	Birth[4]	=	"Chaldea Haven"
	Birth[5]	=	"Andes Forest Haven"
	Birth[6]	=	"Abandon Mine Haven"
	Birth[7]	=	"Rockery Haven"
	Birth[8]	=	"Valhalla Haven"
	Birth[9]	=	"Solace Haven"
	Birth[10]	=	"Oasis Haven"
	Birth[11]	=	"Babul Haven"
	Birth[12]	=	"Icicle Haven"
	Birth[13]	=	"Atlantis Haven"
	Birth[14]	=	"Skeleton Haven"
	Birth[15]	=	"Icespire Haven"
	Birth[16]	=	"Zephyr Isle"
	Birth[17]	=	"Glacier Isle"
	Birth[18]	=	"Outlaw Isle"
	Birth[19]	=	"Isle of Chill"
	Birth[20]	=	"Canary Isle"
	Birth[21]	=	"Cupid Isle"
	Birth[22]	=	"Isle of Fortune"
	Birth[23]	=	"Thundoria Castle"
	Birth[23]	=	"Thundoria Harbor"
	Birth[24]	=	"Sacred Snow Mountain"
	Birth[25]	=	"Andes Forest Haven"
	Birth[26]	=	"Oasis Haven"
	Birth[27]	=	"Icespire Haven"
	Birth[28]	=	"Lone Tower Entrace"
	Birth[29]	=	"Barren Cavern Entrance"
	Birth[30]	=	"Abandon Mine 2"
	Birth[31]	=	"Silver Mine 2"
	Birth[32]	=	"Silver Mine 3"
	Birth[33]	=	"Abandon Mine 1"
	Birth[34]	=	"Lone Tower 2"
	Birth[35]	=	"Lone Tower 3"
	Birth[36]	=	"Lone Tower 4"
	Birth[37]	=	"Lone Tower 5"
	Birth[38]	=	"Lone Tower 6"
	Birth[39]	=	"Argent Bar"

	local PosRandom = math.random ( 0 , 39 )
	DelBagItem ( role , 1093 , 1 )
	MoveCity(role, Birth[PosRandom] )

end


--检测道具的有效性

function check_item_valid ( role , Item )
	local Item_type = GetItemType ( Item )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )

	if Item_type <= 29 or Item_type == 59 then
		if Item_URE ~= 0 and Item_URE <= 49 then
			return 0
		else
			return 1
		end
	end
	return 1
end




function ChaSay(role,target,text)
	local pkt = GetPacket()
	local tid = GetCharID( target )
	WriteCmd( pkt, 501 );
	WriteDword( pkt, tid );
	WriteString( pkt, text);
	SendPacket( role, pkt );
end

function cha_timer(role, freq, time) 

local cha = TurnToCha(role)
local Guild_ID = GetChaGuildID(cha)
if GetChaMapName(cha) == "GuildHouse" and Hp(cha) <= 0 then
MoveCity(cha,"Guild House",Guild_ID)
end
if GetChaMapName(cha) == "GuildHouse" and Hp(cha) <= 100 then
MoveCity(cha,"Guild House",Guild_ID)
ReAll(role)
end



local Sina_xl = GetEquipItemP(role,8)
		local Sina_xl_ID= GetItemID (Sina_xl)
		local Sina_x2 = GetEquipItemP(role,2)
		local Sina_x2_ID= GetItemID (Sina_x2)
		if Sina_xl_ID==2577 and Sina_x2_ID==3502 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_UHA , statelv , statetime ) 
		elseif Sina_xl_ID==2578 and Sina_x2_ID==3498 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_UDA , statelv , statetime ) 
		elseif Sina_xl_ID==2579 and Sina_x2_ID==3494 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_UHE , statelv , statetime ) 
		elseif Sina_xl_ID==2580 and Sina_x2_ID==3506 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_UAS , statelv , statetime ) 
		elseif Sina_xl_ID==2581 and Sina_x2_ID==3514 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_UST , statelv , statetime ) 
		elseif Sina_xl_ID==2582 and Sina_x2_ID==3510 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_UAB , statelv , statetime ) 
		else
			local statelv_uha = GetChaStateLv ( role , STATE_UHA )
			if statelv_uha~=0 then
				RemoveState ( role , STATE_UHA ) 
			end
			local statelv_uda = GetChaStateLv ( role , STATE_UDA )
			if statelv_uda~=0 then
				RemoveState ( role , STATE_UDA ) 
			end
			local statelv_uhe = GetChaStateLv ( role , STATE_UHE )
			if statelv_uhe~=0 then
				RemoveState ( role , STATE_UHE ) 
			end
			local statelv_uas = GetChaStateLv ( role , STATE_UAS )
			if statelv_uas~=0 then
				RemoveState ( role , STATE_UAS ) 
			end
			local statelv_ust = GetChaStateLv ( role , STATE_UST )
			if statelv_ust~=0 then
				RemoveState ( role , STATE_UST ) 
			end
			local statelv_uab = GetChaStateLv ( role , STATE_UAB )
			if statelv_uab~=0 then
				RemoveState ( role , STATE_UAB ) 
			end	
		end

local Tina_xl = GetEquipItemP(role,8)
		local Tina_xl_ID= GetItemID (Tina_xl)
		local Tina_x2 = GetEquipItemP(role,2)
		local Tina_x2_ID= GetItemID (Tina_x2)
		if Tina_xl_ID==6711 and Tina_x2_ID==2240 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_DKSHA , statelv , statetime ) 
		elseif Tina_xl_ID==6712 and Tina_x2_ID==2240 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_DKSDA , statelv , statetime ) 
		elseif Tina_xl_ID==6713 and Tina_x2_ID==2240 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_DKSHE , statelv , statetime ) 
		elseif Tina_xl_ID==6714 and Tina_x2_ID==2240 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_DKSAS , statelv , statetime ) 
		elseif Tina_xl_ID==6715 and Tina_x2_ID==2240 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_DKSST , statelv , statetime ) 
		elseif Tina_xl_ID==6716 and Tina_x2_ID==2240 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_DKSAB , statelv , statetime ) 
		else
			local statelv_dksha = GetChaStateLv ( role , STATE_DKSHA )
			if statelv_dksha~=0 then
				RemoveState ( role , STATE_DKSHA ) 
			end
			local statelv_dksda = GetChaStateLv ( role , STATE_DKSDA )
			if statelv_dksda~=0 then
				RemoveState ( role , STATE_DKSDA ) 
			end
			local statelv_dkshe = GetChaStateLv ( role , STATE_DKSHE )
			if statelv_dkshe~=0 then
				RemoveState ( role , STATE_DKSHE ) 
			end
			local statelv_dksas = GetChaStateLv ( role , STATE_DKSAS )
			if statelv_dksas~=0 then
				RemoveState ( role , STATE_DKSAS ) 
			end
			local statelv_dksst = GetChaStateLv ( role , STATE_DKSST )
			if statelv_dksst~=0 then
				RemoveState ( role , STATE_DKSST ) 
			end
			local statelv_dksab = GetChaStateLv ( role , STATE_DKSAB )
			if statelv_dksab~=0 then
				RemoveState ( role , STATE_DKSAB ) 
			end	
		end



local Rina_xl = GetEquipItemP(role,8)
		local Rina_xl_ID= GetItemID (Rina_xl)
		local Rina_x2 = GetEquipItemP(role,2)
		local Rina_x2_ID= GetItemID (Rina_x2)
		if Rina_xl_ID==6711 and Rina_x2_ID==2549 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_CKSHA , statelv , statetime ) 
		elseif Rina_xl_ID==6712 and Rina_x2_ID==2549 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_CKSDA , statelv , statetime ) 
		elseif Rina_xl_ID==6713 and Rina_x2_ID==2549 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_CKSHE , statelv , statetime ) 
		elseif Rina_xl_ID==6714 and Rina_x2_ID==2549 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_CKSAS , statelv , statetime ) 
		elseif Rina_xl_ID==6715 and Rina_x2_ID==2549 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_CKSST , statelv , statetime ) 
		elseif Rina_xl_ID==6716 and Rina_x2_ID==2549 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_CKSAB , statelv , statetime ) 
		else
			local statelv_cksha = GetChaStateLv ( role , STATE_CKSHA )
			if statelv_cksha~=0 then
				RemoveState ( role , STATE_CKSHA ) 
			end
			local statelv_cksda = GetChaStateLv ( role , STATE_CKSDA )
			if statelv_cksda~=0 then
				RemoveState ( role , STATE_CKSDA ) 
			end
			local statelv_ckshe = GetChaStateLv ( role , STATE_CKSHE )
			if statelv_ckshe~=0 then
				RemoveState ( role , STATE_CKSHE ) 
			end
			local statelv_cksas = GetChaStateLv ( role , STATE_CKSAS )
			if statelv_cksas~=0 then
				RemoveState ( role , STATE_CKSAS ) 
			end
			local statelv_cksst = GetChaStateLv ( role , STATE_CKSST )
			if statelv_cksst~=0 then
				RemoveState ( role , STATE_CKSST ) 
			end
			local statelv_cksab = GetChaStateLv ( role , STATE_CKSAB )
			if statelv_cksab~=0 then
				RemoveState ( role , STATE_CKSAB ) 
			end	
		end

local Dina_xl = GetEquipItemP(role,8)
		local Dina_xl_ID= GetItemID (Dina_xl)
		local Dina_x2 = GetEquipItemP(role,2)
		local Dina_x2_ID= GetItemID (Dina_x2)
		if Dina_xl_ID==2577 and Dina_x2_ID==2817 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING1 , statelv , statetime ) 
		elseif Dina_xl_ID==2578 and Dina_x2_ID==2820 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING2 , statelv , statetime ) 
		elseif Dina_xl_ID==2579 and Dina_x2_ID==2823 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING3 , statelv , statetime ) 
		elseif Dina_xl_ID==2580 and Dina_x2_ID==2826 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING4 , statelv , statetime ) 
		elseif Dina_xl_ID==2581 and Dina_x2_ID==2832 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING5 , statelv , statetime ) 
		elseif Dina_xl_ID==2582 and Dina_x2_ID==2829 then
			local statelv = 1
			local statetime = 3600
			AddState ( role , role , STATE_BBRING6 , statelv , statetime ) 
		else
			local statelv_bbring1 = GetChaStateLv ( role , STATE_BBRING1 )
			if statelv_bbring1~=0 then
				RemoveState ( role , STATE_BBRING1 ) 
			end
			local statelv_bbring2 = GetChaStateLv ( role , STATE_BBRING2 )
			if statelv_bbring2~=0 then
				RemoveState ( role , STATE_BBRING2 ) 
			end
			local statelv_bbring3 = GetChaStateLv ( role , STATE_BBRING3 )
			if statelv_bbring3~=0 then
				RemoveState ( role , STATE_BBRING3 ) 
			end
			local statelv_bbring4 = GetChaStateLv ( role , STATE_BBRING4 )
			if statelv_bbring4~=0 then
				RemoveState ( role , STATE_BBRING4 ) 
			end
			local statelv_bbring5 = GetChaStateLv ( role , STATE_BBRING5 )
			if statelv_bbring5~=0 then
				RemoveState ( role , STATE_BBRING5 ) 
			end
			local statelv_bbring6 = GetChaStateLv ( role , STATE_BBRING6 )
			if statelv_bbring6~=0 then
				RemoveState ( role , STATE_BBRING6 ) 
			end	
		end

	if(KickAllPlayers == true)then
	KickCha(role)
end

	local resume_freq = 5 
	local now_tick = GetChaParam(role, 1) 
	local is_role_living = -1
		if(IsPlayer(role) == 1) then
        player_timer(role,freq,time)
		else
		local ret, npc, id = FindNpc( GetChaDefaultName(role) )
	if ret ~= nil and npc ~= nil and id ~= nil then
		npc_timer(role,freq,time)
	else
		monster_timer(role,freq,time)
	end
	end
	SetChaParam(role, 1, now_tick + freq * time) 
	--hp回复
	if math.mod(now_tick, resume_freq) == 0 and now_tick > 0 then 
		if is_role_living == -1 then
			is_role_living = IsChaLiving(role)
		end
		if is_role_living == 1 then 
			Resume(role)
		end 
	end
	ZhongShenTaoZhuang(role,now_tick)
	if (IsPlayer(role)==1) then
		passive_orb_effect(role)
	end

if math.mod(now_tick, 60) == 0 and now_tick > 0 then
local GiveMoney = 100000
AddMoney ( role , 0 , GiveMoney )
SystemNotice(role,"You have earned "..GiveMoney.."g for being online")
end



-- Rear Pet Begin {

		local target = GetChaFirstTarget(role)
		local pet_bg = GetChaItem ( role , 2 , 3 )
		local pet_id = GetItemID ( pet_bg )
	if pet_id == 7293 then
		
	if target ~= nil then
		
		Telf_effect(role,target)
	end

	AddState ( role , role , STATE_TELF , 1 , 3600 )
	RefreshCha(role)
	else
		local statelv_STATE_TELF = GetChaStateLv ( role , STATE_TELF )
		if statelv_STATE_TELF ~=0 then
		RemoveState ( role , STATE_TELF )
	end
end
			if pet_id == 7294 then
		
		if target ~= nil then
			
		Lelf_effect(role,target)
	end

		AddState ( role , role , STATE_LELF , 1 , 3600 )
	RefreshCha(role)
	else
		local statelv_STATE_LELF = GetChaStateLv ( role , STATE_LELF )
		if statelv_STATE_LELF ~=0 then
		RemoveState ( role , STATE_LELF )
	end
end

		if pet_id == 7295 then
			
			if target ~= nil then
				
		Delf_effect(role,target)
	end
		AddState ( role , role , STATE_DELF , 1 , 3600 )
		RefreshCha(role)
		else
			local statelv_STATE_DELF = GetChaStateLv ( role , STATE_DELF )
	if statelv_STATE_DELF ~=0 then
		RemoveState ( role , STATE_DELF )
	end
end
 
local cha_name = GetChaDefaultName (role)
 
      if _G[cha_name.."_goto"] ~= nil then
         	if(_G[cha_name.."_goto"].x ~= nil and _G[cha_name.."_goto"].y ~= nil) then
                 	BickerNotice(role,"Please wait, teleporting ...")
                      local delay = math.random(5,10) -- Random Delay Seconds
                 	if math.mod(now_tick, delay) == 0 and now_tick > 0 then
                       	GoTo(role,_G[cha_name.."_goto"].x,_G[cha_name.."_goto"].y,_G[cha_name.."_goto"].map)
                          _G[cha_name.."_goto"] = nil
                      end
           	end
   	end


               local cha_name = GetChaDefaultName(role) 
  
                -- MoveCity Delay 
                if _G[cha_name.."_move"] ~= nil then 
                        if(_G[cha_name.."_move"].city ~= nil) then 
                                BickerNotice(role,"Please wait, teleporting... ") 
                                local delay = math.random(3,7) -- Random Delay Secodns 
                                if math.mod(now_tick, delay) == 0 and now_tick > 0 then  
                                        if(_G[cha_name.."_move"].copy ~= nil)then 
                                                original_MoveCity(role,_G[cha_name.."_move"].city,_G[cha_name.."_move"].copy) 
                                        else 
                                                original_MoveCity(role,_G[cha_name.."_move"].city) 
                                        end 
                                        _G[cha_name.."_move"] = nil 
                                end 
                        end 
                end 
---Glow 85---

        local Dina_xl = GetEquipItemP(role,8)
        local Dina_xl_ID= GetItemID (Dina_xl)
        local Dina_x2 = GetEquipItemP(role,2)
        local Dina_x2_ID= GetItemID (Dina_x2)
        if Dina_xl_ID==2577 and Dina_x2_ID==2817 then
                local statelv = 1
                local statetime = 3600
                AddState ( role , role , STATE_BBRING1 , statelv , statetime ) 
        elseif Dina_xl_ID==2578 and Dina_x2_ID==2820 then
                local statelv = 1
                local statetime = 3600
                AddState ( role , role , STATE_BBRING2 , statelv , statetime ) 
        elseif Dina_xl_ID==2579 and Dina_x2_ID==2823 then
                local statelv = 1
                local statetime = 3600
                AddState ( role , role , STATE_BBRING3 , statelv , statetime ) 
        elseif Dina_xl_ID==2580 and Dina_x2_ID==2826 then
                local statelv = 1
                local statetime = 3600
                AddState ( role , role , STATE_BBRING4 , statelv , statetime ) 
        elseif Dina_xl_ID==2581 and Dina_x2_ID==2832 then
                local statelv = 1
                local statetime = 3600
                AddState ( role , role , STATE_BBRING5 , statelv , statetime ) 
        elseif Dina_xl_ID==2582 and Dina_x2_ID==2829 then
                local statelv = 1
                local statetime = 3600
                AddState ( role , role , STATE_BBRING6 , statelv , statetime ) 
        else
                local statelv_bbring1 = GetChaStateLv ( role , STATE_BBRING1 )
                if statelv_bbring1~=0 then
                        RemoveState ( role , STATE_BBRING1 ) 
                end
                local statelv_bbring2 = GetChaStateLv ( role , STATE_BBRING2 )
                if statelv_bbring2~=0 then
                        RemoveState ( role , STATE_BBRING2 ) 
                end
                local statelv_bbring3 = GetChaStateLv ( role , STATE_BBRING3 )
                if statelv_bbring3~=0 then
                        RemoveState ( role , STATE_BBRING3 ) 
                end
                local statelv_bbring4 = GetChaStateLv ( role , STATE_BBRING4 )
                if statelv_bbring4~=0 then
                        RemoveState ( role , STATE_BBRING4 ) 
                end
                local statelv_bbring5 = GetChaStateLv ( role , STATE_BBRING5 )
                if statelv_bbring5~=0 then
                        RemoveState ( role , STATE_BBRING5 ) 
                end
                local statelv_bbring6 = GetChaStateLv ( role , STATE_BBRING6 )
                if statelv_bbring6~=0 then
                        RemoveState ( role , STATE_BBRING6 ) 
                end     
        end

---------------------------------------------------------------------------------------
	--local Limit_HeiLong_freq = 3600*24*7 ---------老虎机黑龙数据
	--if math.mod(now_tick, Limit_HeiLong_freq) == 0 and now_tick > 0 then 
	--	Heilong_Star_Count=0
	--end	
	--local Limit_TeDengJiang_freq = 3600*24 ---------老虎机特等奖数据
	--if math.mod(now_tick, Limit_TeDengJiang_freq) == 0 and now_tick > 0 then 
	--	TeDengJiang_Star_Count=0
	--end
	--local Limit_YiDengJiang_freq = 3600 ---------老虎机特等奖数据
	--if math.mod(now_tick, Limit_YiDengJiang_freq) == 0 and now_tick > 0 then 
	--	YiDengJiang_Star_Count=0
	--end
	local pet_freq = 60 
	--宠物消耗
	local Item_Elf = GetChaItem ( role , 2 , 1  )
	local Get_Elf_Type = GetItemType ( Item_Elf )

	if Get_Elf_Type == 59 then
		local ure_type = GetItemAttr( Item_Elf ,ITEMATTR_URE )       --体力
		if ure_type<=49 then
			SetChaKbItemValid2(role , Item_Elf , 0 , 1)			
		else
			SetChaKbItemValid2(role , Item_Elf , 1 , 1)			
		end
		local str = GetItemAttr( Item_Elf ,ITEMATTR_VAL_STR )       --力量
        	local con = GetItemAttr( Item_Elf ,ITEMATTR_VAL_CON )       --体质
        	local agi = GetItemAttr( Item_Elf ,ITEMATTR_VAL_AGI )       --专注
        	local dex = GetItemAttr( Item_Elf ,ITEMATTR_VAL_DEX )       --敏捷
        	local sta = GetItemAttr( Item_Elf ,ITEMATTR_VAL_STA )       --精神
		local Lv = str + agi + dex + con + sta
		if Lv > 27 then
			pet_freq = pet_freq + ( Lv - 27 ) * 5
		end
	end
	local sklv = GetChaStateLv ( role , STATE_JLJSGZ ) -----------------精灵加速果子双倍成长双倍消耗
	if  sklv~=0 then
		pet_freq =math.floor( pet_freq*0.5 )
	end	
	if math.mod(now_tick, pet_freq) == 0 and now_tick > 0 then 
		if is_role_living == -1 then
			is_role_living = IsChaLiving(role)
		end
		if is_role_living == 1 then   
			local Item_bg = GetChaItem ( role , 2 , 1  ) --取角色背包第二栏的指针
			--local Item = Item_bg      --取道具ID
			local Get_Item_Type = GetItemType ( Item_bg ) --调用程序接口获得Item道具类型
			local Item_siliao = GetChaItem ( role , 2 , 2  ) --取角色背包第三栏的指针
			local Item_siliao_ID = GetItemID ( Item_siliao ) --调用程序接口获得Item道具类型
			--SystemNotice ( role , "5 secs" )
			if Get_Item_Type == 59 then
				local Elf_URE = GetItemAttr( Item_bg ,ITEMATTR_URE )       --体力
				local Num_JLone = GetItemForgeParam ( Item_bg , 1 )
				local Part1_JLone = GetNum_Part1 ( Num_JLone )	--Get Num Part 1 到 Part 7
				if Elf_URE<=2550 and Item_siliao_ID==2312 then 
					local j = TakeItem(  role,0,2312,1)
					if j==0 then
						SystemNotice ( role , "Deleting of fairy ration failed!" )
					else
						Elf_URE = Elf_URE + 2500
						SystemNotice ( role , "Automatic feeding successful." )
						SetItemAttr ( Item_bg , ITEMATTR_URE , Elf_URE )
					end
				elseif  Elf_URE<=5000 and Item_numeneat_ID==5645 then 
                                        local j = TakeItem(  role,0,5645,1)
                                        if j==0 then
                                                        SystemNotice ( role , "Deleting of fairy ration failed!" )
                                        else
                                                Elf_URE = Elf_URE + 5000
                                                        SystemNotice ( role , "Automatic feeding successful." )
                                                SetItemAttr ( Item_bg , ITEMATTR_URE , Elf_URE )
                                        end
				end
				local star_num = GetItemAttr( Item_bg ,ITEMATTR_VAL_FUSIONID )       --道具精炼信息有以记录精灵一笔的数量
				star_num=star_num+1
				if math.mod( star_num , 1) == 0 and Elf_URE>=50 and Part1_JLone==1 then
					GiveItemX ( role , 0 , 855 , 1 , 4 )										-------成长1点给一精灵硬币
				end
				if math.mod( star_num , 2) == 0 and Elf_URE>=50 and Part1_JLone~=1 then
					GiveItemX ( role , 0 , 855 , 1 , 4 )										-------成长2点给一精灵硬币
				end
				if math.mod( star_num , 30) == 0  and Elf_URE>=50 and Part1_JLone==1 then			-------成长30点给一精灵辉印一个
					GiveItemX ( role , 0 , 2588 , 1 , 4 )						
				end
				if math.mod( star_num , 60) == 0  and Elf_URE>=50 and Part1_JLone~=1 then			-------成长60点给一精灵辉印一个
					GiveItemX ( role , 0 , 2588 , 1 , 4 )						
				end
				if math.mod( star_num , 120) == 0  and Elf_URE>=50  then						-------成长120点给一精灵辉印一个
					GiveItemX ( role , 0 , 2588 , 1 , 4 )						
				end
				if math.mod( star_num , 1200) == 0  and Elf_URE>=50 then						-------成长1200点给精灵王辉印一个
					GiveItemX ( role , 0 , 2589 , 1 , 4 )						
				end
				if star_num==1200 then
					star_num=0
				end
				SetItemAttr ( Item_bg , ITEMATTR_VAL_FUSIONID , star_num )
				--SystemNotice ( role , " starts to deduct fairy stamina" )
				Take_ElfURE ( role , Item_bg , 1 , 0 )
				--SystemNotice ( role , "starts to calculate fairy growth" )
				Give_ElfEXP ( role , Item_bg , 1 , 0 )  --这里有问题
			end 
		end 
	end
end

-------扣除参数对象精灵的体力值-------------------------------------
function Take_ElfURE ( role , Item , Type , Num )
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE ) 
	--local Elf_MaxURE = GetItemAttr( Item ,ITEMATTR_MAXENERGY ) 
	if Type == 1 then
			--SystemNotice ( role , Elf_URE )
			if Elf_URE >49 then
			--SystemNotice ( role , "starts to deduct " )
                                    Elf_URE = math.max ( ( Elf_URE - 50 ) , 49 )
		                    SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
			else 
				SetChaKbItemValid2(role , Item , 0 , 1)
			end

	end
	if Type == 2 then
		if Elf_URE > 49 then
			 Elf_URE = math.max ( ( Elf_URE - Num ) , 49 )
			 SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
		else
			SetChaKbItemValid2(role , Item , 0 , 1)
		end

	end


end


-------给与精灵成长--------------------------------------------------
function Give_ElfEXP ( role , Item ,Type , Num )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY ) 
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY ) 
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE ) 
	--local rad = math.random( 1 , Lv )  

	if Type == 1 then
			--SystemNotice ( role , Elf_EXP )
			--if rad == 1 then
			 if Elf_URE > 49 then
			   Elf_EXP = Elf_EXP + ELEEXP_GETRAD 
			    if Elf_EXP >= Elf_MaxEXP then
                               Elf_EXP = Elf_MaxEXP
			    end
			   SetItemAttr ( Item , ITEMATTR_ENERGY , Elf_EXP )
			  end
                        --end
        end 

end



--------------------------补充增加精灵体力值--------------------------------------------
function Give_ElfURE ( role , Item  , Num )
	local Elf_URE =  GetItemAttr( Item ,ITEMATTR_URE )
	local Elf_MaxURE = GetItemAttr( Item ,ITEMATTR_MAXURE )
	--local Num = 10
        if Elf_URE<=49 then
	SetChaKbItemValid2(role , Item , 1 , 0)
	end
	--SystemNotice ( role , Elf_URE )

	Elf_URE = Elf_URE + Num

	if Elf_URE >= Elf_MaxURE  then
		
		Elf_URE = Elf_MaxURE
	end
	SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )


end


--检测精灵是否拥有足够的成长度升级
function CheckElf_EXP ( role , Item )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )
	local Elf_MaxEXP =  GetItemAttr( Item ,ITEMATTR_MAXENERGY )


	if Elf_EXP >= Elf_MaxEXP then
	        return 1
	else
		return 0
	end
end

--Snow Dragon
function Lvup_Str ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	--SystemNotice(role ,attr_type )
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Argent Mango
function Lvup_Con ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Icespire Plum
function Lvup_Agi ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Zephyr Fish Floss
function Lvup_Dex ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Shaitan Biscuit
function Lvup_Sta ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Great Snow Dragon Fruit
function Lvup_Str_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	--SystemNotice(role ,attr_type )
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Great Argent Mango
function Lvup_Con_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Great Icespire Plum
function Lvup_Agi_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Great Zephyr Fish Floss 
function Lvup_Dex_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--Great Shaitan Biscuit
function Lvup_Sta_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end
--Improved Strenght Of Fruit
function Lvup_Str_4 ( role , Item_Num ,Item_Traget )
        local attr_type =  ITEMATTR_VAL_STR
        --SystemNotice(role ,attr_type )
        Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
--Improved Constitution Fruit 
function Lvup_Con_4 ( role , Item_Num ,Item_Traget )
        local attr_type =  ITEMATTR_VAL_CON
        Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
--Improved Agility Fruit 
function Lvup_Agi_4 ( role , Item_Num ,Item_Traget )
        local attr_type = ITEMATTR_VAL_AGI
        Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
--Improved Accuracy Fruit
function Lvup_Dex_4 ( role , Item_Num ,Item_Traget )
        local attr_type = ITEMATTR_VAL_DEX
        Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
--Improved Spirit Fruit 
function Lvup_Sta_4 ( role , Item_Num ,Item_Traget )
        local attr_type = ITEMATTR_VAL_STA
        Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end

--60 Snow Dragon Fruit
function Lvup_Str_60 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	--SystemNotice(role ,attr_type )
	Elf_LvUp_60 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--60 Argent Mango
function Lvup_Con_60 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp_60 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--60 Icespire Plum
function Lvup_Agi_60 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp_60 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--60 Zephyr Fish Floss 
function Lvup_Dex_60 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp_60 ( role , Item_Num , Item_Traget , attr_type ) 
end 
--60 Shaitan Biscuit
function Lvup_Sta_60 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp_60 ( role , Item_Num , Item_Traget , attr_type ) 
end

 
--精灵属性增加(升级)--Normal Fruit

function Elf_LvUp ( role , Item_Num , Item_Traget , attr_type )        
        
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

	local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
	
	if Lv >= 40 then
		a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
	end
	
	local b = Percentage_Random ( a )
	
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) --取精灵成长度
        --local item_maxenerge = GetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ) --取精灵成长度最大值
   
	if b == 1 then						--成长则增加属性，扣除所有成长值 -- ITEMATTR_ENERGY
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0
		SystemNotice (role , "Pet level up successfully! Growth rate is depleted")	
		
                attr_type_num = attr_type_num + 1
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )

		local Item_MAXENERGY = 240 * ( Lv + 1 )
		
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end


		local Item_MAXURE_NUM = Elf_MaxURE + 1000

		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else							--未获成长则仅扣除一半的成长值
		item_energe = 0.5 * item_energe 
		SystemNotice (role , "Pet level up failed! Growth rate reduced by half")	
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )


end

--精灵属性双倍增加(升级)--Great Fruit

function Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type )      
        
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

	local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
	
	if Lv >= 40 then
		a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
	end
	
	local b = Percentage_Random ( a )
	
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) --取精灵成长度
        --local item_maxenerge = GetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ) --取精灵成长度最大值
   
	if b == 1 then						--成长则增加属性，扣除所有成长值 -- ITEMATTR_ENERGY
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0
		SystemNotice (role , "Pet level up successfully! Growth rate is depleted")	
		
                attr_type_num = attr_type_num + 2
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )

		local Item_MAXENERGY = 240 * ( Lv + 2 )
		
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end


		local Item_MAXURE_NUM = Elf_MaxURE + 2000

		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else							--未获成长则仅扣除一半的成长值
		item_energe = 0.5 * item_energe 
		SystemNotice (role , "Pet level up failed! Growth rate reduced by half")	
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )


end

--Improved Fruit

function Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )      
                
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )        
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )        
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )        
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )      
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )      
        local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
        local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE)
 
        local Lv = str + agi + dex + con + sta
        local attr_type_num = GetItemAttr( Item_Traget ,attr_type )
 
        local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
        
        if Lv >= 50 then
                a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
        end
        
        local b = Percentage_Random ( a )
        
                local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY )
              
        if b == 1 then                                          
                        AddItemEffect(role , Item_Traget , 0  )
                item_energe = 0
                SystemNotice (role , "Pet level up successfully! Growth rate is depleted")      
                
                                attr_type_num = attr_type_num + 1
                SetItemAttr ( Item_Traget , attr_type , attr_type_num )
 
                local Item_MAXENERGY = 240 * ( Lv + 1 )
                
                if Item_MAXENERGY > 6480 then
                        Item_MAXENERGY = 6480
                end
 
 
                local Item_MAXURE_NUM = Elf_MaxURE + 2000
 
                if Item_MAXURE_NUM > 32000 then
                        Item_MAXURE_NUM = 32000
                end
                
                SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
                SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
                ResetItemFinalAttr(Item_Traget)
                        AddItemEffect(role , Item_Traget , 1  )
        else                                                  
                item_energe = 0.5 * item_energe
                SystemNotice (role , "Pet level up failed! Growth rate reduced by half")        
        end
                SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )
 
 
end
----------------------------------------
function Give_ElfEXP_MISSION ( role , num )						--任务增加宠物经验脚本

	local Item = GetChaItem ( role , 2 ,  2  ) 
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )		--取宠物当前成长度
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY )	--取宠物最大成长度
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE )			--取宠物当前体力值
	if Elf_URE <= 50 then									
		SystemNotice (role , "Fairy cannot gain any Growth as it is low on stamina")			--体力不足50时无法获得宠物exp
		return 0 
	else 
		Elf_URE = Elf_URE - 40								--体力充足时，扣除宠物40点体力，增加宠物EXP
		SetItemAttr ( Item , ITEMATTR_URE , Elf_URE ) 
		num = math.min ( num , Elf_MaxEXP - Elf_EXP ) 
		SetItemAttr ( Item , ITEMATTR_ENERGY , num ) 
	end 
	return 1 
end 


-----------------------------------------------
function CheckElfHaveSkill ( Num , SkillType , SkillNum )
	--Notice( "BEGINCheckElfHaveSkill" )

	local Part2 = GetNum_Part2 ( Num )	--Get Num Part 1 到 Part 7
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )


	if Part3 == SkillType and Part2 == SkillNum then
		return 1

	elseif Part2 == SkillNum then
		return 2
	end
	
	if Part5 == SkillType and Part4 == SkillNum then
		return 1
	elseif Part4 == SkillNum then
		return 2
	end
	
	if Part7 == SkillType and Part6 == SkillNum then
		return 1
	elseif Part6 == SkillNum then
		return 2
	end
	
	return 0

end

----------------------------------------------------------

function AddElfSkill ( Item , SkillType , SkillNum )
	--Notice( "BEGINAddElfSkill" )
	

	local Num = GetItemForgeParam ( Item , 1 ) --精灵32位技能信息数据	
	--Notice ( "Num= "..Num)
	local Part1 = GetNum_Part1 ( Num )	--Get Num Part 1 到 Part 7
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )

	if Part2 == SkillNum then
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end
	
	if Part4 == SkillNum then
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end

	if Part6 == SkillNum then
		 Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end

	local rad = math.random( 1 , 100 )   --随机 1，100                            
	if Part2 == 0 and Part3 == 0 then
		Part2 = SkillNum
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad<= 30 then	
			Part2 = SkillNum
			Part3 = SkillType
			Num = SetNum_Part3 ( Num , Part3 )
			Num = SetNum_Part2 ( Num , Part2 )
			SetItemForgeParam ( Item , 1 , Num )
			return
		--否
		--无操作
		end
	end
	if Part4 == 0 and Part5 == 0 then
		Part4 = SkillNum
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad> 30 and rad < 60 then
			Part4 = SkillNum
			Part5 = SkillType
			Num = SetNum_Part5 ( Num , Part5 )
			Num = SetNum_Part4 ( Num , Part4 )
			SetItemForgeParam ( Item , 1 , Num )
			return
			--否
			--无操作
		end
	end
	if Part6 == 0 and Part7 == 0 then
		Part6 = SkillNum
		Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
			Part6 = SkillNum
			Part7 = SkillType
			Num = SetNum_Part7 ( Num , Part7 )
			Num = SetNum_Part6 ( Num , Part6 )	
			SetItemForgeParam ( Item , 1 , Num )
		return
	end
end

------------------------------------------------------------------

function CheckHaveElf ( role )
	local Item = GetChaItem ( role , 2 , 1  ) --取角色背包第二栏的指针
	if Item == nil then              --?Item == 0 什么意思
		return 0
	end
	
	local Item_Type =  GetItemType ( Item ) --Item 的道具类型
	
	if Item_Type ~= 59 then
		return 0
	else
		local ELf_URE = GetItemAttr( Item ,ITEMATTR_URE )  --精灵体力

		if ELf_URE <= 49 then
			return 0
		end
	end
	--Notice("CheckHaveElf has been executed" )
	return Item

end

--精灵技能

--护盾术
function ElfSKill_PowerSheild ( role , Elf_Item , Num , dmg )
	if dmg <= 0 then
		return 0
	end
	local role_hp = Hp ( role )
	local role_maxhp = Mxhp ( role )
	local havehp = role_maxhp / role_hp
	if havehp < 5 then
		return 0
	end
	local Elf_SheildLv = GetElfSkill_Lv ( Num , 1 )
	dmg = math.floor ( dmg * ( 0.3 + Elf_SheildLv * 0.15 )  ) 

	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	local Dmg_Take_rad = 10 
	local Elf_Dmg_CanTake = ( Item_URE - 50 ) / Dmg_Take_rad
	
	if Elf_Dmg_CanTake >= dmg then
		local Elf_URE_Take = math.floor ( dmg * Dmg_Take_rad )
		local Elf_URE_Notice = math.floor ( Elf_URE_Take / 50 )
		Take_ElfURE ( role , Elf_Item , 2 , Elf_URE_Take )
		SystemNotice ( role , "Fairy absorbed damage: "..dmg)
		return dmg
	else
		SystemNotice ( role , "Fairy does not have enough stamina to activate Protection" )
		return 0
	end
end

--获得精灵指定技能等级
function GetElfSkill_Lv ( Num , SkillNum )
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	
	if SkillNum == Part2 then
		return Part3
	elseif SkillNum == Part4 then
		return Part5
	elseif SkillNum == Part6 then
		return Part7
	end
	return 0
end

--爆击

function ElfSKill_ElfCrt ( role , Elf_Item , Num )
	local Elf_SkillLv = GetElfSkill_Lv ( Num , 2 )
	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	if Item_URE < 50 then
		SystemNotice ( role , "Fairy does not have enough stamina to activate Berserk" )
		return 0
	end
	local b = ( Elf_SkillLv * 2 + 1 )  * 0.01
	local a = Percentage_Random ( b )
	if a == 1 then
		
		Take_ElfURE ( role , Elf_Item , 2 , Elf_SkillLv )
		return 1
		
	else
		return 0
	end
end

--魔力

function ElfSkill_MagicAtk ( dmg , role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 3 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 3 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Fairy does not have enough stamina to activate any skill" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 1 )
					return dmg * 0.05 + 5 
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return dmg * 0.08 + 8
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 3 )
					return dmg * 0.1 + 10
				end
			end
		end
	end
	return 0
end


--回复
function ElfSkill_HpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 4 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 4 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Fairy does not have enough stamina to activate any skill" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end


--沉思

function ElfSkill_SpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 5 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 5 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Fairy does not have enough stamina to activate any skill" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end
--------------------------------荣誉值选择交换
function CreditExchangeImpl( role, tp )
	local i = CheckBagItem( role,3849 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 3849 )
		local rongyu_num=GetItemAttr ( Item , ITEMATTR_VAL_STR )
		if rongyu_num<=0 then
			SystemNotice ( role , "You will not receive any blessing without a postive Honor value!")
			return
		end
		local middle=0
		if rongyu_num<30000 then
			middle=30000 - rongyu_num
		end
		middle= math.floor ( middle / 2 )
		local exp_star=GetChaAttr (  role , ATTR_CEXP )----------当前经验
		local job = GetChaAttr(role, ATTR_JOB)
		local lv=GetChaAttr(role, ATTR_LV) 
		local money_num=rongyu_num*100
		local exp_num=rongyu_num*5+exp_star
		local rad=math.random(1,30000)
		local cha_type = GetChaTypeID ( role )
		local cha_namea = GetChaDefaultName ( role )
		LG( "star_rongyuzhichange_lg" ,cha_namea, tp , lv , exp_star , job , cha_type)
		if tp==0 or tp==1 or tp==2 then ----荣誉值换钱
			if lv>=15 and lv<=40 then
				money_num=rongyu_num*200
			elseif lv>=41 and lv<=60 then
				money_num=rongyu_num*250
			elseif lv>=61 then
				money_num=rongyu_num*300
			end
			AddMoney ( role , 0 , money_num ) 
		LG( "star_rongyuzhichange_lg" ,cha_namea.."tp==0 or tp==1 or tp==2 obtain gold"..money_num)
		elseif tp==3 or tp==4 or tp==5 then -----荣誉值换经验
			local dif_exp = rongyu_num*20+exp_star - DEXP[lv+1]
			if lv>=15 and lv<=30 then
				exp_num=rongyu_num*10+exp_star
				local a1= math.floor (rongyu_num*10 )
				SystemNotice ( role , "Obtained EXP "..a1 )
			elseif lv>=31 and lv<=40 then
				exp_num=rongyu_num*13+exp_star
				local a1= math.floor (rongyu_num*13 )
				SystemNotice ( role , "Obtained EXP "..a1 )
			elseif lv>=41 and lv<=50 then
				exp_num=rongyu_num*22+exp_star
				local a1= math.floor (rongyu_num*22 )
				SystemNotice ( role , "Obtained EXP "..a1 )
			elseif lv>=51 and lv<=60 then
				exp_num=rongyu_num*44+exp_star
				local a1= math.floor (rongyu_num*44 )
				SystemNotice ( role , "Obtained EXP "..a1 )
			elseif lv>=61 and lv<=70 then
				exp_num=rongyu_num*102+exp_star
				local a1= math.floor (rongyu_num*102 )
				SystemNotice ( role , "Obtained EXP "..a1 )
			elseif lv>=71 and  lv<=78 then
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "Obtained EXP "..a1 )
			elseif lv==79 and dif_exp<=0 then 
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "Obtained EXP "..a1 )
			elseif lv==79 and dif_exp>0 then 
				exp_num = dif_exp*0.02 + DEXP[lv+1]
				local a1= math.floor (rongyu_num*270)
				SystemNotice ( role , "Obtained EXP "..a1 )
			elseif lv>=80  then
				exp_num=rongyu_num*270*0.02+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "Obtained EXP "..a1 )
			end
			SetChaAttrI( role , ATTR_CEXP , exp_num )
			local lg_exp=exp_num-exp_star
			LG( "star_rongyuzhichange_lg" ,cha_namea.."tp==3 or tp==4 or tp==5 obtain experience"..lg_exp)
		elseif tp==6 or tp==7 or tp==8 then -----荣誉值换装备
			if lv>=15 and lv<=40 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					GiveItem ( role , 0 , 3458  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."Lv>=15 and Lv<=40 will obtained equipment ID="..3458)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "Obtained EXP "..a1 )
				end
			elseif lv>=41 and lv<=60 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					local rad1=math.random(1,12)
					local Lg_ID=787
					if rad1==1 then
						Lg_ID=787
					elseif rad1==2 then
						Lg_ID=791
					elseif rad1==3 then
						Lg_ID=794
					elseif rad1==4 then
						Lg_ID=801
					elseif rad1==5 then
						Lg_ID=805
					elseif rad1==6 then
						Lg_ID=797
					elseif rad1==7 then
						Lg_ID=765
					elseif rad1==8 then
						Lg_ID=768
					elseif rad1==9 then
						Lg_ID=772
					elseif rad1==10 then
						Lg_ID=775
					elseif rad1==11 then
						Lg_ID=779
					elseif rad1==12 then
						Lg_ID=783
					end
					GiveItem ( role , 0 , Lg_ID  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."lv>=41 and lv<=60receive apparelID="..Lg_ID)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "Obtained EXP "..a1 )
				end
			elseif lv>=61 then
				if rad<=rongyu_num or rongyu_num>=30000 then
				local rad2=math.random(1,3)
				local rad3=math.random(1,4)
					local Lg_ID=2530
					if job == 8 then --巨剑
						if rad2==1 then
							Lg_ID=2530
						elseif rad2==2 then
							Lg_ID=2531
						elseif rad2==3 then
							Lg_ID=2532
						end
					elseif job == 9 then   --双剑
						if rad2==1 then
							Lg_ID=2533
						elseif rad2==2 then
							Lg_ID=2534
						elseif rad2==3 then
							Lg_ID=2535
						end
					elseif job == 12 then --狙击手
						if rad2==1 then
							Lg_ID=2536
						elseif rad2==2 then
							Lg_ID=2537
						elseif rad2==3 then
							Lg_ID=2538
						end
					elseif job == 16 then ---- "Voyager"
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2539
							elseif rad2==2 then
								Lg_ID=2540
							elseif rad2==3 then
								Lg_ID=2541
							end
						else
							if rad3==1 then
								Lg_ID=2539
							elseif rad3==2 then
								Lg_ID=2540
							elseif rad3==3 then
								Lg_ID=2541
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					elseif job == 13 then    ---- "Cleric"
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2542
							elseif rad2==2 then
								Lg_ID=2543
							elseif rad2==3 then
								Lg_ID=2544
							end
						else
							if rad3==1 then
								Lg_ID=2542
							elseif rad3==2 then
								Lg_ID=2543
							elseif rad3==3 then
								Lg_ID=2544
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					elseif job == 14 then    ---- "Seal Master"
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2545
							elseif rad2==2 then
								Lg_ID=2546
							elseif rad2==3 then
								Lg_ID=2547
							end
						else
							if rad3==1 then
								Lg_ID=2545
							elseif rad3==2 then
								Lg_ID=2546
							elseif rad3==3 then
								Lg_ID=2547
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					end
					GiveItem ( role , 0 , Lg_ID  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."Lv>61 obtain equipment ID="..Lg_ID)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "Obtained EXP "..a1 )
				end
			end			
		end
	SetItemAttr ( Item ,ITEMATTR_VAL_STR , 0 )
	end
end
-----------------------------
-----------------------------重设精灵等级
function Elf_Attr_cs ( role , Item_JLone , Item_JLother )
	local Item_JLone_num={}
	local Item_JLother_num={}
	---取一个精灵的五个属性
	Item_JLone_num[1] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )	-- 力量常数加成 26
	Item_JLone_num[2] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )	-- 敏捷常数加成 27
	Item_JLone_num[3] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )	-- 专注常数加成 28
	Item_JLone_num[4] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )	-- 体质常数加成 29
	Item_JLone_num[5] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )	-- 精力常数加成 30
	Item_JLone_num[6] = GetItemAttr( Item_JLone ,ITEMATTR_URE )			--体力 
	Item_JLone_num[7] = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )		 --最大体力
	Item_JLone_num[8] = Item_JLone_num[1] + Item_JLone_num[2] + Item_JLone_num[3] + Item_JLone_num[4] + Item_JLone_num[5]	----一个精灵的等级
	---取另一个精灵的五个属性
	Item_JLother_num[1] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )	-- 力量常数加成  
	Item_JLother_num[2] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )	-- 敏捷常数加成  
	Item_JLother_num[3] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )	-- 专注常数加成  
	Item_JLother_num[4] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )	-- 体质常数加成  
	Item_JLother_num[5] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )	-- 精力常数加成  
	Item_JLother_num[6] = GetItemAttr( Item_JLother ,ITEMATTR_URE )			--体力 
	Item_JLother_num[7] = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )		 --最大体力
	Item_JLother_num[8] = Item_JLother_num[1] + Item_JLother_num[2] + Item_JLother_num[3] + Item_JLother_num[4] + Item_JLother_num[5]	----一个精灵的等级

	local m=0
	local n = 0
	local num_jlone=26
	local num_jlother=26
	local max_JLone_temp=Item_JLone_num[1]
	local max_JLother_temp=Item_JLother_num[1]
	for m=1,4,1 do
		if Item_JLone_num[m+1] >max_JLone_temp then
			max_JLone_temp=Item_JLone_num[m+1]
			num_jlone=m+26
		end
	end
	for n=1,4,1 do
		if Item_JLother_num[n+1] >max_JLother_temp then
			max_JLother_temp=Item_JLother_num[n+1]
			num_jlother=n+26
		end
	end

	max_JLone_temp = max_JLone_temp - 4
	max_JLother_temp = max_JLother_temp - 4
	local new_JLone_MAXENERGY = 240 * (Item_JLone_num[8] + 1 - 4 )
	if new_JLone_MAXENERGY > 6480 then
		new_JLone_MAXENERGY = 6480
	end
	local new_JLone_MAXURE = 5000 + 1000*(Item_JLone_num[8] - 4 )
	if new_JLone_MAXURE > 32000 then
		new_JLone_MAXURE = 32000
	end
	local new_JLother_MAXENERGY = 240 * (Item_JLother_num[8] + 1 - 4 )
	if new_JLother_MAXENERGY > 6480 then
		new_JLother_MAXENERGY = 6480
	end
	local new_JLother_MAXURE = 5000 + 1000*(Item_JLother_num[8] - 4 )
	if new_JLother_MAXURE > 32000 then
		new_JLother_MAXURE = 32000
	end
	----重设一只精灵的属性
	SetItemAttr ( Item_JLone , num_jlone , max_JLone_temp )
	SetItemAttr ( Item_JLone , ITEMATTR_ENERGY , 240) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXENERGY , new_JLone_MAXENERGY )
	SetItemAttr ( Item_JLone , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXURE , new_JLone_MAXURE ) 	
	----重设另一只精灵的属性
	SetItemAttr ( Item_JLother , num_jlother , max_JLother_temp )
	SetItemAttr ( Item_JLother , ITEMATTR_ENERGY , 240 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXENERGY , new_JLother_MAXENERGY )
	SetItemAttr ( Item_JLother , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXURE , new_JLother_MAXURE )  	
end
function  TigerStart( ... )
	--Notice("TigerStart...................")
	if arg.n ~= 4 then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 
	end	
	local num = {}
	local Item_type = {}
	local num_star = 0
	local n  = 0
	local m = 0
	local i = 0
	local q=0
	for n=1,9,1 do --------------初始化9个物品ID
		local star = math.random ( 1 , 4700 )
		local ret1 = IsItemValid(star)
		if ret1 ~= LUA_TRUE then
			for m=1,300,1 do
				local ret2 = IsItemValid(star+m)
				if ret2 ~=LUA_TRUE then
				else
					num[n] = star+m
				end
			end
		else 
			num [n]=star
		end
	end
	for i=1,9,1 do
		Item_type[i] = GetItemType2( num [i] )
	end
	local NocLock =	KitbagLock(arg[1], 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( arg[1] , "Your inventory is being binded")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( arg[1] )	
	if Item_CanGet < 5 then
		SystemNotice( arg[1] ,"You need at least 5 free slot")
		return 0
	end
	local Money_Have = GetChaAttr ( arg[1]  , ATTR_GD )
	if Money_Have>1900000000 then
		SystemNotice (arg[1], "Do not bring more than 19 billion gold on you. Its not safe")
		return	
	end
	if arg[2]==1 then
		local j1 = TakeItem(  arg[1], 0,855, 5 )			        
		if j1==0 then
			SystemNotice ( arg[1] ,"Failed to delete Fairy's coin")
			return
		end
	end
	if arg[3]==1 then
		local j2 = TakeItem(  arg[1], 0,855, 5 )			            
		if j2==0 then
			SystemNotice ( arg[1] ,"Failed to delete Fairy's coin")
			return
		end		
	end
	if arg[4]==1 then
		local j3 = TakeItem(  arg[1], 0,855, 5 )			            
		if j3==0 then
			SystemNotice ( arg[1] ,"Failed to delete Fairy's coin")
			return
		end		
	end
	local lhj_te_flg=0
	local lhj_yi_flg=0
	local lhj_hei_flg=0
	local now_day= os.date("%d")		-------------日          
	local now_hour= os.date("%H")		-------------时          
	local now_miniute= os.date("%M")	-------------分          
	local now_scend=  os.date("%S")		-------------秒   
	now_day= tonumber(now_day)			-------------日  
	now_hour= tonumber(now_hour)		-------------时  
	now_miniute= tonumber(now_miniute)	 	-------------分  
	now_scend= tonumber(now_scend)		-------------秒 
	local CheckTimeNum = now_day*86400 + now_hour*3600+now_miniute*60+now_scend
	if CheckTimeNum>NOWTIME_TE+86400 then
		NOWTIME_TE=CheckTimeNum
		lhj_te_flg=1
	end
	if CheckTimeNum>NOWTIME_YI+3600 then
		NOWTIME_YI=CheckTimeNum
		lhj_yi_flg=1
	end
	if CheckTimeNum>NOWTIME_HEI+518400 then
		NOWTIME_HEI=CheckTimeNum
		lhj_hei_flg=1
	end
	local num_s=0
	for num_s=1,3,1 do 
		if Item_type[num_s]>=1 and Item_type[num_s]<=11 then
			if Item_type[num_s+3] >=1 and Item_type[num_s+3]<=11 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=1 and Item_type[num_s+6]<=11 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=22 and Item_type[num_s]<=29 then
			if Item_type[num_s+3] >=22 and Item_type[num_s+3]<=29 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=22 and Item_type[num_s+6]<=29 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=36 and Item_type[num_s]<=66 then
			if Item_type[num_s+3] >=36 and Item_type[num_s+3]<=66 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=36 and Item_type[num_s+6]<=66 then
				num[num_s+6] = num[num_s]
			end
		end
	end
	local j=0
	for j=1,9,1 do
		Item_type[j] = GetItemType2( num [j] )----------重拿类型
		if num[j]==822 or num[j]==823 or num[j]==825 or num[j]==826 or num[j]==827 or num[j]==1116 or num[j]==1117 or num[j]==1118 or num[j]==46  or num[j]==1124  or num[j]==1125  or num[j]==1126  or num[j]==1127 or  num[j]==1057  or  num[j]==1060   or  num[j]==1063    or  num[j]==1066   or  num[j]==1034  or  num[j]==586  or  num[j]==762  or  num[j]==3061  or  num[j]==410   or  num[j]==2885  then--------CABAL对奖券，年兽和辉煌,乱斗不给
			num[j]=3360 ---------钻石		
		end
		if num[j]>=845 and num[j]<=847 then--------黑龙控制
			local rad_s= math.random ( 1 , 40 )
			if rad_s>=3 or lhj_hei_flg==0 then
				num[j]=3360 ---------钻石		
			end
		end
		--------------fei下面这几种类型的物品不给
		if Item_type[j]~=1 and Item_type[j]~=2 and Item_type[j] ~=3 and Item_type[j] ~=4 and Item_type[j] ~=7 and Item_type[j] ~=9 and Item_type[j] ~=11 and Item_type[j] ~=22 and Item_type[j] ~=23 and Item_type[j] ~=24 and Item_type[j] ~=25 and Item_type[j] ~=26 and Item_type[j] ~=27 and Item_type[j] ~=29 and Item_type[j] ~=36 and Item_type[j] ~=47 and Item_type[j] ~=50 and Item_type[j] ~=57 and Item_type[j] ~=58 and Item_type[j] ~=60 and Item_type[j] ~=65 and Item_type[j] ~=66 then
			local eleven = math.random ( 1 , 1000 )	
			local new_id = math.random ( 3850 , 3875 )
			if eleven <= 328 then
				num[j]= new_id ----------卡片
			elseif eleven >=329 and  eleven<=999 then
				num[j]=3360 ---------钻石
			else
				num[j]=194 ---------金钱
			end
		end
	end
	local rad1= 0
	local rad2= 0
	local rad3= 0
	local rad4= 0
	local rad5= 0
	local rad6= 0
	local rad7= 0
	local rad8= 0
	local rad9= 0
	local rad10= 0
	local rad11= 0
	local p=0
	local p=0
	for p=1,9,1 do
		if num[p]>=831 and num[p]<=842 then
			rad1=1
		end
		if num[p]>=2300 and num[p]<=2344 then
			rad2=1
		end
		if num[p]>=2367 and num[p]<=2407 then
			rad3=1
		end
		if num[p]>=2549 and num[p]<=2553 then
			rad4=1
		end
		if num[p]>=2588 and num[p]<=3061 then
			rad5=1
		end
		if num[p]>=3936 and num[p]<=3942 then
			rad6=1
		end
		if num[p]>=4311 and num[p]<=4313 then
			rad7=1
		end
		if num[p]>=28 and num[p]<=31 then
			rad8=1
		end
		if num[p]>=194 and num[p]<=227 then
			rad9=1
		end
		if num[p]>=276 and num[p]<=280 then
			rad10=1
		end
		local h=0
		for h=1,252,1 do
			if num[p]==LHJ_ID[h] then
				rad11=1
			end
		end
		if rad1==1 or  rad2==1 or rad3==1 or  rad4==1 or rad5==1 or rad6==1 or  rad7==1  or  rad8==1  or  rad9==1 or  rad10==1  or rad11==1 or  num[p]==457 or num[p]==458 or num[p]==459 or num[p]==464 or num[p]==640 or num[p]==816  or num[p]==822 or num[p]==823 or num[p]==3115 or num[p]==18 or num[p]==19 or num[p]==43 or num[p]==109 or num[p]==111 or num[p]==113 or num[p]==115 or num[p]==117 or num[p]==119  or num[p]==127 or num[p]==150 or num[p]==308 or num[p]==309 or num[p]==348 or num[p]==349 then
			local new_id1 = math.random ( 3850 , 3875 )
			num[p]= new_id1 ----------卡片		
		end
	end
	----------------------控制大奖出现机率
	local reset_rad=math.random ( 1 , 100 )
	local kapian_rad=math.random ( 3850 , 3875 )
	if reset_rad>=47 and num[1]==num[3] and num[1]==num[5] and num[1]==num[7]  and num[1]==num[9]  then-------五福同寿降低39%
		num[9]=kapian_rad
	end
	if reset_rad>=24 and num[2]==num[4] and num[2]==num[5] and num[2]==num[6]  and num[2]==num[8]  then-------十全十美降低66%
		num[8]=kapian_rad
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4]  and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then-------普天同庆降低66%
		if lhj_yi_flg==0 or reset_rad>=10 then
			num[9]=kapian_rad
		end
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4] and num[1]==num[5] and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then-------万寿无疆降低89%
		if lhj_te_flg==0 or reset_rad>=2 then
			num[9]=kapian_rad
		end
	end
	return num[1] , num[2] , num[3] , num[4] , num[5] , num[6] , num[7] , num[8] , num[9] 
end

function TigerStop(...)
	--Notice("TigerStop...................")
	if arg.n ~= 13 then
		SystemNotice ( arg[1] , "parameter value illegal"..arg.n )
		return 
	end	
	local flag=0
	if arg[11]==1 and arg[12]==1 and arg[13]==1 then
		flag=1
	end
	local flag_myp=1
	if arg[2]==0 or arg[3]==0 or arg[4]==0 or arg[5]==0 or arg[6]==0 or arg[7]==0 or arg[8]==0 or  arg[9]==0 or arg[10]==0 or arg[2]==nil or arg[3]==nil or arg[4]==nil or arg[5]==nil or arg[6]==nil or arg[7]==nil or arg[8]==nil or  arg[9]==0 or arg[10]==nil then
		 flag_myp=0
		SystemNotice ( arg[1] , "Lucky Chance parameter illegal" )
		return 	
	end
	local new_id = math.random ( 3850 , 3875 )
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5]  and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10]  and arg[2]~=new_id and flag==1 and flag_myp==1 then ---------------------“宙斯的慌恐”
		local cha_name4 = GetChaDefaultName ( arg[1] ) 
		local item_rad = math.random ( 1 , 9 )
		if item_rad==1 then
			item_rad_id=862
		elseif item_rad==2 then
			item_rad_id=863
		elseif item_rad>=3 or  item_rad<=8 then
			item_rad_id=271
		else
			item_rad_id=1012
		end
		local itemname12 = GetItemName ( item_rad_id ) 
		local message4 = cha_name4.." strikes \"Immense Wealth\" and won 10000000G, 1 Grand Prize Voucher and 1 "..itemname12
		Notice ( message4 )
		SynTigerString ( arg[1] ,"Congratulations, you strike \"Immense Wealth\" and won yourself 10000000G and a"..itemname12)
		AddMoney ( arg[1] , 0 , 10000000 )--------1000W海盗币
		GiveItem ( arg[1] , 0 ,2665  , 1 , 4  )----------------特等奖券
		GiveItem ( arg[1] , 0 , item_rad_id  , 1 , 4  )
		if arg[2] ~= 3360 then --------钻石
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s12=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s12  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_wanshou_lg" ,cha_name4,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
		--TeDengJiang_Star_Count=1
	end
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5] and arg[5] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10]  and arg[2]~=new_id and flag==1  and flag_myp==1  then ---------------------“普天同庆”
		--local itemname3 = GetItemName ( arg[3] ) 
		local item_rad = math.random ( 1 , 8 )
		if item_rad==1 then
			item_rad_id=878
		elseif item_rad==2 then
			item_rad_id=879
		elseif item_rad==3 then
			item_rad_id=880
		elseif item_rad==4 then
			item_rad_id=881
		elseif item_rad==5 then
			item_rad_id=882
		elseif item_rad==6 then
			item_rad_id=883
		elseif item_rad==7 then
			item_rad_id=884
		else
			item_rad_id=887
		end
		local itemname11 = GetItemName ( item_rad_id ) 
		local cha_name3 = GetChaDefaultName ( arg[1] ) 
		local message3 = cha_name3.." strikes \"All Round Celebration\" and won 3000000G and a "..itemname11
		Notice ( message3 )
		SynTigerString ( arg[1] ,"Congratulations, you strike \"All Round Celebration\" and won yourself 3000000G and "..itemname11)
		AddMoney ( arg[1] , 0 , 3000000 )--------300W海盗币
		GiveItem ( arg[1] , 0 ,2666  , 1 , 4  )----------------一等奖
		--GiveItem ( arg[1] , 0 , 271  , 1 , 4  )
		GiveItem ( arg[1] , 0 , item_rad_id  , 1 , 4  )
		if arg[2] ~= 3360 then --------钻石
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s11=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s11  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_putian_lg" ,cha_name3,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
		--YiDengJiang_Star_Count=1
	end
	if arg[3] == arg[5] and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[9] and arg[3]~=new_id and flag==1  and flag_myp==1 then ---------------------“十全十美”
		local itemname2 = GetItemName ( arg[3] ) 
		local cha_name2 = GetChaDefaultName ( arg[1] ) 
		local message2 = cha_name2.." strikes \"Perfect 10\" and won 500000G and a 99 Parcel"  
		Notice ( message2 )
		SynTigerString( arg[1] ,"Congratulations you strike \" Perfect Ten\" and won yourself 500000G and 99 Parcel")
		AddMoney ( arg[1] , 0 , 500000 )--------50W海盗币
		GiveItem ( arg[1] , 0 ,2666  , 1 , 4  )----------------一等奖
		GiveItem ( arg[1] , 0 , 1095  , 1 , 4  )
		if arg[3] ~= 3360 then --------钻石
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s10=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s10  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end
		LG( "LHJ_shiquan_lg" ,cha_name2,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[4] and arg[4] == arg[6] and arg[6] == arg[8] and arg[8] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1  then ---------------------“五福同寿”
		--local itemname1 = GetItemName ( arg[2] ) 
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		local message1 = cha_name1.."Congratulations, you strike \"Five Fortune\" and won yourself 300000G and 1 Second Prize Voucher" 
		Notice ( message1 )
		SynTigerString  ( arg[1] ,"Congratulations, you strike \"5 Fortunes\" and won yourself 300000G and a Second Prize Voucher")
		AddMoney ( arg[1] , 0 , 300000 )--------30W海盗币
		GiveItem ( arg[1] , 0 ,2667  , 1 , 4  )----------------二等奖
		if arg[2] ~= 3360 then --------钻石
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s9=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s9  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		LG( "LHJ_wufu_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[4] and arg[4] == arg[8] and arg[8] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1 then ---------------------“四季平安”
		SystemNotice ( arg[1] ,"Congratulations, you strike \"4 Seasons\" and won yourself 50000G and a piece of Black Market Equipment.")
		SynTigerString  ( arg[1] ,"Congratulations, you striked \"4 Seasons\" and won yourself 50000G and a piece of Black Market Equipment.")
		AddMoney ( arg[1] , 0 , 50000 )--------5W海盗币
		GiveItem ( arg[1] , 0 ,2668  , 1 , 4  )----------------三等奖
		GiveItem ( arg[1] , 0 , 3323  , 1 , 4  )
		if arg[2] ~= 3360 then --------钻石
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s8=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s8  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_siji_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[3] == arg[5] and arg[5] == arg[7] and arg[7] == arg[9] and arg[3]~=new_id and flag==1 and flag_myp==1 then ---------------------“小空心菜”
		SystemNotice ( arg[1] ,"Congratulations, you striked \"Zesty\" and won yourself 30000G and a piece of Black Market equipment.")
		SynTigerString  ( arg[1] ,"Congratulations, you strike \"Zesty\" and won yourself 30000G and a Black Market Equipment")
		AddMoney ( arg[1] , 0 , 30000 )--------3W海盗币
		GiveItem ( arg[1] , 0 ,2668  , 1 , 4  )----------------三等奖
		local rad_heishi=math.random ( 1 , 2 )
		if rad_heishi==1 then
			GiveItem ( arg[1] , 0 , 3326  , 1 , 4  )
		else
			GiveItem ( arg[1] , 0 , 3328  , 1 , 4  )			
		end
		if arg[3] ~= 3360 then --------钻石
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s7=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s7  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_xiaokong_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[4] == arg[6] and arg[6] == arg[8] and arg[4]~=new_id and flag==1 and flag_myp==1 then ---------------------“黄金对角线”
		SystemNotice ( arg[1] ,"Congratulations, you striked \"Golden Diagonal\" and won yourself 10000G.")
		SynTigerString ( arg[1] ,"Congratulations, you striked \"Golden Diagonal\" and won yourself 10000G.")
		AddMoney ( arg[1] , 0 , 10000 )--------1W海盗币
		GiveItem ( arg[1] , 0 , 3096  , 1 , 4  )
		if arg[4] ~= 3360 then --------钻石
			if arg[4] == 845 or arg[4] == 846 or arg[4] == 847 then
				local s5=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , s5  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[6] and arg[6] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1 then ---------------------“白金对角线”
		SystemNotice ( arg[1] ,"Congratulations, you strike \"White Diagonal\" and won youself 10000G")
		SynTigerString  ( arg[1] ,"Congratulations, you strike \"White Diagonal\" and won youself 10000G")
		AddMoney ( arg[1] , 0 , 10000 )--------1W海盗币
		GiveItem ( arg[1] , 0 , 3094  , 1 , 4  )
		if arg[2] ~= 3360 then --------钻石
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s6=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s6  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[5] == arg[6] and arg[6] == arg[7] and arg[5]~=new_id and flag==1 and flag_myp==1 then ---------------------“一柱擎天”
		SystemNotice ( arg[1] ,"Congratulations, you strike \"The One\" and won yourself 8000G")
		SynTigerString ( arg[1] ,"Congratulations, you strike \"The One\" and won yourself 8000G")
		AddMoney ( arg[1] , 0 , 8000 )--------8k海盗币
		if arg[5] ~= 3360 then --------钻石
			if arg[5] == 845 or arg[5] == 846 or arg[5] == 847 then
				local s4=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[5]  , 1 , s4  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[5]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[2] == arg[5] and arg[5] == arg[8] and arg[11]==1 and arg[2]~=new_id and flag_myp==1 then ---------------------“一帆风顺”
		SystemNotice ( arg[1] ,"Congratulations, you strike \"Safe Voyage\" and won yourself 2000G")
		SynTigerString( arg[1] ,"Congratulations, you strike \"Safe Voyage\" and won yourself 2000G")
		AddMoney ( arg[1] , 0 , 2000 )--------2k海盗币
		if arg[2] ~= 3360 then --------钻石
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s1=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 ,arg[2]  , 1 , s1  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[3] == arg[6] and arg[6] == arg[9] and arg[12]==1 and arg[3]~=new_id and flag_myp==1 then
		SystemNotice ( arg[1] ,"Congratulations, you strike \"Safe Voyage\" and won yourself 2000G")
		SynTigerString( arg[1] ,"Congratulations, you strike \"Safe Voyage\" and won yourself 2000G")
		AddMoney ( arg[1] , 0 , 2000 )--------2k海盗币
		if arg[3] ~= 3360 then --------钻石
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s2=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s2  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end	
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if arg[4] == arg[7] and arg[7] == arg[10] and arg[13]==1 and arg[4]~=new_id and flag_myp==1 then
		SystemNotice ( arg[1] ,"Congratulations, you strike \"Safe Voyage\" and won yourself 2000G")
		SynTigerString( arg[1] ,"Congratulations, you strike \"Safe Voyage\" and won yourself 2000G")
		AddMoney ( arg[1] , 0 , 2000 )--------2k海盗币
		if arg[4] ~= 3360 then --------钻石
			if arg[4] == 845 or arg[4] == 846 or arg[4] == 847 then
				local s3=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , s3  )
			--	Heilong_Star_Count=1
			else 
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	local star = 0
	local eleven = 0
	for star=2,8,3 do
		if arg[star] ==194 and arg[11] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	for star=3,9,3 do
		if arg[star] ==194 and arg[12] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	for star=4,10,3 do
		if arg[star] ==194 and arg[13] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	if eleven==0 then
		SynTigerString( arg[1] ,"You need to work harder.")
	else 
		SystemNotice ( arg[1] ,"In current event, you strike a total of "..eleven.." gold obtain "..eleven.."Million Dollar Note")
		SynTigerString( arg[1] ,"Congratulations you strike"..eleven.."Million Dollar Note")
		GiveItem ( arg[1] , 0 , 854  , eleven , 4  )
	end
end
--function Change_FightingBook (character, npc)
--	local HonorBook_Num = 0
--	local HonorBook_Num = CheckBagItem( character,3849 )
--	local FightingBook_Num = 0
--	local FightingBook_Num = CheckBagItem( character,3849 )
--	local retbag = HasLeaveBagGrid( character, 1)
--	if retbag ~= LUA_TRUE then
--		SystemNotice(character,"You required 1 empty inventory slot to obtain Chaos Manual")
--		return 
--	end	
--	if FightingBook_Num> 0 then
--		SystemNotice( character , "You already possess a Chaos Manual")
--		return 0
--	end
--	
--	
--	
--	if	 HonorBook_Num <= 0 then
--		GiveItem ( character , 0 , 3849  , 1 , 97 )
--	else
--		GiveItem ( character , 0 , 3849  , 1 , 97 )
--		local Book2 =  GetChaItem2 ( character , 2 , 3849 )
--		local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
--		local KillNum=GetItemAttr ( Book2 , ITEMATTR_VAL_AGI)
--		local KilledNum=GetItemAttr ( Book2 , ITEMATTR_VAL_DEX)
--		local JionNum=GetItemAttr ( Book2 , ITEMATTR_VAL_CON)
--		local VictoryNum=GetItemAttr ( Book2 , ITEMATTR_VAL_STA)
--		local PartyContributeNum=GetItemAttr ( Book2 , ITEMATTR_MAXURE)
--		local Book = GetChaItem2 ( character , 2 , 3849 )
--		SetItemAttr ( Book , ITEMATTR_VAL_STR,HonorPoint)
--		SetItemAttr ( Book , ITEMATTR_VAL_AGI,KillNum)
--		SetItemAttr ( Book , ITEMATTR_VAL_DEX,KilledNum)
--		SetItemAttr ( Book , ITEMATTR_VAL_CON,JionNum)
--		SetItemAttr ( Book , ITEMATTR_VAL_STA,VictoryNum)
--		SetItemAttr ( Book , ITEMATTR_MAXURE,PartyContributeNum)
----		SetItemAttr ( Book2 , ITEMATTR_MAXENERGY,FightingPoint)
--		RemoveChaItem ( character , 3849 , 1 , 2 , -1, 2 , 1  )	
--		
--	end
--end

function Change_shanyao (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Your inventory is being binded")
		return 0
	end
		 
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "You do not have Mark of Honor")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 200 then
			SystemNotice( character , "You do not have sufficient Honor points")
			return 0
		end
	local HonorPoint_X=HonorPoint-200
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"You do not have enough slots")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2614  , 1 , 4 ) 
end

function Change_rongyao (character, npc)
local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Your inventory is being binded")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "You do not have Mark of Honor")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 2000 then
			SystemNotice( character , "You do not have sufficient Honor points")
			return 0
		end
	local HonorPoint_X=HonorPoint-2000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"You do not have enough slots")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2615  , 1 , 4 )
end

function Change_huihuang (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Your inventory is being binded")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "You do not have Mark of Honor")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 20000 then
			SystemNotice( character , "You do not have sufficient Honor points")
			return 0
		end
	local HonorPoint_X=HonorPoint-20000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"You do not have enough slots")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2616  , 1 , 4 )
end
function Eleven_Log_0( role ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	LG( "Eleven_Log_0" ,cha_name,lv,job)
end
function Eleven_Log( role,typ ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	LG( "Eleven_Log" ,cha_name,lv,job,typ)
end
-------------------------------------------------------------------------------------
--				Leo的防外挂答题奖励
-------------------------------------------------------------------------------------
function WGPrizeBegin( role , rightCount)
	local rightCountTemp = rightCount
	if rightCountTemp > 6 then
		rightCountTemp = 6
	end
	
	local isPrizeRandom = math.random(rightCountTemp,10)
	local retRandom = math.random ( 1 , 100 )
	local ret  = 1
	
	if isPrizeRandom > 5  then
		if math.mod ( retRandom , 6 ) == 0 then
			 ret = WGprize_1(role)
		end
		
		if math.mod ( retRandom , 6 ) == 1  then
			 ret = WGprize_2(role)
		end
		
		if math.mod ( retRandom , 6 ) == 2  then
			 ret = WGprize_3(role)
		end
		
		if math.mod ( retRandom , 6 ) == 3  then
			 ret = WGprize_4(role)
		end
		
		if math.mod ( retRandom , 6 ) == 4  then
			 ret = WGprize_5(role)
		end
		
		if math.mod ( retRandom , 6 ) == 5  then
			 ret = WGprize_6(role)
		end
		
		if ret ==1 then
			SystemNotice( role , "Return value error")
		end
	else
		SystemNotice( role , "Correct! You have failed to win any prize" )
	end
end
function WGprize_1( role ) --加经验 LV * 10
	local expNow = GetChaAttr( role , ATTR_CEXP )
	local lvNow = GetChaAttr( role , ATTR_LV)
	
	SystemNotice( role , "Correct! You have obtained " .. lvNow*10 .. " experience points")
	SetChaAttrI(  role , ATTR_CEXP ,expNow+lvNow*10  )
	RefreshCha(role)
	return 0
end

function WGprize_2( role ) --将当前血补满
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	SystemNotice( role , "Correct! Your HP is restored")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_3(role) --将当前蓝补满
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , " Correct answer will restore your SP to the max")
	SetChaAttrI( role , ATTR_SP, SPMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_4(role) --奖励LV*1个蛋糕
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "Answered correctly and obtained  " .. lvNow .. " cake(s)")
	
	GiveItem( role , 0 , 1849  , lvNow , 4 )	
	return 0
end

function WGprize_5(role) --神仙酱果1个
	SystemNotice( role , "Correct answer will give you 1 Old Ticket")
	
	GiveItem( role , 0 , 3141  , 1 , 4 )	
	return 0
end

function WGprize_6(role) --血蓝全满
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	
	SystemNotice( role , "Correct answer will restore HP & SP to the max")
	
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	SetChaAttrI( role , ATTR_SP ,SPMaxNow  )
	RefreshCha(role)
	return 0
end
-------------------------------------------------------------------------------------
--				Leo  end
-------------------------------------------------------------------------------------

--------北美铁人六项活动---------bragi-----
	GetExp	=	{}		------------取等级对应总经验
	GetExp[1]	=	0
	GetExp[2]	=	5
	GetExp[3]	=	15
	GetExp[4]	=	35
	GetExp[5]	=	101
	GetExp[6]	=	250
	GetExp[7]	=	500
	GetExp[8]	=	1000
	GetExp[9]	=	1974
	GetExp[10]	=	3208
	GetExp[11]	=	4986
	GetExp[12]	=	7468
	GetExp[13]	=	10844
	GetExp[14]	=	15338
	GetExp[15]	=	21210
	GetExp[16]	=	28766
	GetExp[17]	=	38356
	GetExp[18]	=	50382
	GetExp[19]	=	65306
	GetExp[20]	=	83656
	GetExp[21]	=	106032
	GetExp[22]	=	133112
	GetExp[23]	=	165668
	GetExp[24]	=	204564
	GetExp[25]	=	250780
	GetExp[26]	=	305412
	GetExp[27]	=	369692
	GetExp[28]	=	444998
	GetExp[29]	=	532870
	GetExp[30]	=	635026
	GetExp[31]	=	753378
	GetExp[32]	=	890062
	GetExp[33]	=	1047438
	GetExp[34]	=	1228138
	GetExp[35]	=	1435074
	GetExp[36]	=	1671470
	GetExp[37]	=	1940892
	GetExp[38]	=	2247288
	GetExp[39]	=	2595010
	GetExp[40]	=	2988860
	GetExp[41]	=	3434132
	GetExp[42]	=	3936658
	GetExp[43]	=	4502856
	GetExp[44]	=	5139778
	GetExp[45]	=	5855180
	GetExp[46]	=	6657576
	GetExp[47]	=	7556310
	GetExp[48]	=	8561630
	GetExp[49]	=	9684764
	GetExp[50]	=	10938016
	GetExp[51]	=	12334856
	GetExp[52]	=	13890020
	GetExp[53]	=	15619622
	GetExp[54]	=	17541282
	GetExp[55]	=	19674240
	GetExp[56]	=	22039516
	GetExp[57]	=	24660044
	GetExp[58]	=	27560852
	GetExp[59]	=	30769230
	GetExp[60]	=	37746418
	GetExp[61]	=	45876427
	GetExp[62]	=	59571153
	GetExp[63]	=	75703638
	GetExp[64]	=	94615279
	GetExp[65]	=	116688304
	GetExp[66]	=	155291059
	GetExp[67]	=	186418013
	GetExp[68]	=	238159614
	GetExp[69]	=	298622278
	GetExp[70]	=	368975850
	GetExp[71]	=	450525549
	GetExp[72]	=	568409779
	GetExp[73]	=	679324744
	GetExp[74]	=	806544569
	GetExp[75]	=	952091724
	GetExp[76]	=	1188099236
	GetExp[77]	=	1480429211
	GetExp[78]	=	1776125584
	GetExp[79]	=	2091634902
	GetExp[80]	=	2425349810
	GetExp[81]	=	2440895086
	GetExp[82]	=	2458896515
	GetExp[83]	=	2479742169
	GetExp[84]	=	2503881436
	GetExp[85]	=	2531834707
	GetExp[86]	=	2564204594
	GetExp[87]	=	2601688923
	GetExp[88]	=	2645095775
	GetExp[89]	=	2695360909
	GetExp[90]	=	2753567934
	GetExp[91]	=	2820971668
	GetExp[92]	=	2899025191
	GetExp[93]	=	2989411170
	GetExp[94]	=	3094078133
	GetExp[95]	=	3215282476
	GetExp[96]	=	3355637105
	GetExp[97]	=	3518167765
	GetExp[98]	=	3706378269
	GetExp[99]	=	3924326032
	GetExp[100]	=	4176709541
	GetExp[101]	=	4376519542
	GetExp[102]	=	4576729642
	GetExp[103]	=	4776712544
	GetExp[104]	=	4976799545
	GetExp[105]	=	5276389546
	GetExp[106]	=	5576259547
	GetExp[107]	=	5876119548
	GetExp[108]	=	6176819542
	GetExp[109]	=	6476729541
	GetExp[110]	=	6776679543
	GetExp[111]	=	7076569545
	GetExp[112]	=	7376459544
	GetExp[113]	=	7676319542
	GetExp[114]	=	7976229541
	GetExp[115]	=	8276179541
	GetExp[116]	=	8576969544
	GetExp[117]	=	8876819548
	GetExp[118]	=	9176029549
	GetExp[119]	=	9476099540
	GetExp[120]	=	9776189542
	GetExp[121]	=	10076379540
	GetExp[122]	=	10376569547
	GetExp[123]	=	10676429542
	GetExp[124]	=	10976349543
	GetExp[125]	=	11272759545
	GetExp[126]	=	11671749547
	GetExp[127]	=	12079739549
	GetExp[128]	=	12478719541
	GetExp[129]	=	12877759543
	GetExp[130]	=	13276789545
	
function AddExp_1 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_1 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_1 = exp_up
	elseif lv_role > 20 and lv_role <= 30 then
		exp_1 = math.floor(exp_up * 0.8)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_1 = math.floor(exp_up * 0.2)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_1 = math.floor(exp_up * 0.2)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_1 = math.floor(exp_up * 0.1)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_1 = math.floor(exp_up * 0.05)
	else
		exp_1 = math.floor(exp_up * 0.03)
	end
	AddExp ( role, npc, exp_1, exp_1)
	return LUA_TRUE
end

function AddExp_2 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_2 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_2 = exp_up
	elseif lv_role > 20 and lv_role <= 30 then
		exp_2 = math.floor(exp_up * 0.9)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_2 = math.floor(exp_up * 0.3)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_2 = math.floor(exp_up * 0.22)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_2 = math.floor(exp_up * 0.11)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_2 = math.floor(exp_up * 0.055)
	else
		exp_2 = math.floor(exp_up * 0.033)
	end
	AddExp ( role, npc, exp_2, exp_2)
	return LUA_TRUE
end

function AddExp_3 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_3 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_3 = math.floor(exp_up * 1.2)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_3 = math.floor(exp_up * 1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_3 = math.floor(exp_up * 0.5)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_3 = math.floor(exp_up * 0.24)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_3 = math.floor(exp_up * 0.078)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_3 = math.floor(exp_up * 0.0083)
	else
		exp_3 = math.floor(exp_up * 0.0045)
	end
	AddExp ( role, npc, exp_3, exp_3)
end

function AddExp_4 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_4 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_4 = math.floor(exp_up * 1.4)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_4 = math.floor(exp_up * 1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_4 = math.floor(exp_up * 0.8)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_4 = math.floor(exp_up * 0.4)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_4 = math.floor(exp_up * 0.2)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_4 = math.floor(exp_up * 0.10)
	else
		exp_4 = math.floor(exp_up * 0.06)
	end
	AddExp ( role, npc, exp_4, exp_4)
	return LUA_TRUE
end

function AddExp_5 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_5 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_5 = math.floor(exp_up * 1.6)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_5 = math.floor(exp_up * 1.1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_5 = math.floor(exp_up * 1)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_5 = math.floor(exp_up * 0.44)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_5 = math.floor(exp_up * 0.22)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_5 = math.floor(exp_up * 0.11)
	else
		exp_5 = math.floor(exp_up * 0.066)
	end
	AddExp ( role, npc, exp_5, exp_5)
	return LUA_TRUE
end

function AddExp_6 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_6 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_6 = math.floor(exp_up * 1.8)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_6 = math.floor(exp_up * 1.2)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_6 = math.floor(exp_up * 1.2)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_6 = math.floor(exp_up * 0.5)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_6 = math.floor(exp_up * 0.25)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_6 = math.floor(exp_up * 0.125)
	else
		exp_6 = math.floor(exp_up * 0.075)
	end
	AddExp ( role, npc, exp_6, exp_6)
	return LUA_TRUE
end

function CheckTeam ( role )
--	SystemNotice( role, "进入1")
	local player = {}
	player[1] = role
	player[2] = GetTeamCha( role , 0 )
	player[3] = GetTeamCha( role , 1 )
	player[4] = GetTeamCha( role , 2 )
	player[5] = GetTeamCha( role , 3 )
	local n1 = 0
	local n2 = 0
	local n3 = 0

	for j = 0 , 5 , 1 do	
		if ValidCha( player[j] )== 1  then					--被加入组队经验分配的角色必须存在
			local lv_p = GetChaAttr ( player[j] , ATTR_LV )
--			SystemNotice( role, "进入2")
--			SystemNotice( role, "玩家等级"..lv_p)
			if lv_p >= 20 and lv_p <= 30 then
				n1 = n1 + 1
			elseif lv_p > 30 and lv_p <= 40 then
				n2 = n2 + 1
			elseif lv_p > 40 then
				n3 = n3 + 1
			end
		end
	end
--	SystemNotice( role , "队伍内共有20到30级人数:"..n1..",31到40级人数:"..n2..",40级以上人数:"..n3)
	if n1 >= 1 and n2 >= 1 and n3>= 1 then
		return LUA_TRUE
	end
end

function CheckTime ( role )
	local now_week= os.date("%w")		-------------星期几（十进制） 
	local now_hour= os.date("%H")		-------------时 
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
--	SystemNotice( role, "星期"..now_week.."时间"..now_hour)
	if now_week == 6 then
		if now_hour >= 9 and now_hour < 12 then
			return LUA_TRUE
		elseif now_hour >= 21 then
			return LUA_TRUE
		end
	end
end

--------北美铁人六项活动结束---------bragi-----
-------------------------------------------------------------------------------------
--				Leo的防外挂答题奖励
-------------------------------------------------------------------------------------
function WGPrizeBegin( role , rightCount)
	local rightCountTemp = rightCount
	if rightCountTemp > 6 then
		rightCountTemp = 6
	end
	
	local isPrizeRandom = math.random(rightCountTemp,10)
	local retRandom = math.random ( 1 , 100 )
	local ret  = 1
	
	if isPrizeRandom > 5  then
		if math.mod ( retRandom , 6 ) == 0 then
			 ret = WGprize_1(role)
		end
		
		if math.mod ( retRandom , 6 ) == 1  then
			 ret = WGprize_2(role)
		end
		
		if math.mod ( retRandom , 6 ) == 2  then
			 ret = WGprize_3(role)
		end
		
		if math.mod ( retRandom , 6 ) == 3  then
			 ret = WGprize_4(role)
		end
		
		if math.mod ( retRandom , 6 ) == 4  then
			 ret = WGprize_5(role)
		end
		
		if math.mod ( retRandom , 6 ) == 5  then
			 ret = WGprize_6(role)
		end
		
		if ret ==1 then
			SystemNotice( role , "error")
		end
	else
		SystemNotice( role , "Correct! You have failed to win any prize" )
	end
end
function WGprize_1( role ) --加经验 LV * 10
	local expNow = GetChaAttr( role , ATTR_CEXP )
	local lvNow = GetChaAttr( role , ATTR_LV)
	
	SystemNotice( role , "Correct! You have obtained " .. lvNow*10 .. " experience points")
	SetChaAttrI(  role , ATTR_CEXP ,expNow+lvNow*10  )
	RefreshCha(role)
	return 0
end

function WGprize_2( role ) --将当前血补满
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	SystemNotice( role , "Correct! Your HP is restored")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_3(role) --将当前蓝补满
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , "Correct! Your SP is restored")
	SetChaAttrI( role , ATTR_SP, SPMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_4(role) --奖励LV*1个蛋糕
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "Correct! You have obtained " .. lvNow .. " cakes")
	
	GiveItem( role , 0 , 1849  , lvNow , 4 )	
	return 0
end

function WGprize_5(role) --神仙酱果1个
	SystemNotice( role , "Correct! You have obtained 1 Old Ticket")
	
	GiveItem( role , 0 , 3141  , 1 , 4 )	
	return 0
end

function WGprize_6(role) --血蓝全满
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	
	SystemNotice( role , "Correct! Your HP and SP is restored")
	
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	SetChaAttrI( role , ATTR_SP ,SPMaxNow  )
	RefreshCha(role)
	return 0
end
---------------------------------------------------------------------------------------
----				Leo  end
---------------------------------------------------------------------------------------

--Leo的兑换检测
function Can_Exchange(sSrcItem,sSrcNum,sTagItem,sTagNum)
	local Data
	for Data in ChangeItemList do
		 if ChangeItemList[Data][1] == sSrcItem and  ChangeItemList[Data][2] == sSrcNum and ChangeItemList[Data][3] == sTagItem and ChangeItemList[Data][4] == sTagNum then
			return LUA_TRUE
		 end
	end
	return LUA_FALSE
end

----2.0 Scripts
function CheckTeam1 ( role , value )
	local player = {}
	player[1] = role
	player[2] = GetTeamCha( role , 0 )
	player[3] = GetTeamCha( role , 1 )
	player[4] = GetTeamCha( role , 2 )
	player[5] = GetTeamCha( role , 3 )

	local n = 0

	for j = 0 , 5 , 1 do	
		if ValidCha( player[j] )== 1  then					--被加入组队经验分配的角色必须存在
			n = n+1
		end
	end
	if n >= value then
		return LUA_TRUE
	end
end

function SetTestTime ( role )
	local i = CheckBagItem( role,579 )
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	local now_second=  os.date("%S")		-------------秒
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_second= tonumber(now_second)		-------------秒
--	SystemNotice( role , "证书数量为"..i)
--	SystemNotice( role , "现在时间为"..now_month.."月"..now_day.."日"..now_hour.."时"..now_miniute.."分"..now_second.."秒")
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		SetItemAttr(Item, ITEMATTR_VAL_STA, now_month )		-------------月 	
		SetItemAttr(Item, ITEMATTR_VAL_STR, now_day )		-------------日  
		SetItemAttr(Item, ITEMATTR_VAL_CON, now_hour )		-------------时   
		SetItemAttr(Item, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
		SetItemAttr(Item, ITEMATTR_VAL_AGI, now_second )		-------------秒
		SetItemAttr(Item, ITEMATTR_MAXENERGY, 0)
		SynChaKitbag(role,13)
		return LUA_TRUE
	end
end

function RenewTestTime1 ( role )
	local i = CheckBagItem( role,579 )
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	local now_second=  os.date("%S")		-------------秒
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_second= tonumber(now_second)		-------------秒 
--	SystemNotice( role , "证书数量为"..i)
--	SystemNotice( role , "现在时间为"..now_month.."月"..now_day.."日"..now_hour.."时"..now_miniute.."分"..now_second.."秒")
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
--		SystemNotice( role , "1")
		local n = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
--		SystemNotice( role , "原n="..n)
		local old_month = GetItemAttr ( Item, ITEMATTR_VAL_STA )
		local old_day = GetItemAttr ( Item, ITEMATTR_VAL_STR )
		local old_hour = GetItemAttr ( Item, ITEMATTR_VAL_CON )
--		SystemNotice( role , "原month="..old_month)
--		SystemNotice( role , "原day="..old_day)
--		SystemNotice( role , "原hour="..old_hour)
		local old_miniute = GetItemAttr ( Item, ITEMATTR_VAL_DEX )
		local old_second = GetItemAttr ( Item, ITEMATTR_VAL_AGI )
--		SystemNotice( role , "原miniute="..old_miniute)
--		SystemNotice( role , "原second="..old_second)
		local used_time=(now_second - old_second)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(now_month - old_month)*259200
--		SystemNotice( role , "花费时间为"..used_time)
		if used_time <= 30 then
			n = n + 1
		end
--		SystemNotice( role , "答对次数为"..n)
		SetItemAttr(Item, ITEMATTR_VAL_STA, now_month )		-------------月 	
		SetItemAttr(Item, ITEMATTR_VAL_STR, now_day )		-------------日  
		SetItemAttr(Item, ITEMATTR_VAL_CON, now_hour )		-------------时   
		SetItemAttr(Item, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
		SetItemAttr(Item, ITEMATTR_VAL_AGI, now_second )		-------------秒
		SetItemAttr(Item, ITEMATTR_MAXENERGY, n)
		SynChaKitbag(role,13)
		return LUA_TRUE
	end
end

function RenewTestTime2 ( role )
	local i = CheckBagItem( role,579 )
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	local now_second=  os.date("%S")		-------------秒
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_second= tonumber(now_second)		-------------秒     
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		SetItemAttr(Item, ITEMATTR_VAL_STA, now_month )		-------------月 	
		SetItemAttr(Item, ITEMATTR_VAL_STR, now_day )		-------------日  
		SetItemAttr(Item, ITEMATTR_VAL_CON, now_hour )		-------------时   
		SetItemAttr(Item, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
		SetItemAttr(Item, ITEMATTR_VAL_AGI, now_second )		-------------秒
		return LUA_TRUE
	end
end


function CheckRightNum ( role )
	local i = CheckBagItem( role,579 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		local n = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
		if n == 8 then
			return LUA_TRUE
		end
	end
end

function CheckErroNum ( role )
	local i = CheckBagItem( role,579 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		local n = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
		if n < 8 then
			return LUA_TRUE
		end
	end
end

function CheckRealNpc ( role , value )
	local now_hour= os.date("%H")		-------------时
	now_hour= tonumber(now_hour)			-------------时 
	local n = ( now_hour/4 - math.floor ( now_hour/4 )) * 4
	if n == value then
		return LUA_TRUE
	else
		SystemNotice( role, "一阵头晕眼花之后,你被假的库拉托斯传回了白银")
	end
end

---------------------------------------------------kokora--------------------------------------------------

---------------------------------------------------金秋十月大闸蟹活动之给予7200耐久值的蟹苗
function Givecrab( character  )	
	local c1=0
	local c2=0
	c1,c2 =MakeItem(character, 58, 1, 4)			--value才是道具ID   C2是返回的创建道具位置编号
	local Item_CRAB = GetChaItem ( character , 2 , c2 )			--从角色的背包位 2 取位置 C2的道具的指针
	
	local CRAB_NOW = 7200                                                                              
	
	SetItemAttr(Item_CRAB, ITEMATTR_MAXENERGY, CRAB_NOW)						--设置最大耐久
	SetItemAttr(Item_CRAB, ITEMATTR_ENERGY, CRAB_NOW)								 --设置当前耐久，该值在每分钟后会扣一点
	RefreshCha( character )
	SystemNotice (character , "蟹苗必须放置在背包栏第2格才会茁壮成长！" )
end


---------------------------------------------------金秋十月大闸蟹活动之判断蟹苗耐久是否为0
function crablife( character )
	local Crab_Num = 0
	Crab_Num = CheckBagItem(  character , 58 )		--检查背包内58号道具的数量
	
	if Crab_Num == 1 then				--如果58号道具的数量大于等于1
		local crab = GetChaItem2 (  character , 2 , 58 )			--取到角色背包内道具ID为58的道具的指针
		local ENERGY = GetItemAttr(crab, ITEMATTR_ENERGY)
		if ENERGY ==0 then
			return LUA_TRUE
		end
	else
		SystemNotice( character, "请确保您的身上只有一只蟹苗")
	end

end

---------------------------------------------------kokora--------------------------------------------------

--海盗罗盘给道具

function GiveZNZItem ( role )
		SystemNotice(role ,"进来了")
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10000 )
	--SystemNotice(role ,"star=="..star)
	if star<=8000 then
		GiveItem ( role , 0 , 2999  , 1 , 4  )
	elseif star>=8001 and star<=9500 then
		local el = math.random ( 1, 15 )
		if el<=5  then
			GiveItem ( role , 0 , 0227  , 1 , 4 )
		elseif el>=6 and el<=7 then
			GiveItem ( role , 0 , 3111  , 1 , 4 )
		elseif el>=8 and el<=9 then
			GiveItem ( role , 0 , 3109  , 1 , 4 )
		elseif el>=10 and el<=11 then
			GiveItem ( role , 0 , 3110  , 1 , 4 )
		elseif el>=12 and el<=13 then
			GiveItem ( role , 0 , 3112  , 1 , 4 )
		elseif el>=14 and el<=15 then
			GiveItem ( role , 0 , 3113  , 1 , 4 )
		end


	elseif star>=9501 and star<=9800 then
		local el1= math.random ( 1, 5 )
		if el1==1  then
			GiveItem ( role , 0 , 0863  , 1 , 4 )
			local message = cha_name.."人品爆发,根据洛克藏宝图探索到 炎玉" 
			Notice ( message )
		elseif el1==2 then
			GiveItem ( role , 0 , 0860  , 1 , 4 )
			local message1 = cha_name.."人品爆发,根据洛克藏宝图探索到 风灵石" 
			Notice ( message1 )
		elseif el1==3 then
			GiveItem ( role , 0 , 0861  , 1 , 4 )
			local message2 = cha_name.."人品爆发,根据洛克藏宝图探索到 鹰眼石" 
			Notice ( message2 )
		elseif el1==4 then
			GiveItem ( role , 0 , 0862  , 1 , 4 )
			local message3 = cha_name.."人品爆发,根据洛克藏宝图探索到 岩玉" 
			Notice ( message3 )
		elseif el1==5 then
			GiveItem ( role , 0 , 1028  , 1 , 4 )
			local message4 = cha_name.."人品爆发,根据洛克藏宝图探索到 摩力符石" 
			Notice ( message4 )
		end
	
	
	elseif star>=9801 and star<=9998 then
		local el2= math.random ( 1, 100 )
		if el2<=50  then
			GiveItem ( role , 0 , 0992  , 1 , 4 )
			local message5 = cha_name.."人品爆发,根据洛克藏宝图探索到 成长快餐" 
			Notice ( message5 )
		elseif el2>=51 and el2<=74 then
			GiveItem ( role , 0 , 0853  , 1 , 4 )
			local message6 = cha_name.."人品爆发,根据洛克藏宝图探索到 假期欢乐杂志" 
			Notice ( message6 )
		elseif el2>=75 and el2<=100 then
			GiveItem ( role , 0 , 1012  , 1 , 4 )
			local message7 = cha_name.."人品爆发,根据洛克藏宝图探索到 加纳之神" 
			Notice ( message7 )
		end

	elseif star>=9899 and star<=10000 then
		local el3= math.random ( 1, 100 )
		if el3==63  then
			GiveItem ( role , 0 , 0096  , 1 , 4 )
			local message8= cha_name.."人品爆发,根据洛克藏宝图探索到 船长之首" 
			Notice ( message8 )
		elseif el3==98  then
			GiveItem ( role , 0 , 0094  , 1 , 4 )
			local message9 = cha_name.."人品爆发,根据洛克藏宝图探索到 元帅之首" 
			Notice ( message9 )
		end
	end
end

-------------------------------------------------------------------------------------
--				Leo的读书系统函数   
-------------------------------------------------------------------------------------
--学生证属性对应
--ITEMATTR_FORGE                 学历 值：0，1，2，3，4 对应   幼儿园，小学，初中，高中，大学
--ITEMATTR_MAXENERGY            最大经验
--ITEMATTR_MAXURE          最大学分
--ITEMATTR_ENERGY                     当前经验
--ITEMATTR_URE                  当前学分

--书本属性对应
--ITEMATTR_URE                          当前耐久
--ITEMATTR_MAXURE                  最大耐久
---------------------------------------------------------------------------------
-- 函数列表
-- Check_Skill_Rad( Skill_Level )                                              --通过技能等级取得技能的经验加成值
-- Check_Equip_Rad( Buff_Equip_ID )		                              --通过辅助品ID取得辅助品的经验加成值
--  Check_Item_Rad(role)															  --通过角色取加成经验的状态
-- Check_Exp_Increase( Book_ID )	                                          --通过书ID取到书本的经验增长值
-- Add_BookEXP(role , Certificate , Book_ID , Skill_Level)    --向学生证里添加经验的函数，在Reading_Book中调用
-- Take_BookDurability(role , Book)                                           --扣除主手装备的书的耐久函数，在Reading_Book中调用
-- Reading_Book(role,Skill_Level)											   --             主函数               读书函数，本函数在角色进入读书状态时由服务器每隔一分钟调用一次
function Check_Skill_Rad( Skill_Level )			--取得技能的经验加成值	
		local Skill_Rad												--Lua为什么没有switch!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		if Skill_Level == 2 then
			Skill_Rad = 0.05
		elseif Skill_Level == 3 then
			Skill_Rad = 0.10
		elseif Skill_Level == 4 then
			Skill_Rad = 0.15
		elseif Skill_Level == 5 then
			Skill_Rad = 0.2
		else
			Skill_Rad = 0
		end

		return Skill_Rad
end

function Check_Equip_Rad( Buff_Equip_ID )		--取得辅助品的经验加成值
		local Equip_Rad
		if Buff_Equip_ID == 3285then
			Equip_Rad = 0.05
		elseif Buff_Equip_ID == 3287 then
			Equip_Rad = 0.1
		else
			Equip_Rad = 0
		end
		
		return Equip_Rad
end

function Check_Item_Rad(role)							--通过角色取加成经验的状态
	local stateLV_Apple
	local Item_Rad
	
	stateLV_Apple = GetChaStateLv ( role , STATE_APPLE )		--取智慧果状态等级
	
	if stateLV_Apple == 1 then
		Item_Rad = 0.3

	elseif stateLV_Apple == 2 then
		Item_Rad = 0.5
	else
		Item_Rad = 0
	end
	
	return Item_Rad
end

function Check_Exp_Increase( Book_ID )		--通过ID取到书本的经验增长值
		local Book_ID_mod
		local Book_Exp_Increase
		
		--缩放比率
		if Book_ID >= 3243 and Book_ID <= 3246 then            --未转职   初级
				Book_Exp_Increase = 1
		elseif Book_ID >= 3247 and Book_ID <= 3250 then     --中级
				Book_Exp_Increase = 3
		elseif Book_ID >= 3251 and Book_ID <= 3254 then     --高级
				Book_Exp_Increase =5
		elseif Book_ID >= 3255 and Book_ID <= 3260 then		--转职  初级
				Book_Exp_Increase = 9
		elseif Book_ID >= 3261 and Book_ID <= 3266 then      --中级
				Book_Exp_Increase = 13
		elseif Book_ID >= 3267 and Book_ID <= 3272 then       --高级
				Book_Exp_Increase = 18
		elseif Book_ID >= 3273 and Book_ID <= 3278 then       --实用技巧大全
				Book_Exp_Increase = 24
		else
				Book_Exp_Increase = 0
		end
		
		return Book_Exp_Increase
end

function Add_BookEXP(role , Certificate , Book_ID , Skill_Level)    --向项链里添加经验的函数，在Reading_Book中调用
		
		local Role_Level
		local Buff_Equip
		local Buff_Equip_ID
		local Exp_Increase				--经验成长量
		local Skill_Rad
		local Equip_Rad
		local Item_Rad
		local DoubleEffect
		
		Role_Level = Lv( role )
		Buff_Equip= GetChaItem ( role , 1 , 6 )                        --取右手装备指针
		Buff_Equip_ID = GetItemID( Buff_Equip )
		
		Skill_Rad = Check_Skill_Rad(Skill_Level)					--取技能对经验的加成值
		Equip_Rad = Check_Equip_Rad(Buff_Equip_ID)		--取装备对经验的加成值
		Item_Rad = Check_Item_Rad(role)								--取角色状态对经验的加成值
		Exp_Increase = Check_Exp_Increase( Book_ID )		--取经验增长值

		Exp_Increase = Exp_Increase * ( 1 + Skill_Rad + Equip_Rad + Item_Rad )		--修正后结果
		
		--开始加经验
		local Book_Exp_Now = GetItemAttr( Certificate , ITEMATTR_ENERGY )			--取当前经验
		local Book_Exp_Max =  GetItemAttr( Certificate , ITEMATTR_MAXENERGY )	--取最大就经验
		
		Book_Exp_Now = Book_Exp_Now + Exp_Increase
		
		if Book_Exp_Now >= Book_Exp_Max then
			Book_Exp_Now = Book_Exp_Max
		end
		
		SetItemAttr ( Certificate , ITEMATTR_ENERGY , Book_Exp_Now )
end

function  Take_BookDurability(role , Book , Certificate)  --扣除主手装备的耐久函数，在Reading_Book中调用
--		SystemNotice(role , "Deducting durability")		
		
		local Durability_Reduce = 250					--耐久减少量
		local Book_Dur_Now = GetItemAttr( Book , ITEMATTR_URE )
		local Book_Dur_Max = GetItemAttr( Book , ITEMATTR_MAXURE )
		
		local Certificate_Exp_Now = GetItemAttr( Certificate , ITEMATTR_ENERGY )	--取学生证当前经验
		local Certificate_Exp_Max = GetItemAttr( Certificate , ITEMATTR_MAXENERGY )	--取学生证最大就经验
		
		if Certificate_Exp_Now == Certificate_Exp_Max then
			SystemNotice(role, "Your Student Card's EXP is full. Please take the Graduation Quest.")
			return 0
		end
		SystemNotice(role,"Through the efforts of Study, your Student Card has increased EXP.")
		Book_Dur_Now =  Book_Dur_Now - Durability_Reduce
		
		if Book_Dur_Now <=0 then
			Book_Dur_Now = 0
		end
		
		SetItemAttr ( Book , ITEMATTR_URE , Book_Dur_Now )
end

function Reading_Book(role,Skill_Level)			--读书函数，本函数在角色进入读书状态时调用
		--1：检测是否可以读书，不可读书退出函数
		--2：标记读书开关为读书状态
		--3：开始处理：向书里累计经验
		--4：开始处理：扣除书的耐久
--		SystemNotice( role , "Star Reading" )
		
		local Book
		local Book_ID

		local Certificate
		local Certificate_ID
		
		Book = GetChaItem ( role , 1 , 9 )                        --取住手装备指针
		Book_ID =  GetItemID( Book )           								   --取该装备ID

		Certificate = GetChaItem ( role , 1 , 5 )                --取项链装备指针
		Certificate_ID = GetItemID( Certificate )                 --取该装备ID
		local Book_Dur = GetItemAttr( Book , ITEMATTR_URE )
		if Book_Dur > 0 then
			if  Certificate_ID == 3289 then							             	--如果ID等于学生证
				if  Book_ID >= 3243 and  Book_ID <= 3278 then
					Take_BookDurability( role , Book , Certificate)     --扣除书耐久
					Add_BookEXP( role , Certificate , Book_ID,Skill_Level )	    --向学生证里添加经验
					Refreshcha( role )
				else
					SystemNotice(role,"You don't have a book")
				end
			else
				SystemNotice(role,"You don't have a Student Card")
			end
		else
			SystemNotice(role,"Book's durability reached 0, please get a new Book!")
		end
end

----学分最大值
	Reading_Credit = {}
	Reading_Credit[0] = 150
	Reading_Credit[1] = 250
	Reading_Credit[2] = 400
	Reading_Credit[3] = 800
	Reading_Credit[4] = 4500	
	
----经验最大值
	Reading_EXP = {}
	Reading_EXP[0] = 120
	Reading_EXP[1] = 700
	Reading_EXP[2] = 1700
	Reading_EXP[3] = 3000
	Reading_EXP[4] = 5000
	


-------检测学生证中经验是否存满          --不调用
function CheckXSZExp( character )
	local xsz_num = 0
	xsz_num = CheckBagItem( character, 3289 )
	if xsz_num ~= 1 then
		SystemNotice ( character , "Put the Student Card in your inventory!")
		return 0
	end
	local role_xsz = GetChaItem2 ( character , 2 , 3289 )
	local exp_xsz = GetItemAttr ( role_xsz , ITEMATTR_ENERGY )
	local mexp_xsz = GetItemAttr ( role_xsz, ITEMATTR_MAXENERGY)
	-- SystemNotice( character , ""..exp_xsz)
	-- SystemNotice( character , ""..mexp_xsz)
	if exp_xsz == mexp_xsz then
		return LUA_TRUE
	end

	return LUA_FALSE
end

------检测学生证中学分是否存满
function CheckXSZCh( character )
	local xsz_num = 0
	xsz_num = CheckBagItem( character, 3289 )
	if xsz_num ~= 1 then
			SystemNotice( character , "Put the Student Card in your inventory!")
			return 0
	end
	local role_xsz = GetChaItem2 ( character , 2 , 3289 )
	local ch_xsz = GetItemAttr ( role_xsz , ITEMATTR_URE )
	local mch_xsz = GetItemAttr ( role_xsz , ITEMATTR_MAXURE )
	if ch_xsz == mch_xsz then
		return LUA_TRUE
	end
	
	return	LUA_FALSE
end

function ReadBookTime()					---------------设定READINGBOOK函数调用间隔
--	Notice( "时间设定")
	return 600*1000
end

function ReadBookSkillId()				--------------设定READINGBOOK函数技能标号
--	Notice( "技能编号设定")
	return 461
end

-------------------------------------------------------------------------------------
--				Leo  end
-------------------------------------------------------------------------------------
--给教堂使用证书并加注使用时间--------function


function AuctionEnd (role)
	local sc = CheckBagItem( role, 3025 )	                    -------------080317kokora change	
	if sc <=0 then
		SystemNotice( role ,"请确保您身上携有教堂竞标卡")
		return 0
	end
	--local s = DelBagItem ( role , 3025 , 1 ) 
	local item_number = CheckBagItem( role, 3066 )		
	if item_number >=1 then
		SystemNotice( role ,"请确保您身上没有教堂使用证书")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"请确保有2个剩余空间")
		return 0
	end
	GiveItem ( role , 0 , 3666 , 10 , 4) ---------------嘉宾宝箱
	DelBagItem(role,3025,1)
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( role , 3066  , 1 , 4 )
	local Item_new = GetChaItem ( role , 2 , r2 )
	
	----------记录时间
	
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时 
	local now_miniute= os.date("%M")	-------------分
	local now_day1= 0
	local now_month1= 0
	local now_hour1= 0
	local now_miniute1= 0
	    
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日    
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute

if CheckDateNum==1830  then 

	now_hour1= 18
	now_miniute1= 0
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=26 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>26 then 
		    now_day1=(now_day+5)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=25 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+5)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=23 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>23 then 
		    now_day1=(now_day+5)-28
		    now_month1=now_month+1
		    	
	         end 

	end
	
elseif CheckDateNum==1910  then 
	now_hour1= 20
	now_miniute1= 10	
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=26 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>26 then 
		    now_day1=(now_day+5)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=25 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+5)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=23 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>23 then 
		    now_day1=(now_day+5)-28
		    now_month1=now_month+1
	         end 
	end

elseif CheckDateNum==1950  then 
	now_hour1= 18
	now_miniute1= 0  
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=25 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+6)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=24 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>24 then 
		    now_day1=(now_day+6)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=22 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>22 then 
		    now_day1=(now_day+6)-28
		    now_month1=now_month+1
	         end 
	end

elseif CheckDateNum==2030  then 

	 now_hour1= 20
	 now_miniute1= 10
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=25 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+6)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=24 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>24 then 
		    now_day1=(now_day+6)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=22 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>22 then 
		    now_day1=(now_day+6)-28
		    now_month1=now_month+1
	         end 
	end

end
	--SystemNotice ( role , "now_month1=="..now_month1 )
	--SystemNotice ( role , "now_day1=="..now_day1 )
	--SystemNotice ( role , "now_hour1=="..now_hour1 )
	--SystemNotice ( role , "now_miniute1=="..now_miniute1 )
---------------------加注时间
	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month1 )		-------------月 	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day1 )		-------------日  
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour1 )		-------------时 
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute1 )		-------------分
	SynChaKitbag(role,13)
end

--------------竞标资格
function YORN (role)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"请确保有2个剩余空间")
		return  0
	end

	local item_number1 = CheckBagItem( role, 3066 )		
	if item_number1 >=1 then
		SystemNotice( role ,"请确保您身上没有教堂使用证书")
		return 0
	end
	
	local item_number2 = CheckBagItem( role, 3078 )		
	if item_number2 >=1 then
		SystemNotice( role ,"请确保您身上没有请柬")
		return  0
	end
	
	local item_number3 = CheckBagItem( role, 3025 )		
	if item_number3 <1 then
		SystemNotice( role ,"请确保您身上有教堂竞标卡")
		return  0
	end
	 return  1
end

----检查学生证经验必须大于0
function HasReadExp( role )
		local xsz_num = 0
	xsz_num = CheckBagItem(  role, 3289 )
	if xsz_num ~= 1 then
		SystemNotice (  role , "Put the Student Card in your inventory!")
		return 0
	end
	local role_xsz = GetChaItem2 (  role , 2 , 3289 )
	local exp_xsz = GetItemAttr ( role_xsz , ITEMATTR_ENERGY )
	
	if exp_xsz > 0 then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end

---------------Fairy Coin Chest
function GiveBragiItem ( role , value )
	local pinzhi = 0
	local ChaName = GetChaDefaultName ( role )
	local a = math.random ( 1 , 100000000 )
	--SystemNotice ( role , "RP="..a)
--	if a >= 1 and a <= 14 then							----给75BOSS装
--		local Item_Id = a + 2330
--		local Item_Name = GetItemName ( Item_Id )
--		GiveItem ( role , 0 , Item_Id , 1 , 4 )
--		Notice ( "恭喜"..ChaName.."打开精灵硬币宝箱，人品爆发获得了"..Item_Name)
--		LG ( "JLYBBOX" , "玩家"..ChaName.."开启精灵硬币宝箱得到"..Item_Name)
--	elseif a >= 15 and a <= 33 then							-----给75BOSS装
--		local Item_Id = a + 2802
--		local Item_Name = GetItemName ( Item_Id )
--		GiveItem ( role , 0 , Item_Id , 1 , 4 )
--		Notice ( "恭喜"..ChaName.."打开精灵硬币宝箱，人品爆发获得了"..Item_Name)
--		LG ( "JLYBBOX" , "玩家"..ChaName.."开启精灵硬币宝箱得到"..Item_Name)
	if a >= 1 and a <= 10000000 then						------给1%经验
		AddExpAll ( role , 1, 1, 2 )
	elseif a >= 10000001 and a <= 12200000 then					------给2%经验
		AddExpAll ( role , 2, 2, 2 )
	elseif a >= 12200001 and a <= 42200000 then					------给钱
		--SystemNotice ( role , "进入")
--		local minval = value 
--		local maxval = value * 10
--		--SystemNotice ( role , "最小为"..minval.."最大为"..maxval)
--		local b = math.random ( minval , maxval )
--		--SystemNotice ( role , "给钱"..b)
--		local Money_Add = b * 10000
--		AddMoney ( role , 0 , Money_Add )
		AddExpAll( role, 100000, 1000000, 1)
	elseif a >= 42200001 and a <= 62200000 then					------10个体力恢复药剂
		GiveItem ( role , 0 , 3848 , 10 , 4 )
	elseif a >= 62200001 and a <= 65500000 then					------给黑市装备
		local c = math.random ( 1 , 35 )
		if c >= 1 and c <= 33 then
			local Item_Id = c + 3301					--Black Market Equipments
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		else
			local Item_Id = c + 54						--
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		end
	elseif a >= 65500001 and a <= 67500000 then					------3个强效体力恢复，3个SP神仙水
		GiveItem ( role , 0 , 3098 , 3 , 4 )
		GiveItem ( role , 0 , 3099 , 3 , 4 )
	elseif a >= 67500001 and a <= 87500000 then					------机票
		local d = math.random ( 1 , 16 )
		if d == 1 then 
			GiveItem ( role , 0 , 3056 , 3 , 4 )
		elseif d == 2 then
			GiveItem ( role , 0 , 3057 , 3 , 4 )
		elseif d == 3 then
			GiveItem ( role , 0 , 3058 , 3 , 4 )
		elseif d == 4 then
			GiveItem ( role , 0 , 3059 , 3 , 4 )
		elseif d == 5 then
			GiveItem ( role , 0 , 3060 , 3 , 4 )
		elseif d == 6 then
			GiveItem ( role , 0 , 3050 , 3 , 4 )
		elseif d == 7 then
			GiveItem ( role , 0 , 3051 , 3 , 4 )
		elseif d == 8 then
			GiveItem ( role , 0 , 3052 , 3 , 4 )
		elseif d == 9 then
			GiveItem ( role , 0 , 3053 , 3 , 4 )
		elseif d == 10 then
			GiveItem ( role , 0 , 3048 , 3 , 4 )
		elseif d == 11 then
			GiveItem ( role , 0 , 332 , 3 , 4 )
		elseif d == 12 then
			GiveItem ( role , 0 , 563 , 3 , 4 )
		elseif d == 13 then
			GiveItem ( role , 0 , 583 , 3 , 4 )
		elseif d == 14 then
			GiveItem ( role , 0 , 2447 , 3 , 4 )
		elseif d == 15 then
			GiveItem ( role , 0 , 2491 , 3 , 4 )
		elseif d == 16 then
			GiveItem ( role , 0 , 2844 , 3 , 4 )
		end
	elseif a >= 87500001 and a <= 93500000 then					----精炼石
		GiveItem ( role , 0 , 885 , 1 , 4 )
	elseif a >= 93500001 and a <= 94500000 then					----宝石
		local e = math.random ( 1 , 11 )
		if e >= 1 and e <= 4 then
			local Item_Id = e + 859
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		else
			local Item_Id = e + 873
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		end
	else		
		local f = math.random ( 1 , 58 )
		if value == 1 then
			pinzhi = 4
		elseif value == 2 then
			pinzhi = 16
		elseif value == 3 then
			pinzhi = 22
		else
			SystemNotice( role , "Your character looks so good, I don't know what are you doing here.")
		end
		if f == 1 then
			GiveItem ( role , 0 , 0299 , 1 , pinzhi) 
		elseif f == 2 then
			GiveItem ( role , 0 , 0475 , 1 , pinzhi) 
		elseif f == 3 then
			GiveItem ( role , 0 , 0651 , 1 , pinzhi) 
		elseif f == 4 then
			GiveItem ( role , 0 , 0304 , 1 , pinzhi) 
		elseif f == 5 then
			GiveItem ( role , 0 , 0480 , 1 , pinzhi) 
		elseif f == 6 then
			GiveItem ( role , 0 , 0656 , 1 , pinzhi) 
		elseif f == 7 then
			GiveItem ( role , 0 , 0229 , 1 , pinzhi) 
		elseif f == 8 then
			GiveItem ( role , 0 , 653 , 1 , pinzhi)  
		elseif f == 9 then
			GiveItem ( role , 0 , 0230 , 1 , pinzhi) 
		elseif f == 10 then
			GiveItem ( role , 0 , 477 , 1 , pinzhi)  
		elseif f == 11 then
			GiveItem ( role , 0 , 0371 , 1 , pinzhi) 
		elseif f == 12 then
			GiveItem ( role , 0 , 0547 , 1 , pinzhi)  
		elseif f == 13 then
			GiveItem ( role , 0 , 0723 , 1 , pinzhi) 
		elseif f == 14 then
			GiveItem ( role , 0 , 0394 , 1 , pinzhi) 
		elseif f == 15 then
			GiveItem ( role , 0 , 0570 , 1 , pinzhi)  
		elseif f == 16 then
			GiveItem ( role , 0 , 0746 , 1 , pinzhi) 
		elseif f == 17 then
			GiveItem ( role , 0 , 0382 , 1 , pinzhi) 
		elseif f == 18 then
			GiveItem ( role , 0 , 0558 , 1 , pinzhi)  
		elseif f == 19 then
			GiveItem ( role , 0 , 0734 , 1 , pinzhi) 
		elseif f == 20 then
			GiveItem ( role , 0 , 2204 , 1 , pinzhi) 
		elseif f == 21 then
			GiveItem ( role , 0 , 0393 , 1 , pinzhi) 
		elseif f == 22 then
			GiveItem ( role , 0 , 0569 , 1 , pinzhi)  
		elseif f == 23 then
			GiveItem ( role , 0 , 0745 , 1 , pinzhi) 
		elseif f == 24 then
			GiveItem ( role , 0 , 2215 , 1 , pinzhi) 
		elseif f == 25 then
			GiveItem ( role , 0 , 0385 , 1 , pinzhi) 
		elseif f == 26 then
			GiveItem ( role , 0 , 0561 , 1 , pinzhi)  
		elseif f == 27 then
			GiveItem ( role , 0 , 0737 , 1 , pinzhi) 
		elseif f == 28 then
			GiveItem ( role , 0 , 2207 , 1 , pinzhi) 
		elseif f == 29 then
			GiveItem ( role , 0 , 0364 , 1 , pinzhi) 
		elseif f == 30 then
			GiveItem ( role , 0 , 0540 , 1 , pinzhi)  
		elseif f == 31 then
			GiveItem ( role , 0 , 0716 , 1 , pinzhi) 
		elseif f == 32 then
			GiveItem ( role , 0 , 2201 , 1 , pinzhi) 
		elseif f == 33 then
			GiveItem ( role , 0 , 0355 , 1 , pinzhi) 
		elseif f == 34 then
			GiveItem ( role , 0 , 0531 , 1 , pinzhi)  
		elseif f == 35 then
			GiveItem ( role , 0 , 0707 , 1 , pinzhi) 
		elseif f == 36 then
			GiveItem ( role , 0 , 2192 , 1 , pinzhi) 
		elseif f == 37 then
			GiveItem ( role , 0 , 0358 , 1 , pinzhi) 
		elseif f == 38 then
			GiveItem ( role , 0 , 0534 , 1 , pinzhi)  
		elseif f == 39 then
			GiveItem ( role , 0 , 0710 , 1 , pinzhi) 
		elseif f == 40 then
			GiveItem ( role , 0 , 2195 , 1 , pinzhi) 
		elseif f == 41 then
			GiveItem ( role , 0 , 0312 , 1 , pinzhi) 
		elseif f == 42 then
			GiveItem ( role , 0 , 0488 , 1 , pinzhi)  
		elseif f == 43 then
			GiveItem ( role , 0 , 0664 , 1 , pinzhi) 
		elseif f == 44 then
			GiveItem ( role , 0 , 0317 , 1 , pinzhi) 
		elseif f == 45 then
			GiveItem ( role , 0 , 0493 , 1 , pinzhi)  
		elseif f == 46 then
			GiveItem ( role , 0 , 0669 , 1 , pinzhi) 
		elseif f == 47 then
			GiveItem ( role , 0 , 0345 , 1 , pinzhi) 
		elseif f == 48 then
			GiveItem ( role , 0 , 0521 , 1 , pinzhi)  
		elseif f == 49 then
			GiveItem ( role , 0 , 0697 , 1 , pinzhi) 
		elseif f == 50 then
			GiveItem ( role , 0 , 0344 , 1 , pinzhi) 
		elseif f == 51 then
			GiveItem ( role , 0 , 0520 , 1 , pinzhi)  
		elseif f == 52 then
			GiveItem ( role , 0 , 0696 , 1 , pinzhi) 
		elseif f == 53 then
			GiveItem ( role , 0 , 0369 , 1 , pinzhi) 
		elseif f == 54 then
			GiveItem ( role , 0 , 0545 , 1 , pinzhi)  
		elseif f == 55 then
			GiveItem ( role , 0 , 0721 , 1 , pinzhi) 
		elseif f == 56 then
			GiveItem ( role , 0 , 0377 , 1 , pinzhi) 
		elseif f == 57 then
			GiveItem ( role , 0 , 0553 , 1 , pinzhi)  
		elseif f == 58 then
			GiveItem ( role , 0 , 0729 , 1 , pinzhi) 
		end
	end
end


	GetExp	=	{}		------------取等级对应总经验
	GetExp[1]	=	0
	GetExp[2]	=	5
	GetExp[3]	=	15
	GetExp[4]	=	35
	GetExp[5]	=	101
	GetExp[6]	=	250
	GetExp[7]	=	500
	GetExp[8]	=	1000
	GetExp[9]	=	1974
	GetExp[10]	=	3208
	GetExp[11]	=	4986
	GetExp[12]	=	7468
	GetExp[13]	=	10844
	GetExp[14]	=	15338
	GetExp[15]	=	21210
	GetExp[16]	=	28766
	GetExp[17]	=	38356
	GetExp[18]	=	50382
	GetExp[19]	=	65306
	GetExp[20]	=	83656
	GetExp[21]	=	106032
	GetExp[22]	=	133112
	GetExp[23]	=	165668
	GetExp[24]	=	204564
	GetExp[25]	=	250780
	GetExp[26]	=	305412
	GetExp[27]	=	369692
	GetExp[28]	=	444998
	GetExp[29]	=	532870
	GetExp[30]	=	635026
	GetExp[31]	=	753378
	GetExp[32]	=	890062
	GetExp[33]	=	1047438
	GetExp[34]	=	1228138
	GetExp[35]	=	1435074
	GetExp[36]	=	1671470
	GetExp[37]	=	1940892
	GetExp[38]	=	2247288
	GetExp[39]	=	2595010
	GetExp[40]	=	2988860
	GetExp[41]	=	3434132
	GetExp[42]	=	3936658
	GetExp[43]	=	4502856
	GetExp[44]	=	5139778
	GetExp[45]	=	5855180
	GetExp[46]	=	6657576
	GetExp[47]	=	7556310
	GetExp[48]	=	8561630
	GetExp[49]	=	9684764
	GetExp[50]	=	10938016
	GetExp[51]	=	12334856
	GetExp[52]	=	13890020
	GetExp[53]	=	15619622
	GetExp[54]	=	17541282
	GetExp[55]	=	19674240
	GetExp[56]	=	22039516
	GetExp[57]	=	24660044
	GetExp[58]	=	27560852
	GetExp[59]	=	30769230
	GetExp[60]	=	37746418
	GetExp[61]	=	45876427
	GetExp[62]	=	59571153
	GetExp[63]	=	75703638
	GetExp[64]	=	94615279
	GetExp[65]	=	116688304
	GetExp[66]	=	155291059
	GetExp[67]	=	186418013
	GetExp[68]	=	238159614
	GetExp[69]	=	298622278
	GetExp[70]	=	368975850
	GetExp[71]	=	450525549
	GetExp[72]	=	568409779
	GetExp[73]	=	679324744
	GetExp[74]	=	806544569
	GetExp[75]	=	952091724
	GetExp[76]	=	1188099236
	GetExp[77]	=	1480429211
	GetExp[78]	=	1776125584
	GetExp[79]	=	2091634902
	GetExp[80]	=	2425349810
	GetExp[81]	=	2440895086
	GetExp[82]	=	2458896515
	GetExp[83]	=	2479742169
	GetExp[84]	=	2503881436
	GetExp[85]	=	2531834707
	GetExp[86]	=	2564204594
	GetExp[87]	=	2601688923
	GetExp[88]	=	2645095775
	GetExp[89]	=	2695360909
	GetExp[90]	=	2753567934
	GetExp[91]	=	2820971668
	GetExp[92]	=	2899025191
	GetExp[93]	=	2989411170
	GetExp[94]	=	3094078133
	GetExp[95]	=	3215282476
	GetExp[96]	=	3355637105
	GetExp[97]	=	3518167765
	GetExp[98]	=	3706378269
	GetExp[99]	=	3924326032
	GetExp[100]	=	4176709541

function AddReadingBook ( role )
	local job = GetChaAttr( role, ATTR_JOB)
	local Book_Id = 0
	if job == 1 then
		Book_Id = 3243
	elseif job == 2 then
		Book_Id = 3244
	elseif job == 4 then
		Book_Id = 3246
	elseif job == 5 then
		Book_Id = 3245
	elseif job == 8 then
		Book_Id = 3256
	elseif job == 9 then
		Book_Id = 3255
	elseif job == 12 then
		Book_Id = 3257
	elseif job == 13 then
		Book_Id = 3258
	elseif job == 14 then
		Book_Id = 3259
	elseif job == 16 then
		Book_Id = 3260
	else
		Book_Id = 3288
	end
	GiveItem( role , 0, Book_Id, 1, 4 )
	return LUA_TRUE
end


function AddExpPer ( role , value )			----------给予玩家当前等级升级所需百分比的经验
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_add = math.floor ( exp_up * value / 100 )
	local now_exp = GetChaAttr ( role , ATTR_CEXP )
	local new_exp = now_exp + exp_add
	local cha_name = GetChaDefaultName ( role )
	SetChaAttrI( role , ATTR_CEXP , new_exp )
	SystemNotice( role , "玩家"..cha_name.."获得了"..exp_add.."点经验")
	return LUA_TRUE
end
function AddExpAll ( role, value1, value2, type)	------------------添加经验
--	SystemNotice( role , "value1="..value1.."value2="..value2.."type="..type)
	local exp_now = GetChaAttr ( role, ATTR_CEXP )
	if type == 1 then							--------按数字加经验
		local exp_add = math.random ( value1, value2)
		local lv = GetChaAttr ( role, ATTR_LV )
		if lv < 80 then
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			exp_add = exp_add/50
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		end
	elseif type == 2 then							----------按百分比加经验
		local per_exp = math.random ( value1, value2)
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv < 80 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add = math.floor( ( exp_up * per_exp ) / 100 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		elseif lv >= 80 and lv < 100 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add =  math.floor ( ( exp_up * per_exp ) / 5000 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			exp_new = exp_now + 10000
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		end
	end
end


function AddExpNextLv1( role ) -----------------将玩家等级提升一级
	local exp_add = GetChaAttr ( role, ATTR_NLEXP )
	local cha_name = GetChaDefaultName ( role )
	SetChaAttrI( role , ATTR_CEXP , exp_add )	
	RefreshCha( role )
	Notice ( "玩家"..cha_name.."点秋香，双修成功，等级提升1级")
	return LUA_TRUE
end

function AddExpNextLv2( role ) -----------------将玩家等级提升一级
	local exp_add = GetChaAttr ( role, ATTR_NLEXP )
	local cha_name = GetChaDefaultName ( role )
	SetChaAttrI( role , ATTR_CEXP , exp_add )
	RefreshCha( role )
	Notice ( "玩家"..cha_name.."点秋香，天人合一，等级提升1级")
	return LUA_TRUE
end


---------------------------------------------------给予1440耐久值的陈年红酒
function AddChaHJ( character  )	
	local c1=0
	local c2=0
	c1,c2 =MakeItem(character, 2967, 1, 4)			--value才是道具ID   C2是返回的创建道具位置编号
	local Item_Rwine = GetChaItem ( character , 2 , c2 )			--从角色的背包位 2 取位置 C2的道具的指针
	
	local Rwine_NOW = 1440                                                                              
	
	SetItemAttr(Item_Rwine, ITEMATTR_MAXENERGY, Rwine_NOW)						--设置最大耐久
	SetItemAttr(Item_Rwine, ITEMATTR_ENERGY, Rwine_NOW)								 --设置当前耐久，该值在每分钟后会扣一点
	RefreshCha( character )
	SystemNotice (character , "陈年红酒必须放置在背包栏第2格才会更加醇香" )
end


---------------------------------------------------判断陈年红酒耐久是否为0
function CheckHJ ( character )
	local Rwine_Num = 0
	Rwine_Num = CheckBagItem(  character , 2967 )		--检查背包内2977号道具的数量
	if Rwine_Num == 1 then				--如果2977号道具的数量大于等于1
		local Rwine = GetChaItem2 (  character , 2 , 2967 )			--取到角色背包内道具ID为2977的道具的指针
		local ENERGY = GetItemAttr(Rwine, ITEMATTR_ENERGY)
		if ENERGY ==0 then
			return LUA_TRUE
		end
	else
		SystemNotice( character, "请确保您的身上只有一瓶陈年红酒")
	end

end

function CreatBBBB( role , MonsterID )
	local x , y = GetChaPos(role)
	x = x + 10
	y = y + 10
	local Refresh = 3600
	local life = 3600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	local Role_ID = GetRoleID(role)	---------新的
	BBBB[ Role_ID ] = new
	local hit = GetChaAttr( new , ATTR_HIT )
	--SystemNotice( role , "hit=="..hit )
	hit = 225
	SetCharaAttr ( hit , new , ATTR_HIT )
	--SystemNotice( role , "hit00=="..hit )



	return LUA_TRUE
end



function CheckBBBB( role )
	local Role_ID = GetRoleID(role)	
	local BBBB = BBBB[ Role_ID ]
	if BBBB~= nil and BBBB~= 0 then 
		local ISLive = ValidCha( BBBB )
		--SystemNotice( role , "ISLive==" ..ISLive)
		--local hit = GetChaAttr( BBBB , ATTR_HIT )
		--SystemNotice( role , "hit00==" ..hit)
		--if hit== 225 then
			local x01 , y01 = GetChaPos(role)
			local x02 , y02 = GetChaPos(BBBB)
			local X_red = math.abs( x01 - x02 )
			local Y_red = math.abs( y01 - y02 )
			if X_red <= 2000 and Y_red <= 2000 then
				KillCha( BBBB )-------新的
				return LUA_TRUE
			else
				SystemNotice( role , "你押送的东西不在你的身边啊" )
				return LUA_FALSE
			end
		--else
			--SystemNotice( role , "这只不是你要护送的那个圣诞老人啊!" )
			--return LUA_FALSE
		--end
	
	else
		SystemNotice( role , "你押送的东西不在你的身边啊" )
		return LUA_FALSE
	end
end

-----情人节戒指兑换判断条件-----
function ValentinesRingJudge(role)
	local Ring_Num = 0
	local t = {}			--调用各个队友的指针
		t[0] = role 
		t[1] = GetTeamCha(role, 0 )  
		t[2] = GetTeamCha(role, 1 )   
		t[3] = GetTeamCha(role, 2 )    
		t[4] = GetTeamCha(role, 3 )
	local t_Num = {}		--记录各个队友身上戒指数量
	t_Num[0]	= 0
	t_Num[1]	= 0
	t_Num[2]	= 0
	t_Num[3]	= 0
	t_Num[4]	= 0
	local i = 1
	for i = 1 , 4, 1 do
		if t[i] ~= nil then
			local Ring_Num_Add = CheckBagItem(  t[i] , 2521 )	
			if Ring_Num_Add == 1 then

				local retbag = HasLeaveBagGrid(  t[i], 1)
				if retbag ~= LUA_TRUE then
					SystemNotice(role,"对方背包空格少于1个无法兑换")
					SystemNotice(t[i],"背包空格少于1个无法兑换")
					return LUA_FALSE
				end	
				local NocLock =KitbagLock( t[i], 0 )
				if NocLock == LUA_FALSE then
					SystemNotice( role , "对方道具栏已锁定")
					SystemNotice( t[i] , "道具栏已锁定")
					return LUA_FALSE
				end

				t_Num[i] = 1		--如果有戒指，把值设为1，供后面做判断用
				Ring_Num = Ring_Num + Ring_Num_Add	--将队伍中戒指总数记录，供后面做判断用
				local USED_Ring_Num = CheckBagItem(  t[i] , 2520 )	--判断此队友身上是否已经有绑定的戒指
				if USED_Ring_Num >= 1 then
					SystemNotice(role,"你队友中有人想重婚")
					SystemNotice(t[i],"重婚是重罪")
					return LUA_FALSE		
				end
			end
		end
	end
	
	if Ring_Num == 1 then				--如果队伍中戒指总数为1，就将此人与接任务的人结合
		return LUA_TRUE
	elseif Ring_Num > 1 then
		SystemNotice(role,"我国提倡一夫一妻制……")
		return LUA_FALSE
	else
		SystemNotice(role,"请找个人先。")
		return LUA_FALSE
	end
end
-----情人节戒指记录信息
function ValentinesRing(role)
	local Ring_Num = 0
	local t = {}			--调用各个队友的指针
		t[0] = role 
		t[1] = GetTeamCha(role, 0 )  
		t[2] = GetTeamCha(role, 1 )   
		t[3] = GetTeamCha(role, 2 )    
		t[4] = GetTeamCha(role, 3 )
	local t_Num = {}		--记录各个队友身上戒指数量
		t_Num[0]	= 0
		t_Num[1]	= 0
		t_Num[2]	= 0
		t_Num[3]	= 0
		t_Num[4]	= 0
	local i = 1
	for i = 1 , 4, 1 do
		if t[i] ~= nil then
			local Ring_Num_Add = CheckBagItem(  t[i] , 2521 )	
			if Ring_Num_Add == 1 then
				t_Num[i] = 1		--如果有戒指，把值设为1，供后面做判断用
				Ring_Num = Ring_Num + Ring_Num_Add	--将队伍中戒指总数记录，供后面做判断用
				local USED_Ring_Num = CheckBagItem(  t[i] , 2520 )	--判断此队友身上是否已经有绑定的戒指
				if USED_Ring_Num >= 1 then
					SystemNotice(role,"你队友中有人想重婚")
					SystemNotice(t[i],"重婚是重罪")
					return LUA_FALSE		
				end
			end
		end
	end
	
	if Ring_Num == 1 then				--如果队伍中戒指总数为1，就将此人与接任务的人结合
		local i = 1
		for i = 1 , 4 ,1 do
			if t_Num[i] == 1 then
				
				local RoleType = GetChaID(role)
				local TeamerType = GetChaID(t[i])
				if (RoleType<=2 and TeamerType>=3) or (RoleType>=3 and TeamerType<=2) then		--性别判断
					--将接任务玩家的信息记录在对方戒指中
					local ID_Num = GetPlayerID(role)	--取得接任务玩家的ID号，并记录在戒指中

					GiveItem ( t[i] , 0 , 2520  , 1 , 4  )
					local a = DelBagItem ( t[i] , 2521 , 1) 

					local Item = GetChaItem2 ( t[i] , 2 , 2520 )	--取得合适队友的情人节戒指指针
					
					local Num_JZ = GetItemForgeParam ( Item , 1 )
					Num_JZ = TansferNum ( Num_JZ )
					Num_JZ = ID_Num	---用精练信息位记录角色ID号
					SetItemForgeParam ( Item , 1 , Num_JZ )
					AddChaSkill ( t[i] , SK_QLZX, 1 , 1 , 0 ) 
					--将合适队友的信息记录在接任务玩家的戒指中
					local ID_Num1 = GetPlayerID(t[i])	--取得合适队友的ID号，并记录在戒指中

					GiveItem ( role , 0 , 2520  , 1 , 4  )
					local b = DelBagItem ( role , 2521 , 1) 

					local Item1 = GetChaItem2 ( role , 2 , 2520 )	--取得接任务玩家的情人节戒指指针

					local Num_JZ1 = GetItemForgeParam ( Item1 , 1 )
					Num_JZ1 = TansferNum ( Num_JZ1 )
					Num_JZ1 = ID_Num1	---用精练信息位记录角色ID号
					SetItemForgeParam ( Item1 , 1 , Num_JZ1 )
					AddChaSkill ( role , SK_QLZX, 1 , 1 , 0 ) 
				--	Notice("完事了")
				else
					SystemNotice(role,"请注意你们的性别……")
				end
			end
		end
		return LUA_TRUE
	elseif Ring_Num > 1 then
		SystemNotice(role,"我国提倡一夫一妻制……")
		return LUA_FALSE
	else
		SystemNotice(role,"请找个人先。")
		return LUA_FALSE
	end
end

function Checksailexpless ( role , value )
	local sail_role = GetChaAttr ( role , ATTR_CSAILEXP )
	if sail_role < value then
		return LUA_TRUE
	end
end

function Checksailexpmore ( role , value )
	local sail_role = GetChaAttr ( role , ATTR_CSAILEXP )
	if sail_role >= value then
		return LUA_TRUE
	end
end


----------------------------------离开监狱岛
function Leaveprison ( role )
	AddState( role, role, STATE_BKDB, 10, 3600)
	local br = math.random ( 1, 3)
	if br==1 then
		SetSpawnPos ( role, "Argent City")
		MoveCity ( role, "Argent City")
	elseif br == 2 then
		SetSpawnPos ( role, "Shaitan City")
		MoveCity ( role, "Shaitan City")
	else
		SetSpawnPos ( role, "Icicle Castle")
		MoveCity ( role, "Icicle Castle")
	end
	return LUA_TRUE
end

---------检测监狱卡上时间
function Checkjlktime ( role )
	local jiluka_num = CheckBagItem ( role, 5724)
	if jiluka_num == 1 then
		local jiluka = GetChaItem2 (  role , 2 , 5724 )			--取到角色背包内道具ID为5724的道具的指针
		local ENERGY = GetItemAttr(jiluka, ITEMATTR_ENERGY)
		if ENERGY ==0 then
			return LUA_TRUE
		end
	else
		--SystemNotice( role, "请确保您的背包内只有一张监狱记录卡")
		SystemNotice( role, "Your term of imprisonment is over, go talk with the Warden.")
	end

end

---------给予监狱记录卡
function Givejiluka ( role )
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( role , 5724  , 1 , 4 )
	local Item_new = GetChaItem ( role , 2 , r2 )
	SetItemAttr( Item_new, ITEMATTR_ENERGY, 3600)
	SetItemAttr( Item_new, ITEMATTR_MAXENERGY, 3600)
	return LUA_TRUE
end

---------------------------------------------------圣王的宝藏之判断月光宝盒耐久是否为0
function ItemAttrNum( role ,p1,p2,p3,p4)----p1：道具编号，p2：道具某项属性，p3：要求的属性值，p4：大于（1），小于（2），等于（0），大于等于（3），小于等于（4）
	local ItemAttr={}
	ItemAttr[1]=ITEMATTR_VAL_STR
	ItemAttr[2]=ITEMATTR_VAL_AGI
	ItemAttr[3]=ITEMATTR_VAL_DEX
	ItemAttr[4]=ITEMATTR_VAL_CON
	ItemAttr[5]=ITEMATTR_VAL_STA
	ItemAttr[6]=ITEMATTR_URE
	ItemAttr[7]=ITEMATTR_ENERGY
	local item_num = 0
	local item=0	
	item_num = CheckBagItem(  role , p1  )		--检查背包内p1号道具的数量-+
	
	if item_num~=1 then
		SystemNotice( role, "请确保您身上只有一个月光宝盒")
		return LUA_FALSE
	else
		item=GetChaItem2 (  role , 2 , p1 )-----------------取道具指针
		local itemattrnum=GetItemAttr(item,ItemAttr[p2])--------取道具的p2属性
		if p4==0 and itemattrnum==p3 then ------------要求属性等于p3
			return LUA_TRUE
		elseif p4==1 and itemattrnum>p3 then ------------要求属性大于p3
			return LUA_TRUE
		elseif  p4==2 and itemattrnum<p3 then ------------要求属性小于p3
			return LUA_TRUE
		elseif  p4==3 and itemattrnum>=p3 then ------------要求属性大于等于p3
			return LUA_TRUE
		elseif  p4==4 and itemattrnum<=p3 then ------------要求属性小于等于p3
			return LUA_TRUE			
		else
			return LUA_FALSE			
		end
	end
end

---------------------------------------------------判断角色捐赠物品是否合法--奥运活动
function CheckChaItem( role )
	local ItemBag = 2									
	local item = GetChaItem(role, 2, 2)                               --- 取角色背包栏第3格道具 
	local itemattrnum = GetItemAttr(item, ITEMATTR_ENERGY)            ---取角色背包栏第3格道具 的能量值
	local itemtypenum = GetItemType(item)                             ---取角色背包栏第3格道具 的类型
	local item_ID = GetItemID(item)	
	--local R1 = 0	
	if  item == nil then
		SystemNotice(role,"请将您要捐赠的道具放在背包第三格")
		return LUA_FALSE
	elseif item_ID == 5842  then
		SystemNotice(role,"火炬可不能用来捐赠哦")
		return LUA_FALSE		
	elseif itemattrnum<3000 then
		SystemNotice( role, "请确保您要捐赠的道具品质为绿色以上的装备")
		return LUA_FALSE
	elseif itemtypenum~=1 and itemtypenum~=2 and itemtypenum~=3 and itemtypenum~=4 and itemtypenum~=5 and itemtypenum~=6 and itemtypenum~=7 and itemtypenum~=9 and itemtypenum~=10 and itemtypenum~=11 and itemtypenum~=22 and itemtypenum~=23 and itemtypenum~=24 then	 
		SystemNotice( role, "请确保您要捐赠的物品是装备或武器")
		return LUA_FALSE
	--elseif R1 == 0 then
		--SystemNotice( role, "移除道具失败")
		--return LUA_FALSE
	else		
		--RemoveChaItem ( role , item_ID , 1 , 2 , -1 , 2 , 0  )
		--RemoveChaItem ( role , 3669    , 1 , 1 , -1 , 2 , 1  )
		SystemNotice(role ,"Item_ID======"..item_ID)
		return LUA_TRUE
	end	
end


function ClearItemNum2( role )
	local ItemBag = 2									
	local item = GetChaItem(role, 2, 2)                               --- 取角色背包栏第3格道具 
	local itemattrnum = GetItemAttr(item, ITEMATTR_ENERGY)            ---取角色背包栏第3格道具 的能量值
	local itemtypenum = GetItemType(item)                             ---取角色背包栏第3格道具 的类型
	local item_ID = GetItemID(item)	
	--local R1 = 0	
	if  item == nil then
		--SystemNotice(role,"请将您要捐赠的道具放在背包第三格")
		return LUA_FALSE
	elseif item_ID == 5842  then
		--SystemNotice(role,"火炬可不能用来捐赠哦")
		return LUA_FALSE		
	elseif itemattrnum<3000 then
		--SystemNotice( role, "请确保您要捐赠的道具品质为绿色以上的装备")
		return LUA_FALSE
	elseif itemtypenum~=1 and itemtypenum~=2 and itemtypenum~=3 and itemtypenum~=4 and itemtypenum~=5 and itemtypenum~=6 and itemtypenum~=7 and itemtypenum~=9 and itemtypenum~=10 and itemtypenum~=11 and itemtypenum~=22 and itemtypenum~=23 and itemtypenum~=24 then	 
		--SystemNotice( role, "请确保您要捐赠的物品是装备或武器")
		return LUA_FALSE
	else		
		SystemNotice(role ,"Item_ID======"..item_ID)
		return item_ID
	end
end


-----------开启彩票对奖 by Lee
function CheckTime_cpopen ( role )
	local now_week= os.date("%w")		-------------星期几（十进制） 
	local now_hour= os.date("%H")		-------------时 
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
--	SystemNotice( role, "星期"..now_week.."时间"..now_hour)
	if now_week == 7 or now_week == 1 or  now_week == 2 or  now_week == 5 or  now_week == 3 or  now_week == 4  then
		if now_week == 6 then
			if now_hour <19 and now_hour > 20 then
				return LUA_TRUE
			end
	
		end
        end
end
-----------------关闭彩票填写 by eric
function CheckTime_cpcolse ( role )
	local now_week= os.date("%w")		-------------星期几（十进制） 
	local now_hour= os.date("%H")		-------------时 
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
--	SystemNotice( role, "星期"..now_week.."时间"..now_hour)
	if now_week == 7 or now_week == 1 or  now_week == 2 or  now_week == 5 or  now_week == 3 or  now_week == 4  then
		if now_week == 6 then
			if now_hour <19 and now_hour > 22 then
				return LUA_TRUE
			end
		end
	end
end

------------兑换彩票一等奖  by Peter
function DuiHhuan1( role )
--		SystemNotice( role, "come here!11")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU   then   --判断彩票期号             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --中奖号码个位
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --中奖号码十位
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --中奖号码百位
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --中奖号码千位
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --中奖号码万位
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --中奖号码十万位
			 local  Nom1 =GetTicketItemno(crab, 1)         --彩票号码个位
			local  Nom2 =GetTicketItemno(crab, 2)          --彩票号码十位
			local  Nom3 =GetTicketItemno(crab, 3)          --彩票号码百位
			local  Nom4 =GetTicketItemno(crab, 4)          --彩票号码千位
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --彩票号码万位
			local  Nom6 =GetTicketItemno(crab, 6)          --彩票号码十万位
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

			if  no1==Nom1 and  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 and no6==Nom6	then
				  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
--				SystemNotice( role, "return LUA_TRUE")
				return LUA_TRUE
			 else
--				SystemNotice( role, "return LUA_FALSE")
				return LUA_FALSE
			 end
		 end
end
     
---------------兑换彩票二等奖 by Peter
function DuiHhuan2( role )
--		SystemNotice( role, "come here!22")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --判断彩票期号             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --中奖号码个位
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --中奖号码十位
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --中奖号码百位
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --中奖号码千位
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --中奖号码万位
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --中奖号码十万位
			 local  Nom1 =GetTicketItemno(crab, 1)         --彩票号码个位
			local  Nom2 =GetTicketItemno(crab, 2)          --彩票号码十位
			local  Nom3 =GetTicketItemno(crab, 3)          --彩票号码百位
			local  Nom4 =GetTicketItemno(crab, 4)          --彩票号码千位
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --彩票号码万位
			local  Nom6 =GetTicketItemno(crab, 6)          --彩票号码十万位
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		if  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 and no6==Nom6 then
			 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
---			SystemNotice( role, "return LUA_TRUE1")
			return LUA_TRUE
		elseif  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 and no1==Nom1 then
		 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
---			SystemNotice( role, "return LUA_TRUE2")
			return LUA_TRUE
		else
---			SystemNotice( role, "return LUA_FALSE")
			return LUA_FALSE
		end

	end

end
-------------兑换彩票三等奖 by Peter
function DuiHhuan3( role )
--		SystemNotice( role, "come here!33")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --判断彩票期号             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --中奖号码个位
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --中奖号码十位
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --中奖号码百位
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --中奖号码千位
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --中奖号码万位
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --中奖号码十万位
			 local  Nom1 =GetTicketItemno(crab, 1)         --彩票号码个位
			local  Nom2 =GetTicketItemno(crab, 2)          --彩票号码十位
			local  Nom3 =GetTicketItemno(crab, 3)          --彩票号码百位
			local  Nom4 =GetTicketItemno(crab, 4)          --彩票号码千位
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --彩票号码万位
			local  Nom6 =GetTicketItemno(crab, 6)          --彩票号码十万位
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		
		if  no1==Nom1 and no2==Nom2 and no3==Nom3 and no4==Nom4  then
			  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
--			SystemNotice( role, "return LUA_TRUE1")
			return LUA_TRUE
		elseif  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 then
			  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
--			SystemNotice( role, "return LUA_TRUE2")
			return LUA_TRUE
                elseif  no3==Nom3 and no4==Nom4 and no5==Nom5 and no6==Nom6 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
---			SystemNotice( role, "return LUA_TRUE2")
			return LUA_TRUE
		 else
---			SystemNotice( role, "return LUA_FALSE")
			return LUA_FALSE
	       end
	end
end
----------兑换彩票四等奖 by Peter
function DuiHhuan4( role )
--		SystemNotice( role, "come here!44")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --判断彩票期号             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --中奖号码个位
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --中奖号码十位
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --中奖号码百位
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --中奖号码千位
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --中奖号码万位
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --中奖号码十万位
			 local  Nom1 =GetTicketItemno(crab, 1)         --彩票号码个位
			local  Nom2 =GetTicketItemno(crab, 2)          --彩票号码十位
			local  Nom3 =GetTicketItemno(crab, 3)          --彩票号码百位
			local  Nom4 =GetTicketItemno(crab, 4)          --彩票号码千位
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --彩票号码万位
			local  Nom6 =GetTicketItemno(crab, 6)          --彩票号码十万位
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		 if  no1==Nom1 and  no2==Nom2 and no3==Nom3  then 
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			return LUA_TRUE
		  elseif no2==Nom2 and no3==Nom3 and no4==Nom4 then
		   RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		elseif no3==Nom3 and no4==Nom4 and no5==Nom5  then
		 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		 elseif no4==Nom4 and no5 == Nom5 and no6 == Nom6  then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		 else
			return LUA_FALSE
		end
	 end
end
-------------兑换彩票五等奖 by Peter
function DuiHhuan5( role )
--		SystemNotice( role, "come here!55")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
--		SystemNotice( role, "caipiaoU=="..caipiaoU)
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --判断彩票期号             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --中奖号码个位
--			SystemNotice( role, "no1=="..no1)
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --中奖号码十位
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --中奖号码百位
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --中奖号码千位
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --中奖号码万位
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --中奖号码十万位
			 local  Nom1 =GetTicketItemno(crab, 1)         --彩票号码个位
			local  Nom2 =GetTicketItemno(crab, 2)          --彩票号码十位
			local  Nom3 =GetTicketItemno(crab, 3)          --彩票号码百位
			local  Nom4 =GetTicketItemno(crab, 4)          --彩票号码千位
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --彩票号码万位
--			SystemNotice( role, "Nom5=="..Nom5)
			local  Nom6 =GetTicketItemno(crab, 6)          --彩票号码十万位
--			SystemNotice( role, "Nom6=="..Nom6)
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		 if  no1==Nom1 and  no2==Nom2 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		elseif no2==Nom2 and no3==Nom3  then
		 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		 elseif no3==Nom3 and no4==Nom4 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		 elseif no4==Nom4 and no5==Nom5  then 
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		 elseif  no5==Nom5 and no6==Nom6 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
end

function goto_mj1_time(role)
	local Now_Time = GetNowTime()
	if Now_Time >= 9 and Now_Time < 10 then
		SystemNotice(role , "开始进入光明秘境 ")
		return LUA_TRUE
	else
		SystemNotice(role , "时间还没到哦,请耐心等待.光明秘境开启时间：早上9点-10点。")
		return LUA_FALSE
	end
end

function goto_mj2_time(role)
	local Now_Time = GetNowTime()
	if Now_Time >= 19 and Now_Time < 20 then
		SystemNotice(role , "开始进入暗黑秘境 ")
		return LUA_TRUE
	else
		SystemNotice(role , "时间还没到哦,请耐心等待。暗黑秘境开启时间：晚上7点-8点。")
		return LUA_FALSE
	end
end

--无冕之王套装判断

function CheckItem_Wumian ( role )
--	SystemNotice ( role , "进入CheckItem_Wumian函数")
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	local head = GetChaItem ( role , 1 , 0 )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local head_gem_id = GetItemAttr ( head , ITEMATTR_VAL_FUSIONID )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
		local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
--		SystemNotice ( role , "Head_ID=="..Head_ID)
--		SystemNotice ( role , "Body_ID=="..Body_ID)
--		SystemNotice ( role , "Hand_ID=="..Hand_ID)
--		SystemNotice ( role , "Foot_ID=="..Foot_ID)
--		SystemNotice ( role , "head_gem_id=="..head_gem_id)
--		SystemNotice ( role , "body_gem_id=="..body_gem_id)
--		SystemNotice ( role , "hand_gem_id=="..hand_gem_id)
--		SystemNotice ( role , "foot_gem_id=="..foot_gem_id)
       	if   Body_ID==1506 and Hand_ID==1507 and Foot_ID==1508 and Head_ID==1509 then
			   return 1
		elseif body_gem_id==1506 and hand_gem_id==1507 and foot_gem_id==1508 and head_gem_id==1509 then
			   return 1
		else
			   return 0
		end
end
--纳米套装共有判断

function CheckItem_namei ( role )

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	local head = GetChaItem ( role , 1 , 0 )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local head_gem_id = GetItemAttr ( head , ITEMATTR_VAL_FUSIONID )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
		local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
		
		if   Body_ID==1510 and Hand_ID==1511 and Foot_ID==1512 and Head_ID==1513 then
			   return 1
		elseif body_gem_id==1510 and hand_gem_id==1511 and foot_gem_id==1512 and head_gem_id==1513 then
			   return 1
		else
			   return 0
		end
end



--路飞套装独有判断

function CheckItem_lufei ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	local head = GetChaItem ( role , 1 , 0 )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local head_gem_id = GetItemAttr ( head , ITEMATTR_VAL_FUSIONID )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
		local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
		if   Body_ID==1514 and Hand_ID==1515 and Foot_ID==1516 and Head_ID==1517 then
			   return 1
		elseif body_gem_id==1514 and hand_gem_id==1515 and foot_gem_id==1516 and head_gem_id==1517 then
			   return 1
		else
			   return 0
		end

end

---检测宙斯套装       by peter 2008.7.2
function CheckItem_ZHOUSI ( role )

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	local head = GetChaItem ( role , 1 , 0 )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	
	local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
	local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
	local head_gem_id = GetItemAttr ( head , ITEMATTR_VAL_FUSIONID )

		if   Body_ID==1518 and Hand_ID==1519 and Foot_ID==1520  then
			   return 1
		elseif body_gem_id==1518 and hand_gem_id==1519 and foot_gem_id==1520  then
			   return 1
		else
			   return 0
		end
	
end

-----暗黑秘境随机传送脚本

function mj3sjc (role)
	local X = {}
	local Y = {}
	X [ 1 ] = 374
	X [ 2 ] = 119
	X [ 3 ] = 281
	X [ 4 ] = 94
	X [ 5 ] = 174
	X [ 6 ] = 343
	Y [ 1 ] =  417
	Y [ 2 ] =  460
	Y [ 3 ] =  377
	Y [ 4 ] =  231
	Y [ 5 ] =  67
	Y [ 6 ] =  183
	local i = math.random(1,6)
	MoveTo ( role, X[i] , Y[i] , "mjing3" )
end

function Winterland_MisTime ( role )
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)		-------------日     

	local All_Day = JNSTime_Flag_Num[now_month] + now_day
	local Cha_Day = GetChaAttr ( role , ATTR_EXTEND7 )
	if All_Day ~= Cha_Day then
		return LUA_TRUE
	else
		return LUA_FALSE
	end
end


function Winterland_SetMisTime ( role )			----------给予玩家当前等级升级所需百分比的经验
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)		-------------日     

	local All_Day = JNSTime_Flag_Num[now_month] + now_day

	SetChaAttr ( role , ATTR_EXTEND7 , All_Day )
end



---众神套装--Glow 95---
function ZhongShenTaoZhuang(role,now_tick)
        local ZhongShen_Value = CheckItem_ZHONGSHEN (role)
        if ZhongShen_Value ~= 0 then
                local statelv = 1
                local statetime = 3600
                AddState ( role , role , STATE_zhongshen , statelv , statetime )
                return
        else
                local statelv_ZhongShen = GetChaStateLv ( role , STATE_zhongshen )
                if statelv_ZhongShen~=0 then
                                RemoveState ( role ,STATE_zhongshen ) 
                        return
                        end
                return
        end
end
function CheckItem_ZHONGSHEN ( role )

	
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local head = GetChaItem ( role , 1 , 0 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	local Head_ID = GetItemID ( head )

    	local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
    	local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
	local head_gem_id = GetItemAttr ( head , ITEMATTR_VAL_FUSIONID )

		body_gem_id=Body_ID
		hand_gem_id=Hand_ID
		foot_gem_id=Foot_ID
		head_gem_id=Head_ID
	if body_gem_id ~= 6105 and body_gem_id ~= 6109 and body_gem_id ~= 6113 and body_gem_id ~= 6117 and body_gem_id ~= 6121 and body_gem_id ~= 6125 then
	   return 0
	end
	if hand_gem_id ~= 6106 and hand_gem_id ~= 6110 and hand_gem_id ~= 6114 and hand_gem_id ~= 6118 and hand_gem_id ~= 6122 and hand_gem_id ~= 6126 then
	   return 0
	end
	if foot_gem_id ~= 6107 and foot_gem_id ~= 6111 and foot_gem_id ~= 6115 and foot_gem_id ~= 6119 and foot_gem_id ~= 6123 and foot_gem_id ~= 6127 then 
	   return 0
	end
	if head_gem_id ~= 6104 and head_gem_id ~= 6108 and head_gem_id ~= 6112 and head_gem_id ~= 6116 and head_gem_id ~= 6120 and head_gem_id ~= 6124 then
	   return 0
	end
	return 1
end

---------日常任务

function Day_Mission_Time ()
	local now_day= os.date("%d")		-------------判断服务器当前日 
	local now_month= os.date("%m")		-------------判断服务器当前月 
	local now_day_num = tonumber(now_day)		-------------赋值日
	local now_month_num= tonumber(now_month)	-------------赋值月
	local All_Day = JNSTime_Flag[now_month_num] + now_day_num	----当前日期

	return All_Day
end

function Reg_Player_Event_Name ( Event_Name )			--注册事件名  返回1 成功  0失败
	if Event_Name == "Test" then
		return 0
	end
	local i = 0
	local Array_Length = table.getn(Player_Can_Do)			--取数组长
	local Now_Time = Day_Mission_Time()
	for i=1 , Array_Length ,1 do
		if Player_Can_Do[i].Event_Name == Event_Name then		--如果存在该记录名则跳出
			return 0
		elseif Player_Can_Do[i].Event_Name ~= Event_Name and i == Array_Length then		--不存在该记录则添加
			table.insert( Player_Can_Do , { Event_Name = Event_Name , Value = {Player_Name = "GMEric" , Do_Day = Now_Time , Has_Record = true } } )
			return 1
		end
	end
	return 0
end

function Add_Player_Event_Value( Event_Name , Role , Do_Day ,Has_Record )			--向已经注册的事件里添加信息
    if Event_Name == "Test" then
		return 0
	end
	local i = 0
	local Now_Time = Day_Mission_Time()
	local Array_Length = table.getn(Player_Can_Do)			--取数组长
	for i=1 , Array_Length ,1 do
		if Player_Can_Do[i].Event_Name == Event_Name then		--如果存在该记录名则添加数据
			local Role_Name = GetChaDefaultName(Role)
			local Now_Time = Day_Mission_Time()
			table.insert( Player_Can_Do , { Event_Name = Event_Name ,  Value = { Player_Name = Role_Name , Do_Day = Now_Time , Has_Record = Has_Record } } )
			return 1
		elseif Player_Can_Do[i].Event_Name ~= Event_Name and i == Array_Length then
			return 0
		end
	end
end

function Get_Index_By_Event_And_PlayerName(Event_Name , Role)				--通过事件名称和玩家指针来取到该记录的编号，从而知道该玩家是否完成  返回0为未找到记录里的该角色 其他值为满足该条件的index 号
	   local Role_Name = GetChaDefaultName(Role)
	   local Array_Length = table.getn(Player_Can_Do)
	   for i =1 , Array_Length , 1 do
	   		if Player_Can_Do[i].Event_Name == Event_Name then
			   if Player_Can_Do[i].Value.Player_Name  == Role_Name then
			   		return i
				elseif Player_Can_Do[i].Value.Player_Name  ~= Role_Name and i==Array_Length then
					return 0          --找到了记录没找到人 
			   end
			elseif  Player_Can_Do[i].Event_Name ~= Event_Name and i==Array_Length then		--没找到记录
				Reg_Player_Event_Name(Event_Name)			--注册一个记录
				return 0
			end 
	   end
end

function Clear_Event_Record_By_Event_Name( Event_Name )									--清除某个事件内玩家完成的记录为false
	local Array_Length = table.getn(Player_Can_Do)
	local Now_Time = Day_Mission_Time()
	for i =1 , Array_Length , 1 do
   		if Player_Can_Do[i].Event_Name == Event_Name then
			Player_Can_Do[i].Value.Has_Record  = false 
		end 
	end
	return 1
end



--判断玩家当天领取盗宝贼击杀令的次数
function Judge_Mission_Times (character)
	local now_day= os.date("%d")
	local now_month= os.date("%m")
	local now_month_num= tonumber(now_month)		-------------月     
	local now_day_num = tonumber(now_day)	
	local All_Day = JNSTime_Flag[now_month_num] + now_day_num
	local Cha_Day = GetChaAttr (character , ATTR_EXTEND4)
	local Cha_Time = GetChaAttr (character , ATTR_EXTEND3)
	if Cha_Day ~= All_Day then
		Cha_Day = All_Day
		SetChaAttr (character ,ATTR_EXTEND3 , 1 )
		SetChaAttr (character ,ATTR_EXTEND4 , Cha_Day )
		--GiveItem (character , 0 , 1 , 1 , 4)
		return LUA_TRUE
	elseif Cha_Day == All_Day and Cha_Time < 5 then
		Cha_Time = Cha_Time + 1
		SetChaAttr (character ,ATTR_EXTEND3,Cha_Time)
		--GiveItem (character , 0 , 1 , 1 , 4)
		return LUA_TRUE
	else
		--SystemNotice (character,"割JJ")
		return LUA_FALSE
	end
	--SystemNotice (character,"小弟弟出来咯！！")
end


function JL_lv (role)-------------------------判断精灵等级是否为1级
	local Item_bg = GetChaItem ( role , 2 , 1  ) --取角色背包第二栏的指针
	local Get_Item_Type = GetItemType ( Item_bg )
	if  Get_Item_Type ~= 59 then
		return LUA_FALSE	
	else
		local str_Traget = GetItemAttr( Item_bg ,ITEMATTR_VAL_STR )		 --力量
		local con_Traget = GetItemAttr( Item_bg ,ITEMATTR_VAL_CON )		--体质
		local agi_Traget = GetItemAttr( Item_bg ,ITEMATTR_VAL_AGI )		--专注
		local dex_Traget = GetItemAttr( Item_bg ,ITEMATTR_VAL_DEX )		--敏捷
		local sta_Traget = GetItemAttr( Item_bg ,ITEMATTR_VAL_STA )		--精神
		local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget  ----一个精灵的等级
		if lv_Traget >=1 then
			return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
end


function AddExp1(role) ----30级以下增加等级1
	local exp_star=GetChaAttr (  role , ATTR_CEXP )----------当前经验
	local cha_lv = Lv(role)
	if cha_lv > 0 and cha_lv <= 30 then
	local cha_nlv = cha_lv+1
	local exp_add= GetExp[cha_nlv]-GetExp[cha_lv]
		AddExp ( role, npc, exp_add, exp_add)
	elseif cha_lv>30 then
		SystemNotice(role,"由于你的等级过高, 完成这么低级的任务无法获得经验的奖励!")
		return LUA_FALSE
	end

end


----判断宝石等级是否为2级----
function HasDiamondId(role)
	local Diamond = 0
	Item_Diamond = CheckBagItem( role , 6016)
	if Item_Diamond ~= 1 then
		return LUA_FALSE
	elseif Item_Diamond == 1 then
	local Item_attr = 0
	role_Diamond = GetChaItem2(role,2,6016)
	local forge_lv = GetItemAttr ( role_Diamond , ITEMATTR_VAL_BaoshiLV )
		if forge_lv == 2 then
				return LUA_TRUE
			else
				return LUA_FALSE
		end
	end
end	


function  Get_ItemAttr_Join1(role)----判断勇者之证的参加场次数是否大于1
	local RYZ_Num = 0
	RYZ_Num =  CheckBagItem( role,3849 )
	if RYZ_Num ~= 1 then
		--SystemNotice(role ,"请你确认你的背包中是否有勇者之证")
		return LUA_FALSE
	elseif RYZ_Num == 1 then
		local item_attr = 0
		role_ryz = GetChaItem2(role,2,3849)
		item_attr = GetItemAttr ( role_ryz , ITEMATTR_VAL_CON )
		if item_attr <= 0 then
			return LUA_FALSE
		else 
			return LUA_TRUE
		end
	end
end 


function  Get_ItemAttr_Join20(role)----判断勇者之证的参加场次数是否大于5
	local RYZ_Num = 0
	RYZ_Num =  CheckBagItem( role,3849 )
	if RYZ_Num ~= 1 then
		return LUA_FALSE
	elseif RYZ_Num == 1 then
		local item_attr = 0
		role_ryz = GetChaItem2(role,2,3849)
		item_attr = GetItemAttr ( role_ryz , ITEMATTR_VAL_CON )
		if item_attr < 5 then
			return LUA_FALSE
		else 
			return LUA_TRUE
		end
	end
end 


function JLTLZM (role)    ---------判断精灵体力值是否满
	local Item_bg = GetChaItem ( role , 2 , 1  ) --取角色背包第二栏的指针
	local Get_Item_Type = GetItemType ( Item_bg )

	if  Get_Item_Type ~= 59 then
		return LUA_FALSE	
	else
		local ure_type = GetItemAttr( Item_bg ,ITEMATTR_URE )       --体力
		local Item_Traget_MAXURE=GetItemAttr(Item_bg,ITEMATTR_MAXURE)   --取最大耐久
		if Item_Traget_MAXURE > ure_type and Item_Traget_MAXURE < ure_type then 
			return LUA_FALSE
		elseif Item_Traget_MAXURE == ure_type then
			return LUA_TRUE 
		end
	end
end 





function TeamZd( role ) -----------判断玩家是否组队 

	local Teamplayer = {}
		Teamplayer[1] = GetTeamCha( role, 0 )
		Teamplayer[2] = GetTeamCha( role, 1 )
		Teamplayer[3] = GetTeamCha( role, 2 )
		Teamplayer[4] = GetTeamCha( role, 3 )
	local i = 1
	for i = 1 , 4 , 1 do
		if Teamplayer[i] ~= nil then
			return LUA_TRUE
		else				
			return LUA_FALSE
		end	
	end
end




function TeamZdJl( role )    ------组队任务奖励双倍经验
	local player = {}
	player[1] = GetTeamCha( role , 0 )  
	player[2] = GetTeamCha( role , 1 )
	player[3] = GetTeamCha( role , 2 )
	player[4] = GetTeamCha( role , 3 )
	player[5] = role
	TrigASBJY(role,1,1800)
	local i = 0
	for i = 1, 4 , 1 do
		if ValidCha(player[i])~= 0 then 
			TrigASBJY(player[i],1,900)
		end
	end 
	local cha_name = GetChaDefaultName ( role )
	Notice(cha_name.."完成新手任务,他队伍里的玩家能够获得15分钟的双倍经验!")
	SystemNotice(role ,"完成任务获得双倍经验奖励")
end





function GHPD (role)    ------判断玩家是否有公会
	local GuildID = GetChaGuildID( role )
	if GuildID == 0 then
		return LUA_FALSE
	else
		return LUA_TRUE
	end

end
--------------------------------------------魔力水晶 掉率
	----local count=GetItemAttr(Item, ITEMATTR_VAL_STA)	
function MoHeGiveItem(role,count,LVtype)
-- *魔盒给予物品的ID号
--[[local moheItem={}
			moheItem[1]={}			--1 是10~45的等级阶段
			moheItem[2]={}			--2 是45到60级的等级阶段
			moheItem[1][1]={}		 --是10~45的等级阶段开出物品的1~7档
			moheItem[1][2]={}
			moheItem[1][3]={}
			moheItem[1][4]={}
			moheItem[1][5]={}
			moheItem[1][6]={}
			moheItem[1][7]={}
			
			moheItem[2][1]={}		--是45~60的等级阶段开出物品的1~7档
			moheItem[2][2]={}
			moheItem[2][3]={}
			moheItem[2][4]={}
			moheItem[2][5]={}
			moheItem[2][6]={}
			moheItem[2][7]={}
			------------------------------------------------------------------------------------------- LV10-45 
			--次数1-2
			moheItem[1][1][0]=15		--0固定为经验
			moheItem[1][1][1]=1848		--以下为物品
			moheItem[1][1][2]=3141
			moheItem[1][1][3]=1128
			moheItem[1][1][4]=3844
			moheItem[1][1][5]=3077
			--3~4
			moheItem[1][2][0]=20
			moheItem[1][2][1]=1848
			moheItem[1][2][2]=4602
			moheItem[1][2][3]=4603
			moheItem[1][2][4]=4604
			moheItem[1][2][5]=3844
			moheItem[1][2][6]=3077
			
			--5~6
			moheItem[1][3][0]=25
			moheItem[1][3][1]=1849	
			moheItem[1][3][2]=3051
			moheItem[1][3][3]=3053	
			moheItem[1][3][4]=3052	
			moheItem[1][3][5]=3096	
			moheItem[1][3][6]=6017	
			moheItem[1][3][7]=6379
			--7
			moheItem[1][4][0]=30
			moheItem[1][4][1]=6379
			moheItem[1][4][2]=6342
			moheItem[1][4][3]=6017
			moheItem[1][4][4]=6016
			moheItem[1][4][5]=332
			moheItem[1][4][6]=332
			moheItem[1][4][7]=563
			--8
			moheItem[1][5][0]=35
			moheItem[1][5][1]=6016
			moheItem[1][5][2]=3089
			moheItem[1][5][3]=935
			moheItem[1][5][4]=6379
			moheItem[1][5][5]=6342	
			--9
			moheItem[1][6][0]=40
			moheItem[1][6][1]=6019  --特制团队果
			moheItem[1][6][2]=935
			moheItem[1][6][3]=6379
			moheItem[1][6][4]=6342		
			--10
			moheItem[1][7][0]=80
			moheItem[1][7][1]=0799   ----bb武器最后一个
			moheItem[1][7][2]=6380
			moheItem[1][7][3]=6342
			moheItem[1][7][4]=6379
			
		-----------------------------------------------------------------------------------------	LV45~LV60
			
			
			
			
			--次数1~2
			moheItem[2][1][0]=3
			moheItem[2][1][1]=1849
			moheItem[2][1][2]=3141
			moheItem[2][1][3]=3844          
			moheItem[2][1][4]=6379
			
			--次数34
			moheItem[2][2][0]=5
			moheItem[2][2][1]=6203	
			moheItem[2][2][2]=332			  
			moheItem[2][2][3]=332
			moheItem[2][2][4]=563
			moheItem[2][2][5]=1849
			moheItem[2][2][6]=1849
			moheItem[2][2][7]=6342
			moheItem[2][2][8]=6379
			--  次数56
			moheItem[2][3][0]=10
			moheItem[2][3][1]=6379			
			moheItem[2][3][2]=6019            --BB武器最后一个
			moheItem[2][3][3]=6017
			moheItem[2][3][4]=3096
			moheItem[2][3][5]=6342
			moheItem[2][3][6]=6379
			-- 次数7
			moheItem[2][4][0]=15	
			moheItem[2][4][1]=6380
			moheItem[2][4][2]=6016
			moheItem[2][4][3]=3089
			moheItem[2][4][4]=6342
			-- 次数8
			moheItem[2][5][0]=20
			moheItem[2][5][1]=0227
			moheItem[2][5][2]=6016
			moheItem[2][5][3]=222
			moheItem[2][5][4]=0227
			
			-- 次数9
			moheItem[2][6][0]=25
			moheItem[2][6][1]=6380
			moheItem[2][6][2]=6342
			moheItem[2][6][3]=222
			moheItem[2][6][4]=227
			-- 次数10
			moheItem[2][7][0]=30
			moheItem[2][7][1]=5276
			moheItem[2][7][2]=222
			moheItem[2][7][3]=6380
			moheItem[2][7][4]=6379
			moheItem[2][7][5]=935
			
--** 概率==============
	  local moheItemGL = {}
			moheItemGL[1]={}
			moheItemGL[2]={}
			--moheItemGL[3]={}
			moheItemGL[1][1]={}
			moheItemGL[1][2]={}
			moheItemGL[1][3]={}
			moheItemGL[1][4]={}
			moheItemGL[1][5]={}
			moheItemGL[1][6]={}
			moheItemGL[1][7]={}
			
			moheItemGL[2][1]={}
			moheItemGL[2][2]={}
			moheItemGL[2][3]={}
			moheItemGL[2][4]={}
			moheItemGL[2][5]={}
			moheItemGL[2][6]={}
			moheItemGL[2][7]={}
			
			-- moheItemGL[3][1]={}
			-- moheItemGL[3][2]={}
			-- moheItemGL[3][3]={}
			-- moheItemGL[3][4]={}
			-- moheItemGL[3][5]={}
			
			-- LV10-45 次数1-2
			moheItemGL[1][1][0]=20 --对应的概率
			moheItemGL[1][1][1]=40
			moheItemGL[1][1][2]=60
			moheItemGL[1][1][3]=70
			moheItemGL[1][1][4]=80
			moheItemGL[1][1][5]=100
			-- LV10-45 次数3-4
			moheItemGL[1][2][0]=20			
			moheItemGL[1][2][1]=30
			moheItemGL[1][2][2]=45
			moheItemGL[1][2][3]=60
			moheItemGL[1][2][4]=75
			moheItemGL[1][2][5]=85
			moheItemGL[1][2][6]=100
			-- LV10-45 次数5-6
			moheItemGL[1][3][0]=20
			moheItemGL[1][3][1]=30
			moheItemGL[1][3][2]=40
			moheItemGL[1][3][3]=50
			moheItemGL[1][3][4]=60
			moheItemGL[1][3][5]=70
			moheItemGL[1][3][6]=80
			moheItemGL[1][3][7]=100
			-- LV10-45 次数7
			moheItemGL[1][4][0]=20
			moheItemGL[1][4][1]=30
			moheItemGL[1][4][2]=50
			moheItemGL[1][4][3]=60
			moheItemGL[1][4][4]=70
			moheItemGL[1][4][5]=80
			moheItemGL[1][4][6]=90
			moheItemGL[1][4][7]=100
			
			-- LV10-45 次数8	
			moheItemGL[1][5][0]=20
			moheItemGL[1][5][1]=30
			moheItemGL[1][5][2]=40
			moheItemGL[1][5][3]=50
			moheItemGL[1][5][4]=70
			moheItemGL[1][5][5]=100
			
			-- LV10-45次数9
			moheItemGL[1][6][0]=30
			moheItemGL[1][6][1]=40
			moheItemGL[1][6][2]=50
			moheItemGL[1][6][3]=70
			moheItemGL[1][6][4]=100
			-- LV10-45次数10
			moheItemGL[1][7][0]=20
			moheItemGL[1][7][1]=40
			moheItemGL[1][7][2]=60
			moheItemGL[1][7][3]=80
			moheItemGL[1][7][4]=100
			
--------------------------------------------------45--60
			
			-- LV45-60次数1-2
			moheItemGL[2][1][0]=20
			moheItemGL[2][1][1]=40
			moheItemGL[2][1][2]=80
			moheItemGL[2][1][3]=90
			moheItemGL[2][1][4]=100
			
			-- LV45--60次数34
			moheItemGL[2][2][0]=10
			moheItemGL[2][2][1]=20
			moheItemGL[2][2][2]=30
			moheItemGL[2][2][3]=40
			moheItemGL[2][2][4]=50
			moheItemGL[2][2][5]=60
			moheItemGL[2][2][6]=70
			moheItemGL[2][2][7]=90
			moheItemGL[2][2][8]=100
			-- LV45--60次数56
			moheItemGL[2][3][0]=10
			moheItemGL[2][3][1]=20
			moheItemGL[2][3][2]=30
			moheItemGL[2][3][3]=45
			moheItemGL[2][3][4]=60
			moheItemGL[2][3][5]=80
			moheItemGL[2][3][6]=100
			-- LV45-60次数7
			moheItemGL[2][4][0]=20
			moheItemGL[2][4][1]=40
			moheItemGL[2][4][2]=60
			moheItemGL[2][4][3]=80
			moheItemGL[2][4][4]=100
			-- LV45-60次数8
			moheItemGL[2][5][0]=15
			moheItemGL[2][5][1]=35
			moheItemGL[2][5][2]=50
			moheItemGL[2][5][3]=75
			moheItemGL[2][5][4]=100
			-- LV45-60次数9
			moheItemGL[2][6][0]=15
			moheItemGL[2][6][1]=30
			moheItemGL[2][6][2]=80
			moheItemGL[2][6][3]=95
			moheItemGL[2][6][4]=100
			
			-- LV45-60次数10
			moheItemGL[2][7][0]=10
			moheItemGL[2][7][1]=30
			moheItemGL[2][7][2]=50
			moheItemGL[2][7][3]=60
			moheItemGL[2][7][4]=80
			moheItemGL[2][7][5]=100 -- **			
--*** 给物品数目==============
			local moheItemNUM = {}
			moheItemNUM[1]={}
			moheItemNUM[2]={}
			-- moheItemNUM[3]={}
			moheItemNUM[1][1]={}
			moheItemNUM[1][2]={}
			moheItemNUM[1][3]={}
			moheItemNUM[1][4]={}
			moheItemNUM[1][5]={}
			moheItemNUM[1][6]={}
			moheItemNUM[1][7]={}
			
			moheItemNUM[2][1]={}
			moheItemNUM[2][2]={}
			moheItemNUM[2][3]={}
			moheItemNUM[2][4]={}
			moheItemNUM[2][5]={}
			moheItemNUM[2][6]={}
			moheItemNUM[2][7]={}
			-- moheItemNUM[3][1]={}
			-- moheItemNUM[3][2]={}
			-- moheItemNUM[3][3]={}
			-- moheItemNUM[3][4]={}
			-- moheItemNUM[3][5]={}
			-- LV10-45 次数1-2
										--对应的数量，经验为当前所需的x%
			moheItemNUM[1][1][1]=20
			moheItemNUM[1][1][2]=3
			moheItemNUM[1][1][3]=3
			moheItemNUM[1][1][4]=2
			moheItemNUM[1][1][5]=5
			
			-- LV10-25 次数34	
			
			moheItemNUM[1][2][1]=40
			moheItemNUM[1][2][2]=3
			moheItemNUM[1][2][3]=3
			moheItemNUM[1][2][4]=3
			moheItemNUM[1][2][5]=3
			moheItemNUM[1][2][6]=5
			
			-- LV10-25 次数56
			
			moheItemNUM[1][3][1]=20
			moheItemNUM[1][3][2]=3
			moheItemNUM[1][3][3]=3
			moheItemNUM[1][3][4]=3
			moheItemNUM[1][3][5]=1
			moheItemNUM[1][3][6]=3
			moheItemNUM[1][3][7]=1
			-- LV10-25 次数7
			
			moheItemNUM[1][4][1]=1
			moheItemNUM[1][4][2]=1
			moheItemNUM[1][4][3]=3
			moheItemNUM[1][4][4]=1
			moheItemNUM[1][4][5]=3
			moheItemNUM[1][4][6]=3
			moheItemNUM[1][4][7]=3
			-- LV10-25 次数8
			
			moheItemNUM[1][5][1]=1
			moheItemNUM[1][5][2]=1
			moheItemNUM[1][5][3]=1
			moheItemNUM[1][5][4]=1
			moheItemNUM[1][5][5]=1
			
			-- LV10-25 次数9
			
			moheItemNUM[1][6][1]=3
			moheItemNUM[1][6][2]=1
			moheItemNUM[1][6][3]=1
			moheItemNUM[1][6][4]=1
			
			-- LV10-25 次数10			
			
			moheItemNUM[1][7][1]=1
			moheItemNUM[1][7][2]=1
			moheItemNUM[1][7][3]=1
			moheItemNUM[1][7][4]=1
			
			---------------------------------------------------- LV45--60次数1-2			
			moheItemNUM[2][1][1]=30
			moheItemNUM[2][1][2]=5
			moheItemNUM[2][1][3]=3
			moheItemNUM[2][1][4]=1
			-- LV45--60次数3-4
			moheItemNUM[2][2][1]=10
			moheItemNUM[2][2][2]=3
			moheItemNUM[2][2][3]=3
			moheItemNUM[2][2][4]=3
			moheItemNUM[2][2][5]=50
			moheItemNUM[2][2][6]=3
			moheItemNUM[2][2][7]=1
			moheItemNUM[2][2][8]=1
			
			-- LV45--60次数5-6
			moheItemNUM[2][3][1]=1
			moheItemNUM[2][3][2]=3
			moheItemNUM[2][3][3]=3
			moheItemNUM[2][3][4]=3
			moheItemNUM[2][3][5]=1
			moheItemNUM[2][3][6]=1
			-- LV45--60次数7
		
			moheItemNUM[2][4][1]=1
			moheItemNUM[2][4][2]=3
			moheItemNUM[2][4][3]=1
			moheItemNUM[2][4][4]=2
			-- LV45--60次数8
			
			moheItemNUM[2][5][1]=5
			moheItemNUM[2][5][2]=3
			moheItemNUM[2][5][3]=1
			moheItemNUM[2][5][4]=10
			-- LV45--60次数9
			
			moheItemNUM[2][6][1]=1
			moheItemNUM[2][6][2]=2
			moheItemNUM[2][6][3]=2
			moheItemNUM[2][6][4]=20
			
			-- LV45--60次数10
			
			moheItemNUM[2][7][1]=1
			moheItemNUM[2][7][2]=1
			moheItemNUM[2][7][3]=1
			moheItemNUM[2][7][4]=2
			moheItemNUM[2][7][5]=1
			--LV45-60次数8
			-- moheItemNUM[3][3][1]=5
			-- moheItemNUM[3][3][2]=1
			-- moheItemNUM[3][3][3]=1
			-- moheItemNUM[3][3][4]=10
			--LV45-60次数9
			-- moheItemNUM[3][4][1]=1
			-- moheItemNUM[3][4][2]=1
			-- moheItemNUM[3][4][3]=2
			-- moheItemNUM[3][4][4]=20
			-- moheItemNUM[3][4][5]=1
			--LV45-60次数10
			-- moheItemNUM[3][5][1]=1
			-- moheItemNUM[3][5][2]=1
			-- moheItemNUM[3][5][3]=1]]
--***
	local moheItem={}
	local moheItemNum={}
	local moheItemGL = {}
	local a ,b,c =0,0,0
	for a = 1,2,1 do 
		moheItem[a]={}
		moheItemNum[a]={}
		moheItemGL [a]= {}
		for b = 1,10,1 do 	
			moheItem[a][b]={}
			moheItemNum[a][b]={}
			moheItemGL [a][b]= {}
			for c = 1 , 6,1 do 
				moheItem[a][b][c]=0
				moheItemNum[a][b][c]=0
				moheItemGL [a][b][c]=0
			end
		end
	end
	--以下内容从表单中复制
	moheItem[1][1][1]="经验"	moheItemNum[1][1][1]=0.05	moheItemGL[1][1][1]=0.2	moheItem[1][2][1]="经验"	moheItemNum[1][2][1]=0.1	moheItemGL[1][2][1]=0.25	moheItem[1][3][1]="经验"	moheItemNum[1][3][1]=0.15	moheItemGL[1][3][1]=0.28	moheItem[1][4][1]="经验"	moheItemNum[1][4][1]=0.2	moheItemGL[1][4][1]=0.34	moheItem[1][5][1]="经验"	moheItemNum[1][5][1]=0.25	moheItemGL[1][5][1]=0.34	moheItem[1][6][1]="经验"	moheItemNum[1][6][1]=0.3	moheItemGL[1][6][1]=0.35	moheItem[1][7][1]="经验"	moheItemNum[1][7][1]=0.35	moheItemGL[1][7][1]=0.35	moheItem[1][8][1]="经验"	moheItemNum[1][8][1]=0.4	moheItemGL[1][8][1]=0.37	moheItem[1][9][1]="经验"	moheItemNum[1][9][1]=0.45	moheItemGL[1][9][1]=0.35	moheItem[1][10][1]="经验"	moheItemNum[1][10][1]=0.8	moheItemGL[1][10][1]=0.3
	moheItem[1][1][2]="回复"	moheItemNum[1][1][2]=2	moheItemGL[1][1][2]=0.5	moheItem[1][2][2]="回复"	moheItemNum[1][2][2]=2	moheItemGL[1][2][2]=0.45	moheItem[1][3][2]="回复"	moheItemNum[1][3][2]=2	moheItemGL[1][3][2]=0.4	moheItem[1][4][2]="回复"	moheItemNum[1][4][2]=3	moheItemGL[1][4][2]=0.35	moheItem[1][5][2]="回复"	moheItemNum[1][5][2]=3	moheItemGL[1][5][2]=0.3	moheItem[1][6][2]="回复"	moheItemNum[1][6][2]=3	moheItemGL[1][6][2]=0.2	moheItem[1][7][2]="回复"	moheItemNum[1][7][2]=4	moheItemGL[1][7][2]=0.15	moheItem[1][8][2]="回复"	moheItemNum[1][8][2]=4	moheItemGL[1][8][2]=0.1	moheItem[1][9][2]="回复"	moheItemNum[1][9][2]=5	moheItemGL[1][9][2]=0.05			
	moheItem[1][1][3]="机票"	moheItemNum[1][1][3]=1	moheItemGL[1][1][3]=0.3	moheItem[1][2][3]="机票"	moheItemNum[1][2][3]=1	moheItemGL[1][2][3]=0.3	moheItem[1][3][3]="机票"	moheItemNum[1][3][3]=1	moheItemGL[1][3][3]=0.3	moheItem[1][4][3]="机票"	moheItemNum[1][4][3]=1	moheItemGL[1][4][3]=0.27	moheItem[1][5][3]="机票"	moheItemNum[1][5][3]=1	moheItemGL[1][5][3]=0.25	moheItem[1][6][3]="机票"	moheItemNum[1][6][3]=1	moheItemGL[1][6][3]=0.2	moheItem[1][7][3]="机票"	moheItemNum[1][7][3]=1	moheItemGL[1][7][3]=0.2	moheItem[1][8][3]="机票"	moheItemNum[1][8][3]=1	moheItemGL[1][8][3]=0.15	moheItem[1][9][3]="机票"	moheItemNum[1][9][3]=1	moheItemGL[1][9][3]=0.1	moheItem[1][10][3]="机票"	moheItemNum[1][10][3]=1	moheItemGL[1][10][3]=0.05
							moheItem[1][3][4]="装备"	moheItemNum[1][3][4]=1	moheItemGL[1][3][4]=0.02	moheItem[1][4][4]="装备"	moheItemNum[1][4][4]=1	moheItemGL[1][4][4]=0.04	moheItem[1][5][4]="装备"	moheItemNum[1][5][4]=1	moheItemGL[1][5][4]=0.06	moheItem[1][6][4]="装备"	moheItemNum[1][6][4]=1	moheItemGL[1][6][4]=0.1	moheItem[1][7][4]="装备"	moheItemNum[1][7][4]=1	moheItemGL[1][7][4]=0.12	moheItem[1][8][4]="装备"	moheItemNum[1][8][4]=1	moheItemGL[1][8][4]=0.15	moheItem[1][9][4]="装备"	moheItemNum[1][9][4]=1	moheItemGL[1][9][4]=0.2	moheItem[1][10][4]="装备"	moheItemNum[1][10][4]=1	moheItemGL[1][10][4]=0.2
													moheItem[1][5][5]="特殊"	moheItemNum[1][5][5]=1	moheItemGL[1][5][5]=0.05	moheItem[1][6][5]="特殊"	moheItemNum[1][6][5]=1	moheItemGL[1][6][5]=0.15	moheItem[1][7][5]="特殊"	moheItemNum[1][7][5]=1	moheItemGL[1][7][5]=0.18	moheItem[1][8][5]="特殊"	moheItemNum[1][8][5]=1	moheItemGL[1][8][5]=0.23	moheItem[1][9][5]="特殊"	moheItemNum[1][9][5]=1	moheItemGL[1][9][5]=0.25	moheItem[1][10][5]="特殊"	moheItemNum[1][10][5]=1	moheItemGL[1][10][5]=0.3
																									moheItem[1][9][6]="44-48包包"	moheItemNum[1][9][6]=1	moheItemGL[1][9][6]=0.05	moheItem[1][10][6]="路易16"	moheItemNum[1][10][6]=1	moheItemGL[1][10][6]=0.1
																												moheItem[2][10][7]="35bb"	moheItemNum[2][10][7]=1	moheItemGL[2][10][7]=0.05
																														
	moheItem[2][1][1]="经验"	moheItemNum[2][1][1]=0.03	moheItemGL[2][1][1]=0.15	moheItem[2][2][1]="经验"	moheItemNum[2][2][1]=0.05	moheItemGL[2][2][1]=0.2	moheItem[2][3][1]="经验"	moheItemNum[2][3][1]=0.07	moheItemGL[2][3][1]=0.25	moheItem[2][4][1]="经验"	moheItemNum[2][4][1]=0.1	moheItemGL[2][4][1]=0.3	moheItem[2][5][1]="经验"	moheItemNum[2][5][1]=0.12	moheItemGL[2][5][1]=0.3	moheItem[2][6][1]="经验"	moheItemNum[2][6][1]=0.15	moheItemGL[2][6][1]=0.3	moheItem[2][7][1]="经验"	moheItemNum[2][7][1]=0.2	moheItemGL[2][7][1]=0.3	moheItem[2][8][1]="经验"	moheItemNum[2][8][1]=0.25	moheItemGL[2][8][1]=0.3	moheItem[2][9][1]="经验"	moheItemNum[2][9][1]=0.3	moheItemGL[2][9][1]=0.25	moheItem[2][10][1]="经验"	moheItemNum[2][10][1]=0.35	moheItemGL[2][10][1]=0.2
	moheItem[2][1][2]="回复"	moheItemNum[2][1][2]=1	moheItemGL[2][1][2]=0.5	moheItem[2][2][2]="回复"	moheItemNum[2][2][2]=2	moheItemGL[2][2][2]=0.45	moheItem[2][3][2]="回复"	moheItemNum[2][3][2]=2	moheItemGL[2][3][2]=0.4	moheItem[2][4][2]="回复"	moheItemNum[2][4][2]=3	moheItemGL[2][4][2]=0.35	moheItem[2][5][2]="回复"	moheItemNum[2][5][2]=3	moheItemGL[2][5][2]=0.3	moheItem[2][6][2]="回复"	moheItemNum[2][6][2]=3	moheItemGL[2][6][2]=0.2	moheItem[2][7][2]="回复"	moheItemNum[2][7][2]=4	moheItemGL[2][7][2]=0.15	moheItem[2][8][2]="回复"	moheItemNum[2][8][2]=4	moheItemGL[2][8][2]=0.1	moheItem[2][9][2]="回复"	moheItemNum[2][9][2]=5	moheItemGL[2][9][2]=0.05			
	moheItem[2][1][3]="机票"	moheItemNum[2][1][3]=1	moheItemGL[2][1][3]=0.3	moheItem[2][2][3]="机票"	moheItemNum[2][2][3]=1	moheItemGL[2][2][3]=0.3	moheItem[2][3][3]="机票"	moheItemNum[2][3][3]=1	moheItemGL[2][3][3]=0.3	moheItem[2][4][3]="机票"	moheItemNum[2][4][3]=1	moheItemGL[2][4][3]=0.27	moheItem[2][5][3]="机票"	moheItemNum[2][5][3]=1	moheItemGL[2][5][3]=0.25	moheItem[2][6][3]="机票"	moheItemNum[2][6][3]=1	moheItemGL[2][6][3]=0.2	moheItem[2][7][3]="机票"	moheItemNum[2][7][3]=1	moheItemGL[2][7][3]=0.2	moheItem[2][8][3]="机票"	moheItemNum[2][8][3]=1	moheItemGL[2][8][3]=0.1	moheItem[2][9][3]="机票"	moheItemNum[2][9][3]=1	moheItemGL[2][9][3]=0.1	moheItem[2][10][3]="机票"	moheItemNum[2][10][3]=1	moheItemGL[2][10][3]=0.05
	moheItem[2][1][4]="装备"	moheItemNum[2][1][4]=1	moheItemGL[2][1][4]=0.05	moheItem[2][2][4]="装备"	moheItemNum[2][2][4]=1	moheItemGL[2][2][4]=0.05	moheItem[2][3][4]="装备"	moheItemNum[2][3][4]=1	moheItemGL[2][3][4]=0.05	moheItem[2][4][4]="装备"	moheItemNum[2][4][4]=1	moheItemGL[2][4][4]=0.08	moheItem[2][5][4]="装备"	moheItemNum[2][5][4]=1	moheItemGL[2][5][4]=0.1	moheItem[2][6][4]="装备"	moheItemNum[2][6][4]=1	moheItemGL[2][6][4]=0.15	moheItem[2][7][4]="装备"	moheItemNum[2][7][4]=1	moheItemGL[2][7][4]=0.15	moheItem[2][8][4]="装备"	moheItemNum[2][8][4]=1	moheItemGL[2][8][4]=0.2	moheItem[2][9][4]="装备"	moheItemNum[2][9][4]=1	moheItemGL[2][9][4]=0.25	moheItem[2][10][4]="装备"	moheItemNum[2][10][4]=1	moheItemGL[2][10][4]=0.3
												moheItem[2][5][5]="特殊"	moheItemNum[2][5][5]=1	moheItemGL[2][5][5]=0.05	moheItem[2][6][5]="特殊"	moheItemNum[2][6][5]=1	moheItemGL[2][6][5]=0.15	moheItem[2][7][5]="特殊"	moheItemNum[2][7][5]=1	moheItemGL[2][7][5]=0.15	moheItem[2][8][5]="特殊"	moheItemNum[2][8][5]=1	moheItemGL[2][8][5]=0.2	moheItem[2][9][5]="特殊"	moheItemNum[2][9][5]=1	moheItemGL[2][9][5]=0.25	moheItem[2][10][5]="特殊"	moheItemNum[2][10][5]=1	moheItemGL[2][10][5]=0.35
												moheItem[2][7][6]="44-48包包"	moheItemNum[2][7][6]=1	moheItemGL[2][7][6]=0.05	moheItem[2][8][6]="精灵升级果"	moheItemNum[2][8][6]=1	moheItemGL[2][8][6]=0.1	moheItem[2][9][6]="路易16"	moheItemNum[2][9][6]=1	moheItemGL[2][9][6]=0.1	moheItem[2][10][6]="神秘宝箱"	moheItemNum[2][10][6]=1	moheItemGL[2][10][6]=0.1

	--复制完毕
--**** 魔盒扣钱
	local moheMoney={}
	moheMoney[1]={}
	moheMoney[2]={}
	-- moheMoney[3]={}
	-- LV10-45
	moheMoney[1][1]=600	--对应的次数的需要的金钱
	moheMoney[1][2]=700
	moheMoney[1][3]=1100
	moheMoney[1][4]=1200
	moheMoney[1][5]=2000
	moheMoney[1][6]=2800
	moheMoney[1][7]=3600
	moheMoney[1][8]=5000
	moheMoney[1][9]=6000
	moheMoney[1][10]=7000
	-- LV45-60
	moheMoney[2][1]=2000
	moheMoney[2][2]=2200
	moheMoney[2][3]=2500
	moheMoney[2][4]=3000
	moheMoney[2][5]=3500
	moheMoney[2][6]=4000
	moheMoney[2][7]=4500
	moheMoney[2][8]=7000
	moheMoney[2][9]=8500
	moheMoney[2][10]=10000 
			
--STA记录已开启次数
-- *****物品给予区间第1-3次为1 第4-7次为2 第8，9，10次分别为3，4，5	
	local count1=count+1		--对应的次数转换公式
	-- if count<=1 then 
		-- count1=1
	-- elseif count<=3 then 
		-- count1=2
	-- elseif count<=5 then
		-- count1=3
	-- elseif count==6 then 
		-- count1=4
	-- elseif count==7 then
		-- count1=5
	-- elseif count==8 then
		-- count1=6
	-- elseif count==9 then
		-- count1=7
	-- end	
-- *****
-- ******金钱判定，没有返回 0，物品使用失败，有扣除相应金钱
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if moheMoney[LVtype][count+1]>Money_Have then
		SystemNotice( role ,"钱不够哦，需要 "..moheMoney[LVtype][count+1].." 才能开启魔能结晶。")
		return 0
	end
	TakeMoney(role,nil,moheMoney[LVtype][count+1])
-- ******
-- *******根据概率给予物品	
	local a=math.random( 1,100000)/100000
	local i=0
	local itemID= 1
	for i = 1,6,1 do
		if a <= moheItemGL[LVtype][count1][i] then
			if moheItem[LVtype][count1][i] =="经验" then
				itemID = GiveMoHeExp (role,moheItemNum[LVtype][count1][i])
			elseif moheItem[LVtype][count1][i] =="回复" then
				itemID = GiveMoHeHF (role,moheItemNum[LVtype][count1][i])
			elseif moheItem[LVtype][count1][i] =="机票" then
				itemID = GiveMoHeJiPiao (role)
			elseif moheItem[LVtype][count1][i] =="装备" then
				itemID=  GiveMoHeEquip (role)
			elseif moheItem[LVtype][count1][i] =="特殊" then
				itemID = GiveMoHeSP(role)
			elseif moheItem[LVtype][count1][i] =="路易16" then
				GiveItem(role , 0, 6379 ,1, 4)
				itemID = 6379
			elseif moheItem[LVtype][count1][i] =="35bb" then
				local roleJob=GetChaAttr(role, ATTR_JOB)
				local Cha_Num = GetChaTypeID( role )
				if roleJob==JOB_TYPE_JIANSHI and  Cha_Num ==1 then 
					moheItem[LVtype][count1][i]=3799
				elseif roleJob==JOB_TYPE_JIANSHI and  Cha_Num ==2 then 
					moheItem[LVtype][count1][i]=0770
				elseif roleJob==JOB_TYPE_JIANSHI and  Cha_Num ==3 then 
					moheItem[LVtype][count1][i]=3799
				elseif roleJob==JOB_TYPE_SHUANGJS then
					moheItem[LVtype][count1][i]=3799
				elseif roleJob==JOB_TYPE_JUJS then
					moheItem[LVtype][count1][i]=0770
				elseif roleJob==JOB_TYPE_QIYUANSHI or roleJob==JOB_TYPE_SHENGZHIZHE or roleJob==JOB_TYPE_FENGYINSHI then
					moheItem[LVtype][count1][i]=0785
				elseif  roleJob==JOB_TYPE_LIEREN or roleJob==JOB_TYPE_JUJISHOU then
					moheItem[LVtype][count1][i]=0781
				elseif roleJob==JOB_TYPE_MAOXIANZHE or roleJob==JOB_TYPE_HANGHAISHI  then
					moheItem[LVtype][count1][i]=0799
				else 
					moheItem[LVtype][count1][i]=0799
				end
				GiveItem(role , 0, moheItem[LVtype][count1][i] ,1, 4)
				itemID = moheItem[LVtype][count1][i]
			elseif moheItem[LVtype][count1][i] =="神秘宝箱" then
				GiveItem(role , 0, 1814 ,1, 4)
				itemID = 1814
			elseif moheItem[LVtype][count1][i] =="44-48包包" then
				GiveItem(role , 0, 6394 ,1, 4)
				itemID = 6394
			elseif moheItem[LVtype][count1][i] =="精灵升级果" then
				local b=math.random(1,5)
				itemID=221+b
				GiveItem(role , 0, itemID,1, 4)
			end
			break
		end
		moheItemGL[LVtype][count1][i+1]= moheItemGL[LVtype][count1][i]+moheItemGL[LVtype][count1][i+1]
	end			
	local scrollID={}
	scrollID[1]=0799
	scrollID[2]=0781
	scrollID[3]=0785
	scrollID[4]=0770
	scrollID[5]=3799
	scrollID[6]=3088
	scrollID[7]=222
	scrollID[8]=223
	scrollID[9]=224
	scrollID[10]=225
	scrollID[11]=226
	scrollID[12]=6394
	scrollID[13]=1814
	scrollID[14]=6379
	local scrolli=0
	for scrolli=1,14,1 do
		if itemID==scrollID[scrolli] then
			local itemname = GetItemName ( itemID ) 
			local name = GetChaDefaultName(role)
			ScrollNotice(name.." 在开启魔能结晶时获得 "..itemname.." .", 1 )
		end
		return
	end
end


function Give_Box ( role )
	--local Now_Month = os.date ("%m")
 	local now_day= os.date("%d")
	local now_day_num = tonumber(now_day)
	--local now_month_num = tonumber(Now_Month)
	--local day = 0
	--day = now_month_num*100+now_day_num
	
	GiveItem ( role , 0 , 6378 , 1 , 4 )
	Box_Attr = GetChaItem2 (  role , 2 , 6378 )
	SetItemAttr(Box_Attr, ITEMATTR_VAL_STR, 0)	--操作日期
	SetItemAttr(Box_Attr, ITEMATTR_VAL_AGI, 0)	--耐久
	SetItemAttr(Box_Attr, ITEMATTR_VAL_STA, 0)	--操作次数
end

-----------------------------------------------给道具并设置道具属性
function GiveItem_SetAttr (character,p1,p2,p3,p4,p5,p6)		--p1：道具ID,p2=开关,p3=BUFF类型,p4=BUFF持续时间,p5=记时器,p6=BUFF等级
	local haveItem1= CheckBagItem(character,6370)
	if haveItem1 ~=0 then
		SystemNotice(character,"请用完现有的再领")
		return LUA_FALSE
	end
	local Item_SBNum2 = CheckBagItem( character, 6371 )
	if Item_SBNum2 ~=0 then
		SystemNotice(character,"请用完现有的再领")
		return LUA_FALSE
	end
	
	 -- local p = GetChaAttr ( character ,ATTR_EXTEND6 )
	

	

	
	-- if p < p3*p4 then
		-- SystemNotice ( character ,"TMTMTMTMTMTMTTM！" )
		-- return LUA_FALSE
	-- end
	-- p = p - p3*p2
	local p = GetChaAttr ( character ,ATTR_EXTEND6 )
	local pp = GetChaAttr ( character ,ATTR_EXTEND6 )
	pp = pp + p4*p3
	SetChaAttr( character , ATTR_EXTEND6 , pp )
	if p3 == 1 and p6==1 then 
		SystemNotice (character ,"您领取了"..p4.."小时的双倍经验")
	elseif p3 == 3 then
		SystemNotice ( character ,"您领取了"..p4.."小时的双倍掉率")
	end
	-- SystemNotice (character ,"我进来鸟！！！！")
	GiveItem ( character , 0 , p1  , 1 , 4 )
	item = GetChaItem2 (  character , 2 , p1 )
	SetItemAttr(item, ITEMATTR_VAL_STR, p2)
	SetItemAttr(item, ITEMATTR_VAL_AGI, p3)
	SetItemAttr(item, ITEMATTR_VAL_DEX, p4)
	SetItemAttr(item, ITEMATTR_VAL_CON, p5)
	SetItemAttr(item, ITEMATTR_VAL_STA, p6)
	-- SystemNotice (character , " p1 =="..p1.." p2 =="..p2.." p3 =="..p3.." p4 =="..p4.." p5 =="..p5.." p6 =="..p6)
	
	
	
	if p6 == 4 then											--浓缩4倍
		p = p + 5
		SystemNotice (character ,"你领取了"..p4.."小时的4倍经验")
		SetChaAttr( character , ATTR_EXTEND6 , p )
		return LUA_TRUE
	end
	if p6 == 7 then		--浓缩7倍
		SystemNotice (character ,"你领取了"..p4.."小时的7倍经验")
		p = 10
		SetChaAttr( character , ATTR_EXTEND6 , 10 )
	end
	return LUA_TRUE
	
end
function ShuangBei_TimeChaxun (role)       -----查询剩余双倍时间
	local ppp = GetChaAttr (role ,ATTR_EXTEND6)
	local ppp=10-ppp
	SystemNotice (role , "你本周剩余的双倍时间为"..ppp.."小时。")
	
end

------------------------------------------------------------剩余双倍时间
function ShuangBei_Time (role , p1 ,p2 )			--p1 时间
	local p = GetChaAttr (role ,ATTR_EXTEND6)    ----------系统剩余双倍时间接口
	p = 10 - p
	if p < p1*p2 then
		SystemNotice (role , "你的双倍经验不够")
		return LUA_FALSE
	end
	if p ~= 0 then
		return LUA_TRUE
	else
		SystemNotice(role,"本周你剩余的双倍时间已经用尽。")
		return LUA_FALSE
	end
end

------------------------------时间存储
function ShuangBei_ChunChu (role)
	-- SystemNotice (role ,"又NND进来了")
	local p = GetChaAttr (role ,ATTR_EXTEND6)
	-- SystemNotice ( role , " 存储前时间=========".. p)
	GiveItem ( role , 0 , 6373  , 1 , 4 )
	local Have_pingzi = GetChaItem2 (  role , 2 , 6373)
	p = 10 - p
	-- SystemNotice ( role , " p=========".. p)
	SetItemAttr(Have_pingzi, ITEMATTR_VAL_STR, p  )	--剩余时间
	-- local pp=GetItemAttr( Have_pingzi, ITEMATTR_VAL_STR)
	-- SystemNotice ( role , " p========="..pp)
	SetChaAttr ( role , ATTR_EXTEND6 , 10 )
	-- SystemNotice (role ,"又TMMD出去了")
end


function zhouRi(role) 
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_week= os.date("%w")
	local now_year= os.date("%y")	-------------年
	local now_year_num=tonumber(now_year)
	local now_month_num= tonumber(now_month)		-------------月
	local now_day_num= tonumber(now_day)			-------------日
	local now_week_num= tonumber(now_week)
	local zhouRi = now_day_num + 7 - now_week_num  
	if now_month_num==1 or now_month_num==3 or now_month_num==5 or now_month_num==7 or now_month_num==8 or now_month_num==10 or now_month_num==12 then	
		if zhouRi >31 then
		zhouRi=zhouRi-31
		end 
	end
		

	if now_month_num==4 or now_month_num==6 or now_month_num==9 or now_month_num==11 then
		if zhouRi >30 then
			zhouRi=zhouRi-30
		end
	end

	if now_month_num==2 then
		if (math.mod(now_year_num,4)==0 and math.mod(now_year_num,100)~=0) or (math.mod(now_year_num,400)==0) then
			if zhouRi>29 then
				zhouRi=zhouRi-29
			end
		else 
			if zhouRi >28 then
				zhouRi=zhouRi-28
			end
		end
	end
	return zhouRi
end


function CanZhanBu(role,p1)
	if ValidCha(p1)==0 then 
		p1 = JParg[1]
	end
	JParg[1] = p1
	if p1 ==1 then 
	elseif p1==2 then 
		local ret = HasMoney(role , 20000)
		if ret== 0 then 
			return "瞅瞅你的钱包，有20000银币吗！改变命运可是很耗精神的！"
		end
	elseif p1==3 then 
		local ret = HasMoney(role , 100000)
		local ret1 = HasMoney(role , 20000)
		if ret == 0  then 
			if ret1 == 1 then 
				return "什么？两万银币就想再次改变命运？没门！一口价！十万！别问为什么！"
			else 
				return "没钱就等明天再来免费占卜吧."
			end
		end	
	elseif p1==4 then
		local ret =CheckBagItem(role ,6379)
		if ret== 0 then 
			return "高级占卜当然要高级酒啦，来瓶路易十六就可以了。"
		end
	elseif p1==5 then	
		local ret =CheckBagItem(role ,6379)
		if ret== 0 then 
			return "高级占卜当然要高级酒啦，来瓶路易十六就可以了。"
		end
	elseif p1==6 then
		local ret =CheckBagItem(role ,6379)
		if ret== 0 then 
			return "高级占卜当然要高级酒啦，来瓶路易十六就可以了。"
		end
	else	
		return "还占卜！我头都爆了！我要罢工！"
	end
	local now_day= os.date("%d")
	now_day= tonumber(now_day)
	local ZBday = GetChaAttr(role,ATTR_EXTEND2)
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local ZBNType= math.floor(ZBMain/10)
	local ZBNMain= math.mod(ZBMain,10 )
	if now_day==ZBday and (ZBMain==-1 or ZBMain==-2 )then
		return "女神眷恋着你。我不敢对你的命运有任何的猜测。"
	end
	if p1==4 then 
		p1= 6
	end
	if now_day==ZBday and p1 <= ZBNType then
		local zhanBuFalse={}
			zhanBuFalse[1]="一天只提供一次免费占卜，想改变命运的话，只需要给我点钱买酒就行了。"
			zhanBuFalse[2]="再次改变命运是很费力的事情,给我十万银币我才不亏啊。"
			zhanBuFalse[3]="银币现在已经不能补偿我改变命运的消耗了，只有路易十六才能让我有点动力。"
			zhanBuFalse[4]="银币现在已经不能补偿我改变命运的消耗了，只有路易十六才能让我有点动力。"
			zhanBuFalse[5]="银币现在已经不能补偿我改变命运的消耗了，只有路易十六才能让我有点动力。"
			zhanBuFalse[6]="我现在没有能力改变六次命运，明天再来吧。也许你们多占卜，我就能学习到更高阶的占卜。"
		return zhanBuFalse[ZBNType]
	end
	return 1
end

function CanZhanBubyRole(role)
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local ZBNType= math.floor(ZBMain/10)
	local ZBNMain= math.mod(ZBMain,10 )
	local p1 = ZBNType+1
	if p1 >6 then 
		p1= 6
	end
	local ret = CanZhanBu (role,p1)
	return ret
	
end
function ZhanBubyRole(role)
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local ZBNType= math.floor(ZBMain/10)
	local ZBNMain= math.mod(ZBMain,10 )
	local p1 = ZBNType+1
	if p1 >6 then 
		p1= 6
	end
	ZhanBu (role,p1)
	return 1
end
function GetZhanBuInfo(role)
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local ZBNType= math.floor(ZBMain/10)
	if ZBNType== 0 then 
		return "你现在可以免费占卜，确定要使用免费占卜吗？"
	elseif ZBNType==1 then 
		return "你现在已经占卜了一次，只要两万银币就可以再次占卜。确定要使用两万银币占卜吗？"
	elseif ZBNType==2 then 
		return "你今天已经占卜了二次，这一次需要10万银币哦。确定要使用10万银币占卜吗？"
	elseif ZBNType==3 then
		return "你今天已经占卜了三次，要改变你的命运我需要使用高级占卜，代价就是你得给我一瓶路易十六。确定要使用路易十六占卜吗？"
	elseif ZBNType==4 then	
		return "你今天已经占卜了四次，要改变你的命运我需要使用高级占卜，代价就是你得给我一瓶路易十六。确定要使用路易十六占卜吗？"
	elseif ZBNType==5 then
		return "你今天已经占卜了五次，要改变你的命运我需要使用高级占卜，代价就是你得给我一瓶路易十六。确定要使用路易十六占卜吗？"
	else 
		return "你今天已经占卜了六次，太感谢你了！不过次数已经用完，请明天再来。"
	end
end

function ZhanBu (role,p1)    -------p1 1代表普通占卜 2代表银币占卜 3代表RMB占卜
	if p1==2 then 
		TakeMoney(role ,CurNpc,20000)
	elseif p1==3 then 
		TakeMoney(role ,CurNpc,100000)
	elseif p1==4 then
		RemoveChaItem(role ,6379,1,0,-1,2,1)
	elseif p1==5 then	
		RemoveChaItem(role ,6379,1,0,-1,2,1)
	elseif p1==6 then
		RemoveChaItem(role ,6379,1,0,-1,2,1)
	elseif p1==1 then
	else
		return "还占卜！我头都爆了！我要罢工！"
	end
	local ZBStateBGL = {}
		ZBStateBGL[1] = {}
		ZBStateBGL[2] = {}
		ZBStateBGL[3] = {}
		ZBStateBGL[4] = {}
		ZBStateBGL[5] = {}
		ZBStateBGL[6] = {}
ZBStateBGL[1][1] = 50	ZBStateBGL[2][1] = 50	ZBStateBGL[3][1] = 50	ZBStateBGL[4][1] = 55	ZBStateBGL[5][1] = 55	ZBStateBGL[6][1] = 55
ZBStateBGL[1][2] = 80	ZBStateBGL[2][2] = 80	ZBStateBGL[3][2] = 80	ZBStateBGL[4][2] = 85	ZBStateBGL[5][2] = 95	ZBStateBGL[6][2] = 105
ZBStateBGL[1][3] = 240	ZBStateBGL[2][3] = 240	ZBStateBGL[3][3] = 240	ZBStateBGL[4][3] = 240	ZBStateBGL[5][3] = 230	ZBStateBGL[6][3] = 230
ZBStateBGL[1][4] = 400	ZBStateBGL[2][4] = 400	ZBStateBGL[3][4] = 390	ZBStateBGL[4][4] = 380	ZBStateBGL[5][4] = 365	ZBStateBGL[6][4] = 355
ZBStateBGL[1][5] = 450	ZBStateBGL[2][5] = 450	ZBStateBGL[3][5] = 440	ZBStateBGL[4][5] = 430	ZBStateBGL[5][5] = 415	ZBStateBGL[6][5] = 415
ZBStateBGL[1][6] = 610	ZBStateBGL[2][6] = 610	ZBStateBGL[3][6] = 590	ZBStateBGL[4][6] = 570	ZBStateBGL[5][6] = 550	ZBStateBGL[6][6] = 540
ZBStateBGL[1][7] = 650	ZBStateBGL[2][7] = 650	ZBStateBGL[3][7] = 670	ZBStateBGL[4][7] = 690	ZBStateBGL[5][7] = 690	ZBStateBGL[6][7] = 700
ZBStateBGL[1][8] = 810	ZBStateBGL[2][8] = 810	ZBStateBGL[3][8] = 820	ZBStateBGL[4][8] = 830	ZBStateBGL[5][8] = 825	ZBStateBGL[6][8] = 825
ZBStateBGL[1][9] = 970	ZBStateBGL[2][9] = 970	ZBStateBGL[3][9] = 970	ZBStateBGL[4][9] = 970	ZBStateBGL[5][9] = 960	ZBStateBGL[6][9] = 950
ZBStateBGL[1][10] = 1000	ZBStateBGL[2][10] = 1000	ZBStateBGL[3][10] = 1000	ZBStateBGL[4][10] = 1000	ZBStateBGL[5][10] = 1000	ZBStateBGL[6][10] = 1000		
	local ZBStateLVGL = {}
		ZBStateLVGL[1] = {}
		ZBStateLVGL[1][0] = 0
		ZBStateLVGL[1][1] = 15											
		ZBStateLVGL[1][2] = 25												
		ZBStateLVGL[1][3] = 30												
		ZBStateLVGL[1][4] = 32												
		ZBStateLVGL[1][5] = 33												
		ZBStateLVGL[2] = {}
		ZBStateLVGL[2][0] = 0
		ZBStateLVGL[2][1] = 30								
		ZBStateLVGL[2][2] = 68												
		ZBStateLVGL[2][3] = 104												
		ZBStateLVGL[2][4] = 194												
		ZBStateLVGL[2][5] = 1000
		ZBStateLVGL[3] = {}
		ZBStateLVGL[3][0] = 0
		ZBStateLVGL[3][1] = 100								
		ZBStateLVGL[3][2] = 100												
		ZBStateLVGL[3][3] = 100												
		ZBStateLVGL[3][4] = 100												
		ZBStateLVGL[3][5] = 100
		ZBStateLVGL[4] = {}
		ZBStateLVGL[4][0] = 0
		ZBStateLVGL[4][1] = 1								
		ZBStateLVGL[4][2] = 2												
		ZBStateLVGL[4][3] = 4												
		ZBStateLVGL[4][4] = 10												
		ZBStateLVGL[4][5] = 20									
		ZBStateLVGL[5] = {}
		ZBStateLVGL[5][0] = 0
		ZBStateLVGL[5][1] = 50								
		ZBStateLVGL[5][2] = 80												
		ZBStateLVGL[5][3] = 95												
		ZBStateLVGL[5][4] = 100												
		ZBStateLVGL[5][5] = 100	
		ZBStateLVGL[6] = {}
		ZBStateLVGL[6][0] = 0
		ZBStateLVGL[6][1] = 20								
		ZBStateLVGL[6][2] = 65												
		ZBStateLVGL[6][3] = 90												
		ZBStateLVGL[6][4] = 100												
		ZBStateLVGL[6][5] = 100
		ZBStateLVGL[7] = {}
		ZBStateLVGL[7][0] = 0
		ZBStateLVGL[7][1] = 100								
		ZBStateLVGL[7][2] = 100												
		ZBStateLVGL[7][3] = 100												
		ZBStateLVGL[7][4] = 100												
		ZBStateLVGL[7][5] = 100
		ZBStateLVGL[8] = {}
		ZBStateLVGL[8][0] = 0
		ZBStateLVGL[8][1] = 100								
		ZBStateLVGL[8][2] = 100												
		ZBStateLVGL[8][3] = 100												
		ZBStateLVGL[8][4] = 100												
		ZBStateLVGL[8][5] = 100											
		ZBStateLVGL[9] = {}
		ZBStateLVGL[9][0] = 0
		ZBStateLVGL[9][1] = 100								
		ZBStateLVGL[9][2] = 100												
		ZBStateLVGL[9][3] = 100												
		ZBStateLVGL[9][4] = 100												
		ZBStateLVGL[9][5] = 100
		ZBStateLVGL[10] = {}
		ZBStateLVGL[10][0] = 0
		ZBStateLVGL[10][1] = 100								
		ZBStateLVGL[10][2] = 100												
		ZBStateLVGL[10][3] = 100												
		ZBStateLVGL[10][4] = 100												
		ZBStateLVGL[10][5] = 1
	local now_day= os.date("%d")
	now_day= tonumber(now_day)
	local ZBday = GetChaAttr(role,ATTR_EXTEND2)
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local ZBNType= math.floor(ZBMain/10)
	local ZBNMain= math.mod(ZBMain,10 )
	local RDa= math.random (1,100)
	if p1 <=  ZBNType and p1 ==4 then  
		 p1 = ZBNType+1
	end
	if p1>=4 and p1<=6 then   --第4到6次 能够把5%的诅咒变成EXP增加和努力使用效果增加
		if RDa>70 and RDa<75 then
			local a = math.random (1,3)
			if a == 1 then 
				RDa = ZBStateBGL[p1][1]
			else 
				RDa = ZBStateBGL[p1][7]
			end
		end
	end		
	local ZBstate=GetChaAttr(role, ATTR_EXTEND1)	--
	local ZBstate1=math.floor(ZBstate/10)			--占卜效果注册
	local ZBstate2=math.mod(ZBstate,10)
	local state= 0
	local statelv=0
	SetChaAttr(role,ATTR_EXTEND0,0)
	SetChaAttr(role, ATTR_EXTEND1,0)
	SetChaAttr(role, ATTR_EXTEND2,0)
 	if RDa<=70 then 
		if ZBday==now_day and ZBMain~=0 then	
			if ZBstate2==4 and ZBNMain== 0  then
				local statelv_ZBMAXHP = GetChaStateLv ( role , STATE_ZBMOVE )
				if statelv_ZBMAXHP ~=0 then	
					RemoveState ( role , STATE_ZBMOVE )			
				end
			end
			if ZBstate2==5 and ZBNMain== 0 then		
				local statelv_ZBMAXHP = GetChaStateLv ( role , STATE_ZBHP )
				if statelv_ZBMAXHP ~=0 then
					RemoveState ( role , STATE_ZBHP ) 
				end
			end
			if ZBstate2==6 and ZBNMain== 0 then
				local statelv_ZBMAXHP = GetChaStateLv ( role , STATE_ZBSP )
				if statelv_ZBMAXHP ~=0 then
					RemoveState ( role , STATE_ZBSP ) 
				end
			end	
		end
		local RDb= math.random(1,ZBStateBGL[p1][10])
		local zhanbuBN={}
			zhanbuBN[1]="天启命运，你今天打怪获得的经验会提高"
			zhanbuBN[2]="天启命运，你今天精炼成功率会提高"
			zhanbuBN[3]="天启命运，你今天挖宝更容易挖到好东西"
			zhanbuBN[4]="天启命运，你今天移动速度会增长"
			zhanbuBN[5]="天启命运，你今天HP上限会增长"
			zhanbuBN[6]="天启命运，你今天SP上限会增长"
			zhanbuBN[7]="天启命运，你今天使用商城部分经验类道具会获得更高的效果(双倍经验增幅器变为4倍经验,高阶三倍经验果变为5倍经验)"
			zhanbuBN[8]="天启命运，你今天修理装备只需要1银币"
			zhanbuBN[9]="天启命运，你今天精灵消耗会减少"
			zhanbuBN[10]="天启命运，你今天死亡了不掉经验"
		local i=0
		for i=1,10,1 do
			if RDb<= ZBStateBGL[p1][i] then
				if i==7 then
					local lv=GetChaAttr(role,ATTR_LV)
					if lv<15  then
						ZhanBu (role,p1)
						return
					end
				end 
				SystemNotice(role,zhanbuBN[i])
				state = i
				break
			end
		end
		local RDc = math.random (1,ZBStateLVGL[state][5])
		local j=0
		for j=1,5,1 do
			if RDc<= ZBStateLVGL[state][j] then
				statelv = j
				break
			end	
		end
		state=statelv*10+state
		SetChaAttr(role, ATTR_EXTEND1,state)
		ZBMain=p1*10
		SetChaAttr(role, ATTR_EXTEND0,ZBMain)
		SetChaAttr(role,ATTR_EXTEND2,now_day)
		SetChaAttr(role,ATTR_EXTEND7,2880)
		return LUA_TRUE
	end
	if RDa==100 and haveNSD==0then
		local Now_hour = os.date("%H") 
		local now_day=os.date("%d")  
		now_hour=tonumber(now_hour)  
		now_day=tonumber(now_day)  
		SetChaAttr(role, ATTR_EXTEND0,-1) 
		SetChaAttr(role,ATTR_EXTEND2,now_day)
		SetChaAttr(role,ATTR_EXTEND1,0)
		SetChaAttr(role,ATTR_EXTEND7,2880)
		SystemNotice(role,"女神眷恋，赐你神盾")
		local retbag = HasLeaveBagGrid( role, 1)
		if retbag ~= LUA_TRUE then
			SystemNotice(role,"背包空格少于1个无法获得女神盾，下次注意哦")
			return LUA_TRUE
		end
		GiveItem(role,0,6376,1,22)
		local name = GetChaDefaultName(role)
		ScrollNotice(name.." 在占卜时受到了女神的眷顾，被赐予了守护之神器——女神祝福之盾，大家鼓掌=v= ", 1 )
		SystemNotice(role,"被女神盯上了，今天无法占卜")		 
		local dunpai=GetChaItem2(role,2,6376)  
		SetItemAttr(dunpai,ITEMATTR_VAL_AGI,now_day) 
		SetItemAttr(dunpai,ITEMATTR_VAL_CON,240)
		haveNSD=1
		return 1
	end	
		----给女神盾牌
	if RDa<=100 then
		SystemNotice(role,"你被诅咒了，自重吧" )
		ZBMain=p1*10+1
		SetChaAttr(role, ATTR_EXTEND0,ZBMain)
		SetChaAttr(role,ATTR_EXTEND2,now_day)
		SetChaAttr(role,ATTR_EXTEND1,0)
		
	end	
	SetChaAttr(role,ATTR_EXTEND7,2880)  --24*60*2
	return LUA_TRUE
end
	


---------------------------------------------------参赛卡道具属性判断
function CheckItemAttr( role , p1, p2)----item_csk：道具编号
	local ItemAttr={}
	ItemAttr[1]=ITEMATTR_VAL_STR    ----  战队编号
	ItemAttr[2]=ITEMATTR_VAL_AGI    ----  赛季编号
	ItemAttr[3]=ITEMATTR_VAL_DEX    ----  轮次编号
	local item_num = 0
	local item = 0	
	item_num = CheckBagItem(  role , p1  )		--检查背包内p1号道具的数量
	
	if item_num ~= 1 then
		SystemNotice( role, "请确保您身上只有一张参赛卡")
		return LUA_FALSE
	else
		item = GetChaItem2 (  role , 2 , p1 )-----------------取道具指针
		local itemattr = GetItemAttr(item, ItemAttr[3])--------取道具的p2属性
		if p2 == 3 and itemattr == 3 then
			return LUA_TRUE
		elseif p2 == 4 and itemattr == 4 then
			return LUA_TRUE
		elseif p2 == 5 and itemattr == 5 then
			return LUA_TRUE
		end
		if itemattr >= 0 and itemattr < 3 then
			SystemNotice(role, "抱歉，您的参赛轮次还不足以换取奖励，希望您下次再接再厉哦~~")
			return LUA_FALSE			
		end
	end
end
--------------追加轮次	by eric 2008.7.15

local temp33 = 0
local temp34 = 0
function Refresh_Round ()
	local i = 8							--日
	local Now_Day = GetNowDay()		--日
	local Now_Time = GetNowTime()	--小时
	local Now_Round = GetAmphitheaterRound()
	local Now_Season = GetAmphitheaterSeason()

	for i = 8,31,3 do
		if Now_Day == i and Now_Time ==22 and temp33 ~= 1 then
			Now_Round = Now_Round + 1
			UpdateAmphitheaterRound(Now_Season,Now_Round)
			temp33 = 1
			return
		end
		if Now_Day >= i and Now_Time >=23 and temp33 == 1 then
			temp33 = 0
		end
	end
end

--------------竞技场允许比赛时间判定		by eric 2008.7.15

function Can_Match ()
	local Now_Day = GetNowDay()	--日
	local Now_Time = GetNowTime()	--小时
	local i = 8						--日
	--Notice ("Now_Day===="..Now_Day)
	--Notice ("Now_Time===="..Now_Time)
	for i = 8 , 31 , 3  do
		if Now_Day == i then
			if Now_Time >= 19 and Now_Time <= 22 then			
				return 1
			else
				return 3
			end
		elseif Now_Day == i + 1 then
			return 2
		elseif Now_Day == i + 2 then
			if Now_Time <= 22 then			
				return 2
			elseif Now_Time == 23 then			
				return 3
			end
		end
	end
end
--追加竞技场赛季号和轮次
function AddSeasonNumatArena()
	
	local Now_Season_Num = GetAmphitheaterSeason()	
	local Set_Season_Num = Now_Season_Num+1	
	local Now_Day = GetNowDay()	--日
	local Now_Time = GetNowTime()	--小时	
	if Now_Day == 1 and Now_Time == 0 and temp34 == 0 then		
		DisuseAmphitheaterSeason(Now_Season_Num,1,nil)		
		AddAmphitheaterSeason(Set_Season_Num)
		temp34 = 1		
		return	
	elseif Now_Day == 1 and Now_Time > 0 and temp34 ~= 0 then
		temp34 = 0			
		return
	end	
end
-----------允许复活
function Get_Can_Rebirth (character)
	local Get_Match = Can_Match()
	local ReliveStateNum = CloseReliveByState()
	if ReliveStateNum == 4 then		
		SystemNotice(character , "当前赛季的复活系统已关闭")
		return	LUA_FALSE
	elseif Get_Match == 2 then
		SystemNotice(character , "复活系统已经开放！")
		return LUA_TRUE
	elseif Get_Match == 3 then		
		SystemNotice(character , "复活系统已经关闭！")
		return LUA_FALSE		
	end
end
----取竞技场允许比赛时间

function Get_Can_Match (character)
	local Get_Match = Can_Match()
	if Get_Match == 1 then
		return LUA_TRUE
	else
		SystemNotice(character , "非比赛时间无法进入竞技场")
		return LUA_FALSE
	end
end


------------------取几号	by eric 2008.7.15
function GetNowDay ( )
	local now_day= os.date("%d")
	local Now_DayNum = tonumber(now_day)
	return Now_DayNum
end

-----------------竞技场报名时间判定	by eric 2008.7.15
function Can_Sign_Up ()
	local Now_Day = GetNowDay ()	--日
	if Now_Day >= 1 and Now_Day <= 7 then
		return 1
	else
		return 0
	end	
end

--[   竞技场      判断当前角色是否为组队状态   ]--     NpcSdk , MissionSdk注册  by - dean
function CheckIsTeamor(character)
	local Teamplayer = {}
		Teamplayer[1] = GetTeamCha( character, 0 )
		Teamplayer[2] = GetTeamCha( character, 1 )
		Teamplayer[3] = GetTeamCha( character, 2 )
		Teamplayer[4] = GetTeamCha( character, 3 )
	local i = 1
	for i = 1 , 4 , 1 do
		if Teamplayer[i] ~= nil then
			SystemNotice(character,"您处于组队状态，传送失败")
			return LUA_FALSE
		else				
			return LUA_TRUE
		end	
	end
end
--[   竞技场     判断当前地图是否可传入比赛队伍   ]-- NpcSdk , MissionSdk注册 by - dean
function CheckIsMapFull(character)
	local Mapstate = {}
		Mapstate[1] = IsMapFull(1)		
		Mapstate[2] = IsMapFull(2)
		Mapstate[3] = IsMapFull(3)
	local X = {}
		X[1] = 80
		X[2] = 50
		X[3] = 65
	local Y = {}
		Y[1] = 44
		Y[2] = 60
		Y[3] = 88
	local MapName = {}
		MapName[1] = "starena1"
		MapName[2] = "starena2"
		MapName[3] = "starena3"
		local p1,p2 = 0
		local i = 1
		for i = 1,3,1 do
		if Mapstate[i] == 0 then
			--local p1 = character
			local role_csk = CheckBagItem( character, 6066 )
			local csk = GetChaItem2 ( character , 2 , 6066 )
			local csk_teamid = GetItemAttr(csk,ITEMATTR_VAL_STR)
			SystemNotice(character,"当前地图队伍存在=0")			
			UpdateMapAfterEnter(character , i)
			SystemNotice(character,"UpdateMapAfterEnter - 成功")
			UpdateMapNum(csk_teamid ,i, 0 )			
			SystemNotice(character,"i - 成功"..i)			
			local player2 = GetTeamCha(character,0)
			GoTo(player2,X[i],Y[i],MapName[i])
			SystemNotice(character,"player2进入地图"..MapName[i].."成功")	
			local player3 = GetTeamCha(character,1)	
			GoTo(player3,X[i],Y[i],MapName[i])
			SystemNotice(character,"player3进入地图"..MapName[i].."成功")			
			GoTo(character,X[i],Y[i],MapName[i])
			SystemNotice(character,"进入地图"..MapName[i].."成功")				
			SystemNotice(character,"csk_teamid - 成功="..csk_teamid)
			--CaptainConfirm(character, csk_teamid )
			--CaptainConfirmAsk(p1, csk_teamid)
			--CaptainConfirmAsk(character, csk_teamid)
			--SystemNotice(character,"CaptainConfirm已经执行")	
			--SystemNotice(character,"CaptainConfirm == 1212121")	
		elseif 	Mapstate[i] == 1 then
			SystemNotice(character,"当前地图队伍存在=1")
			--local p2 = character
			local role_csk = CheckBagItem( character, 6066 )
			local csk = GetChaItem2 ( character , 2 , 6066 )
			local csk_teamid = GetItemAttr(csk,ITEMATTR_VAL_STR)			
			local MapID = MapName[i]
			--local MapFlagNum = 1
			--local Player_ID = GetPlayerID( character )
			UpdateMapAfterEnter(character , i)
			UpdateMapNum(csk_teamid ,i, 1 )				
			local player2 = GetTeamCha(character,0)
			GoTo(player2,X[i],Y[i],MapName[i])
			SystemNotice(character,"player2进入地图"..MapName[i].."成功")
			local player3 = GetTeamCha(character,1)
			GoTo(player3,X[i],Y[i],MapName[i])			
			SystemNotice(character,"player3进入地图"..MapName[i].."成功")
			GoTo(character,X[i],Y[i],MapName[i])
			SystemNotice(character,"character进入地图"..MapName[i].."成功")
			--SystemNotice(character,"csk_teamid - 成功="..csk_teamid)
			--CaptainConfirm(character, csk_teamid )
			--CaptainConfirmAsk(p1, csk_teamid)
			--CaptainConfirmAsk(character, csk_teamid)
			--SystemNotice(character,"CaptainConfirm已经执行")	
		--elseif	Mapstate[i] == 2 then
			--SystemNotice(character,"当前地图队伍存在=2，地图已满，进入地图失败")			
			--return
		elseif Mapstate[i] == 2 and i < 3 then
			local k = i + 1
			local role_csk = CheckBagItem( character, 6066 )
			local csk = GetChaItem2 ( character , 2 , 6066 )
			local csk_teamid = GetItemAttr(csk,ITEMATTR_VAL_STR)
			SystemNotice(character,"当前地图队伍存在=0")			
			UpdateMapAfterEnter(character , k)
			SystemNotice(character,"UpdateMapAfterEnter - 成功")
			UpdateMapNum(csk_teamid ,k, 0 )			
			SystemNotice(character,"i - 成功"..k)			
			local player2 = GetTeamCha(character,0)
			GoTo(player2,X[k],Y[k],MapName[k])
			SystemNotice(character,"player2进入地图"..MapName[k].."成功")	
			local player3 = GetTeamCha(character,1)	
			GoTo(player3,X[k],Y[k],MapName[k])
			SystemNotice(character,"player3进入地图"..MapName[k].."成功")			
			GoTo(character,X[k],Y[k],MapName[k])
			SystemNotice(character,"进入地图"..MapName[k].."成功")				
			SystemNotice(character,"csk_teamid - 成功="..csk_teamid)
			if Mapstate[k] == 1 then
				
				SystemNotice(character,"当前地图队伍存在=1")
				--local p2 = character
				local role_csk = CheckBagItem( character, 6066 )
				local csk = GetChaItem2 ( character , 2 , 6066 )
				local csk_teamid = GetItemAttr(csk,ITEMATTR_VAL_STR)			
				local MapID = MapName[k]
				--local MapFlagNum = 1
				--local Player_ID = GetPlayerID( character )
				UpdateMapAfterEnter(character , k)
				UpdateMapNum(csk_teamid ,k, 1 )				
				local player2 = GetTeamCha(character,0)
				GoTo(player2,X[k],Y[k],MapName[k])
				SystemNotice(character,"player2进入地图"..MapName[k].."成功")
				local player3 = GetTeamCha(character,1)
				GoTo(player3,X[k],Y[k],MapName[k])			
				SystemNotice(character,"player3进入地图"..MapName[k].."成功")
				GoTo(character,X[k],Y[k],MapName[k])
				SystemNotice(character,"character进入地图"..MapName[k].."成功")
			end
		end	
	end	
end	

--[   竞技场     判断当前角色是否已经在数据库中有注册信息   ]-- NpcSdk , MissionSdk注册 by - dean
function CheckIsAmphitheaterLogin(character)
	local ChaCanGo = IsAmphitheaterLogin(character)
	SystemNotice(character,"ChaCanGo1 == ")
	local player2 = GetTeamCha(character,0)
	
	local player3 = GetTeamCha(character,1)
	local ChaCanGo2 = IsAmphitheaterLogin(player2)
	SystemNotice(character,"ChaCanGo2 == ")
	local ChaCanGo3 = IsAmphitheaterLogin(player3)
	SystemNotice(character,"ChaCanGo3 == ")
	if ChaCanGo == 1 or ChaCanGo2 == 1 or ChaCanGo3 == 1 then
		SystemNotice(character,"您或您的队友已经参加了队伍注册，无法再次报名，请先解散之前的队伍")		
		return LUA_FALSE
	else
		SystemNotice(character,"Yes Yes YEs")
		return LUA_TRUE
	end
end
--[   竞技场     判断是否有效队伍   ]--	用于NPC脚本 检测传入地图队伍是否有效 NpcSdk , MissionSdk注册 by - dean
function CheckTeamCanGo(character) 
	local csk_num = CheckBagItem( character, 6066 )
	local csk = GetChaItem2 ( character , 2 , 6066 )
	local csk_teamid = GetItemAttr(csk,ITEMATTR_VAL_STR)
	local TeamPlayer1 = GetTeamCha(character,0)
	local TeamPlayer2 = GetTeamCha(character,1)
	local TeamPlayer3 = GetTeamCha(character,2)
	local TeamPlayer4 = GetTeamCha(character,3)	
	if csk_num ~= 1 then
		SystemNotice(character,"失败，没有参赛卡")
		return LUA_FALSE
	elseif TeamPlayer1 == nil or TeamPlayer2 == nil then
		SystemNotice(character,"失败，队伍成员不足")
		return LUA_FALSE
	elseif TeamPlayer3 ~= nil or TeamPlayer4 ~= nil then
		SystemNotice(character,"失败，队伍成员超出")
		return LUA_FALSE
	else
		CheckIsValidRegTeam = IsValidRegTeam(csk_teamid,character,TeamPlayer1,TeamPlayer2)
		if CheckIsValidRegTeam == 1 then
			SystemNotice(character,"恭喜！队伍信息与注册信息符合")
			return LUA_TRUE
		else
			SystemNotice(character,"失败，队伍信息与注册信息不符合")
			return LUA_FALSE
		end
	end
end

--[   竞技场   队伍解散  ]--	by - dean					  
function ArenaTeamCancel(character)
	local ValidTeam = IsValidTeam(character)		
	local csk_num = CheckBagItem( character, 6066 )	
	if csk_num ~= 1 then
		SystemNotice(character,"没有参赛卡，解散队伍失败")
		return LUA_FALSE
	end
	if ValidTeam == -1 then
		SystemNotice( character , "解散队伍失败，请确定您在队伍中并且是当前队伍的队长")
		return LUA_FALSE
	end
	if ValidTeam == -2 then
		SystemNotice( character , "解散队伍失败，请确定您在队伍中并且是当前队伍的队长")
		return LUA_FALSE
	end
	if ValidTeam == -3 then
		SystemNotice( character , "解散队伍失败，请确定您在队伍中并且是当前队伍的队长")
		return LUA_FALSE	
	elseif ValidTeam == 1 and csk_num ==1 then
			role_csk = GetChaItem2 ( character , 2 , 6066 )
			csk_teamid = GetItemAttr( role_csk , ITEMATTR_VAL_STR )
			--SystemNotice(character,"获取队伍编号成功")	
			AmphitheaterTeamCancel(csk_teamid)
			--SystemNotice(character,"解散队伍成功")	
			return LUA_TRUE		
	end	
end	

--[   竞技场   队伍注册  ]--   by - dean
function ArenaTeamSignUP(character)         --队长
	local retbag = HasLeaveBagGrid( character, 1)         --要求背包有1空位，不满足则失败
	if retbag ~= LUA_TRUE then
		SystemNotice(character,"背包空格少于1个无法获得参赛卡")
		return LUA_FALSE
	end	
		--SystemNotice (character,"背包数量满足要求")
	local teamid =  GetAmphitheaterNoUseTeamID()           --调取数据库中的空队伍编号
	local seasonid =  GetAmphitheaterSeason()
			--SystemNotice (character,"seasonid = "..seasonid)
	local roundid =  GetAmphitheaterRound()
			--SystemNotice (character,"roundid = "..roundid)
		--SystemNotice (character,"获取队伍编号成功")    
	local player1 = GetTeamCha( character , 0 )				--取得队伍中2号队员的信息
		--SystemNotice (character,"获取队员信息1号成功")
	local player2 = GetTeamCha( character , 1 )				--取得队伍中3号队员的信息
		--SystemNotice (character,"获取队员信息2号成功")
	AmphitheaterTeamSignUP(teamid,character,player1,player2)	--将队伍编号及队员信息注册入数据库
		--SystemNotice(character,"绑定队伍信息成功")
	local r1=0
	local r2=0
		r1,r2 =MakeItem ( character , 6066  , 1 , 4 )		--给予玩家参赛卡并获得道具指针
		--SystemNotice(character,"NPC给予道具成功")
	local csk_num = GetChaItem ( character , 2 , r2 )
		SetItemAttr(csk_num , ITEMATTR_VAL_STR , teamid)	--将队伍编号信息传入参赛卡
		SetItemAttr(csk_num , ITEMATTR_VAL_AGI , seasonid)	--将赛季信息传入参赛卡
		--SystemNotice(character,"添加season属性成功")
		SetItemAttr(csk_num , ITEMATTR_VAL_DEX , roundid)	--将轮次信息传入参赛卡
		--SystemNotice(character,"添加round属性成功")
		SynChaKitbag(character , 41)                             --背包道具即时刷新
		return LUA_TRUE			
end

------------竞技场报名[[ 判断角色是否组队、是否为队长、是否为师徒 ]]  by - dean
function CheckIsValidTeam(character) --     -1 不是队长, -2 队伍不是3个人, -3  不是师徒
	local Sing_Time = Can_Sign_Up()
	if Sing_Time ~= 1 then
		SystemNotice(character , "目前无法报名，报名时间为每赛季1日到7日")
		return LUA_FALSE
	else
		local ValidTeam = IsValidTeam(character)                 ---检测是否满足组队，师徒，队长条件的程序接口函数
			--SystemNotice(character , "当前值="..ValidTeam)
		local team_num_now = GetAmphitheaterTeamCount()          ---竞技场 [[  取当前赛季队伍个数 ]] 
			--SystemNotice( character , "当前队伍="..team_num_now)
		local csk_num = CheckBagItem( character, 6066 )	
		if csk_num ~= 0 then
			SystemNotice(character , "您已经有参赛卡了无法报名")
			return LUA_FALSE
		end	
		if ValidTeam == -1 then
			SystemNotice( character , "报名失败，请确定您在队伍中并且是当前队伍的队长")
			return LUA_FALSE
		end
		if ValidTeam == -2 then
			SystemNotice( character , "报名失败，请确定您当前的队伍人数为3人")
			return LUA_FALSE
		end
		if ValidTeam == -3 then
			SystemNotice( character , "报名失败，请确定您是2名队友的师傅")
			return LUA_FALSE
		end
		if team_num_now >= 64 then
			SystemNotice( character , "报名失败，参赛队伍已满")
			return LUA_FALSE
		end
		if ValidTeam == 1 and team_num_now < 64 then
			SystemNotice( character , "恭喜你，报名成功")		
			return LUA_TRUE
		end		
	end	
end

--[竞技场   队伍确认后的返回消息]--
function CaptainConfirm(character, teamID )
	--SystemNotice(character,"come CaptainConfirm ")
	--Notice("开始传送咯！！！！")
	
	local Team_Map_Name = GetChaMapName(character)
	
	if Team_Map_Name == "starena1" then
		local player1 = 0
		local player2 = 0
		player1, player2 = GetCaptainByMapId(1)
		local Cha_csk1 = GetChaItem2(player1, 2, 6066)
		local Cha_csk2 = GetChaItem2(player2, 2, 6066)
		local csk_teamid1 = GetItemAttr(Cha_csk1, ITEMATTR_VAL_STR)
		local csk_teamid2 = GetItemAttr(Cha_csk2, ITEMATTR_VAL_STR)
		local MapFlag1 = GetMapFlag(csk_teamid1)
		local MapFlag2 = GetMapFlag(csk_teamid2)
		local player3 = 0
		local player4 = 0
		local player5 = 0
		local player6 = 0
		player3 = GetTeamCha(player1, 0)
		player4 = GetTeamCha(player1, 1)
		player5 = GetTeamCha(player2, 0)
		player6 = GetTeamCha(player2, 1)
	--	SystemNotice(character,"Team_Map_Name == 44444")
		if MapFlag1 == 0 then
			--Notice("地图中取队伍MapFlag111111111111值")
			GoTo( player1,  44, 64,  "starena1" )
			GoTo( player2,  82, 64,  "starena1" )
			GoTo( player3,  44, 64,  "starena1" )
			GoTo( player4,  44, 64,  "starena1" )
			GoTo( player5,  82, 64,  "starena1" )
			GoTo( player6,  82, 64,  "starena1" )
		elseif MapFlag2 == 0 then
			--Notice("地图中取队伍MapFlag2222222222222值")
			GoTo( player1,  82, 64,  "starena1" )
			GoTo( player2,  44, 64,  "starena1" )
			GoTo( player3,  82, 64,  "starena1" )
			GoTo( player4,  82, 64,  "starena1" )
			GoTo( player5,  44, 64,  "starena1" )
			GoTo( player6,  44, 64,  "starena1" )
		end	
	elseif Team_Map_Name == "starena2" then
		local player1 = 0
		local player2 = 0
		player1, player2 = GetCaptainByMapId(2)
		local Cha_csk1 = GetChaItem2(player1, 2, 6066)
		local Cha_csk2 = GetChaItem2(player2, 2, 6066)
		local csk_teamid1 = GetItemAttr(Cha_csk1, ITEMATTR_VAL_STR)
		local csk_teamid2 = GetItemAttr(Cha_csk2, ITEMATTR_VAL_STR)
		local MapFlag1 = GetMapFlag(csk_teamid1)
		local MapFlag2 = GetMapFlag(csk_teamid2)
		local MapFlag2 = GetMapFlag(Team2_ID)
		local player3 = 0
		local player4 = 0
		local player5 = 0
		local player6 = 0
		player3 = GetTeamCha(player1, 0)
		player4 = GetTeamCha(player1, 1)
		player5 = GetTeamCha(player2, 0)
		player6 = GetTeamCha(player2, 1)
		if MapFlag1 == 0 then			
			GoTo( player1,  64, 36,  "starena2" )
			GoTo( player2,  64, 83,  "starena2" )
			GoTo( player3,  64, 36,  "starena2" )
			GoTo( player4,  64, 36,  "starena2" )
			GoTo( player5,  64, 83,  "starena2" )
			GoTo( player6,  64, 83,  "starena2" )
		elseif MapFlag2 == 0 then			
			GoTo( player1,  64, 83,  "starena2" )
			GoTo( player2,  64, 36,  "starena2" )
			GoTo( player3,  64, 83,  "starena2" )
			GoTo( player4,  64, 83,  "starena2" )
			GoTo( player5,  64, 36,  "starena2" )
			GoTo( player6,  64, 36,  "starena2" )
		end
	elseif Team_Map_Name == "starena3" then
		local player1 = 0
		local player2 = 0
		player1, player2 = GetCaptainByMapId(3)
		local Cha_csk1 = GetChaItem2(player1, 2, 6066)
		local Cha_csk2 = GetChaItem2(player2, 2, 6066)
		local csk_teamid1 = GetItemAttr(Cha_csk1, ITEMATTR_VAL_STR)
		local csk_teamid2 = GetItemAttr(Cha_csk2, ITEMATTR_VAL_STR)
		local MapFlag1 = GetMapFlag(csk_teamid1)
		local MapFlag2 = GetMapFlag(csk_teamid2)
		local player3 = 0
		local player4 = 0
		local player5 = 0
		local player6 = 0
		player3 = GetTeamCha(player1, 0)
		player4 = GetTeamCha(player1, 1)
		player5 = GetTeamCha(player2, 0)
		player6 = GetTeamCha(player2, 1)
		if MapFlag1 == 0 then			
			GoTo( player1,  48, 63,  "starena3" )
			GoTo( player2,  81, 63,  "starena3" )
			GoTo( player3,  48, 63,  "starena3" )
			GoTo( player4,  48, 63,  "starena3" )
			GoTo( player5,  81, 63,  "starena3" )
			GoTo( player6,  81, 63,  "starena3" )
		elseif MapFlag2 == 0 then			
			GoTo( player1,  81, 63,  "starena3" )
			GoTo( player2,  48, 63,  "starena3" )
			GoTo( player3,  81, 63,  "starena3" )
			GoTo( player4,  81, 63,  "starena3" )
			GoTo( player5,  48, 63,  "starena3" )
			GoTo( player6,  48, 63,  "starena3" )
		end	
	end
end

--竞技场 判断当前角色所在队伍是否满足条件进入比赛地图
function CheckStateNumCanGo(character)
	local csk = CheckBagItem( character, 6066 )
	if csk == 0 then
	SystemNotice(character , "没有参赛卡，无法进入比赛地图")
		return LUA_FALSE
	else	
		local Csk_num = GetChaItem2(character ,2 ,6066)
		local teamid = GetItemAttr(Csk_num,ITEMATTR_VAL_STR)
		--SystemNotice(character,"teamid = "..teamid)
		local GetStateNum = GetStateByTeamid(teamid)
		--SystemNotice(character,"GetStateNum = "..GetStateNum)
		if GetStateNum == 1 then
			--SystemNotice(character , "OKOKOKOKOKOK")
			return LUA_TRUE
		else 
			--SystemNotice(character , "no..............")
			return LUA_FALSE
		end	
	end
end
--取竞技场单赛季冠军
function GetWinnerOfArena(character)
	
	local winnerid = GetUniqueMaxWinnum()
	local csk = CheckBagItem(character ,6066 )
	if csk ~= 1 then 
		return LUA_FALSE
	else
		local role_csk = GetChaItem2 ( character , 2 , 6066 )
		local csk_teamid = GetItemAttr( role_csk , ITEMATTR_VAL_STR )
		if csk_teamid == winnerid then
		SystemNotice(character , "恭喜恭喜，你是真正的冠军队伍")
			return LUA_TRUE
		else
			SystemNotice(character , "别想混水摸鱼，你可不是冠军")
			return LUA_FALSE
		end	
	end		
end

function ChargeMapETC(role)
	local map_role = GetChaMapName ( role )
	local map_role_e={}
	map_role_e[1] = "garner" 
	map_role_e[2] = "magicsea"
	map_role_e[3] = "darkblue"
	map_role_e[4] = "eastgoaf"
	map_role_e[5] = "lonetower"
	map_role_e[6] = "secretgarden"
	map_role_e[7] = "darkswamp"
	map_role_e[8] = "abandonedcity"
	map_role_e[9] = "abandonedcity2"
	map_role_e[10] = "abandonedcity3"
	map_role_e[11] = "puzzleworld"
	map_role_e[12] = "puzzleworld2"
	map_role_e[13] = "teampk"
	map_role_e[14] = "jialebi"
	map_role_e[15] = "garner2"
	map_role_e[16] = "hell"
	map_role_e[17] = "hell2"
	map_role_e[18] = "hell3"
	map_role_e[19] = "hell4"
	map_role_e[20] = "hell5"
	map_role_e[21] = "guildwar"
	map_role_e[22] = "leiting2" 
	map_role_e[23] = "shalan2"
	map_role_e[24] = "binglang2" 
	map_role_e[25] = "guildwar2"
	map_role_e[26] = "yschurch"
	map_role_e[27] = "07xmas"
	map_role_e[28] = "sdBoss"
	map_role_e[29] = "07xmas2"
	map_role_e[30] = "prisonisland"
	map_role_e[31] = "starena1" 
	map_role_e[32] = "starena2" 
	map_role_e[33] = "starena3" 
	map_role_e[34] = "winterland"
	map_role_e[35] = "mjing1"
	map_role_e[36] = "mjing2"
	map_role_e[37] = "mjing3"
	map_role_e[38] = "mjing4"
	map_role_e[39] = "mingyun"
	local map_role_name={}
	map_role_name[1] = "加纳大陆"
	map_role_name[2] = "魔女海岸"
	map_role_name[3] = "深蓝群岛"
	map_role_name[4] = "东部废矿"
	map_role_name[5] = "寂寞之塔"	
	map_role_name[6] = "竞技花园"
	map_role_name[7] = "阴暗沼泽"
	map_role_name[8] = "废灵之都"
	map_role_name[9] = "废灵之都二层"
	map_role_name[10] = "废灵之都三层"
	map_role_name[11] = "魔方世界"
	map_role_name[12] = "魔方世界二层"
	map_role_name[13] = "竞技场"
	map_role_name[14] = "加勒比"	
	map_role_name[15] = "乱斗白银城"
	map_role_name[16] = "地狱一层"
	map_role_name[17] = "地狱二层"
	map_role_name[18] = "地狱三层"
	map_role_name[19] = "地狱四层"
	map_role_name[20] = "地狱五层"
	map_role_name[21] = "圣战"
	map_role_name[22] = "幻影雷霆"
	map_role_name[23] = "幻影沙岚"
	map_role_name[24] = "幻影冰狼"
	map_role_name[25] = "小圣战"
	map_role_name[26] = "伊式教堂" 
	map_role_name[27] = "圣诞村"
	map_role_name[28] = "圣诞竞技场"
	map_role_name[29] = "逆反圣诞村"	
	map_role_name[30] = "监狱岛"
	map_role_name[31] = "一号竞技场"
	map_role_name[32] = "二号竞技场"	
	map_role_name[33] = "三号竞技场"
	map_role_name[34] = "冬岛群岛"
	map_role_name[35] = "光明秘境第一境界"
	map_role_name[36] = "光明秘境第二境界"
	map_role_name[37] = "暗黑秘境第一境界"
	map_role_name[38] = "暗黑秘境第二境界"
	map_role_name[39] = "命运房间"
	local i=0	
	for i=1,39,1 do
		if	map_role==map_role_e[i] then
			map_role=map_role_name[i]
			return map_role
		end
	end
end 


function IsWaBao(role)
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local ZBNType= math.floor(ZBMain/10)      ---第几次占卜
	local ZBNMain= math.mod(ZBMain,10 )			---BUFF OR DEBUFF
	local ZBday = GetChaAttr(role,ATTR_EXTEND2)		--占卜天数
	local ZBstate=GetChaAttr(role, ATTR_EXTEND1)	--
	local ZBstate1=math.floor(ZBstate/10)			--占卜效果注册
	local ZBstate2=math.mod(ZBstate,10)				--占卜类型
	local now_day=os.date("%d")
	now_day=tonumber(now_day)
	if now_day==ZBday and ZBstate2==3 and ZBNMain==0 then 
		return 1
	else
		return 0
	end
end 
function XingZuoKaTX(role,now_tick)
	local i=1
	local state=239
	local item_XZK = GetChaItem(role , 2, 3)
	local Item_Id = GetItemID ( item_XZK )
	local ID =0
	for i=1,12,1 do
		ID =5881+i
		if Item_Id==ID then
			AddState(role,role,state+i,1,6)			
			return
		end
	end	
end
function IsGiveXZItem(role)
	local NeedId=HasXingZuoKa(role)
	local needItemName=GetItemName ( NeedId )
	local haveXingZuoka=CheckBagItem(role,NeedId)
	if haveXingZuoka == 0 then 
		SystemNotice(role,"今天领取星座奖励请准备好 "..needItemName.." 。")
		return LUA_FALSE
	end
	local ItemCha=GetChaItem2(role,2,NeedId)
	local IsGet=GetItemAttr( ItemCha , ITEMATTR_VAL_AGI  )
	if IsGet==1 then
		SystemNotice(role,"你已经领取了星座奖励！")
		return LUA_FALSE
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 7 then
		SystemNotice(role ,"领取奖励背包里至少需要有6个空位")
		return LUA_FALSE
	end
	return LUA_TRUE
end	
function GiveXZItem(role)
	local NeedId=HasXingZuoKa(role)
	local ItemCha=GetChaItem2(role,2,NeedId)
	GiveItem(role,0,2440,10,4)
	GiveItem(role,0,5609,10,4)
	GiveItem(role,0,227,10,4)
	GiveItem(role,0,5638,10,4)
	GiveItem(role,0,5617,10,4)
	GiveItem(role,0,3077,10,4)
	SetItemAttr( ItemCha , ITEMATTR_VAL_AGI ,1 )
	return LUA_TRUE
end
function HasXingZuoKa(role)
	local ID =5881+XingZuoXt()
	return ID	
end
function XingZuo(datexz)
	local i=0
	for i=1,11,1 do
		if datexz>=xingZuoTime[i] and datexz<xingZuoTime[i+1] then
			return i
		end
	end
	return 12
end
function XingZuoXt()
	local month=tonumber(os.date("%m"))
	local day=tonumber(os.date("%d"))
	local datexz=month*100+day
	return XingZuo(datexz)
end
function JTNeedXZ()
	local week=tonumber(os.date("%w"))
	if week==1 then
		return 3,4
	elseif	week==2 then
		return 1,5
	elseif	week==3 then
		return 2,6
	elseif	week==4 then
		return 7,11
	elseif	week==5 then
		return 8,9
	elseif	week==6 then
		return 10,12
	elseif	week==0 then
		return 0,0
	end		
end
function InXZJT(role)
	local hour=tonumber(os.date("%H"))
	if hour~=19 then
		SystemNotice(role,"请于每天19：00--20：00来参加活动")
		return LUA_FALSE
	end
	local a,b=JTNeedXZ()
	local needId1=5881+a
	local needId2=5881+b
	local hasNeedXZK=0
	if needId1==5881 and needId2==5881 then
		local i=0
		for i=1,12,1 do 
			needId1=needId1+i
			hasNeedXZK=CheckBagItem(role,needId1)
			if hasNeedXZK==1 then
				return LUA_TRUE
			end
		end
		SystemNotice(role,"请确认你拥有一张有星座的卡片")
		return LUA_FALSE
	end
	local j=0
	for j= 1,6,1 do
		hasNeedXZK=hasNeedXZK+CheckBagItem(role,needId1)
		hasNeedXZK=hasNeedXZK+CheckBagItem(role,needId2)
		if hasNeedXZK~=0 then
			return 1
		end
	end
	local needItemName1=GetItemName ( needId1 )
	local needItemName2=GetItemName ( needId2)
	SystemNotice(role,"请确认你拥有一张 "..needItemName1.." 或者"..needItemName2.." 。")
	return LUA_FALSE
end

--==============================新手经验存储瓶
--=========新手经验瓶存储
function XSJYCunChu(role,expnum)
	local item_XSJYCunChu = GetChaItem(role , 2, 4)
	local Item_Id = GetItemID ( item_XSJYCunChu )
	if item_XSJYCunChu==nil or Item_Id~=5895 then
		return
	end
	local expnumLow=GetItemAttr( item_XSJYCunChu , ITEMATTR_VAL_AGI  )
	local expnumHigh=GetItemAttr( item_XSJYCunChu , ITEMATTR_VAL_STR  )
	expnumLow=math.mod(expnum,1000)+expnumLow
	expnumHigh=math.floor(expnum/1000)+expnumHigh+math.floor(expnumLow/1000)
	expnumLow=math.mod(expnumLow,1000)
	expnum=expnumHigh*1000+expnumLow
	if expnum>100000 then
		expnumHigh=100
		expnumLow=0
	end
	SetItemAttr( item_XSJYCunChu , ITEMATTR_VAL_AGI , expnumLow )
	SetItemAttr( item_XSJYCunChu , ITEMATTR_VAL_STR , expnumHigh )
end --========================释放经验
function XSJYShiFang(role,Item)
	local expnumLow=GetItemAttr( Item , ITEMATTR_VAL_AGI  )
	local expnumHigh=GetItemAttr( Item , ITEMATTR_VAL_STR  )
	expnum=expnumHigh*1000+expnumLow
	if expnum ==0 then
		SystemNotice(role,"新手经验存储瓶中经验为0，不能开启")
		return expnum
	end
	AddExpAll(role,expnum,expnum,1)
	SystemNotice(role,"已增加经验值"..expnum.."新手经验存储瓶中经验清0")
	SetItemAttr( Item , ITEMATTR_VAL_AGI , 0 )
	SetItemAttr( Item , ITEMATTR_VAL_STR , 0 )
end 
function XSJYPeiYangPing(role,now_tick)
	if math.mod(now_tick, 600) == 0 and now_tick > 0 then
		local ItemXSJYCCP=GetChaItem2 ( role , 2 , 5897 )
		if ItemXSJYCCP==nil then
			return
		end
		ReduseXSJYCCP(ItemXSJYCCP)
	end	
end
function ReduseXSJYCCP(Item)
	local IsOpen=GetItemAttr( Item , ITEMATTR_VAL_AGI  )
	if IsOpen==60 then
		SystemNotice(role,"新手经验培养瓶已满，请打开获取经验")
		return
	end
	IsOpen=IsOpen+1
	SetItemAttr( Item , ITEMATTR_VAL_AGI ,IsOpen )
end 
function YBHS(role)
	local a=math.random(1,100)
	if a>0 and a<=30 then
		GiveItem ( role	, 0 ,1038,1, 4 )
			return LUA_TRUE
	elseif a>30 and a<=40 then
		GiveItem ( role	, 0 ,1037,1, 4 )
			return LUA_TRUE
	elseif a>40 and a<=50 then
		GiveItem ( role	, 0 ,1039,1, 4 )
			return LUA_TRUE
	elseif a>50 and a<=60 then
		GiveItem ( role	, 0 ,1129,1, 4 )
			return LUA_TRUE
	elseif a>60 and a<=70 then
		GiveItem ( role	, 0 ,1130,1, 4 )
			return LUA_TRUE
	elseif a>70 and a<=80 then
		GiveItem ( role	, 0 ,1131,1, 4 )
			return LUA_TRUE
	elseif a>80 and a<=90 then
		GiveItem ( role	, 0 ,1132,1, 4 )	
			return LUA_TRUE
	elseif a>90 and a<=100 then
		GiveItem ( role	, 0 ,1133,1, 4 )
			return LUA_TRUE
	end
	return LUA_FALSE
	
end

function HasBag(role,num,Item)
	local bagNum=GetChaFreeBagGridNum(role)
	local itemId=GetItemID ( Item )
	local itemName=GetItemName ( itemId ) 
	if bagNum<num then 
		SystemNotice(role,"开启 "..itemName.." 需要 "..num.." 格的剩余背包空间")
		return 0
	else
		return 1
	end
end

function Ismm(role)
	local roleType=GetChaTypeID(role)
	if roleType<3 then
		return LUA_FALSE
	else
		return LUA_TRUE
	end	
end 
function HasYiZuHua(role)
	local has99Hua = CheckBagItem (role,6381)
	if has99Hua< 99 then 
		return LUA_FALSE
	else
		return LUA_TRUE
	end
end
function RemoveHua(role,type)
		local huaNum=CheckBagItem (role,6381)
		local num=math.floor(huaNum/99)
		if type==1 then
			num=1
		end
		RemoveChaItem(role,6381,num*99,0,-1,2,1)
		GiveHuaCu(role,num)
	return LUA_TRUE
end
function GiveHuaCu(role,num)
	GiveItem(role,0,6382,num,4)
end
function GiveItemNew(role,id,num,qua)
	
	GiveItem(role,0,id,num,qua)
end
function GiveMGHZ(role,PTa,DYb,GGc)
	local male=Ismm(role)
	if male==1 then 
		return	LUA_TRUE
	end
	local PTa1,DYb1,GGc1=GetMGHZAttr(role)
	PTa=PTa+PTa1
	DYb=DYb+DYb1
	GGc=GGc+GGc1
	SetMGHZAttr(role,PTa,DYb,GGc)
	local needBag=NeedMGHZBag(role)
	local bagNum=GetChaFreeBagGridNum(role)
	if bagNum<needBag then
		SystemNotice(role,"因为背包内空格少于 "..needBag.." ，升级给予玫瑰盒子失败。系统将会在角色上线之后的每十分钟给予一次，请注意留好背包栏")
		return	LUA_TRUE
	else 
		if PTa~=0 then 
			GiveItem(role,0,6383,PTa,4)
		end 
		if DYb~=0 then 
			GiveItem(role,0,6384,DYb,4)
		end 
		if GGc~=0 then 
			GiveItem(role,0,6385,GGc,4)
		end 
		SystemNotice(role,"已给予升级奖励的玫瑰盒子，快送给你心爱的她吧。")
		SetMGHZAttr(role,0,0,0)
		return	LUA_TRUE
	end
end		
function SetMGHZAttr(role,PTa,DYb,GGc)
	local attr=PTa*238+GGc*34+DYb
	SetChaAttr(role,ATTR_EXTEND8,attr)
end 
function GetMGHZAttr(role)
	local attr=GetChaAttr(role,ATTR_EXTEND8)
	local PTa=math.floor(attr/238)
	local DYbGGc=math.mod(attr,238)
	local GGc=math.floor(DYbGGc/34)
	local DYb=math.mod(DYbGGc,34)
	return PTa,DYb,GGc
end 
function NeedMGHZBag(role)
	local a={}
	a[1],a[2],a[3]=GetMGHZAttr(role)
	local b=0
	local i=0
	for i=1,3,1 do
		if a[i]~=0 then
			b=b+1
		end
	end
	return b
end

function NeedMGHZBag(role)
	local a={}
	a[1],a[2],a[3]=GetMGHZAttr(role)
	local b=0
	local i=0
	for i=1,3,1 do
		if a[i]~=0 then
			b=b+1
		end
	end
	return b
end

function TGiveMGHZ(role,now_tick)
	if math.mod(now_tick,600)==0 and now_tick>0 then
		local male=Ismm(role)
		local P=GetChaAttr(role,ATTR_EXTEND8)
		if male==1 or P==0 then 
			return 
		end
		local PTa1,DYb1,GGc1=GetMGHZAttr(role)
		local needBag=NeedMGHZBag(role)
		local bagNum=GetChaFreeBagGridNum(role)
		if bagNum<needBag then
			SystemNotice(role,"因为背包内空格少于 "..needBag.." ，给予玫瑰盒子失败。系统将会在角色上线之后的每十分钟给予一次，请注意留好背包栏")
		else 
			if PTa1~=0 then 
				GiveItem(role,0,6383,PTa1,4)
			end 
			if DYb1~=0 then 
				GiveItem(role,0,6384,DYb1,4)
			end 
			if GGc1~=0 then 
				GiveItem(role,0,6385,GGc1,4)
			end 
			SetMGHZAttr(role,0,0,0)
			SystemNotice(role,"已给予升级奖励的玫瑰盒子，快送给你心爱的她吧。")
			return
		end
	end
end	
function MGHZKouTime(role,now_tick)
	local i=0
	for i=1,3,1 do 
		local chaMGHZ=GetChaItem2(role,2,6382+i)
		local itemName=GetItemName ( 6382+i ) 
			
		if chaMGHZ~=nil then 
			local MGHZTime=GetItemAttr(chaMGHZ,ITEMATTR_VAL_STR)
			if math.mod ((120-MGHZTime),24)==0 and MGHZTime<120 then
				local daoJiShi=(120-MGHZTime)/12
				SystemNotice(role,itemName.."将于"..daoJiShi.." 分钟之后消失. ")
			end
			if MGHZTime==108 then
				SystemNotice(role,itemName.."将于 1 分钟之后消失. ")
			end 
			if MGHZTime==114 then
				SystemNotice(role,itemName.."将于 30 秒之后消失. ")
			end
			if MGHZTime==116 then
				SystemNotice(role,itemName.."将于 20 秒之后消失. ")
			end
			if MGHZTime==118 then
				SystemNotice(role,itemName.."将于 10 秒之后消失. ")
			end
			if MGHZTime==119 then
				SystemNotice(role,itemName.."将于 5 秒之后消失. ")
			end
			if MGHZTime==120 then
				SystemNotice(role,itemName.."消失. ")
			end 	
			MGHZTime=MGHZTime+1
			if MGHZTime>120 then 
				RemoveChaItem(role,6382+i,99,0,-1,2,1)
				return
			end
			SetItemAttr(chaMGHZ,ITEMATTR_VAL_STR,MGHZTime)
		end
	end
end
function TakeAndGiveItem(role,Item1,num1,Item2,num2)
		RemoveChaItem(role,Item1,num1,0,-1,2,1)
		GiveItemAfterTake(role,Item2,num2)
	return LUA_TRUE
end
function GiveItemAfterTake(role,Item2,num2)
	GiveItem(role,0,Item2,num2,4)
end
function XZKHDJianLiN(role)
	local name = GetChaDefaultName(role)
	ScrollNotice("恭喜玩家 "..name.." 完成星座任务，获得极品星座项链——彩虹祝福一根。我代表天界众星把最好的祝福送给您！",1)
	return	LUA_TRUE
end

function XingZuoKaHuoDong(role,itemXZKID,type)
	local itemXZK = GetChaItem2 ( role , 2 , itemXZKID )
	local hasGet5000 = GetItemAttr( itemXZK ,ITEMATTR_VAL_STA )
	if type==1 then 
		if hasGet5000== 0 then 
			return	LUA_TRUE
		else 
			return	LUA_FALSE
		end
	end
	if type==2 then
		if hasGet5000== 1 then 
			return	LUA_TRUE
		else 
			return	LUA_FALSE
		end
	end
end
function XZKHDBuZhou(role)
	local i= 0
	for i=1,12,1 do	
		local hasItem=CheckBagItem(role,5881+i)
		if hasItem==1 then 
			local itemXZK = GetChaItem2 ( role , 2 , 5881+i )
			local hasGet5000 = GetItemAttr( itemXZK ,ITEMATTR_VAL_STA )
			if hasGet5000==0 then 
				SetItemAttr( itemXZK ,ITEMATTR_VAL_STA,1 ) 
				return	LUA_TRUE
			elseif hasGet5000==1	then
				SetItemAttr( itemXZK ,ITEMATTR_VAL_STA,0 ) 
				return	LUA_TRUE
			end
		end
	end
	return	LUA_FALSE
end
function Zhuanzts ( role,npc  )
	PlayEffect( npc, 944 )
end
function GetAndSetWaWa(role,num)
	local i=GetChaFreeBagGridNum(role)
	if i==0 then 
		SystemNotice(role,"背包没有空间，不给予诅咒娃娃。")
		return	
	end
	GiveItem(role,0,6377,1,4)
	local item=GetChaItem2(role,2,6377)
	SetWaWaAttr(item, num,0)
end 
function KouWaWa (role,now_tick)
	local item=GetChaItem2(role,2,6377)
	if item==nil then 
		return
	end
	local wawatype=0
	local wawaTime=0
	 wawatype,wawaTime=GetWaWaAttr(item)
	if wawaTime==120 then 
		RemoveChaItem(role,6377,1,0,-1,2,1)
		return
	end
	
	if  wawaTime==72 or wawaTime==96 or  wawaTime==108 then 
		SystemNotice(role,"诅咒娃娃将于 "..((120-wawaTime)/12).." 分钟后消失。")
	end
	wawaTime=wawaTime+1
	SetWaWaAttr(item,wawatype,wawaTime)
end
function SetWaWaAttr(item,num1,num2)
	local num=num1*121+num2
	SetItemAttr(item, ITEMATTR_VAL_STR,num)
end 
function GetWaWaAttr(item)
	local num=GetItemAttr(item, ITEMATTR_VAL_STR)
	local num1=math.floor(num/121)
	local num2=math.mod(num,121)
	return num1,num2
end
function NSDXIsFull(role)
	local role_NSDX = GetChaItem2 ( ATKER , 2 , 3010)
	local Energy_NSDX = GetItemAttr ( role_NSDX , ITEMATTR_ENERGY )
	if Energy_NSDX ==999 then
		return LUA_TRUE
	end
	return LUA_FALSE
end
function GetChaPerHp(role)
	local hp= GetChaAttr (role , ATTR_HP)
	local mxhp=GetChaAttr (role , ATTR_MXHP)
	return hp/mxhp
end 
function GetChaPerSp(role)
	local sp= GetChaAttr (role , ATTR_SP)
	local mxsp=GetChaAttr (role , ATTR_MXSP)
	return sp/mxsp
end 
function SetChaPerSp(role,per)
	local mxsp=GetChaAttr (role , ATTR_MXSP)
	sp=math.floor(mxsp*per)
	SetChaAttr (role , ATTR_SP,sp)
end 
function SetChaPerHp(role,per)
	local mxhp=GetChaAttr (role , ATTR_MXHP)
	hp=math.floor(mxhp*per)
	SetChaAttr (role , ATTR_HP,hp)
end 
function ZBStateTime(role)     
	local now_hour= os.date("%H")		-------------时          
	local now_miniute= os.date("%M")	-------------分          
	local now_scend=  os.date("%S")		-------------秒   
	now_hour= tonumber(now_hour)		-------------时  
	now_miniute= tonumber(now_miniute)	 -------------分  
	now_scend= tonumber(now_scend)	-------------秒 
	local zbStateTime= 24*3600-(now_hour*3600+now_miniute*60+now_scend)
	return zbStateTime
end 
function ZBNSDstate(role,now_tick)-------------女神盾
	local now_day=os.date("%d")
	now_day=tonumber(now_day)
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local statelv_ZBMAXHP = GetChaStateLv ( role , STATE_ZBMAXHP )
	local Have_Item = CheckBagItem (role,6376)
	if Have_Item == 1 then 
		haveNSD = 1
		local nvshendun=GetChaItem2(role ,2 ,6376) 
		local NSDDay = GetItemAttr(nvshendun,ITEMATTR_VAL_AGI)
		local dunTime = GetItemAttr(nvshendun,ITEMATTR_VAL_CON)
		if dunTime == 0 or NSDDay ~= now_day  then 
			RemoveChaItem ( role , 6376 , 1 , 0 , -1, 2 , 1  )
			haveNSD=0
			SetChaAttr(role,ATTR_EXTEND0,-2)
			return
		end
		local sklv = 1
		local statetime = ZBStateTime(role) 
		if statelv_ZBMAXHP == 0 then
			AddState ( role , role , STATE_ZBMAXHP , sklv , statetime )	
		end
		if math.mod(now_tick, 900) == 0 and now_tick>0 then
			local name = GetChaDefaultName(role)
			ScrollNotice(name.." 在占卜时受到了女神的眷顾，被赐予了守护之神器——女神祝福之盾，大家鼓掌=v= ", 1 )
		end
		if math.mod(now_tick, 30) == 0 and now_tick>0 then
			dunTime=dunTime-1
			SetItemAttr(nvshendun,ITEMATTR_VAL_CON,dunTime)
			return
		end
	else
		if statelv_ZBMAXHP ~=0 then
			RemoveState ( role , STATE_ZBMAXHP ) 
		end
		if ZBMain==-1 then 
			haveNSD=0
			SetChaAttr(role,ATTR_EXTEND0,-2)
		end
	end
end
function ZBbuffState(role,now_tick)
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local ZBNType= math.floor(ZBMain/10)      ---第几次占卜
	local ZBNMain= math.mod(ZBMain,10 )			---BUFF OR DEBUFF
	local ZBday = GetChaAttr(role,ATTR_EXTEND2)		--占卜天数
	local ZBstate=GetChaAttr(role, ATTR_EXTEND1)	--
	local ZBstate1=math.floor(ZBstate/10)			--占卜效果注册
	local ZBstate2=math.mod(ZBstate,10)				--占卜类型
	local now_day=os.date("%d")
	now_day=tonumber(now_day)
	local ZBStateLV={}
	ZBStateLV[0]={}
	ZBStateLV[0][0]=0
	ZBStateLV[1] = {}
	ZBStateLV[1][1] = 2												
	ZBStateLV[1][2] = 4												
	ZBStateLV[1][3] = 6												
	ZBStateLV[1][4] = 8												
	ZBStateLV[1][5] = 10											
	ZBStateLV[2] = {}
	ZBStateLV[2][1] = 10								
	ZBStateLV[2][2] = 8												
	ZBStateLV[2][3] = 6												
	ZBStateLV[2][4] = 4												
	ZBStateLV[2][5] = 2
	ZBStateLV[3] = {}
	ZBStateLV[3][1] = 1								
	ZBStateLV[3][2] = 1												
	ZBStateLV[3][3] = 1												
	ZBStateLV[3][4] = 1												
	ZBStateLV[3][5] = 1
	ZBStateLV[4] = {}
	ZBStateLV[4][1] = 10								
	ZBStateLV[4][2] = 8												
	ZBStateLV[4][3] = 6												
	ZBStateLV[4][4] = 4
	ZBStateLV[4][5] = 2									
	ZBStateLV[5] = {}
	ZBStateLV[5][1] = 1								
	ZBStateLV[5][2] = 2												
	ZBStateLV[5][3] = 3												
	ZBStateLV[5][4] = 4												
	ZBStateLV[5][5] = 4		
	ZBStateLV[6] = {}
	ZBStateLV[6][1] = 2
	ZBStateLV[6][2] = 4									
	ZBStateLV[6][3] = 6												
	ZBStateLV[6][4] = 8												
	ZBStateLV[6][5] = 8
	local statelv_ZBMOVE= GetChaStateLv ( role , STATE_ZBMOVE )
	local statelv_ZBHP = GetChaStateLv ( role , STATE_ZBHP )
	local statelv_ZBSP = GetChaStateLv ( role , STATE_ZBSP )
	local statetime=ZBStateTime(role) 
	if ZBstate2<=6 and ZBstate2>=0 and ZBstate1>=1 and ZBstate1<=5 then 
		if ZBstate2==4 and ZBNMain== 0 and now_day==ZBday and statelv_ZBMOVE~= ZBStateLV[ZBstate2][ZBstate1]  and ZBStateLV[ZBstate2][ZBstate1]>0 then
			AddState(role,role,STATE_ZBMOVE,ZBStateLV[ZBstate2][ZBstate1],statetime)
		elseif statelv_ZBMOVE~= ZBStateLV[ZBstate2][ZBstate1] and statelv_ZBMOVE~= 0 then
			RemoveState ( role , STATE_ZBMOVE )
		end
		if ZBstate2==5 and ZBNMain== 0 and now_day==ZBday and statelv_ZBHP~= ZBStateLV[ZBstate2][ZBstate1] then
			AddState(role,role,STATE_ZBHP,ZBStateLV[ZBstate2][ZBstate1],statetime)
		elseif statelv_ZBHP~= ZBStateLV[ZBstate2][ZBstate1] and statelv_ZBHP~= 0 then
			RemoveState ( role , STATE_ZBHP )
		end
		if ZBstate2==6 and ZBNMain== 0 and now_day==ZBday and statelv_ZBSP~= ZBStateLV[ZBstate2][ZBstate1] then
			AddState(role,role,STATE_ZBSP,ZBStateLV[ZBstate2][ZBstate1],statetime)
		elseif statelv_ZBSP~= ZBStateLV[ZBstate2][ZBstate1] and statelv_ZBSP~= 0 then
			RemoveState ( role , STATE_ZBSP )
		end
	end
	if ZBday~=now_day and ZBMain~=0 then
		if ZBstate2==4 and ZBNMain== 0 then
			if statelv_ZBMAXHP ~=0 then
				RemoveState ( role , STATE_ZBMOVE ) 
			end
		end
		if ZBstate2==5 and ZBNMain== 0 then
			if statelv_ZBMAXHP ~=0 then
				RemoveState ( role , STATE_ZBHP ) 
			end
		end
		if ZBstate2==6 and ZBNMain== 0 then
			if statelv_ZBMAXHP ~=0 then
				RemoveState ( role , STATE_ZBSP ) 
			end
		end	
		SetChaAttr(role,ATTR_EXTEND0,0)
		SetChaAttr(role, ATTR_EXTEND1,0)
		SetChaAttr(role, ATTR_EXTEND2,0)
		return
	end
end
function ZBDebuffStateRS(role,now_tick)
	local statelv_STATE_GANMAO= GetChaStateLv ( role , STATE_GANMAO )
	if ZBstate==1 and ZBNMain==1 and statelv_STATE_GANMAO ==0then 
		AddState ( role , role , STATE_GANMAO , 1 , 1800 )	
	end
end
function ZBDebuffState(role,now_tick)
	if math.mod(now_tick, 30) == 0 and now_tick>0 then
		local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
		local ZBNType= math.floor(ZBMain/10)      ---第几次占卜
		local ZBNMain= math.mod(ZBMain,10 )			---BUFF OR DEBUFF
		local ZBday = GetChaAttr(role,ATTR_EXTEND2)		--占卜天数
		local ZBstate=GetChaAttr(role, ATTR_EXTEND1)	--
		local ZBstate1=math.floor(ZBstate/10)			--占卜效果注册
		local ZBstate2=math.mod(ZBstate,10)				--占卜类型
		local now_day=os.date("%d")
		now_day=tonumber(now_day)
		local IsDeb=1
		local DebTime = GetChaAttr( role , ATTR_EXTEND7)
		IsDeb = math.mod ( DebTime ,60)
		if DebTime>=0 then 
			DebTime=DebTime-1
		end
		SetChaAttr( role , ATTR_EXTEND7,DebTime)
		if DebTime<=2820 and ZBstate2==2 and ZBstate1~=0  and ZBNMain== 0 then
			local abc=ZBNType*10+3
			SetChaAttr(role, ATTR_EXTEND0,abc)
		end
		if IsDeb==0 and ZBstate2==0 and ZBstate1 ~=0 and ZBNMain== 0 then
			GiveItemX(role,0,6374,1,4)
		end
		if IsDeb==0 and ZBNMain==1 then
			SetChaAttr(role, ATTR_EXTEND1,0)
			local statelv_STATE_GANMAO= GetChaStateLv ( role , STATE_GANMAO )
			if statelv_STATE_GANMAO ~=0 then
				RemoveState ( role , STATE_GANMAO ) 
			end
			local	ZBStateDEBGL={}
			ZBStateDEBGL[1] = 5									--炎热
			ZBStateDEBGL[2] = 10									-- 过敏
			ZBStateDEBGL[3] = 15									-- 仙人脚
			ZBStateDEBGL[4] = 18									-- 旋风
			ZBStateDEBGL[5] = 21									-- 冰冻
			ZBStateDEBGL[6] = 23									-- 雷劈
			ZBStateDEBGL[7] = 24		-- 粹死
			-- ZBStateDEBGL[8] = 26			--情人卡
			local RDa=math.random(1,24)
			SystemNotice(role,"占卜诅咒效果发动！！")
			local roleHp=GetChaAttr(role,ATTR_HP)
			if roleHp<1 then 
				return
			end 
			if RDa<=ZBStateDEBGL[1] then 
				AddState ( role , role , STATE_GANMAO , 1 , 30 )
				SystemNotice(role,"你闻到一股烤肉的香味。")
				GetAndSetWaWa(role,1)
				SetChaAttr(role, ATTR_EXTEND1,1)
				return
			end	
			if RDa<=ZBStateDEBGL[2] and RDa > ZBStateDEBGL[1] then 
				SystemNotice(role,"您感到皮肤过敏全身发痒！")
					AddState ( role , role , STATE_LST , 1 ,30 )
				GetAndSetWaWa(role,2)
				SetChaAttr(role, ATTR_EXTEND1,2)
				return
			end	
			if RDa<=ZBStateDEBGL[3] and RDa > ZBStateDEBGL[2] then 
				SystemNotice(role,"你真的很倒霉，路过的一群哥斯拉狠狠的踩了你一通。")
				local statelv = 1
				local statetime = 25
				AddState ( role , role , STATE_XIANRENJIAO , statelv , statetime )
				AddState ( role , role , STATE_XY , statelv , statetime )				
				GetAndSetWaWa(role,3)
				SetChaAttr(role, ATTR_EXTEND1,3)
				
				return
			end	
			if RDa<=ZBStateDEBGL[4] and RDa > ZBStateDEBGL[3] then 
				SystemNotice(role,"你糊里糊涂的闯进了旋风带。")
				local statelv = 1
				local statetime = 20
				AddState ( role , role , STATE_JF , statelv , statetime )
				GetAndSetWaWa(role,4)
				SetChaAttr(role, ATTR_EXTEND1,4)
				return
			end	
			if RDa<=ZBStateDEBGL[5] and RDa > ZBStateDEBGL[4] then 
				SystemNotice(role,"一阵恶寒传来，你感觉手脚都冻麻木了。")
				local statelv = 1
				local statetime = 30
				AddState ( role , role , STATE_BIW , statelv , statetime )
				GetAndSetWaWa(role,5)
				SetChaAttr(role, ATTR_EXTEND1,5)
				return
			end	
			if RDa<=ZBStateDEBGL[6] and RDa > ZBStateDEBGL[5] then
				local statelv = 1
				local statetime = 2			
				AddState ( role , role , STATE_LEIPI , statelv , statetime )
				SystemNotice(role,"一道炸雷劈在了你的头上，天空传来一阵低沉的声音：“抱歉我打偏了。”")
				GetAndSetWaWa(role,6)
				SetChaAttr(role, ATTR_EXTEND1,6)
				return
			end	
			if RDa<=ZBStateDEBGL[7] and RDa > ZBStateDEBGL[6] then 
				local statelv = 1
				local statetime = 1 
				AddState ( role , role , STATE_CUSI , statelv , statetime )
				local role_mxhp = GetChaAttr(role, ATTR_MXHP)
				SystemNotice(role,"死神似乎对你身上的倒霉气息情有独钟。你被他缠上了。")
				GetAndSetWaWa(role,7)
				SetChaAttr(role, ATTR_EXTEND1,7)
				return
			end	
			-- if RDa<=ZBStateDEBGL[8] and RDa > ZBStateDEBGL[7] then 
				-- local a = Ismm(role)
				-- local sex={}
				-- sex[0]="女生"
				-- sex[1]="男生"
				-- local bagNum=GetChaFreeBagGridNum ( role )
				-- if bagNum == 0 then
					-- SetChaAttr(role, ATTR_EXTEND1,81)
					-- SystemNotice(role,"所有单身"..sex[a].."的怨念集中到了你的身上。因为你背包已满，无法获得解除当前诅咒的“真实的评价”，因此你的打怪的经验值为平时的90%%")
					-- return
				-- end
				
				-- local id=6441-a
				-- local r1,r2 =MakeItem ( role , id  , 1 , 4 )		--给予玩家参赛卡并获得道具指针
				-- local item_PJ = GetChaItem ( role , 2 , r2 )
				-- local itemName = GetItemName(id)
				-- local roleID=GetRoleID(role)
				-- local num1,num2 = Attr1To2(roleID)
				-- SetItemAttr(item_PJ,ITEMATTR_VAL_AGI,num1)
				-- SetItemAttr(item_PJ,ITEMATTR_VAL_DEX,num2)
				-- local a1 = GetItemAttr(item_PJ,ITEMATTR_VAL_AGI)
				-- local a2 = GetItemAttr(item_PJ,ITEMATTR_VAL_DEX)
				-- SetChaAttr(role, ATTR_EXTEND1,82)
				-- local b=1-a	
				-- SystemNotice(role,"所有单身"..sex[a].."的怨念集中到了你的身上。赶快给心仪的"..sex[b].."“真实的评价”吧，如果获得回复，你的打怪的经验值会比平时多20%%哦。")
				-- return
			-- end					
		end
	end
end 
function GiveSB(role)
	local sbday=GetChaAttr(role, ATTR_EXTEND5)
	local SBday=zhouRi(role)
	if SBday~=sbday then 
		SetChaAttr(role, ATTR_EXTEND5,SBday)
		SetChaAttr(role, ATTR_EXTEND6,0)
		return LUA_TRUE
	end 
	return LUA_TRUE
end 
function ZBNowState(role)
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local ZBNType= math.floor(ZBMain/10)      ---第几次占卜
	local ZBNMain= math.mod(ZBMain,10 )			---BUFF OR DEBUFF
	local ZBday = GetChaAttr(role,ATTR_EXTEND2)		--占卜天数
	local ZBstate=GetChaAttr(role, ATTR_EXTEND1)	--
	local ZBstate1=math.floor(ZBstate/10)			--占卜效果注册
	local ZBstate2=math.mod(ZBstate,10)				--占卜类型
	local now_day=os.date("%d")
	now_day=tonumber(now_day)
	if now_day~=ZBday then
		return "no"
	end 
	if ZBMain == -1 then 
		return 11
	end
	if ZBMain == -2 then 
		return 12
	end
	if ZBNMain==0 then
		if ZBstate2==0 then 
			return 10
		else
			return ZBstate2
		end
	end
	if ZBNMain==1 then
		return -ZBstate
	end 
	if ZBNMain==3 then 
		return 13
	end
end  
function ZBChaXun(role)
	local zbNowState=ZBNowState(role)
	if zbNowState=="no" then
		return "_你今天没有进行过占卜。"
	end
	if zbNowState==11 or zbNowState==12 then
		return "_你今天占卜到了女神盾，失去了所有占卜的机会。"
	end
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local ZBNType= math.floor(ZBMain/10)
	local zhanBuFalse={}
	zhanBuFalse[1]="_你今天占卜了一次，还有五次改变命运的机会。"
	zhanBuFalse[2]="_你今天占卜了二次，还有四次改变命运的机会。"
	zhanBuFalse[3]="_你今天占卜了三次，还有三次改变命运的机会。"
	zhanBuFalse[4]="_你今天占卜了四次，还有二次改变命运的机会。"
	zhanBuFalse[5]="_你今天占卜了五次，还有一次改变命运的机会。"
	zhanBuFalse[6]="_你今天占卜了六次，我也不能改变你的命运。"
	local Notice1 = zhanBuFalse[ZBNType]
	local ZBNowTime=math.floor(math.mod(GetChaAttr(role,ATTR_EXTEND7),60)/2)+1
	if zbNowState<=0 then 
		local Notice2 ="你现在的占卜效果为：诅咒效果_下次诅咒会在 "..ZBNowTime.." 分钟之内再次发作。"
		local zbraid=math.floor((ZB8Debuff(role,1))*1000)/10
		if zbNowState== -81 then 
			return  Notice1.."_"..Notice2.."_".."你现在正被单身的怨念困扰，_打怪经验获得减少10%。"	
		end
		if zbNowState== -82 then 
			return Notice1.."_"..Notice2.."_".."你现在正被单身的怨念困扰，赶快给异性_“真实的评价”吧。打怪经验获得减少为"..zbraid.."%。"
		end
		if zbNowState== -83 then
			return Notice1.."_"..Notice2.."_".."你成功的解除了单身的怨念。_打怪经验获得增加20%。"
		end
		return Notice1.."_"..Notice2
	end 
	if zbNowState==13 then
		return Notice1.."_".."你现在的占卜效果为:精炼成功率会提高_但是精炼加成效果已过时消失。"
	end 
	local zhanbuBN={}
	zhanbuBN[1]="打怪获得的经验会提高。"
	zhanbuBN[2]="精炼成功率会提高。"
	zhanbuBN[3]="挖宝更容易挖到好东西。"
	zhanbuBN[4]="移动速度会增长。"
	zhanbuBN[5]="HP上限会增长。"
	zhanbuBN[6]="SP上限会增长。"
	zhanbuBN[7]="商城道具增幅。_仅限于双倍经验果和三倍经验经验果。"
	zhanbuBN[8]="修理装备只需要1银币。"
	zhanbuBN[9]="精灵消耗会减少。"
	zhanbuBN[10]="死亡了不掉经验。"
	local ZBstate=GetChaAttr(role, ATTR_EXTEND1)	--
	local ZBstate1=math.floor(ZBstate/10)			--占卜效果注册
	local ZBstate2=math.mod(ZBstate,10)
	local ZBStateLV={}
	ZBStateLV[0]={}
	ZBStateLV[0][0]=0
	ZBStateLV[1] = {}
	ZBStateLV[1][1] = 2												
	ZBStateLV[1][2] = 4												
	ZBStateLV[1][3] = 6												
	ZBStateLV[1][4] = 8												
	ZBStateLV[1][5] = 10											
	ZBStateLV[2] = {}
	ZBStateLV[2][1] = 10								
	ZBStateLV[2][2] = 8												
	ZBStateLV[2][3] = 6												
	ZBStateLV[2][4] = 4												
	ZBStateLV[2][5] = 2
	ZBStateLV[3] = {}
	ZBStateLV[3][1] = 1								
	ZBStateLV[3][2] = 1												
	ZBStateLV[3][3] = 1												
	ZBStateLV[3][4] = 1												
	ZBStateLV[3][5] = 1
	ZBStateLV[4] = {}
	ZBStateLV[4][1] = 10								
	ZBStateLV[4][2] = 8												
	ZBStateLV[4][3] = 6												
	ZBStateLV[4][4] = 4
	ZBStateLV[4][5] = 2									
	ZBStateLV[5] = {}
	ZBStateLV[5][1] = 1								
	ZBStateLV[5][2] = 2												
	ZBStateLV[5][3] = 3												
	ZBStateLV[5][4] = 4												
	ZBStateLV[5][5] = 4		
	ZBStateLV[6] = {}
	ZBStateLV[6][1] = 1
	ZBStateLV[6][2] = 2									
	ZBStateLV[6][3] = 3												
	ZBStateLV[6][4] = 4												
	ZBStateLV[6][5] = 4
	local zhanbuXG=""
	local ZBJLTime=math.floor((GetChaAttr(role,ATTR_EXTEND7)-2819)/2)
	if zbNowState==2 then
		zhanbuXG="_精炼加成效果会在大约 "..ZBJLTime.." 分钟之后消失。"
	elseif zbNowState==1 or zbNowState==4 then  
		zhanbuXG="_加成效果为"..ZBStateLV[ZBstate2][ZBstate1].."%。"
	elseif zbNowState==5 or zbNowState==6 then
		zhanbuXG="_加成效果为 "..(ZBStateLV[ZBstate2][ZBstate1]*200).."  。"
	end	
	return Notice1.."_".."你现在的占卜效果为："..zhanbuBN[zbNowState].." "..zhanbuXG
end 
function ZB8Item(role,now_tick)
	local i=0
	for i=1,4,1 do 
		local chaMGHZ=GetChaItem2(role,2,6439+i)
		local itemName=GetItemName ( 6439+i ) 
		if chaMGHZ~=nil then 
			local MGHZTime=GetItemAttr(chaMGHZ,ITEMATTR_VAL_STR)
			MGHZTime=MGHZTime+1
			if MGHZTime>360 and i <3 then 
				RemoveChaItem(role,6439+i,99,0,-1,2,1)
			elseif MGHZTime>360 and i >=3 then
				if GetItemAttr(chaMGHZ,ITEMATTR_VAL_CON)~= 1 then 
					SetItemAttr(chaMGHZ,ITEMATTR_VAL_CON,1)
				end
			else
				SetItemAttr(chaMGHZ,ITEMATTR_VAL_STR,MGHZTime)
			end
			SetItemAttr(chaMGHZ,ITEMATTR_VAL_STR,MGHZTime)
		end
	end
end 
function ZB8ItemX(role,now_tick)
	local i=0
	for i=1,2,1 do 
		local chaMGHZ=GetChaItem2(role,2,6439+i)
		if chaMGHZ~=nil then 
			RemoveChaItem(role,6439+i,99,0,-1,2,1)
		end
	end
end 
function ZB8ItemCharge(role,now_tick)
	local zbState=ZBNowState(role)
	if zbState==-82 then
		local i=0
		for i=1,2,1 do 
			local chaMGHZ=GetChaItem2(role,2,6441+i)
			if chaMGHZ~=nil then 
				local num1 = GetItemAttr(chaMGHZ,ITEMATTR_VAL_AGI)
				local num2 = GetItemAttr(chaMGHZ,ITEMATTR_VAL_DEX)
				local con = GetItemAttr(chaMGHZ,ITEMATTR_VAL_CON)
				local roleID = GetRoleID(role)
				local num = Attr2To1 (num1,num2)
				if num == roleID and con == 0 then 
					SetChaAttr(role,ATTR_EXTEND1,83)
					SetItemAttr(chaMGHZ,ITEMATTR_VAL_CON,1)
				elseif math.mod (now_tick,300) == 0 then 	
					local itemName = GetItemName(6441+i)
					SystemNotice(role,"你背包的"..itemName.."不能解除这次单身的怨念。请用这次诅咒给予的真实的评价，来开启出道具解除单身的怨念")
				end
			end
		end
	end
end
function XSAddExpAll ( role, value1, value2, type)	------------------添加经验（小数版）valu1=1,value2=1即为0.1%
--	SystemNotice( role , "value1="..value1.."value2="..value2.."type="..type)
	local exp_now = GetChaAttr ( role, ATTR_CEXP )
	if type == 1 then							--------按数字加经验
		local exp_add = math.random ( value1, value2)
		local lv = GetChaAttr ( role, ATTR_LV )
		if lv < 80 then
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			exp_add = exp_add/50
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		end
	elseif type == 2 then							----------按百分比加经验
		local per_exp1 = math.random ( value1, value2)
		local per_exp = per_exp1/10
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv < 80 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add = math.floor( ( exp_up * per_exp ) / 100 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		elseif lv >= 80 and lv < 100 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add =  math.floor ( ( exp_up * per_exp ) / 5000 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			exp_new = exp_now + 10000
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		end
	end
end
function UseAexpItem(role,Item,statelv,statetime)
	local ret = CheckCanUseSB(role,Item,statelv,statetime)
	if ret== 0 then 
		return 0
	end
	local SBstate = GetChaStateLv(role,STATE_SBJYGZ)
	if SBstate~=0 then
		RemoveState( role , STATE_SBJYGZ )
	end
	AddState(role,role,STATE_SBJYGZ,statelv,statetime)
	--SystemNotice(role,"调试：添加经验等级为"..statelv.."经验加成时间为"..statetime)
	return 1
end
function CheckCanUseSB(role,Item,statelv,statetime)
	if statelv > SBStateNUM then
		SystemNotice(role,"没有等级为"..statelv.."的经验加成")
		return 0
	end
	local SBstate = GetChaStateLv(role,STATE_SBJYGZ)
	local ItemID = GetItemID (Item)
	local itemName = GetItemName (ItemID)
	--SystemNotice(role,"调试：现有经验等级为"..SBstate)
	--SystemNotice(role,"调试：现有经验优先级为"..SBStateYXJ[SBstate])
	--SystemNotice(role,"调试：添加经验优先级为"..SBStateYXJ[statelv])
	if SBStateYXJ[statelv] < SBStateYXJ[SBstate] then
		if SBStateYXJ[SBstate] > 50 then 
			SystemNotice(role,"现在你背包里或者装备有持续经验加成的道具，不能使用"..itemName..".")
			return 0
		else
			SystemNotice(role,"现在你有更高级的经验状态加成，请稍后再使用。")
			return 0
		end
	end
	if SBStateYXJ[statelv] == SBStateYXJ[SBstate] then
		SystemNotice(role,"现在你有与该物品相同的经验状态加成，请稍后再使用。")
		return 0
	end	
	return 1
end 
function CheckCanAddSB(role,Item,statelv,statetime,NTC)
	if statelv > SBStateNUM then
		if NTC== 1 then 
			SystemNotice(role,"没有等级为"..statelv.."的经验加成")
		end 
		return 0
	end
	local SBstate = GetChaStateLv(role,STATE_SBJYGZ)
	local ItemID = GetItemID (Item)
	local itemName = GetItemName (ItemID)
	--SystemNotice(role,"调试：现有经验等级为"..SBstate)
	--SystemNotice(role,"调试：现有经验优先级为"..SBStateYXJ[statelv])
	--SystemNotice(role,"调试：添加经验优先级为"..SBStateYXJ[SBstate])
	if SBstate ~= 0 then
		if SBStateYXJ[SBstate] < 50  then
			if NTC== 1 then 
				SystemNotice(role,"现在你有经验状态加成，"..itemName.."的效果不起作用，并且不会扣除该道具存在的时间。")
			end
			return 0
		end
		if SBStateYXJ[statelv] > SBStateYXJ[SBstate] then
			if NTC== 1 then 
				SystemNotice(role,"现在你背包里或者装备有持续经验加成的道具，"..itemName.."的效果不起作用，并且不会扣除该道具存在的时间。")
			end 
			return 0
		end
	end
	return 1
end
function AddexpItem(role,Item,statelv,statetime,NTC) --ntC: NTC为1则发送不加成的NOTICE，为0则不发送根据规则决定是否添加BUFF和扣除物品时间，返回0则不加BUFF，返回1 则加BUFF
	local ret = CheckCanAddSB(role,Item,statelv,statetime,NTC)
	if ret== 0 then
		return 0
	end
	local SBstate = GetChaStateLv(role,STATE_SBJYGZ)
	if SBstate ~= 0 then
		if SBstate == statelv then
			--SystemNotice(role,"调试：现有经验等级为"..SBstate.."的经验返回1")
			return 1
		end
		RemoveState( role , STATE_SBJYGZ )
	end
	AddState(role,role,STATE_SBJYGZ,statelv,statetime)
	--SystemNotice(role,"调试：添加经验等级为"..statelv.."经验加成时间为"..statetime)
	return ret	
end
function CheckCanAddBL(role,Item,statelv,statetime,NTC)
	if statelv > BLStateNUM then
		if NTC== 1 then 
			SystemNotice(role,"没有等级为"..statelv.."的掉料加成")
		end
		return 0
	end
	local BLstate = GetChaStateLv(role,STATE_SBBLGZ)
	local ItemID = GetItemID (Item)
	local itemName = GetItemName (ItemID)
	--SystemNotice(role,"调试：现有掉料等级为"..BLstate)
	--SystemNotice(role,"调试：现有掉料优先级为"..BLStateYXJ[BLstate])
	--SystemNotice(role,"调试：添加掉料优先级为"..BLStateYXJ[statelv])
	if BLstate ~= 0 then
		if BLStateYXJ[BLstate] < 50  then
			if NTC== 1 then 
				SystemNotice(role,"现在你有掉料状态加成，"..itemName.."的效果不起作用，并且不会扣除该道具存在的时间。")
			end
			return 0
		end
		if BLStateYXJ[statelv] > BLStateYXJ[BLstate] then
			if NTC== 1 then 
				SystemNotice(role,"现在你背包里或者装备有持续掉料加成的道具，"..itemName.."的效果不起作用，并且不会扣除该道具存在的时间。")
			end 
			return 0
		end
	end
	return 1
	
end
function AddBLItem(role,Item,statelv,statetime,NTC) --ntC: NTC为1则发送不加成的NOTICE，为0则不发送。根据规则决定是否添加BUFF和扣除物品时间，返回0则不加BUFF，返回1 则加BUFF
	local ret = CheckCanAddBL(role,Item,statelv,statetime,NTC)
	if ret== 0 then
		return 0
	end
	local BLstate = GetChaStateLv(role,STATE_SBBLGZ)
	if BLstate ~= 0 then
		if BLstate == statelv then
			--SystemNotice(role,"调试：现有掉料等级为"..statelv.."的掉料返回1")
			return 1
		end
		RemoveState( role , STATE_SBBLGZ )
	end
	AddState(role,role,STATE_SBBLGZ,statelv,statetime)
	--SystemNotice(role,"调试：添加掉料等级为"..statelv.."掉料加成时间为"..statetime)
	return ret	
end
function CheckCanUseBL(role,Item,statelv,statetime)
	if statelv > BLStateNUM then
		SystemNotice(role,"没有等级为"..statelv.."的掉料加成")
		return 0
	end
	local BLstate = GetChaStateLv(role,STATE_SBBLGZ)
	local ItemID = GetItemID (Item)
	local itemName = GetItemName (ItemID)
	--SystemNotice(role,"调试：现有掉料等级为"..BLstate)
	--SystemNotice(role,"调试：现有掉料优先级为"..BLStateYXJ[BLstate])
	--SystemNotice(role,"调试：添加掉料优先级为"..BLStateYXJ[statelv])
	if BLStateYXJ[statelv] < BLStateYXJ[BLstate] then
		if BLStateYXJ[BLstate] > 50 then 
			SystemNotice(role,"现在你背包里或者装备有持续掉料加成的道具，不能使用"..itemName..".")
			return 0
		else
			SystemNotice(role,"现在你有更高级的掉料状态加成，请稍后再使用。")
			return 0
		end
	end
	if BLStateYXJ[statelv] == BLStateYXJ[BLstate] then
		SystemNotice(role,"现在你有与该物品相同的掉料状态加成，请稍后再使用。")
		return 0
	end
	return 1
end 
function UseABLItem(role,Item,statelv,statetime)
	local ret = CheckCanUseBL(role,Item,statelv,statetime)
	if ret== 0 then
		return 0
	end
	local BLstate = GetChaStateLv(role,STATE_SBBLGZ)
	if BLstate~=0 then
		RemoveState( role , STATE_SBBLGZ )
	end
	AddState(role,role,STATE_SBBLGZ,statelv,statetime)
	--SystemNotice(role,"调试：添加掉料等级为"..statelv.."掉料加成时间为"..statetime)
	return ret
end
function CheckCanUseBLandSB(role,Item,statelvSB,statelvBL,statetime)
	return CheckCanUseBL(role,Item,statelvBL,statetime)*CheckCanUseSB(role,Item,statelvSB,statetime,NTC)
end 
function CheckCanAddBLandSB(role,Item,statelvSB,statelvBL,statetime,NTC)
	return CheckCanAddSB(role,Item,statelvSB,statetime,NTC)*CheckCanAddBL(role,Item,statelvBL,statetime,NTC)
end 
function AddBLandSBItem(role,Item,statelvSB,statelvBL,statetime,NTC)
	local ret = CheckCanAddBLandSB(role,Item,statelvSB,statelvBL,statetime,NTC)
	--SystemNotice(role,"调试：ret==="..ret)
	if ret== 0 then
		return 0
	end
	local BLstate = GetChaStateLv(role,STATE_SBBLGZ)
	local SBstate = GetChaStateLv(role,STATE_SBJYGZ)
	if BLstate == statelvBL and SBstate == statelvSB then
		--SystemNotice(role,"调试：现有经验等级为"..statelvSB.."的经验返回1")
		--SystemNotice(role,"调试：现有掉料等级为"..statelvBL.."的掉料返回1")
		return 1
	end
	if BLstate ~= 0 then
		RemoveState( role , STATE_SBBLGZ )
	end
	if SBstate ~= 0 then	
		RemoveState( role , STATE_SBJYGZ )
	end
	AddState(role,role,STATE_SBBLGZ,statelvBL,statetime)
	AddState(role,role,STATE_SBJYGZ,statelvSB,statetime)
	--SystemNotice(role,"调试：添加掉料等级为"..statelvBL.."掉料加成时间为"..statetime)
	--SystemNotice(role,"调试：添加掉料等级为"..statelvSB.."掉料加成时间为"..statetime)
	return ret
end 
function UseABLandSBItem(role,Item,statelvSB,statelvBL,statetime)
	local ret = CheckCanUseBLandSB(role,Item,statelvSB,statelvBL,statetime)
	if ret== 0 then
		return 0
	end
	local BLstate = GetChaStateLv(role,STATE_SBBLGZ)
	local SBstate = GetChaStateLv(role,STATE_SBJYGZ)
	if BLstate ~= 0 then
		RemoveState( role , STATE_SBBLGZ )
	end
	if SBstate ~= 0 then	
		RemoveState( role , STATE_SBJYGZ )
	end
	AddState(role,role,STATE_SBBLGZ,statelvBL,statetime)
	AddState(role,role,STATE_SBJYGZ,statelvSB,statetime)
	--SystemNotice(role,"调试：添加掉料等级为"..statelvBL.."掉料加成时间为"..statetime)
	--SystemNotice(role,"调试：添加掉料等级为"..statelvSB.."掉料加成时间为"..statetime)
	return ret
end 
function CheckCanTrigSB(role,statelv,statetime)
	if statelv > SBStateNUM then
		SystemNotice(role,"没有等级为"..statelv.."的经验加成")
		return 0
	end
	local SBstate = GetChaStateLv(role,STATE_SBJYGZ)
	--SystemNotice(role,"调试：现有经验等级为"..SBstate)
	--SystemNotice(role,"调试：现有经验优先级为"..SBStateYXJ[SBstate])
	--SystemNotice(role,"调试：添加经验优先级为"..SBStateYXJ[statelv])
	if SBStateYXJ[statelv] < SBStateYXJ[SBstate] then
		local mini = math.floor(statetime/60)
		SystemNotice(role,"现在你已经有经验加成，应给予的"..mini.."分钟"..SBStateBS[statelv].."倍经验在本周之内可以去双儿MM处补领，该补领服务只能领取最近一次的触发经验加成。")
		return 0
	end
	if SBStateYXJ[statelv] == SBStateYXJ[SBstate] then
		SystemNotice(role,"现在你有与该物品相同的经验状态加成，请稍后再使用。")
		return 0
	end	
	return 1
end
TrigSb={}
TrigSb.id={}
TrigSb.lv={}
TrigSb.statetime={}
TrigSb.count=0
Trigbl={}
Trigbl.count=0
Trigbl.id={}
Trigbl.lv={}
Trigbl.statetime={}
function TrigASBJY(role,statelv,statetime)
	local SBstate = GetChaStateLv(role,STATE_SBJYGZ)
	if SBstate~=0 then
		local mini= math.floor(statetime/60)
		SystemNotice(role,"现在你已经有经验加成，应给予的"..mini.."分钟"..SBStateBS[statelv].."倍经验在本周之内可以去双儿MM处补领，该补领服务只能领取最近一次的触发经验加成。")
		TrigSb.count=TrigSb.count+1
		-- SystemNotice(role,"调试：	TrigSb.count"..TrigSb.count)
		TrigSb.id[TrigSb.count]=GetChaDefaultName(role)
			-- SystemNotice(role,"调试：	TrigSb.id[TrigSb.count]"..TrigSb.id[TrigSb.count])
		TrigSb.lv[TrigSb.count]= statelv
		-- SystemNotice(role,"调试：	statelv"..statelv)
		TrigSb.statetime[TrigSb.count] = statetime
		-- SystemNotice(role,"调试：	TrigSb.statetime[TrigSb.count]"..TrigSb.statetime[TrigSb.count])
		
	else
		AddState(role,role,STATE_SBJYGZ,statelv,statetime)
	end
end
function TrigASBBL(role,statelv,statetime)
	local blstate = GetChaStateLv(role,STATE_SBBLGZ)
	if blstate~=0 then
		local mini= math.floor(statetime/60)
		SystemNotice(role,"现在你已经有掉料加成，应给予的"..mini.."分钟"..BLStateBS[statelv].."倍经验在本周之内可以去双儿MM处补领，该补领服务只能领取最近一次的触发掉料加成。")
	
		Trigbl.count=Trigbl.count+1
		Trigbl.id[Trigbl.count]=GetChaDefaultName(role)
		Trigbl.lv[Trigbl.count]= statelv
		Trigbl.statetime[Trigbl.count] = statetime
	else
		AddState(role,role,STATE_SBBLGZ,statelv,statetime)
	end
end

function bulingSB(role)
	local roleid=GetChaDefaultName(role)
	local i=0
	for i=1,TrigSb.count,1 do
		-- SystemNotice(role,"调试：.roleid"..roleid)
		
		-- SystemNotice(role,"调试：.TrigSb.id[TrigSb.count]"..TrigSb.id[TrigSb.count])
		if TrigSb.id[TrigSb.count]== roleid then
			-- SystemNotice(role,"调试：.TrigSb.lv[TrigSb.count]"..TrigSb.lv[TrigSb.count])
			-- SystemNotice(role,"调试：TrigSb.statetime[TrigSb.count]"..TrigSb.statetime[TrigSb.count])
			AddState(role,role,STATE_SBJYGZ,TrigSb.lv[TrigSb.count],TrigSb.statetime[TrigSb.count])
			
			return LUA_TRUE
		end
	end
end
function bulingBL(role)
	local roleid=GetChaDefaultName(role)
	local i=0
	for i=1,Trigbl.count,1 do
		if Trigbl.id[Trigbl.count]== roleid then
			AddState(role,role,STATE_SBBLGZ,TrigSb.lv[TrigSb.count],TrigSb.statetime[TrigSb.count])
			return LUA_TRUE
		end
	end
end
function buling(role)
	local roleid=GetChaDefaultName(role)
	local i=0
	for i=1,Trigbl.count,1 do
		if Trigbl.id[Trigbl.count]== roleid then
			return LUA_TRUE
		end
	end	
	for i=1,TrigSb.count,1 do
		
		if TrigSb.id[TrigSb.count]== roleid then	
			return LUA_TRUE
		end
	end
	return LUA_FALSE
end
function CanbulingSB(role)
	-- SystemNotice(role,"调试：CanbulingSB innnn")
	local SBstate = GetChaStateLv(role,STATE_SBJYGZ)
	if SBstate~=0 then 
		SystemNotice(role,"现在你有经验加成，不要浪费哦。")
		return LUA_FALSE
	end
	local roleid=GetChaDefaultName(role)
	local i = 0
-- SystemNotice(role,"调试：TrigSb.count"..TrigSb.count)
	for i=1,TrigSb.count,1 do
		-- SystemNotice(role,"调试：TrigSb.id[TrigSb.count]"..TrigSb.id[TrigSb.count])
		if TrigSb.id[TrigSb.count]== roleid then
		-- SystemNotice(role,"调试：CanbulingSB LUA_TRUE")
	
			return LUA_TRUE
		end
	end
	return LUA_FALSE
end	
function CanbulingBL(role)
	local BLstate = GetChaStateLv(role,STATE_SBBLGZ)
	if BLstate~=0 then 
		SystemNotice(role,"现在你有掉料加成，不要浪费哦。")
		return LUA_FALSE
	end
	local roleid=GetChaDefaultName(role)
	local i=0
	for i=1,Trigbl.count,1 do
		if Trigbl.id[Trigbl.count]== roleid then
			return LUA_TRUE
		end
	end	
	return LUA_FALSE
end		
		
function NewMGH(role,now_tick)
	local bag=4										--背包格数
	bag=bag-1
	local pNewMGH = GetChaItem ( role , 2 , bag )
	if ValidCha(pNewMGH) == 0 then
		return
	end
	local MGHID=6444								--玫瑰花ID
	pNewMGHID=GetItemID(pNewMGH)
	local MGHure= GetItemAttr(pNewMGH,ITEMATTR_URE)
		MGHure= MGHure-49
	if pNewMGHID==MGHID and MGHure>0 then
		
		local statetime = MGHure
		
		local statelvBL=3
		local statelvSB=12
		local NTC=0
		if math.mod(now_tick,600) == 0 then
			NTC=1
		end
		local ret = AddBLandSBItem(role,pNewMGH,statelvSB,statelvBL,statetime,NTC)
		if now_tick~=1 and MGHure~=0 and ret == 1 then
			MGHure=MGHure-10
			MGHure=MGHure+49
			SetItemAttr(pNewMGH,ITEMATTR_URE,MGHure)
			MGHure=GetItemAttr(pNewMGH,ITEMATTR_URE)
		end
		local statelv = 2
		local MEIGUIstate= GetChaStateLv ( role , STATE_MEIGUI ) 
		if MEIGUIstate==0 and ret == 1 then
			AddState( role , role , STATE_MEIGUI , statelv , statetime ) --玫瑰花特效
		end
	end
	--SystemNotice(role,"调试：pNewMGHID==="..pNewMGHID)
	--SystemNotice(role,"调试：MGHID==="..MGHID)
	--SystemNotice(role,"调试：MGHure==="..MGHure)
	if  pNewMGHID~=MGHID or MGHure<=0 then
		local SBBLGZstate= GetChaStateLv ( role , STATE_SBBLGZ )
		if SBBLGZstate==3 then 
			RemoveState( role , STATE_SBBLGZ )
		end
		local SBBLGZstate= GetChaStateLv ( role , STATE_MEIGUI )
		if SBBLGZstate==2 then 
			RemoveState( role , STATE_MEIGUI )
		end 
		local SBBLGZstate= GetChaStateLv ( role , STATE_SBJYGZ )
		if SBBLGZstate==12 then 
			RemoveState( role , STATE_SBJYGZ )
		end	
	end
end	
function DuiHuanJQHMG(role)
	local MGHID= 6381
	local MGHSID=6382
	local MGHnum=CheckBagItem(  role , MGHID )
	local MGHSnum=CheckBagItem(  role , MGHSID )
	local num=MGHSnum*99+MGHnum
	if num<999 then
		SystemNotice(role,"你背包里没有等价于999朵玫瑰花的玫瑰花和玫瑰花束。")
		return LUA_FALSE
	end
	local bagNuma1=math.floor((MGHnum-1)/99)+1
	local bagNuma2=math.floor((MGHSnum-1)/99)+1
	local bagNuma=bagNuma1+bagNuma2
	local num2=num-999
	local MGHnum1=math.mod(num2,99)
	local MGHSnum1=math.floor((num2-1)/99)+1
	local bagNumb1=math.floor((MGHnum1-1)/99)+1
	local bagNumb2=math.floor((MGHSnum1-1)/99)+1
	local bagNumb=bagNumb1+bagNumb2+1
	local needBagNum=bagNumb-bagNuma
	local hasBagNum=GetChaFreeBagGridNum ( role )		
	if hasBagNum<needBagNum then
		SystemNotice(role,"你没有足够的背包栏来获得兑换后的激情玫瑰花，玫瑰花，玫瑰花束。现在需要 "..needBagNum.." 背包栏位")
		return LUA_FALSE
	end
	RemoveChaItem(role,MGHID,MGHnum,0,-1,2,1)
	RemoveChaItem(role,MGHSID,MGHSnum,0,-1,2,1)
	GiveItem ( role ,0,MGHID , MGHnum1   , 4 )
	GiveItem ( role ,0,MGHSID , MGHSnum1   , 4 )
	local JQMGHid=6444
	local JQMGHnum= 1
	GiveItem ( role ,0,JQMGHid , JQMGHnum   , 4 )
	return LUA_TRUE
end 
--2008万圣节用-------------------
function WLface(role,now_tick) 
	local maozi = GetChaItem ( role , 1 , 0 )   --取装备栏头部的指针   1是装备栏 0号位置是头部
	if maozi == nil  then
		local statelvJY= GetChaStateLv(role,STATE_SBJYGZ)
		local statelvBL= GetChaStateLv(role,STATE_SBBLGZ)
		if statelvJY== 13 then
			RemoveState( role , STATE_SBJYGZ )
		end
		if statelvBL== 6 then
			RemoveState( role , STATE_SBBLGZ )
		end
		return
	end
	local maozi_id = GetItemID( maozi )
	if maozi_id == 1121 then          --南瓜头双倍掉料
		--SystemNotice( role ,"南瓜头双倍掉料")
		local a = GetItemAttr( maozi , ITEMATTR_URE )	
		if a > 0 then
			local NTC=0
			if math.mod(now_tick,600) == 0 then
				NTC= 1
			end
			local statelv=6
			local statetime= 0.6*a
			local ret=AddBLItem(role,Item,statelv,statetime,NTC)
			if ret == 1 then
				a = a-50
				SetItemAttr( maozi , ITEMATTR_URE , a )
			end
		else 
			SystemNotice( role , "南瓜面具耐久用尽了，双倍效果消失。" )
			RemoveChaItem( role , 1121 , 1 , 0 , -1 , 2 , 1 )
			local statelvBL= GetChaStateLv(role,STATE_SBBLGZ)
			if statelvBL== 6 then
				RemoveState( role , STATE_SBBLGZ )
			end
		end
	elseif maozi_id == 1122 then          --亡灵面具双倍经验
		--SystemNotice( role ,"亡灵面具双倍经验")
		local a = GetItemAttr( maozi , ITEMATTR_URE )	
		if a > 0 then
			local NTC=0
			if math.mod(a,1000) == 0 then
				NTC= 1
			end
			local statelv=13
			local statetime= 0.6*a
			local ret=AddexpItem(role,Item,statelv,statetime,NTC)
			if ret == 1 then
				a = a-50
				SetItemAttr( maozi , ITEMATTR_URE , a )
			end
		else 
			SystemNotice( role , "亡灵面具耐久用尽了，双倍经验效果消失。" )
			RemoveChaItem( role , 1122 , 1 , 0 , -1 , 2 , 1 )
			local statelvJY= GetChaStateLv(role,STATE_SBJYGZ)
			if statelvJY== 13 then
				RemoveState( role , STATE_SBJYGZ )
			end
		end
	else
		local statelvJY= GetChaStateLv(role,STATE_SBJYGZ)
		local statelvBL= GetChaStateLv(role,STATE_SBBLGZ)
		if statelvJY== 13 then
			RemoveState( role , STATE_SBJYGZ )
		end
		if statelvBL== 6 then
			RemoveState( role , STATE_SBBLGZ )
		end
	end
end

--[[function WLface(role,now_tick)                     -----------------------亡灵面具 ，南瓜面具buff5秒1刷 耐久30秒1扣
	local maozi = GetChaItem ( role , 1 , 0 )   --取装备栏头部的指针   1是装备栏 0号位置是头部
	if maozi == nil then 
		return
	end
	--SystemNotice( role ,"鉴定开始")	
	local maozi_id = GetItemID( maozi )

	if maozi_id == 1121 then          --南瓜头双倍掉料
		--SystemNotice( role ,"南瓜头双倍掉料")
		local a = GetItemAttr( maozi , ITEMATTR_URE )	
		if a > 0 then				
			local bufftime = 15             --5秒检定一次，没有就刷15秒的BUFF		
			AddState(role , role ,  STATE_SBBLGZ, 1 , bufftime ) --双倍掉率
			--SystemNotice( role ,"刷BUFF双倍掉率")
		else 	
			SystemNotice( role , "南瓜面具耐久用尽了，双倍效果消失。" )
			RemoveChaItem( role , 1121 , 1 , 0 , -1 , 2 , 1 )	
			return
		end
	elseif maozi_id == 1122 then     --亡灵面具双倍经验
		--SystemNotice( role ,"亡灵面具双倍经验")
		local a = GetItemAttr( maozi , ITEMATTR_URE )	
		if a > 0 then				
			local bufftime = 15             --5秒检定一次，没有就刷15秒的BUFF			
			AddState(role , role , STATE_SBJYGZ , 1 , bufftime )   --双倍经验
			--SystemNotice( role ,"刷BUFF双倍经验")
		else 
			SystemNotice( role , "亡灵面具耐久用尽了，双倍经验效果消失。" )
			RemoveChaItem( role , 1122 , 1 , 0 , -1 , 2 , 1 )
			return
		end		
	end
end
function WLface_KILL(role,now_tick)  --万盛面具扣耐久
	--SystemNotice( role ,"30秒到了开始扣除1点耐久")
	local maozi = GetChaItem ( role , 1 , 0 )   --取装备栏头部的指针   1是装备栏 0号位置是头部
	if maozi == nil then 
		return
	end
	local maozi_id = GetItemID( maozi ) 
	if maozi_id == 1121  or maozi_id == 1122 then
		local a = GetItemAttr( maozi , ITEMATTR_URE )
		a = a-50
		local mm = a/50
		--SystemNotice( role ,"剩余耐久"..mm)
		SetItemAttr( maozi , ITEMATTR_URE , a )

	end
end]]

function MFDbox(role,now_tick) ------------免费档宝箱扣耐久
	local one_minite=60														--设定one_minite为60秒
	if math.mod(now_tick, one_minite) == 0 and now_tick > 0 then            --如果one_minite被now_tick整除并且now_tick大于0
		local num_MFDbox=0                                          --
		local item_MFDbox=0	
		num_MFDbox = CheckBagItem( role, 6470 )
		if num_MFDbox ~= 1 then
		-- SystemNotice( role ,"箱子="..num_MFDbox)
			return
		elseif num_MFDbox == 1 then
			item_MFDbox = GetChaItem2 ( role , 2 , 6470 )
			local item_MFDbox_ure=GetItemAttr(item_MFDbox,ITEMATTR_URE)
			if item_MFDbox_ure>=50 then
				item_MFDbox_ure=item_MFDbox_ure-50
				SetItemAttr(item_MFDbox,ITEMATTR_URE,item_MFDbox_ure)
				local tesat= GetItemAttr(item_MFDbox,ITEMATTR_URE)
				-- SystemNotice(role,"sdsdsadsa.."..tesat)
			elseif item_MFDbox_ure <= 0 then
				return
			end
		end
	end
end

-----------------------------掛機道具by L.li--------------------
function CHYLD(role, now_tick)--------------掛機道具】
----------回血
	local hp_now = GetChaAttr(role, ATTR_HP)
	if hp_now <= 0 then 
		return 
	else 
	local item_yld = GetChaItem(role, 2, 2)
		if item_yld==nil then 
			return
		end	
		local item1_id = GetItemID(item_yld)
		if item1_id == 6535 then
			local mxhp=GetChaAttr(role , ATTR_MXHP)
			local addhp=mxhp*0.4+hp_now
			local a = GetChaPerHp(role)
			if a < 0.4 then
				SetChaAttr(role , ATTR_HP, addhp)
				local yldtime = GetItemAttr(item_yld, ITEMATTR_URE)		
				yldtime = yldtime - 50
				local b = GetItemAttr(item_yld, ITEMATTR_URE)
				if b > 0 then
					SetItemAttr(item_yld, ITEMATTR_URE, yldtime)	
				else	
					RemoveChaItem ( role , 6535 , 1 , 2 , 2, 2 , 1  )
					return
				end
			end
		end	
	end
end

function CHTLD(role, now_tick)--------------掛機道具】
---------------------回藍		
	local hp_now = GetChaAttr(role, ATTR_HP)
	local sp_now = GetChaAttr(role,ATTR_SP)
	if hp_now <= 0 then 
		return 
	else 
	local item_tld = GetChaItem(role, 2, 3)
		if item_tld==nil then 
			return
		end
		local item2_id = GetItemID(item_tld)
		if item2_id == 6536 then
			local mxsp=GetChaAttr(role , ATTR_MXSP)
			local addsp=mxsp*0.4+sp_now
			local c = GetChaPerSp(role)
			if c < 0.4 then
				SetChaAttr(role , ATTR_SP, addsp)
				local tldtime = GetItemAttr(item_tld, ITEMATTR_URE)		
				tldtime = tldtime - 50
				local d = GetItemAttr(item_tld, ITEMATTR_URE)
				if d > 0 then
					SetItemAttr(item_tld, ITEMATTR_URE, tldtime)	
				else	
					RemoveChaItem ( role , 6536 , 1 , 2 , 3, 2 , 1  )
					return
				end
			end
		end
	end
end 
function HaiDaoQi(role , now_tick)
	local HAIDAOQIstatelv =GetChaStateLv(role ,STATE_HAIDAOQI )
	local item = GetChaItem(role , 1 , 3)
	if ValidCha(item) == 0 then 
		if HAIDAOQIstatelv~=0 then 
			RemoveState(role,STATE_HAIDAOQI)
		end
		return
	end
	local itemID= GetItemID(item)
	if itemID <6554 or itemID>6565 then 
		if HAIDAOQIstatelv~=0 then 
			RemoveState(role,STATE_HAIDAOQI)
		end
		return
	end
	if HAIDAOQIstatelv== 0 then
		AddState(role ,role ,STATE_HAIDAOQI,1,18000 )
	end
end

function DelKWKG( role, now_tick )
	local Item_Use = GetChaItem ( role , 1 , 9 )			----取手上装备的道具
	if Item_Use == nil then
		return
	end 
	local ItemID_Use = GetItemID ( Item_Use )			----取ID
	if ItemID_Use == 6538 or ItemID_Use == 6539 or ItemID_Use == 6585 or ItemID_Use == 6613 then
	local  Item_Ure = GetItemAttr( Item_Use , ITEMATTR_URE )
		if Item_Ure ~= 0 then 
			return
		elseif Item_Ure <= 0 then
			RemoveChaItem ( role , 6538 , 1 , 1 , 9, 2 , 1  )
			RemoveChaItem ( role , 6539 , 1 , 1 , 9, 2 , 1  )
			RemoveChaItem ( role , 6585 , 1 , 1 , 9, 2 , 1  )
			RemoveChaItem ( role , 6585 , 1 , 1 , 9, 2 , 1  )
			RemoveChaItem ( role , 6613 , 1 , 1 , 9, 2 , 1  )
		end
	end
end


function DelKWKGbag( role, now_tick )
	local Item_Use = GetChaItem2 ( role , 2 , 6538 )
	local Item_Use1 = GetChaItem2 ( role , 2 , 6539 )
	local Item_Use2 = GetChaItem2 ( role , 2 , 6585 )
	local Item_Use3 = GetChaItem2 ( role , 2 , 6613 )
	if Item_Use == nil and Item_Use1 == nil and Item_Use2 == nil and Item_Use3 == nil then
		return
	else
		local bagnum = GetKbCap(role) 
		i= 0 
		for i = 0,bagnum,1 do 
			local Item = GetChaItem ( role , 2 , i )
			if Item ~= nil then			
				local ItemID = GetItemID ( Item )
				if ItemID == 6538 or ItemID == 6539 or ItemID == 6585 or ItemID == 6613 then
					local Item_Ure = GetItemAttr( Item , ITEMATTR_URE )
					if Item_Ure <= 0 then
						RemoveChaItem ( role , 0 , 1 , 2 , i, 2 , 1  )
					end
				end			
			end			
		end
	end	
end
function GiveMoHeEquip (role)
	local lv = GetChaAttr (role , ATTR_LV)
	local job = GetChaAttr (role , ATTR_JOB)
	local type = GetChaTypeID (role)
	if lv >=50 and type == 2 then 
		local a = math.random (1,2)
		GiveItem(role ,0, 1124+a ,1,4)
		return 1124+a
	end
	if lv >=40 and job<=7 then 
		lv = 35
	end
	lv = math.floor(lv/5)*5
	local MoHeZBID={} 
	local MoHeZBType={}
	local MoHeZBLV={}
	local MoHeZBJob={}
	local allCount = InItMoHeEquip (MoHeZBID,MoHeZBType,MoHeZBLV,MoHeZBJob)
	local equip = {}
	equip[1]= 0466
	local equipCount = 0 
	local i = 0 
	for i = 1 ,allCount ,1 do 

		if job == MoHeZBJob[i] and lv == MoHeZBLV[i] and CheckType(type,MoHeZBType[i])== 1 then 
			equipCount= equipCount+1
			equip[equipCount] = MoHeZBID[i]
		end
	end
	local b = 1 
	if equipCount> 0 then
		b = math.random (1,equipCount )
	end
	GiveItem(role , 0 ,equip[b],1, 4 )
	return equip[b]
end
function CheckType(type,mohetype)
	if type == mohetype then 	
		return 1 
	end 
	if mohetype == 5 and type <= 3 then 
		return 1
	end
	if mohetype == 1 and type== 3 then 
		return 1 
	end
	return 0 
end
	
function InItMoHeEquip (MoHeZBID,MoHeZBType,MoHeZBLV,MoHeZBJob)
	MoHeZBID[1]= 0466	MoHeZBType[1]= 5	MoHeZBLV[1]= 10	MoHeZBJob[1]= 1
	MoHeZBID[2]= 0481	MoHeZBType[2]= 1	MoHeZBLV[2]= 10	MoHeZBJob[2]= 2
	MoHeZBID[3]= 0511	MoHeZBType[3]= 1	MoHeZBLV[3]= 10	MoHeZBJob[3]= 4
	MoHeZBID[4]= 0541	MoHeZBType[4]= 3	MoHeZBLV[4]= 10	MoHeZBJob[4]= 5
	MoHeZBID[5]= 0556	MoHeZBType[5]= 4	MoHeZBLV[5]= 10	MoHeZBJob[5]= 4
	MoHeZBID[6]= 0559	MoHeZBType[6]= 4	MoHeZBLV[6]= 10	MoHeZBJob[6]= 5
	MoHeZBID[7]= 0642	MoHeZBType[7]= 5	MoHeZBLV[7]= 10	MoHeZBJob[7]= 1
	MoHeZBID[8]= 0657	MoHeZBType[8]= 1	MoHeZBLV[8]= 10	MoHeZBJob[8]= 2
	MoHeZBID[9]= 0687	MoHeZBType[9]= 1	MoHeZBLV[9]= 10	MoHeZBJob[9]= 4
	MoHeZBID[10]= 0717	MoHeZBType[10]= 3	MoHeZBLV[10]= 10	MoHeZBJob[10]= 5
	MoHeZBID[11]= 0732	MoHeZBType[11]= 4	MoHeZBLV[11]= 10	MoHeZBJob[11]= 4
	MoHeZBID[12]= 0735	MoHeZBType[12]= 4	MoHeZBLV[12]= 10	MoHeZBJob[12]= 5
	MoHeZBID[13]= 0472	MoHeZBType[13]= 5	MoHeZBLV[13]= 15	MoHeZBJob[13]= 1
	MoHeZBID[14]= 0489	MoHeZBType[14]= 1	MoHeZBLV[14]= 15	MoHeZBJob[14]= 2
	MoHeZBID[15]= 0512	MoHeZBType[15]= 1	MoHeZBLV[15]= 15	MoHeZBJob[15]= 4
	MoHeZBID[16]= 0527	MoHeZBType[16]= 4	MoHeZBLV[16]= 15	MoHeZBJob[16]= 4
	MoHeZBID[17]= 0535	MoHeZBType[17]= 4	MoHeZBLV[17]= 15	MoHeZBJob[17]= 5
	MoHeZBID[18]= 0548	MoHeZBType[18]= 3	MoHeZBLV[18]= 15	MoHeZBJob[18]= 5
	MoHeZBID[19]= 0648	MoHeZBType[19]= 5	MoHeZBLV[19]= 15	MoHeZBJob[19]= 1
	MoHeZBID[20]= 0663	MoHeZBType[20]= 1	MoHeZBLV[20]= 15	MoHeZBJob[20]= 2
	MoHeZBID[21]= 0688	MoHeZBType[21]= 1	MoHeZBLV[21]= 15	MoHeZBJob[21]= 4
	MoHeZBID[22]= 0703	MoHeZBType[22]= 4	MoHeZBLV[22]= 15	MoHeZBJob[22]= 4
	MoHeZBID[23]= 0711	MoHeZBType[23]= 4	MoHeZBLV[23]= 15	MoHeZBJob[23]= 5
	MoHeZBID[24]= 0724	MoHeZBType[24]= 3	MoHeZBLV[24]= 15	MoHeZBJob[24]= 5
	MoHeZBID[25]= 0467	MoHeZBType[25]= 5	MoHeZBLV[25]= 20	MoHeZBJob[25]= 1
	MoHeZBID[26]= 0482	MoHeZBType[26]= 1	MoHeZBLV[26]= 20	MoHeZBJob[26]= 2
	MoHeZBID[27]= 0514	MoHeZBType[27]= 1	MoHeZBLV[27]= 20	MoHeZBJob[27]= 4
	MoHeZBID[28]= 0542	MoHeZBType[28]= 3	MoHeZBLV[28]= 20	MoHeZBJob[28]= 5
	MoHeZBID[29]= 0557	MoHeZBType[29]= 4	MoHeZBLV[29]= 20	MoHeZBJob[29]= 5
	MoHeZBID[30]= 0562	MoHeZBType[30]= 4	MoHeZBLV[30]= 20	MoHeZBJob[30]= 4
	MoHeZBID[31]= 0643	MoHeZBType[31]= 5	MoHeZBLV[31]= 20	MoHeZBJob[31]= 1
	MoHeZBID[32]= 0658	MoHeZBType[32]= 1	MoHeZBLV[32]= 20	MoHeZBJob[32]= 2
	MoHeZBID[33]= 0690	MoHeZBType[33]= 1	MoHeZBLV[33]= 20	MoHeZBJob[33]= 4
	MoHeZBID[34]= 0718	MoHeZBType[34]= 3	MoHeZBLV[34]= 20	MoHeZBJob[34]= 5
	MoHeZBID[35]= 0733	MoHeZBType[35]= 4	MoHeZBLV[35]= 20	MoHeZBJob[35]= 5
	MoHeZBID[36]= 0738	MoHeZBType[36]= 4	MoHeZBLV[36]= 20	MoHeZBJob[36]= 4
	MoHeZBID[37]= 0473	MoHeZBType[37]= 5	MoHeZBLV[37]= 25	MoHeZBJob[37]= 1
	MoHeZBID[38]= 0487	MoHeZBType[38]= 1	MoHeZBLV[38]= 25	MoHeZBJob[38]= 2
	MoHeZBID[39]= 0513	MoHeZBType[39]= 1	MoHeZBLV[39]= 25	MoHeZBJob[39]= 4
	MoHeZBID[40]= 0528	MoHeZBType[40]= 4	MoHeZBLV[40]= 25	MoHeZBJob[40]= 4
	MoHeZBID[41]= 0536	MoHeZBType[41]= 4	MoHeZBLV[41]= 25	MoHeZBJob[41]= 5
	MoHeZBID[42]= 0549	MoHeZBType[42]= 3	MoHeZBLV[42]= 25	MoHeZBJob[42]= 5
	MoHeZBID[43]= 0649	MoHeZBType[43]= 5	MoHeZBLV[43]= 25	MoHeZBJob[43]= 1
	MoHeZBID[44]= 0665	MoHeZBType[44]= 1	MoHeZBLV[44]= 25	MoHeZBJob[44]= 2
	MoHeZBID[45]= 0689	MoHeZBType[45]= 1	MoHeZBLV[45]= 25	MoHeZBJob[45]= 4
	MoHeZBID[46]= 0704	MoHeZBType[46]= 4	MoHeZBLV[46]= 25	MoHeZBJob[46]= 4
	MoHeZBID[47]= 0712	MoHeZBType[47]= 4	MoHeZBLV[47]= 25	MoHeZBJob[47]= 5
	MoHeZBID[48]= 0725	MoHeZBType[48]= 3	MoHeZBLV[48]= 25	MoHeZBJob[48]= 5
	MoHeZBID[49]= 0469	MoHeZBType[49]= 5	MoHeZBLV[49]= 30	MoHeZBJob[49]= 1
	MoHeZBID[50]= 0483	MoHeZBType[50]= 1	MoHeZBLV[50]= 30	MoHeZBJob[50]= 2
	MoHeZBID[51]= 0516	MoHeZBType[51]= 1	MoHeZBLV[51]= 30	MoHeZBJob[51]= 4
	MoHeZBID[52]= 0526	MoHeZBType[52]= 4	MoHeZBLV[52]= 30	MoHeZBJob[52]= 4
	MoHeZBID[53]= 0544	MoHeZBType[53]= 3	MoHeZBLV[53]= 30	MoHeZBJob[53]= 5
	MoHeZBID[54]= 0565	MoHeZBType[54]= 4	MoHeZBLV[54]= 30	MoHeZBJob[54]= 5
	MoHeZBID[55]= 0645	MoHeZBType[55]= 5	MoHeZBLV[55]= 30	MoHeZBJob[55]= 1
	MoHeZBID[56]= 0659	MoHeZBType[56]= 1	MoHeZBLV[56]= 30	MoHeZBJob[56]= 2
	MoHeZBID[57]= 0692	MoHeZBType[57]= 1	MoHeZBLV[57]= 30	MoHeZBJob[57]= 4
	MoHeZBID[58]= 0702	MoHeZBType[58]= 4	MoHeZBLV[58]= 30	MoHeZBJob[58]= 4
	MoHeZBID[59]= 0720	MoHeZBType[59]= 3	MoHeZBLV[59]= 30	MoHeZBJob[59]= 5
	MoHeZBID[60]= 0741	MoHeZBType[60]= 4	MoHeZBLV[60]= 30	MoHeZBJob[60]= 5
	MoHeZBID[61]= 0474	MoHeZBType[61]= 5	MoHeZBLV[61]= 35	MoHeZBJob[61]= 1
	MoHeZBID[62]= 0490	MoHeZBType[62]= 1	MoHeZBLV[62]= 35	MoHeZBJob[62]= 2
	MoHeZBID[63]= 0515	MoHeZBType[63]= 1	MoHeZBLV[63]= 35	MoHeZBJob[63]= 4
	MoHeZBID[64]= 0530	MoHeZBType[64]= 4	MoHeZBLV[64]= 35	MoHeZBJob[64]= 4
	MoHeZBID[65]= 0537	MoHeZBType[65]= 4	MoHeZBLV[65]= 35	MoHeZBJob[65]= 5
	MoHeZBID[66]= 0550	MoHeZBType[66]= 3	MoHeZBLV[66]= 35	MoHeZBJob[66]= 5
	MoHeZBID[67]= 0650	MoHeZBType[67]= 5	MoHeZBLV[67]= 35	MoHeZBJob[67]= 1
	MoHeZBID[68]= 0666	MoHeZBType[68]= 1	MoHeZBLV[68]= 35	MoHeZBJob[68]= 2
	MoHeZBID[69]= 0691	MoHeZBType[69]= 1	MoHeZBLV[69]= 35	MoHeZBJob[69]= 4
	MoHeZBID[70]= 0706	MoHeZBType[70]= 4	MoHeZBLV[70]= 35	MoHeZBJob[70]= 4
	MoHeZBID[71]= 0713	MoHeZBType[71]= 4	MoHeZBLV[71]= 35	MoHeZBJob[71]= 5
	MoHeZBID[72]= 0726	MoHeZBType[72]= 3	MoHeZBLV[72]= 35	MoHeZBJob[72]= 5
	MoHeZBID[73]= 0471	MoHeZBType[73]= 1	MoHeZBLV[73]= 40	MoHeZBJob[73]= 9
	MoHeZBID[74]= 0476	MoHeZBType[74]= 2	MoHeZBLV[74]= 40	MoHeZBJob[74]= 8
	MoHeZBID[75]= 0486	MoHeZBType[75]= 1	MoHeZBLV[75]= 40	MoHeZBJob[75]= 12
	MoHeZBID[76]= 0517	MoHeZBType[76]= 1	MoHeZBLV[76]= 40	MoHeZBJob[76]= 16
	MoHeZBID[77]= 0529	MoHeZBType[77]= 4	MoHeZBLV[77]= 40	MoHeZBJob[77]= 16
	MoHeZBID[78]= 0543	MoHeZBType[78]= 3	MoHeZBLV[78]= 40	MoHeZBJob[78]= 14
	MoHeZBID[79]= 0546	MoHeZBType[79]= 3	MoHeZBLV[79]= 40	MoHeZBJob[79]= 13
	MoHeZBID[80]= 0566	MoHeZBType[80]= 4	MoHeZBLV[80]= 40	MoHeZBJob[80]= 14
	MoHeZBID[81]= 0568	MoHeZBType[81]= 4	MoHeZBLV[81]= 40	MoHeZBJob[81]= 13
	MoHeZBID[82]= 0647	MoHeZBType[82]= 1	MoHeZBLV[82]= 40	MoHeZBJob[82]= 9
	MoHeZBID[83]= 0652	MoHeZBType[83]= 2	MoHeZBLV[83]= 40	MoHeZBJob[83]= 8
	MoHeZBID[84]= 0662	MoHeZBType[84]= 1	MoHeZBLV[84]= 40	MoHeZBJob[84]= 12
	MoHeZBID[85]= 0693	MoHeZBType[85]= 1	MoHeZBLV[85]= 40	MoHeZBJob[85]= 16
	MoHeZBID[86]= 0705	MoHeZBType[86]= 4	MoHeZBLV[86]= 40	MoHeZBJob[86]= 16
	MoHeZBID[87]= 0719	MoHeZBType[87]= 3	MoHeZBLV[87]= 40	MoHeZBJob[87]= 14
	MoHeZBID[88]= 0722	MoHeZBType[88]= 3	MoHeZBLV[88]= 40	MoHeZBJob[88]= 13
	MoHeZBID[89]= 0742	MoHeZBType[89]= 4	MoHeZBLV[89]= 40	MoHeZBJob[89]= 14
	MoHeZBID[90]= 0744	MoHeZBType[90]= 4	MoHeZBLV[90]= 40	MoHeZBJob[90]= 13
	MoHeZBID[91]= 0477	MoHeZBType[91]= 2	MoHeZBLV[91]= 45	MoHeZBJob[91]= 8
	MoHeZBID[92]= 0478	MoHeZBType[92]= 1	MoHeZBLV[92]= 45	MoHeZBJob[92]= 9
	MoHeZBID[93]= 0491	MoHeZBType[93]= 1	MoHeZBLV[93]= 45	MoHeZBJob[93]= 12
	MoHeZBID[94]= 0518	MoHeZBType[94]= 1	MoHeZBLV[94]= 45	MoHeZBJob[94]= 16
	MoHeZBID[95]= 0532	MoHeZBType[95]= 4	MoHeZBLV[95]= 45	MoHeZBJob[95]= 16
	MoHeZBID[96]= 0538	MoHeZBType[96]= 4	MoHeZBLV[96]= 45	MoHeZBJob[96]= 14
	MoHeZBID[97]= 0551	MoHeZBType[97]= 3	MoHeZBLV[97]= 45	MoHeZBJob[97]= 14
	MoHeZBID[98]= 0554	MoHeZBType[98]= 3	MoHeZBLV[98]= 45	MoHeZBJob[98]= 13
	MoHeZBID[99]= 0564	MoHeZBType[99]= 4	MoHeZBLV[99]= 45	MoHeZBJob[99]= 13
	MoHeZBID[100]= 0653	MoHeZBType[100]= 2	MoHeZBLV[100]= 45	MoHeZBJob[100]= 8
	MoHeZBID[101]= 0654	MoHeZBType[101]= 1	MoHeZBLV[101]= 45	MoHeZBJob[101]= 9
	MoHeZBID[102]= 0667	MoHeZBType[102]= 1	MoHeZBLV[102]= 45	MoHeZBJob[102]= 12
	MoHeZBID[103]= 0694	MoHeZBType[103]= 1	MoHeZBLV[103]= 45	MoHeZBJob[103]= 16
	MoHeZBID[104]= 0708	MoHeZBType[104]= 4	MoHeZBLV[104]= 45	MoHeZBJob[104]= 16
	MoHeZBID[105]= 0714	MoHeZBType[105]= 4	MoHeZBLV[105]= 45	MoHeZBJob[105]= 14
	MoHeZBID[106]= 0727	MoHeZBType[106]= 3	MoHeZBLV[106]= 45	MoHeZBJob[106]= 14
	MoHeZBID[107]= 0730	MoHeZBType[107]= 3	MoHeZBLV[107]= 45	MoHeZBJob[107]= 13
	MoHeZBID[108]= 0740	MoHeZBType[108]= 4	MoHeZBLV[108]= 45	MoHeZBJob[108]= 13
	MoHeZBID[109]= 0475	MoHeZBType[109]= 1	MoHeZBLV[109]= 50	MoHeZBJob[109]= 9
	MoHeZBID[110]= 0488	MoHeZBType[110]= 1	MoHeZBLV[110]= 50	MoHeZBJob[110]= 12
	MoHeZBID[111]= 0521	MoHeZBType[111]= 1	MoHeZBLV[111]= 50	MoHeZBJob[111]= 16
	MoHeZBID[112]= 0531	MoHeZBType[112]= 4	MoHeZBLV[112]= 50	MoHeZBJob[112]= 16
	MoHeZBID[113]= 0545	MoHeZBType[113]= 3	MoHeZBLV[113]= 50	MoHeZBJob[113]= 14
	MoHeZBID[114]= 0547	MoHeZBType[114]= 3	MoHeZBLV[114]= 50	MoHeZBJob[114]= 13
	MoHeZBID[115]= 0558	MoHeZBType[115]= 4	MoHeZBLV[115]= 50	MoHeZBJob[115]= 13
	MoHeZBID[116]= 0561	MoHeZBType[116]= 4	MoHeZBLV[116]= 50	MoHeZBJob[116]= 14
	MoHeZBID[117]= 0651	MoHeZBType[117]= 1	MoHeZBLV[117]= 50	MoHeZBJob[117]= 9
	MoHeZBID[118]= 0664	MoHeZBType[118]= 1	MoHeZBLV[118]= 50	MoHeZBJob[118]= 12
	MoHeZBID[119]= 0697	MoHeZBType[119]= 1	MoHeZBLV[119]= 50	MoHeZBJob[119]= 16
	MoHeZBID[120]= 0707	MoHeZBType[120]= 4	MoHeZBLV[120]= 50	MoHeZBJob[120]= 16
	MoHeZBID[121]= 0721	MoHeZBType[121]= 3	MoHeZBLV[121]= 50	MoHeZBJob[121]= 14
	MoHeZBID[122]= 0723	MoHeZBType[122]= 3	MoHeZBLV[122]= 50	MoHeZBJob[122]= 13
	MoHeZBID[123]= 0734	MoHeZBType[123]= 4	MoHeZBLV[123]= 50	MoHeZBJob[123]= 13
	MoHeZBID[124]= 0737	MoHeZBType[124]= 4	MoHeZBLV[124]= 50	MoHeZBJob[124]= 14
	MoHeZBID[125]= 0479	MoHeZBType[125]= 1	MoHeZBLV[125]= 55	MoHeZBJob[125]= 9
	MoHeZBID[126]= 0492	MoHeZBType[126]= 1	MoHeZBLV[126]= 55	MoHeZBJob[126]= 12
	MoHeZBID[127]= 0519	MoHeZBType[127]= 1	MoHeZBLV[127]= 55	MoHeZBJob[127]= 16
	MoHeZBID[128]= 0533	MoHeZBType[128]= 4	MoHeZBLV[128]= 55	MoHeZBJob[128]= 16
	MoHeZBID[129]= 0539	MoHeZBType[129]= 4	MoHeZBLV[129]= 55	MoHeZBJob[129]= 14
	MoHeZBID[130]= 0552	MoHeZBType[130]= 3	MoHeZBLV[130]= 55	MoHeZBJob[130]= 14
	MoHeZBID[131]= 0555	MoHeZBType[131]= 3	MoHeZBLV[131]= 55	MoHeZBJob[131]= 13
	MoHeZBID[132]= 0567	MoHeZBType[132]= 4	MoHeZBLV[132]= 55	MoHeZBJob[132]= 13
	MoHeZBID[133]= 0655	MoHeZBType[133]= 1	MoHeZBLV[133]= 55	MoHeZBJob[133]= 9
	MoHeZBID[134]= 0668	MoHeZBType[134]= 1	MoHeZBLV[134]= 55	MoHeZBJob[134]= 12
	MoHeZBID[135]= 0695	MoHeZBType[135]= 1	MoHeZBLV[135]= 55	MoHeZBJob[135]= 16
	MoHeZBID[136]= 0709	MoHeZBType[136]= 4	MoHeZBLV[136]= 55	MoHeZBJob[136]= 16
	MoHeZBID[137]= 0715	MoHeZBType[137]= 4	MoHeZBLV[137]= 55	MoHeZBJob[137]= 14
	MoHeZBID[138]= 0728	MoHeZBType[138]= 3	MoHeZBLV[138]= 55	MoHeZBJob[138]= 14
	MoHeZBID[139]= 0731	MoHeZBType[139]= 3	MoHeZBLV[139]= 55	MoHeZBJob[139]= 13
	MoHeZBID[140]= 0743	MoHeZBType[140]= 4	MoHeZBLV[140]= 55	MoHeZBJob[140]= 13
	MoHeZBID[141]= 0480	MoHeZBType[141]= 1	MoHeZBLV[141]= 60	MoHeZBJob[141]= 9
	MoHeZBID[142]= 0493	MoHeZBType[142]= 1	MoHeZBLV[142]= 60	MoHeZBJob[142]= 12
	MoHeZBID[143]= 0520	MoHeZBType[143]= 1	MoHeZBLV[143]= 60	MoHeZBJob[143]= 16
	MoHeZBID[144]= 0534	MoHeZBType[144]= 4	MoHeZBLV[144]= 60	MoHeZBJob[144]= 16
	MoHeZBID[145]= 0540	MoHeZBType[145]= 4	MoHeZBLV[145]= 60	MoHeZBJob[145]= 14
	MoHeZBID[146]= 0553	MoHeZBType[146]= 3	MoHeZBLV[146]= 60	MoHeZBJob[146]= 14
	MoHeZBID[147]= 0569	MoHeZBType[147]= 4	MoHeZBLV[147]= 60	MoHeZBJob[147]= 13
	MoHeZBID[148]= 0570	MoHeZBType[148]= 3	MoHeZBLV[148]= 60	MoHeZBJob[148]= 13
	MoHeZBID[149]= 0656	MoHeZBType[149]= 1	MoHeZBLV[149]= 60	MoHeZBJob[149]= 9
	MoHeZBID[150]= 0669	MoHeZBType[150]= 1	MoHeZBLV[150]= 60	MoHeZBJob[150]= 12
	MoHeZBID[151]= 0696	MoHeZBType[151]= 1	MoHeZBLV[151]= 60	MoHeZBJob[151]= 16
	MoHeZBID[152]= 0710	MoHeZBType[152]= 4	MoHeZBLV[152]= 60	MoHeZBJob[152]= 16
	MoHeZBID[153]= 0716	MoHeZBType[153]= 4	MoHeZBLV[153]= 60	MoHeZBJob[153]= 14
	MoHeZBID[154]= 0729	MoHeZBType[154]= 3	MoHeZBLV[154]= 60	MoHeZBJob[154]= 14
	MoHeZBID[155]= 0745	MoHeZBType[155]= 4	MoHeZBLV[155]= 60	MoHeZBJob[155]= 13
	MoHeZBID[156]= 0746	MoHeZBType[156]= 3	MoHeZBLV[156]= 60	MoHeZBJob[156]= 13
	return 156
end
function GiveMoHeJiPiao (role)
	local MoHeJPID = {}
	MoHeJPID[1]=0332
	MoHeJPID[2]=0563
	MoHeJPID[3]=0583
	MoHeJPID[4]=3831
	MoHeJPID[5]=3832
	MoHeJPID[6]=3833
	MoHeJPID[7]=4602
	MoHeJPID[8]=4603
	MoHeJPID[9]=4604
	local a = math.random(1,9)
	GiveItem(role , 0,MoHeJPID[a],math.floor((a-1)/3)+1,4 )
	return MoHeJPID[a]
end


function GiveMoHeExp (role,per)
	local a = math.random(1,2)
	if a == 2 then 	
		AddExpRealPer(role,per)
	elseif a == 1 then 
		local lv =GetChaAttr (role , ATTR_LV)
		lv = math.floor(lv/10)
		if lv >= 6 then 
			lv = 5
		end
		if lv <=0 then 
			return 
		end
		local MoHeExp ={}
		MoHeExp[1]=7000				
		MoHeExp[2]=50000
		MoHeExp[3]=220000
		MoHeExp[4]=750000
		MoHeExp[5]=2550000
		AddExp(role,0,per*MoHeExp[lv],per*MoHeExp[lv])
	end
	return "exp"
end

function GiveMoHeHF (role,num)
	local MoHeHFID ={}
	local MoHeHFNum = {}
	MoHeHFID[1]=1848	MoHeHFNum[1]=12
	MoHeHFID[2]=1849	MoHeHFNum[2]=4
	MoHeHFID[3]=6203	MoHeHFNum[3]=2
	local lv = GetChaAttr (role , ATTR_LV)
	lv = math.floor((lv-1 )/ 15)
	if lv <1 or lv>3 then 
		lv =1 
	end
	GiveItem(role , 0 ,MoHeHFID[lv],MoHeHFNum[lv]*num,4)
	return MoHeHFID[lv]
end

function GiveMoHeSP(role)
	local 	MoHeSPID = {}
	MoHeSPID[1]=6342
	MoHeSPID[2]=3077
	MoHeSPID[3]=935
	local ran = 1
	local a = math.random(1,10)
	if a > 5 and a <= 9 then
		ran = 2
	elseif a > 9 then
		ran = 3
	end	
	GiveItem(role , 0 ,MoHeSPID[ran],1,4)
	return	MoHeSPID[ran]
end 

function AddExpRealPer ( role , per,exp )
	if exp == nil then 
		exp = 0 
	end
	local lv = GetChaAttr (role ,ATTR_LV)
	local cexp = GetChaAttr (role ,ATTR_CEXP)
	local cper = (cexp- GetExp[lv] )/(GetExp[lv+1] - GetExp[lv] )
	local nper = cper+per
	local nper1 = math.floor (nper)
	local nper2 = nper-math.floor (nper)
	local nexp = cexp
	if lv+nper1 >= 120 then 
		nper1 = 120- lv
	end
	-- if lv+nper1 >= 80 and lv <80 then
		-- nexp = GetExp[80]+(GetExp[lv+nper1]-GetExp[80]+nper2*(GetExp[lv+nper1+1]-GetExp[lv+nper1]))*50
	-- else
	if lv+nper1 >= 80 and lv >=80 then 
		nexp = ( GetExp[lv+nper1]+nper2*(GetExp[lv+nper1+1]-GetExp[lv+nper1])) *50-cexp*49
	else 
		nexp = GetExp[lv+nper1]+nper2*(GetExp[lv+nper1+1]-GetExp[lv+nper1])
	end
	local addexp = nexp- cexp
	if addexp >= 4294967296 then 
		local name = GetChaDefaultName (role )
		LG ("exp_error","玩家： ",name," 在获取经验值时，经验值异常，一次性超过4294967295，超过部分为 : ", addexp-4294967296)
		SystemNotice(role,"一次性获得经验值过大，超过4294967296，只给予4294967295的经验值。如有疑问请截图、联系客服。")
		addexp = 4294967295
	end
	AddExp(role , 0 ,addexp,addexp )
end
function Attr1To2(num)
	local num1 =math.floor( num/32768)
	local num2 = math.mod(num,32768)
	return num1,num2
end
function Attr2To1(num1,num2)
	return num1*32768+num2
end

function XZKcheck(role, now_tick)--------------检测是否有星座卡
	local item_xzk = GetChaItem(role, 2, 3)
		if item_xzk == nil then 
			return 0
		end	
		local xzk_id = GetItemID(item_xzk)
		if xzk_id >= 5882 and xzk_id <= 5893 then
			return 1
			else
			SystemNotice( role , "请检查背包第四格是否装备了星座卡")
			return 0
		end
end

--新年水饺兑换1
function JZcheck1(role)
	local JZMJ_Num = CheckBagItem( role,6593 )
	if JZMJ_Num ~= 1 then
		SystemNotice( role , "你身上没有饺子秘籍或者饺子秘籍超过一本！")
		return 0
	end
	local JZMJ_Num1 = GetChaItem2( role , 2 , 6593 )
	local JZPoint = GetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR)
	if JZPoint > 494 then
		SystemNotice( role , "您手艺精湛可以制作更好吃的水饺")
		return 0
	else
		return 1
	end
end

--新年水饺兑换2
function JZcheck2(role)
	local JZMJ_Num = CheckBagItem( role,6593 )
	if JZMJ_Num ~= 1 then
		SystemNotice( role , "你身上没有饺子秘籍或者饺子秘籍超过一本！")
		return 0
	end
	local JZMJ_Num1 = GetChaItem2( role , 2 , 6593 )
	local JZPoint = GetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR)
	if  JZPoint > 2474  then
		SystemNotice( role , "您手艺精湛可以制作更好吃的水饺")
		return 0
	elseif JZPoint < 494 then
		SystemNotice( role , "您手艺粗糙不足以制作好吃的水饺")
		return 0		
	else
		return 1
	end
end

--新年水饺兑换3
function JZcheck3(role)
	local JZMJ_Num = CheckBagItem( role,6593 )
	if JZMJ_Num ~= 1 then
		SystemNotice( role , "你身上没有饺子秘籍或者饺子秘籍超过一本！")
		return 0
	end
	local JZMJ_Num1 = GetChaItem2( role , 2 , 6593 )
	local JZPoint = GetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR)
	if JZPoint > 7523 then
		SystemNotice( role , "您手艺精湛可以制作更好吃的水饺")
		return 0
	elseif JZPoint < 2474 then
		SystemNotice( role , "您手艺粗糙不足以制作好吃的水饺")
		return 0	
	else
		return 1
	end
end

--新年水饺兑换4
function JZcheck4(role)
	local JZMJ_Num = CheckBagItem( role,6593 )
	if JZMJ_Num ~= 1 then
		SystemNotice( role , "你身上没有饺子秘籍或者饺子秘籍超过一本！")
		return 0
	end
	local JZMJ_Num1 = GetChaItem2( role , 2 , 6593 )
	local JZPoint = GetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR)
	if JZPoint > 17324 then
		local JZPoint_X = 17325
		SetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR,JZPoint_X)
		return 1
	elseif JZPoint < 7523 then
		SystemNotice( role , "您手艺粗糙不足以制作好吃的水饺")
		return 0	
	else
		return 1
	end
end

--饺子兑换成功
function JZAction1(role)
	local JZMJ_Num1 =  GetChaItem2 ( role , 2 , 6593 )
	local JZPoint = GetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR)
	local JZPoint_X=JZPoint+99
	SetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR,JZPoint_X)
	SynChaKitbag(role,13)
	return 1
end

function JZAction2(role)
	local JZMJ_Num1 =  GetChaItem2 ( role , 2 , 6593 )
	local JZPoint = GetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR)
	local JZPoint_X=JZPoint+198
	SetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR,JZPoint_X)
	SynChaKitbag(role,13)
	return 1
end

function JZAction3(role)
	local JZMJ_Num1 =  GetChaItem2 ( role , 2 , 6593 )
	local JZPoint = GetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR)
	local JZPoint_X=JZPoint+297
	SetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR,JZPoint_X)
	SynChaKitbag(role,13)
	return 1
end

function JZAction4(role)
	if JZPoint_X == 17325 then
		return 1
	else
		local JZMJ_Num1 =  GetChaItem2 ( role , 2 , 6593 )
		local JZPoint = GetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR)
		local JZPoint_X=JZPoint+396
		SetItemAttr ( JZMJ_Num1 , ITEMATTR_VAL_STR,JZPoint_X)
		SynChaKitbag(role,13)
	end
	return 1
end

-----------------------酒检查
function Jiu_Check(role)
	local Jiu = GetChaItem(role, 2, 1)
	local Jiu_ID = GetItemID (Jiu)
		if Jiu_ID == 2967 then
		local ENERGY = GetItemAttr(Jiu, ITEMATTR_ENERGY)
			if ENERGY == 0 then
				return 1
			end
		elseif	Jiu_ID == 6379 then 
		return 1
		else
		SystemNotice ( role, "特别提醒：路易十六或者耐久为0的红酒必须放置在背包的第二格。" ) 
		return 0
	end	
end

function Jiu_Action(role)
	local Jiu = GetChaItem(role, 2, 1)
	local Jiu_ID = GetItemID (Jiu)
	if Jiu_ID == 2967 then
		TakeItem ( role, 0, 2967 ,1 )
	local a = math.random(1,100)
		if a <= 10 then
			SetRecord( role, 1861 )
			ClearMission( role, 1861 )
			SystemNotice( role, "红酒换消息成功")
			return 1
		else
			SystemNotice( role, "红酒换消息失败")
			return 1
		end
	elseif Jiu_ID == 6379 then
		TakeItem ( role, 0, 6379, 1 )
	local b = math.random(1,100)
		if b <= 20 then
			SetRecord( role, 1861 )
			ClearMission( role, 1861 )
			SystemNotice( role, "路易十六换消息成功")
			return 1
		else
			SystemNotice( role, "路易十六换消息失败")
			return 1
		end
	end
end

------------红酒计时器
function Rwine_freq(role,now_tick)
	local Rwine_Num = CheckBagItem( role, 2967 )
	if Rwine_Num < 1 then
		return
	else
	local Rwine = GetChaItem ( role , 2 , 1  ) --取角色背包第二栏的指针
	local Rwine_ID= GetItemID (Rwine)				--取该指针的道具ID		
	if Rwine_ID == 2967 then				--如果道具ID为2967那么
		local ENERGY = GetItemAttr(Rwine, ITEMATTR_ENERGY)			--取该道具的当前耐久
		local ENERGY_resume = 1			--设置每分钟扣取值为1
			if ENERGY <= 0 then
				ENERGY = 0
			end
			if ENERGY ==0 then			--如果耐久为0
				SystemNotice ( role , "红酒耐久已为0,正是酒香浓郁时" )
	 		else 					--如果耐久不为0
				ENERGY = ENERGY - ENERGY_resume  		--得出扣除后的实际值
				SetItemAttr(Rwine, ITEMATTR_ENERGY, ENERGY )			--那么设置道具的当前耐久为扣除后的实际值  URE
			end		
		end
	end
end
---新竞技场数据结构
--排队队列
function GetJJCInfoRole(role)
	local teamlv = GetTeamLV(role)
	local i =0 
	local PeoperNum= 1 
	local teamrole = {}
	teamrole[0]= role 
	for i = 0, 3, 1 do 
		teamrole[i+1] = GetTeamCha(role, i)
		if ValidCha(teamrole[i+1]) == 1 then
			PeoperNum= PeoperNum+1
		end
	end
	local roleID = GetRoleID(role)
	local teamNum = 0 
	local a = 0 
	local b = 0 
	local c = 0 
	for a = 1 , 3 , 1 do	
		for b = 1 ,JJCteam[a].lv[teamlv].count ,1  do 
			for  c = 1 , JJCteam[a].players ,1 do
				if ValidCha(JJCteam[a].lv[teamlv].team[b].teamment[c-1])~=0 and JJCteam[a].lv[teamlv].team[b].teamment[c-1]== roleID then
					teamNum = a
				end
			end
		end
	end
	for a = 1 , 3 , 1 do	
		for b = 1 ,2 ,1  do 
			for  c = 1 , JJCteam[a].players ,1 do
				if JJCteam[a].lv[teamlv].InTeam[b].InTeamment[c-1]== roleID then
					teamNum = a
				end
			end
		end
	end
	if teamNum == 0 then 
		for a = 1,3,1 do 
			if JJCteam[a].players  == PeoperNum then 
				teamNum = a 
			end
		end
	end
	return teamNum,teamlv,PeoperNum
end

function CheckTeam(role)  --检查排队的队伍是否符合条件
	local TeamLeadName = GetChaDefaultName (role)
	local teamlv = GetTeamLV(role)

	if teamlv == 0 then
		return "你的队伍等级太低不能参加竞技场"
	end
	local i =0 
	local PeoperNum= 1 
	local teamrole = {}
	teamrole[0]= role 
	local teammentNum = 1 
	for i = 0, 3, 1 do 
		teamrole[i+1] = GetTeamCha(role, i)
		if ValidCha(teamrole[i+1]) == 1 then
			PeoperNum= PeoperNum+1
		end
		if ValidCha(teamrole[i+1]) == 1 then 
			teammentNum = i+2
		end
		if teammentNum ~= PeoperNum then 
		return "你的队伍不在同一个地图，请集合队员再排队。" 
		end
	end

	if PeoperNum ~=  JJCteam[1].players and PeoperNum~=JJCteam[2].players and  PeoperNum~=JJCteam[3].players then
		
		return "你的队伍人数不符合参加竞技场的人数,你的队伍不能参加竞技场。只有队伍人数为"..JJCteam[1].players.."、"..JJCteam[2].players.."或者"..JJCteam[3].players.."时才能参加竞技场。"
	end

	local job= {}
	for i = 0, PeoperNum -1, 1 do
		local TeammentName = GetChaDefaultName (teamrole[i])
		local TeamLeadName = GetChaDefaultName (role)
		local TeamNotice = "你的队友"..TeammentName
		if TeammentName == TeamLeadName then
			TeamNotice = "你"
		end
		local	role_lv = GetTeamLV(teamrole[i])
		if role_lv~= teamlv then
			return "你的队友"..TeammentName.."与你的等级不在同一个级别,你的队伍不能参加竞技场。" 
		end
		if CheckJJCItem(teamrole[i]) == 0 then
			return TeamNotice.."没有竞技场之证,你的队伍不能参加竞技场" 
		end	
		job[i] = GetChaAttr ( teamrole[i] , ATTR_JOB)
		if job[i] < 8 then
			return TeamNotice.."没有二次转职,你的队伍不能参加竞技场" 
		end
	end
	local JobCheck = 1 
	local JobArg = math.floor (PeoperNum /5)
	local j = 0 
	local reJob = 0
	for i = 0 , PeoperNum -2, 1  do 
		for j = i+1, PeoperNum -1 , 1 do
			if job[i] == job[j] then
				reJob = reJob+1 
			end
		end
	end
	if reJob > JobArg then
		local falsenum = PeoperNum - JobArg 
		return "你的队伍中没有 "..falsenum.." 种不同的职业，不能参加"..PeoperNum.."人竞技场。"  
	end	
	local ret = CanPaiDui(role,PeoperNum)

	return ret 
end
function JJCiSReady(role)
	local teamNum,teamlv,PeoperNum = GetJJCInfoRole(role)
	JJCPaiDui(role,teamNum)
	JJCReady(teamNum,teamlv)
	return LUA_TRUE
end
function CheckJJCItem(role)		--检查玩家是否有参赛卡
	local JJCItem = CheckBagItem (role , 6066)
	if JJCItem~= 1 then
		return 0 
	end
	return 1
end
function GetTeamLV(role)  				--3 :40-59;4:60-79;5:80以上；0 不能参加竞技场
	local	role_lv = GetChaAttr (role , ATTR_LV)
	if role_lv>= 40 and role_lv<60 then
		return 3
	elseif role_lv>= 60 and role_lv<80 then
		return 4
	elseif role_lv>= 80 then
		return 5
	else
		return 0 
	end
end 	
function JJCPaiDui(role,teamNum) -- 排队时吧队伍添加到相应的数组中
	local teamlv = GetTeamLV(role)
	JJCteam[teamNum].lv[teamlv].count=JJCteam[teamNum].lv[teamlv].count+1
	JJCteam[teamNum].lv[teamlv].team[JJCteam[teamNum].lv[teamlv].count]={}
	JJCteam[teamNum].lv[teamlv].team[JJCteam[teamNum].lv[teamlv].count].teamment={}
	JJCteam[teamNum].lv[teamlv].team[JJCteam[teamNum].lv[teamlv].count].teamment[0]= GetRoleID(role)
	SystemNotice(role, "你的队伍已排好队伍。在你的前面还有"..(JJCteam[teamNum].lv[teamlv].count-1).."支队伍在等待比赛")
	for i = 1 , JJCteam[teamNum].players- 1  , 1 do 
		JJCteam[teamNum].lv[teamlv].team[JJCteam[teamNum].lv[teamlv].count].teamment[i]= GetRoleID(GetTeamCha(role, i-1))
		SystemNotice(GetTeamCha(role, i-1), "你的队伍已排好队伍。在你的前面还有"..(JJCteam[teamNum].lv[teamlv].count-1).."支队伍在等待比赛")
	end
end 
function CheckATeamTreeAll(teamlv)
	CheckATeamTree(1,teamlv)
	CheckATeamTree(2,teamlv)
	CheckATeamTree(3,teamlv)
end
function CanPaiDui(role,Playerments) --检查是否已经排队
	local teamlv = GetTeamLV(role)
	local teamNum = 0 
	local i = 0 
	for i = 1 , 3 , 1 do 
		if JJCteam[i].players == Playerments then
			teamNum = i 
		end
	end
	CheckATeamTreeAll(teamlv)
	local roleid= GetRoleID(role)
	if JJCteam[teamNum].lv[teamlv].open == 0 then
		local a ={}
		a[1]= "二人"
		a[2]="三人"
		a[3]="五人"
		local b ={}
		b[3]="低级"
		b[4]="中级"
		b[5]="高级"
		return "对不起,现在"..b[teamlv]..a[teamNum].."竞技场必须有玩家才能排队。请去"..b[teamlv]..a[teamNum].."竞技场重新排队。"
	end
	if JJCteam[teamNum].lv[teamlv].count == 0 then
		return LUA_TRUE
		
	end
	for i = 1,JJCteam[teamNum].lv[teamlv].count,1 do
		local j = 0 
		for j = 0 , Playerments- 1 ,1 do 
			if roleid == JJCteam[teamNum].lv[teamlv].team[i].teamment[j] then
				return "你的队伍已经在队列中，请不要重复排队。"
			end
		end
	end
	return LUA_TRUE
end
function CheckAJJCDate(teamNum,teamlv,Becount) --检查队列中是否有无效队伍
	LG("JJCLLOGG","开始检查第",Becount,"只队伍。 竞技场为starena"..teamNum..teamlv)
	local isValue = 1 
	local j = 0
	if JJCteam[teamNum].lv[teamlv].count == 0 then 
		LG("JJCLLOGG","该竞技场没有队伍。 竞技场为starena"..teamNum..teamlv)
		return 1
	end	
	for j = 1 , JJCteam[teamNum].players ,1 do 
		if JJCteam[teamNum].lv[teamlv].team[Becount].teamment[j-1]== 0 then
			LG("JJCLLOGG","该队伍的第",j, "个数据为0 无效。 竞技场为starena"..teamNum..teamlv)
			return 0  
		end
		local role = GetRolebyIDX(JJCteam[teamNum].lv[teamlv].team[Becount].teamment[j-1])
		if ValidCha(role)== 0 then
			LG("JJCLLOGG","该队伍的第",j, "个角色不在线 无效。 竞技场为starena"..teamNum..teamlv)
			return 0 
		end
	end
	if isValue == 1 then
		local role = GetRolebyIDX(JJCteam[teamNum].lv[teamlv].team[Becount].teamment[0])
		local teamrole = {}
		teamrole[0]= role
		local i = 0 
		for i = 0 ,JJCteam[teamNum].players-2 ,1 do
			teamrole [i+1] = GetTeamCha(role, i)
			if JJCteam[teamNum].lv[teamlv].team[Becount].teamment[i+1]~= GetRoleID(teamrole[i+1]) then
				LG("JJCLLOGG","该队伍的第",i+1, "个角色与存储的数据不同 无效。 竞技场为starena"..teamNum..teamlv)
				return 0
			end
		end
	end
	LG("JJCLLOGG","该队伍的有效性为",isValue,"。 竞技场为starena"..teamNum..teamlv)
	return isValue
end
function RemoveATeam(teamNum,teamlv,Becount)	--移除队列中一个队伍，并重新排序
	LG("JJCLLOGG","开始移除第",Becount,"只队伍。 竞技场为starena"..teamNum..teamlv)
	local i = 0 
	if JJCteam[teamNum].lv[teamlv].count==Becount then
		LG("JJCLLOGG","这是最后一支队伍。 竞技场为starena"..teamNum..teamlv)
		local j = 0 
		for j = 1 , JJCteam[teamNum].players , 1 do 
			LG("JJCLLOGG","移除第",j,"个人。 竞技场为starena"..teamNum..teamlv)
			JJCteam[teamNum].lv[teamlv].team[Becount].teamment[j-1] = 0
		end
	else
		for i= Becount  ,  JJCteam[teamNum].lv[teamlv].count-1 , 1 do 
			LG("JJCLLOGG","现在开始把第",i+1,"支队伍的信息移到第",i,"支队伍。 竞技场为starena"..teamNum..teamlv)
			local j = 0 
			for j = 1 , JJCteam[teamNum].players , 1 do 
					LG("JJCLLOGG","这是第",j,"个人的信息。 竞技场为starena"..teamNum..teamlv)
				JJCteam[teamNum].lv[teamlv].team[i].teamment[j-1] =  JJCteam[teamNum].lv[teamlv].team[i+1].teamment[j-1]
			end
		end
	end
	JJCteam[teamNum].lv[teamlv].count= JJCteam[teamNum].lv[teamlv].count -1 
		LG("JJCLLOGG","移除完毕现在队伍数为",JJCteam[teamNum].lv[teamlv].count,"。 竞技场为starena"..teamNum..teamlv)
end
function CheckATeamTreeRound1(teamNum,teamlv,pTemp) --检查队列中的一个队伍是否有效，如果无效则删除队伍，重新排列，直到队列中该队列编号的队伍为有效队伍
	LG("JJCLLOGG","检测第",pTemp,"只队伍的有效性.","竞技场为starena"..teamNum..teamlv)
	local IsValue= CheckAJJCDate(teamNum,teamlv,pTemp)
	LG("JJCLLOGG","第",pTemp,"只队伍的有效性为:",IsValue,"  竞技场为starena"..teamNum..teamlv)
	if IsValue == 0 then 
		LG("JJCLLOGG","第",pTemp,"只队伍无效。 竞技场为starena"..teamNum..teamlv)
		RemoveATeam(teamNum,teamlv,pTemp)
		CheckATeamTreeRound1(teamNum,teamlv,pTemp) 
	end
	LG("JJCLLOGG","检测完毕………………………………")
end
function CheckATeamTreeRound2(teamNum,teamlv,pTemp)
	if pTemp <= JJCteam[teamNum].lv[teamlv].count then
	LG("JJCLLOGG","开始检测第",pTemp,"只队伍.","竞技场为starena"..teamNum..teamlv)
		LG("JJCLLOGG","开始检测………………………………")
		CheckATeamTreeRound1(teamNum,teamlv,pTemp)
		pTemp = pTemp+1
		CheckATeamTreeRound2(teamNum,teamlv,pTemp)
	end
end
function CheckATeamTree(teamNum,teamlv) --检查队列中所有队伍是否有效，如果有无效队伍则删除，重新排序，知道队列中队伍全部是有效队伍
	LG("JJCLLOGG","----------------------starena"..teamNum..teamlv,"----------------------------------------------")
	LG("JJCLLOGG","开始检测队伍*******","竞技场为starena"..teamNum..teamlv)
	local pTemp = 1 
	CheckATeamTreeRound2(teamNum,teamlv,pTemp)
	LG("JJCLLOGG","检测队伍完毕*******","竞技场为starena"..teamNum..teamlv)
end
function CanEntryAJJC(teamNum,teamlv)		--检查是否能把前2支队伍传送入竞技场
	
	CheckATeamTree(teamNum,teamlv)
	local IsValue = 0 
	if JJCteam[teamNum].lv[teamlv].count>= 2 and JJCteam[teamNum].lv[teamlv].state== 0 then
		IsValue = 1
	end
	return IsValue
end
function JJCReady(teamNum,teamlv)		--竞技场准备
	
	
	local ret = CanEntryAJJC(teamNum,teamlv)
	
	if ret == 0 then
		return 
	end

	JJCteam[teamNum].lv[teamlv].notice = 5
end	
function CanInAJJC(teamNum,teamlv)			--队伍1未准备好返回-1 队伍2未准备好返回 -2 都没准备好返回-3 都准备好了返回1
	local ret1= CheckAJJCDate(teamNum,teamlv,1)*CheckCanMove(teamNum,teamlv,1)
	local ret2=CheckAJJCDate(teamNum,teamlv,2)*CheckCanMove(teamNum,teamlv,2)
	if ret1 ==0 and  ret2== 0 then 
		return -3
	end
	if ret1 ==0  then 
		return -1
	end
	if ret2 ==0  then 
		return -2
	end
	return 1
end
function NoEntryJJC(teamNum,teamlv,ret)  --倒计时结束时不能进入竞技场的操作
	LG("JJCLLOGG","传送发生错误。 竞技场为starena"..teamNum..teamlv)
	LG("JJCLLOGG","错误号为",ret,"。 竞技场为starena"..teamNum..teamlv)
	local role 
	if ret == -1 or  ret == -2 then 
		local Becount = -ret
		local j = 0 
		for j = 1 , JJCteam[teamNum].players  , 1 do 
			role = GetRolebyIDX(JJCteam[teamNum].lv[teamlv].team[Becount].teamment[j-1])
			if ValidCha(role) ~= 0 then
				SystemNotice(role, "你的队友在倒计时阶段违规,比赛终止。你的队伍被踢出排队队列，请重新排队。")	
			end
		end
		LG("JJCLLOGG","移除掉",Becount,"号队伍 。 竞技场为starena"..teamNum..teamlv)
		RemoveATeam(teamNum,teamlv,Becount)
		LG("JJCLLOGG","移除完毕。 竞技场为starena"..teamNum..teamlv)
		local i = 0 
		for i = 1 , JJCteam[teamNum].players , 1 do 
			role = GetRolebyIDX(JJCteam[teamNum].lv[teamlv].team[1].teamment[i-1])
			if ValidCha(role) ~= 0 then
				SystemNotice(role, "你的对手在倒计时阶段违规,比赛终止。你的队伍置于排队队列首位重新排队。")
			end
		end
	end
	if ret == -3 then
		local i = 0 
		local j = 0 
		for i =1, 2, 1 do
			for j = 1 , JJCteam[teamNum].players  , 1 do 
				role = GetRolebyIDX(JJCteam[teamNum].lv[teamlv].team[i].teamment[j-1])
				if ValidCha(role) ~= 0 then
					SystemNotice(role, "你的队友在倒计时阶段违规,比赛终止。你的队伍被踢出排队队列，请重新排队。")
				end
			end
		end
		LG("JJCLLOGG","移除掉2号队伍 。 竞技场为starena"..teamNum..teamlv)		
		RemoveATeam(teamNum,teamlv,2)
		LG("JJCLLOGG","移除掉1号队伍 。 竞技场为starena"..teamNum..teamlv)		
		RemoveATeam(teamNum,teamlv,1)
	end
	JJCReady(teamNum,teamlv)
end
function CheckCanMove(teamNum,teamlv,Becount) --5秒倒计时结束时，玩家能否进入竞技场
	local j = 0
	local valua = 1 
	local teamrole=  GetRolebyIDX(JJCteam[teamNum].lv[teamlv].team[Becount].teamment[0])
	for j = 0, JJCteam[teamNum].players-1 ,1 do 
		local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].team[Becount].teamment[j])
		if ValidCha(role)== 0 then
			valua =0  
		else
			local TeammentName = GetChaDefaultName (role)
			local TeamLeadName = GetChaDefaultName (teamrole)
			local TeamNotice = "你的队友 "..TeammentName
			if TeammentName == TeamLeadName then
				TeamNotice = "你"
			end
			local State_baitan = GetChaStateLv ( role, STATE_BAT )
			local State_jiaoyi = GetChaStateLv ( role, STATE_JY )
			if State_baitan >= 1 then
				SystemNotice ( teamrole, TeamNotice.."处于摆摊状态,你的队伍不能参加竞技场。")
				valua =0
			end
			if State_jiaoyi >= 1 then
				SystemNotice ( teamrole, TeamNotice.."处于交易状态,你的队伍不能参加竞技场。")
				valua =0
			end
			if valua == 1 then
				AddAMiaoTui (role,-1)
			end
		end
	end
	return valua
end
function EntryJJC(teamNum,teamlv,map_copy)	--进入竞技场的相关数据操作
	local c = 0 
	local d = 0 
	for c = 1 , 2 , 1 do 
		for d = 1 , JJCteam[teamNum].players , 1 do 
			JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = JJCteam[teamNum].lv[teamlv].team[c].teamment[d-1]
		end
	end
	local i= 0
	local j = 0
	for i = 3 ,JJCteam[teamNum].lv[teamlv].count ,1  do 
		for  j = 1 , JJCteam[teamNum].players ,1 do
			if ValidCha(JJCteam[teamNum].lv[teamlv].team[i].teamment[j-1])~=0 then
				local role = GetRolebyID(JJCteam[teamNum].lv[teamlv].team[i].teamment[j-1])
				SystemNotice(role,"新的一场竞技开始了，你现在的队伍位置为：第"..(i-2).."位，祝你好运!")
			end
		end
	end
	RemoveATeam(teamNum,teamlv,2)
	RemoveATeam(teamNum,teamlv,1)
	SendPlayer(teamNum,teamlv,map_copy)
end
function SendPlayer(teamNum,teamlv,map_copy)  --传送玩家
	local c
	local d
	for c = 1 , 2 , 1 do 
		for d = 1 , JJCteam[teamNum].players , 1 do 
			local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] )
			if ValidCha(role) ~= 0 then 
				GoTo( role, JJCteam[teamNum].lv[teamlv].InTeam[c].x, JJCteam[teamNum].lv[teamlv].InTeam[c].y, JJCteam[teamNum].lv[teamlv].InTeam[c].map)
				AddAll (role)
				AddADiaoXian (role, 1)
				RemoveJJCItem(role)
			end
		end
	end
	JJCstart(teamNum,teamlv,map_copy)
	JJCteam[teamNum].lv[teamlv].state = 1
	JJCteam[teamNum].lv[teamlv].starttime = JJCChangeTimeToNumber() 
end
function JJCChangeTimeToNumber()
	local now_hour= os.date("%H")			-------------时
	local now_miniute= os.date("%M")		-------------分
	local now_scend=  os.date("%S")			-------------秒
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_scend= tonumber(now_scend)		-------------秒
	local num = now_hour*3600+now_miniute*60+now_scend
	return num
end
function JJCPendTime (starttime,endtime)
	local PendTime  = endtime- starttime
	if PendTime<0 then
		PendTime = 24*3600+PendTime
	end
	return PendTime
end

function NoticePlayer(teamNum,teamlv,map_copy)		--提示玩家5秒倒计时
	if JJCteam[teamNum].lv[teamlv].notice > 0 then
		local c = 0 
		local d = 0 
		for c = 1 , 2 , 1 do 
			for d = 1 , JJCteam[teamNum].players , 1 do 
				local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].team[c].teamment[d-1])
				if ValidCha(role) ~= 0 then  
					if  JJCteam[teamNum].lv[teamlv].notice == 5 then
						AddAMiaoTui(role,1)
						SystemNotice(role, "你的队伍将于5S后进入竞技场，请停止交易、摆摊，请保持在线，否则你的队伍会被取消资格。")
					end
					SystemNotice(role, "  "..JJCteam[teamNum].lv[teamlv].notice.."!")
				end
			end
		end	
		JJCteam[teamNum].lv[teamlv].notice= JJCteam[teamNum].lv[teamlv].notice -1
		if  JJCteam[teamNum].lv[teamlv].notice == 0 then 
			local ret = CanInAJJC(teamNum,teamlv)
			if ret < 0 then 
				NoEntryJJC(teamNum,teamlv,ret)
			else
				EntryJJC(teamNum,teamlv,map_copy)
			end	
		end
	end
end
----获得积分
function GivePointGS(teamNum,teamlv,point,Retime)  --几号竞技场，竞技场等级，正常时积分，竞技时间(s)
	local dotime = math.floor(Retime/30)*30
	local LVper= math.min((40+(teamlv-3)*30),100)
	local timeper =math.min( math.floor(dotime/JJCarg[teamNum].NorTime*100),100)
	local GivePoint = point*LVper*timeper/10000
	return GivePoint
end 
function GivePoint(teamNum,teamlv,Becount)  --几号竞技场，竞技场等级，队伍
	local Retime = JJCPendTime (JJCteam[teamNum].lv[teamlv].starttime,JJCteam[teamNum].lv[teamlv].endtime)
	local point1 = 	JJCarg[teamNum].NorSucPoint*JJCteam[teamNum].lv[teamlv].InTeam[Becount].win+JJCarg[teamNum].NorFalPoint*(1-JJCteam[teamNum].lv[teamlv].InTeam[Becount].win) 
	local point2 = CheckExPointPer(teamNum,teamlv,Becount)*JJCarg[teamNum].ExPoint/100
	local point = point1+point2
	local realpoint = GivePointGS(teamNum,teamlv,point,Retime)
	realpoint = math.floor(realpoint)
	return  realpoint
end 
function CheckExPointPer(teamNum,teamlv,Becount)   --检查该玩家应该获得的额外积分
	local pointPer = 0 
	if teamNum == 3 then 
		pointPer = JJCteam[teamNum].lv[teamlv].InTeam[Becount].num*100
	else
		local AllPoint=JJCteam[teamNum].lv[teamlv].InTeam[Becount].num+JJCteam[teamNum].lv[teamlv].InTeam[3-Becount].num
		if AllPoint == 0 then 
			return 0 
		end
		pointPer = math.floor(JJCteam[teamNum].lv[teamlv].InTeam[Becount].num*100/AllPoint)
	end
	return pointPer
end

function AddAWin (role)
	local zhzz = GetChaItem2 (role,2,6066)
	if zhzz == nil then
		SystemNotice(role,"你没有竞技场之证。不能进行设置操作。")
		return
	end
	local winBef = GetItemAttr(zhzz ,ITEMATTR_VAL_AGI )
	local winAft =  winBef+ 1
	SetItemAttr(zhzz ,ITEMATTR_VAL_AGI ,winAft)
end
function AddAFalse (role)
	local zhzz = GetChaItem2 (role,2,6066)
	if zhzz == nil then
		SystemNotice(role,"你没有竞技场之证。不能进行设置操作。")
		return
	end
	local winBef = GetItemAttr(zhzz ,ITEMATTR_VAL_DEX )
	local winAft =  winBef+ 1
	SetItemAttr(zhzz ,ITEMATTR_VAL_DEX ,winAft)
end
function AddADiaoXian (role,point)
	local mt,dx = GetJJCMTDX(role)
	dx = dx+point
	SetJJCMTDX(role,mt,dx)
end
function GetJJCMTDX(role)
	local zhzz = GetChaItem2 (role,2,6066)
	if zhzz == nil then
		SystemNotice(role,"你没有竞技场之证。不能进行操作。")
		return 0
	end
	local num = GetItemAttr(zhzz ,ITEMATTR_VAL_STA )
	local mt = 0
	local dx = 0
	mt = math.floor(num/180)
	dx = math.mod(num,180)
	return mt,dx
end
function SetJJCMTDX(role,mt,dx)
	local zhzz = GetChaItem2 (role,2,6066)
	if zhzz == nil then
		SystemNotice(role,"你没有竞技场之证。不能进行操作。")
		return 0
	end
    if mt >=180 then
		mt = 179
	end
	if dx >=180 then
		dx = 179
	end
	local num = mt*180+dx
	SetItemAttr(zhzz ,ITEMATTR_VAL_STA,num )
end
function AddAMiaoTui (role,point)
	local mt,dx = GetJJCMTDX(role)
	mt = mt+point
	SetJJCMTDX(role,mt,dx)
end
function AddAll (role)
	local zhzz = GetChaItem2 (role,2,6066)
	if zhzz == nil then
		SystemNotice(role,"你没有竞技场之证。不能进行设置操作。")
		return
	end
	local winBef = GetItemAttr(zhzz ,ITEMATTR_MAXURE )
	local winAft =  winBef+ 1
	SetItemAttr(zhzz ,ITEMATTR_MAXURE ,winAft)
end
function Checkstate(teamNum,teamlv)
	return JJCteam[teamNum].lv[teamlv].state
end
function Addwin(role , win)
	if win == 1 then 
		AddAWin (role)
	elseif win == 0 then
		AddAFalse (role)
	else 
		AddAFalse (role)
	end
end
function GetRolebyIDX(roleID )
	if roleID>0 then 
		local role = GetRolebyID(roleID)
		return role
	else
		return 0 
	end
end
function CheckPlayerIsIn(teamNum,teamlv)
	local c = 0 
	local d = 0 
	local pos ={}
	pos[1] = 0
	pos[2]= 0
	for c = 1 , 2 , 1 do 
		for d = 1 , JJCteam[teamNum].players , 1 do 
			local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1])
			if ValidCha(role) == 0 then
				if JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1]~= 0 then
					JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = 0 
				end
			elseif  pos[c]  == 0 then
				pos[c] =CheckPlayerIsInJJC(role,teamNum,teamlv )
			end
			-- local PosX= 0
			-- local PosY= 0 
			-- PosX, PosY = GetChaPos(role)
			-- PosX = math.floor(PosX/100)
			-- PosY = math.floor(PosY/100)
			-- local map = GetChaMapName(role)
			-- if map == "starena2"..teamlv then
				-- if pos[c] == 0 and PosX >= 52 and PosY >= 50 and PosX<=76 and PosY<= 77 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 76 and PosY >= 59 and PosX<=83 and PosY<= 68 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 46 and PosY >= 58 and PosX<=52 and PosY<= 67 then
					-- pos[c] = 1
				-- end
			-- end
			-- if map == "starena1"..teamlv then
				-- if pos[c] == 0 and PosX >= 57 and PosY >= 34 and PosX<=70 and PosY<= 52 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 62 and PosY >= 53 and PosX<=65 and PosY<= 65 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 57 and PosY >= 66 and PosX<=70 and PosY<= 83 then
					-- pos[c] = 1
				-- end
			-- end
			-- if map == "starena3"..teamlv then
				-- if pos[c] == 0 and PosX >= 57 and PosY >= 46 and PosX<= 69 and PosY<= 49 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 62 and PosY >= 50 and PosX<= 64 and PosY<= 56 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 56 and PosY >= 56 and PosX<= 70 and PosY<= 70 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 46 and PosY >= 62 and PosX<= 56 and PosY<= 65 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 42 and PosY >= 56 and PosX<= 45 and PosY<= 69 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 61 and PosY >= 70 and PosX<= 63 and PosY<= 77 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 56 and PosY >= 78 and PosX<= 68 and PosY<= 83 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 70 and PosY >= 61 and PosX<= 78 and PosY<= 65 then
					-- pos[c] = 1
				-- elseif pos[c] == 0 and PosX >= 79 and PosY >= 57 and PosX<= 83 and PosY<= 69 then
					-- pos[c] = 1
				-- end
			-- end
		end
	end	
	return pos[1],pos[2]
end
function GetPosPlayerNum(teamNum,teamlv,team)
	local d = 0 
	local pos =0
	for d = 1 , JJCteam[teamNum].players , 1 do 
		local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].InTeam[team].InTeamment[d-1])
		if ValidCha(role) == 0 then
			if JJCteam[teamNum].lv[teamlv].InTeam[team].InTeamment[d-1]~= 0 then
				JJCteam[teamNum].lv[teamlv].InTeam[team].InTeamment[d-1] = 0 
			end 
		else
			local PosX= 0
			local PosY= 0 
			PosX, PosY = GetChaPos(role)
			PosX = math.floor(PosX/100)
			PosY = math.floor(PosY/100)
			if PosX >= 56 and PosY >= 56 and PosX<=72 and PosY<=72 then
				pos = pos+1
			end
		end
	end
	return pos
end
function CheckPlayerPos(teamNum,teamlv)
	local c = 0 
	local d = 0 
	local pos ={}
	pos[1] = 0
	pos[2]= 0
	for c = 1 , 2 , 1 do 
		for d = 1 , JJCteam[teamNum].players , 1 do 
			local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1])
			if ValidCha(role) == 0 then
				if JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1]~= 0 then
					JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = 0 
				end 
				return
			end
			local PosX= 0
			local PosY= 0 
			PosX, PosY = GetChaPos(role)
			if pos[c] == 0 and PosX >= 5500 and PosY >= 5600 and PosX<=7100 and PosY<=7100 then
				pos[c] = 1
			end
		end
	end
	return pos[1],pos[2]
end
function SystemNoticeAll(Notice,teamNum,teamlv)
	local c = 0 
	local d = 0 
	for c = 1 , 2 , 1 do 
		for d = 1 , JJCteam[teamNum].players , 1 do 
			local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1])
			if ValidCha(role) == 0 then
				if JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1]~= 0 then
					JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = 0 
				end
				return
			end
			SystemNotice( role , Notice)
		end	
	end
end
function CheckPlayerTeam(role,teamNum,teamlv)
	local roleID = GetRoleID(role)
	local c = 0 
	local d = 0 
	for c = 1 , 2 , 1 do 
		for d = 1 , JJCteam[teamNum].players , 1 do 
			if roleID == JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] then
				return c , d-1
			end
		end	
	end
	return 0
end
function IsPlayerInJJCMap(role)
	local map = GetChaMapName(role)
	local teamNum = 0 
	local teamlv = 0 
	local a = 0
	local b = 0 
	local c = 0 
	local d = 0 
	if string.find(map, "starena") ~= nil then
		local team = string.gsub(map,"starena","")
		teamNum= math.floor(tonumber(team)/10 )
		teamlv = math.mod(tonumber(team),10 )
	end
	if teamNum == 0 then 
		return 0 
	end
	return teamNum,teamlv
end
function IsPlayerInJJC(role)
	if  IsPlayerInJJCMap(role) == 0then 
		return 0 
	end
	local teamNum,teamlv = IsPlayerInJJCMap(role)
	if CheckPlayerTeam(role,teamNum,teamlv) == 0 then 
		return 0 
	end
	local inTeam,inTeamment = CheckPlayerTeam(role,teamNum,teamlv)
	return teamNum,teamlv,inTeam,inTeamment	
end
function ReliveInJJC(teamNum,teamlv)
	local a = 0 
	local i = 0 
	for a = 1 ,2, 1 do 
		for i = 0 , JJCteam[teamNum].players-1 do  
			local role = JJCteam[teamNum].lv[teamlv].InTeam[a].deadthCha[i]
			if ValidCha(role) ~=0 then 
				if JJCteam[teamNum].lv[teamlv].InTeam[a].deadth[i]== 1 then
					local pos = math.random(1,2)
					GoTo( role, JJCteam[teamNum].lv[teamlv].InTeam[pos].x, JJCteam[teamNum].lv[teamlv].InTeam[pos].y, JJCteam[teamNum].lv[teamlv].InTeam[pos].map)
					SetChaPerHp(role,0.8)
					SetChaPerSp(role,0.8)
					GoTo( role, JJCteam[teamNum].lv[teamlv].InTeam[pos].x, JJCteam[teamNum].lv[teamlv].InTeam[pos].y, JJCteam[teamNum].lv[teamlv].InTeam[pos].map)
				end
			end
			if JJCteam[teamNum].lv[teamlv].InTeam[a].deadth[i]~=0 then
				JJCteam[teamNum].lv[teamlv].InTeam[a].deadth[i] = JJCteam[teamNum].lv[teamlv].InTeam[a].deadth[i]-1
			end
		end
	end
end

function IsJJCAreaItem(role)
	local x,y = GetChaPos(role)
	x = math.floor(x/100)
	y = math.floor(y/100)
	if  IsPlayerInJJCMap(role) == 0then 
		return 0 
	end
	local teamNum,teamlv = IsPlayerInJJCMap(role)
	local areaNum= 0
	for areaNum = 1 , JJCArea[teamNum].areaNum , 1 do 
		local ret = IsInArea(x,y,JJCArea[teamNum].area[areaNum].minx,JJCArea[teamNum].area[areaNum].maxx,JJCArea[teamNum].area[areaNum].miny,JJCArea[teamNum].area[areaNum].maxy)
		if ret == 1 then 
			return 0
		end
	end
	return 1
end
function IsInArea(x,y,minx,maxx,miny,maxy)
	if x>=minx and x<= maxx and y >=miny and y<= maxy then
		return 1
	else 
		return 0 
	end
end
--智慧证属性对应
-- ITEMATTR_VAL_STR  竞技场积分LOW
-- ITEMATTR_VAL_CON  jingjichang dianshu Hig
-- ITEMATTR_VAL_AGI  胜利数
-- ITEMATTR_VAL_DEX  失败数
  
-- ITEMATTR_VAL_STA  秒退数=掉线数
-- ITEMATTR_MAXURE   总场数
--初始化竞技场
JJCteam={}
JJCteamIn = 0 
function InItJJC()
	if JJCteamIn == 1 then 
		return
	end
	local a= 0 
	local b = 0
	local c = 0 
	local d = 0
	local e = 0
	for a = 1 , 3 , 1 do
		JJCteam[a]= {}
	end
	JJCteam[1].players=2
	JJCteam[2].players=3
	JJCteam[3].players=5
	for a = 1 , 3 , 1 do  
		JJCteam[a].lv={}
		for b = 1,	6 ,	1 do 
			JJCteam[a].lv[b]={}
			JJCteam[a].lv[b].count = 0
			JJCteam[a].lv[b].team={}   --排队的数据结构
			JJCteam[a].lv[b].team[0]={}
			JJCteam[a].lv[b].team[0].teamment={}
			for d = 1 , JJCteam[a].players , 1 do 
				JJCteam[a].lv[b].team[0].teamment[d-1]=0
			end
			JJCteam[a].lv[b].notice = 0
			JJCteam[a].lv[b].open = 0
			JJCteam[a].lv[b].state = 0
			JJCteam[a].lv[b].starttime = 0 
			JJCteam[a].lv[b].endtime = 0 
			JJCteam[a].lv[b].InTeam={}	--进入竞技场的队伍数据结构
			JJCteam[a].lv[b].JJCMons = {}
			JJCteam[a].lv[b].JJCMonsCha = {}
			if a == 1 then 
				JJCteam[a].lv[b].JJCMons.count = 4
			elseif a == 2 then
				JJCteam[a].lv[b].JJCMons.count = 0
			elseif a == 3 then 
				JJCteam[a].lv[b].JJCMons.count = 1
			end
			for e = 1 , JJCteam[a].lv[b].JJCMons.count  do 
				JJCteam[a].lv[b].JJCMons[e] = 0
			end
			for c = 1 , 2 , 1 do 
				JJCteam[a].lv[b].InTeam[c]={}
				JJCteam[a].lv[b].InTeam[c].win= 0 
				JJCteam[a].lv[b].InTeam[c].InTeamment ={}
				JJCteam[a].lv[b].InTeam[c].deadth ={}
				JJCteam[a].lv[b].InTeam[c].deadthCha ={}
				JJCteam[a].lv[b].InTeam[c].num = 0  --该队伍的上交掉料数/杀人shu
				JJCteam[a].lv[b].InTeam[c].x = 0 			--该队伍的x坐标
				JJCteam[a].lv[b].InTeam[c].y = 0 			--该队伍的y坐标
				JJCteam[a].lv[b].InTeam[c].map = "starena"..a..b --该队伍的地图名
				if a == 3 then 
					if c == 1 then
						JJCteam[a].lv[b].InTeam[c].x = 62
						JJCteam[a].lv[b].InTeam[c].y = 48
					else 
						JJCteam[a].lv[b].InTeam[c].x = 63
						JJCteam[a].lv[b].InTeam[c].y = 81
					end
				elseif a == 1 then
					if c == 1 then
						JJCteam[a].lv[b].InTeam[c].x = 64
						JJCteam[a].lv[b].InTeam[c].y = 36
					else 
						JJCteam[a].lv[b].InTeam[c].x = 64
						JJCteam[a].lv[b].InTeam[c].y = 80
					end
				elseif a == 2 then
					if c == 1 then
						JJCteam[a].lv[b].InTeam[c].x = 46 
						JJCteam[a].lv[b].InTeam[c].y = 63
					else 
						JJCteam[a].lv[b].InTeam[c].x = 82
						JJCteam[a].lv[b].InTeam[c].y = 63
					end
				end
				for d = 1 , JJCteam[a].players , 1 do 
					JJCteam[a].lv[b].InTeam[c].InTeamment[d-1] = 0
					JJCteam[a].lv[b].InTeam[c].deadth[d-1] = 0
				end
			end
		end
	end 
	JJCteamIn = 1
end
JJC2stay={}
JJC2stay[1]=0
JJC2stay[2]=0
--竞技场参数
JJCarg={}
InitJJCargIn = 0 
function InitJJCarg()
	if InitJJCargIn == 1 then
		return
	end
	local a
	local b  
	for a = 1 , 3 , 1 do 
		JJCarg[a]={}
		JJCarg[a].MaxTime =0	--最大时间
		JJCarg[a].NorTime =0	--正常时间
		JJCarg[a].NorSucPoint = 0 --赢得比赛方的基本积分
		JJCarg[a].NorFalPoint = 0 --lose比赛方的基本积分
		JJCarg[a].ExPoint = 0		--按照比赛进程的积分
	end
	--常规参数
	JJCarg[1].MaxTime = 5*60	
	JJCarg[1].NorTime = 5*60		
	JJCarg[1].NorSucPoint = 100 
	JJCarg[1].NorFalPoint = 50 
	JJCarg[1].ExPoint = 200	
	
	JJCarg[2].MaxTime = 8*60	
	JJCarg[2].NorTime = 4*60	
	JJCarg[2].NorSucPoint = 150 
	JJCarg[2].NorFalPoint = 50 
	JJCarg[2].ExPoint = 150
	
	JJCarg[3].MaxTime = 30*60	
	JJCarg[3].NorTime = 10*60	
	JJCarg[3].NorSucPoint = 300 
	JJCarg[3].NorFalPoint = 60 
	JJCarg[3].ExPoint = 40
	InitJJCargIn =1
	--装备需要的点数3467 
	JJC50ZByifu = 3467 
	JJC70ZByifu = 8493
	JJC90ZByifu = 24267
	JJC50ZBqita = 2080
	JJC70ZBqita = 6067
	JJC90ZBqita = 17333
end 
needTime = {}
needTime[1]= {}
needTime[2]= {}
needTime[1][1]= 30
needTime[1][2]= 30
needTime[1][3]= 30 
needTime[1][4]= 30 
needTime[1][5]= 30 
needTime[2][1]= 30 
needTime[2][2]= 30
needTime[2][3]= 30 
needTime[2][4]= 30
needTime[2][5]= 30 
beginstateJJC2={}
beginstateJJC2[1]= 0 
beginstateJJC2[2]= 0
beginstateJJC2[3]= 0 
beginstateJJC2[4]= 0 
beginstateJJC2[5]= 0  
function JJC13(map_copy)
	local teamNum = 1 
	local teamlv = 3 
	JJC13(map_copy,teamNum,teamlv)
end
function JJC14(map_copy)
	local teamNum = 1 
	local teamlv = 4
	JJC14(map_copy,teamNum,teamlv)
end
function JJC15(map_copy)
	local teamNum = 1 
	local teamlv = 5 
	JJC15(map_copy,teamNum,teamlv)
end


function JJC1(map_copy,teamNum,teamlv)
	JJCteam[teamNum].lv[teamlv].open = 1
	if JJCteam[teamNum].lv[teamlv].state == 0 and JJCteam[teamNum].lv[teamlv].notice ~= 0 then
		NoticePlayer(teamNum,teamlv,map_copy)
	elseif JJCteam[teamNum].lv[teamlv].state == 1 then	
		ReliveInJJC(teamNum,teamlv)
		local Refresh = 180000
		local life = 1800000
		local monslife={}
		local i = 0
		for i = 1, 4,1 do 
			if JJCteam[teamNum].lv[teamlv].JJCMonsCha[i]~=nil then 
				monslife[i] = GetChaAttr(JJCteam[teamNum].lv[teamlv].JJCMonsCha[i],ATTR_HP)
				if monslife[i]<= 0 then
					KillCha(JJCteam[teamNum].lv[teamlv].JJCMons[i])
					JJCteam[teamNum].lv[teamlv].JJCMonsCha[i] = nil
				end
			elseif JJCteam[teamNum].lv[teamlv].JJCMons[i]>0 then 
				JJCteam[teamNum].lv[teamlv].JJCMons[i]=JJCteam[teamNum].lv[teamlv].JJCMons[i]-1
			end
		end
		if JJCteam[teamNum].lv[teamlv].JJCMons[1]==0 and  JJCteam[teamNum].lv[teamlv].JJCMons[2]== 0 then
			SetCurMap("starena"..teamNum..teamlv)
			local x = 0
			local y = 0
			x = math.random(5700,6500)
			y = math.random(3600,5000)
			local new = CreateCha( 1176 , x , y , 145 , Refresh )
			SetChaLifeTime( new, life )
			JJCteam[teamNum].lv[teamlv].JJCMonsCha[1] = new
			JJCteam[teamNum].lv[teamlv].JJCMons[1] = 3
			x = math.random(6200,7000)
			y = math.random(3600,5000)
			new =  CreateCha( 1176 , x , y , 145 , Refresh )
			SetChaLifeTime( new, life )
			JJCteam[teamNum].lv[teamlv].JJCMonsCha[2] = new
			JJCteam[teamNum].lv[teamlv].JJCMons[2] = 3
		end
		if ValidCha(JJCteam[teamNum].lv[teamlv].JJCMons[3])==0 and  ValidCha(JJCteam[teamNum].lv[teamlv].JJCMons[4])== 0 then
			SetCurMap("starena"..teamNum..teamlv)
			local x = 0
			local y = 0
			x = math.random(5700,6500)
			y = math.random(6800,8100)
			local new = CreateCha( 1177 , x , y , 145 , Refresh )
			SetChaLifeTime( new, life )
			JJCteam[teamNum].lv[teamlv].JJCMonsCha[3] = new
			JJCteam[teamNum].lv[teamlv].JJCMons[3] = 3
			x = math.random(6200,7000)
			y = math.random(6800,8100)
			new =  CreateCha( 1177 , x , y , 145 , Refresh )
			SetChaLifeTime( new, life )
			JJCteam[teamNum].lv[teamlv].JJCMonsCha[4] = new
			JJCteam[teamNum].lv[teamlv].JJCMons[4] = 3
		end
		local Notice={}
		Notice[1]= "上方玩家"
		Notice[2]= "下方玩家"
		local isIn= {}
		isIn[1] ,isIn[2] = CheckPlayerIsIn(teamNum,teamlv)
		local i = 0 
		for i = 1, 2, 1 do 
			if isIn[i] == 0 and isIn[3-i] ~= 0 then
				SystemNoticeAll(Notice[i].."的所有人都离开了赛场！",teamNum,teamlv)
				SystemNoticeAll("比赛结束！",teamNum,teamlv)
				SystemNoticeAll(Notice[3-i].."赢得了比赛！",teamNum,teamlv)
				JJCteam[teamNum].lv[teamlv].InTeam[i].win = 0 
				JJCteam[teamNum].lv[teamlv].InTeam[3-i].win = 1
				JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()
			elseif  isIn[i] == 0 and isIn[3-i] == 0 then
				JJCteam[teamNum].lv[teamlv].InTeam[i].win = 0 
				JJCteam[teamNum].lv[teamlv].InTeam[3-i].win = 0
				JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()
			end
		end	
		if JJCPendTime (JJCteam[teamNum].lv[teamlv].starttime,JJCChangeTimeToNumber())== JJCarg[1].MaxTime		then
			JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()  
			if  JJCteam[teamNum].lv[teamlv].InTeam[1].num > JJCteam[teamNum].lv[teamlv].InTeam[2].num then
				JJCteam[teamNum].lv[teamlv].InTeam[1].win = 1
				JJCteam[teamNum].lv[teamlv].InTeam[2].win = 0
				SystemNoticeAll("比赛结束！",teamNum,teamlv)
				SystemNoticeAll(Notice[1].."赢得了比赛！",teamNum,teamlv)
			elseif JJCteam[teamNum].lv[teamlv].InTeam[1].num <  JJCteam[teamNum].lv[teamlv].InTeam[2].num then
				JJCteam[teamNum].lv[teamlv].InTeam[2].win = 1
				JJCteam[teamNum].lv[teamlv].InTeam[1].win = 0
				SystemNoticeAll("比赛结束！",teamNum,teamlv)
				SystemNoticeAll(Notice[2].."赢得了比赛！",teamNum,teamlv)
			else 
				JJCteam[teamNum].lv[teamlv].InTeam[2].win = 0
				JJCteam[teamNum].lv[teamlv].InTeam[1].win = 0
				SystemNoticeAll("比赛结束！",teamNum,teamlv)
				SystemNoticeAll("分数相同，都判负!",teamNum,teamlv)
			end
		end
		if JJCteam[teamNum].lv[teamlv].endtime ~= 0 then
			local c = 0 
			local d = 0 
			for c = 1 , 2 , 1 do
				local point = GivePoint(teamNum,teamlv,c)
				for d = 1 , JJCteam[teamNum].players , 1 do 
					local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1])
					if ValidCha(role) == 0 then
						if JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1]~= 0 then
							JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = 0 
						end
					else
						local zhzz = GetChaItem2 (role,2,6066)
						if ValidCha(zhzz) == nil then
						else 	
							SystemNotice(role , "你获得积分"..point)
							AddPoint(role,point)
							Addwin(role , JJCteam[teamNum].lv[teamlv].InTeam[c].win)
							AddADiaoXian(role, -1)
							GoTo(role , 80, 47 ,JJCteam[teamNum].lv[teamlv].InTeam[c].map )
							GoTo(role , 80, 47 ,JJCteam[teamNum].lv[teamlv].InTeam[c].map )
							JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = 0
						end
					end
				end	
				JJCteam[teamNum].lv[teamlv].InTeam[c].num = 0
				JJCteam[teamNum].lv[teamlv].InTeam[c].win= 0
			end	
			JJCteam[teamNum].lv[teamlv].state = 0
			JJCteam[teamNum].lv[teamlv].starttime = 0 
			JJCteam[teamNum].lv[teamlv].endtime = 0
			local i = 0
			for i = 1 , 4, 1 do 
			local mons= JJCteam[teamNum].lv[teamlv].JJCMonsCha[i]
				if JJCteam[teamNum].lv[teamlv].JJCMons[i]~=0 then
					KillCha(mons)
				end
			JJCteam[teamNum].lv[teamlv].JJCMons[i]= 0 
			end
			JJCReady(teamNum,teamlv)
		end
	end
end
function JJC2(map_copy,teamNum,teamlv)
	JJCteam[teamNum].lv[teamlv].open = 1
	if JJCteam[teamNum].lv[teamlv].state == 0 and JJCteam[teamNum].lv[teamlv].notice ~= 0 then
		NoticePlayer(teamNum,teamlv,map_copy)
	elseif JJCteam[teamNum].lv[teamlv].state == 1 then
		ReliveInJJC(teamNum,teamlv)
		local Notice={}
		Notice[1]= "右方玩家"
		Notice[2]= "左方玩家"
		local isIn= {}
		isIn[1] ,isIn[2] = CheckPlayerIsIn(teamNum,teamlv)
		local i = 0 
		for i = 1, 2, 1 do 
			if isIn[i] == 0 and isIn[3-i] ~= 0 then
				SystemNoticeAll(Notice[i].."的所有人都离开了赛场！",teamNum,teamlv)
				SystemNoticeAll("比赛结束！",teamNum,teamlv)
				SystemNoticeAll(Notice[3-i].."赢得了比赛！",teamNum,teamlv)
				JJCteam[teamNum].lv[teamlv].InTeam[i].win = 0 
				JJCteam[teamNum].lv[teamlv].InTeam[3-i].win = 1
				JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()
			elseif  isIn[i] == 0 and isIn[3-i] == 0 then
				JJCteam[teamNum].lv[teamlv].InTeam[i].win = 0 
				JJCteam[teamNum].lv[teamlv].InTeam[3-i].win = 0
				JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()
			end
		end	
		local pos = {}
		pos[1],pos[2] = CheckPlayerPos(teamNum,teamlv)
		if  beginstateJJC2[teamlv] == 0 then 
			if pos[1]== 0 and pos[2] == 0 then 
				if needTime[1][teamlv]> 9 and math.mod(needTime[1][teamlv],5)== 0 then 
					SystemNoticeAll("比赛将于 "..needTime[1][teamlv].." 秒之后强制结束，请玩家赶快上台。",teamNum,teamlv)
				elseif needTime[1][teamlv]< 10 and needTime[1][teamlv]> 0then 
					SystemNoticeAll("比赛将于 "..needTime[1][teamlv].." 秒之后强制结束，请玩家赶快上台。",teamNum,teamlv)
				end	
				needTime[1][teamlv] =  needTime[1][teamlv]-1
				needTime[2][teamlv] =  needTime[2][teamlv]-1
				if needTime[2][teamlv]<0 then 
					needTime[2][teamlv] = 0 
				end
				if needTime[1][teamlv]<0 then 
					needTime[1][teamlv] = 0 
				end
				if needTime[1][teamlv] == 0 then
					JJCteam[teamNum].lv[teamlv].InTeam[1].win = 0 
					JJCteam[teamNum].lv[teamlv].InTeam[2].win = 0
					JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()
					SystemNoticeAll("比赛结束！",teamNum,teamlv)
					SystemNoticeAll("双方在规定时间内都没有上台比赛，都判负！",teamNum,teamlv)
				end
			elseif pos[1]== 1 or pos[2] == 1 then
				needTime[1][teamlv] = 9
				needTime[2][teamlv] = 9
				SystemNoticeAll("比赛开始！双方的离台倒计时为9S!玩家只需要将对方的离台倒计时变为0就可以赢得胜利。",teamNum,teamlv)
				beginstateJJC2[teamlv] = 1
			end
		elseif beginstateJJC2[teamlv] == 1 then
			local a = 0 
			local InJJC2={}
			for a = 1 ,2 ,1 do 
				if pos[a]== 1  and needTime[a][teamlv]< 9  then 
					local p =GetPosPlayerNum(teamNum,teamlv,a)
					if JJC2stay[a] < 2*JJCteam[teamNum].players then 
						JJC2stay[a] = JJC2stay[a]+p
					elseif JJC2stay[a] >= 2*JJCteam[teamNum].players then 
						needTime[a][teamlv]=needTime[a][teamlv]+1
						SystemNoticeAll(Notice[a].."的离台倒计时为"..needTime[a][teamlv].."秒！",teamNum,teamlv)
					end
				elseif pos[a] == 0  or JJC2stay[a] < 2*JJCteam[teamNum].players then
					if pos[a] == 0 and JJC2stay[a]~= 0 then 
						JJC2stay[a] = 0
					end
					needTime[a][teamlv]=needTime[a][teamlv]-1
					SystemNoticeAll(Notice[a].."的离台倒计时为"..needTime[a][teamlv].."秒！",teamNum,teamlv)
					if needTime[a][teamlv]== 0 and needTime[3-a]~= 0 then
						SystemNoticeAll("比赛结束！",teamNum,teamlv)
						SystemNoticeAll(Notice[3-a].."赢得了比赛！",teamNum,teamlv)
						JJCteam[teamNum].lv[teamlv].InTeam[a].win = 0 
						JJCteam[teamNum].lv[teamlv].InTeam[3-a].win = 1
						JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()
					elseif needTime[a][teamlv]== 0 and needTime[3-a]== 0 then 
						JJCteam[teamNum].lv[teamlv].InTeam[1].win = 0 
						JJCteam[teamNum].lv[teamlv].InTeam[2].win = 0
						JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()
						SystemNoticeAll("比赛结束！",teamNum,teamlv)
						SystemNoticeAll("双方离台倒计时同时为0，都判负！",teamNum,teamlv)
					end
				end
			end
		end
		if JJCPendTime (JJCteam[teamNum].lv[teamlv].starttime,JJCChangeTimeToNumber())== JJCarg[2].MaxTime		then
			JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()
			local p1=GetPosPlayerNum(teamNum,teamlv,1)
			local p2=GetPosPlayerNum(teamNum,teamlv,2)
			if  p1 > p2 then
				JJCteam[teamNum].lv[teamlv].InTeam[1].win = 1
				JJCteam[teamNum].lv[teamlv].InTeam[2].win = 0
				SystemNoticeAll("比赛结束！",teamNum,teamlv)
				SystemNoticeAll(Notice[1].."赢得了比赛！",teamNum,teamlv)
			elseif p1 < p2 then
				JJCteam[teamNum].lv[teamlv].InTeam[2].win = 1
				JJCteam[teamNum].lv[teamlv].InTeam[1].win = 0
				SystemNoticeAll("比赛结束！",teamNum,teamlv)
				SystemNoticeAll(Notice[2].."赢得了比赛！",teamNum,teamlv)
			else 
				if needTime[1][teamlv]> needTime[2][teamlv] then 
					JJCteam[teamNum].lv[teamlv].InTeam[1].win = 1
					JJCteam[teamNum].lv[teamlv].InTeam[2].win = 0
					SystemNoticeAll("比赛结束！",teamNum,teamlv)
					SystemNoticeAll(Notice[1].."赢得了比赛！",teamNum,teamlv)
				elseif needTime[1][teamlv]< needTime[2][teamlv] then 
					JJCteam[teamNum].lv[teamlv].InTeam[2].win = 1
					JJCteam[teamNum].lv[teamlv].InTeam[1].win = 0
					SystemNoticeAll("比赛结束！",teamNum,teamlv)
					SystemNoticeAll(Notice[2].."赢得了比赛！",teamNum,teamlv)
				else
					JJCteam[teamNum].lv[teamlv].InTeam[2].win = 0
					JJCteam[teamNum].lv[teamlv].InTeam[1].win = 0
					SystemNoticeAll("比赛结束！",teamNum,teamlv)
					SystemNoticeAll("台上人数相同，都判负!",teamNum,teamlv)
				end
			end
		end
		if JJCteam[teamNum].lv[teamlv].endtime ~= 0 then
			local c = 0 
			local d = 0 
			for c = 1 , 2 , 1 do
				local point = GivePoint(teamNum,teamlv,c)
				for d = 1 , JJCteam[teamNum].players , 1 do 
					local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1])
					if ValidCha(role) == 0 then
						if JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1]~= 0 then
							JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = 0 
						end
					else
						local zhzz = GetChaItem2 (role,2,6066)
						if ValidCha(zhzz) == nil then
							SystemNotice(role , "你没有竞技场之证不能获得积分")
						else 
							local point = GivePoint(teamNum,teamlv,c)
							SystemNotice(role , "你获得积分"..point)
							AddPoint(role,point)
							Addwin(role , JJCteam[teamNum].lv[teamlv].InTeam[c].win)
							AddADiaoXian(role, -1)
							GoTo(role , 80, 47 ,JJCteam[teamNum].lv[teamlv].InTeam[c].map )
							GoTo(role , 80, 47 ,JJCteam[teamNum].lv[teamlv].InTeam[c].map )
							JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = 0
						end
					end
				end	
				JJCteam[teamNum].lv[teamlv].InTeam[c].num = 0
				JJCteam[teamNum].lv[teamlv].InTeam[c].win= 0
			end	
			JJCteam[teamNum].lv[teamlv].state = 0
			JJCteam[teamNum].lv[teamlv].starttime = 0 
			JJCteam[teamNum].lv[teamlv].endtime = 0
			needTime[1][teamlv] = 30
			needTime[2][teamlv] = 30
			JJCReady(teamNum,teamlv)
			beginstateJJC2[teamlv] = 0
		end
	end
	
end
function JJC23(map_copy)
	local teamNum = 2 
	local teamlv = 3 
	JJC2(map_copy,teamNum,teamlv)
end
function JJC24(map_copy)
	local teamNum = 2 
	local teamlv = 4 
	JJC2(map_copy,teamNum,teamlv)
end
function JJC25(map_copy)
	local teamNum = 2 
	local teamlv = 5 
	JJC2(map_copy,teamNum,teamlv)
end
function JJC33(map_copy)
	local teamNum = 3 
	local teamlv = 3 
	JJC3(map_copy,teamNum,teamlv)
end
function JJC34(map_copy)
	local teamNum = 3 
	local teamlv = 4 
	JJC3(map_copy,teamNum,teamlv)
end
function JJC35(map_copy)
	local teamNum = 3 
	local teamlv = 5 
	JJC3(map_copy,teamNum,teamlv)
end
function JJC3(map_copy,teamNum,teamlv)
	JJCteam[teamNum].lv[teamlv].open = 1
	if JJCteam[teamNum].lv[teamlv].state == 0 and JJCteam[teamNum].lv[teamlv].notice ~= 0 then
		NoticePlayer(teamNum,teamlv,map_copy)
	elseif JJCteam[teamNum].lv[teamlv].state == 1 then
		ReliveInJJC(teamNum,teamlv)
		local monslife = 0
		if ValidCha(JJCteam[teamNum].lv[teamlv].JJCMonsCha[1])~=0 then
			monslife = GetChaAttr(JJCteam[teamNum].lv[teamlv].JJCMonsCha[1],ATTR_HP)
			if monslife <= 0 then
				KillCha(JJCteam[teamNum].lv[teamlv].JJCMonsCha[1])
				JJCteam[teamNum].lv[teamlv].JJCMonsCha[1] = nil
			end
		elseif JJCteam[teamNum].lv[teamlv].JJCMons[1]>0 then
			JJCteam[teamNum].lv[teamlv].JJCMons[1] = JJCteam[teamNum].lv[teamlv].JJCMons[1] -1
		end
		if ValidCha(JJCteam[teamNum].lv[teamlv].JJCMons[1])==0 and  CheckJJC3Item(teamlv)== 0 then
			SetCurMap("starena"..teamNum..teamlv)
			local new = CreateCha( 1178 , 8500 , 6300 , 145 , 1800 )
			SetChaLifeTime( new, 1800000 )
			JJCteam[teamNum].lv[teamlv].JJCMonsCha[1] = new
			JJCteam[teamNum].lv[teamlv].JJCMons[1]= 3
		end
		local Notice={}
		Notice[1]= "上方玩家"
		Notice[2]= "下方玩家"
		local isIn= {}
		isIn[1] ,isIn[2] = CheckPlayerIsIn(teamNum,teamlv)
		local i = 0 
		for i = 1, 2, 1 do 
			if isIn[i] == 0 and isIn[3-i] ~= 0 then
				SystemNoticeAll(Notice[i].."的所有人都离开了赛场！",teamNum,teamlv)
				SystemNoticeAll("比赛结束！",teamNum,teamlv)
				SystemNoticeAll(Notice[3-i].."赢得了比赛！",teamNum,teamlv)
				JJCteam[teamNum].lv[teamlv].InTeam[i].win = 0 
				JJCteam[teamNum].lv[teamlv].InTeam[3-i].win = 1
				JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()
			elseif  isIn[i] == 0 and isIn[3-i] == 0 then
				JJCteam[teamNum].lv[teamlv].InTeam[i].win = 0 
				JJCteam[teamNum].lv[teamlv].InTeam[3-i].win = 0
				JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()
			end
		end	
		local a = 0 
		for a = 1 ,2,1 do 
			if JJCteam[teamNum].lv[teamlv].InTeam[a].num== 5 then 
				JJCteam[teamNum].lv[teamlv].InTeam[a].win = 1
				JJCteam[teamNum].lv[teamlv].InTeam[3-a].win = 0
				JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber() 
			end
		end
		if JJCPendTime (JJCteam[teamNum].lv[teamlv].starttime,JJCChangeTimeToNumber())== JJCarg[3].MaxTime then
			JJCteam[teamNum].lv[teamlv].endtime = JJCChangeTimeToNumber()  
			if  JJCteam[teamNum].lv[teamlv].InTeam[1].num > JJCteam[teamNum].lv[teamlv].InTeam[2].num then
				JJCteam[teamNum].lv[teamlv].InTeam[1].win = 1
				JJCteam[teamNum].lv[teamlv].InTeam[2].win = 0
			elseif JJCteam[teamNum].lv[teamlv].InTeam[1].num <  JJCteam[teamNum].lv[teamlv].InTeam[2].num then
				JJCteam[teamNum].lv[teamlv].InTeam[2].win = 1
				JJCteam[teamNum].lv[teamlv].InTeam[1].win = 0
			else 
				JJCteam[teamNum].lv[teamlv].InTeam[2].win = 0
				JJCteam[teamNum].lv[teamlv].InTeam[1].win = 0
			end
		end
		if JJCteam[teamNum].lv[teamlv].endtime ~= 0 then
			local c = 0 
			local d = 0 
			for c = 1 , 2 , 1 do
				for d = 1 , JJCteam[teamNum].players , 1 do 
					local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1])
					if ValidCha(role) == 0 then
						if JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1]~= 0 then
							JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = 0 
						end
					else
						local zhzz = GetChaItem2 (role,2,6066)
						if ValidCha(zhzz) == nil then
							SystemNotice(role , "你没有竞技场之证不能获得积分",teamNum,teamlv)
						else 
							local point = GivePoint(teamNum,teamlv,c)
							SystemNotice(role , "你获得积分"..point)
							AddPoint(role,point)
							Addwin(role , JJCteam[teamNum].lv[teamlv].InTeam[c].win)
							AddADiaoXian(role, -1)
							GoTo(role , 80, 47 ,JJCteam[teamNum].lv[teamlv].InTeam[c].map )
							GoTo(role , 80, 47 ,JJCteam[teamNum].lv[teamlv].InTeam[c].map )
							JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = 0
						end
					end
				end	
				JJCteam[teamNum].lv[teamlv].InTeam[c].num = 0
				JJCteam[teamNum].lv[teamlv].InTeam[c].win= 0
			end	
			JJCteam[teamNum].lv[teamlv].state = 0
			JJCteam[teamNum].lv[teamlv].starttime = 0 
			JJCteam[teamNum].lv[teamlv].endtime = 0
			KillCha(JJCteam[teamNum].lv[teamlv].JJCMonsCha[1])
			JJCteam[teamNum].lv[teamlv].JJCMonsCha[1] = nil
			JJCReady(teamNum,teamlv)
		end
	end
	
end
function CheckJJC3Item(teamlv)
	local num = 0
	local c = 0 
	local d = 0 
	local teamNum =  3
	for c = 1 , 2 , 1 do
		for d = 1 , JJCteam[teamNum].players , 1 do 
			local role= GetRolebyIDX(JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1])
			if ValidCha(role) == 0 then
				if JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1]~= 0 then
					JJCteam[teamNum].lv[teamlv].InTeam[c].InTeamment[d-1] = 0 
				end
			else
				local itemNum = CheckBagItem (role ,5963 )
				if itemNum == 1 then 
					num = 1 
				end
			end
		end	
	end	
	return num
end
-- 5961	花叶
-- 5962	草叶
-- 5963	巴拉卡特的尾巴


-- 1176	竞技精灵花
-- 1177	竞技精灵草
-- 1178	巴拉卡特
-- 二人竞技场   57,34    70,52  
             -- 62,53    65,65
             -- 70,66    57,83
-- 5人竞技场
-- 57,46    69,49
-- 62,50    64,56
-- 56,56    70,70
-- 56,62    46,65
-- 42,56    45,69
-- 61,70    63,77
-- 56,78    68,83
-- 70,61    78,65
-- 79,57    83,69

function RemoveJJCItem(role)
	local JJCItem={}
	JJCItem[1]= 5961
	JJCItem[2]= 5962
	JJCItem[3]= 5963
	local itemNum={}
	local i = 0 
	for i = 1 ,3 ,1 do
		itemNum[i] = CheckBagItem(role,JJCItem[i])
		if itemNum[i] ~= 0 then 
			DelBagItem(role, JJCItem[i], itemNum[i])
		end
	end
end
	
function JJCstart(teamNum,teamlv)

	LG("JJCMON","现在是游戏开始！在",teamNum,"人竞技场的",teamlv,"等级竞技场")
	if teamNum == 2 then 
		return 
	end
	local Refresh = 1800					--重生时间，秒单位
	local life = 1800000					--生命时间，毫秒单位
	if teamNum == 1 then 
		SetCurMap("starena"..teamNum..teamlv)
		LG("JJCMON","二人竞技场开始！！！")
		local x = 0
		local y = 0
		x = math.random(5700,6500)
		y = math.random(3600,5000)
		LG("JJCMON","一号怪物！x: ",x,"y: ",y,"Refresh: ",Refresh)
		local new = CreateCha( 1176 , x , y , 145 , Refresh )
		SetChaLifeTime( new, life )
		JJCteam[teamNum].lv[teamlv].JJCMonsCha[1] = new
		LG("JJCMON","一号怪物记录完毕")
		JJCteam[teamNum].lv[teamlv].JJCMons[1] = 3
		LG("JJCMON","一号怪物记录完毕的时间：",JJCteam[teamNum].lv[teamlv].JJCMons[1])
		x = math.random(6200,7000)
		y = math.random(3600,5000)
		LG("JJCMON","二号怪物！x: ",x,"y: ",y,"Refresh: ",Refresh)
		new =  CreateCha( 1176 , x , y , 145 , Refresh )
		SetChaLifeTime( new, life )
		JJCteam[teamNum].lv[teamlv].JJCMonsCha[2] = new
		LG("JJCMON","二号怪物记录完毕")
		JJCteam[teamNum].lv[teamlv].JJCMons[2] = 3
		LG("JJCMON","二号怪物记录完毕的时间：",JJCteam[teamNum].lv[teamlv].JJCMons[2])		
		x = math.random(5700,6500)
		y = math.random(6800,8100)
		LG("JJCMON","三号怪物！x: ",x,"y: ",y,"Refresh: ",Refresh)
		new = CreateCha( 1177 , x , y , 145 , Refresh )
		SetChaLifeTime( new, life )
		JJCteam[teamNum].lv[teamlv].JJCMonsCha[3] = new
		LG("JJCMON","三号怪物记录完毕")
		JJCteam[teamNum].lv[teamlv].JJCMons[3] = 3
		LG("JJCMON","三号怪物记录完毕的时间：",JJCteam[teamNum].lv[teamlv].JJCMons[3])			
		x = math.random(6200,7000)
		y = math.random(6800,8100)
		LG("JJCMON","四号怪物！x: ",x,"y: ",y,"Refresh: ",Refresh)
		new =  CreateCha( 1177 , x , y , 145 , Refresh )
		SetChaLifeTime( new, life )
		JJCteam[teamNum].lv[teamlv].JJCMonsCha[4] = new	
		LG("JJCMON","四号怪物记录完毕")
		JJCteam[teamNum].lv[teamlv].JJCMons[4] = 3
		LG("JJCMON","四号怪物记录完毕的时间：",JJCteam[teamNum].lv[teamlv].JJCMons[4])			
	end
	if teamNum == 3 then
		SetCurMap("starena"..teamNum..teamlv)
		LG("JJCMON","五人竞技场开始！！！")
		local new = CreateCha( 1178 , 8500 , 6300 , 145 , Refresh )
		LG("JJCMON","一号怪物！x: ",x,"y: ",y,"Refresh: ",Refresh)
		SetChaLifeTime( new, life )
		JJCteam[teamNum].lv[teamlv].JJCMonsCha[1] = new
		LG("JJCMON","一号怪物记录完毕")
		JJCteam[teamNum].lv[teamlv].JJCMons[1] = 3	
		LG("JJCMON","一号怪物记录完毕的时间：",JJCteam[teamNum].lv[teamlv].JJCMons[1])
	end
end
function JJC1TakeItem(role)
	local Notice={}
	Notice[1]= "上方玩家"
	Notice[2]= "下方玩家"
	local teamNum = 1
	local teamlv = GetTeamLV(role)
	local JJCItem={}
	JJCItem[1]= 5961
	JJCItem[2]= 5962
	local itemNum={}
	local i = 0 
	for i = 1 ,2 ,1 do
		itemNum[i] = CheckBagItem(role,JJCItem[i])
	end
	if  CheckPlayerTeam(role,teamNum,teamlv)~= 0 then
		local team ,teamment = CheckPlayerTeam(role,teamNum,teamlv)
		if itemNum[1] == 0 and itemNum[2] == 0 then 
			SystemNoticeAll(Notice[1].."总积分为"..JJCteam[teamNum].lv[teamlv].InTeam[1].num,teamNum,teamlv)				
			SystemNoticeAll(Notice[2].."总积分为"..JJCteam[teamNum].lv[teamlv].InTeam[2].num,teamNum,teamlv)					
		end			
		for i =  1 ,2 ,1 do 
			if itemNum[i]~= 0 then
				if i+ team == 3 then 
					JJCteam[teamNum].lv[teamlv].InTeam[team].num = JJCteam[teamNum].lv[teamlv].InTeam[team].num+3
					SystemNoticeAll(Notice[3-i].."上交了对方的花花草草，队伍积分加3分，现在总积分为"..JJCteam[teamNum].lv[teamlv].InTeam[team].num,teamNum,teamlv)				
				else 
					JJCteam[teamNum].lv[teamlv].InTeam[team].num = JJCteam[teamNum].lv[teamlv].InTeam[team].num+1
					SystemNoticeAll(Notice[i].."上交了花花草草，队伍积分加1分，现在总积分为"..JJCteam[teamNum].lv[teamlv].InTeam[team].num,teamNum,teamlv)				
				end
				DelBagItem(role, JJCItem[i], 1)
			end
		end
	end				
end
function JJC3TakeItem(role)
	local Notice={}
	Notice[1]= "上方玩家"
	Notice[2]= "下方玩家"
	local teamNum = 3
	local teamlv = GetTeamLV(role)
	local JJCItem= 5963
	local itemNum=0
		itemNum = CheckBagItem(role,JJCItem)
	if  CheckPlayerTeam(role,teamNum,teamlv)~= 0 then
		local team ,teamment = CheckPlayerTeam(role,teamNum,teamlv)
		if itemNum == 0 then
			SystemNoticeAll(Notice[1].."总积分为"..JJCteam[teamNum].lv[teamlv].InTeam[1].num,teamNum,teamlv)				
			SystemNoticeAll(Notice[2].."总积分为"..JJCteam[teamNum].lv[teamlv].InTeam[2].num,teamNum,teamlv)					
		end			
		if itemNum~= 0 then
			JJCteam[teamNum].lv[teamlv].InTeam[team].num = JJCteam[teamNum].lv[teamlv].InTeam[team].num+1
			SystemNoticeAll(Notice[team].."上交了巴拉卡特的尾巴，队伍积分加1分，现在总积分为"..JJCteam[teamNum].lv[teamlv].InTeam[team].num,teamNum,teamlv)				
			DelBagItem(role,JJCItem, 1)
		end
	end				
end


function CheckJJCXiangLian(item)
	if ValidCha (item) == 0 then 
		return 0
	end
	local itemID = GetItemID(item)
	if itemID == 5870 then
		return itemID
	end
	if itemID>=3936 and itemID<=3942 then 
		return itemID
	end
	local i = 0
	for i =1 , 19 , 1 do 
		if itemID >=6480 and  itemID <=6498 then
			return 1
		end
	end
	local itemtype = GetItemType(item)
	if itemtype~= 25 then 
		return 1 
	end
	return 0 
end	

function GetJJCXLNeedPoint (role)
	local jjcItem = GetChaItem(role ,2, 2)
	if ValidCha(jjcItem) == 0 or CheckJJCXiangLian(jjcItem) == 0 then 
		return "你背包的第3格没有放置竞技场专有的称号项链。"
	end
	local JJCItemID = GetItemID(jjcItem) 
	local needPoint =math.floor( math.pow((math.floor((JJCItemID- 6480 )/4)+1),3.5)*1000)
	return "赋予该项链属性需要"..needPoint.."竞技场积分。"
end
	
function CanChargeJJCXianglian(role)
	local jjcItem = GetChaItem(role ,2, 2)
	local jieZhi = GetChaItem(role , 2, 3)
	local jhzz = GetChaItem2(role , 2, 6066)
	if ValidCha(jieZhi)== 0 or CheckJJCXiangLian(jieZhi) == 1 then
		return "你背包的第4格没有放置普通项链。"
	end
	if ValidCha(jieZhi)== 0 or CheckJJCXiangLian(jieZhi) > 1 then
		local name = GetItemName(CheckJJCXiangLian(jieZhi))
		return  name.."是特殊项链，不能进行属性赋予。"
	end
	if ValidCha(jjcItem) == 0 or CheckJJCXiangLian(jjcItem) == 0 then 
		return "你背包的第3格没有放置竞技场专有的称号项链。"
	end
	if ValidCha(jhzz) == 0 then 
		return "你背包中没有竞技场之证。"
	end
	local JJCJiFen = GetJJCItemPoint(role)
	local JJCItemID = GetItemID(jjcItem) 
	local needPoint =math.floor( math.pow((math.floor((JJCItemID- 6480 )/4)+1),3.5)*1000)
	if JJCJiFen < needPoint then 
		return "你的竞技场积分不够"..needPoint.."，不能赋予该项链属性。"
	end
	return LUA_TRUE	
end
function ChargeJJCXianglian(role)
	local jjcItem = GetChaItem(role ,2, 2)
	local jieZhi = GetChaItem(role , 2, 3)
	local jhzz = GetChaItem2(role , 2, 6066)
	local JJCJiFen = GetJJCItemPoint(role)
	local jiezhiAttr = 0 
	jiezhiAttr = GetItemAttr (jieZhi ,ITEMATTR_VAL_MXHP )
	SetItemAttr(jjcItem,ITEMATTR_VAL_MXHP,jiezhiAttr)
	jiezhiAttr = GetItemAttr (jieZhi ,ITEMATTR_VAL_MXSP )
	SetItemAttr(jjcItem,ITEMATTR_VAL_MXSP,jiezhiAttr)
	jiezhiAttr = GetItemAttr (jieZhi ,ITEMATTR_VAL_HREC )
	SetItemAttr(jjcItem,ITEMATTR_VAL_HREC,jiezhiAttr)
	jiezhiAttr = GetItemAttr (jieZhi ,ITEMATTR_VAL_SREC )
	SetItemAttr(jjcItem,ITEMATTR_VAL_SREC,jiezhiAttr)
	jiezhiAttr = GetItemAttr (jieZhi ,ITEMATTR_VAL_PDEF )
	SetItemAttr(jjcItem,ITEMATTR_VAL_PDEF,jiezhiAttr)
	JJCJiFen = JJCJiFen -10000
	SetJJCItemPoint(role,JJCJiFen)
	local jieZhiID= GetItemID(jieZhi )
	RemoveChaItem(role , jieZhiID , 1,2,3,2,1)
	SynChaKitbag(role,13)
	return LUA_TRUE	
end
function GetJJCItemPoint(role)
	local zhzz = GetChaItem2 (role,2,6066)
	if zhzz == nil then
		SystemNotice(role,"你没有竞技场之证。不能进行获取积分操作。")
		return
	end
	local point = 0
	local Sta =GetItemAttr(zhzz,ITEMATTR_VAL_STR)
	local con = GetItemAttr(zhzz,ITEMATTR_VAL_CON)
    point = Sta*32768+con
	return point
end
function  SetJJCItemPoint(role,point)
	local zhzz = GetChaItem2 (role,2,6066)
	if zhzz == nil then
		SystemNotice(role,"你没有竞技场之证。不能进行设置积分操作。")
		return
	end
	local Sta = math.floor(point/32768)
	local con = math.mod(point,32768)
	if Sta>=32768 then
		Sta = 32768-1 
	end
	SetItemAttr(zhzz,ITEMATTR_VAL_STR, Sta)
	SetItemAttr(zhzz,ITEMATTR_VAL_CON,con)
	local pos = GetItemPos(role,zhzz)
	SetChaKitbagChange( role ,1 )
	SynChaKitbag(role,pos )
end	
function GetItemPos(role,item)
	local bagnum = GetKbCap(role) 
	local i = 0 
	for i = 0 , bagnum-1,1 do 
		local item2 = GetChaItem(role,2,i)
		if item == item2 then 
			return i 
		end
	end 
end	
function AddPoint (role,point)
	local pointBef = GetJJCItemPoint(role)
	local pointAft =  point+ pointBef
	SetJJCItemPoint(role,pointAft)
end
function GetJJCXLReturnPoint (role)
	local jjcItem = GetChaItem(role ,2, 2)
	if ValidCha(jjcItem) == 0 or CheckJJCXiangLian(jjcItem) == 0 then 
		return "你背包的第3格没有放置竞技场专有的称号项链。"
	end
	local JJCItemID = GetItemID(jjcItem) 
	local returnPoint = 0
	if math.floor((JJCItemID- 6480 )/4)+1 == 1 then
		returnPoint = 9600*0.8
	elseif math.floor((JJCItemID- 6480 )/4)+1 == 2 then
		returnPoint = 48000*0.8
	elseif math.floor((JJCItemID- 6480 )/4)+1== 3 then
		returnPoint = 100800*0.8
	elseif math.floor((JJCItemID- 6480 )/4)+1 == 4 then
		returnPoint = 504000*0.8
	elseif math.floor((JJCItemID- 6480 )/4)+1== 5then
		returnPoint = 3504000*0.8
	end
	return "该项链可以返回"..returnPoint.."竞技场积分。"
end
	
function CanReturnJJCXianglian(role)
	local jjcItem = GetChaItem(role ,2, 2)
	local jhzz = GetChaItem2(role , 2, 6066)
	if ValidCha(jjcItem) == 0 or CheckJJCXiangLian(jjcItem) == 0 then 
		return "你背包的第3格没有放置竞技场专有的称号项链。"
	end
	if ValidCha(jhzz) == 0 then 
		return "你背包中没有竞技场之证。"
	end
	return LUA_TRUE	
end
function ReturnJJCXianglian(role)
	local jjcItem = GetChaItem(role ,2, 2)
	local jhzz = GetChaItem2(role , 2, 6066)
	local jjcItemID= GetItemID(jjcItem )
	local JJCJiFen = GetJJCItemPoint(role)
	local returnPoint =0
	if math.floor((jjcItemID- 6480 )/4)+1 == 1 then
		returnPoint = 9600*0.8
	elseif math.floor((jjcItemID- 6480 )/4)+1 == 2 then
		returnPoint = 48000*0.8
	elseif math.floor((jjcItemID- 6480 )/4)+1== 3 then
		returnPoint = 100800*0.8
	elseif math.floor((jjcItemID- 6480 )/4)+1 ==4 then
		returnPoint = 504000*0.8
	elseif math.floor((jjcItemID- 6480 )/4)+1== 5 then
		returnPoint = 3504000*0.8
	end
	JJCJiFen =JJCJiFen+returnPoint
	SetJJCItemPoint(role,JJCJiFen)
	RemoveChaItem(role , jjcItemID , 1,2,2,2,1)
	return LUA_TRUE	
end
function CheckPlayerIsInJJC(role,teamNum,teamlv )
	local PosX= 0
	local PosY= 0 
	PosX, PosY = GetChaPos(role)
	--SystemNotice(role,PosX..","..PosY)
	if teamNum == 2 then
		if  PosX >= 5200 and PosY >= 5000 and PosX<=7625 and PosY<= 7725 then
			return 1
		elseif  PosX >= 7600 and PosY >= 5900 and PosX<=8325 and PosY<= 6825 then
			return 1
		elseif  PosX >= 4500 and PosY >= 5800 and PosX<=5200 and PosY<= 6725 then
			return 1
		end
	elseif teamNum ==1 then
		if  PosX >= 5700 and PosY >= 3400 and PosX<=7075 and PosY<= 5275 then
			return 1
		elseif  PosX >= 6200 and PosY >= 5300 and PosX<=6675 and PosY<= 6600 then
			return 1
		elseif  PosX >= 5700 and PosY >= 6600 and PosX<=7075 and PosY<= 8475 then
			return 1
		end
	elseif teamNum == 3 then
		if  PosX >= 5675 and PosY >= 4525 and PosX<= 7025 and PosY<= 5025 then
			return 1
		elseif  PosX >= 6175 and PosY >= 5000 and PosX<= 6525 and PosY<= 5600 then
			return 1
		elseif  PosX >= 5575 and PosY >= 5525 and PosX<= 7175 and PosY<= 7175 then
			return 1
		elseif  PosX >= 4600 and PosY >= 6175 and PosX<= 5600 and PosY<= 6525 then
			return 1
		elseif  PosX >= 4175 and PosY >= 5575 and PosX<= 4625 and PosY<= 7025 then
			return 1
		elseif  PosX >= 6050 and PosY >= 7000 and PosX<= 6425 and PosY<= 7725 then
			return 1
		elseif  PosX >= 5575 and PosY >= 7775 and PosX<= 6875 and PosY<= 8325 then
			return 1
		elseif  PosX >= 7000 and PosY >= 6100 and PosX<= 7800 and PosY<= 6525 then
			return 1
		elseif  PosX >= 7800 and PosY >= 5675 and PosX<= 8425 and PosY<= 7025 then
			return 1
		end
	end
	return 0
end
function CheckItemCanUseInJJC(itemNo)
local itemCanUseInJJC= {}
	itemCanUseInJJC[1]=1078
itemCanUseInJJC[2]=1079
itemCanUseInJJC[3]=1080
itemCanUseInJJC[4]=1081
itemCanUseInJJC[5]=1082
itemCanUseInJJC[6]=1083
itemCanUseInJJC[7]=1084
itemCanUseInJJC[8]=1085
itemCanUseInJJC[9]=1087
itemCanUseInJJC[10]=1088
itemCanUseInJJC[11]=1089
itemCanUseInJJC[12]=1090
itemCanUseInJJC[13]=893
itemCanUseInJJC[14]=894
itemCanUseInJJC[15]=895
itemCanUseInJJC[16]=896
itemCanUseInJJC[17]=897
itemCanUseInJJC[18]=498
itemCanUseInJJC[19]=503
itemCanUseInJJC[20]=504
itemCanUseInJJC[21]=505
itemCanUseInJJC[22]=506
itemCanUseInJJC[23]=508
itemCanUseInJJC[24]=509
itemCanUseInJJC[25]=510
itemCanUseInJJC[26]=522
itemCanUseInJJC[27]=523
itemCanUseInJJC[28]=635
itemCanUseInJJC[29]=636
itemCanUseInJJC[30]=637
itemCanUseInJJC[31]=638
itemCanUseInJJC[32]=639
itemCanUseInJJC[33]=817
itemCanUseInJJC[34]=818
itemCanUseInJJC[35]=819
itemCanUseInJJC[36]=820
itemCanUseInJJC[37]=821
itemCanUseInJJC[38]=867
itemCanUseInJJC[39]=868
itemCanUseInJJC[40]=869
itemCanUseInJJC[41]=870
itemCanUseInJJC[42]=871
itemCanUseInJJC[43]=872
itemCanUseInJJC[44]=873
itemCanUseInJJC[45]=874
itemCanUseInJJC[46]=875
itemCanUseInJJC[47]=876
itemCanUseInJJC[48]=5628
itemCanUseInJJC[49]=3342
	local i = 1 
	while itemCanUseInJJC[i]~=nil do 
		if itemNo ==itemCanUseInJJC[i] then 
			return 1 
		end
		i=i+1
	end
	return 0 
end
----返回值为 1 能使用技能,0为不能使用
function CanUseItem(role ,Item)
	local ret = 1
	local teamNum,teamlv = IsPlayerInJJCMap(role)   -- IsPlayerInJJCMap(role) ：判断角色是否在竞技场地图，如果在则返回2个数字代表在几号竞技场，如果不在则返回0，0
	if teamNum ~= 0 and teamlv~= 0 then
		local itemNo= GetItemID(Item)
		ret = CheckItemCanUseInJJC(itemNo)
		if ret == 0 then 
			SystemNotice(role,"在竞技场中不能使用该物品")
			return 0
		end
	end
	return ret
end
--所有技能使用时调用，如果运行时间过长，请慎重添加   返回值为 1 能使用技能,0为不能使用
function CanUseSkill(atk ,skillNo,skillLV)
	local ret = 1
	local posIn = 1
	local teamNum,teamlv = IsPlayerInJJCMap(atk)   -- IsPlayerInJJCMap(role) ：判断角色是否在竞技场地图，如果在则返回2个数字代表在几号竞技场，如果不在则返回0，0
	if teamNum == 1 or teamNum == 3 then
		posIn= CheckPlayerIsInJJC(atk,teamNum,teamlv ) -- IsPlayerInJJCMap(role) ：判断角色是否在竞技场地图的竞技区域，如果不在则返回0，在则返回1		
	elseif  teamNum == 2 then 
		local PosX= 0
		local PosY= 0 
		PosX, PosY = GetChaPos(atk)
		PosX = math.floor(PosX/100)
		PosY = math.floor(PosY/100)
		if PosX < 55 or PosY < 55 or PosX>71 or PosY>71 then
			posIn = 0
		end
	end
	if posIn == 0  then 
		ret = 0 
		if skillNo~= 25 and (skillNo<28 or skillNo>38) then
			SystemNotice(atk,"竞技场内的非竞技区域不能使用技能")
		end
	end 
	return ret
end
function JobNumToName(num)
	local job={ "新手","剑士","猎人","水手","冒险者","祈愿使","技师","商人","巨剑士","双剑士","剑盾士","驯兽师","狙击手","圣职者","封印师","船长","航海士","暴发户","工程师"}
	if ValidCha(job[num+1])~= 0 then 
		return job[num+1]
	else 
		return "未知职业"
	end
end
function CanChargeZHZZ(role)
	local ret = BankNoItem(role , 6066,1)
	if ret == 0 then 
		return "你的银行已经有竞技场之证，不需要再购买了哦。"
	end
	ret = NoItem(role , 6066,1 )
	if ret == 0 then 
		return "你的背包里已经有竞技场之证，不需要再购买了哦。"
	end 
	ret = HasMoney(role , 50000)
	if ret == 0 then 
		return "购买竞技场之证需要5万银币，请准备好5万银币再来购买。"
	end 
	ret = HasLeaveBagGrid(role , 1 )
	if ret == 0 then 
		return "购买竞技场之证需要1个背包栏，请清出1个背包栏再来购买"
	end 
	return 1
end
function CheckJobIsNew ( role )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv >= 10 and job ~= 0 then
		return 1
	else
		return 0 
	end
end 



function CheckSHSkill ( role )
	local sk_add = SK_BAT
	local skillLv = GetSkillLv( role , sk_add )
	if  ValidCha(skillLv) == 0 then
		return 0
	else
		return 1
	end	
end 


function AddExpRealPer2 ( role , per, exp )
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv <= 50 then
		AddExpRealPer ( role , per, exp )
	else
		AddExp ( role, npc, 100000, 100000)
	end
	return 1
end 


function CheckAttrRole(role)
	local str = GetChaAttr ( role , ATTR_STR ) 
	local dex = GetChaAttr ( role , ATTR_DEX ) 
	local agi = GetChaAttr ( role , ATTR_AGI ) 
	local con = GetChaAttr ( role , ATTR_CON ) 
	local sta = GetChaAttr ( role , ATTR_STA ) 
	if str > 5 or dex > 5 or agi > 5 or con > 5 or sta > 5 then
		return 1
	else
		return 0
	end
end 


function CheckFirstSkill(role)
	local skills = {0066,0242,0074,0210,0079,0097,0099}
	local i = 0
	for i = 1,7,1 do 
		local skilllv =  GetSkillLv( role , skills[i] )
		--SystemNotice ( role , "skills=="..skills[i])
		if	skilllv ~=0 then 
			return 1						
		end
	end
	return 0
end 
-------------------小学毕业------------------	
function Ques2()	
	AddQues ("小学毕业",ASK_RAND,QUIT_COUNT)
	 AddNextQues()
	 Ques ("基本属性点加点到多少的倍数时，扩展属性有一次大的加成")
	 InitChoose()
	 choose ( "3")
	 choose ( "4")
	 choose ( "5")
	 choose ( "6")
	 answer ("5")
	 AddNextQues()
	 Ques ("扩展属性中的攻速超过多少时，人物攻击的实际攻击速度不再会有加成")
	 InitChoose()
	 choose ( "100")
	 choose ( "180")
	 choose ( "210")
	 choose ( "240")
	 answer ("210")
	 AddNextQues()
	 Ques ("通过加点，单个属性的最大值为")
	 InitChoose()
	 choose ( "80")
	 choose ( "100")
	 choose ( "120")
	 choose ( "150")
	 answer ("120")
	 AddNextQues()
	 Ques ("剑士的哪个属性点是基本没有用处的？")
	 InitChoose()
	 choose ( "力量")
	 choose ( "敏捷")
	 choose ( "体质")
	 choose ( "精神")
	 answer ("精神")
	 AddNextQues()
	 Ques ("药师的哪个属性点是基本没有用处的？")
	 InitChoose()
	 choose ( "力量")
	 choose ( "体质")
	 choose ( "精神")
	 answer ("力量")
	 AddNextQues()
	 Ques ("猎人的哪个属性点是基本没有用处的？")
	 InitChoose()
	 choose ( "力量")
	 choose ( "敏捷")
	 choose ( "专注")
	 choose ( "体质")
	 answer ("力量")
	 AddNextQues()
	 Ques ("冒险的哪个属性点是基本没有用处的？")
	 InitChoose()
	 choose ( "专注")
	 choose ( "体质")
	 choose ( "精神")
	 answer ("专注")
	 AddNextQues()
	 Ques ("技能书上写着“前置技能：雷击 LV8”，该技能哪个条件达到了就可以学习？")
	 InitChoose()
	 choose ( "学习了技能雷击")
	 choose ( "雷击的等级为8")
	 choose ( "雷击等级为8，并且有1个技能点")
	 answer ("雷击等级为8，并且有1个技能点")
	 AddNextQues()
	 Ques ("等级为多少的倍数时，升级给予的属性点会比平时多？")
	 InitChoose()
	 choose ( "2")
	 choose ( "5")
	 choose ( "10")
	 choose ( "15")
	 answer ("10")
	 AddNextQues()
	 Ques ("当装备的名字是下列颜色时，哪种装备最好？")
	 InitChoose()
	 choose ( "灰")
	 choose ( "白")
	 choose ( "绿")
	 choose ( "紫")
	 choose ( "红")
	 answer ("红")
 end
 
-------------------中学毕业------------------	
function Ques3()	
	AddQues ("中学毕业",ASK_RAND,QUIT_COUNT)
	 AddNextQues()
	 Ques ("基本属性点加点到多少的倍数时，扩展属性有一次大的加成")
	 InitChoose()
	 choose ( "3")
	 choose ( "4")
	 choose ( "5")
	 choose ( "6")
	 answer ("5")
	 AddNextQues()
	 Ques ("扩展属性中的攻速超过多少时，人物攻击的实际攻击速度不再会有加成")
	 InitChoose()
	 choose ( "100")
	 choose ( "180")
	 choose ( "210")
	 choose ( "240")
	 answer ("210")
	 AddNextQues()
	 Ques ("通过加点，单个属性的最大值为")
	 InitChoose()
	 choose ( "80")
	 choose ( "100")
	 choose ( "120")
	 choose ( "150")
	 answer ("120")
	 AddNextQues()
	 Ques ("剑士的哪个属性点是基本没有用处的？")
	 InitChoose()
	 choose ( "力量")
	 choose ( "敏捷")
	 choose ( "精神")
	 choose ( "体质")
	 answer ("精神")
	 AddNextQues()
	 Ques ("药师的哪个属性点是基本没有用处的？")
	 InitChoose()
	 choose ( "力量")
	 choose ( "体质")
	 choose ( "精神")
	 answer ("力量")
	 AddNextQues()
	 Ques ("猎人的哪个属性点是基本没有用处的？")
	 InitChoose()
	 choose ( "力量")
	 choose ( "敏捷")
	 choose ( "专注")
	 choose ( "体质")
	 answer ("力量")
	 AddNextQues()
	 Ques ("冒险的哪个属性点是基本没有用处的？")
	 InitChoose()
	 choose ( "专注")
	 choose ( "体质")
	 choose ( "精神")
	 answer ("专注")
	 AddNextQues()
	 Ques ("技能书上写着“前置技能：雷击 LV8”，该技能哪个条件达到了就可以学习？")
	 InitChoose()
	 choose ( "学习了技能雷击")
	 choose ( "雷击的等级为8")
	 choose ( "雷击等级为8，并且有1个技能点")
	 answer ("雷击等级为8，并且有1个技能点")
	 AddNextQues()
	 Ques ("等级为多少的倍数时，升级给予的属性点会比平时多？")
	 InitChoose()
	 choose ( "2")
	 choose ( "5")
	 choose ( "10")
	 choose ( "15")
	 answer ("10")
	 AddNextQues()
	 Ques ("当装备的名字是下列颜色时，哪种装备最好？")
	 InitChoose()
	 choose ( "灰")
	 choose ( "白")
	 choose ( "绿")
	 choose ( "紫")
	 choose ( "红")
	 answer ("红")
	 AddNextQues()
	 Ques ("海盗王多少级可以一转?")
	 InitChoose()
	 choose ( "5")
	 choose ( "10")
	 choose ( "15")
	 choose ( "20")
	 answer ("10")
	 AddNextQues()
	 Ques ("海盗王多少级可以二转?")
	 InitChoose()
	 choose ( "10")
	 choose ( "20")
	 choose ( "30")
	 choose ( "40")
	 answer ("40")
	 AddNextQues()
	 Ques ("怎么打开游戏中的帮助界面")
	 InitChoose()
	 choose ( "ALT+Z")
	 choose ( "ALT+H")
	 choose ( "ALT+A")
	 choose ( "ALT+S")
	 answer ("ALT+H")
	 AddNextQues()
	 Ques ("怎么打开游戏中的NPC列表")
	 InitChoose()
	 choose ( "ALT+Z")
	 choose ( "ALT+H")
	 choose ( "ALT+A")
	 choose ( "ALT+S")
	 answer ("ALT+Z")
	 AddNextQues()
	 Ques ("多少级可以出师")
	 InitChoose()
	 choose ( "38")
	 choose ( "39")
	 choose ( "40")
	 choose ( "41")
	 answer ("41")
	 AddNextQues()
	 Ques ("去哪个大陆可以精炼装备")
	 InitChoose()
	 choose ( "加纳大陆")
	 choose ( "魔女之海")
	 choose ( "深蓝群岛")
	 choose ( "以上都不对")
	 answer ("魔女之海")
	 AddNextQues()
	 Ques ("怎么去废灵迷宫")
	 InitChoose()
	 choose ( "飞过去")
	 choose ( "游过去")
	 choose ( "用船航行")
	 choose ( "走过去")
	 answer ("用船航行")
	 AddNextQues()
	 Ques ("破甲是什么职业的技能")
	 InitChoose()
	 choose ( "剑士")
	 choose ( "猎人")
	 choose ( "冒险者")
	 choose ( "药师")
	 answer ("剑士")
	 AddNextQues()
	 Ques ("怎么打开游戏中的大地图")
	 InitChoose()
	 choose ( "ALT+W")
	 choose ( "ALT+H")
	 choose ( "ALT+A")
	 choose ( "ALT+S")
	 answer ("ALT+W")
	 AddNextQues()
	 Ques ("使用什么道具可以增加精灵的体力")
	 InitChoose()
	 choose ( "精灵饲料")
	 choose ( "白银城果脯")
	 choose ( "冰极爽口梅")
	 choose ( "圣雪山龙果")
	 answer ("精灵饲料")
	 AddNextQues()
	 Ques ("贝壳装甲是什么职业的技能")
	 InitChoose()
	 choose ( "剑士")
	 choose ( "猎人")
	 choose ( "冒险者")
	 choose ( "药师")
	 answer ("冒险者")
	 AddNextQues()
	 Ques ("宝石合成找哪个NPC")
	 InitChoose()
	 choose ( "铁匠小金金")
	 choose ( "杂货商人艾墨")
	 choose ( "银行出纳摩妮雅")
	 choose ( "双儿MM")
	 answer ("杂货商人艾墨")
	 AddNextQues()
	 Ques ("陈旧机票找哪个NPC购买")
	 InitChoose()
	 choose ( "杂货商人")
	 choose ( "传送师")
	 choose ( "银行出纳")
	 choose ( "药草商人")
	 answer ("杂货商人")
	 AddNextQues()
	 Ques ("每周可以去双儿MM那里领取几个小时的双倍经验")
	 InitChoose()
	 choose ( "5")
	 choose ( "10")
	 choose ( "15")
	 choose ( "30")
	 answer ("10")
	 AddNextQues()
	 Ques ("每天可以在神秘的占卜师处免费占卜几次")
	 InitChoose()
	 choose ( "1")
	 choose ( "2")
	 choose ( "3")
	 choose ( "4")
	 answer ("1")
	 AddNextQues()
	 Ques ("建造船只找哪个NPC")
	 InitChoose()
	 choose ( "海港指挥")
	 choose ( "船工")
	 choose ( "竞技场管理员")
	 choose ( "魔晶大使")
	 answer ("船工")
	 AddNextQues()
	 Ques ("摆摊技能如何学习")
	 InitChoose()
	 choose ( "找NPC")
	 choose ( "双击摆摊技能书")
	 choose ( "拥有一点生活技能点和一本摆摊技能书")
	 answer ("拥有一点生活技能点和一本摆摊技能书")
	 AddNextQues()
	 Ques ("怎么打开游戏中的怪物列表")
	 InitChoose()
	 choose ( "ALT+Z")
	 choose ( "ALT+H")
	 choose ( "ALT+A")
	 choose ( "ALT+S")
	 answer ("ALT+Z")
	 AddNextQues()
	 Ques ("按什么快捷键打开任务面板")
	 InitChoose()
	 choose ( "ALT+Q")
	 choose ( "ALT+H")
	 choose ( "ALT+A")
	 choose ( "ALT+S")
	 answer ("ALT+Q")
 end	


function CheckXXBYPoint(role,ope,num)
	local XXBYid  = GetChaDefaultName ( role ) 
	if ValidCha(XXBYpoint[XXBYid]) == 0 then 
		return 0 
	end
	if ope ==">" then 
		if XXBYpoint[XXBYid] > num then 
			return 1
		end
	elseif ope ==">=" then 
		if XXBYpoint[XXBYid] >= num then 
			return 1
		end
	elseif ope =="==" then 
		if XXBYpoint[XXBYid] == num then 
			return 1
		end
	elseif ope =="~=" then 
		if XXBYpoint[XXBYid] ~= num then 
			return 1
		end
	elseif ope =="<=" then 
		if XXBYpoint[XXBYid] <= num then 
			return 1
		end
	elseif ope =="<" then 
		if XXBYpoint[XXBYid] < num then 
			return 1
		end
	else
		return 0 
	end
	return 0
end

	
function GiveXXBYRewards(role)
	local XXBYid  = GetChaDefaultName ( role ) 
	if ValidCha(XXBYpoint[XXBYid]) == 0 then 
		return 0 
	end
	if XXBYpoint[XXBYid] >=60 then 
		TrigASBJY(role,1,20*60)	
	end
	if XXBYpoint[XXBYid] >=70 then
		Give20Hand(role)
	end
	if XXBYpoint[XXBYid] >=80 then 
		Give20Leg(role)
	end
	if XXBYpoint[XXBYid] >=90 then
		GiveItem(role,0,4617,1,4)
	end
	if XXBYpoint[XXBYid] >=100 then 
		GiveItem(role,0,4673,1,4)
	end
	return 1
end


function Give20Hand(role)
	local zblv = 20
	local zbtype = 23
	local count,equip = SearchZBbyTable(role,InIt20Hand,zblv,zbtype)
	if count>0 then 
		local i = math.random(1,count)
		GiveItem(role,0,equip[i],1,4)
	else
		local name = GetChaDefaultName(role)
		LG("Search_err","Give20Hand 没有找到",name,"的装备")
	end
end


function Give20Leg(role)
	local zblv = 20
	local zbtype = 24
	local count,equip = SearchZBbyTable(role,InIt20Leg,zblv,zbtype)
	if count>0 then 
		local i = math.random(1,count)
		GiveItem(role,0,equip[i],1,4)
	else
		local name = GetChaDefaultName(role)
		LG("Search_err","Give20Leg 没有找到",name,"的装备")
	end
end


function InIt20Leg()
ZBID[1]="0643"	RoleType[1]="3,2,1"	ZBLV[1]="20"	RoleJob[1]="1,8,9,10"	ZBType[1]="24"
ZBID[2]="0658"	RoleType[2]="1,3"	ZBLV[2]="20"	RoleJob[2]="2,11,12"	ZBType[2]="24"
ZBID[3]="0690"	RoleType[3]="1,3"	ZBLV[3]="20"	RoleJob[3]="4,16"	ZBType[3]="24"
ZBID[4]="0718"	RoleType[4]="3"	ZBLV[4]="20"	RoleJob[4]="5,13,14"	ZBType[4]="24"
ZBID[5]="0733"	RoleType[5]="4"	ZBLV[5]="20"	RoleJob[5]="5,13,14"	ZBType[5]="24"
ZBID[6]="0738"	RoleType[6]="4"	ZBLV[6]="20"	RoleJob[6]="4,16"	ZBType[6]="24"
	ZBcount = 6
end


function InIt20Hand ()--type: 1,2,3---5;1,3----1;3----3;4---4	
	ZBID[1]="0467"	RoleType[1]="3,2,1"	ZBLV[1]="20"	RoleJob[1]="1,8,9,10"	ZBType[1]="23"
	ZBID[2]="0482"	RoleType[2]="1,3"	ZBLV[2]="20"	RoleJob[2]="2,11,12"	ZBType[2]="23"
	ZBID[3]="0514"	RoleType[3]="1,3"	ZBLV[3]="20"	RoleJob[3]="4,16"	ZBType[3]="23"
	ZBID[4]="0542"	RoleType[4]="3"	ZBLV[4]="20"	RoleJob[4]="5,13,14"	ZBType[4]="23"
	ZBID[5]="0557"	RoleType[5]="4"	ZBLV[5]="20"	RoleJob[5]="5,13,14"	ZBType[5]="23"
	ZBID[6]="0562"	RoleType[6]="4"	ZBLV[6]="20"	RoleJob[6]="4,16"	ZBType[6]="23"
	ZBcount = 6
end


function CheckZBbyString(job,jobtest)
	local list = Split(jobtest, ",")
	local i = 1 
	while list[i]~=nil do
		if job == tonumber(list[i]) or tonumber(list[i])== -1 then 
			return 1
		end
		i=i+1
	end
end


function Split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
		break
		end
		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)
		nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end

 
function SearchZBbyTable(role,Table,zblv,zbtype)
	ZBID={} 
	RoleType={}
	ZBLV={}
	RoleJob={}
	ZBType={}
	ZBcount = 0
	if Table == InIt20Hand then 
		InIt20Hand ()
	elseif Table == InIt20Leg then 
		InIt20Leg ()
	elseif Table == ZBlist25To30HL then 
		ZBlist25To30HL ()
	elseif Table == InitZXBY then 
		InitZXBY ()
	end
	local job = GetChaAttr(role,ATTR_JOB)
	local roletype = GetChaTypeID(role)
	local equip = {}
	equip[1]= 0466
	local equipCount = 0 
	local i = 0 
	for i = 1 ,ZBcount ,1 do 
		if CheckZBbyString(job,RoleJob[i])==1 and zblv == tonumber(ZBLV[i]) and CheckZBbyString(roletype,RoleType[i])== 1 and zbtype == tonumber(ZBType[i]) then 
			equipCount= equipCount+1
			equip[equipCount] = ZBID[i]
		end
	end
	ZBID=nil
	RoleType=nil
	ZBLV=nil
	RoleJob=nil
	ZBType=nil
	ZBcount = nil
	return equipCount,equip
end


function ZBlist25To30HL()
ZBID[1]="0286"	RoleType[1]="-1"	ZBLV[1]="30"	RoleJob[1]="-1"	ZBType[1]="26"
ZBID[2]="0287"	RoleType[2]="-1"	ZBLV[2]="30"	RoleJob[2]="-1"	ZBType[2]="26"
ZBID[3]="0288"	RoleType[3]="-1"	ZBLV[3]="30"	RoleJob[3]="-1"	ZBType[3]="26"
ZBID[4]="0321"	RoleType[4]="-1"	ZBLV[4]="30"	RoleJob[4]="-1"	ZBType[4]="26"
ZBID[5]="0468"	RoleType[5]="3,2,1"	ZBLV[5]="25"	RoleJob[5]="1,8,9,10"	ZBType[5]="23"
ZBID[6]="0469"	RoleType[6]="3,2,1"	ZBLV[6]="30"	RoleJob[6]="1,8,9,10"	ZBType[6]="23"
ZBID[7]="0473"	RoleType[7]="3,2,1"	ZBLV[7]="25"	RoleJob[7]="1,8,9,10"	ZBType[7]="23"
ZBID[8]="0483"	RoleType[8]="1,3"	ZBLV[8]="30"	RoleJob[8]="2,11,12"	ZBType[8]="23"
ZBID[9]="0487"	RoleType[9]="1,3"	ZBLV[9]="25"	RoleJob[9]="2,11,12"	ZBType[9]="23"
ZBID[10]="0513"	RoleType[10]="1,3"	ZBLV[10]="25"	RoleJob[10]="4,16"	ZBType[10]="23"
ZBID[11]="0516"	RoleType[11]="1,3"	ZBLV[11]="30"	RoleJob[11]="4,16"	ZBType[11]="23"
ZBID[12]="0524"	RoleType[12]="-1"	ZBLV[12]="30"	RoleJob[12]="-1"	ZBType[12]="26"
ZBID[13]="0526"	RoleType[13]="4"	ZBLV[13]="30"	RoleJob[13]="4,16"	ZBType[13]="23"
ZBID[14]="0528"	RoleType[14]="4"	ZBLV[14]="25"	RoleJob[14]="4,16"	ZBType[14]="23"
ZBID[15]="0536"	RoleType[15]="4"	ZBLV[15]="25"	RoleJob[15]="5,13,14"	ZBType[15]="23"
ZBID[16]="0544"	RoleType[16]="3"	ZBLV[16]="30"	RoleJob[16]="5,13,14"	ZBType[16]="23"
ZBID[17]="0549"	RoleType[17]="3"	ZBLV[17]="25"	RoleJob[17]="5,13,14"	ZBType[17]="23"
ZBID[18]="0565"	RoleType[18]="4"	ZBLV[18]="30"	RoleJob[18]="5,13,14"	ZBType[18]="23"
ZBID[19]="0645"	RoleType[19]="3,2,1"	ZBLV[19]="30"	RoleJob[19]="1,8,9,10"	ZBType[19]="24"
ZBID[20]="0649"	RoleType[20]="3,2,1"	ZBLV[20]="25"	RoleJob[20]="1,8,9,10"	ZBType[20]="24"
ZBID[21]="0659"	RoleType[21]="1,3"	ZBLV[21]="30"	RoleJob[21]="2,11,12"	ZBType[21]="24"
ZBID[22]="0665"	RoleType[22]="1,3"	ZBLV[22]="25"	RoleJob[22]="2,11,12"	ZBType[22]="24"
ZBID[23]="0689"	RoleType[23]="1,3"	ZBLV[23]="25"	RoleJob[23]="4,16"	ZBType[23]="24"
ZBID[24]="0692"	RoleType[24]="1,3"	ZBLV[24]="30"	RoleJob[24]="4,16"	ZBType[24]="24"
ZBID[25]="0702"	RoleType[25]="4"	ZBLV[25]="30"	RoleJob[25]="4,16"	ZBType[25]="24"
ZBID[26]="0704"	RoleType[26]="4"	ZBLV[26]="25"	RoleJob[26]="4,16"	ZBType[26]="24"
ZBID[27]="0712"	RoleType[27]="4"	ZBLV[27]="25"	RoleJob[27]="5,13,14"	ZBType[27]="24"
ZBID[28]="0720"	RoleType[28]="3"	ZBLV[28]="30"	RoleJob[28]="5,13,14"	ZBType[28]="24"
ZBID[29]="0725"	RoleType[29]="3"	ZBLV[29]="25"	RoleJob[29]="5,13,14"	ZBType[29]="24"
ZBID[30]="0741"	RoleType[30]="4"	ZBLV[30]="30"	RoleJob[30]="5,13,14"	ZBType[30]="24"
ZBID[31]="1935"	RoleType[31]="3,2,1"	ZBLV[31]="30"	RoleJob[31]="1,8,9,10"	ZBType[31]="23"
ZBID[32]="1939"	RoleType[32]="3,2,1"	ZBLV[32]="30"	RoleJob[32]="1,8,9,10"	ZBType[32]="24"
ZBID[33]="1947"	RoleType[33]="1,3"	ZBLV[33]="30"	RoleJob[33]="2,11,12"	ZBType[33]="23"
ZBID[34]="1951"	RoleType[34]="1,3"	ZBLV[34]="30"	RoleJob[34]="2,11,12"	ZBType[34]="24"
ZBID[35]="1962"	RoleType[35]="3,4"	ZBLV[35]="30"	RoleJob[35]="5,13,14"	ZBType[35]="23"
ZBID[36]="1969"	RoleType[36]="3,4"	ZBLV[36]="30"	RoleJob[36]="5,13,14"	ZBType[36]="24"
ZBID[37]="1980"	RoleType[37]="1,3,4"	ZBLV[37]="30"	RoleJob[37]="4,16"	ZBType[37]="23"
ZBID[38]="1984"	RoleType[38]="1,3,4"	ZBLV[38]="30"	RoleJob[38]="4,16"	ZBType[38]="24"
ZBID[39]="3667"	RoleType[39]="-1"	ZBLV[39]="30"	RoleJob[39]="-1"	ZBType[39]="26"
ZBID[40]="3668"	RoleType[40]="-1"	ZBLV[40]="30"	RoleJob[40]="-1"	ZBType[40]="26"
ZBID[41]="4621"	RoleType[41]="-1"	ZBLV[41]="25"	RoleJob[41]="-1"	ZBType[41]="26"
ZBID[42]="4622"	RoleType[42]="-1"	ZBLV[42]="25"	RoleJob[42]="-1"	ZBType[42]="26"
ZBID[43]="4623"	RoleType[43]="-1"	ZBLV[43]="25"	RoleJob[43]="-1"	ZBType[43]="26"
ZBID[44]="4624"	RoleType[44]="-1"	ZBLV[44]="25"	RoleJob[44]="-1"	ZBType[44]="26"
ZBID[45]="4625"	RoleType[45]="-1"	ZBLV[45]="25"	RoleJob[45]="-1"	ZBType[45]="26"
ZBID[46]="4626"	RoleType[46]="-1"	ZBLV[46]="30"	RoleJob[46]="-1"	ZBType[46]="26"
ZBID[47]="4627"	RoleType[47]="-1"	ZBLV[47]="30"	RoleJob[47]="-1"	ZBType[47]="26"
ZBID[48]="4628"	RoleType[48]="-1"	ZBLV[48]="30"	RoleJob[48]="-1"	ZBType[48]="26"
ZBID[49]="4629"	RoleType[49]="-1"	ZBLV[49]="30"	RoleJob[49]="-1"	ZBType[49]="26"
ZBID[50]="4630"	RoleType[50]="-1"	ZBLV[50]="30"	RoleJob[50]="-1"	ZBType[50]="26"

ZBcount = 50
end


function GiveLiLianPrize(role,zblv,zbtype)
	local count,equip = SearchZBbyTable(role,ZBlist25To30HL,zblv,zbtype)
	if count > 0 then
		local i = math.random(1,count)
		GiveItem(role,0,equip[i],1,4)
	else 
		local name = GetChaDefaultName(role)
		LG("Search_err","Give20Leg 没有找到",name,"的装备")
	end
end


function BaBuPrize(role)
	local itemNum=CheckBagItem(role ,6710)
	local expGive= 3500
	
	if itemNum<5 then 
	local temp = 0
	local temp2 = 0 
		while itemNum>0 do 
			temp = 1/ math.pow(2,itemNum)
			itemNum=itemNum-1
			temp2=temp2+temp			
		end
		expGive= math.floor(expGive+expGive*temp2)
	else 
		expGive = math.floor(expGive+expGive*1/2+expGive*1/4+expGive*1/8+expGive*1/16)
	end
	AddExp(role,0,expGive,expGive)
	if itemNum>= 6 then 
		GiveLiLianPrize(role,25,23)
	end
	if  itemNum>= 8 then 
		GiveLiLianPrize(role,30,24)
	end
	if  itemNum>= 11 then 
		GiveLiLianPrize(role,30,26)
	end
	if  itemNum>= 13 then 
		GiveItem(role,0,6714,1,4)
		
	end
	RemoveChaItem(role,6710,99,2,-1,2,1)
	return 1
end


function ALBSPrize(role)
	local itemNum=CheckBagItem(role ,6711)
	local expGive= 3500
	
		if itemNum<5 then 
	local temp = 0
	local temp2 = 0 
		while itemNum>0 do 
			temp = 1/ math.pow(2,itemNum)
			itemNum=itemNum-1
			temp2=temp2+temp			
		end
		expGive= math.floor(expGive+expGive*temp2)
	else 
		expGive = math.floor(expGive+expGive*1/2+expGive*1/4+expGive*1/8+expGive*1/16)
	end
	---GiveEXp
	AddExp(role,0,expGive,expGive)
	if itemNum>= 6 then 
		GiveLiLianPrize(role,25,24)
	end
	if  itemNum>= 8 then 
		GiveLiLianPrize(role,30,26)
	end
	if  itemNum>= 11 then 
		GiveLiLianPrize(role,30,23)
	end
	if  itemNum>= 13 then 
		GiveItem(role,0,6715,1,4)
	end
	RemoveChaItem(role,6711,99,2,-1,2,1)
	return 1
end


function BLGLPrize(role)
	local itemNum=CheckBagItem(role ,6709)
	local expGive= 3500
		if itemNum<5 then 
	local temp = 0
	local temp2 = 0 
		while itemNum>0 do 
			temp = 1/ math.pow(2,itemNum)
			itemNum=itemNum-1
			temp2=temp2+temp			
		end
		expGive= math.floor(expGive+expGive*temp2)
	else 
		expGive = math.floor(expGive+expGive*1/2+expGive*1/4+expGive*1/8+expGive*1/16)
	end
	---GiveEXp
	AddExp(role,0,expGive,expGive)
	if itemNum>= 6 then 
		GiveLiLianPrize(role,25,26)
	end
	if  itemNum>= 8 then 
		GiveLiLianPrize(role,30,23)
	end
	if  itemNum>= 11 then 
		GiveLiLianPrize(role,30,24)
	end
	if  itemNum>= 13 then 
		GiveItem(role,0,6716,1,4)
	end
	RemoveChaItem(role,6709,99,2,-1,2,1)
	return 1
end


function CheckItemHasForge(item)
	local Jinglianxinxi = GetItemForgeParam ( item , 1 )
	Jinglianxinxi = TansferNum ( Jinglianxinxi )
	local Item_Stone={}
	Item_Stone[0] = GetNum_Part2 ( Jinglianxinxi )
	Item_Stone[1] = GetNum_Part4 ( Jinglianxinxi )
	Item_Stone[2] = GetNum_Part6 ( Jinglianxinxi )
	
	if Item_Stone[0]==0 and Item_Stone[1]==0 and Item_Stone[2]==0 then
		return 0		
	end
	return 1
end


function CheckRoleLearnedForge(role)
	local item = GetChaItem(role,1,2)
	local ret = CheckItemHasForge(item)
	if ret == 1 then 
		return 1
	end
	local i = 0
	local bagnum = GetKbCap(role) 
	for i= 0,bagnum-1,1 do 
		item = GetChaItem(role,2,i)
		local itemType=GetItemType(item)
		if itemType == 22 or itemType == 27 then 
			local ret = CheckItemHasForge(item)
			if ret == 1 then 
				return 1
			end
		end
	end
	return 0 
end


function HasCleckLevel(role)
	local name = GetChaDefaultName(role)
	if ComplBoatLevel[name] ==nil then 
		return 0 
	end
	return 1
end


function HasCleckSupply(role)
	local name = GetChaDefaultName(role)
	if ComplBoatSupply[name] ==nil then 
		return 0 
	end
	return 1
end


function InitZXBY()
ZBID[1]="0764"	RoleType[1]="2"	ZBLV[1]="45"	RoleJob[1]="8"	ZBType[1]="22"	
ZBID[2]="0767"	RoleType[2]="3,1"	ZBLV[2]="45"	RoleJob[2]="9"	ZBType[2]="22"	
ZBID[3]="0778"	RoleType[3]="1,3"	ZBLV[3]="45"	RoleJob[3]="12"	ZBType[3]="22"	
ZBID[4]="0790"	RoleType[4]="3,4"	ZBLV[4]="45"	RoleJob[4]="13"	ZBType[4]="22"	
ZBID[5]="0796"	RoleType[5]="3,4"	ZBLV[5]="45"	RoleJob[5]="14"	ZBType[5]="22"	
ZBID[6]="0804"	RoleType[6]="1,3,4"	ZBLV[6]="45"	RoleJob[6]="16"	ZBType[6]="22"	
ZBID[7]="4641"	RoleType[7]="-1"	ZBLV[7]="45"	RoleJob[7]="-1"	ZBType[7]="26"	
ZBID[8]="4642"	RoleType[8]="-1"	ZBLV[8]="45"	RoleJob[8]="-1"	ZBType[8]="26"	
ZBID[9]="4643"	RoleType[9]="-1"	ZBLV[9]="45"	RoleJob[9]="-1"	ZBType[9]="26"	
ZBID[10]="4644"	RoleType[10]="-1"	ZBLV[10]="45"	RoleJob[10]="-1"	ZBType[10]="26"	
ZBID[11]="4645"	RoleType[11]="-1"	ZBLV[11]="45"	RoleJob[11]="-1"	ZBType[11]="26"	
ZBID[12]="4696"	RoleType[12]="-1"	ZBLV[12]="45"	RoleJob[12]="-1"	ZBType[12]="25"	
ZBID[13]="4697"	RoleType[13]="-1"	ZBLV[13]="45"	RoleJob[13]="-1"	ZBType[13]="25"	
ZBID[14]="4698"	RoleType[14]="-1"	ZBLV[14]="45"	RoleJob[14]="-1"	ZBType[14]="25"	
ZBID[15]="4699"	RoleType[15]="-1"	ZBLV[15]="45"	RoleJob[15]="-1"	ZBType[15]="25"	
ZBID[16]="0763"	RoleType[16]="1,2,3"	ZBLV[16]="35"	RoleJob[16]="1,8,9"	ZBType[16]="22"
ZBID[17]="0777"	RoleType[17]="1,3"	ZBLV[17]="35"	RoleJob[17]="2,12"	ZBType[17]="22"
ZBID[18]="0789"	RoleType[18]="3,4"	ZBLV[18]="35"	RoleJob[18]="5,13,14"	ZBType[18]="22"
ZBID[19]="0803"	RoleType[19]="1,3,4"	ZBLV[19]="35"	RoleJob[19]="4,16"	ZBType[19]="22"

ZBcount=19
end


function GiveZXBYRewards(role)
	local ZXBYid  = GetChaDefaultName ( role ) 
	if ValidCha(ZXBYpoint[ZXBYid]) == 0 then 
		return 0 
	end
	if ZXBYpoint[ZXBYid] >=60 then 
		TrigASBJY(role,1,40*60)	
	end
	if ZXBYpoint[ZXBYid] >=70 then
		GiveZhongXuePrize(role,45,26)
	end
	if ZXBYpoint[ZXBYid] >=80 then 
		GiveZhongXuePrize(role,45,25)
	end
	if ZXBYpoint[ZXBYid] <100 then
		GiveZhongXuePrize(role,35,22)
	elseif ZXBYpoint[ZXBYid] >=100 then 
		if CheckCha_Job(role) >=8 then 
			GiveZhongXuePrize(role,45,22)
		else
			GiveZhongXuePrize(role,35,22)
		end
	end
	return 1
end


function GiveZhongXuePrize(role,zblv,zbtype)
	local count,equip = SearchZBbyTable(role,InitZXBY,zblv,zbtype)
	if count > 0 then
		local i = math.random(1,count)
		GiveItem(role,0,equip[i],1,4)
	else 
		local name = GetChaDefaultName(role)
		LG("Search_err","GiveZhongXuePrize Not found",name,"Equipment")
	end
end


function CheckZXBYPoint(role,ope,num)
	local ZXBYid  = GetChaDefaultName ( role ) 
	if ValidCha(ZXBYpoint[ZXBYid]) == 0 then 
		return 0 
	end
	if ope ==">" then 
		if ZXBYpoint[ZXBYid] > num then 
			return 1
		end
	elseif ope ==">=" then 
		if ZXBYpoint[ZXBYid] >= num then 
			return 1
		end
	elseif ope =="==" then 
		if ZXBYpoint[ZXBYid] == num then 
			return 1
		end
	elseif ope =="~=" then 
		if ZXBYpoint[ZXBYid] ~= num then 
			return 1
		end
	elseif ope =="<=" then 
		if ZXBYpoint[ZXBYid] <= num then 
			return 1
		end
	elseif ope =="<" then 
		if ZXBYpoint[ZXBYid] < num then 
			return 1
		end
	else
		return 0 
	end
	return 0
end

---
function DelJingLing ( role , now_tick)
	local bagnum = GetKbCap( role ) 
	i = 0 
	for i = 0 , bagnum-1 , 1 do
		local Item_bg = GetChaItem ( role , 2 , i  )
		if Item_bg == nil then
			else
			local Get_Item_Type = GetItemType ( Item_bg )
			if Get_Item_Type == 59 then
				local str_Traget = GetItemAttr( Item_bg ,ITEMATTR_VAL_STR )		--Strenght
				local con_Traget = GetItemAttr( Item_bg ,ITEMATTR_VAL_CON )		--Constitution
				local agi_Traget = GetItemAttr( Item_bg ,ITEMATTR_VAL_AGI )		--Accuracy
				local dex_Traget = GetItemAttr( Item_bg ,ITEMATTR_VAL_DEX )		--Agility
				local sta_Traget = GetItemAttr( Item_bg ,ITEMATTR_VAL_STA )		--Spirit
				local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget  ----Stat To Add For A Level
				if lv_Traget > 53 then
					SetItemAttr ( Item_bg , ITEMATTR_URE , 0 )
				end
			end
		end
	end
end

---Normal Fruits
function CheckJingLingLv ( role , Item_Traget)
		local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )		--Strenght
		local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )		--Constitution
		local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )		--Accuracy
		local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )		--Agility
		local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )		--Spirit
		local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget  ----Stat To Add For A Level
		if lv_Traget > 53 then
			return 0
		else
			return 1
		
		end
end

---Great Fruits
function CheckJingLingLv1 ( role , Item_Traget)
		local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )		--Strenght
		local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )		--Constitution
		local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )		--Accuracy
		local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )		--Agility
		local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )		--Spirit
		local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget  ----Stat To Add For A Level
		if lv_Traget >= 53 then
			return 0
		else
			return 1
		
		end
end

---Improved Fruits
function CheckJingLingLv2 ( role , Item_Traget)
                local ItemID = GetItemID ( Item_Traget )
                local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )          --Strenght
                local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )          --Constitution
                local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )          --Agility
                local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )          --Accuracy
                local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )          --Spirit
                local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget  --Stat To Add For A Level
                if lv_Traget < 42 then
                        return 0
                else
                        return 1
        
                end
		if lv_Traget > 50 then
                        return 0
                else
                        return 1
        
                end
 
end

function player_timer(...)
        local player,freq,time = arg[1],arg[2],arg[3]
end
 
function npc_timer(...)
    local npc,freq,time = arg[1],arg[2],arg[3]
	local name = GetChaDefaultName (npc)
	local target = find_target(npc,300)
	local playername = GetChaDefaultName (target)
	
	if(target ~= nil and name == "Gem Seller" and Rand(100) < 5 )  then
	ChaSay(target,npc, "Sup "..playername.." ?")
	end
	
 end
function monster_timer(...)
local monster,freq,time = arg[1],arg[2],arg[3]
  	
end

function EnchantCheck(role)

	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Your inventory is locked.")
		return LUA_FALSE
	end

	local Item_bg = GetChaItem ( role , 2 , 3  )
	local Item_Type = GetItemType ( Item_bg )
	local ItemID = GetItemID ( Item_bg )

	if Item_Type == 1 or Item_Type == 2 or Item_Type == 3 or Item_Type == 4 or Item_Type == 7 or Item_Type == 9 or Item_Type == 10 or Item_Type == 11 or Item_Type == 22 or Item_Type == 23 or Item_Type == 24 or Item_Type == 27 then
		local prefix = math.floor(math.mod(GetItemAttr(Item_bg, 53), 1000) / 10)
		if GetItemAttr(Item_bg, 53) < 9001 and GetItemAttr(Item_bg, 53) ~= 9300 then
			--SystemNotice(role ,"This Weapon can only be enchanted after removeing the old orb.")
			return LUA_TRUE
		else

		return LUA_TRUE

		end

	else
		SystemNotice( role , "You must put a Equip on your 4th Inventory Slot." )
		return LUA_FALSE
	end

end

function Enchant(role, value)

	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Your inventory is locked.")
		return LUA_FALSE
	end

	local prefix = 0

	local Item_bg = GetChaItem ( role , 2 , 3  )
	local Item_Type = GetItemType ( Item_bg )
	local ItemID = GetItemID ( Item_bg )
	local orb_id = value
	local Orb_Num = CheckBagItem(  role , orb_id )


	if Orb_Num >= 0 and Item_Type == 1 or Item_Type == 2 or Item_Type == 3 or Item_Type == 4 or Item_Type == 7 or Item_Type == 9 or Item_Type == 10 or Item_Type == 11 or Item_Type == 22 or Item_Type == 23 or Item_Type == 24 or Item_Type == 27 then

	for i = 1,ORBS_COUNT do
		if orb_id == ORBS[i].ItemID then
			prefix = ORBS[i].Pre
			orb_type = ORBS[i].Type
		end
	end



		local now_prefix = math.floor(math.mod(GetItemAttr(Item_bg, 53), 1000) / 10)
		local old = GetItemAttr(Item_bg, 53)

		if Item_Type <= 11 and orb_type == 1 or Item_Type == 22 and orb_type == 2 or Item_Type == 27 and orb_type == 2 or Item_Type == 23 and orb_type == 4 or Item_Type == 24 and orb_type == 3 or Item_Type == 24 and orb_type == 5	or Item_Type == 23 and orb_type == 5 then
			if GetItemAttr(Item_bg, 53) < 9001 then
				local rad = math.random ( 1, 100 )
				if rad<=80 then
					TakeItem( role, 0,orb_id, 1 )
					SetItemAttr(Item_bg, 53, 9000 + prefix * 10)
					SystemNotice(role ,"Successful enchanted your Equip.")
					return LUA_TRUE
				elseif rad <= 10 then
					TakeItem( role, 0,orb_id, 1 )
					SetItemAttr(Item_bg, 53, 9300)
					SystemNotice(role ,"You failed enchanting the equipment! This Equipment can not be enchanted anymore!")
					return LUA_TRUE
				else
					TakeItem( role, 0,orb_id, 1 )
					SystemNotice(role ,"You failed enchanting the equipment!")
					return LUA_FALSE
				end
			else

				local rad = math.random ( 1, 100 )
				if rad<=80 then
					TakeItem( role, 0,orb_id, 1 )
					SetItemAttr(Item_bg, 53, 9000 + prefix * 10)
					SystemNotice(role ,"Successful enchanted your Equip.")
					return LUA_TRUE
				elseif rad <= 10 then
					TakeItem( role, 0,orb_id, 1 )
					SetItemAttr(Item_bg, 53, 9300)
					SystemNotice(role ,"You failed enchanting the equipment! This Equipment can not be enchanted anymore!")
					return LUA_TRUE
				else
					TakeItem( role, 0,orb_id, 1 )
					SystemNotice(role ,"You failed enchanting the equipment!")
					return LUA_FALSE
				end

			end

		else
			SystemNotice(role ,"Equip and Orb Type do not Match!")
			return LUA_FALSE
		end

	else
		SystemNotice( role , "You must put a Equip on your 4th Inventory Slot." )
		return LUA_FALSE
	end
end

function ExtractOrb(role, value)

	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Your inventory is locked.")
		return LUA_FALSE
	end

	local prefix = 0

	local Item_bg = GetChaItem ( role , 2 , 3  )
	local Item_Type = GetItemType ( Item_bg )
	local ItemID = GetItemID ( Item_bg )

	if Item_Type == 1 or Item_Type == 2 or Item_Type == 3 or Item_Type == 4 or Item_Type == 7 or Item_Type == 9 or Item_Type == 10 or Item_Type == 11 or Item_Type == 22 or Item_Type == 23 or Item_Type == 24 or Item_Type == 27 then

		local now_prefix = math.floor(math.mod(GetItemAttr(Item_bg, 53), 1000) / 10)
		local old = GetItemAttr(Item_bg, 53)

		if GetItemAttr(Item_bg, 53) > 9000 then
			local rad = math.random ( 1, 100 )
			if rad<=90 then
				SetItemAttr(Item_bg, 53, 9000)
				SystemNotice(role ,"Successful extracted your Orb.")

				local Item_CanGet = GetChaFreeBagGridNum ( role )

				for i = 1,ORBS_COUNT do
		if now_prefix == ORBS[i].Pre then
			orb_id = ORBS[i].ItemID
		end
	end

				if Item_CanGet <= 0 then
					GiveItemX ( role , 0 , orb_id  , 1 , 4 )
				else
					GiveItem ( role , 0 , orb_id  , 1 , 4 )
				end

				return LUA_TRUE
			else
				SystemNotice(role ,"You failed extracting your Orb!")
				return LUA_FALSE
			end
		else
			SystemNotice(role ,"You have no Orb in the Equip.")
			return LUA_FALSE
		end
	else
		SystemNotice( role , "You must put a Equip on your 4th Inventory Slot." )
		return LUA_FALSE
	end
end

function ExtractCheck(role)

	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Your inventory is locked.")
		return LUA_FALSE
	end

	local Item_bg = GetChaItem ( role , 2 , 3  )
	local Item_Type = GetItemType ( Item_bg )
	local ItemID = GetItemID ( Item_bg )

	if Item_Type == 1 or Item_Type == 2 or Item_Type == 3 or Item_Type == 4 or Item_Type == 7 or Item_Type == 9 or Item_Type == 10 or Item_Type == 11 or Item_Type == 22 or Item_Type == 23 or Item_Type == 24 or Item_Type == 27 then
		local prefix = math.floor(math.mod(GetItemAttr(Item_bg, 53), 1000) / 10)
		if GetItemAttr(Item_bg, 53) > 9000 and GetItemAttr(Item_bg, 53) ~= 9300 then
			--SystemNotice(role ,"This Weapon can only be enchanted after removeing the old orb.")
			return LUA_TRUE -- There are still a few bugs to solove but I have to keep it so
		else
			SystemNotice(role ,"This Equip has no Orb!")

return LUA_FALSE
		end
	else
		SystemNotice( role , "You must put a Equip on your 4th Inventory Slot." )
		return LUA_FALSE
	end

end

function get_prefix(item) -- Gets the items prefix
local prefix = math.floor(math.mod(GetItemAttr(item, 53), 1000) / 10)
return prefix
end
function passive_orb_effect(role)

	local xyArmor = GetEquipItemP(role,2)
	local xyArmor_ID = GetItemID (xyArmor)
	local xyGloves = GetEquipItemP(role,3)
	local xyGloves_ID = GetItemID (xyGloves)
	local xyBoots = GetEquipItemP(role,4)
	local xyBoots_ID = GetItemID (xyBoots)
	local xyWeapon_1 = GetEquipItemP(role,6)
	local xyWeapon_1_ID = GetItemID (xyWeapon_1)
	local xyWeapon_2 = GetEquipItemP(role,9)
	local xyWeapon_2_ID = GetItemID (xyWeapon_2)

	local statelv = 1
	local statetime = 3600

	local statelv_STATE_EVILR = GetChaStateLv ( role , STATE_EVILR )

	if statelv_STATE_EVILR ~=0 then

		RemoveState ( role , STATE_EVILR )

	end

	local statelv_STATE_EVILD = GetChaStateLv ( role , STATE_EVILD )

	if statelv_STATE_EVILD ~=0 then

		RemoveState ( role , STATE_EVILD )

	end

	local statelv_STATE_EVILM = GetChaStateLv ( role , STATE_EVILM )

	if statelv_STATE_EVILM  ~=0 then

		RemoveState ( role , STATE_EVILM )

	end

	local statelv_STATE_EVILA = GetChaStateLv ( role , STATE_EVILA )

	if statelv_STATE_EVILA ~=0 then

		RemoveState ( role , STATE_EVILA )

	end

	local statelv_STATE_EAGLEORB = GetChaStateLv ( role , STATE_EAGLEORB )

	if statelv_STATE_EAGLEORB ~=0 then

		RemoveState ( role , STATE_EAGLEORB )

	end

	local statelv_STATE_CheetahORB = GetChaStateLv ( role , STATE_CheetahORB )

	if statelv_STATE_CheetahORB ~=0 then

		RemoveState ( role , STATE_CheetahORB )

	end

	local statelv_STATE_SOULORB = GetChaStateLv ( role , STATE_SOULORB )

	if statelv_STATE_SOULORB ~=0 then

		RemoveState ( role , STATE_SOULORB )

	end

	if xyArmor_ID ~= 0 then

		local prefix = math.floor(math.mod(GetItemAttr(xyArmor, 53), 1000) / 10)

		if prefix == 33 or prefix == 40 then

			AddState ( role , role , STATE_EVILR , statelv , statetime )

		end

		if prefix == 34 then

			AddState ( role , role , STATE_EVILD , statelv , statetime )

		end

	end

	if xyGloves_ID ~= 0 then

		local prefix = math.floor(math.mod(GetItemAttr(xyGloves, 53), 1000) / 10)

		if prefix == 41 then

			AddState ( role , role , STATE_EAGLEORB , statelv , statetime )

		end

		if prefix == 43 then

			AddState ( role , role , STATE_SOULORB , statelv , statetime )

		end

	end

	if xyBoots_ID ~= 0 then

		local prefix = math.floor(math.mod(GetItemAttr(xyBoots, 53), 1000) / 10)

		if prefix == 42 then

			AddState ( role , role , STATE_CheetahORB , statelv , statetime )

		end

		if prefix == 43 then

			AddState ( role , role , STATE_SOULORB , statelv , statetime )

		end

	end

	local statelv_STATE_EVILA = GetChaStateLv ( role , STATE_EVILA)
	local statelv_STATE_EVILM = GetChaStateLv ( role , STATE_EVILM)

	if xyWeapon_1_ID ~= 0 then

		local prefix = math.floor(math.mod(GetItemAttr(xyWeapon_1, 53), 1000) / 10)

		if prefix == 31 then

			if statelv_STATE_EVILA == 0 then
			AddState ( role , role , STATE_EVILA , statelv , statetime )
			end
		end

		if prefix == 32 then

			if statelv_STATE_EVILM == 0 then
			AddState ( role , role , STATE_EVILM , statelv , statetime )
			end
		end

	end

	local statelv_STATE_EVILA = GetChaStateLv ( role , STATE_EVILA)
	local statelv_STATE_EVILM = GetChaStateLv ( role , STATE_EVILM)

	if xyWeapon_2_ID ~= 0 then

		local prefix2 = math.floor(math.mod(GetItemAttr(xyWeapon_2, 53), 1000) / 10)

		if prefix2 == 31 then

			if statelv_STATE_EVILA == 0 then
			AddState ( role , role , STATE_EVILA , statelv , statetime )
			end
		end

		if prefix2 == 32 then

			if statelv_STATE_EVILM == 0 then
			AddState ( role , role , STATE_EVILM , statelv , statetime )
			end
		end

	end

end



function KickCha(character)
	local pkt = GetPacket()
	WriteCmd(pkt,1505)
	SendPacket(character,pkt)
end


function Lvup_Str_4 ( role , Item_Num ,Item_Traget )
	local attr_type =  ITEMATTR_VAL_STR
	--SystemNotice(role ,attr_type )
	Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
 
function Lvup_Con_4 ( role , Item_Num ,Item_Traget )
        local attr_type =  ITEMATTR_VAL_CON
        Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
 
function Lvup_Agi_4 ( role , Item_Num ,Item_Traget )
	local attr_type = ITEMATTR_VAL_AGI
	Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
 
function Lvup_Dex_4 ( role , Item_Num ,Item_Traget )
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
 
function Lvup_Sta_4 ( role , Item_Num ,Item_Traget )
	local attr_type = ITEMATTR_VAL_STA
	Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
 
function Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )      
                
	local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )        
	local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )        
	local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )        
	local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )      
	local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )      
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE)
 
	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )
 
	local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
        
	if Lv >= 50 then
		a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
	end
        
	local b = Percentage_Random ( a )
        
		local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY )
              
	if b == 1 then                                          
			AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0
		SystemNotice (role , "Pet level up successfully! Growth rate is depleted")      
                
				attr_type_num = attr_type_num + 1
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )

		local Item_MAXENERGY = 240 * ( Lv + 1 )
                
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end
 
 
		local Item_MAXURE_NUM = Elf_MaxURE + 2000
 
		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
                
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
			AddItemEffect(role , Item_Traget , 1  )
	else                                                  
		item_energe = 0.5 * item_energe
		SystemNotice (role , "Pet level up failed! Growth rate reduced by half")        
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )
 
 
end
 
function CheckJingLingLv2 ( role , Item_Traget)
		local ItemID = GetItemID ( Item_Traget )
		local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )          --Strenght
		local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )          --Constitution
		local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )          --Agility
		local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )          --Accuracy
		local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )          --Spirit
		local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget  --Stat to add for a lv
		if lv_Traget < 40 then
			return 0
		else
			return 1
        
		end
if lv_Traget > 50 then
			return 0
		else
			return 1
        
		end
 
end


function Elf_LvUp_60 ( role , Item_Num , Item_Traget , attr_type )      
        
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

	local a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) ) )
	
	if Lv >= 60 then
		a = 1 / ( math.floor ( ( 1 + ( math.pow ( ( Lv / 10 ) , 3 ) ) ) * 10 ) / 10 ) * math.max ( 0.01 ,( 1 - attr_type_num * 0.05 ) )
	end
	
	local b = Percentage_Random ( a )
	
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) --取精灵成长度
        --local item_maxenerge = GetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ) --取精灵成长度最大值
   
	if b == 1 then						--成长则增加属性，扣除所有成长值 -- ITEMATTR_ENERGY
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0
		SystemNotice (role , "Pet level up successfully! Growth rate is depleted")	
		
                attr_type_num = attr_type_num + 60
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )

		local Item_MAXENERGY = 240 * ( Lv + 60 )
		
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end


		local Item_MAXURE_NUM = Elf_MaxURE + 32000

		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else							--未获成长则仅扣除一半的成长值
		item_energe = 0.5 * item_energe 
		SystemNotice (role , "Pet level up failed! Growth rate reduced by half")	
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )


end