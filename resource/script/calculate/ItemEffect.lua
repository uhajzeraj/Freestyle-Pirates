--------------------------------------------------------------------------
--									-
--									--_
--				ItemEffect.lua	by mdw Team			--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading ItemEffect.lua" )

function hp_med_min( role , Item ) --[[迷你hp回复药品公式]]--
	--LuaPrint("Enter function hp_med_min() --[[mini HP recovery potion formula]]--") 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local con = Con(role)
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then --人物死亡时不可使用
		--LuaPrint("Character dead or illegal HP value")  
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
		return 
	end 
	hp_resume = 20 +con*5 
	hp = hp + hp_resume 
	mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		 hp = mxhp 
		 --LG("Potion Usage", "Max HP cap reached", "\n" ) 
	 end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_min() --[[mini HP recovery potion formula]]--") 
end 

function hp_med_small(role, Item ) --[[小型血瓶公式]]--
	--LuaPrint("Enter function hp_med_small() --[[small HP potion formula]]--") 
	local hp = GetChaAttr(role, ATTR_HP)
	local con = Con(role)
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 20+ con*5  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small() --[[small HP potion formula]]--") 
end 





----[[面包公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_BREAD (role, Item ) --[[面包公式]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 80    
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small() --[[Elven Fruit formula]]--") 
end 

----[[苹果公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_APPLE ( role , Item )  --[[苹果公式]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 20    
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 

------[[碗仔翅公式]]--————————————————————————————————————————————————————————————————————————————
--
--function ItemUse_WANZICHI ( role , Item )  --[[碗仔饭公式]]--
--	local hp = GetChaAttr(role, ATTR_HP) 
--	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
--	if hp <= 0 then 
--		--LuaPrint("Character dead or illegal HP value")  return 
--		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
--	end 
--	hp_resume = 400    
--	hp = hp + hp_resume 
--	mxhp = GetChaAttr(role,ATTR_MXHP) 
--	if hp > mxhp then --加超过最大hp时返回为最大hp
--		hp = mxhp 
--		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
--	end 
--		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
--	SetCharaAttr(hp, role, ATTR_HP) 
--	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
--end 
----[[蛋糕公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_CAKE ( role , Item )  --[[蛋糕公式]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 180   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 
--function ItemUse_CAKE ( role )
--	local str = GetChaAttr( role , ATTR_BSTR )
--	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "strength before edit is"..str )
--	SystemNotice ( role , "attribute before editing is"..ap )
--	if str <= 5 then 
--		SystemNotice ( role , "You do not have enough points to reset. Reset failed" )
--		return
--	end
--	local str_dif = 1
--	local ap_dif = 1
--	str = str - str_dif
--	ap = ap + 1
--	
--	SystemNotice ( role , "strength before edit is"..str )
--	SystemNotice ( role , "attribute point edited as"..ap )
--	SetCharaAttr ( str , role , ATTR_BSTR )
--	SetCharaAttr ( ap , role , ATTR_AP )
--end

-- function ItemUse_CAKE ( role )  --[[蛋糕公式]]--
--	local cha = TurnToCha ( cha ) 
--	local x_give = 0 
--	local y_give = 0 
--	local script_count = CheckBagItem ( cha , 887 )					--检查背包中兑换券数量
--	local DiamondId = Roll_DiamondId ( cha )						--随机兑换宝石的种类
--	if script_count >= 1 then 
--		x_del = DelBagItem ( cha , 887 , 1 ) 
--		if x_del == 1 then 
--			x_give = GiveItem ( cha , 0 , DiamondId , 1 , 101 )				--兑换宝石
--
--			y_give = GiveItem ( cha , 0 , 885 , 1 , 101 )					--兑换精炼石
--
--
--		else 
--			SystemNotice ( cha , "Unable to deduct Gem Voucher" ) 
--		end 
--	else 
--		SystemNotice ( cha , "You need to have a Lv 1 Gem Voucher in order to redeem"  ) 
--	end 
--	if x_give == 1 and y_give ==1 then 
--		return 1 
--	else 
--		return 0 
--	end 
--end 
--
--
--



----[[精灵果公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_JLG( role , Item )  --[[精灵果公式]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 15   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 


function ItemUse_SZ ( role , Item )  --[[沙枣]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 20   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 



function ItemUse_MG ( role , Item )  --[[蘑菇]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 35  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 




function ItemUse_MTLG ( role , Item )  --[[曼陀罗果]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 40  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 


function ItemUse_BG ( role , Item )  --[[冰果]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 50 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 



function ItemUse_WCG( role , Item )  --[[五彩果]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 108 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 


function ItemUse_JLGZ( role , Item )  --[[精灵果汁]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 250 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 

function ItemUse_SZC( role , Item )  --[[沙枣茶]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 300
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 



function ItemUse_MGT( role , Item )  --[[蘑菇汤]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 350 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 

function ItemUse_MTLGZ( role , Item )  --[[曼陀罗果汁]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 400
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 


function ItemUse_BQL( role , Item )  --[[冰激凌]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 450
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 


function ItemUse_WCLLZ( role , Item )  --[[五彩琉璃汁]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 500 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 


function ItemUse_ZHGZ( role , Item )  --[[综合果汁]]--
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 550
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[Elven Fruit formula]]--") 
end 







function ItemUse_YYCY( role , Item )  --[[药用草叶]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 4 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 



function ItemUse_MHHB( role , Item )  --[[梦幻花瓣]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 8 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 



function ItemUse_QYGS( role , Item )  --[[奇异果实]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 18 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_BFCY( role , Item )  --[[冰封草芽]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 22 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_GCYS( role , Item )  --[[甘草药水]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 33  
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_XSHC( role , Item )  --[[醒神花茶]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 38 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_MZQYG( role , Item )  --[[秘制奇异膏]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 41 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_BYS( role , Item )  --[[冰芽酥]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 59 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_TMLGZ( role , Item )  --[[提马拉果子]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 100 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 


function ItemUse_SMG( role , Item )  --[[神秘果]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 111 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 



function ItemUse_TSJ( role , Item )  --[[提神剂]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 141 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 



function ItemUse_MHYS( role , Item )  --[[魔幻药水]]--
	local sp = GetChaAttr(role, ATTR_SP) 
	--LG("Potion Usage", "Current SP= ", sp , "\n" ) 
	sp_resume = 201 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
		--LG("Potion Usage", "Reached Max SP cap", "\n" ) 
	end 
		--LG("Potion Usage", "SP recovered to", sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

function ItemUse_TZCMB ( role , Item )  --[[特制草莓饼]]--
	tempt_monster( role ,  99 )			--招引巨兽

end 











function hp_med_middle( role , Item )  --[[中型血瓶公式]]--
	--LuaPrint("Enter function hp_med_small( role )  --[[medium HP potion formula]]--") 
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 800 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	 if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[medium HP potion formula]]--") 
end 

function hp_med_large( role , Item )  --[[大型血瓶公式]]--
	--LuaPrint("Enter function hp_med_small( role )  --[[Big HP potion formula]]--") 
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	local mxhp = GetChaAttr(role, ATTR_MXHP) 
	hp_resume = 0.2 * mxhp 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
	--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[big HP potion formula]]--") 
end 

function hp_med_super( role , Item )  --[[超级血瓶公式]]--
	--LuaPrint("Enter function hp_med_small( role )  --[[super HP potion formula]]--") 
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	local mxhp = GetChaAttr(role, ATTR_MXHP) 
	hp_resume = 0.8 * mxhp  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
	--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[super HP potion formula]]--") 
end 










function Sk_Script_Dpsl ( role , Item ) 											--技能卷轴“盾牌熟练”的使用公式
	local sk_add = SK_DPSL
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Lzj ( role , Item ) 											--技能卷轴“连珠箭”的使用公式
										
	local sk_add = SK_LZJ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Lxjy ( role , Item ) 								--技能卷轴“流星箭雨”的使用公式
	local sk_add = SK_LXJY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Lh ( role , Item ) 								--技能卷轴“狼嚎”的使用公式
	local sk_add = SK_LH 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Ssd ( role , Item )  								--技能卷轴“散射弹”的使用公式
	local sk_add = SK_SSD  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Ctd ( role , Item ) 								--技能卷轴“穿透弹”的使用公式
	local sk_add = SK_CTD 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Dzy ( role , Item ) 								--技能卷轴“大治愈”的使用公式
	local sk_add = SK_DZY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Hx ( role , Item ) 											
	local sk_add = SK_HX 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Rsd ( role , Item ) 											
	local sk_add =SK_RSD 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 




function Sk_Script_Jssl ( role , Item ) 											
	local sk_add = SK_JSSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Gtyz ( role , Item ) 											
	local sk_add = SK_GTYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Qhtz ( role , Item ) 											
	local sk_add = SK_QHTZ
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Lqhb ( role , Item ) 											
	local sk_add = SK_LQHB 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Jdzz ( role , Item ) 											
	local sk_add = SK_JDZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Hyz ( role , Item ) 											
	local sk_add = SK_HYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " Sk_Script_Hyz ()	: " , "sever determine return= " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Zj ( role , Item ) 											
	local sk_add = SK_ZJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Jjsl ( role , Item ) 											
	local sk_add = SK_JJSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Ymsl ( role , Item ) 											
	local sk_add = SK_YMSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Kb ( role , Item ) 											
	local sk_add = SK_KB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " function Sk_Script_Kb ()	: " , "sever determine return= " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Ttcb ( role , Item ) 											
	local sk_add = SK_TTCB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Mnrx ( role , Item ) 											
	local sk_add = SK_MNRX 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Swzq ( role , Item ) 											
	local sk_add = SK_SWZQ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Ssjjc ( role , Item ) 											
	local sk_add = SK_FSZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Hys ( role , Item ) 											
	local sk_add = SK_HYS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Pxkg ( role , Item ) 											
	local sk_add = SK_PXKG 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Qx ( role , Item ) 											
	local sk_add = SK_YS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Bc ( role , Item ) 											
	local sk_add = SK_BC  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Guz ( role , Item ) 											
	local sk_add = SK_GWZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " function Sk_Script_Guz ()	: " , "sever determine return= " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Db ( role , Item ) 											
	local sk_add = SK_DB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Mb ( role , Item ) 											
	local sk_add = SK_MB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Shtz ( role , Item ) 											
	local sk_add = SK_SHTZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Tzhf ( role , Item ) 											
	local sk_add = SK_TZHF  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Gjsl ( role , Item ) 											
	local sk_add = SK_GJSL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Jfb ( role , Item ) 											
	local sk_add = SK_JFB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Yy ( role , Item ) 											
	local sk_add = SK_YY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Hqsl ( role , Item ) 											
	local sk_add = SK_HQSL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Lxjy ( role , Item ) 											
	local sk_add = SK_LXJY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Dyjj ( role , Item ) 											
	local sk_add = SK_DYJJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Tj ( role , Item ) 											
	local sk_add = SK_TJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Sj ( role , Item ) 											
	local sk_add = SK_SJ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Bt ( role , Item ) 											
	local sk_add = SK_BT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Jsjc ( role , Item ) 											
	local sk_add = SK_JSJC  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Xzys ( role , Item ) 											
	local sk_add = SK_XZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Hfs ( role , Item ) 											
	local sk_add = SK_HFS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Xlcz ( role , Item ) 											
	local sk_add = SK_XLCZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Syzy ( role , Item ) 											
	local sk_add = SK_SYZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 




function Sk_Script_Dzy( role , Item ) 											
	local sk_add = SK_DZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 




function Sk_Script_Dhfs ( role , Item ) 											
	local sk_add = SK_DHFS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Xlzh ( role , Item ) 											
	local sk_add = SK_XLZH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Fzlz ( role , Item ) 											
	local sk_add = SK_FZLZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Sy ( role , Item ) 											
	local sk_add = SK_SY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Fh ( role , Item ) 											
	local sk_add = SK_FH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Jsfb ( role , Item ) 											
	local sk_add = SK_JSFB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Tshd ( role , Item ) 											
	local sk_add = SK_TSHD  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Xzfy ( role , Item ) 											
	local sk_add = SK_XZFY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Ayzz ( role , Item ) 											
	local sk_add = SK_AYZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Zzzh ( role , Item ) 											
	local sk_add = SK_ZZZH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Sdbz ( role , Item ) 											
	local sk_add = SK_SDBZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Nzs ( role , Item ) 											
	local sk_add = SK_SYNZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Xlpz ( role , Item ) 											
	local sk_add = SK_XLPZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Hfwq ( role , Item ) 											
	local sk_add = SK_HFWQ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Ks	( role , Item ) 
	local sk_add = SK_KS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
----------------制造
function Sk_Script_ZhiZao( role , Item ) 
	local star_lv=GetItemID(Item)-2678
	local sk_add = SK_ZHIZAO  
	local form_sklv = GetSkillLv( role , sk_add ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 empty slot to learn this skill")
		UseItemFailed ( role )
		return
	end
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_KS ) 
	if el_sklv <star_lv  then 	
		SystemNotice ( role , "Requires you to master "..star_lv.."Lv woodcutting skill to read this book" ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 empty slot to learn this skill")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "Not enough LifeSkill points. Please try to complete more story quest." ) 
		UseItemFailed ( role )  
		return 
	end 
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1068  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)--设置工具等级为1
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)--设置工具最大能量
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)--设置工具当前能量
	end
end 
----------------铸造
function Sk_Script_ZhuZao( role , Item ) 
	local star_lv=GetItemID(Item)-2698
	local sk_add = SK_ZHUZAO  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_WK ) 
	if el_sklv <star_lv  then 	
		SystemNotice ( role ,  "Requires you to master "..star_lv.."Lv mining skill to read this book" ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 empty slot to learn this skill")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "Not enough LifeSkill points. Please try to complete more story quest." ) 
		UseItemFailed ( role )  
		return 
	end
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1069  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)--设置工具等级为1
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)--设置工具最大能量
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)--设置工具当前能量
	end
end 
----------------烹饪
function Sk_Script_PengRen( role , Item ) 
	local star_lv=GetItemID(Item)-2688
	local sk_add = SK_PENGREN  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_BY ) 
	if el_sklv <star_lv  then 	
		SystemNotice ( role ,  "Requires you to master "..star_lv.."Lv Fishing to be able to read this book." ) 
		UseItemFailed ( role )
		return
	end 
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "Not enough LifeSkill points. Please try to complete more story quest." ) 
		UseItemFailed ( role )  
		return 
	end 
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1067  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)--设置工具等级为1
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)--设置工具最大能量
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)--设置工具当前能量
	end
end 
----------------分解
function Sk_Script_FenJie( role , Item ) 
	local star_lv=GetItemID(Item)-2708
	local sk_add = SK_FENJIE  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_DL ) 
	if el_sklv <star_lv  then 	
		SystemNotice ( role , "Requires you to master "..star_lv.." Salvage to read current book" ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 empty slot to learn this skill")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "Not enough LifeSkill points. Please try to complete more story quest." ) 
		UseItemFailed ( role )  
		return 
	end
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1070  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)--设置工具等级为1
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)--设置工具最大能量
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)--设置工具当前能量
	end
end 
function Sk_Script_Wk	( role , Item ) 
	local sk_add = SK_WK  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Jr	( role , Item ) 
	local sk_add = SK_JR  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Sl	( role , Item ) 
	local sk_add = SK_SL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Bkzj ( role , Item ) 
	local sk_add = SK_BKZJ   
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Jf ( role , Item ) 
	local sk_add = SK_JF   
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Lj ( role , Item ) 
	local sk_add = SK_LJ    
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Hzcr ( role , Item ) 
	local sk_add = SK_HZCR     
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Bkcj ( role , Item ) 
	local sk_add = SK_BKCJ      
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Sf ( role , Item ) 
	local sk_add = SK_SF       
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 



function Sk_Script_Xw ( role , Item ) 
	local sk_add = SK_XW        
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function Sk_Script_Mw ( role , Item ) 
	local sk_add = SK_MW        
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Lm ( role , Item ) 
	local sk_add = SK_LM         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Pj ( role , Item ) 
	local sk_add = SK_PJ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Fnq ( role , Item ) 
	local sk_add = SK_FNQ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Bdj ( role , Item ) 
	local sk_add = SK_BDJ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Dj ( role , Item ) 
	local sk_add = SK_DJ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Shpf ( role , Item ) 
	local sk_add = SK_SHPF         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Cf ( role , Item )
	local sk_add = SK_CHF         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function Sk_Script_Px ( role , Item )
	local sk_add = SK_PAX         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function Sk_Script_MLCH ( role , Item )
	local sk_add = SK_MLCH         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end


function Sk_Script_BLYZ ( role , Item )
	local sk_add = SK_BLYZ         
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end


function AddSailSkill ( role , i , sk_add , sailexp_req ) 
	LG ( "AddSailSkill" , "__add a new sailsk________________________ "  ) 

	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= i - 1  then 
		SystemNotice ( role , "This book is unable to raise your current skill level" ) 
		UseItemFailed ( role )  
		return 
	end 

	local sail_exp_remain = GetChaAttr ( role , ATTR_CLEFT_SAILEXP ) 
	if sail_exp_remain < sailexp_req  then 
		SystemNotice ( role , "Remaining Navigation experience insufficient. Unable to raise skill level. Please try harder!" ) 
		UseItemFailed ( role )  
		return 
	end 
	LG ( "AddSailSkill" , "Skill ID" ,  sk_add , "  Skill Level  " , i  ) 
	LG ( "AddSailSkill" , " Exisiting Navigation EXP  " , sail_exp_remain , "  Navigation EXP consumed " , sailexp_req ) 
	sail_exp_remain = sail_exp_remain - sailexp_req 
	LG ( "AddSailSkill" , " Remaining Navigation EXP  " , sail_exp_remain ) 

	SetCharaAttr ( sail_exp_remain , role , ATTR_CLEFT_SAILEXP ) 
	SystemNotice ( role , "Consumes Navigation experience" .. sailexp_req ) 

	a = AddChaSkill ( role , sk_add, 1 , 0 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Hpsl1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 

end


function Sk_Script_Hpsl2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end


function Sk_Script_Hpsl3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end


function Sk_Script_Hpsl6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Hpsl10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_HPSL         
	local sailexp_req = sk_hpsl [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_JBJG         
	local sailexp_req = sk_jbjg [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Cfs10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_CFS         
	local sailexp_req = sk_cfs [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 

end

function Sk_Script_Ctqh5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Ctqh10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_CTQH         
	local sailexp_req = sk_ctqh [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr2 ( role , Item ) 
	local i = 2 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_BJKR         
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_By ( role , Item )										--技能捕鱼
	local sk_add = SK_BY         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end


function Sk_Script_Dl ( role , Item )											--技能打捞
	local sk_add = SK_DL         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function Sk_Script_Btjn ( role , Item )										---技能摆摊
	local sk_add = SK_BAT         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function Sk_Script_Pkqx ( role , Item )
	local sk_add = SK_PKQX         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

----回城卷轴-----------------------------------------------------------------------------------------------------------------------------------------

function Jz_Script_hc(role, Item )
	local i = CheckBagItem(role,3141)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3141,1)
			if j == 1 then
				MoveCity(role,"")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
	
end
----白银传送卷轴-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_bycs(role, Item )
	local i = CheckBagItem(role,4602)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4602,1)
			if j == 1 then
				MoveCity(role,"Argent City")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----沙岚传送卷轴--------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_slcs(role, Item )
	local i = CheckBagItem(role,4603)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4603,1)
			if j == 1 then
				MoveCity(role,"Shaitan City")
				return
			end
		end
	else
		UseItemFailed ( role )
	end

end
----冰狼传送卷轴--------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_blbcs(role, Item )
	local i = CheckBagItem(role,4604)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4604,1)
			if j == 1 then
				MoveCity(role,"Icicle Castle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end

end
----春风镇送卷轴-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_cfzs(role, Item )
	local i = CheckBagItem(role,332)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,332,1)
			if j == 1 then
				MoveCity(role,"Spring Town")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--木材捆使用效果------------------------------------------------------------------------------------------------------------------

function ItemUse_Wood ( role , Item ) 
	local k = ChaIsBoat ( role ) 
	if k == 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "Item can only be used while sailing" )
		return 
	end 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role, ATTR_MXHP ) 
	if hp < 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "Ship has sunken. Unable to use item" ) 
	end 
	local statelv = 1
	local statetime = 63
	AddState ( role , role , STATE_MCK , statelv , statetime )
	
 

end 

function State_MCK_Add ( role , statelv ) 
	local hpdmg = -100   
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_MCK_Rem ( role , statelv ) 
end

--鱼肉使用效果------------------------------------------------------------------------------------------------------------------

function ItemUse_Fish ( role , Item ) 
	local k = ChaIsBoat ( role ) 
	if k == 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "Item can only be used while sailing" )
		return 
	end 
	local sp = GetChaAttr ( role , ATTR_SP ) 
	local mxsp = GetChaAttr ( role, ATTR_MXSP ) 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role, ATTR_MXHP ) 
	if hp < 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "Ship has sunken. Unable to use item" ) 
	end 
	local sp_resume = 50 
	sp = math.min ( mxsp , sp + sp_resume  ) 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end 

----月饼使用效果------------------------------------------------------------------------------------------------------------------
function ItemUse_YB ( role , Item )
	local exp = Exp ( role )
	local charLv=Lv ( role )
	local exp_new = 0
	if charLv >= 80 then
		exp_new = exp + 6
	else
		exp_new = exp + 300		
	end
	SetCharaAttr ( exp_new , role , ATTR_CEXP )
end
--华丽宝箱————————————————————————————————————————————————————————————————

function ItemUse_HLBX ( role , Item )
	local item_type = BaoXiang_HLBX 
	local item_type_rad = BaoXiang_HLBX_Rad 
	local item_type_count = BaoXiang_HLBX_Count 
	local maxitem = BaoXiang_HLBX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_HLBX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end

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
	--local itemname = GetItemName ( ItemId ) 
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	--Notice ( message )
end 


--神秘宝箱————————————————————————————————————————————————————————————————

function ItemUse_SMBX ( role , Item )
	local item_type = BaoXiang_SMBX 
	local item_type_rad = BaoXiang_SMBX_Rad 
	local item_type_count = BaoXiang_SMBX_Count 
	local maxitem = BaoXiang_SMBX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_SMBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
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
	--local itemname = GetItemName ( ItemId ) 
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	--Notice ( message )
end 


--宠宠宝箱----------------------------------------------------------------

function ItemUse_SYBOX ( role , Item )
	local item_type = BaoXiang_SYBOX 
	local item_type_rad = BaoXiang_SYBOX_Rad 
	local item_type_count = BaoXiang_SYBOX_Count 
	local maxitem = BaoXiang_SYBOX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_SYBOX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
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
	 if   ItemId >= 0183 and  ItemId <= 0199   then
	 
		local itemname = GetItemName ( ItemId ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = cha_name.." opens a treasure chest and obtained   "..itemname  
 		Notice ( message )
	end
end




----物资箱----------------------------------------------------------------------------------------------

function ItemUse_WZX ( role , Item )
	local item_type = BaoXiang_WZX 
	local item_type_rad = BaoXiang_WZX_Rad 
	local item_type_count = BaoXiang_WZX_Count 
	local maxitem = BaoXiang_WZX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_WZX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
--	local itemname = GetItemName ( ItemId ) 
--	local cha_name = GetChaDefaultName ( role ) 
--	local message = cha_name.." opens a treasure chest and obtained"..itemname  
--	Notice ( message )
end

--骷髅之剑士宝箱————————————————————————————————————————————————————————————————

function ItemUse_KLJS ( role , Item )
	local item_type = BaoXiang_KLJS 
	local item_type_rad = BaoXiang_KLJS_Rad 
	local item_type_count = BaoXiang_KLJS_Count 
	local maxitem = BaoXiang_KLJS_Mxcount						-- 终结编号
	local item_quality = BaoXiang_KLJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end 

--骷髅之猎人宝箱————————————————————————————————————————————————————————————————

function ItemUse_KLLR ( role , Item )
	local item_type = BaoXiang_KLLR 
	local item_type_rad = BaoXiang_KLLR_Rad 
	local item_type_count = BaoXiang_KLLR_Count 
	local maxitem = BaoXiang_KLLR_Mxcount						-- 终结编号
	local item_quality = BaoXiang_KLLR_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end 

--骷髅之医生宝箱————————————————————————————————————————————————————————————————

function ItemUse_KLYS ( role , Item )
	local item_type = BaoXiang_KLYS 
	local item_type_rad = BaoXiang_KLYS_Rad 
	local item_type_count = BaoXiang_KLYS_Count 
	local maxitem = BaoXiang_KLYS_Mxcount						-- 终结编号
	local item_quality = BaoXiang_KLYS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--骷髅之冒险者宝箱————————————————————————————————————————————————————————————————

function ItemUse_KLMX ( role , Item )
	local item_type = BaoXiang_KLMX 
	local item_type_rad = BaoXiang_KLMX_Rad 
	local item_type_count = BaoXiang_KLMX_Count 
	local maxitem = BaoXiang_KLMX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_KLMX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end


--咒术之双剑士装备箱————————————————————————————————————————————————————————————————

function ItemUse_ZSSJ ( role , Item )
	local item_type = BaoXiang_ZSSJ 
	local item_type_rad = BaoXiang_ZSSJ_Rad 
	local item_type_count = BaoXiang_ZSSJ_Count 
	local maxitem = BaoXiang_ZSSJ_Mxcount						-- 终结编号
	local item_quality = BaoXiang_ZSSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--咒术之巨剑士装备箱————————————————————————————————————————————————————————————————

function ItemUse_ZSJS ( role , Item )
	local item_type = BaoXiang_ZSJS 
	local item_type_rad = BaoXiang_ZSJS_Rad 
	local item_type_count = BaoXiang_ZSJS_Count 
	local maxitem = BaoXiang_ZSJS_Mxcount						-- 终结编号
	local item_quality = BaoXiang_ZSJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end


--咒术之狙击手装备箱————————————————————————————————————————————————————————————————

function ItemUse_ZSJJ ( role , Item )
	local item_type = BaoXiang_ZSJJ
	local item_type_rad = BaoXiang_ZSJJ_Rad 
	local item_type_count = BaoXiang_ZSJJ_Count 
	local maxitem = BaoXiang_ZSJJ_Mxcount						-- 终结编号
	local item_quality = BaoXiang_ZSJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end


--咒术之圣职者装备箱————————————————————————————————————————————————————————————————

function ItemUse_ZSSZ ( role , Item )
	local item_type = BaoXiang_ZSSZ
	local item_type_rad = BaoXiang_ZSSZ_Rad 
	local item_type_count = BaoXiang_ZSSZ_Count 
	local maxitem = BaoXiang_ZSSZ_Mxcount						-- 终结编号
	local item_quality = BaoXiang_ZSSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end


--咒术之封印师装备箱————————————————————————————————————————————————————————————————

function ItemUse_ZSFY ( role , Item )
	local item_type = BaoXiang_ZSFY
	local item_type_rad = BaoXiang_ZSFY_Rad 
	local item_type_count = BaoXiang_ZSFY_Count 
	local maxitem = BaoXiang_ZSFY_Mxcount						-- 终结编号
	local item_quality = BaoXiang_ZSFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end


--咒术之航海士装备箱————————————————————————————————————————————————————————————————

function ItemUse_ZSHH ( role , Item )
	local item_type = BaoXiang_ZSHH
	local item_type_rad = BaoXiang_ZSHH_Rad 
	local item_type_count = BaoXiang_ZSHH_Count 
	local maxitem = BaoXiang_ZSHH_Mxcount						-- 终结编号
	local item_quality = BaoXiang_ZSHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--幻灵之双剑士装备箱————————————————————————————————————————————————————————————————

function ItemUse_HLSJ ( role , Item )
	local item_type = BaoXiang_HLSJ
	local item_type_rad = BaoXiang_HLSJ_Rad 
	local item_type_count = BaoXiang_HLSJ_Count 
	local maxitem = BaoXiang_HLSJ_Mxcount						-- 终结编号
	local item_quality = BaoXiang_HLSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end


--幻灵之巨剑士装备箱————————————————————————————————————————————————————————————————

function ItemUse_HLJS ( role , Item )
	local item_type = BaoXiang_HLJS
	local item_type_rad = BaoXiang_HLJS_Rad 
	local item_type_count = BaoXiang_HLJS_Count 
	local maxitem = BaoXiang_HLJS_Mxcount						-- 终结编号
	local item_quality = BaoXiang_HLJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end


--幻灵之狙击手装备箱————————————————————————————————————————————————————————————————

function ItemUse_HLJJ ( role , Item )
	local item_type = BaoXiang_HLJJ
	local item_type_rad = BaoXiang_HLJJ_Rad 
	local item_type_count = BaoXiang_HLJJ_Count 
	local maxitem = BaoXiang_HLJJ_Mxcount						-- 终结编号
	local item_quality = BaoXiang_HLJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--幻灵之圣职者装备箱————————————————————————————————————————————————————————————————

function ItemUse_HLSZ ( role , Item )
	local item_type = BaoXiang_HLSZ
	local item_type_rad = BaoXiang_HLSZ_Rad 
	local item_type_count = BaoXiang_HLSZ_Count 
	local maxitem = BaoXiang_HLSZ_Mxcount						-- 终结编号
	local item_quality = BaoXiang_HLSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--幻灵之封印师装备箱————————————————————————————————————————————————————————————————

function ItemUse_HLFY ( role , Item )
	local item_type = BaoXiang_HLFY
	local item_type_rad = BaoXiang_HLFY_Rad 
	local item_type_count = BaoXiang_HLFY_Count 
	local maxitem = BaoXiang_HLFY_Mxcount						-- 终结编号
	local item_quality = BaoXiang_HLFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--幻灵之航海士装备箱————————————————————————————————————————————————————————————————

function ItemUse_HLHH ( role , Item )
	local item_type = BaoXiang_HLHH
	local item_type_rad = BaoXiang_HLHH_Rad 
	local item_type_count = BaoXiang_HLHH_Count 
	local maxitem = BaoXiang_HLHH_Mxcount						-- 终结编号
	local item_quality = BaoXiang_HLHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--迷之双剑士装备箱————————————————————————————————————————————————————————————————

function ItemUse_MSJ ( role , Item )
	local item_type = BaoXiang_MSJ
	local item_type_rad = BaoXiang_MSJ_Rad 
	local item_type_count = BaoXiang_MSJ_Count 
	local maxitem = BaoXiang_MSJ_Mxcount						-- 终结编号
	local item_quality = BaoXiang_MSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--迷之巨剑士装备箱————————————————————————————————————————————————————————————————

function ItemUse_MJS ( role , Item )
	local item_type = BaoXiang_MJS
	local item_type_rad = BaoXiang_MJS_Rad 
	local item_type_count = BaoXiang_MJS_Count 
	local maxitem = BaoXiang_MJS_Mxcount						-- 终结编号
	local item_quality = BaoXiang_MJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end


--迷之狙击手装备箱————————————————————————————————————————————————————————————————

function ItemUse_MJJ ( role , Item )
	local item_type = BaoXiang_MJJ
	local item_type_rad = BaoXiang_MJJ_Rad 
	local item_type_count = BaoXiang_MJJ_Count 
	local maxitem = BaoXiang_MJJ_Mxcount						-- 终结编号
	local item_quality = BaoXiang_MJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--迷之圣职者装备箱————————————————————————————————————————————————————————————————

function ItemUse_MSZ ( role , Item )
	local item_type = BaoXiang_MSZ
	local item_type_rad = BaoXiang_MSZ_Rad 
	local item_type_count = BaoXiang_MSZ_Count 
	local maxitem = BaoXiang_MSZ_Mxcount						-- 终结编号
	local item_quality = BaoXiang_MSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--迷之封印师装备箱————————————————————————————————————————————————————————————————

function ItemUse_MFY ( role , Item )
	local item_type = BaoXiang_MFY
	local item_type_rad = BaoXiang_MFY_Rad 
	local item_type_count = BaoXiang_MFY_Count 
	local maxitem = BaoXiang_MFY_Mxcount						-- 终结编号
	local item_quality = BaoXiang_MFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--迷之航海士装备箱————————————————————————————————————————————————————————————————

function ItemUse_MHH ( role , Item )
	local item_type = BaoXiang_MHH
	local item_type_rad = BaoXiang_MHH_Rad 
	local item_type_count = BaoXiang_MHH_Count 
	local maxitem = BaoXiang_MHH_Mxcount						-- 终结编号
	local item_quality = BaoXiang_MHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--废灵宝箱————————————————————————————————————————————————————————————————

function ItemUse_FLBX ( role , Item )
	local item_type = BaoXiang_FLBX
	local item_type_rad = BaoXiang_FLBX_Rad 
	local item_type_count = BaoXiang_FLBX_Count 
	local maxitem = BaoXiang_FLBX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_FLBX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--沼泽宝箱————————————————————————————————————————————————————————————————

function ItemUse_ZZBX ( role , Item )
	local item_type = BaoXiang_ZZBX
	local item_type_rad = BaoXiang_ZZBX_Rad 
	local item_type_count = BaoXiang_ZZBX_Count 
	local maxitem = BaoXiang_ZZBX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_ZZBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end

--魔方宝箱————————————————————————————————————————————————————————————————

function ItemUse_MFBX ( role , Item )
	local item_type = BaoXiang_MFBX
	local item_type_rad = BaoXiang_MFBX_Rad 
	local item_type_count = BaoXiang_MFBX_Count 
	local maxitem = BaoXiang_MFBX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_MFBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end


--迷之宝箱-------------------------------------------------------------------------

function ItemUse_MZBX ( role , Item )
	local item_type = BaoXiang_MZBX
	local item_type_rad = BaoXiang_MZBX_Rad 
	local item_type_count = BaoXiang_MZBX_Count 
	local maxitem = BaoXiang_MZBX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_MZBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
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
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens a treasure chest and obtained   "..itemname  
	Notice ( message )
end


--水雷施放——————————————————————————————————————————————————

function  ItemUse_BOMB ( role , Item ) 
	local bomb = SummonCha ( role , 1 , 704 ) 
	local statetime = 10 
	local statelv = 1 
	AddState ( role , bomb , STATE_BOMB , statelv , statetime ) 
	AddChaSkill ( bomb , SK_BOMB , 1 , 1 , 0 ) 
	SystemNotice ( role , "mount Water Mine successful" ) 
end 



---PK特殊药品---------------------------------------------------------------------------------------------------

--蛮牛药水--------
function ItemUse_PKMNYS ( role , Item )
	local statelv = 10
	local statetime = 1800
	AddState( role , role , STATE_PKMNYS , statelv , statetime )
end


--战斗药水--------
function ItemUse_PKZDYS ( role , Item )
	local statelv = 10
	local statetime = 150
	AddState( role , role , STATE_PKZDYS , statelv , statetime )
end

--狂暴药水--------
function ItemUse_PKKBYS ( role , Item )
	local statelv = 10
	local statetime = 20
	AddState( role , role , STATE_PKKBYS , statelv , statetime )
end

--精神药水---------
function ItemUse_PKJSYS ( role , Item )
	local statelv = 10
	local statetime = 180
	AddState( role , role , STATE_PKJSYS , statelv , statetime )
end

--石肤药水---------
function ItemUse_PKSFYS ( role , Item )
	local statelv = 10
	local statetime = 300
	AddState( role , role , STATE_PKSFYS , statelv , statetime )
end

--精准药水--------
function ItemUse_PKJZYS ( role , Item )
	local statelv = 10
	local statetime = 900
	AddState( role , role , STATE_PKJZYS , statelv , statetime )
end

--神佑药水--------
function ItemUse_PKWDYS ( role , Item )
	local statelv = 10
	local statetime = 15
	AddState( role , role , STATE_PKWD , statelv , statetime )
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." becomes invunerable for 15 seconds"  
	Notice ( message )
end

--高级木材捆-------
function ItemUse_PKMCK ( role , Item )
	local map_name = GetChaMapName ( role )
	if map_name == "secretgarden" then
		local hpdmg = -500   
		Hp_Endure_Dmg ( role , hpdmg ) 
		ALLExAttrSet(role)
	else
		SystemNotice ( role , "Item can only be used in Garden of Edel" )
	end
end



--------新增商品-------------------------------------------------------------------------------------------
--雷霆堡机票

function Jz_Script_ltcs(role, Item )
	local i = CheckBagItem(role,3828)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3828,1)
			if j == 1 then
				MoveCity(role,"Thundoria Castle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



--雷霆堡军港机票
function Jz_Script_ltjgcs(role, Item )
	local i = CheckBagItem(role,3829)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3829,1)
			if j == 1 then
				MoveCity(role,"Thundoria Harbor")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end


--圣雪山机票

function Jz_Script_sxscs(role, Item )
	local i = CheckBagItem(role,3830)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3830,1)
			if j == 1 then
				MoveCity(role,"Sacred Snow Mountain")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--赖安森林补给站机票

function Jz_Script_laslcs(role, Item )
	local i = CheckBagItem(role,3831)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3831,1)
			if j == 1 then
				MoveCity(role,"Andes Forest Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--沙泉补给站机票
function Jz_Script_sqcs(role, Item )
	local i = CheckBagItem(role,3832)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3832,1)
			if j == 1 then
				MoveCity(role,"Oasis Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--冰极补给站机票

function Jz_Script_bjcs(role, Item )
	local i = CheckBagItem(role,3833)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3833,1)
			if j == 1 then
				MoveCity(role,"Icespire Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--寂寞之塔入口机票

function Jz_Script_jmztcs(role, Item )
	local i = CheckBagItem(role,3834)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3834,1)
			if j == 1 then
				MoveCity(role,"Lone Tower Entrace")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--沙窟入口机票
function Jz_Script_scrkcs(role, Item )
	local i = CheckBagItem(role,3835)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3835,1)
			if j == 1 then
				MoveCity(role,"Barren Cavern Entrance")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--废矿2层机票

function Jz_Script_fk2cs(role, Item )
	local i = CheckBagItem(role,3836)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3836,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--银矿2层机票

function Jz_Script_yk2cs(role, Item )
	local i = CheckBagItem(role,3837)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3837,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--银矿3层机票

function Jz_Script_yk3cs(role, Item )
	local i = CheckBagItem(role,3838)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3838,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--寂寞之塔2机票

function Jz_Script_jmzt2cs(role, Item )
	local i = CheckBagItem(role,3839)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3839,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--寂寞之塔3机票

function Jz_Script_jmzt3cs(role, Item )
	local i = CheckBagItem(role,3840)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3840,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--寂寞之塔4机票
function Jz_Script_jmzt4cs(role, Item )
	local i = CheckBagItem(role,3841)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3841,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--寂寞之塔5机票

function Jz_Script_jmzt5cs(role, Item )
	local i = CheckBagItem(role,3842)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3842,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 5")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--寂寞之塔6机票
function Jz_Script_jmzt6cs(role, Item )
	local i = CheckBagItem(role,3843)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3843,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 6")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--废矿1层机票

function Jz_Script_fk1cs(role, Item )
	local i = CheckBagItem(role,3847)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3847,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 1")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end




--经验果子
function ItemUse_MoreExpGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Better or same fruit in effect. Please try again later." )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role , "Heaven's Berry used." )
end


--组队经验果子
function ItemUse_ZD_MoreExpGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_ZDSBJYGZ )
	
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Better or same fruit in effect. Please try again later." )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_ZDSBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_ZDSBJYGZ , statelv , statetime )
	end
	SystemNotice ( role , "Party EXP Fruit used." )
end


--掉料果子
function ItemUse_MoreItemGz( role , Item )

	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	local Item_Num = GetItemID ( Item )	

	if ChaStateLv >= statelv then
		SystemNotice ( role , "Better or same fruit in effect. Please try again later." )
		UseItemFailed ( role )
		return
	end
		
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end

	if Item_Num == 1006 then
		SystemNotice ( role , "Loveless Tear used." )
	else
		SystemNotice ( role , "Charmed Berry used." )
	end
end

--经验果子2级
function ItemUse_MoreExpGzLv2( role , Item )
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"Only players Lv 40 and above may use")
		UseItemFailed ( role )
		return
	end

	local statelv = 2
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "Better fruit in effect. Please use it later" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"Feel the effect of Special Mystic Fruit" )
end

--掉料果子2级
function ItemUse_MoreItemGzLv2( role , Item )
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"Only players Lv 40 and above may use")
		UseItemFailed ( role )
		return
	end


	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "Better fruit in effect. Please use it later" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"Feels the effect of Special Lucky Fruit" )
end

--经验果子3级
function ItemUse_MoreExpGzLv3( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"Only Lv 60 and above may use")
		UseItemFailed ( role )
		return
	end

	local statelv = 3
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "Better fruit in effect. Please use it later" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"Feels the effect of Super Mystic Fruit" )
end

--掉料果子3级
function ItemUse_MoreItemGzLv3( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"Only Lv 60 and above may use")
		UseItemFailed ( role )
		return
	end


	local statelv = 3	
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "Better fruit in effect. Please use it later" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"Feel the effect of Super Lucky Fruit" )
end




--奇迹果子
function ItemUse_MoreItemAndExpGz( role , Item )
	local Lv = Lv( role )
	if Lv < 30 then
		SystemNotice(role ,"Only players Lv 30 and above may use")
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
end

--体力恢复剂
function ItemUse_TLHFJ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 800 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大sp时返回为最大sp
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end


-----洗点------------------------------------------------------------------

--力量1点
function ItemUse_XD_Str1 ( role , Item )
	local str = GetChaAttr( role , ATTR_BSTR )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "strength before edit is"..str )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if str <= 5 then 
		SystemNotice ( role , "You do not have enough points to reset. Reset failed" )
		UseItemFailed ( role )
		return
	end
	local str_dif = 1
	local ap_dif = 1
	str = str - str_dif
	ap = ap + 1

	SystemNotice ( role , "Reset 1 Strength point to increases 1 stat point" )
--	SystemNotice ( role , "strength before edit is"..str )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( str , role , ATTR_BSTR )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--体质1点
function ItemUse_XD_Con1 ( role , Item )
	local con = GetChaAttr( role , ATTR_BCON )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "constitution before edit is"..con )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if con <= 5 then 
		SystemNotice ( role , "You do not have enough points to reset. Reset failed" )
		UseItemFailed ( role )
		return
	end
	local con_dif = 1
	local ap_dif = 1
	con = con - con_dif
	ap = ap + 1

	SystemNotice ( role , "Reset 1 Constitution point to increase 1 Stat point" )
	
--	SystemNotice ( role , "constitution edited to"..con )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( con , role , ATTR_BCON )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--敏捷1点
function ItemUse_XD_Agi1 ( role , Item )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "agility before edit is"..agi )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if agi <= 5 then 
		SystemNotice ( role , "You do not have enough points to reset. Reset failed" )
		UseItemFailed ( role )
		return
	end
	local agi_dif = 1
	local ap_dif = 1
	agi = agi - agi_dif
	ap = ap + 1

	SystemNotice ( role , "Reset 1 Agility point to increases 1 stat point" )
	
--	SystemNotice ( role , "Agility edited to"..agi )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( agi , role , ATTR_BAGI )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--专注1点
function ItemUse_XD_Dex1 ( role , Item )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "Accuracy edited to"..dex )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if dex <= 5 then 
		SystemNotice ( role , "You do not have enough points to reset. Reset failed" )
		UseItemFailed ( role )
		return
	end
	local dex_dif = 1
	local ap_dif = 1
	dex = dex - dex_dif
	ap = ap + 1

	SystemNotice ( role , "Reset 1 Accuracy point to increase 1 Stat point" )
	
--	SystemNotice ( role , "accuracy edit as"..dex )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( dex , role , ATTR_BDEX )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--精神1点
function ItemUse_XD_Sta1 ( role , Item )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "spirit before edit is"..sta )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if sta <= 5 then 
		SystemNotice ( role , "You do not have enough points to reset. Reset failed" )
		UseItemFailed ( role )
		return
	end
	local sta_dif = 1
	local ap_dif = 1
	sta = sta - sta_dif
	ap = ap + 1

	SystemNotice ( role , "Reset 1 Spirit point to increase 1 Stat point" )
	
--	SystemNotice ( role , "Spirit edited as "..sta )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( sta , role , ATTR_BSTA )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--商品属性药剂

--灵猴药剂( agi )
function ItemUse_SPLhyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSLQQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"Potions effect for attribute bonus cannot be stacked")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSMJQH , statelv , statetime )

end

--鹰眼药剂( dex )
function ItemUse_SPYyyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"Potions effect for attribute bonus cannot be stacked")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSLQQH , statelv , statetime )

end

--蛮牛药剂( con )
function ItemUse_SPMnyj( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"Potions effect for attribute bonus cannot be stacked")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSTZQH , statelv , statetime )

end

--圣灵药剂( sta )
function ItemUse_SPSlyj( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"Potions effect for attribute bonus cannot be stacked")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSJSQH , statelv , statetime )

end

--雄狮药剂( str )
function ItemUse_SPXsyj( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSJSQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"Potions effect for attribute bonus cannot be stacked")
		UseItemFailed ( role )
		return
	end	

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSLLQH , statelv , statetime )

end


--蓝色锻造果
function ItemUse_LSDZG ( role , Item )
	local statelv = 4
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_JLGLJB , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

--红色锻造果

function ItemUse_HSDZG ( role , Item )
	local statelv = 2
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_HCGLJB , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

--圣诞道具

--丢失的圣诞帽子

function ItemUse_DSSDM ( role , Item )
	local statelv = 1
	local statetime = 300
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

--邪恶之角

function ItemUse_XEZJ ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKZDYS , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

--狂战术 大幅提高攻击力小幅降低防御力的道具持续时间15分钟
function ItemUse_XEZJB ( role , Item )
	Rem_State_StarUnnormal ( role )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_KUANGZ , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

--圣诞糖果

function ItemUse_SDTG ( role , Item )
	
	local hp = GetChaAttr(role, ATTR_HP) 
	local sp = GetChaAttr(role, ATTR_SP) 
	
	hp_resume = 30 
	sp_resume = 10
	
	hp = hp + hp_resume 
	sp = sp + sp_resume 

	mxhp = GetChaAttr(role,ATTR_MXHP) 
	mxsp = GetChaAttr(role,ATTR_MXSP) 

	if hp > mxhp then 
		hp = mxhp 
	end 

	if sp > mxsp then 
		sp = mxsp 
	end 

	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP) 

end

--圣诞袜子

function ItemUse_SDWZBOX ( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 122423  then
		SystemNotice ( role , "Please be patient. Santa Claus will be very punctual with his gift. Please use the item between 24th December 11.00pm and 25th December 6.00am" )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 122506 then
		SystemNotice ( role , "Santa Claus has left. Please wait for next year" )
		UseItemFailed ( role )
		return
	end
	
	local item_type = BaoXiang_SDWZBOX
	local item_type_rad = BaoXiang_SDWZBOX_Rad 
	local item_type_count = BaoXiang_SDWZBOX_Count 
	local maxitem = BaoXiang_SDWZBOX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_SDWZBOX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
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
end

--圣诞礼盒

function ItemUse_SDLHBOX ( role , Item )
	local Check = math.random ( 1, 100 )
	if Check <= 35 then

		local exp = Exp ( role )
		local exp_dif = math.random ( 100 , 300 )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			exp_dif = math.floor ( exp_dif / 50  ) 
		end 
		local exp_new = exp + exp_dif
	
		SetCharaAttr ( exp_new , role , ATTR_CEXP )

	elseif Check > 35 and Check <= 70 then
		local Money_add = math.random ( 200 , 600 )
		AddMoney ( role , 0 , Money_add )
	else
		local item_type = BaoXiang_SDLHBOX
		local item_type_rad = BaoXiang_SDLHBOX_Rad 
		local item_type_count = BaoXiang_SDLHBOX_Count 
		local maxitem = BaoXiang_SDLHBOX_Mxcount						-- 终结编号
		local item_quality = BaoXiang_SDLHBOX_Qua
		local General = 0  
		local ItemId = 0 
		
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet <= 0 then
			SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
			UseItemFailed ( role )
			return
		end
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
	end
end

--好运包
function ItemUse_HYBOX ( role , Item )

--	local Item_CanGet = GetChaFreeBagGridNum ( role )
--	if Item_CanGet <= 1 then
--		SystemNotice(role ,"Insufficient slots in inventory to open Lucky Packet")
--		UseItemFailed ( role )
--		return
--	end
	
	local Money_Add = 8
	local exp_dif = 0
	local exp_random = math.random( 1 , 1000 )
	if exp_random == 1000 then
		Money_Add = 8888
		exp_dif = 66600
	else
		
		exp_dif = math.random ( 2 , 6 )
		exp_dif = exp_dif * 50
	end
	
	local exp = Exp ( role )
	if Lv ( TurnToCha ( role )  )  >= 80 then 
		exp_dif = math.floor ( exp_dif / 50  ) 
	end 
	local exp_new = exp + exp_dif
	
	AddMoney ( role , 0 , Money_Add )
	SetCharaAttr ( exp_new , role , ATTR_CEXP )
	
        local zmbox_random = math.random( 1 , 500 )
        if  zmbox_random == 500 then

	    local item_type = BaoXiang_HYBOX 
	    local item_type_rad = BaoXiang_HYBOX_Rad 
	    local item_type_count = BaoXiang_HYBOX_Count 
	    local maxitem = BaoXiang_HYBOX_Mxcount						-- 终结编号
	    local item_quality = BaoXiang_HYBOX_Qua
	    local General = 0  
	    local ItemId = 0 
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
       end
	  GiveItem ( role , 0 , 3904 , 1 , 5 ) 
--	local itemname = GetItemName ( ItemId ) 
--	local cha_name = GetChaDefaultName ( role ) 
--	local message = cha_name.." opens a Lucky Packet and obtained "..itemname  
--	Notice ( message )
end 


--富贵包
function ItemUse_FGBOX ( role , Item )
	
	AddMoney ( role , 0 , 88 )	
	local item_type = BaoXiang_FGBOX 
	local item_type_rad = BaoXiang_FGBOX_Rad 
	local item_type_count = BaoXiang_FGBOX_Count 
	local maxitem = BaoXiang_FGBOX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_FGBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 1 then
--		SystemNotice(role ,"Insufficient space in inventory. Unable to use Fortune Packet")
--		UseItemFailed ( role )
--		return
--	end

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
	GiveItem ( role , 0 , 3904 , 1 , item_quality )

	
	if ItemId == 878 then
		local itemname = GetItemName ( ItemId ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = cha_name.." opens a Fortune Packet and obtained  "..itemname  
		Notice ( message )
	end
end 

--鸿运包
function ItemUse_HYUNBOX ( role , Item )
	
	AddMoney ( role , 0 , 888 )
	local item_type = BaoXiang_HYUNBOX 
	local item_type_rad = BaoXiang_HYUNBOX_Rad 
	local item_type_count = BaoXiang_HYUNBOX_Count 
	local maxitem = BaoXiang_HYUNBOX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_HYUNBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 1 then
--		SystemNotice(role ,"Insufficient space in inventory. Unable to use Prosperous Packet")
--		UseItemFailed ( role )
--		return
--	end

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
	GiveItem ( role , 0 , 3904 , 1 , item_quality )

	local GoodItem = {}
	GoodItem[0] = 3844
	GoodItem[1] = 3845
	GoodItem[2] = 899
	GoodItem[3] = 900
	GoodItem[4] = 901
	GoodItem[5] = 902
	GoodItem[6] = 903

	local Good_C = 0
	for Good_C = 0 , 6 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." opens a Prosperous Packet and obtained "..itemname  
			Notice ( message )
		end
	end
end 

--暗淡的许愿石
function ItemUse_ADBOX ( role , Item )
	local item_type = BaoXiang_ADBOX 
	local item_type_rad = BaoXiang_ADBOX_Rad 
	local item_type_count = BaoXiang_ADBOX_Count 
	local maxitem = BaoXiang_ADBOX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_ADBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 0 then
--		SystemNotice(role ,"Insufficient space in inventory. Unable to use Wishing Stone")
--		UseItemFailed ( role )
--		return
--	end

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
--	local itemname = GetItemName ( ItemId ) 
--	local cha_name = GetChaDefaultName ( role ) 
--	local message = cha_name.."rubbed a Wishing Stone and obtained"..itemname  
--	Notice ( message )
end 

--闪光的许愿石
function ItemUse_SGBOX ( role , Item )
	local item_type = BaoXiang_SGBOX 
	local item_type_rad = BaoXiang_SGBOX_Rad 
	local item_type_count = BaoXiang_SGBOX_Count 
	local maxitem = BaoXiang_SGBOX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_SGBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 0 then
--		SystemNotice(role ,"Insufficient space in inventory. Unable to use Wishing Stone")
--		UseItemFailed ( role )
--		return
--	end

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
	
	GoodItem[0] = 879
	GoodItem[1] = 880
	GoodItem[2] = 881
	GoodItem[3] = 882
	GoodItem[4] = 883
	GoodItem[5] = 884
	GoodItem[6] = 885
	GoodItem[7] = 887
	GoodItem[8] = 7
	GoodItem[9] = 42
	GoodItem[10] = 18
	GoodItem[11] = 1375
	GoodItem[12] = 1384
	GoodItem[13] = 1394
	GoodItem[14] = 1411
	GoodItem[15] = 1421
	GoodItem[16] = 4198
	GoodItem[17] = 4200
	GoodItem[18] = 4202
	GoodItem[19] = 4204
	GoodItem[20] = 4206
	GoodItem[21] = 4208
	

	local Good_C = 0
	for Good_C = 0 , 21 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.."uses a Sparking Wishing Stone and obtained "..itemname  
			Notice ( message )
		end
	end
end 
--精灵礼品盒

function ItemUse_JingLingBOX ( role, Item )
	local item_type = BaoXiang_JingLingBOX 
	local item_type_rad = BaoXiang_JingLingBOX_Rad 
	local item_type_count = BaoXiang_JingLingBOX_Count 
	local maxitem = BaoXiang_JingLingBOX_Mxcount						-- 终结编号
	local item_quality = BaoXiang_JingLingBOX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use Fairy Box")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General		
	end   
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1							--命中物品编号
	for k = 1 , maxitem , 1 do				-- 随机出添加的前缀编号--k 从 1 到 7

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
end

--食神水饺
function ItemUse_SSSJ ( role , Item )

  	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	hp = hp + 0.3*mxhp 

	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)

end




--超级糖葫芦

function ItemUse_CJTHL ( role , Item )
      
	GiveItem ( role , 0 , 3911 , 1 , 5 ) 	
  	local hp = GetChaAttr(role, ATTR_HP) 
	local sp = GetChaAttr(role, ATTR_SP) 
	
	hp_resume = 100 
	sp_resume = 100
	
	hp = hp + hp_resume 
	sp = sp + sp_resume 

	mxhp = GetChaAttr(role,ATTR_MXHP) 
	mxsp = GetChaAttr(role,ATTR_MXSP) 

	if hp > mxhp then 
		hp = mxhp 
	end 

	if sp > mxsp then 
		sp = mxsp 
	end 

	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP)    


end

--灯笼
function ItemUse_Denglong ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_DENGLONG , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

	
--玫瑰
function ItemUse_MeiGui ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_MEIGUI , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

--爆竹
function ItemUse_BZ ( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )

	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
end 


function ItemUse_SaintCloth ( role , Item ) 
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"Requires 4 slots in inventory to open Chest of Kylin")
		UseItemFailed ( role )
		return
	end
	if cha_type == 4 then 
		GiveItem ( cha , 0 , 828 , 1 , 0 )	
	end 
	GiveItem ( cha , 0 , 825 , 1 , 0 )	
	GiveItem ( cha , 0 , 826 , 1 , 0 )	
	GiveItem ( cha , 0 , 827 , 1 , 0 )	
end 


--商城装备宝箱

function ItemUse_SCBoxYXTZ ( role , Item )		--夜行套装
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 2 then
		SystemNotice(role ,"To open the chest requires 3 empty slots")
		UseItemFailed ( role )
		return
	end

	if cha_type == 1 then
		GiveItem ( cha , 0 , 0395 , 1 , 95 )	
		GiveItem ( cha , 0 , 0587 , 1 , 95 )	
		GiveItem ( cha , 0 , 0747 , 1 , 95 )	
	else
		SystemNotice(role ,"Body size does not match. Unable to open chest")
		UseItemFailed ( role )
		return
	end
end

function ItemUse_SCBoxLSTZ ( role , Item )		--力士套装
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open treasure chest")
		UseItemFailed ( role )
		return
	end
	if cha_type == 2 then
		GiveItem ( cha , 0 , 0397 , 1 , 95 )
		GiveItem ( cha , 0 , 0829 , 1 , 95 )
		GiveItem ( cha , 0 , 0603 , 1 , 95 )
	else
		SystemNotice(role ,"Body size does not match. Unable to open chest")
		UseItemFailed ( role )
		return
	end

end

function ItemUse_SCBoxHYTZ ( role , Item )		--后裔套装
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 2 then
		SystemNotice(role ,"To open the chest requires 3 empty slots")
		UseItemFailed ( role )
		return
	end

	if cha_type == 1 or cha_type == 3 then
		GiveItem ( cha , 0 , 0399 , 1 , 95 )
		GiveItem ( cha , 0 , 0589 , 1 , 95 )
		GiveItem ( cha , 0 , 0749 , 1 , 95 )
	else
		SystemNotice(role ,"Body size does not match. Unable to open chest")
		UseItemFailed ( role )
		return
	end

end

function ItemUse_SCBoxFYSTZ ( role , Item )		--封印职业套装
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"Lack of 4 inventory slots. Unable to open chest.")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 3 then
		GiveItem ( cha , 0 , 0401 , 1 , 95 )
		GiveItem ( cha , 0 , 0591 , 1 , 95 )
		GiveItem ( cha , 0 , 0751 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0403 , 1 , 95 )
		GiveItem ( cha , 0 , 0593 , 1 , 95 )
		GiveItem ( cha , 0 , 0753 , 1 , 95 )
		GiveItem ( cha , 0 , 2218 , 1 , 95 )
	else
		SystemNotice(role ,"Body size does not match. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	
end

function ItemUse_SCBoxSZZTZ ( role , Item )		--圣职者套装
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"Lack of 4 inventory slots. Unable to open chest.")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 3 then
		GiveItem ( cha , 0 , 0405 , 1 , 95 )
		GiveItem ( cha , 0 , 0595 , 1 , 95 )
		GiveItem ( cha , 0 , 0755 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0407 , 1 , 95 )
		GiveItem ( cha , 0 , 0597 , 1 , 95 )
		GiveItem ( cha , 0 , 0757 , 1 , 95 )
		GiveItem ( cha , 0 , 2220 , 1 , 95 )
	else
		SystemNotice(role ,"Body size does not match. Unable to open chest")
		UseItemFailed ( role )
		return
	end
end

function ItemUse_SCBoxHHSTZ ( role , Item )		--航海士套装
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"Lack of 4 inventory slots. Unable to open chest.")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 1 or cha_type == 3 then
		GiveItem ( cha , 0 , 0409 , 1 , 95 )
		GiveItem ( cha , 0 , 0599 , 1 , 95 )
		GiveItem ( cha , 0 , 0759 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0412 , 1 , 95 )
		GiveItem ( cha , 0 , 0601 , 1 , 95 )
		GiveItem ( cha , 0 , 0761 , 1 , 95 )
		GiveItem ( cha , 0 , 2222 , 1 , 95 )
	else
		SystemNotice(role ,"Body size does not match. Unable to open chest")
		UseItemFailed ( role )
		return
	end
end


function ItemUse_SCBoxRYBZ ( role , Item )		--如意宝杖
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0109 , 1 , 95 )
end

function ItemUse_SCBoxXMC ( role , Item )		--降魔杵
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0111 , 1 , 95 )
end

function ItemUse_SCBoxLQJ ( role , Item )		--龙泉剑
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0113 , 1 , 95 )
end

function ItemUse_SCBoxLYJ ( role , Item )		--裂岩剑
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0115 , 1 , 95 )
end

function ItemUse_SCBoxFHG ( role , Item )		--飞虹
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0117 , 1 , 95 )
end

function ItemUse_SCBoxLXHZ ( role , Item )		--流星火珠
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0119 , 1 , 95 )
end

function ItemUse_SCBoxYCJ ( role , Item )		--鱼肠
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0150 , 1 , 95 )
end

--羊皮卷 

function ItemUse_Map_YPJ ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need to have at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 1093 )
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "You can only bring 1 Treasure Map at a time" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1093 , 1 , 0 )
end

--新式羊皮卷
function ItemUse_Map_JLBYPJ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need to have at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 682 )
	local lv= GetChaAttr(role, ATTR_LV) 
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "You can only bring 1 Treasure Map at a time" )
		UseItemFailed ( role )
		return
	end
	if lv <15 or  lv >40 then
		SystemNotice ( role , "Only characters between Lv 15 to Lv 40 can use New Sheepskin Scroll" )
		UseItemFailed ( role )
		return	
	end
	GiveItem ( role , 0 , 682 , 1 , 0 )
end
-- 藏宝图

function ItemUse_GoldenMap ( role , Item )
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need to have at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 1093 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "Brought more than 1 Treasure Map. Digging failed" )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 1093 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
--	SystemNotice ( role , "pos_x"..pos_x )
--	SystemNotice ( role , "pos_y"..pos_y )
--	SystemNotice ( role , "Themap"..Themap )
	
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local MapNameList = { }
	
	MapNameList [0] = "No map"
	MapNameList [1] = "Ascaron"
	MapNameList [2] = "Magical Ocean"
	MapNameList [3] = "Deep Blue"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos ( role , 1 )		
--		pos_x,pos_y,Themap = GetMapRanPos ( role )
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
--		SystemNotice ( role , "Themap"..Themap )
--		Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
--		SystemNotice ( role , "Item_MAXENERGY"..Item_MAXENERGY )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
--	SystemNotice ( role , "CheckPosOver"..GetPos ) 
	if GetPos == 0 then
		SystemNotice ( role , "Treasure is hidden at "..MapNameList[Themap].."Region"..pos_x..","..pos_y.." nearby" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom == 1 then
			GiveGoldenMapItem ( role )
		else
			SystemNotice ( role , "Looks like nothing is dug out. Look again nearby" )
			UseItemFailed ( role )
			return
		end
	end
end

-- 加勒比藏宝图
function ItemUse_JLB_GoldenMap ( role , Item )
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"You need to have at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end 
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv <15 or  lv >40 then
		SystemNotice ( role , "Characters lower than Lv 15 or higher than Lv 40 cannot use this treasure map" )
		UseItemFailed ( role )
		return	
	end
	local Has_GoldenMap = CheckBagItem ( role , 682 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "You can only have 1 treasure map in inventory to seek for treasure. Please deposit the rest into your vault" )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 682 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
	local MapList = { }	
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"
	local MapNameList = { }
	MapNameList [0] = "No map"
	MapNameList [1] = "Treasure Gulf"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos_JLB ( role , 1 )	
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
	if GetPos == 0 then
		SystemNotice ( role , "Treasure is hidden at "..MapNameList[Themap].."Region"..pos_x..","..pos_y.." nearby" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom == 1 then
			GiveGoldenMapItem_JLB ( role )
		else
			SystemNotice ( role , "Looks like nothing is dug out. Look again nearby" )
			UseItemFailed ( role )
			return
		end
	end
end




--生日蛋糕
function ItemUse_BirthCake ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local attr_ap = Attr_ap( role )
		local ap_extre = 3
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end
------------------------假期欢乐杂志
function ItemUse_HappyBook ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------当前等级经验
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3  +  Exp_star + 10
	local dif_exp_thalf_b = dif_exp_thalf - DEXP[charLv+1]
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=9 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=10 and charLv<=29 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=30 and charLv<=59 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=60 and charLv<=75 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=76 and charLv<=85 and charLv~=79  then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b<=0 then 
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=86 then
		SystemNotice( role , "Your level is too high to use" )
		UseItemFailed ( role )
		return
	end
end
------------三月精灵

function ItemUse_MarchElf ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local cha_type = GetChaTypeID ( role )
		if cha_type == 3 or cha_type == 4 then
			AddState( role , role , STATE_MarchElf , statelv , statetime )
		else
			SystemNotice ( role , "Fairy March can only be used by female" )
			UseItemFailed ( role )
			return
		end
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end

end

--加速药水

function ItemUse_MspdYS ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )


	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YSMspd , statelv , statetime )
		SystemNotice( role , "A" )

	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end

end

--三角帆

function ItemUse_SanJiaoFan ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatMspd , statelv , statetime )
	else
		SystemNotice( role , "Only can be used while sailing" )
		UseItemFailed ( role )
		return
	end

end

--高级装甲

function ItemUse_GJZhuangJia ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatDEF , statelv , statetime )
	else
		SystemNotice( role , "Only can be used while sailing" )
		UseItemFailed ( role )
		return
	end

end

--抽签

--财运签

function ItemUse_SuanmingMoney ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		
		
		local Has_GoldenMap = CheckBagItem ( role , 3336 )
		if Has_GoldenMap >= 1 then
			SystemNotice ( role , "Used Mystic Clover" )
			SuanmingTeshu_Money ( role )
			DelBagItem( role , 3336 , 1 )
		else
			Suanming_Money ( role )
		end
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end

	
end

--事业钱

function ItemUse_SuanmingWork ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local lv = Lv ( role )
		local exp = Exp(role) 
		local clexp = GetChaAttrI ( role , ATTR_CLEXP )
		if exp < clexp then
			SystemNotice ( role , "Experience lower than level. Unable to use lot." )
			UseItemFailed ( role )
			return
		end
		
		local Has_GoldenMap = CheckBagItem ( role , 3336 )
		if Has_GoldenMap >= 1 then
			SystemNotice ( role , "Used Mystic Clover" )
			SuanmingTeshu_Work ( role )
			DelBagItem( role , 3336 , 1 )	
		else
			Suanming_Work ( role )
		end
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end



--火绒

function ItemUse_HuoRongSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_BDJ )
		AddState ( role , role , STATE_TTISW , 1 , 300 )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	
end

--咒骨

function ItemUse_ZhouGUSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_ZZZH )
		AddState ( role , role , STATE_TTISW , 2 , 300 )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	
end

--水芒

function ItemUse_ShuiMangSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_CRXSF )
		AddState ( role , role , STATE_TTISW , 3 , 300 )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	
end

--护符

function ItemUse_HuFuSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_JSDD )
		AddState ( role , role , STATE_TTISW , 4 , 1200 )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	
end
--28格背包GetKbCap
----[[28背包公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_28BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 28 then
		SystemNotice(role ,"Cannot use item repeatedly")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 

----[[32背包公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_32BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 32 then
		SystemNotice(role ,"Cannot use item repeatedly")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 24 then
		SystemNotice(role ,"Cannot use item above your level")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 
----[[36背包公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_36BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 36 then
		SystemNotice(role ,"Cannot use item repeatedly")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 28 then
		SystemNotice(role ,"Cannot use item above your level")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 
----[[40背包公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_40BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 40 then
		SystemNotice(role ,"Cannot use item repeatedly")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 32 then
		SystemNotice(role ,"Cannot use item above your level")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 
----[[44背包公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_44BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 44 then
		SystemNotice(role ,"Cannot use item repeatedly")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 36 then
		SystemNotice(role ,"Cannot use item above your level")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 
----[[48背包公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_48BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 48 then
		SystemNotice(role ,"Cannot use item repeatedly")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 40 then
		SystemNotice(role ,"Cannot use item above your level")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end 
----[[表情]]--------------------------------------
function ItemUse_BQ ( role , Item )

end 
----[[饲料内容]]--------------------------------------

function ItemUse_SiLiao ( role , Item , Item_Traget )
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing." ) 
		UseItemFailed ( role ) 
		return 
	end      
		local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)  --取当前耐久
		local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)--取最大耐久
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Num = 2500

		if Item_type == 57 and Item_Traget_Type == 59 then
				if Item_Traget_URE < Item_Traget_MAXURE then
				   Give_ElfURE ( role , Item_Traget , Num )
   	 			else
                                        SystemNotice(role , "Fairy is full" ) 
					UseItemFailed ( role )
					return
				end
		end 

end




----[[宠物饲料内容]]--------------------------------------给宠物增加少许体力

function ItemUse_CWSiLiao ( role , Item , Item_Traget )
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end      
		local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)  --取当前耐久
		local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)--取最大耐久
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Num = 250

		if Item_type == 57 and Item_Traget_Type == 59 then
				if Item_Traget_URE < Item_Traget_MAXURE then
				Give_ElfURE ( role , Item_Traget , Num )
   	 			else
				SystemNotice(role , "Fairy is full" ) 
				UseItemFailed ( role )
				return
				end
		end
end


----[[零食内容]]--------------------------------------

--圣雪山龙果
function ItemUse_LS_longguo ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		--SystemNotice(role ,Elf_MaxEXP )

		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
				if Check_Exp == 0 then
					SystemNotice(role , "Growth rate is not full. Unable to feed pet with Snow Dragon Fruit" ) 
					UseItemFailed ( role )
				else
				   Lvup_Str ( role , Item_Num , Item_Traget ) --根据具体道具选择不同属性的成长函数 ( 例中为str )
				end 
		end 
end

--冰极爽口梅
function ItemUse_LS_koumei ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
				if Check_Exp == 0 then
					SystemNotice(role , "Growth rate is not full. Unable to feed pet with Icespire Plum" ) 
					UseItemFailed ( role )
				else
				   Lvup_Agi ( role , Item_Num , Item_Traget ) --根据具体道具选择不同属性的成长函数 ( 例中为str )
				end 
		end 
end

--海风鳕鱼丝
function ItemUse_LS_yusi ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

		if Item_type == 58 and Item_Traget_Type == 59  then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
				if Check_Exp == 0 then
					SystemNotice(role , "Growth rate is not full. Unable to feed pet with Zephyr Fish Floss" ) 
					UseItemFailed ( role )
				else
				   Lvup_Dex ( role , Item_Num , Item_Traget ) --根据具体道具选择不同属性的成长函数 ( 例中为str )
				end 
		end 
end

--白银城果脯
function ItemUse_LS_guopu ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
				if Check_Exp == 0 then
					SystemNotice(role , "Growth rate is not full. Unable to feed pet with Argent Mango" ) 
					UseItemFailed ( role )
				else
				   Lvup_Con ( role , Item_Num , Item_Traget ) --根据具体道具选择不同属性的成长函数 ( 例中为str )
				end 
		end 
end

--新沙岚米饼
function ItemUse_LS_mibing ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

		if Item_type == 58 and Item_Traget_Type == 59  then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
				if Check_Exp == 0 then
					SystemNotice(role , "Growth rate is not full. Unable to feed pet with Shaitan Biscuit" ) 
					UseItemFailed ( role )
				else
				   Lvup_Sta ( role , Item_Num , Item_Traget ) --根据具体道具选择不同属性的成长函数 ( 例中为str )
				end  
			        --local Item_MAXENERGY = Elf_MaxEXP + 20
				--SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )				
		end 
end
----------------------------------------------------
function ItemUse_HuDun_CJ ( role , Item , Item_Traget )   --初级护盾术
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 1		--要增加的 Skill 类型
		local SkillNum = 1		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end
----------------------------------------------------
function ItemUse_HuDun_ZJ ( role , Item , Item_Traget )   --中级护盾术
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 2		--要增加的 Skill 类型
		local SkillNum = 1		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end

----------------------------------------------------
function ItemUse_HuDun_GJ ( role , Item , Item_Traget )   --高级护盾术
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 3		--要增加的 Skill 类型
		local SkillNum = 1		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end


----------------------------------------------------
function ItemUse_BaoJi_CJ ( role , Item , Item_Traget )   --初级暴击
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 1		--要增加的 Skill 类型
		local SkillNum = 2		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end

----------------------------------------------------
function ItemUse_BaoJi_ZJ ( role , Item , Item_Traget )   --中级暴击
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 2		--要增加的 Skill 类型
		local SkillNum = 2		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end


----------------------------------------------------
function ItemUse_BaoJi_GJ ( role , Item , Item_Traget )   --高级暴击
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
--		local SkillType = 3		--要增加的 Skill 类型
--		local SkillNum = 2		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "have target skill, usage failed" ) 
--				UseItemFailed ( role )
--			else
--		       -- SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--		        --SystemNotice( role , "skill has been added" )
--
--			end
--		end
--
end


----------------------------------------------------
function ItemUse_MoLi_CJ ( role , Item , Item_Traget )   --初级魔力
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 1		--要增加的 Skill 类型
		local SkillNum = 3		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end


----------------------------------------------------
function ItemUse_MoLi_ZJ ( role , Item , Item_Traget )   --中级魔力
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 2		--要增加的 Skill 类型
		local SkillNum = 3		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end

----------------------------------------------------
function ItemUse_MoLi_GJ ( role , Item , Item_Traget )   --高级魔力
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
--		local SkillType = 3		--要增加的 Skill 类型
--		local SkillNum = 3		--要增加的Skill 编号
--				--SystemNotice( role , SkillType )
--				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "have target skill, usage failed" ) 
--				UseItemFailed ( role )
--			else
--		        --SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--		        --SystemNotice( role , "skill has been added" )
--
--			end
--		end

end

----------------------------------------------------
function ItemUse_HuiFu_CJ ( role , Item , Item_Traget )   --初级恢复
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 1		--要增加的 Skill 类型
		local SkillNum = 4		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end

----------------------------------------------------
function ItemUse_HuiFu_ZJ ( role , Item , Item_Traget )   --中级恢复
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 2		--要增加的 Skill 类型
		local SkillNum = 4		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end


----------------------------------------------------
function ItemUse_HuiFu_GJ ( role , Item , Item_Traget )   --高级恢复
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
--		local SkillType = 3		--要增加的 Skill 类型
--		local SkillNum = 4		--要增加的Skill 编号
--				--SystemNotice( role , SkillType )
--				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "have target skill, usage failed" ) 
--				UseItemFailed ( role )
--			else
--		        --SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--		        --SystemNotice( role , "skill has been added" )

--			end
--		end

end

----------------------------------------------------
function ItemUse_ChenSi_CJ ( role , Item , Item_Traget )   --初级沉思
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 1		--要增加的 Skill 类型
		local SkillNum = 5		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end

----------------------------------------------------
function ItemUse_ChenSi_ZJ ( role , Item , Item_Traget )   --中级沉思
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 2		--要增加的 Skill 类型
		local SkillNum = 5		--要增加的Skill 编号
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
		        --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		        --SystemNotice( role , "skill has been added" )

			end
		end

end


----------------------------------------------------
function ItemUse_ChenSi_GJ ( role , Item , Item_Traget )   --高级沉思
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
--		local SkillType = 3		--要增加的 Skill 类型
--		local SkillNum = 5		--要增加的Skill 编号
--				--SystemNotice( role , SkillType )
--				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "have target skill, usage failed" ) 
--				UseItemFailed ( role )
--			else
--		        --SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--		        --SystemNotice( role , "skill has been added" )
--
--			end
--		end

end

-----------------------------------------------------------
--怪物召唤

function ItemUse_MonsterSummon ( role , Item , Item_Traget )

	local Monster_GetID = {}
	Monster_GetID[1] = math.random ( 40 , 80 )
	Monster_GetID[2] = math.random ( 98 , 146 )
	Monster_GetID[3] = math.random ( 194, 241 )
	Monster_GetID[4] = math.random ( 500, 571 )
	Monster_GetID[5]= 789

	local ID_Get = math.random ( 1 , 5 )
	local x, y = GetChaPos( role )
	local MonsterID = Monster_GetID [ ID_Get ]
	local Refresh = 50					--重生时间，秒单位
	local life = 40000					--生命时间，毫秒单位
	local new = CreateCha( MonsterID , x , y , 145 , Refresh )
	SetChaLifeTime( new, life )

end


----------------------------------------------------------

--除草剂
function ItemUse_Ant_Hzcr ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		RemoveState( Cha_Boat , STATE_HZCR )
	else
		SystemNotice( role , "Unable to use on the shore" )
		UseItemFailed ( role )
		return
	end

end


--命之精灵蛋

function ItemUse_MINGZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 183  , 1 , 4 ) 
end

--罚之精灵蛋

function ItemUse_FAZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 184  , 1 , 4 ) 
end

--谦之精灵蛋

function ItemUse_QIANZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 185  , 1 , 4 ) 
end

--恒之精灵蛋

function ItemUse_HENGZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 186  , 1 , 4 )  
end

--誉之精灵蛋

function ItemUse_YUZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 187  , 1 , 4 )  
end
--血之精灵蛋

function ItemUse_XUEZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 188  , 1 , 4 )  
end

--信之精灵蛋

function ItemUse_XINGZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 189  , 1 , 4 )  
end

--悔之精灵蛋

function ItemUse_HUIZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 190  , 1 , 4 )  

end

--爱之精灵蛋

function ItemUse_AIZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 191  , 1 , 4 )  
end

--心之精灵蛋

function ItemUse_XINGZHIJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 199  , 1 , 4 )  
end
-------------------------------新人宝箱
function ItemUse_XRBOX( role, Item )
--	SystemNotice(role ,"Function has not been released")
--	UseItemFailed ( role )
--	return
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 5 then
		SystemNotice(role ,"Currently lower than Lv 5. Unable to use item!")
		UseItemFailed ( role )	
	else
		GiveItem ( role , 0 , 437  , 1 , 4 )
		GiveItem ( role , 0 , 9  , 1 , 95 )
		GiveItem ( role , 0 , 4308  , 1 , 95 )
		GiveItem ( role , 0 , 444  , 1 , 4 )
	--	GiveItem ( role , 0 , 0985  , 1 , 4 )--------------35至尊豪礼
	end
end


-------------------------------35至尊宝箱------------10级
function ItemUse_SANWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --取职业
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 10 then
		SystemNotice(role ,"Currently lower than Lv 10. Unable to use item!")
		UseItemFailed ( role )
		return
	end
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 0803 , 1 , 4 )--------------海妖披风		
		GiveItem ( role , 0 , 0986 , 1 , 4 )--------------45至尊宝箱
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 0803 , 1 , 4 )--------------海妖披风		
		GiveItem ( role , 0 , 0986 , 1 , 4 )--------------45至尊宝箱
	elseif cha_type == 2  and job~=0 then
		GiveItem ( role , 0 , 0763  , 1 , 4 )----------------幽灵铠甲
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45至尊宝箱
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		GiveItem ( role , 0 , 0777  , 1 , 4 )-----------------亡灵短袍
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45至尊宝箱
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		GiveItem ( role , 0 , 0777  , 1 , 4 )-----------------亡灵短袍
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45至尊宝箱
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
	        GiveItem ( role , 0 , 0789  , 1 , 4 )-------------巫毒法袍
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45至尊宝箱
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
	        GiveItem ( role , 0 , 0789  , 1 , 4 )-------------巫毒法袍
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45至尊宝箱
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
	        GiveItem ( role , 0 , 0789  , 1 , 4 )-------------巫毒法袍
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45至尊宝箱
	elseif cha_type == 1 and  job==1 then
	        GiveItem ( role , 0 , 1928  , 1 , 4 )-------------大地战甲
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45至尊宝箱
	else 
		SystemNotice(role ,"Cannot be used right now, please find the class instructors to change class.")
		UseItemFailed ( role )
		return
	end
end


-------------------------------45至尊宝箱-----------35级
function ItemUse_SIWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --取职业
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 35 then
		SystemNotice(role ,"Currently lower than Lv 35. Unable to use item!")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0767 , 1 , 4 )----------------诅咒之灵钢甲	
		GiveItem ( role , 0 , 0987 , 1 , 4 )--------------55至尊宝箱
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0764  , 1 , 4 )-----------------武士之诅咒纹身
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55至尊宝箱
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 778  , 1 , 4 )-------------咒纹紧身衣
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55至尊宝箱
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 778  , 1 , 4 )-------------咒纹紧身衣
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55至尊宝箱
	elseif cha_type == 4 and job==13 then
		GiveItem ( role , 0 , 0790  , 1 , 4 )-------------符文外衣
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55至尊宝箱
	elseif cha_type == 3  and job==13 then
		GiveItem ( role , 0 , 0790  , 1 , 4 )-------------符文外衣
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55至尊宝箱
	elseif cha_type == 3  and job==14 then
		GiveItem ( role , 0 , 0796  , 1 , 4 )-------------咒文之袍
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55至尊宝箱
	elseif cha_type == 4 and job==14 then
		GiveItem ( role , 0 , 0796  , 1 , 4 )-------------咒文之袍
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55至尊宝箱
	elseif cha_type == 3 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )-------------咒火斗篷
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55至尊宝箱
	elseif cha_type == 1 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )-------------咒火斗篷
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55至尊宝箱
	elseif cha_type ==4 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )-------------咒火斗篷
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55至尊宝箱
	else 
		SystemNotice(role ,"Cannot be used right now, please find the class instructors to change class.")
		UseItemFailed ( role )
		return
	end
end

-------------------------------55至尊宝箱-----------45级
function ItemUse_WUWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --取职业
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 45 then
		SystemNotice(role ,"Current level is below 45, failed to use item!")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0768 , 1 , 4 )----------------幻灵战甲		
		GiveItem ( role , 0 , 0988 , 1 , 4 )--------------65至尊宝箱
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0765  , 1 , 4 )-----------------幻灵纹身
		GiveItem ( role , 0 , 0988  , 1 , 4 )-------------65至尊宝箱
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 0779  , 1 , 4 )----------------幻灵外套
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65至尊宝箱
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 0779  , 1 , 4 )----------------幻灵外套
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65至尊宝箱
	elseif cha_type == 3 and job==13 then
	        GiveItem ( role , 0 , 0791  , 1 , 4 )----------------幻法之袍
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65至尊宝箱
	elseif cha_type == 4 and job==13 then
	        GiveItem ( role , 0 , 0791  , 1 , 4 )----------------幻法之袍
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65至尊宝箱
	elseif cha_type == 3 and job==14 then
	        GiveItem ( role , 0 , 0797  , 1 , 4 )----------------幻咒之袍
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65至尊宝箱
	elseif cha_type == 4 and job==14 then
	        GiveItem ( role , 0 , 0797  , 1 , 4 )----------------幻咒之袍
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65至尊宝箱
	elseif cha_type == 1 and job==16 then
	        GiveItem ( role , 0 , 0805  , 1 , 4 )----------------幻灵披风
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65至尊宝箱
	elseif cha_type == 3 and job==16 then
	        GiveItem ( role , 0 , 0805  , 1 , 4 )----------------幻灵披风
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65至尊宝箱
	elseif cha_type == 4 and job==16 then
	        GiveItem ( role , 0 , 0805  , 1 , 4 )----------------幻灵披风
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65至尊宝箱
	else 
		SystemNotice(role ,"Cannot be used right now, please find the class instructors to change class.")
		UseItemFailed ( role )
		return
	end
end

-------------------------------65至尊宝箱-----------55级
function ItemUse_LIUWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --取职业
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 55 then
		SystemNotice(role ,"Current level below 55, unable to use item!")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0769 , 1 , 4 )----------------迷之战甲		
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0766  , 1 , 4 )-----------------迷之纹身
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 0780  , 1 , 4 )----------------迷之斗篷
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 0780  , 1 , 4 )----------------迷之斗篷
	elseif cha_type == 3 and job==13 then
	        GiveItem ( role , 0 , 0792  , 1 , 4 )----------------迷之法袍
	elseif cha_type == 4 and job==13 then
	        GiveItem ( role , 0 , 0792  , 1 , 4 )----------------迷之法袍
	elseif cha_type == 3 and job==14 then
	        GiveItem ( role , 0 , 0798  , 1 , 4 )----------------迷咒法袍
	elseif cha_type == 4 and job==14 then
	        GiveItem ( role , 0 , 0798  , 1 , 4 )----------------迷咒法袍
	elseif cha_type == 1 and job==16 then
	        GiveItem ( role , 0 , 0806  , 1 , 4 )----------------迷幻斗篷
	elseif cha_type == 3 and job==16 then
	        GiveItem ( role , 0 , 0806  , 1 , 4 )----------------迷幻斗篷
	elseif cha_type == 4 and job==16 then
	        GiveItem ( role , 0 , 0806  , 1 , 4 )----------------迷幻斗篷
	else 
		SystemNotice(role ,"Cannot be used right now, please find the class instructors to change class.")
		UseItemFailed ( role )
		return
	end
end


----------------------------------+1新人宝箱
function ItemUse_XRBOX1( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 7 then
		SystemNotice(role ,"To open a Newbie Chest requires 7 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 10 then
		SystemNotice(role ,"Currently lower than Lv 10. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 10  , 1 , 95 ) 
		GiveItem ( role , 0 , 296  , 1 , 95 )
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
	elseif job == 2 then   
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 32  , 1 , 95 ) 
		GiveItem ( role , 0 , 311  , 1 , 95 )
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 80  , 1 , 95 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 336  , 1 , 95 ) 
		else 
			GiveItem ( role , 0 , 351  , 1 , 95 ) 
		end
	elseif job == 5 then   
		GiveItem ( role , 0 , 4602  , 1 , 4 ) 
		GiveItem ( role , 0 , 4603  , 1 , 4 ) 
		GiveItem ( role , 0 , 4604  , 1 , 4 ) 
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 104  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 372  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 359  , 1 , 95 ) 
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+2新人宝箱
function ItemUse_XRBOX2( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"To open a Newbie Chest requires 6 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 15 then
		SystemNotice(role ,"Currently lower than Lv 15. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 2  , 1 , 95 ) 
		GiveItem ( role , 0 , 291  , 1 , 95 )
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3351  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
	elseif job == 2 then   
		GiveItem ( role , 0 , 26  , 1 , 95 ) 
		GiveItem ( role , 0 , 306  , 1 , 95 )
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3352  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3353  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 74  , 1 , 95 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 338  , 1 , 95 )
		else
			GiveItem ( role , 0 , 386  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3352  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
		GiveItem ( role , 0 , 98  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 366  , 1 , 95 ) 
		else 
			GiveItem ( role , 0 , 381  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+3新人宝箱
function ItemUse_XRBOX3( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 5 then
		SystemNotice(role ,"To open a Newbie Chest requires 5 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 20 then
		SystemNotice(role ,"Currently lower than Lv 20. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 14  , 1 , 95 ) 
		GiveItem ( role , 0 , 297  , 1 , 95 )
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
	elseif job == 2 then  
		GiveItem ( role , 0 , 33  , 1 , 95 ) 
		GiveItem ( role , 0 , 313  , 1 , 95 )
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
		GiveItem ( role , 0 , 81  , 1 , 95 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 337  , 1 , 95 )
		else
			GiveItem ( role , 0 , 352  , 1 , 95 ) 
		end
	elseif job == 5 then 
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
		GiveItem ( role , 0 , 105  , 1 , 95 )
		if cha_type == 3 then 
			GiveItem ( role , 0 , 373  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 360  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+4新人宝箱
function ItemUse_XRBOX4( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	--local r1,r2 =MakeItem ( role , 0 , 3  , 1 , 11 )

	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 25 then
		SystemNotice(role ,"Currently lower than Lv 25. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 then   ----剑士
		local r1,r2 =MakeItem ( role , 3  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		GiveItem ( role , 0 , 293  , 1 , 95 )
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
	elseif job == 2 then  
		local r1,r2 =MakeItem ( role , 27  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		GiveItem ( role , 0 , 307  , 1 , 95 )
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
	elseif job == 4 then 
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
		local r1,r2 =MakeItem ( role , 75  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		if cha_type == 1 or cha_type == 3 then
			GiveItem ( role , 0 , 340  , 1 , 95 ) 
		else
			GiveItem ( role , 0 , 350  , 1 , 95 ) 
		end
	elseif job == 5 then 
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
		local r1,r2 =MakeItem ( role , 99  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		if cha_type == 3 then
			GiveItem ( role , 0 , 368  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 389  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+5新人宝箱
function ItemUse_XRBOX5( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 30 then
		SystemNotice(role ,"Currently lower than Lv 30. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 12  , 1 , 95 ) 
		GiveItem ( role , 0 , 298  , 1 , 95 )
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
	elseif job == 2 then 
		GiveItem ( role , 0 , 34  , 1 , 95 ) 
		GiveItem ( role , 0 , 314  , 1 , 95 )
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 )
		GiveItem ( role , 0 , 82  , 1 , 95 )
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 339  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 354  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
		GiveItem ( role , 0 , 106  , 1 , 95 )
		if cha_type == 3 then
			GiveItem ( role , 0 , 374  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 361  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+6新人宝箱
function ItemUse_XRBOX6( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role ,"To open a Newbie Chest requires 2 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 35 then
		SystemNotice(role ,"Currently lower than Lv 35. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 or job == 2 or job == 4 or job == 5 then
		GiveItem ( role , 0 , 443  , 1 , 4 ) 
		GiveItem ( role , 0 , 451  , 1 , 4 ) 
		AddMoney ( role , 0 , 20000 ) 
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+7新人宝箱
function ItemUse_XRBOX7( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 5 then
		SystemNotice(role ,"To open a Newbie Chest requires 5 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 40 then
		SystemNotice(role ,"Currently lower than Lv 40. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 9 then 
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 295  , 1 , 95 )
		GiveItem ( role , 0 , 4  , 1 , 95 ) 
		GiveItem ( role , 0 , 302  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 22  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
	elseif job == 8 then   
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 300  , 1 , 95 )
		GiveItem ( role , 0 , 15  , 1 , 95 ) 
		GiveItem ( role , 0 , 301  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 20  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
	elseif job == 12 then 
		GiveItem ( role , 0 , 39  , 1 , 95 ) 
		GiveItem ( role , 0 , 310  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 44  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		GiveItem ( role , 0 , 315  , 1 , 95 )
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
	elseif job == 16 then 
		GiveItem ( role , 0 , 450  , 1 , 95 )
		GiveItem ( role , 0 , 76  , 1 , 95 ) 
		local r1,r2 =MakeItem ( role , 83  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 341  , 1 , 95 )
			GiveItem ( role , 0 , 342  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 353  , 1 , 95 )
			GiveItem ( role , 0 , 356  , 1 , 95 )
		end
	elseif job == 13 then    
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 100  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 1440  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		if cha_type == 3 then 
			GiveItem ( role , 0 , 370  , 1 , 95 )
			GiveItem ( role , 0 , 378  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 392  , 1 , 95 ) 
			GiveItem ( role , 0 , 388  , 1 , 95 ) 
		end
	elseif job == 14 then    
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 101  , 1 , 95 ) 
		local r1,r2 =MakeItem ( role , 107  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		if cha_type == 3 then 
			GiveItem ( role , 0 , 367  , 1 , 95 ) 
			GiveItem ( role , 0 , 375  , 1 , 95 ) 
		else  
			GiveItem ( role , 0 , 390  , 1 , 95 ) 
			GiveItem ( role , 0 , 362  , 1 , 95 ) 
		
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after second class advancement!")
		UseItemFailed ( role )	
	end
end
-------------------------------------------------------- --[[粽子公式]]--
function ItemUse_ZhongZi ( role , Item ) 
	local hp = GetChaAttr(role, ATTR_HP)  
	if hp <= 0 then   
	end 
	hp_resume = 1000   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 
------------------------------------------------------------ --[[雄黄酒公式]]--
function ItemUse_XiongHJ ( role , Item ) 
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end 
---------------------------------------------------------- --[[艾草公式]]--
function ItemUse_AiCao ( role , Item )  
	local statelv = 1
	local statetime = 180
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSBYS , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end 



------------------------------------------- 风雷宝箱
function ItemUse_FLeiBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local BNUM = B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15
	if Item_CanGet < BNUM then
		SystemNotice(role ,"To open a Tempest Chest requires"..BNUM.."space ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , A1 , B1 , 4 )
	GiveItem ( role , 0 , A2 , B2 , 4 )
	GiveItem ( role , 0 , A3 , B3 , 4 )
	GiveItem ( role , 0 , A4 , B4 , 4 )
	GiveItem ( role , 0 , A5 , B5 , 4 )
	GiveItem ( role , 0 , A6 , B6 , 4 )
	GiveItem ( role , 0 , A7 , B7 , 4 )
	GiveItem ( role , 0 , A8 , B8 , 4 )
	GiveItem ( role , 0 , A9 , B9 , 4 )
	GiveItem ( role , 0 , A10 , B10 , 4 )
	GiveItem ( role , 0 , A11 , B11 , 4 )
	GiveItem ( role , 0 , A12 , B12 , 4 )
	GiveItem ( role , 0 , A13 , B13 , 4 )
	GiveItem ( role , 0 , A14 , B14 , 4 )
	GiveItem ( role , 0 , A15 , B15 , 4 )
	GiveItem ( role , 0 , A16 , B16 , 4 )
	GiveItem ( role , 0 , A17 , B17 , 4 )
	GiveItem ( role , 0 , A18 , B18 , 4 )
	GiveItem ( role , 0 , A19 , B19 , 4 )
	GiveItem ( role , 0 , A20 , B20 , 4 )
	GiveItem ( role , 0 , A21 , B21 , 4 )
	GiveItem ( role , 0 , A22 , B22 , 4 )
	GiveItem ( role , 0 , A23 , B23 , 4 )
	GiveItem ( role , 0 , A24 , B24 , 4 )
end
	 
----------------------------------------------超级宠物宝箱
function ItemUse_CJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , C1  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
	local Item_newJLID = GetItemID ( Item_newJL )			--取新精灵道具指针


	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )       --力量
	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )       --体质
	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )       --专注
	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )       --敏捷
	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )       --精神

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	--Get Num Part 1 到 Part 7
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	if Item_newJLID==231 or Item_newJLID==232 or Item_newJLID==233 or Item_newJLID==234 or Item_newJLID==235  or Item_newJLID==236  or Item_newJLID==237  or Item_newJLID==681 then
		Part1_JL=1
		Num_JL = SetNum_Part1 ( Num_JL , 1 ) ----------二转标记
		SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	end
	str_JLone	= N1
	con_JLone = N2
	agi_JLone	= N3
	dex_JLone = N4
	sta_JLone	= N5
	local new_lv=N1+N2+N3+N4+N5
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone)
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone)
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
	local cha_name = GetChaDefaultName ( role )
	--LG( "star_JLZS_lg" ,cha_name,Item_JLone_ID , lv_JLone , str_JLone , con_JLone , agi_JLone , dex_JLone , sta_JLone , Item_JLother_ID , lv_JLother  , str_JLother , con_JLother , agi_JLother , dex_JLother , sta_JLother )
	LG( "star_CJBOX" ,cha_name, C1 , N1 , N2 ,  N3 , N4 , N5 )

end

----------------------------------------------勇者宝箱
function ItemUse_YZheBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 8 then
		SystemNotice(role ,"To open a Champion's Chest requires 8 empty slots")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 453 , 1 , 4 )
	GiveItem ( role , 0 , 454 , 1 , 4 )
	GiveItem ( role , 0 , 455 , 1 , 4 )
	GiveItem ( role , 0 , 456 , 1 , 4 )
	local rad = math.random ( 1, 8 )
	if rad == 1 then
	GiveItem ( role , 0 , 5013  , 1 , 4 ) 
	GiveItem ( role , 0 , 5021  , 1 , 4 ) 
	GiveItem ( role , 0 , 5029  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5014  , 1 , 4 ) 
	GiveItem ( role , 0 , 5022  , 1 , 4 ) 
	GiveItem ( role , 0 , 5030  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5015  , 1 , 4 ) 
	GiveItem ( role , 0 , 5023  , 1 , 4 ) 
	GiveItem ( role , 0 , 5031  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5016  , 1 , 4 ) 
	GiveItem ( role , 0 , 5024  , 1 , 4 ) 
	GiveItem ( role , 0 , 5032  , 1 , 4 ) 
	GiveItem ( role , 0 , 5037  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5017  , 1 , 4 ) 
	GiveItem ( role , 0 , 5025  , 1 , 4 ) 
	GiveItem ( role , 0 , 5033  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5018  , 1 , 4 ) 
	GiveItem ( role , 0 , 5026  , 1 , 4 ) 
	GiveItem ( role , 0 , 5034  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5019  , 1 , 4 ) 
	GiveItem ( role , 0 , 5027  , 1 , 4 ) 
	GiveItem ( role , 0 , 5035  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5020  , 1 , 4 ) 
	GiveItem ( role , 0 , 5028  , 1 , 4 ) 
	GiveItem ( role , 0 , 5036  , 1 , 4 )
	GiveItem ( role , 0 , 5038  , 1 , 4 )
	end
end

----------------------------------------努力增幅器
function ItemUse_MoreExpGzA( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Better or same fruit in effect. Please try again later." )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role , "Feel the effect of Amplifier of Strive" )
end

----------------------------------------高级努力增幅器
function ItemUse_MoreExpGzLv3A( role , Item )


	local statelv = 3
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Better or same fruit in effect. Please try again later." )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"Feel the effect of Hi-Amplifier of Strive" )
end


--ItemUse_MoreItemGz
-------------------------------财富增幅器
function ItemUse_MoreItemGzA( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Better or same fruit in effect. Please try again later." )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"Feel the effect of Amplifier of Luck" )
end

----------------------------------------高级财富增幅器
function ItemUse_MoreItemGzLv3A( role , Item )
	
	local statelv = 3	
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Better or same fruit in effect. Please try again later." )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"Feel the effect of Hi-Amplifier of Luck" )
end
-------------------------------------强力体力恢复剂
function ItemUse_TLHFJA( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 1000 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大sp时返回为最大sp
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end
------------------------------------SP神仙水
function ItemUse_TMLGZA( role , Item ) 
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 150 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 
---------------------------------------------雄狮模拟药剂( str )
function ItemUse_SPXsyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSJSQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"Potions effect for attribute bonus cannot be stacked")
		UseItemFailed ( role )
		return
	end	

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSLLQH , statelv , statetime )

end
-----------------------------------------------灵猴模拟药剂( agi )
function ItemUse_SPLhyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSLQQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"Potions effect for attribute bonus cannot be stacked")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSMJQH , statelv , statetime )

end

------------------------------------------------鹰眼模拟药剂( dex )
function ItemUse_SPYyyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"Potions effect for attribute bonus cannot be stacked")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSLQQH , statelv , statetime )

end

-----------------------------------------------------蛮牛模拟药剂( con )
function ItemUse_SPMnyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"Potions effect for attribute bonus cannot be stacked")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSTZQH , statelv , statetime )

end

------------------------------------------------圣灵模拟药剂( sta )
function ItemUse_SPSlyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"Potions effect for attribute bonus cannot be stacked")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSJSQH , statelv , statetime )

end

--------------------------------行走润滑剂

function ItemUse_MspdYSA ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YSMspd , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end

end
--------------------------------轻装药水 大幅提高行走速度小幅降低防御的道具持续时间15分钟
function ItemUse_MspdYSB ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_QINGZ , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end
-------------------------------------战船装甲
function ItemUse_GJZhuangJiaA ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatDEF , statelv , statetime )
	else
		SystemNotice( role , "Only can be used while sailing" )
		UseItemFailed ( role )
		return
	end

end
-----------------------------------元宵走马灯
function ItemUse_DenglongA ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_DENGLONG , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end
-----------------------------------全身装甲 大幅提高防御力小幅降低攻击力的道具持续时间15分钟
function ItemUse_DenglongB ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_QUANS , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

--雷霆堡机票

function Jz_Script_ltcsA(role, Item )
	local i = CheckBagItem(role,3048)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3048,1)
			if j == 1 then
				MoveCity(role,"Thundoria Castle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



--雷霆堡军港机票
function Jz_Script_ltjgcsA(role, Item )
	local i = CheckBagItem(role,3049)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3049,1)
			if j == 1 then
				MoveCity(role,"Thundoria Harbor")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end


--圣雪山机票

function Jz_Script_sxscsA(role, Item )
	local i = CheckBagItem(role,3050)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3050,1)
			if j == 1 then
				MoveCity(role,"Sacred Snow Mountain")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--赖安森林补给站机票

function Jz_Script_laslcsA(role, Item )
	local i = CheckBagItem(role,3051)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3051,1)
			if j == 1 then
				MoveCity(role,"Andes Forest Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--沙泉补给站机票
function Jz_Script_sqcsA(role, Item )
	local i = CheckBagItem(role,3052)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3052,1)
			if j == 1 then
				MoveCity(role,"Oasis Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--冰极补给站机票

function Jz_Script_bjcsA(role, Item )
	local i = CheckBagItem(role,3053)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3053,1)
			if j == 1 then
				MoveCity(role,"Icespire Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--寂寞之塔入口机票

function Jz_Script_jmztcsA(role, Item )
	local i = CheckBagItem(role,3054)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3054,1)
			if j == 1 then
				MoveCity(role,"Lone Tower Entrace")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--沙窟入口机票
function Jz_Script_scrkcsA(role, Item )
	local i = CheckBagItem(role,3055)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3055,1)
			if j == 1 then
				MoveCity(role,"Barren Cavern Entrance")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--废矿2层机票

function Jz_Script_fk2csA(role, Item )
	local i = CheckBagItem(role,3056)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3056,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--银矿2层机票

function Jz_Script_yk2csA(role, Item )
	local i = CheckBagItem(role,3057)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3057,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--银矿3层机票

function Jz_Script_yk3csA(role, Item )
	local i = CheckBagItem(role,3058)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3058,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--寂寞之塔2机票

function Jz_Script_jmzt2csA(role, Item )
	local i = CheckBagItem(role,3059)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3059,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--寂寞之塔3机票

function Jz_Script_jmzt3csA(role, Item )
	local i = CheckBagItem(role,3060)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3060,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--寂寞之塔4机票
function Jz_Script_jmzt4csA(role, Item )
	local i = CheckBagItem(role,3070)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3070,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--寂寞之塔5机票

function Jz_Script_jmzt5csA(role, Item )
	local i = CheckBagItem(role,3071)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3071,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 5")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--寂寞之塔6机票
function Jz_Script_jmzt6csA(role, Item )
	local i = CheckBagItem(role,3072)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3072,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 6")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--废矿1层机票

function Jz_Script_fk1csA(role, Item )
	local i = CheckBagItem(role,3073)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3073,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 1")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----春风镇送卷轴-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_cfzsA(role, Item )
	local i = CheckBagItem(role,3076)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3076,1)
			if j == 1 then
				MoveCity(role,"Spring Town")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
---------------黑龙箱子使用-------------------
function ItemUse_CiChang( role, Item )
	local Elf_URE = GetItemAttr(Item,ITEMATTR_URE) --当前耐久记录剩余封印点数
	local Elf_EXP = GetItemAttr(Item,ITEMATTR_ENERGY) --最大能量记录诅咒点数
	if Elf_URE ~= 0 then
		SystemNotice(role ,"Seal has not been broken")
		UseItemFailed ( role )
		return
	end
	if Elf_EXP >9 then
		SystemNotice(role ,"Cursed points higher than 9. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use item")
		UseItemFailed ( role )
		return
	end
	local sta = GetItemAttr( Item ,ITEMATTR_VAL_STA )       --精神
	if sta == 0 then
		SystemNotice(role ,"Not yet put in target item, use item failed.")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	if sta == 1 then ---核心一866黑龙之心----------给黑龙之躯
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 845  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 845  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 845  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 845  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 845  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 845  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 845  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 845  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 845  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 845  , 1 , 12  )  		
		end
		local message ="Black Dragon Altar has been unsealed! ".. cha_name.." obtains Black Dragon Torso!"  
		Notice ( message )
		LG("HeiLongJiTan","Character name as",cha_name,"'s Cursed points is now",Elf_EXP," Under this situation, you open the Black Dragon Altar and obtain Black Dragon Torso")
	end
	if sta == 2 then ---核心二865黑龙之魂---------------给黑龙之翼
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 847  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 847  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 847  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 847  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 847  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 847  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 847  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 847  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 847  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 847  , 1 , 2  )  		
		end
		local message ="Black Dragon Altar has been unsealed! ".. cha_name.."obtained Black Dragon Wings!"  
		Notice ( message )
		LG("HeiLongJiTan","Character name as",cha_name,"'s Cursed points is now",Elf_EXP,"Under this situation, you opened Black Dragon Altar and obtain Black Dragon Wings")
	end
	if sta == 3 then ---核心三864黑龙之瞳---------------给黑龙之爪
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 846  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 846  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 846  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 846  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 846  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 846  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 846  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 846  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 846  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 846  , 1 , 2  )  		
		end
		local message ="Black Dragon Altar has been unsealed! ".. cha_name.." obtains Black Dragon Claw!"  
		Notice ( message )
		LG("HeiLongJiTan","Character name as",cha_name,"'s Cursed points is now",Elf_EXP,"Under this situation, you open Black Dragon Altar and obtain Black Dragon Claw")
	end
	if sta == 4 then ---核心三给黑龙之首
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 848  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 848  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 848  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 848  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 848  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 848  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 848  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 848  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 848  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 848  , 1 , 2  )  		
		end
		local message ="Black Dragon Altar has been unsealed! ".. cha_name.." obtains Black Dragon Helm!"  
		Notice ( message )
		LG("HeiLongJiTan","Character name as",cha_name,"'s Cursed points is now",Elf_EXP,"Under this situation, you open the Black Dragon Altar and obtain Black Dragon Helm")
	end
	if Elf_EXP ~=0 then
		SystemNotice(role ,"Remaining Cursed points has damage the quality of Black Dragon equipment")
	end
end
---------------核心使用-----------------------sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --精神
function ItemUse_hexin ( role , Item , Item_Traget ) 
	local Item_Traget_ID = GetItemID ( Item_Traget )
	local Item_ID = GetItemID ( Item )		
	local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --精神
	if Item_Traget_ID ~= 266 then
		SystemNotice(role ,"Please place the sacrificial item on the altar")
		UseItemFailed ( role )
		return
	end
	if sta==1 and Item_ID == 866 then
		SystemNotice(role ,"You have used a Heart of Black Dragon as a sacrificial item")
		UseItemFailed ( role )
		return	
	end
	if sta==2 and Item_ID == 865 then
		SystemNotice(role ,"You have used Soul of Black Dragon as a sacrificial item")
		UseItemFailed ( role )
		return	
	end
	if sta==3 and Item_ID == 864 then
		SystemNotice(role ,"You have used Eye of Black Dragon as a sacrificial item")
		UseItemFailed ( role )
		return	
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local cha_name = GetChaDefaultName ( role ) 
		if Item_type == 49 and Item_Traget_Type == 65 then
				if Item_ID == 866 then						---核心A
				sta =1
				SystemNotice( role , "Use Heart of Black Dragon as a sacrificial item and obtain Black Dragon Torso" )
				LG("HeiLongJiTan_HeXin","Character name as",cha_name,"player used Heart of Black Dragon as sacrificial item")
				elseif Item_ID == 865 then						---核心B
				sta =2
				SystemNotice( role , "Use Soul of Black Dragon as a sacrificial item and obtain Black Dragon Wings" )
				LG("HeiLongJiTan_HeXin","Character name as",cha_name,"player used Soul of Black Dragon as a sacrificial item")
				elseif Item_ID == 864 then						---核心C
				sta =3
				SystemNotice( role , "Use Eye of Black Dragon as a sacrificial item to obtain Black Dragon Claw" )
				LG("HeiLongJiTan_HeXin","Character name as",cha_name,"player used Eye of Black Dragon as a sacrificial item")
				elseif Item_ID == 275 then						---核心D
				sta =4
				else 
						UseItemFailed ( role )
						return
				end
				SetItemAttr( Item_Traget ,ITEMATTR_VAL_STA ,sta )
		end 
end
---------------炎之力使用--------------------------str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --力量
function ItemUse_HZLi ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please place the Power of Flame on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65  then
				local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --力量
				if str >= 5 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --当前耐久记录剩余封印点数
					str = str + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_STR ,str )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --最大能量记录诅咒点数
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --最大能量记录诅咒点数
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end


---------------冰之力使用-------------------------con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --体质

function ItemUse_BZLi ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Place Power of Frost on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --体质
				if con >= 5 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --当前耐久记录剩余封印点数
					con = con + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_CON ,con )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --最大能量记录诅咒点数
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --最大能量记录诅咒点数
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end
----------------风之力使用---------------------------agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --敏捷
function ItemUse_FZLi( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please place the Power of Wind on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --敏捷
					if agi >= 5 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --当前耐久记录剩余封印点数
					agi = agi + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI ,agi )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --最大能量记录诅咒点数
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --最大能量记录诅咒点数
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

----------------雷之力使用---------------------------dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --专注
function ItemUse_LZli ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please place Power of Thunder on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --力量
					if dex >= 5 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --当前耐久记录剩余封印点数
					dex = dex + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX ,dex )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --最大能量记录诅咒点数
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --最大能量记录诅咒点数
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end
----------------天使骰子使用-------------------------
function ItemUse_ZhuFu ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please confirm to use Angelic Dice")
		UseItemFailed ( role )
		return
	end
	local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --当前能量记录诅咒点数
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --最大能量记录诅咒点数

	if Elf_EXP ==0 then
		UseItemFailed ( role )
		
		return
	end
	local rad = math.random ( 1, 100 )

	if Elf_EXP <= 5 and Elf_EXP >= 1 then
		if rad <= 30 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"The angelic dice you used was of bad quality, the curse was not lifted.")
		end
	end

	if Elf_EXP <= 10 and Elf_EXP >= 6 then
		if rad <= 50 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"The angelic dice you used was of bad quality, the curse was not lifted.")
		end
	end

	if Elf_EXP <= 15 and Elf_EXP >= 11 then
		if rad <= 80 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"The angelic dice you used was of bad quality, the curse was not lifted.")
		end
	end

	if Elf_EXP >= 16  then
		Elf_EXP = Elf_EXP -1
	end

	SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
	SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_EXP )
end

--一元好礼包
function ItemUse_YiYuanHaoYunBOX ( role , Item )
	local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				 AddMoney ( role , 0 , 50000 )
			else	
				local item_type = BoxXiang_YiYuanBOX
				local item_type_rad = BoxXiang_YiYuanBOX_Rad 
				local item_type_count = BoxXiang_YiYuanBOX_Count 
				local maxitem = BoxXiang_YiYuanBOX_Mxcount						-- 终结编号
				local item_quality = BoxXiang_YiYuanBOX_Qua
				local General = 0  
				local ItemId = 0 
			--	local Item_CanGet = GetChaFreeBagGridNum ( role )
				
			--	if Item_CanGet <= 1 then
			--		SystemNotice(role ,"Insufficient space in inventory. Unable to use Prosperous Packet")
			--		UseItemFailed ( role )
			--		return
			--	end
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
				GoodItem[0] = 3336
				GoodItem[1] = 3885
				GoodItem[2] = 430
				GoodItem[3] = 3886
				GoodItem[4] = 3113
				GoodItem[5] = 3111
				GoodItem[6] = 3093
				GoodItem[7] = 3090
				GoodItem[8] =0860
				GoodItem[9] =0861
				GoodItem[10] =0862
				GoodItem[11] =0863
				GoodItem[12] =179
				GoodItem[13] =3084
				GoodItem[14] =3085


				local Good_C = 0
				for Good_C = 0 , 14 , 1 do
					if ItemId == GoodItem[Good_C] then
						local itemname = GetItemName ( ItemId ) 
						local cha_name = GetChaDefaultName ( role ) 
						local message = cha_name.." opens a Lucky Packet and obtain"..itemname  
						Notice ( message )
					end
				end
			end 
	end

---------------特等奖
function ItemUse_tedengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"Insufficient slots in inventory")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 845  , 1 , 16  )  
	GiveItem ( role , 0 , 846  , 1 , 16  )  
	GiveItem ( role , 0 , 847  , 1 , 16  ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens the Grand Prize and obtain Black Dragon set"
		Notice ( message )
end


-----------------------一等奖
function ItemUse_yidengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"Insufficient slots in inventory")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0853  , 1 , 4 ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens the First Prize and obtain a Happy Holiday Magazine" 
		Notice ( message )
end

---------------------------二等奖
function ItemUse_erdengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 14 then
		SystemNotice(role ,"Insufficient slots in inventory")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0456  , 10 , 4  ) 
	local rad = math.random ( 1, 8 )
	if rad == 1 then
	GiveItem ( role , 0 , 5013  , 1 , 4 ) 
	GiveItem ( role , 0 , 5021  , 1 , 4 ) 
	GiveItem ( role , 0 , 5029  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5014  , 1 , 4 ) 
	GiveItem ( role , 0 , 5022  , 1 , 4 ) 
	GiveItem ( role , 0 , 5030  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5015  , 1 , 4 ) 
	GiveItem ( role , 0 , 5023  , 1 , 4 ) 
	GiveItem ( role , 0 , 5031  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5020  , 1 , 4 ) 
	GiveItem ( role , 0 , 5024  , 1 , 4 ) 
	GiveItem ( role , 0 , 5032  , 1 , 4 ) 
	GiveItem ( role , 0 , 5037  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5017  , 1 , 4 ) 
	GiveItem ( role , 0 , 5025  , 1 , 4 ) 
	GiveItem ( role , 0 , 5033  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5018  , 1 , 4 ) 
	GiveItem ( role , 0 , 5026  , 1 , 4 ) 
	GiveItem ( role , 0 , 5034  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5019  , 1 , 4 ) 
	GiveItem ( role , 0 , 5027  , 1 , 4 ) 
	GiveItem ( role , 0 , 5035  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5016  , 1 , 4 ) 
	GiveItem ( role , 0 , 5028  , 1 , 4 ) 
	GiveItem ( role , 0 , 5036  , 1 , 4 )
	GiveItem ( role , 0 , 5038  , 1 , 4 )
	end
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens the Second Prize and obtain 10 Strengthening Crystal and 1 set of Apparel"   
		Notice ( message )
end

	
--------------------------三等奖
function ItemUse_sandengjiang ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"Insufficient slots in inventory")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad == 1 then
		GiveItem ( role , 0 , 3094  , 1 , 4 ) 
		GiveItem ( role , 0 , 3096  , 1 , 4 )
	else
		GiveItem ( role , 0 , 1094  , 1 , 4 ) 
	end
end

--99爆炸包
function ItemUse_BaoZhaBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount						-- 终结编号
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	--if Item_CanGet <= 1 then
		--SystemNotice(role ,"Insufficient space in inventory. Unable to use Prosperous Packet")
		--UseItemFailed ( role )
		--return
	--end
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
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." opens a 99 Parcel and obtain "..itemname  
			Notice ( message )
		end
	end
end

-------------------------------------阴阳五行轮回塔
function ItemUse_wxlh( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , SI  , SN , SE )
	local Item_star = GetChaItem ( role , 2 , r2 )			--取道具指针
	local num={}
	local numAttr={}
	local b = 0
	local a = {}
	for b=1,5,1 do
		num [b]=0
		numAttr [b]=0
	end
	b = 0
	for i=1,47,1 do		---------------取到道具的全部实例化属性
	    a [i]=GetItemAttr ( Item_star , i )
		if a [i]~=0 then
	--		SystemNotice( role , a [i] )
				b = b + 1
				num [b]=i    -------------num [b]记录实例华属性的编号
				numAttr [b]=a[i] ------------现有的各实例化属性值
		end
	end
	SetItemAttr ( Item_star ,num [1] , SA1 )
	SetItemAttr ( Item_star ,num [2] , SA2 )
	SetItemAttr ( Item_star ,num [3] , SA3 )
	SetItemAttr ( Item_star ,num [4] , SA4)
	SetItemAttr ( Item_star ,num [5] , SA5)

end
----------------------------------高级戒指兑换
function ItemUse_Sjz( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Inventory requires at least 5 empty slots to use Unique Ring Voucher")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then
	--卫兵的坚持
	--古树球根
	--力量封印
	--雷之锤
	--比特的呼唤
	GiveItem ( role , 0 , 281  , 1 , 4 )	
	GiveItem ( role , 0 , 286  , 1 , 4 )	
	GiveItem ( role , 0 , 324  , 1 , 4 )	
	GiveItem ( role , 0 , 334  , 1 , 4 )	
	GiveItem ( role , 0 , 387  , 1 , 4 )	
	end
	if rad ==2 then
	--盗贼的窥探
	--五月之风
	--幽狼环扣
	--闪电之眼
	--艾维尔之吻
	GiveItem ( role , 0 , 282  , 1 , 4 )	
	GiveItem ( role , 0 , 287  , 1 , 4 )	
	GiveItem ( role , 0 , 327  , 1 , 4 )	
	GiveItem ( role , 0 , 346  , 1 , 4 )	
	GiveItem ( role , 0 , 414  , 1 , 4 )		
	end
	if rad ==3 then
	--猎手之力
	--精灵的依恋
	--龙翼指环
	--光之翼
	--雷欧的愤怒
	GiveItem ( role , 0 , 283  , 1 , 4 )	
	GiveItem ( role , 0 , 288  , 1 , 4 )	
	GiveItem ( role , 0 , 328  , 1 , 4 )	
	GiveItem ( role , 0 , 347  , 1 , 4 )	
	GiveItem ( role , 0 , 415  , 1 , 4 )	
	end
	if rad ==4 then
	--信徒之环
	--苦行僧
	--独角兽的祝福
	--晨钟
	--小山车的歉意
	GiveItem ( role , 0 , 284  , 1 , 4 )	
	GiveItem ( role , 0 , 524  , 1 , 4 )	
	GiveItem ( role , 0 , 329  , 1 , 4 )	
	GiveItem ( role , 0 , 348  , 1 , 4 )	
	GiveItem ( role , 0 , 416  , 1 , 4 )		
	end
	if rad ==5 then
	--灵环
	--圣环
	--天使的悲鸣
	--天籁
	--圣女的奉献
	GiveItem ( role , 0 , 285  , 1 , 4 )	
	GiveItem ( role , 0 , 321  , 1 , 4 )	
	GiveItem ( role , 0 , 330  , 1 , 4 )	
	GiveItem ( role , 0 , 349  , 1 , 4 )	
	GiveItem ( role , 0 , 417  , 1 , 4 )			
	end
end
----------------------------------高级项链兑换
function ItemUse_Sxl( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Inventory requires at least 5 empty slots to use Unique Necklace Voucher")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad ==1 then
	--太阳石坠子
	--黑耀石的闪光
	--突风
	--快步冒险者
	--心灵永动机
	GiveItem ( role , 0 , 418  , 1 , 4 )	
	GiveItem ( role , 0 , 420  , 1 , 4 )	
	GiveItem ( role , 0 , 739  , 1 , 4 )	
	GiveItem ( role , 0 , 462  , 1 , 4 )	
	GiveItem ( role , 0 , 495  , 1 , 4 )		
	end
	if rad ==2 then
	--白金项链
	--风之信使
	--冰晶仙子
	--迷宫探索者
	--天佑的达人
	GiveItem ( role , 0 , 419  , 1 , 4 )	
	GiveItem ( role , 0 , 421  , 1 , 4 )	
	GiveItem ( role , 0 , 461  , 1 , 4 )	
	GiveItem ( role , 0 , 463  , 1 , 4 )	
	GiveItem ( role , 0 , 497  , 1 , 4 )		
	end
end
----------------------------------高级贝壳兑换
function ItemUse_Sbk( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Inventory requires at least 5 empty slots to use Unique Coral Voucher")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad ==1 then
	--学徒用雷贝
	--通用型雷贝
	--中级雷之贝
	--高级雷之贝
	--雷神贝2006
	GiveItem ( role , 0 , 498  , 1 , 4 )	
	GiveItem ( role , 0 , 503  , 1 , 4 )	
	GiveItem ( role , 0 , 504  , 1 , 4 )	
	GiveItem ( role , 0 , 505  , 1 , 4 )	
	GiveItem ( role , 0 , 506  , 1 , 4 )		
	end
	if rad ==2 then
	--学徒用风贝  
	--通用型风贝  
	--中级风之贝  
	--高级风之贝  
	--风神贝2006 
	GiveItem ( role , 0 , 508  , 1 , 4 )	
	GiveItem ( role , 0 , 509  , 1 , 4 )	
	GiveItem ( role , 0 , 510  , 1 , 4 )	
	GiveItem ( role , 0 , 522  , 1 , 4 )	
	GiveItem ( role , 0 , 523  , 1 , 4 )		
	end
end
----夏岛飞机票-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_xdfjp(role, Item )
	local i = CheckBagItem(role,563)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,563,1)
			if j == 1 then
				MoveCity(role,"Summer Island")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

----秋岛飞机票-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_qdfjp(role, Item )
	local i = CheckBagItem(role,583)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,583,1)
			if j == 1 then
				MoveCity(role,"Autumn Island")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----超人棒棒糖-------------------------------------------------------------------------------------------------------------------------------------
function ItemUse_Crbbt(role, Item )
--	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_CJBBT , statelv , statetime )
end
----巨人巧克力-------------------------------------------------------------------------------------------------------------------------------------
function ItemUse_Jrqkl(role, Item )
--	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_JRQKL , statelv , statetime )
end
--周岁生日
function ItemUse_ZhouSuiBOX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open Birthday Package")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1097 , 1 , 0 )
	local item_type = BoxXiang_ZhousSuiBOX
	local item_type_rad = BoxXiang_ZhousSuiBOX_Rad 
	local item_type_count = BoxXiang_ZhousSuiBOX_Count 
	local maxitem = BoxXiang_ZhouSui_Mxcount						-- 终结编号
	local item_quality = BoxXiang_ZhouSui_Qua
	local General = 0  
	local ItemId = 0 
	
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
	if ItemId ==  0853 then
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens Anniversary Chest and obtain Happy Holiday Magazine" 
	Notice ( message )
	end
end
-------------------------------百万大钞ItemUse_CZHe
function ItemUse_CZHe( role , Item ) 							
 	local Money_add = 1000000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=1999900000 then
		SystemNotice (role, "Your account is saturated. Unable to use item")
		UseItemFailed ( role )
		return	
	end
	AddMoney ( role , 0 , Money_add )
end 
-----------------------------------摩豆小子精灵蛋ItemUse_MDXZJLD
function ItemUse_MDXZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 680  , 1 , 4 ) 
end
----加勒比观光票-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_jialebi(role, Item )
	local i = CheckBagItem(role,2445)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2445,1)
			if j == 1 then
				MoveCity(role,"Caribbean")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----------------------------------运之精灵蛋
function ItemUse_YZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Luck")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 到 Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 231  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------体之精灵蛋
function ItemUse_TZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Constitution")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 到 Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 233  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------力之精灵蛋
function ItemUse_LZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Strength")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 到 Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 232  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------神之精灵蛋
function ItemUse_SZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Spirit")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 到 Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 234  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------专之精灵蛋
function ItemUse_ZZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Accuracy")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 到 Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 235  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------敏之精灵蛋
function ItemUse_MZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Agility")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 到 Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 236  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------邪之精灵蛋
function ItemUse_XZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Evil")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 到 Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 237  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
-----------摩豆小子二世精灵蛋
function ItemUse_MDXZESJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Mordo")
		UseItemFailed ( role )
		return
	end
	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  
	GiveItem ( role , 0 , 609  , 1 , 4 ) 
	local r1,r2 =MakeItem ( role , 681  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
-----------------------------------------初级精灵附体
function Sk_Script_CJJLFT( role , Item ) 							
 	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 -----------------------------------------中级精灵附体
function Sk_Script_ZJJLFT ( role , Item ) 							
  	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 2 then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 2 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 -----------------------------------------高级精灵附体
function Sk_Script_GJJLFT( role , Item ) 							
   	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 3  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 3 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--高级圣雪山龙果
function ItemUse_CJ_longguo( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	--SystemNotice(role ,Elf_MaxEXP )

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
			if Check_Exp == 0 then
				SystemNotice(role , "Growth rate is not full. Unable to feed pet with Snow Dragon Fruit" ) 
				UseItemFailed ( role )
			else
			Lvup_Str_1 ( role , Item_Num , Item_Traget ) --力量属性的成长函数
			end 
	end 
end

--高级冰极爽口梅
function ItemUse_CJ_koumei ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
			if Check_Exp == 0 then
				SystemNotice(role , "Growth rate is not full. Unable to feed pet with Icespire Plum" ) 
				UseItemFailed ( role )
			else
			   Lvup_Agi_1 ( role , Item_Num , Item_Traget ) --敏捷属性的成长函数 
			end 
	end 
end
--高级海风鳕鱼丝
function ItemUse_CJ_yusi ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59  then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
			if Check_Exp == 0 then
				SystemNotice(role , "Growth rate is not full. Unable to feed pet with Zephyr Fish Floss" ) 
				UseItemFailed ( role )
			else
			   Lvup_Dex_1 ( role , Item_Num , Item_Traget ) --专注属性的成长函数 
			end 
	end 
end
--高级白银城果脯
function ItemUse_CJ_guopu ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
			if Check_Exp == 0 then
				SystemNotice(role , "Growth rate is not full. Unable to feed pet with Argent Mango" ) 
				UseItemFailed ( role )
			else
			   Lvup_Con_1 ( role , Item_Num , Item_Traget ) --体质属性的成长函数 
			end 
	end 
end

--高级新沙岚米饼
function ItemUse_CJ_mibing ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59  then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
			if Check_Exp == 0 then
				SystemNotice(role , "Growth rate is not full. Unable to feed pet with Shaitan Biscuit" ) 
				UseItemFailed ( role )
			else
			   Lvup_Sta_1 ( role , Item_Num , Item_Traget ) --精神属性的成长函数 
			end  
		        --local Item_MAXENERGY = Elf_MaxEXP + 20
			--SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )				
	end 
end
--加速成长果子
function ItemUse_JLJSGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_JLJSGZ)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	if ChaStateLv > statelv then
		SystemNotice ( role , "Better fruit in effect. Please use it later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	--local Cha_Boat = 0
	--Cha_Boat = GetCtrlBoat ( role )
	AddState( role , role , STATE_JLJSGZ , statelv , statetime )
end
---------------------70级封印紫武宝箱
function ItemUse_70FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Seal Master Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4204  , 1 , 22) 
end
---------------------70级巨剑紫武宝箱
function ItemUse_70JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Champion Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1375 , 1 , 22) 
end
---------------------70级双剑紫武宝箱
function ItemUse_70SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Crusader Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1394 , 1 , 22) 
end
---------------------70级狙击紫武宝箱

function ItemUse_70JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Sharpshooter Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 42 , 1 , 22) 
end

---------------------70级航海紫武宝箱
function ItemUse_70HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Voyager Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1421 , 1 , 22) 
end
---------------------70级圣职紫武宝箱
function ItemUse_70SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Cleric Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4198 , 1 , 22) 
end
---------------------50级双剑宝箱
function ItemUse_50SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Crusader Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0299 , 1 , 22) 
	GiveItem ( role , 0 , 0475 , 1 , 22) 
	GiveItem ( role , 0 , 0651 , 1 , 22) 
end
--------------------60级双剑宝箱
function ItemUse_60SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Crusader Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0304 , 1 , 22) 
	GiveItem ( role , 0 , 0480 , 1 , 22) 
	GiveItem ( role , 0 , 0656 , 1 , 22) 
end
--------------------70级双剑宝箱
function ItemUse_70SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Crusader Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4150 , 1 , 22) 
	GiveItem ( role , 0 , 4166 , 1 , 22) 
	GiveItem ( role , 0 , 4182 , 1 , 22) 
end
--------------------50级巨剑宝箱
function ItemUse_50JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Champion Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0229 , 1 , 22) 
	GiveItem ( role , 0 , 653 , 1 , 22)  
end
--------------------60级巨剑宝箱
function ItemUse_60JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Champion Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0230 , 1 , 22) 
	GiveItem ( role , 0 , 477 , 1 , 22)  
end
--------------------70级巨剑宝箱
function ItemUse_70JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Champion Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4148 , 1 , 22) 
	GiveItem ( role , 0 , 653 , 1 , 22)  
	GiveItem ( role , 0 , 477 , 1 , 22)
end
--------------------50级圣职宝箱
function ItemUse_50SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0371 , 1 , 22) 
	GiveItem ( role , 0 , 0547 , 1 , 22)  
	GiveItem ( role , 0 , 0723 , 1 , 22) 
end
--------------------60级圣职宝箱
function ItemUse_60SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0394 , 1 , 22) 
	GiveItem ( role , 0 , 0570 , 1 , 22)  
	GiveItem ( role , 0 , 0746 , 1 , 22) 
end
--------------------70级圣职宝箱
function ItemUse_70SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4159 , 1 , 22) 
	GiveItem ( role , 0 , 4175 , 1 , 22)  
	GiveItem ( role , 0 , 4191 , 1 , 22) 
end
--------------------50级艾米圣职宝箱
function ItemUse_50AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Ami Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0382 , 1 , 22) 
	GiveItem ( role , 0 , 0558 , 1 , 22)  
	GiveItem ( role , 0 , 0734 , 1 , 22) 
	GiveItem ( role , 0 , 2204 , 1 , 22) 
end
--------------------60级艾米圣职宝箱
function ItemUse_60AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60Ami Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0393 , 1 , 22) 
	GiveItem ( role , 0 , 0569 , 1 , 22)  
	GiveItem ( role , 0 , 0745 , 1 , 22) 
	GiveItem ( role , 0 , 2215 , 1 , 22) 
end
--------------------70级艾米圣职宝箱
function ItemUse_70AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Ami Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4160 , 1 , 22) 
	GiveItem ( role , 0 , 4176 , 1 , 22)  
	GiveItem ( role , 0 , 4192 , 1 , 22)  
end
--------------------50级艾米封印宝箱
function ItemUse_50AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Ami Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0385 , 1 , 22) 
	GiveItem ( role , 0 , 0561 , 1 , 22)  
	GiveItem ( role , 0 , 0737 , 1 , 22) 
	GiveItem ( role , 0 , 2207 , 1 , 22) 
end
--------------------60级艾米封印宝箱
function ItemUse_60AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Ami Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0364 , 1 , 22) 
	GiveItem ( role , 0 , 0540 , 1 , 22)  
	GiveItem ( role , 0 , 0716 , 1 , 22) 
	GiveItem ( role , 0 , 2201 , 1 , 22) 
end
--------------------70级艾米封印宝箱
function ItemUse_70AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Ami Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4164 , 1 , 22) 
	GiveItem ( role , 0 , 4180 , 1 , 22)  
	GiveItem ( role , 0 , 4196 , 1 , 22) 
end
--------------------50级艾航海印宝箱
function ItemUse_50AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Ami Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0355 , 1 , 22) 
	GiveItem ( role , 0 , 0531 , 1 , 22)  
	GiveItem ( role , 0 , 0707 , 1 , 22) 
	GiveItem ( role , 0 , 2192 , 1 , 22) 
end
--------------------60级艾航海印宝箱
function ItemUse_60AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Ami Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0358 , 1 , 22) 
	GiveItem ( role , 0 , 0534 , 1 , 22)  
	GiveItem ( role , 0 , 0710 , 1 , 22) 
	GiveItem ( role , 0 , 2195 , 1 , 22) 
end
--------------------70级艾航海印宝箱
function ItemUse_70AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Ami Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4156 , 1 , 22) 
	GiveItem ( role , 0 , 4172 , 1 , 22)  
	GiveItem ( role , 0 , 4188 , 1 , 22)  
end
--------------------50级狙击宝箱
function ItemUse_50JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Sharpshooter Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0312 , 1 , 22) 
	GiveItem ( role , 0 , 0488 , 1 , 22)  
	GiveItem ( role , 0 , 0664 , 1 , 22) 
end
--------------------60级狙击宝箱
function ItemUse_60JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Sharpshooter Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0317 , 1 , 22) 
	GiveItem ( role , 0 , 0493 , 1 , 22)  
	GiveItem ( role , 0 , 0669 , 1 , 22) 
end
--------------------70级狙击宝箱
function ItemUse_70JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Sharpshooter Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4152 , 1 , 22) 
	GiveItem ( role , 0 , 4168 , 1 , 22)  
	GiveItem ( role , 0 , 4184 , 1 , 22) 
end
--------------------50级航海宝箱
function ItemUse_50HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0345 , 1 , 22) 
	GiveItem ( role , 0 , 0521 , 1 , 22)  
	GiveItem ( role , 0 , 0697 , 1 , 22) 
end
--------------------60级航海宝箱
function ItemUse_60HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0344 , 1 , 22) 
	GiveItem ( role , 0 , 0520 , 1 , 22)  
	GiveItem ( role , 0 , 0696 , 1 , 22) 
end
--------------------70级航海宝箱
function ItemUse_70HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4155 , 1 , 22) 
	GiveItem ( role , 0 , 4171 , 1 , 22)  
	GiveItem ( role , 0 , 4187 , 1 , 22) 
end
--------------------50级封印宝箱
function ItemUse_50FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0369 , 1 , 22) 
	GiveItem ( role , 0 , 0545 , 1 , 22)  
	GiveItem ( role , 0 , 0721 , 1 , 22) 
end
--------------------60级封印宝箱
function ItemUse_60FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0377 , 1 , 22) 
	GiveItem ( role , 0 , 0553 , 1 , 22)  
	GiveItem ( role , 0 , 0729 , 1 , 22) 
end
--------------------70级封印宝箱
function ItemUse_70FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4163 , 1 , 22) 
	GiveItem ( role , 0 , 4179 , 1 , 22)  
	GiveItem ( role , 0 , 4195 , 1 , 22) 
end
--98天堂包
function ItemUse_98BOX ( role , Item )
			local item_type = BaoXiang_98BOX
			local item_type_rad = BaoXiang_98BOX_Rad 
			local item_type_count = BaoXiang_98BOX_Count 
			local maxitem = BaoXiang_98BOX_Mxcount						-- 终结编号
			local item_quality = BaoXiang_98BOX_Qua
			local General = 0  
			local ItemId = 0 
			
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet <= 0 then
			SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
			UseItemFailed ( role )
			return
		end
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
				GoodItem[0] = 3074
				GoodItem[1] = 0937
				GoodItem[2] = 3885
				GoodItem[3] = 0680
				GoodItem[4] = 0938
				GoodItem[5] = 2488
				GoodItem[6] = 2489
				GoodItem[7] = 2490
				GoodItem[8] =2436
				GoodItem[9] =3075

				local Good_C = 0
				for Good_C = 0 , 9 , 1 do
					if ItemId == GoodItem[Good_C] then
						local itemname = GetItemName ( ItemId ) 
						local cha_name = GetChaDefaultName ( role ) 
						local message = cha_name.." opens a Paradise Pouch and obtain "..itemname  
						Notice ( message )
					end
				end
	
	end
--------------------烈炎石兑换券
function ItemUse_lieyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Fiery Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0878 , 1 , 4) 
end
--------------------炙焰石兑换券
function ItemUse_zhiyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Furious Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0879 , 1 , 4) 
end
--------------------火药石兑换券
function ItemUse_huoyaoBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Explosive Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0880 , 1 , 4) 
end
--------------------玛瑙石兑换券
function ItemUse_manaoBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lustrious Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0881 , 1 , 4) 
end
--------------------圣光石兑换券
function ItemUse_shengguangBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Spirit Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0887 , 1 , 4) 
end
--------------------月之心兑换券
function ItemUse_yuezhixinBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Shining Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0883 , 1 , 4) 
end
--------------------寒玉兑换券
function ItemUse_hanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Glowing Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0882 , 1 , 4) 
end
--------------------风灵石兑换券
function ItemUse_fenglingBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Gem of the Wind Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0860 , 1 , 4) 
end
--------------------仙灵石兑换券
function ItemUse_xianlingBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Shadow Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0884 , 1 , 4) 
end
--------------------鹰眼石兑换券
function ItemUse_yingyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Gem of Striking Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0861 , 1 , 4) 
end
--------------------岩玉兑换券
function ItemUse_yanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0862 , 1 , 4) 
end
--------------------炎玉兑换券
function ItemUse_tanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0863 , 1 , 4) 
end
--------------------50级双剑紫武宝箱
function ItemUse_50SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Crusader Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1392 , 1 , 22) 
end
--------------------50级巨剑紫武宝箱
function ItemUse_50JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Champion Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1373 , 1 , 22) 
end
--------------------50级狙击紫武宝箱
function ItemUse_50JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Sharpshooter Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0040 , 1 , 22) 
end
--------------------50级航海紫武宝箱
function ItemUse_50HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Voyager Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1419 , 1 , 22) 
end
--------------------50级圣职紫武宝箱
function ItemUse_50SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Cleric Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0103 , 1 , 22) 
end
--------------------50级封印紫武宝箱
function ItemUse_50FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Seal Master Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0102 , 1 , 22) 
end



--------------------60级双剑紫武宝箱
function ItemUse_60SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Crusader Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1393 , 1 , 22) 
end
--------------------60级巨剑紫武宝箱
function ItemUse_60JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Champion Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1374 , 1 , 22) 
end
--------------------60级狙击紫武宝箱
function ItemUse_60JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Sharpshooter Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0041 , 1 , 22) 
end
--------------------60级航海紫武宝箱
function ItemUse_60HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Voyager Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1420 , 1 , 22) 
end
--------------------60级圣职紫武宝箱
function ItemUse_60SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Cleric Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4303 , 1 , 22) 
end
--------------------60级封印紫武宝箱
function ItemUse_60FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Seal Master Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4300 , 1 , 22) 
end
--------------------纯真之心，重生之心
function ItemUse_CZZX( role , Item )
	local statelv = 1
	local statetime = 30
	local Item_ID=GetItemID(Item)
	AddState( role , role , STATE_CZZX , statelv , statetime )
	if Item_ID~=1013 then
		GiveItem ( role , 0 , 1010 , 1 , 4)
	end
--		SystemNotice( role , "该物品已被病毒腐蚀,不能使用." )
--		UseItemFailed ( role )
end
--------------------辉煌礼炮
function ItemUse_HHLP( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0


	if CheckDateNum >= 10122  and CheckDateNum <= 10123 then
		ItemUse_XNBOX ( role , Item )


	--if CheckDateNum >= 100122  and CheckDateNum <= 100123 then
		--star=1
	--end
	--if CheckDateNum >= 100622  and CheckDateNum <= 100623 then
		--star=1
	--end
	--if star ==1 then
		--ItemUse_BaoZhaBOX ( role , Item )	
	end
end
--------------------嘎纳之神
function ItemUse_GNZS( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local attr_sta = GetChaAttr( role , ATTR_STA )
		local sta_extre = 5
		attr_sta = attr_sta + sta_extre 
		SetCharaAttr( attr_sta, role, ATTR_STA )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end
--------------------技能精灵蛋
function ItemUse_JNJLD( role , Item )
	local star=math.random ( 1, 10 )
	local r1 = 0
	local r2 = 0
	if star==1 then
		r1,r2=MakeItem( role , 183 , 1 , 4)
	elseif  star==2 then
		r1,r2=MakeItem( role , 184 , 1 , 4)
	elseif  star==3 then
		r1,r2=MakeItem( role , 185 , 1 , 4)
	elseif  star==4 then
		r1,r2=MakeItem( role , 186 , 1 , 4)
	elseif  star==5 then
		r1,r2=MakeItem( role , 187 , 1 , 4)
	elseif  star==6 then
		r1,r2=MakeItem( role , 188 , 1 , 4)
	elseif  star==7 then
		r1,r2=MakeItem( role , 189 , 1 , 4)
	elseif  star==8 then
		r1,r2=MakeItem( role , 190 , 1 , 4)
	elseif  star==9 then
		r1,r2=MakeItem( role , 191 , 1 , 4)
	else  
		r1,r2=MakeItem( role , 199 , 1 , 4)
	end
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
	local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 到 Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )
	local Part4_newJL = GetNum_Part4 ( Num_newJL )
	local Part5_newJL = GetNum_Part5 ( Num_newJL )
	local Part6_newJL = GetNum_Part6 ( Num_newJL )
	local Part7_newJL= GetNum_Part7 ( Num_newJL )
	local t={}
		t[0]=1
		t[1]=2
		t[2]=3
		t[3]=4
		t[4]=5
	local eleven=math.random ( 1,3 )
	Part2_newJL=t[eleven-1]
	Part4_newJL=t[eleven]
	Part6_newJL=t[eleven+1]
	Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
	Num_newJL = SetNum_Part3 ( Num_newJL , 1 )
	Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
	Num_newJL = SetNum_Part5 ( Num_newJL , 1 )
	Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
	Num_newJL = SetNum_Part7 ( Num_newJL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
end
-----------------------------------------------------------
--怪物召唤
function ItemUse_NSSN ( role , Item  )
	local cha_name = GetChaDefaultName ( role )
	LG( "KaiXiaoBaoDeSB" ,cha_name )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 857
	local Refresh = 3700					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
-----------------------------------------------------------
--女神的小包
function ItemUse_NSDXB ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to activate Goddess's Pouch")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 12 )
	local r1 = 0
	local r2 = 0
	if star==1 then
		r1,r2=MakeItem( role , 619 , 1 , 4)
	elseif star==2 then
		r1,r2=MakeItem( role , 625 , 1 , 4)
	elseif  star==3 then
		r1,r2=MakeItem( role , 628 , 1 , 4)
	elseif  star==4 then
		r1,r2=MakeItem( role , 631 , 1 , 4)
	elseif  star==5 then
		r1,r2=MakeItem( role , 634 , 1 , 4)
	elseif  star==6 then
		r1,r2=MakeItem( role , 674 , 1 , 4)
	elseif  star==7 then
		r1,r2=MakeItem( role , 698 , 1 , 4)
	elseif  star==8 then
		r1,r2=MakeItem( role , 701 , 1 , 4)
	else 
		local eleven =math.random ( 2530, 2548 )
		r1,r2=MakeItem( role , eleven , 1 , 4)
	end
	local Item_new = GetChaItem ( role , 2 , r2 )			--取道具指针
	local Item_ID = GetItemID ( Item_new )
	local itemname = GetItemName (Item_ID) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens Goddess's Pouch and obtain "..itemname  
	Notice ( message )
end
----加纳宝箱
function ItemUse_JaNaBox ( role , Item ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1012 , 1 , 4) 			
	local itemname = GetItemName (1012) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens Chest of Ascaron and obtain "..itemname  
	Notice ( message )
end


--------黑市商人黑市装备--Leo
function gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local cha_name = GetChaDefaultName ( role ) 
	local General = 0  
	local ItemId = 0 
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end
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
	if ItemId==0845 or ItemId==0846 or ItemId==0847 or ItemId==0848 then
		local check_rad = math.random ( 1, 100 )
		local heilong_rad = math.random ( 1, 1000 )
		if check_rad==99 and heilong_rad>=999 then
			item_quality=16
		elseif  check_rad==99 and  heilong_rad>=900 then 
			item_quality=15
		elseif  check_rad==99 and  heilong_rad>=500 then 
			item_quality=14
		elseif  check_rad==99 and  heilong_rad>=200 then 
			item_quality=13
		elseif  check_rad==99 then  
			item_quality=12
		else 
			ItemId=0266
		end
	end	
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 0845
	GoodItem[1] = 0846
	GoodItem[2] = 0847
	GoodItem[3] = 0848
	GoodItem[4] = 0266
	local Good_C = 0
	for Good_C = 0 , 4 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local message = cha_name.." opens a Black Market Equipment and obtain "..itemname  
			Notice ( message )
		end
	end
	--LG( "HeiShiZhangBei_XinXi" , cha_name , ItemId )

	return 1
end

--游龙宝箱24型
function ItemUse_jsyla( role , Item )
	local item_quality =BaoXiang_jsyla_Qua
	local maxitem = BaoXiang_jsyla_Mxcount
	local item_type = BaoXiang_jsyla
	local item_type_rad =BaoXiang_jsyla_Rad

	local item_type_count =BaoXiang_jsyla_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--游龙宝箱23型
function ItemUse_jsylb( role , Item )
	local item_quality =BaoXiang_jsylb_Qua
	local maxitem =BaoXiang_jsylb_Mxcount
	local item_type = BaoXiang_jsylb
	local item_type_rad =BaoXiang_jsylb_Rad

	local item_type_count =BaoXiang_jsylb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷之利刃宝箱24型
function ItemUse_jsmzlra( role , Item )
	local item_quality =BaoXiang_jsmzlra_Qua
	local maxitem =BaoXiang_jsmzlra_Mxcount
	local item_type = BaoXiang_jsmzlra
	local item_type_rad =BaoXiang_jsmzlra_Rad

	local item_type_count =BaoXiang_jsmzlra_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷之利刃宝箱23型
function ItemUse_jsmzlrb( role , Item )
	local item_quality =BaoXiang_jsmzlrb_Qua
	local maxitem =BaoXiang_jsmzlrb_Mxcount
	local item_type = BaoXiang_jsmzlrb
	local item_type_rad =BaoXiang_jsmzlrb_Rad

	local item_type_count =BaoXiang_jsmzlrb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--巨阙宝箱24型
function ItemUse_jsjqa( role , Item )
	local item_quality =BaoXiang_jsjqa_Qua
	local maxitem =BaoXiang_jsjqa_Mxcount
	local item_type = BaoXiang_jsjqa
	local item_type_rad =BaoXiang_jsjqa_Rad

	local item_type_count =BaoXiang_jsjqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--巨阙宝箱23型
function ItemUse_jsjqb( role , Item )
	local item_quality =BaoXiang_jsjqb_Qua
	local maxitem =BaoXiang_jsjqb_Mxcount
	local item_type = BaoXiang_jsjqb
	local item_type_rad =BaoXiang_jsjqb_Rad

	local item_type_count =BaoXiang_jsjqb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷之裁决宝箱24型
function ItemUse_jsmzcja( role , Item )
	local item_quality =BaoXiang_jsmzcja_Qua
	local maxitem =BaoXiang_jsmzcja_Mxcount
	local item_type = BaoXiang_jsmzcja
	local item_type_rad =BaoXiang_jsmzcja_Rad

	local item_type_count =BaoXiang_jsmzcja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷之裁决宝箱23型
function ItemUse_jsmzcjb( role , Item )
	local item_quality =BaoXiang_jsmzcjb_Qua
	local maxitem =BaoXiang_jsmzcjb_Mxcount
	local item_type = BaoXiang_jsmzcjb
	local item_type_rad =BaoXiang_jsmzcjb_Rad

	local item_type_count =BaoXiang_jsmzcjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--双剑盔甲宝箱24型
function ItemUse_jssjkja( role , Item )
	local item_quality =BaoXiang_jssjkja_Qua
	local maxitem =BaoXiang_jssjkja_Mxcount
	local item_type = BaoXiang_jssjkja
	local item_type_rad =BaoXiang_jssjkja_Rad

	local item_type_count =BaoXiang_jssjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--双剑盔甲宝箱23型
function ItemUse_jssjkjb( role , Item )
	local item_quality =BaoXiang_jssjkjb_Qua
	local maxitem =BaoXiang_jssjkjb_Mxcount
	local item_type = BaoXiang_jssjkjb
	local item_type_rad =BaoXiang_jssjkjb_Rad

	local item_type_count =BaoXiang_jssjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--狙击盔甲宝箱24型
function ItemUse_jszjkja( role , Item )
	local item_quality =BaoXiang_jszjkja_Qua
	local maxitem =BaoXiang_jszjkja_Mxcount
	local item_type = BaoXiang_jszjkja
	local item_type_rad =BaoXiang_jszjkja_Rad

	local item_type_count =BaoXiang_jszjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--狙击盔甲宝箱23型
function ItemUse_jszjkjb( role , Item )
	local item_quality =BaoXiang_jszjkjb_Qua
	local maxitem =BaoXiang_jszjkjb_Mxcount
	local item_type = BaoXiang_jszjkjb
	local item_type_rad =BaoXiang_jszjkjb_Rad

	local item_type_count =BaoXiang_jszjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--圣职盔甲宝箱24型
function ItemUse_jsszkja( role , Item )
	local item_quality =BaoXiang_jsszkja_Qua
	local maxitem =BaoXiang_jsszkja_Mxcount
	local item_type = BaoXiang_jsszkja
	local item_type_rad =BaoXiang_jsszkja_Rad

	local item_type_count =BaoXiang_jsszkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--圣职盔甲宝箱23型
function ItemUse_jsszkjb( role , Item )
	local item_quality =BaoXiang_jsszkjb_Qua
	local maxitem =BaoXiang_jsszkjb_Mxcount
	local item_type = BaoXiang_jsszkjb
	local item_type_rad =BaoXiang_jsszkjb_Rad

	local item_type_count =BaoXiang_jsszkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--封印盔甲宝箱24型
function ItemUse_jsfykja( role , Item )
	local item_quality =BaoXiang_jsfykja_Qua
	local maxitem =BaoXiang_jsfykja_Mxcount
	local item_type = BaoXiang_jsfykja
	local item_type_rad =BaoXiang_jsfykja_Rad

	local item_type_count =BaoXiang_jsfykja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--封印盔甲宝箱23型
function ItemUse_jsfykjb( role , Item )
	local item_quality =BaoXiang_jsfykjb_Qua
	local maxitem =BaoXiang_jsfykjb_Mxcount
	local item_type = BaoXiang_jsfykjb
	local item_type_rad =BaoXiang_jsfykjb_Rad

	local item_type_count =BaoXiang_jsfykjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--航海盔甲宝箱24型
function ItemUse_jshhkja( role , Item )
	local item_quality =BaoXiang_jshhkja_Qua
	local maxitem =BaoXiang_jshhkja_Mxcount
	local item_type = BaoXiang_jshhkja
	local item_type_rad =BaoXiang_jshhkja_Rad

	local item_type_count =BaoXiang_jshhkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--航海盔甲宝箱23型
function ItemUse_jshhkjb( role , Item )
	local item_quality =BaoXiang_jshhkjb_Qua
	local maxitem =BaoXiang_jshhkjb_Mxcount
	local item_type = BaoXiang_jshhkjb
	local item_type_rad =BaoXiang_jshhkjb_Rad

	local item_type_count =BaoXiang_jshhkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--巨剑盔甲宝箱24型
function ItemUse_jsjjkja( role , Item )
	local item_quality =BaoXiang_jsjjkja_Qua
	local maxitem =BaoXiang_jsjjkja_Mxcount
	local item_type = BaoXiang_jsjjkja
	local item_type_rad =BaoXiang_jsjjkja_Rad

	local item_type_count =BaoXiang_jsjjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--巨剑盔甲宝箱23型
function ItemUse_jsjjkjb( role , Item )
	local item_quality =BaoXiang_jsjjkjb_Qua
	local maxitem =BaoXiang_jsjjkjb_Mxcount
	local item_type = BaoXiang_jsjjkjb
	local item_type_rad =BaoXiang_jsjjkjb_Rad

	local item_type_count =BaoXiang_jsjjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--黑龙之躯宝箱24型
function ItemUse_jshlza( role , Item )
	local item_quality =BaoXiang_jshlza_Qua
	--local 
	local maxitem =BaoXiang_jshlza_Mxcount
	local item_type = BaoXiang_jshlza
	local item_type_rad =BaoXiang_jshlza_Rad

	local item_type_count =BaoXiang_jshlza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--黑龙之躯宝箱23型
function ItemUse_jshlzb( role , Item )
	local item_quality =BaoXiang_jshlzb_Qua
	local maxitem =BaoXiang_jshlzb_Mxcount
	local item_type = BaoXiang_jshlzb
	local item_type_rad =BaoXiang_jshlzb_Rad

	local item_type_count =BaoXiang_jshlzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--黑龙之首宝箱24型
function ItemUse_jshlta( role , Item )
	local item_quality =BaoXiang_jshlta_Qua
	local maxitem =BaoXiang_jshlta_Mxcount
	local item_type = BaoXiang_jshlta
	local item_type_rad =BaoXiang_jshlta_Rad

	local item_type_count =BaoXiang_jshlta_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--黑龙之爪宝箱24型
function ItemUse_jshlsa( role , Item )
	local item_quality =BaoXiang_jshlsa_Qua
	local maxitem =BaoXiang_jshlsa_Mxcount
	local item_type = BaoXiang_jshlsa
	local item_type_rad =BaoXiang_jshlsa_Rad

	local item_type_count =BaoXiang_jshlsa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--黑龙之爪宝箱23型
function ItemUse_jshlsb( role , Item )
	local item_quality =BaoXiang_jshlsb_Qua
	local maxitem =BaoXiang_jshlsb_Mxcount
	local item_type = BaoXiang_jshlsb
	local item_type_rad =BaoXiang_jshlsb_Rad

	local item_type_count =BaoXiang_jshlsb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--黑龙之翼宝箱24型
function ItemUse_jshlya( role , Item )
	local item_quality =BaoXiang_jshlya_Qua
	local maxitem =BaoXiang_jshlya_Mxcount
	local item_type = BaoXiang_jshlya
	local item_type_rad =BaoXiang_jshlya_Rad

	local item_type_count =BaoXiang_jshlya_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--黑龙之翼宝箱23型
function ItemUse_jshlyb( role , Item )
	local item_quality =BaoXiang_jshlyb_Qua
	local maxitem =BaoXiang_jshlyb_Mxcount
	local item_type = BaoXiang_jshlyb
	local item_type_rad =BaoXiang_jshlyb_Rad

	local item_type_count =BaoXiang_jshlyb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷幻之刺宝箱24型
function ItemUse_jsmhzca( role , Item )
	local item_quality =BaoXiang_jsmhzca_Qua
	local maxitem =BaoXiang_jsmhzca_Mxcount
	local item_type = BaoXiang_jsmhzca
	local item_type_rad =BaoXiang_jsmhzca_Rad

	local item_type_count =BaoXiang_jsmhzca_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷幻之刺宝箱23型
function ItemUse_jsmhzcb( role , Item )
	local item_quality =BaoXiang_jsmhzcb_Qua
	local maxitem =BaoXiang_jsmhzcb_Mxcount
	local item_type = BaoXiang_jsmhzcb
	local item_type_rad =BaoXiang_jsmhzcb_Rad

	local item_type_count =BaoXiang_jsmhzcb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷咒法杖宝箱24型
function ItemUse_jsmzfza( role , Item )
	local item_quality =BaoXiang_jsmzfza_Qua
	local maxitem =BaoXiang_jsmzfza_Mxcount
	local item_type = BaoXiang_jsmzfza
	local item_type_rad =BaoXiang_jsmzfza_Rad

	local item_type_count =BaoXiang_jsmzfza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷咒法杖宝箱23型
function ItemUse_jsmzfzb( role , Item )
	local item_quality =BaoXiang_jsmzfzb_Qua
	local maxitem =BaoXiang_jsmzfza_Mxcount
	local item_type = BaoXiang_jsmzfzb
	local item_type_rad =BaoXiang_jsmzfzb_Rad

	local item_type_count =BaoXiang_jsmzfzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷法之杖宝箱24型
function ItemUse_jsmfzza( role , Item )
	local item_quality =BaoXiang_jsmfzza_Qua
	local maxitem =BaoXiang_jsmfzza_Mxcount
	local item_type = BaoXiang_jsmfzza
	local item_type_rad =BaoXiang_jsmfzza_Rad

	local item_type_count =BaoXiang_jsmfzza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷法之杖宝箱23型
function ItemUse_jsmfzzb( role , Item )
	local item_quality =BaoXiang_jsmfzzb_Qua
	local maxitem =BaoXiang_jsmfzzb_Mxcount
	local item_type = BaoXiang_jsmfzzb
	local item_type_rad =BaoXiang_jsmfzzb_Rad

	local item_type_count =BaoXiang_jsmfzzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷之长枪宝箱24型
function ItemUse_jsmzcqa( role , Item )
	local item_quality =BaoXiang_jsmzcqa_Qua
	local maxitem =BaoXiang_jsmzcqa_Mxcount
	local item_type = BaoXiang_jsmzcqa
	local item_type_rad =BaoXiang_jsmzcqa_Rad

	local item_type_count =BaoXiang_jsmzcqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

--迷之长枪宝箱23型
function ItemUse_jsmzcqa( role , Item )
	local item_quality =BaoXiang_jsmzcqa_Qua
	local maxitem =BaoXiang_jsmzcqa_Mxcount
	local item_type = BaoXiang_jsmzcqa
	local item_type_rad =BaoXiang_jsmzcqa_Rad

	local item_type_count =BaoXiang_jsmzcqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--迷你黑龙包
function ItemUse_minibh( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10000 )
	if star==1 then
		GiveItem ( role , 0 , 272  , 1 , 4  )
		local message = cha_name.." opens a Mini Black Dragon Bag and obtained the Grand Prize: Black Dragon Set" 
		Notice ( message )
	elseif star>1 and star<=51 then
		GiveItem ( role , 0 , 273  , 1 , 4  ) 
		local message1 = cha_name.." opens a Mini Black Dragon Bag and obtained the First Prize: Happy Holiday Magazine" 
		Notice ( message1 )
	elseif star>51 and star<1652 then
		GiveItem ( role , 0 , 274  , 1 , 4  ) 
	else
		GiveItem ( role , 0 , 275  , 1 , 4  ) 
	end
end
--卡拉的胜利
function ItemUse_kala( role , Item )
--	SystemNotice(role ,"The time has lots its effect after being abandon for too long, don't be too sad.")
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_KALA , statelv , statetime )
end
-----------------------------------------------------------
--怪物召唤
function ItemUse_MHDYSD ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	--local pet_num = GetPetNum(role)
	--if pet_num > 1 then
	--	SystemNotice( role , "You have reached the maximum number of pets!" )
	--	return
	--end
	local x, y = GetChaPos(role)
	local MonsterID = 858
	local Refresh = 190					--重生时间，秒单位
	local life = 180000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	--SetChaHost(new,role)
	SetChaLifeTime( new, life )
	--SetChaTarget(new, role)
end
----------魔幻女神卡
function ItemUse_mohuan( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 1000 )
	SystemNotice(role ,"star=="..star)
	if star<=8 then
		GiveItem ( role , 0 , 1014  , 1 , 4  )
		local message = cha_name.." opens a Enchanting Goddess Card and obtained Goddess's Trainee Ceremony" 
		Notice ( message )
	elseif star>=9 and star<=17 then
		GiveItem ( role , 0 , 271, 1 , 4  ) 
		local message1 = cha_name.." opens an Enchanting Goddess Card and obtained Angelic Dice" 
		Notice ( message1 )
	elseif star>=18 and star<=27 then
		GiveItem ( role , 0 , 1012, 1 , 4  ) 
		local message3 = cha_name.." opens Enchanting Goddess Card and obtain a Gem of Soul" 
		Notice ( message3 )
	elseif star>=28 and star<=227 then
		GiveItem ( role , 0 , 3886, 1 , 4  ) 
	else
		GiveItem ( role , 0 , 3830, 5 , 4  ) 
	end
end
----------魔幻字母卡宝箱
function ItemUse_MoHuanBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 4663 )
	if star>=1 and star<=3 then
		GiveItem ( role , 0 , 3866, 1 , 4  ) 	
	elseif star>=4 and star<=14 then
		GiveItem ( role , 0 , 3864, 1 , 4  ) 		
	elseif star>=15 and star<=65 then
		GiveItem ( role , 0 , 3858, 1 , 4  )		
	else
		local star=math.random ( 3850, 3875 )
		if star==3858 or star==3864 or star==3866  then
			GiveItem ( role , 0 , 3850  , 1 , 4  )
		else 
			GiveItem ( role , 0 , star  , 1 , 4  ) 			
		end
	end
end
-----------------------------------------初级精灵自爆
function Sk_Script_CJJLZB( role , Item ) 							
 	local sk_add = SK_JLZB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 -----------------------------------------中级精灵自爆
function Sk_Script_ZJJLZB ( role , Item ) 							
  	local sk_add = SK_JLZB
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 2 then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 2 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 -----------------------------------------高级精灵自爆
function Sk_Script_GJJLZB( role , Item ) 							
   	local sk_add = SK_JLZB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 3  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 3 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
---------------------------模糊的图纸
function ItemUse_MHDTZ( role , Item ) 							
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"To open Blurry Blueprint requires at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end  	
	local r1 = 0
	local r2 = 0
	local item_ID=GetItemID(Item)
	local Itemnew_ID=2300
	local rad_ID=math.random ( 1, 100 )
	if rad_ID<=40 then
		Itemnew_ID=2300  --------制造图纸
	elseif rad_ID>=41 and rad_ID<=81 then
		Itemnew_ID=2302  --------烹饪图纸
	else
		Itemnew_ID=2301  --------铸造图纸
	end
	r1, r2 = MakeItem ( role , Itemnew_ID  , 1 , 4 )
	local Itemnew = GetChaItem ( role , 2 , r2 )


	local rad_energy=math.random ( 1, 100 )
	local energy = 1--------新手级图纸
	if item_ID==1000 then-------新手级模糊图纸
		energy=1
	elseif item_ID==1001 then -------初级模糊图纸
		if rad_energy<=5 then
			energy=4
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=3
		else
			energy=2
		end
	elseif item_ID==1002 then -------中级模糊图纸
		if rad_energy<=5 then
			energy=6
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=5
		else
			energy=4
		end
	elseif item_ID==1003 then -------高级模糊图纸
		if rad_energy<=5 and Itemnew_ID~=2301 then------------铸造不产出80级物品
			energy=8
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=7
		else
			energy=6
		end
	end	
	--SystemNotice(role ,"item_ID=="..item_ID)
	--SystemNotice(role ,"rad_energy=="..rad_energy)
	--SystemNotice(role ,"energy=="..energy)

	local final_ID=1849 --------默认蛋糕
	local final_LV=20 --------默认20
	local final_ID1=3116 --------默认精灵果
	local final_ID2=3116 --------默认精灵果
	local final_ID3=3116 --------默认精灵果
	------首先取到生成物品的ID
	local General = 0  
	local ItemId =3124
	if Itemnew_ID==2300 then -----制造
		local STAR_BEGIN=ZHIZAO_Mxcount*(energy-1)/10+1
		local STAR_END=ZHIZAO_Mxcount*energy/10
	--SystemNotice(role ,"STAR_BEGIN=="..STAR_BEGIN)
	--SystemNotice(role ,"STAR_END=="..STAR_END)

		for i = STAR_BEGIN , STAR_END , 1 do 
		    General = ZHIZAO__Rad[ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1									--命中物品编号
		for k = STAR_BEGIN , STAR_END , 1 do				-- 随机出添加的前缀编号
			d = ZHIZAO__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
	--SystemNotice(role ,"c=="..c)

		--local rad_num1=math.random ( 1, 280 )
		final_ID=ZHIZAO_ID[c]
		final_LV=ZHIZAO_LV[c]
		final_ID1=ZHIZAO_ID1[c]
		final_ID2=ZHIZAO_ID2[c]
		final_ID3=ZHIZAO_ID3[c]

	end
	if Itemnew_ID==2301 then -----铸造
		local STAR_BEGIN=1
		local STAR_END=77
		if energy==1 then
			STAR_BEGIN=1
			STAR_END=77
		elseif energy==2 then
			STAR_BEGIN=78
			STAR_END=166
		elseif energy==3 then
			STAR_BEGIN=167
			STAR_END=278
		elseif energy==4 then
			STAR_BEGIN=279
			STAR_END=434
		elseif energy==5 then
			STAR_BEGIN=435
			STAR_END=596
		elseif energy==6 then
			STAR_BEGIN=597
			STAR_END=732
		elseif energy==7 then
			STAR_BEGIN=733
			STAR_END=871--------872以后目前有问题
		elseif energy==8 then
			STAR_BEGIN=895
			STAR_END=902
		end
		--SystemNotice( role ,"energy=="..energy)
		--SystemNotice( role ,"STAR_BEGIN=="..STAR_BEGIN)
		--SystemNotice( role ,"STAR_END=="..STAR_END)

		for i = STAR_BEGIN , STAR_END , 1 do 
		    General = ZHUZAO__Rad[ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1									--命中物品编号
		for k = STAR_BEGIN , STAR_END , 1 do				-- 随机出添加的前缀编号
			d = ZHUZAO__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
				end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		--local rad_num2=math.random ( 1, 906 )
		final_ID=ZHUZAO_ID[c]
		final_LV=ZHUZAO_LV[c]
		final_ID1=ZHUZAO_ID1[c]
		final_ID2=ZHUZAO_ID2[c]
		final_ID3=ZHUZAO_ID3[c]		
		local final_type=GetItemType2(final_ID)
		local check=0
		local i = 0
		for i = 0 , Item_CanJinglian_Num  , 1 do
			if final_type == Item_CanJinglian_ID [i] then
				check=1
			end
		end
		--SystemNotice( role ,"check=="..check)

		if  check==1 then-----------------铸造武器或装备时
			local check_rad=math.random ( 1, 1000 )
			if check_rad==1 then
				final_LV=70
			elseif check_rad>=2 and check_rad<=11 then
				final_LV=60
			elseif check_rad>=12 and check_rad<=21 then
				final_LV=50
			elseif check_rad>=22 and check_rad<=221 then
				final_LV=40
			elseif check_rad>=222 and check_rad<=421 then
				final_LV=30
			elseif check_rad>=422 and check_rad<=621 then
				final_LV=20
			else
				final_LV=10				
			end
			if final_LV>70 then
				final_LV=70
			end
			--SystemNotice( role ,"check_energy=="..energy)

			if final_LV~=10 and final_LV~=0 then
				local tmd=(energy-1)*6+final_LV*0.1-1
			--SystemNotice( role ,"tmd=="..tmd)
				final_ID3=TESHU_ID[tmd]
			--SystemNotice( role ,"TESHU_ID[tmd]=="..TESHU_ID[tmd])
			end
		end
	end
	if Itemnew_ID==2302 then -----烹饪
		local STAR_BEGIN=1
		local STAR_END=80
		if energy==1 then
			STAR_BEGIN=1
			STAR_END=7
		elseif energy==2 then
			STAR_BEGIN=8
			STAR_END=12
		elseif energy==3 then
			STAR_BEGIN=13
			STAR_END=17
		elseif energy==4 then
			STAR_BEGIN=18
			STAR_END=26
		elseif energy==5 then
			STAR_BEGIN=27
			STAR_END=31
		elseif energy==6 then
			STAR_BEGIN=32
			STAR_END=36
		else
			STAR_BEGIN=energy+30
			STAR_END=energy+30             
		end
		for i = STAR_BEGIN , STAR_END , 1 do 
		    General = ZHIZAO__Rad[ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1									--命中物品编号
		for k = STAR_BEGIN , STAR_END , 1 do				-- 随机出添加的前缀编号
			d = PENGREN__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		--local rad_num3=math.random ( 1, 40 )
		final_ID=PENGREN_ID[c]
		final_LV=PENGREN_LV[c]
		final_ID1=PENGREN_ID1[c]
		final_ID2=PENGREN_ID2[c]
		final_ID3=PENGREN_ID3[c]		
	end
	--SystemNotice(role ,"Blueprint level energy=="..energy)

	local star_number=energy*10
	local yingbi_num=math.random ( 10, star_number )
	if energy<=3 then
		SetItemAttr(Itemnew, ITEMATTR_MAXURE, energy )--精灵硬币需求
		SetItemAttr(Itemnew, ITEMATTR_URE, energy )--图纸等级		
	else
		SetItemAttr(Itemnew, ITEMATTR_MAXURE, yingbi_num )--精灵硬币需求
		SetItemAttr(Itemnew, ITEMATTR_URE, energy )--图纸等级
	end
	local sta =math.random ( 1, 10 )
	if Itemnew_ID==2301 then-------------铸造图纸使用次数减半
		sta=sta*0.5
		sta=math.max(1,sta)
	end
	SetItemAttr(Itemnew, ITEMATTR_VAL_STA, sta )--图纸使用次数
	--SetItemAttr(Itemnew, ITEMATTR_MAXURE, maxure )--图纸使用次数
	local qulity=math.floor(final_LV*0.1)+100
	SetItemAttr(Itemnew, ITEMATTR_MAXENERGY, qulity )--质量

	local ure=10-final_LV*0.1-------------要显示成百分比
	SetItemAttr(Itemnew, ITEMATTR_ENERGY, ure )--基本成功率
	--SetItemAttr(Itemnew, ITEMATTR_URE, ure )--基本成功率

	SetItemAttr(Itemnew, ITEMATTR_VAL_STR, final_ID1 )--需求道具1ID
	SetItemAttr(Itemnew, ITEMATTR_VAL_CON, final_ID2 )--需求道具2ID
	SetItemAttr(Itemnew, ITEMATTR_VAL_DEX, final_ID3 )--需求道具3ID
	SetItemAttr(Itemnew, ITEMATTR_VAL_AGI, final_ID )--生成物品ID

	local Num_new = GetItemForgeParam ( Itemnew , 1 )
	local Part2_new = GetNum_Part2 ( Num_new )	
	local Part4_new = GetNum_Part4 ( Num_new )
	local Part6_new = GetNum_Part6 ( Num_new )
	Part2_new = math.random ( 3, 20 )					--需求道具1数量 
	Part4_new = math.random ( 2, 9 )					--需求道具2数量
	Part6_new = math.random ( 1, 3 )					--需求道具3数量
	Part6_new = Part6_new*math.max(1,(energy-2))					--需求道具3数量
	Num_new = SetNum_Part2 ( Num_new , Part2_new )
	Num_new = SetNum_Part4 ( Num_new , Part4_new )
	Num_new = SetNum_Part6 ( Num_new , Part6_new )
	SetItemForgeParam ( Itemnew , 1 , Num_new )

end 
--Sk_Script_GS
--Sk_Script_NK
--Sk_Script_JQ
-----------------------------------------Sk_Script_DBs
function Sk_Script_DBs( role , Item ) 							
 	local sk_add = SK_JLTX1  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_NKs
function Sk_Script_NKs( role , Item ) 							
 	local sk_add = SK_JLTX2  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_XZs
function Sk_Script_XZs( role , Item ) 							
 	local sk_add = SK_JLTX3  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_JQs
function Sk_Script_JQs( role , Item ) 							
 	local sk_add = SK_JLTX4  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_BCs
function Sk_Script_BCs( role , Item ) 							
 	local sk_add = SK_JLTX5  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_BSs
function Sk_Script_BSs( role , Item ) 							
 	local sk_add = SK_JLTX6  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_PZs
function Sk_Script_PZs( role , Item ) 							
 	local sk_add = SK_JLTX7  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_SZs
function Sk_Script_SZs( role , Item ) 							
 	local sk_add = SK_JLTX8  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--------------------------团队之星
function ItemUse_TunDuiZhiXing( role , Item ) 							
   	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem ( role , 1034 , 1 , 4 )
	local Itemnew = GetChaItem ( role , 2 , r2 )
	--SetItemAttr(Itemnew, ITEMATTR_ENERGY, 100 )--当前存储经验
	--SetItemAttr(Itemnew, ITEMATTR_MAXENERGY, 201000 )--最高存储经验
	SetItemAttr(Itemnew, ITEMATTR_URE, 100 )--当前存储经验
	SetItemAttr(Itemnew, ITEMATTR_MAXURE, 20100 )--最高存储经验
end 
----------------------微型努力征服器
function ItemUse_WeiXing( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv > statelv then
		SystemNotice ( role , "Better fruit in effect. Please use it later" )
		UseItemFailed ( role )
		return
	end
	local lv_star = GetChaAttr( role , ATTR_LV) 
	if lv_star > 40 then
		SystemNotice ( role , "Effective only for those below Lv 40" )
		UseItemFailed ( role )
		return
	end
	local statetime = 60+5*(lv_star-1)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
end
----------------------------------------------------
function ItemUse_JLZhiZ_CJ ( role , Item , Item_Traget )   --初级精灵制造术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 1		--要增加的 Skill 类型
		local SkillNum = 13		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhiZ_ZJ ( role , Item , Item_Traget )   --中级精灵制造术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 2		--要增加的 Skill 类型
		local SkillNum = 13		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhiZ_GJ ( role , Item , Item_Traget )   --高级精灵制造术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 3		--要增加的 Skill 类型
		local SkillNum = 13		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhuZ_CJ ( role , Item , Item_Traget )   --初级精灵铸造术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 1		--要增加的 Skill 类型
		local SkillNum = 14		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhuZ_ZJ ( role , Item , Item_Traget )   --中级精灵铸造术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 2		--要增加的 Skill 类型
		local SkillNum = 14		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhuZ_GJ ( role , Item , Item_Traget )   --高级精灵铸造术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 3		--要增加的 Skill 类型
		local SkillNum = 14		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLFenJ_CJ ( role , Item , Item_Traget )   --初级精灵分解术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 1		--要增加的 Skill 类型
		local SkillNum = 15		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLFenJ_ZJ ( role , Item , Item_Traget )   --中级精灵分解术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 2		--要增加的 Skill 类型
		local SkillNum = 15		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLFenJ_GJ ( role , Item , Item_Traget )   --高级精灵分解术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 3		--要增加的 Skill 类型
		local SkillNum = 15		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLPengR_CJ ( role , Item , Item_Traget )   --初级精灵烹饪术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 1		--要增加的 Skill 类型
		local SkillNum = 16		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLPengR_ZJ ( role , Item , Item_Traget )   --中级精灵烹饪术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 2		--要增加的 Skill 类型
		local SkillNum = 16		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLPengR_GJ ( role , Item , Item_Traget )   --高级精灵烹饪术
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --精灵32位技能信息数据
		local SkillType = 3		--要增加的 Skill 类型
		local SkillNum = 16		--要增加的Skill 编号

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "have target skill, usage failed" ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------乱斗宝盒
function ItemUse_FightingBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"You need at least 2 empty inventory slots to open the Chaos Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2610  , 1 , 4 )
	local rad = math.random ( 1, 3 )
	if rad ==1 then
	GiveItem ( role , 0 , 1124  , 1 , 15 )	
	end
	
	if rad ==2 then
	GiveItem ( role , 0 , 1125  , 1 , 15 )	
	end
	
	if rad ==3 then
	GiveItem ( role , 0 , 1126  , 1 , 15 )	
	end
end
---------------------------------鳕鱼闷闷锅：最大HP+100，物力抵抗+1，时间15分钟
function ItemUse_XUEYU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------翠竹花脸鲟：最大HP+400，物力抵抗+2，时间10分钟
function ItemUse_CUIZHU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------回香射水鱼：最大HP+900，物力抵抗+2，时间10分钟
function ItemUse_HUIXIANG( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------映月鲟鱼汤：最大HP+1600，物力抵抗+3，时间8分钟
function ItemUse_YINGYUE( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime =480
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------浪贝煨煎羹：最大HP+2500，物力抵抗+3，时间8分钟
function ItemUse_LANGBEI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv =5
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 480
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------小小跳虾饺：最大HP+3600，物力抵抗+4，时间6分钟
function ItemUse_XIAOXIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 360
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------虎皮鱼骨酥：最大HP+4900，物力抵抗+5，时间5分钟
function ItemUse_HUPI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv =7
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 300
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------银鲛海鲜饭：最大HP+6400，物力抵抗+6，时间3分钟
function ItemUse_YINJIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 8
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------陶土网纹鰧：最大HP+8100，物力抵抗+6，时间3分钟
function ItemUse_TAOTU( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 9
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------百万烤鱼翅：最大HP+10000，物力抵抗+8，时间1分钟
function ItemUse_BAIWANG( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 10
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime =60
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------- 馒头：HP+200，攻击力+50，时间15分钟
function ItemUse_MANTOU( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 200 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------包子：HP+400，攻击力+150，时间10分钟
function ItemUse_BAOZI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 400 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime =600
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------大饼：HP+600，攻击力+250，时间7分钟
function ItemUse_DABING( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 600 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 420
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------油条：HP+800，攻击力+350，时间5分钟
function ItemUse_YOUTIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 800 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime =300
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------春卷：HP+1000，攻击力+450，时间2分钟
function ItemUse_CHUNJUAN( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 1000 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------女儿红：SP+100，精神+5，时间15分钟
function ItemUse_NVER( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 100 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------状元红：SP+200，精神+10，时间10分钟
function ItemUse_ZHUANGYUAN( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 200 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------杜康：SP+300，精神+15，时间7分钟
function ItemUse_DUKANG( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 300 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 420
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------茅台：SP+400，精神+20，时间5分钟
function ItemUse_MAOTAI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 400 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 300
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------人参酒：SP+500，精神+25，时间3分钟
function ItemUse_RENSHEN( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 500 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------虎骨酒：SP+600，精神+30，时间2分钟
function ItemUse_HUGU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 600 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
-------------------新式摩力酷装宝箱
function ItemUse_MOLIBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 4 empty inventory slots to open the Chest")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 12 )
	if rad == 1 then
	GiveItem ( role , 0 , 5107  , 1 , 4 ) 
	GiveItem ( role , 0 , 5108  , 1 , 4 ) 
	GiveItem ( role , 0 , 5109  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5111  , 1 , 4 ) 
	GiveItem ( role , 0 , 5112  , 1 , 4 ) 
	GiveItem ( role , 0 , 5113  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5115  , 1 , 4 ) 
	GiveItem ( role , 0 , 5116  , 1 , 4 ) 
	GiveItem ( role , 0 , 5117  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5119  , 1 , 4 ) 
	GiveItem ( role , 0 , 5120  , 1 , 4 ) 
	GiveItem ( role , 0 , 5121  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5123  , 1 , 4 ) 
	GiveItem ( role , 0 , 5124  , 1 , 4 ) 
	GiveItem ( role , 0 , 5125  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5127  , 1 , 4 ) 
	GiveItem ( role , 0 , 5128  , 1 , 4 ) 
	GiveItem ( role , 0 , 5129  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5130  , 1 , 4 ) 
	GiveItem ( role , 0 , 5131  , 1 , 4 ) 
	GiveItem ( role , 0 , 5132  , 1 , 4 )
	GiveItem ( role , 0 , 5133  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5134  , 1 , 4 ) 
	GiveItem ( role , 0 , 5135  , 1 , 4 ) 
	GiveItem ( role , 0 , 5136  , 1 , 4 )
	GiveItem ( role , 0 , 5137  , 1 , 4 )
	elseif rad == 9 then
	GiveItem ( role , 0 , 5138  , 1 , 4 ) 
	GiveItem ( role , 0 , 5139  , 1 , 4 ) 
	GiveItem ( role , 0 , 5140  , 1 , 4 )
	GiveItem ( role , 0 , 5141  , 1 , 4 )
	elseif rad == 10 then
	GiveItem ( role , 0 , 5143  , 1 , 4 ) 
	GiveItem ( role , 0 , 5144  , 1 , 4 ) 
	GiveItem ( role , 0 , 5145  , 1 , 4 ) 
	elseif rad == 11 then
	GiveItem ( role , 0 , 5147  , 1 , 4 ) 
	GiveItem ( role , 0 , 5148  , 1 , 4 ) 
	GiveItem ( role , 0 , 5149  , 1 , 4 )
	elseif rad == 12 then
	GiveItem ( role , 0 , 5151  , 1 , 4 ) 
	GiveItem ( role , 0 , 5152  , 1 , 4 ) 
	GiveItem ( role , 0 , 5153  , 1 , 4 )
	end
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.." opens Apparel Chest and obtain 1 apparel set"   
	--Notice ( message )
end

function ItemUse_IDBOX(role, Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local cha_name = GetChaDefaultName ( role ) 
	local count = 1
	
	if lv < 60 then
		SystemNotice( role ,"Currently lower then Lv 60. Item usage failed!")
		UseItemFailed ( role )	
	else
		SystemNotice(role,"Event have ended, Thank You for your participation. Please refer to Pirate King Online official website for future events!")
	end
end 

---------------------荣誉加点书
function ItemUse_HonorPoint (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "You do not have Mark of Honor")
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
	
	local HonorPoint_X=HonorPoint+100
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	
end
-------------------------乱斗加点书
function ItemUse_FightingPoint (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "You do not have Mark of Honor")
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local FightingPoint=GetItemAttr ( Book2 , ITEMATTR_MAXENERGY)
	
	local FightingPoint_X=FightingPoint+100
	SetItemAttr ( Book2 , ITEMATTR_MAXENERGY,FightingPoint_X)
	
end
----------------------------[[美味火鸡肉]]--
function ItemUse_MWHJ ( role , Item )  
	local el_exp = GetChaAttr(role, ATTR_CEXP)
	local exp1=el_exp
	local charLv=Lv ( role )
	local exp_resume = 5000
	local	exp_resume_1= 100
	el_exp = el_exp + exp_resume
	 if charLv>=80 then	
		el_exp = exp1 + exp_resume_1
	end
	SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 
------------------------圣诞大餐
function ItemUse_SDDC ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------当前等级经验
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3  +  Exp_star + 10
	local dif_exp_thalf_b = dif_exp_thalf - DEXP[charLv+1]
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.01+Exp_star ----------------
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=9 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=10 and charLv<=29 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=30 and charLv<=59 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=60 and charLv<=75 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=76 and charLv<=85 and charLv~=79  then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b<=0 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=86 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )-------------
		--SystemNotice( role , "Players above Lv 86 will obtain 1% experience upon usage" )--------------
	end
end
------------------------------------怪物召唤券--双击获得四个召唤券
function ItemUse_GWZHQ ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=3 then
		SystemNotice(role ,"Not enough slots. You need at least 4 empty slots. Failed to open Posh Christmas Box")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2888  , 1 , 4) 
	GiveItem ( role , 0 , 2889  , 1 , 4)
	GiveItem ( role , 0 , 2890  , 1 , 4)
	GiveItem ( role , 0 , 2891  , 1 , 4)
end
---------------------------------火鸡召唤券--双击召唤火鸡宠物
function ItemUse_HJZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Not usable on the sea." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Max of limit of 5 pets reached. Please try again later!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =930     -------------------没毛火鸡
	local Refresh = 1800					--重生时间，秒单位
	local life = 1800000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

------------------------------麋鹿召唤券--双击召唤麋鹿

function ItemUse_MLZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Not usable on the sea." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Max of limit of 5 pets reached. Please try again later!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =931-----------------------麋鹿
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end
-----------------------------------雪人召唤券--双击召唤雪人
function ItemUse_XRZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Not usable on the sea." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Max of limit of 5 pets reached. Please try again later!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =932-----------------------------圣诞老人
	local Refresh = 7200					--重生时间，秒单位
	local life = 7200000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

--------------------------------------------------圣诞老人召唤券--双击召唤圣诞老人

function ItemUse_SDZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Not usable on the sea." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Max of limit of 5 pets reached. Please try again later!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =929-----------------------------圣诞老人
	local Refresh = 10800					--重生时间，秒单位
	local life = 10800000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end
---------------------------------------------圣诞大礼包--双击获得一系列道具
function ItemUse_SDDLB ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=5 then
		SystemNotice(role ,"You require at least 6 empty inventory slots. Failed to open Christmas Box.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2894  , 1 , 4) 
	GiveItem ( role , 0 , 2893  , 10 , 4) 
	GiveItem ( role , 0 , 2889  , 1 , 4) 
	GiveItem ( role , 0 , 2890 , 1 , 4) 
	GiveItem ( role , 0 , 2891  , 1 , 4) 
	GiveItem ( role , 0 , 2896  , 99 , 4) 
end


--------------------------------------------------------台湾机票1
function TW_Ticket_Script1(role, Item )
	local i = CheckBagItem(role,2446)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2446,1)
			if j == 1 then
				GoTo( role,  2816, 3255, "darkblue")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--------------------------------------------------------台湾机票2
function TW_Ticket_Script2(role, Item )
	local i = CheckBagItem(role,2447)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2447,1)
			if j == 1 then
				MoveCity(role,"Teleport4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--------------------------------------------------------台湾机票3
function TW_Ticket_Script3(role, Item )
	local i = CheckBagItem(role,2491)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2491,1)
			if j == 1 then
				MoveCity(role,"Teleport3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--精美的圣诞礼盒
function ItemUse_JMSDBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount						-- 终结编号
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Not enough slots. Fail to open Posh Christmas Box")
		UseItemFailed ( role )
		return
	end
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
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." opens a Posh Christmas Box and obtained "..itemname  
			Notice ( message )
		end
	end
end



----------------------------------------------------------------------------------新年礼炮
function ItemUse_XNLP( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 10122  and CheckDateNum <= 10123 then
		ItemUse_XINBOX ( role , Item )	
	end
end
function ItemUse_XINBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount						-- 终结编号
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory slot. Usage of Grandiose Salute failed.")
		UseItemFailed ( role )
		return
	end
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
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." uses Grandiose Salute and obtained "..itemname  
			Notice ( message )
		end
	end
end

-------------------新年宝箱
function ItemUse_XNBOX( role , Item )
		
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if lv < 40 then
		SystemNotice( role ,"Currently lower than Lv 40. Unable to use item!")
		UseItemFailed ( role )	
	return
	end
	if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 free slot to open chest")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 30000 )
	if  el>=29700 and el<30000 then
	GiveItem ( role , 0 , 2240  , 1 , 4 ) 
	elseif el>=28700 and el<29700 then
	GiveItem ( role , 0 , 2237  , 1 , 4 ) 
	elseif el>=25700 and el<28700 then
	GiveItem ( role , 0 , 2239  , 1 , 4 ) 
	elseif el>=15700 and el<25700 then
	GiveItem ( role , 0 , 2241  , 1 , 4 )
	else
	local EID = math.random ( 2242, 2245 )
	GiveItem ( role , 0 , EID  , 1 , 4 ) 	
	end
end

------------------------------------数字发
function ItemUse_SZF ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <1 then
		SystemNotice(role ,"Unable to use Pirate Voucher 8. Requires at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2306  , 1 , 4)
	local cha_name = GetChaDefaultName ( role ) 
			local message ="Congratulations" ..cha_name.."Obtained 3k RMB worth of IPOD prizes" 
			Notice ( message )
	
end
----------------------------------------------石头记
function ItemUse_ShiTouJi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , STONE_ID  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID = GetItemID ( Item_newJL )		
	if STONE_LV>8 then
		STONE_LV=8
	end
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_BaoshiLV , STONE_LV )
	local cha_name = GetChaDefaultName ( role )
	LG( "star_stonebox" ,cha_name, STONE_ID , STONE_LV )
end

-------------------练习用沙包Lv1
function ItemUse_ShaBao1(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Training in Safe Zone? Dream on!" )
		UseItemFailed ( role )
                return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 937
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end


-------------------练习用沙包Lv2
function ItemUse_ShaBao2(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Training in Safe Zone? Dream on!" )
		UseItemFailed ( role )
                return
	end
	        local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 938
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end


-------------------练习用沙包Lv3

function ItemUse_ShaBao3(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Training in Safe Zone? Dream on!" )
		UseItemFailed ( role )
                return
	end
	        local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 939
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh , role )
		SetChaLifeTime( new, life )
end


-------------------练习用沙包Lv4
function ItemUse_ShaBao4(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Training in Safe Zone? Dream on!" )
		UseItemFailed ( role )
                return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 940
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end


-------------------练习用沙包Lv5
function ItemUse_ShaBao5(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Training in Safe Zone? Dream on!" )
		UseItemFailed ( role )
                return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 941
                local Refresh = 1900000				        
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

------------------邪恶发生器Lv1
function ItemUse_FaSheng1(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
	      SystemNotice( role , "Summon a monster in a safe zone? Please be considerate!" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,8 )
	local MonsterID = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 841
--		Monster_GetID[2] = 842
--		Monster_GetID[3] = 843
--		Monster_GetID[4] = 844
--		Monster_GetID[5] = 845
--		Monster_GetID[6] = 846
--		Monster_GetID[7] = 229
--		Monster_GetID[8] = 274
--        

	  if radID == 1   then
	       MonsterID = 841
	       
	  elseif radID == 2 then
	       MonsterID = 842
	           
	  elseif radID == 3 then
	       MonsterID = 843

	  elseif radID == 4 then
	       MonsterID = 843

	  elseif radID == 5 then
	       MonsterID = 845
	  elseif radID == 6 then
	       MonsterID = 846
	  elseif radID == 7 then
	       MonsterID = 229
	  elseif radID == 8 then
	       MonsterID = 274

	  end
		
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
                local Refresh = 3700000			                --重生时间，秒单位
		local life =  3600000					--生命时间，毫秒单位
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
		SetChaLifeTime( new, life )
end
------------------邪恶发生器Lv2

function ItemUse_FaSheng2(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
	      SystemNotice( role , "Summon a monster in a safe zone? Please be considerate!" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,15 )
	local MonsterID = 0
--	local Monster_GetID = {}
--
--                Monster_GetID[1] = 847      
--		Monster_GetID[2] = 848
--		Monster_GetID[3] = 849
--		Monster_GetID[4] = 850
--		Monster_GetID[5] = 851
--		Monster_GetID[6] = 852
--		Monster_GetID[7] = 211
--		Monster_GetID[8] = 706
--		Monster_GetID[9] = 673
--		Monster_GetID[10] = 690
--		Monster_GetID[11] = 691
--		Monster_GetID[12] = 692
--		Monster_GetID[13] = 693
--		Monster_GetID[14] = 106
--		Monster_GetID[15] = 289

		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
	      MonsterID = 847
	  elseif radID == 2 then
	      MonsterID = 848
	  elseif radID == 3 then 
	      MonsterID = 849
	  elseif radID == 4 then 
	      MonsterID = 850
          elseif radID == 5 then
	      MonsterID = 851
	    elseif radID == 6 then
	      MonsterID = 852
	    elseif radID == 7 then
	      MonsterID = 211
	    elseif radID == 8 then
	      MonsterID = 706
	    elseif radID == 9 then
	      MonsterID = 673
	    elseif radID == 10 then
	      MonsterID = 690
	    elseif radID == 11 then
	      MonsterID = 691
	    elseif radID == 12 then
	      MonsterID = 692
	    elseif radID == 13 then
	      MonsterID = 693
	    elseif radID == 14 then
	      MonsterID = 106
	    elseif radID == 15 then
	      MonsterID = 289
	  end
		local Refresh = 3700000				        --重生时间，秒单位
		local life = 3600000					--生命时间，毫秒单位
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end
------------------邪恶发生器Lv3
function ItemUse_FaSheng3(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
	      SystemNotice( role , "Summon a monster in a safe zone? Please be considerate!" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,7 )
	local MonsterID = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 757
--		Monster_GetID[2] = 679
--		Monster_GetID[3] = 678
--		Monster_GetID[4] = 707
--		Monster_GetID[5] = 708
--		Monster_GetID[6] = 776
--		Monster_GetID[7] = 74
		 
                local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
	       MonsterID = 757       
	  elseif radID == 2 then
	       MonsterID = 679                          
	  elseif radID == 3 then                    
	       MonsterID = 678                           
	  elseif radID == 4 then                    
	       MonsterID = 707      
	  elseif radID == 5 then
	       MonsterID = 708                          
          elseif radID == 6 then
	       MonsterID = 776                           
          elseif radID == 7 then
	       MonsterID = 74   
	  end
		local Refresh = 7300000				        --重生时间，秒单位
		local life = 7200000     				--生命时间，毫秒单位
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end
------------------邪恶发生器Lv4
function ItemUse_FaSheng4(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
	      SystemNotice( role , "Summon a monster in a safe zone? Please be considerate!" )
	      UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,5 )
	local MonsterID = 0
	local Refresh = 0
	local life = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 952
--		Monster_GetID[2] = 805
--		Monster_GetID[3] = 807
--		Monster_GetID[4] = 786
--		Monster_GetID[5] = 788
--		
                local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
	      MonsterID = 952        
	  elseif radID == 2 then
	      MonsterID = 805                          
	  elseif radID == 3 then                    
	      MonsterID = 807                           
	  elseif radID == 4 then                    
	      MonsterID = 786      
	  elseif radID == 5 then
	      MonsterID = 788                           
	  end
	       
	       if MonsterID == 952 then 
	          Refresh = 10900000
	          life = 10800000
	       else
		  Refresh = 7300000     			        --重生时间，秒单位
		  life = 7200000					--生命时间，毫秒单位
	       end
	          local new = CreateChaX( MonsterID , x , y , 145 , Refresh ,role)
		SetChaLifeTime( new, life )
end

--------------------邪恶发生器Lv5
--function ItemUse_FaSheng5(role,Item)
--local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "Cannot use while sailing" )
--		UseItemFailed ( role )
--		return
--	end
--        local reg = 0
--	      reg =IsChaInRegion( role, 2 )
--	if reg == 1 then	
--	      SystemNotice( role , "Summon a monster in a safe zone? Please be considerate!" )
--	      UseItemFailed ( role )
--	return
--	end
--	local radID = math.random ( 1,30 )
--	local MonsterID = 0
--	local Refresh = 0
--	local life = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 229 
--		Monster_GetID[2] = 211
--		Monster_GetID[3] = 99
--		Monster_GetID[4] = 673
--		Monster_GetID[5] = 786
--		Monster_GetID[6] = 757
--		Monster_GetID[7] = 263
--		Monster_GetID[8] = math.random ( 678 , 679 )
--                Monster_GetID[9] = math.random ( 841 , 852 )
--		Monster_GetID[10] = math.random ( 690 , 693 )
--		Monster_GetID[11] = math.random ( 706, 708 )
--		Monster_GetID[12] = 952
--		Monster_GetID[13] = 805
--		Monster_GetID[14] = 807
--		
--                local x, y = GetChaPos(role)
--		local x_move=5
--		local y_move=5
--		x=x_move+x
--		y=y_move+y
--	  if radID == 1 or  radID ==2 then
--	      MonsterID = Monster_GetID[8]        ----------5%
--	  elseif radID == 3 or  radID ==4 then
--	      MonsterID = 786                          
--	  elseif radID == 5 or  radID ==6 then                    
--	      MonsterID = 673                           
--	  elseif radID == 7 or  radID ==8 then                    
--	      MonsterID = 757      
--	  elseif radID == 9 or  radID ==10 then
--	      MonsterID = 263                           ----------10%
--          elseif radID == 11 or  radID ==12 then
--	      MonsterID = 211                           
--          elseif radID == 13 or  radID ==14 then
--	      MonsterID = 99
--	  elseif radID == 15 or  radID ==16 then
--	      MonsterID = 229
--	  elseif radID == 17 or  radID ==18 or  radID ==19 then            ----------15%
--              MonsterID = Monster_GetID[9]
--	  elseif radID == 20 or  radID ==21 then
--	      MonsterID = Monster_GetID[10]
--          elseif radID == 22 or radID ==23 or radID ==24 then
--	      MonsterID = Monster_GetID[11]
--	  elseif radID == 25 or  radID ==26 then
--	      MonsterID = Monster_GetID[12]
--	  elseif radID == 27 or  radID ==28 then
--	      MonsterID = Monster_GetID[13]
--          elseif radID == 29 or  radID ==30 then
--	      MonsterID = Monster_GetID[14]
--	  end
--	       
--	       if MonsterID == Monster_GetID[12] then 
--	          Refresh = 10900000
--	          life = 10800000
--	       else
--		  Refresh = 7300000     			        --重生时间，秒单位
--		  life = 7200000					--生命时间，毫秒单位
--	       end
--	          local new = CreateChaX( MonsterID , x , y , 145 , Refresh ,role)
--		SetChaLifeTime( new, life )
--end

--水雷LV1-----------------------------------------------------------

function ItemUse_SL1 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Can only be used on the sea." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y

	local MonsterID = 942
	local Refresh = 700000					--重生时间，秒单位
	local life = 600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--水雷LV2-----------------------------------------------------------

function ItemUse_SL2 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Can only be used on the sea." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 943
	local Refresh = 700000					--重生时间，秒单位
	local life = 600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--水雷LV3-----------------------------------------------------------

function ItemUse_SL3 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Can only be used on the sea." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 944
	local Refresh = 700000					--重生时间，秒单位
	local life = 600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--水雷LV4-----------------------------------------------------------

function ItemUse_SL4 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Can only be used on the sea." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y

	local MonsterID = 945
	local Refresh = 700000					--重生时间，秒单位
	local life = 600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--水雷LV5-----------------------------------------------------------

function ItemUse_SL5 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Can only be used on the sea." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 1200
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=1200
	       y_move=-1200
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-1000
	 elseif fx_move == 4 then
	       x_move=-1000
	       y_move=-1000
	 elseif fx_move == 5 then
	       x_move=1000
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-1000
	       y_move=1000
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=1000
	 else  x_move=1000
	       y_move=1000
	 end
	      x =x_move + x
	      y =y_move + y

	local MonsterID = 946
	local Refresh = 700000					--重生时间，秒单位
	local life = 600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )

	SetChaLifeTime( new, life )
end

--自爆绵羊LV1-----------------------------------------------------------

function ItemUse_ZBML1 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 947
	local Refresh = 700000					--重生时间，秒单位
	local life = 600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--自爆绵羊LV2-----------------------------------------------------------

function ItemUse_ZBML2 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 948
	local Refresh = 700000					--重生时间，秒单位
	local life = 600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--自爆绵羊LV3-----------------------------------------------------------

function ItemUse_ZBML3 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 949
	local Refresh = 700000					--重生时间，秒单位
	local life = 600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--自爆绵羊LV4-----------------------------------------------------------

function ItemUse_ZBML4 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 950
	local Refresh = 700000					--重生时间，秒单位
	local life = 600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--自爆绵羊LV5-----------------------------------------------------------

function ItemUse_ZBML5 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
	       x_move = 800
	       y_move = 0
	 elseif fx_move == 2 then
	       x_move=800
	       y_move=-800
	 elseif fx_move == 3 then
	       x_move=0
	       y_move=-800
	 elseif fx_move == 4 then
	       x_move=-800
	       y_move=-800
	 elseif fx_move == 5 then
	       x_move=800
	       y_move=0
	 elseif fx_move == 6 then
	       x_move=-800
	       y_move=800
	 elseif fx_move == 7 then
	       x_move=0
	       y_move=800
	 else  x_move=800
	       y_move=800
	 end
	      x =x_move + x
	      y =y_move + y
	local MonsterID = 951
	local Refresh = 700000					--重生时间，秒单位
	local life = 600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

----------------------------------情缘宝盒
function ItemUse_LoveBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 free slot to open Chest of Fate")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	local count = 0
	if cha_type == 3 or cha_type == 4 then 
	       count =1
	end
	if cha_type == 1 or cha_type == 2 then
	       count =2
	end
	local el = math.random ( 1, 35 )
	if   count == 1 then
		if el==35 then
			local r1 = 0
			local r2 = 0	
			r1,r2 =MakeItem ( role , 2902  , 1 , 4 )
			local Item_girl = GetChaItem ( role , 2 , r2 )			--取女性道具指针
			local new_el=math.random ( 1, 200 )
			SetItemAttr ( Item_girl , ITEMATTR_VAL_STR , new_el )	
		else
			local el1 = math.random ( 1, 12 )
			if el1==1  then
				GiveItem ( role , 0 , 3343  , 1 , 4 ) ---------------玫瑰花
			elseif el1==2 then
				GiveItem ( role , 0 , 3077  , 1 , 4 )------------甜蜜巧克力	
			else
				local EID = math.random ( 4264, 4273 )----------10个表情
				GiveItem ( role , 0 , EID  , 1 , 4 )
			end
		end
	end
	local el2= math.random ( 1, 7 )
	if   count == 2 then
			--SystemNotice(role ,"count=="..count)
		if el2==7 then
			local r1 = 0
			local r2 = 0	
				r1,r2 =MakeItem ( role , 2903  , 1 , 4 )
			local Item_boy = GetChaItem ( role , 2 , r2 )			--取男性道具指针
			local new_el=math.random ( 1, 1000 )
			--SystemNotice(role ,"new_el=="..new_el)
			SetItemAttr( Item_boy , ITEMATTR_VAL_STR , new_el )
		else
			local el3 = math.random ( 1, 12 )
			if el3==1  then
				GiveItem ( role , 0 , 3343  , 1 , 4 ) ---------------玫瑰花
			elseif el3==2 then
				GiveItem ( role , 0 , 3077  , 1 , 4 )------------甜蜜巧克力	
			else
				local EID = math.random ( 4264, 4273 )----------10个表情
				GiveItem ( role , 0 , EID  , 1 , 4 )
			end
		end
	end
end


------------------------礼服宝箱：双击，根据角色给予道具

function ItemUse_MarryBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"you need at least 4 free slot to open Chest of Gown")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	       GiveItem ( role , 0 , 5244  , 1 , 4 )
	       GiveItem ( role , 0 , 5245  , 1 , 4 )
	       GiveItem ( role , 0 , 5246  , 1 , 4 )
	       GiveItem ( role , 0 , 5247  , 1 , 4 )
	elseif cha_type == 4  then 
	       GiveItem ( role , 0 , 5252  , 1 , 4 )
	       GiveItem ( role , 0 , 5253  , 1 , 4 )
	       GiveItem ( role , 0 , 5254  , 1 , 4 )
	       GiveItem ( role , 0 , 5255  , 1 , 4 )
	elseif cha_type == 1 then 
	       GiveItem ( role , 0 , 5221  , 1 , 4 )
	       GiveItem ( role , 0 , 5222  , 1 , 4 )
	       GiveItem ( role , 0 , 5223  , 1 , 4 )
	elseif cha_type == 2 then 
	       GiveItem ( role , 0 , 5238  , 1 , 4 )
	       GiveItem ( role , 0 , 5239  , 1 , 4 )
	       GiveItem ( role , 0 , 5240  , 1 , 4 )
	end
end
		----------------------------------佳人动情礼盒
function ItemUse_JRDQBox( role , Item )
--	local Now_Day = os.date("%d")
--	local Now_Month = os.date("%m")
--	local Now_Time = os.date("%H")
--	local NowTimeNum = tonumber(Now_Time)
--	local NowDayNum = tonumber(Now_Day)
--	local NowMonthNum = tonumber(Now_Month)
--	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
--	
--	if CheckDateNum < 021609  then
--		SystemNotice ( role , "Please use the item between 16th Febuary 9.00am and 16th Febuary 24.00pm" )
--		UseItemFailed ( role )
--		return
--	end
--	
--	if CheckDateNum > 021700 then
--		SystemNotice ( role , "Santa Claus has left. Please wait for next year" )
--		UseItemFailed ( role )
--		return
--	end
--
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 10 then
		SystemNotice(role ,"To open Gift of the Beauty requires at least 10 empty inventory slots")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	 if cha_type ==1 or cha_type ==2 then
	 SystemNotice(role ,"Gift of the Beauty can only be opened by female")
	UseItemFailed ( role )
		return
	end 
	
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 3343  , 1 , 4 )----------玫瑰花
	elseif  el>=21 and el<=40 then
	GiveItem ( role , 0 , 3354  , 1 , 4 )
	GiveItem ( role , 0 , 3355  , 1 , 4 )
	GiveItem ( role , 0 , 3356  , 1 , 4 )
	GiveItem ( role , 0 , 3357  , 1 , 4 )
	GiveItem ( role , 0 , 3358  , 1 , 4 )
	GiveItem ( role , 0 , 3359  , 1 , 4 )----------心型礼花 
	elseif el>=41 and el<=45 then
	GiveItem ( role , 0 , 937  , 1 , 4 ) -----------天使之翼
	elseif el>=46 and el<=65 then
	GiveItem ( role , 0 , 4264  , 1 , 4 )
	GiveItem ( role , 0 , 4265  , 1 , 4 )
	GiveItem ( role , 0 , 4266  , 1 , 4 )
	GiveItem ( role , 0 , 4267  , 1 , 4 )
	GiveItem ( role , 0 , 4268  , 1 , 4 )
	GiveItem ( role , 0 , 4269  , 1 , 4 )
	GiveItem ( role , 0 , 4270  , 1 , 4 )
	GiveItem ( role , 0 , 4271  , 1 , 4 )
	GiveItem ( role , 0 , 4272  , 1 , 4 )
	GiveItem ( role , 0 , 4273  , 1 , 4 )---------------10个表情
	elseif el>=66 and el<=75 then
	GiveItem ( role , 0 , 3094  , 3 , 4 )------------努力增幅器3个
	elseif el>=76 and el<=85 then
	GiveItem ( role , 0 , 855  , 10 , 4 ) -----------精灵硬币
	elseif el>=86 and el<87 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) -----------加纳之神1个
	elseif el>=87 and el<89 and cha_type == 3  then 
	GiveItem ( role , 0 , 5244  , 1 , 4 )
	GiveItem ( role , 0 , 5245  , 1 , 4 )
	GiveItem ( role , 0 , 5246  , 1 , 4 )
	GiveItem ( role , 0 , 5247  , 1 , 4 ) -----------新娘装
	elseif el>=89 and el<=90 and cha_type == 4 then
	GiveItem ( role , 0 , 5252  , 1 , 4 )
	GiveItem ( role , 0 , 5253  , 1 , 4 )
	GiveItem ( role , 0 , 5254  , 1 , 4 )
	GiveItem ( role , 0 , 5255  , 1 , 4 ) -----------婚娘装
	else
	local EID = math.random ( 1808, 1811 )----------发型书
	GiveItem ( role , 0 , EID  , 1 , 4 )
	end
end


----------------------------------才俊动情礼盒
function ItemUse_CJDQBox( role , Item )

--	local Now_Day = os.date("%d")
--	local Now_Month = os.date("%m")
--	local Now_Time = os.date("%H")
--	local NowTimeNum = tonumber(Now_Time)
--	local NowDayNum = tonumber(Now_Day)
--	local NowMonthNum = tonumber(Now_Month)
--	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
--	
--	if CheckDateNum < 021609  then
--		SystemNotice ( role , "Please use the item between 16th Febuary 9.00am and 16th Febuary 24.00pm" )
--		UseItemFailed ( role )
--		return
--	end
--	
--	if CheckDateNum > 021700 then
--		SystemNotice ( role , "Please wait for next year" )
--		UseItemFailed ( role )
--		return
--	end
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 10 then
		SystemNotice(role ,"you need at least 10 free slot to open Gift of the Hunk")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	 if cha_type ==3 or cha_type ==4 then
		SystemNotice(role ,"Gift of the Hunk can only be opened by male characters")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 3077  , 1 , 4 )----------甜蜜巧克力
	elseif  el>=21 and el<=40 then
	GiveItem ( role , 0 , 3354  , 1 , 4 )
	GiveItem ( role , 0 , 3355  , 1 , 4 )
	GiveItem ( role , 0 , 3356  , 1 , 4 )
	GiveItem ( role , 0 , 3357  , 1 , 4 )
	GiveItem ( role , 0 , 3358  , 1 , 4 )
	GiveItem ( role , 0 , 3359  , 1 , 4 )----------心型礼花 
	elseif el>=41 and el<=45 then
	GiveItem ( role , 0 , 0936  , 1 , 4 ) -----------蝶翼
	elseif el>=46 and el<=65 then
	GiveItem ( role , 0 , 4264  , 1 , 4 )
	GiveItem ( role , 0 , 4265  , 1 , 4 )
	GiveItem ( role , 0 , 4266  , 1 , 4 )
	GiveItem ( role , 0 , 4267  , 1 , 4 )
	GiveItem ( role , 0 , 4268  , 1 , 4 )
	GiveItem ( role , 0 , 4269  , 1 , 4 )
	GiveItem ( role , 0 , 4270  , 1 , 4 )
	GiveItem ( role , 0 , 4271  , 1 , 4 )
	GiveItem ( role , 0 , 4272  , 1 , 4 )
	GiveItem ( role , 0 , 4273  , 1 , 4 )---------------10个表情
	elseif el>=66 and el<=75 then
	GiveItem ( role , 0 , 3094  , 3 , 4 )------------努力增幅器3个
	elseif el>=76 and el<=85 then
	GiveItem ( role , 0 , 855  , 10 , 4 ) -----------精灵硬币
	elseif el>=86 and el<87 then
	GiveItem ( role , 0 , 0862  , 1 , 4 ) -----------岩玉1个
	elseif el>=87 and el<89 and cha_type == 1  then 
	GiveItem ( role , 0 , 5221  , 1 , 4 )
	GiveItem ( role , 0 , 5222  , 1 , 4 )
	GiveItem ( role , 0 , 5223  , 1 , 4 ) -----------夜贵族装
	elseif el>=89 and el<=90 and cha_type == 2 then
	GiveItem ( role , 0 , 5238  , 1 , 4 )
	GiveItem ( role , 0 , 5239  , 1 , 4 )
	GiveItem ( role , 0 , 5240  , 1 , 4 )-----------黑金装
	else
	local EID = math.random ( 1808, 1811 )----------发型书
	GiveItem ( role , 0 , EID  , 1 , 4 )
	end
end
---------------------------------喜糖
function ItemUse_XTBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount						-- 终结编号
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory slots. Failed to use Wedding Candy")
		UseItemFailed ( role )
		return
	end
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
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." uses a Wedding Candy and obtained "..itemname  
			Notice ( message )
		end
	end
end

-------------------婚庆大礼盒
function ItemUse_HQBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 free slots to open Wedding Gift Parcel")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------加纳之神
	elseif el>=21 and el<=40 then
	GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------女神小包
	elseif el>=41 and el<60 then
	GiveItem ( role , 0 , 0333  , 1 , 4 ) ----------------高级宝石兑换券
	elseif el>=61 and el<=100 then
	GiveItem ( role , 0 , 0273  , 1 , 4 )-----------------一等奖	
	end
end

-----------------------------------幸运猪宝箱：岩玉、炎玉、鹰眼石、凤灵石、加纳之神、女神小包

function ItemUse_XYPIGBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 4 empty slots to open Lucky Piggy Chest")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=4 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------加纳之神
	elseif el==5  then
	GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------女神小包
	elseif el>=6 and el<=30 then
	GiveItem ( role , 0 , 0861  , 1 , 4 ) ----------------鹰眼石
	elseif el>=31 and el<=60 then
	GiveItem ( role , 0 , 885  , 1 , 4 )-----------------精炼石
	elseif el>=61 and el<=75 then
	GiveItem ( role , 0 , 0860  , 1 , 4 ) ---------------凤灵石
	elseif el>=76 and el<=88 then
	GiveItem ( role , 0 , 0862  , 1 , 4 ) ----------------岩玉
	elseif el>=89 and el<=100 then
	GiveItem ( role , 0 , 0863  , 1 , 4 )-----------------炎玉
	end
end


-----------------------------压岁包：压岁包只有在除夕夜（2月17日晚23:00--2月18日凌晨１点）打开才会有效
----------------------------------------------------------------------------------压岁包
function ItemUse_YSB( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 empty slots to open Auspicious Bag")
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 21723  and CheckDateNum <= 21801 then
		ItemUse_YSBOX ( role , Item )
	else 
		SystemNotice(role ,"It is not time yet. Do not try to cheat!")
		UseItemFailed ( role )
		return
	end
end
function ItemUse_YSBOX ( role , Item )
	local el = math.random ( 1, 1000 )
	if  el>=1 and el<=5 then
		GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------加纳之神        0.5
	elseif el>=6 and el<=10 then
		GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------女神小包       0.5
	elseif el>=11 and el<=20 then
		GiveItem ( role , 0 , 0860  , 1 , 4 ) ---------------风灵         1
	elseif el>=21 and el<=30 then
		GiveItem ( role , 0 , 0861  , 1 , 4 ) ----------------鹰眼石     1
	elseif el>=31 and el<40 then
		GiveItem ( role , 0 , 0862  , 1 , 4 ) ----------------岩玉       1
	elseif el>=41 and el<=50 then
		GiveItem ( role , 0 , 0863  , 1 , 4 )-----------------炎玉       1
	elseif el>=51 and el<=270 then
		GiveItem ( role , 0 , 855  , 99 , 4 )-----------------精灵硬币       22
	elseif el>=271 and el<=500 then
		GiveItem ( role , 0 , 0227  , 5 , 4 )-----------------守护精灵饲料    23
	elseif el>=501 and el<=750 then
		GiveItem ( role , 0 , 3096  , 3 , 4 )-----------------财富增幅器3个   25
	elseif el>=751 and el<=1000 then
		GiveItem ( role , 0 , 3094  , 3 , 4 )-----------------努力增幅器3个   25
	end
end
function ItemUse_Hadisi( role , Item )		----------哈迪斯遗物
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"You need at least 4 empty slots to open Chest of Hardin")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2817  , 1 , 4 )
	GiveItem ( role , 0 , 2818  , 1 , 4 )
	GiveItem ( role , 0 , 2819  , 1 , 4 )
	GiveItem ( role , 0 , 2835  , 1 , 4 )
end
function ItemUse_Anhei( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"You need at least 4 empty slots to open Chest of Darkness")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2820  , 1 , 4 )
	GiveItem ( role , 0 , 2821  , 1 , 4 )
	GiveItem ( role , 0 , 2822  , 1 , 4 )
	GiveItem ( role , 0 , 2835  , 1 , 4 )
end
function ItemUse_Diyu( role , Item )		----------地狱包袱
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"To open a Chest of Abaddon requires at least 4 empty inventory slots")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2823  , 1 , 4 )
	GiveItem ( role , 0 , 2824  , 1 , 4 )
	GiveItem ( role , 0 , 2825  , 1 , 4 )
	GiveItem ( role , 0 , 2835  , 1 , 4 )
end
function ItemUse_Xiuluo( role , Item )		----------修罗箱子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"You need at least 4 free slots to open Chest of Asura")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2826  , 1 , 4 )
	GiveItem ( role , 0 , 2827  , 1 , 4 )
	GiveItem ( role , 0 , 2828  , 1 , 4 )
GiveItem ( role , 0 , 2835  , 1 , 4 )
end
function ItemUse_Youming( role , Item )	----------幽冥宝藏
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"You need at least 4 empty slots to open Chest of Abyss")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2829  , 1 , 4 )
	GiveItem ( role , 0 , 2830  , 1 , 4 )
	GiveItem ( role , 0 , 2831  , 1 , 4 )
	GiveItem ( role , 0 , 2835  , 1 , 4 )
end
function ItemUse_Minghe( role , Item )		----------冥河小包
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"You need at least 4 empty inventory slots to open Chest of Styx")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2832  , 1 , 4 )
	GiveItem ( role , 0 , 2833  , 1 , 4 )
	GiveItem ( role , 0 , 2834  , 1 , 4 )
	GiveItem ( role , 0 , 2835  , 1 , 4 )
end

function ItemUse_Sishen( role , Item )		----------死神藏尸处
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"To open the Carcass of Death requires at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	local star_rad=math.random ( 1, 2 )
	if lv < 40 then
		SystemNotice(role ,"Currently lower than Lv 40. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 9 then 
		if star_rad==1 then
			GiveItem ( role , 0 , 2331  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2332  , 1 , 4 ) 
		end
	elseif job == 8 then   
		if star_rad==1 then
			GiveItem ( role , 0 , 2333  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2334  , 1 , 4 ) 
		end
	elseif job == 12 then 
		local eleven_rad=math.random ( 1, 4 )
		if eleven_rad==1 then
			GiveItem ( role , 0 , 2337  , 1 , 4 ) 
		elseif eleven_rad==2 then
			GiveItem ( role , 0 , 2338  , 1 , 4 ) 
		elseif eleven_rad==3 then
			GiveItem ( role , 0 , 2339  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2340  , 1 , 4 ) 
		end
	elseif job == 16 then 
		if star_rad==1 then
			GiveItem ( role , 0 , 2335  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2336  , 1 , 4 ) 
		end
	elseif job == 13 then    
		if star_rad==1 then
			GiveItem ( role , 0 , 2341  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2342  , 1 , 4 ) 
		end
	elseif job == 14 then    
		if star_rad==1 then
			GiveItem ( role , 0 , 2343  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2344  , 1 , 4 ) 
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after second class advancement!")
		UseItemFailed ( role )	
	end
end
function ItemUse_Zhenheilong( role , Item )	----------真黑龙宝箱
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"You need at least 4 empty slots to open Rightful Chest of Black Dragon")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2367  , 1 , 16 ) 
	GiveItem ( role , 0 , 2368  , 1 , 16 ) 
	GiveItem ( role , 0 , 2369  , 1 , 16 )
        local cha_type = GetChaTypeID ( role )
	if cha_type == 4 then 
		GiveItem ( role , 0 , 2370  , 1 , 16 )		
	end
end
--地狱四层机票
function Jz_Script_4thDy(role, Item )
	local i = CheckBagItem(role,2844)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2844,1)
			if j == 1 then
				MoveCity(role,"Abaddon 1")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--死神的行囊A
function ItemUse_DathBagA(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"you need at least 1 free slot to open Death's Burden")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2846  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2928  , 1 , 16 ) 
	end
end
--死神的行囊B
function ItemUse_DathBagB(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"you need at least 1 free slot to open Death's Burden")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2847  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2929  , 1 , 16 ) 
	end
end
--死神的行囊C
function ItemUse_DathBagC(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"you need at least 1 free slot to open Death's Burden")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2848  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2927  , 1 , 16 ) 
	end
end
--死神的行囊D
function ItemUse_DathBagD(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"you need at least 1 free slot to open Death's Burden")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2849  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2927  , 1 , 16 ) 
	end
end
--死神的行囊E
function ItemUse_DathBagE(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"you need at least 1 free slot to open Death's Burden")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2850  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2929  , 1 , 16 ) 
	end
end
--死神的行囊F
function ItemUse_DathBagF(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"you need at least 1 free slot to open Death's Burden")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2851  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2931  , 1 , 16 ) 
	end
end
--死神的行囊G
function ItemUse_DathBagG(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"you need at least 1 free slot to open Death's Burden")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2852  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2932  , 1 , 16 ) 
	end
end
--死神的行囊H
function ItemUse_DathBagH(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"you need at least 1 free slot to open Death's Burden")
		UseItemFailed ( role )
		return
	end
	local star_rad=math.random ( 1, 4 )
	if star_rad==4 then
		GiveItem ( role , 0 , 2930  , 1 , 16 ) 
	else
		GiveItem ( role , 0 , 2930  , 1 , 16 ) 
	end
end
----转生卡
function ItemUse_ZSCard(role, Item )
	local i = CheckBagItem(role,2941)
	local k = ChaIsBoat(role)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"To use a Rebirth Card requires at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2941,1)
			if j == 1 then
				SystemNotice(role, "Use of Rebirth Card successful, you can now speak with the Reibrth angel to directly rebirth.")
				GiveItem ( role , 0 , 2235 , 1 , 42)
				GoTo( role,  1750 , 909 , "jialebi")
				return
			end
		end
	else
		UseItemsFailed ( role )
	end
		
end
-----------海军海盗守护神召唤券--------------------
function ItemUse_SummonBigBOSS(role, Item )
local map_name_role = GetChaMapName ( role )
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
	      reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	end
   if  map_name_role == "guildwar" then
	local x,y = GetChaPos(role)
	if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
	local MonsterID = 1007
	local Refresh = 1300					--重生时间，秒单位
	local life = 1200000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,1)
	end

	if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	local MonsterID = 1008
	local Refresh = 1300					--重生时间，秒单位
	local life = 1200000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,2)
	end
   elseif map_name_role == "guildwar2" then 

    local x,y = GetChaPos(role)
	if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
	local MonsterID = 1007
	local Refresh = 1300					--重生时间，秒单位
	local life = 12600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,1)
	end

	if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	local MonsterID = 1008
	local Refresh = 1300					--重生时间，秒单位
	local life = 1200000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,2)
	end
    else 
        SystemNotice( role , "This ticket can only be used in Sacred War map" )
        UseItemFailed ( role )
        return
    end

end


----------------------雕像机票---------------------
function ItemUse_moveDX(role, Item)
local i = CheckBagItem(role,2986)
--local k = ChaIsBoat(role)
 local Cha_Boat = 0
       Cha_Boat = GetCtrlBoat ( role )
	 if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	 end
	 local reg = 0
	      reg =IsChaInRegion( role, 2 )
	 if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
                return
	 end


 if GetChaGuildID(role) == 0 then
    SystemNotice( role , "You do not have a guild. Unable to use the pass" )
    UseItemFailed ( role )
    return
 end

local map_name_role = GetChaMapName ( role )
if map_name_role =="guildwar" then
	 if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 and map_name_role =="guildwar" then
			if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  305, 87,  "guildwar" )
					return
				end
			end
								 

	 elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 and map_name_role =="guildwar" then
			 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  309, 539,  "guildwar" )
					return
				end
			end
	 
	 else
			UseItemFailed ( role )
			    
	 end

elseif map_name_role =="guildwar2" then

	 if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 and map_name_role =="guildwar2"  then
		       if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  305, 87,  "guildwar2" )
					return
				end
			end
			
	 elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 and map_name_role =="guildwar2"  then
			 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					 MoveTo( role,  309, 539,  "guildwar2" )
					return
				end
			end
	 
	 else
			UseItemFailed ( role )
		
   
         end

else
        SystemNotice( role , "This ticket can only be used in Sacred War map" )
        UseItemFailed ( role )
        return
   end        
end


------------------------白羊船长宝箱：双击，根据角色给予道具

function ItemUse_CZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Aries Apparel Chest requires at least 4 empty inventory slots")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	     
	       GiveItem ( role , 0 , 5349  , 1 , 4 )
	       GiveItem ( role , 0 , 5350  , 1 , 4 )
	       GiveItem ( role , 0 , 5351  , 1 , 4 )
	elseif cha_type == 4  then 
	       GiveItem ( role , 0 , 5352  , 1 , 4 )
	       GiveItem ( role , 0 , 5353  , 1 , 4 )
	       GiveItem ( role , 0 , 5354  , 1 , 4 )
	       GiveItem ( role , 0 , 5355  , 1 , 4 )
	elseif cha_type == 1 then 
	      
	       GiveItem ( role , 0 , 5341  , 1 , 4 )
	       GiveItem ( role , 0 , 5342  , 1 , 4 )
	       GiveItem ( role , 0 , 5343  , 1 , 4 )
	elseif cha_type == 2 then 
	       
	       GiveItem ( role , 0 , 5345  , 1 , 4 )
	       GiveItem ( role , 0 , 5346  , 1 , 4 )
	       GiveItem ( role , 0 , 5347  , 1 , 4 )
	end
end


------------------------愚人节礼物----------2953----------itemeffect
function ItemUse_Foolish ( role , Item )
	local charLv=Lv ( role )
	local Cha_Boat = 0
		Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Exp_el=GetChaAttr (  role , ATTR_CEXP )----------当前等级经验
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.03+Exp_el ----------------
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )-------------
		--SystemNotice( role , "Use April's Fool Gift to obtain 3 percent experience points" )--------------
end
---------------------------召唤白羊守护者
function ItemUse_BYSHJZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1009
	local Refresh = 3700					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--------双剑士转职技能书
function Sk_Script_Wyz ( role , Item ) 											
	local sk_add = SK_WYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------巨剑士转职技能书
function Sk_Script_Bsj ( role , Item ) 											
	local sk_add = SK_BSJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------封印师转职技能书
function Sk_Script_Emzz ( role , Item ) 											
	local sk_add = SK_EMZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--------圣职者转职技能书
function Sk_Script_Sssp ( role , Item ) 											
	local sk_add = SK_SSSP 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------航海士转职技能书
function Sk_Script_Cyn ( role , Item ) 											
	local sk_add = SK_CYN 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--------狙击手转职技能书
function Sk_Script_Hlp ( role , Item ) 											
	local sk_add = SK_HLP 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-------------------------品牌蛋糕
function ItemUse_NiceCake (role, Item )

	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "You do not have Mark of Honor")
		UseItemFailed ( role )
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
	local el_fame = GetChaAttr(role, ATTR_FAME)
	
		if HonorPoint < 27000 and el_fame < 99990001 then
		local HonorPoint_X=HonorPoint+3000
		SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
		
		local fame_resume = 9999
		el_fame = el_fame + fame_resume
		SetCharaAttr(el_fame, role, ATTR_FAME) 

		else 
		SystemNotice( role , "Your Honor or Reputation points are too high. This cake can no longer satisfied you")
		UseItemFailed ( role )
		end
end

-------------------QQ宝箱
--function ItemUse_QQBOX( role , Item )
	
	--local cha_name = GetChaDefaultName ( role )
	--local cha_num = GetActName(role)	
	--local lv = GetChaAttr(role, ATTR_LV)
	--local Item_CanGet = GetChaFreeBagGridNum ( role )
	--if lv < 40 then
		--SystemNotice( role ,"Currently lower than Lv 40. Unable to use item!")
		--UseItemFailed ( role )	
	--return
	--end
	
	--local BorG = 0 
	--local cha_type = GetChaTypeID ( role ) 
	--if cha_type == 1  or cha_type == 2 then 
		--BorG=1
	--elseif cha_type == 3  or cha_type == 4 then
		--BorG=2
	--end
	
	--LG( "QQ" , "Player"..cha_name.."Open QQ Chest", "yes"..BorG.."character","Account is"..cha_num)
--end

----------------------------------------------嘉宾宝箱
--function ItemUse_JBBOX( role , Item )
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
--	if Item_CanGet <1 then
--		SystemNotice(role ,"To open a Chest requires 1 empty slot")
--		UseItemFailed ( role )
--		return
--	end
--	local r1,r2 =MakeItem ( role , 3078  , 1 , 4 )-------请柬
--	local Item_el = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针
--
--	local item_old = GetChaItem2 ( role , 2 , 3066 )---------教堂使用证书
--
--	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
--	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
--	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------时   
--	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------分   
--	
--	--SystemNotice ( role , "old_month=="..old_month )
--	--SystemNotice ( role , "old_day=="..old_day )       
--	--SystemNotice ( role , "old_hour=="..old_hour )    
--	--SystemNotice ( role , "old_miniute=="..old_miniute)
--
--	SetItemAttr(Item_el, ITEMATTR_VAL_STA, old_month )	-------------月 	
--	SetItemAttr(Item_el, ITEMATTR_VAL_STR, old_day )		-------------日  
--	SetItemAttr(Item_el, ITEMATTR_VAL_CON, old_hour )		-------------时 
--	SetItemAttr(Item_el, ITEMATTR_VAL_DEX, old_miniute )	-------------分
--
--	local old_month2 = GetItemAttr(Item_el, ITEMATTR_VAL_STA)		-------------月 	
--	local old_day2 = GetItemAttr(Item_el, ITEMATTR_VAL_STR)			-------------日  
--	local old_hour2 = GetItemAttr(Item_el, ITEMATTR_VAL_CON)			-------------时   
--	local old_miniute2 = GetItemAttr(Item_el, ITEMATTR_VAL_DEX)		-------------分 
--
--	--SystemNotice ( role , "old_month2=="..old_month2 )
--	--SystemNotice ( role , "old_day2=="..old_day2 )       
--	--SystemNotice ( role , "old_hour2=="..old_hour2 )    
--	--SystemNotice ( role , "old_miniute2=="..old_miniute2)
--
--	SynChaKitbag(role,13)
--
--end
--
--
--------------------浪漫烟花
--function ItemUse_LMYH ( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "Cannot use while sailing" )
--		UseItemFailed ( role )
--		return
--	end
--end
--
--------------------巨响烟花
--function ItemUse_JXYH ( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "Cannot use while sailing" )
--		UseItemFailed ( role )
--		return
--	end
--end
--
--------------------豪华烟花
--function ItemUse_HHLH ( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "Cannot use while sailing" )
--		UseItemFailed ( role )
--		return
--	end
--end
--
---------教堂使用证书
--function Jz_Script_jtsyzs (role, Item )
--	--SystemNotice ( role , "Invitation Invitation Invitation" )
--	local Now_Day = os.date("%d")
--	local Now_Month = os.date("%m")
--	local Now_Time = os.date("%H")
--	--SystemNotice ( role , "Wahaha" )
--	local NowMniuteNum= os.date("%M")	-------------分
--	local NowMiniuteNum= tonumber(Now_Miniute)	 	-------------分
--	local NowTimeNum = tonumber(Now_Time)
--	--SystemNotice ( role , "huhuhuhu" )
--	local NowDayNum = tonumber(Now_Day)
--	--SystemNotice ( role , "hehehehe" )
--	local NowMonthNum = tonumber(Now_Month)
--	--SystemNotice ( role , "kekekeke" )
--	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
--	--SystemNotice ( role , "timing is now"..CheckDateNum)
--	--local old_type = GetItemAttr(item_old, ITEMATTR_MAXENERGY)	----------------法式教堂
--
--	local item_old = GetChaItem2 ( role , 2 , 3078 )---------请柬
--	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
--	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
--	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------时 
--	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
--	 
--
--	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
--	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
--	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
--	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
--	
--	if CheckDateNum < CheckBook1Num then
--		SystemNotice ( role , "Please be patient, Church is not opened yet. Please come back according to the time listed" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "Mother")
--	if CheckDateNum > CheckBook2Num then
--		SystemNotice ( role , "The wedding you want to visit is already finished, too bad" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "Father")
--
--	local i = CheckBagItem(role,3066)----教堂使用证书
--	local k = ChaIsBoat(role)
--	local hp = Hp(role)
--	local mxhp = Mxhp(role)
--	local sp = Sp(role)
--	local mxsp = Mxsp(role)
--	if sp < mxsp or hp < mxhp then 
--		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
--		UseItemFailed ( role )
--		return
--	end 
--	if k == 0 then
--		if i > 0 then
--			local j = DelBagItem(role,3066,1)-------教堂使用证书
--			--if j == 1 and old_type=1 then
--				--MoveCity(role,"French Wedding Hall")
--			--elseif	j == 1 and old_type=2 then
--				--MoveCity(role,"Chinese style church")
--			if j == 1 then-------------elseif	j == 1 and old_type=3 then
--				MoveCity(role,"Church")
--				--SystemNotice ( role , "Grandfather")
--			--elseif	j == 1 and old_type=4 then
--				--MoveCity(role,"Ground type Church")
--			end
--		end
--	else
--		UseItemFailed ( role )
--	end
--	--SystemNotice ( role , "Granny")	
--end
--
--
--------------请柬
--function Jz_Script_qj (role, Item )
--	--SystemNotice ( role , "Invitation Invitation Invitation" )
--	local Now_Day = os.date("%d")
--	local Now_Month = os.date("%m")
--	local Now_Time = os.date("%H")
--	--SystemNotice ( role , "Wahaha" )
--	local NowMniuteNum= os.date("%M")	-------------分
--	local NowMiniuteNum= tonumber(Now_Miniute)	 	-------------分
--	local NowTimeNum = tonumber(Now_Time)
--	--SystemNotice ( role , "huhuhuhu" )
--	local NowDayNum = tonumber(Now_Day)
--	--SystemNotice ( role , "hehehehe" )
--	local NowMonthNum = tonumber(Now_Month)
--	--SystemNotice ( role , "kekekeke" )
--	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
--	--SystemNotice ( role , "timing is now"..CheckDateNum)
--	--local old_type = GetItemAttr(item_old, ITEMATTR_MAXENERGY)	----------------法式教堂
--
--	local item_old = GetChaItem2 ( role , 2 , 3078 )-----请柬
--	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
--	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
--	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------时 
--	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
--	 
--
--	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
--	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
--	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
--	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
--	
--	if CheckDateNum < CheckBook1Num then
--		SystemNotice ( role , "Please be patient, Church is not opened yet. Please come back according to the time listed" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "Mother")
--	if CheckDateNum > CheckBook2Num then
--		SystemNotice ( role , "The wedding you want to visit is already finished, too bad" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "Father")
--
--	local i = CheckBagItem(role,3078)
--	local k = ChaIsBoat(role)
--	local hp = Hp(role)
--	local mxhp = Mxhp(role)
--	local sp = Sp(role)
--	local mxsp = Mxsp(role)
--	if sp < mxsp or hp < mxhp then 
--		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
--		UseItemFailed ( role )
--		return
--	end 
--	if k == 0 then
--		if i > 0 then
--			local j = DelBagItem(role,3078,1)
--			--if j == 1 and old_type=1 then
--				--MoveCity(role,"French Wedding Hall")
--			--elseif	j == 1 and old_type=2 then
--				--MoveCity(role,"Chinese style church")
--			if j == 1 then-------------elseif	j == 1 and old_type=3 then
--				MoveCity(role,"Church")
--				--SystemNotice ( role , "Grandfather")
--			--elseif	j == 1 and old_type=4 then
--				--MoveCity(role,"Ground type Church")
--			end
--		end
--	else
--		UseItemFailed ( role )
--	end
--	--SystemNotice ( role , "Granny")	
--end
-----------------------------召唤婚礼淘气鬼
--function ItemUse_FLOWER ( role , Item  )
--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "Cannot use while sailing" )
--		UseItemFailed ( role )
--		return
--	end
--
--	local el = 0
--	el =IsChaInRegion( role, 2 )
--	if el == 1 then
--		SystemNotice( role , "Unable to summon monster in Safe Zone" )
--		UseItemFailed ( role )
--		return
--	end
--	local x, y = GetChaPos(role)
--	local MonsterID = 1037
--	local Refresh = 7300					--重生时间，秒单位
--	local life = 7200000					--生命时间，毫秒单位
--	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
--	SetChaLifeTime( new, life )
--end
--
--
-----------------------------气球游戏券
--function ItemUse_QQ ( role , Item  )
--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "Cannot use while sailing" )
--		UseItemFailed ( role )
--		return
--	end
--
--	local el = 0
--	el =IsChaInRegion( role, 2 )
--	if el == 1 then
--		SystemNotice( role , "Unable to summon monster in Safe Zone" )
--		UseItemFailed ( role )
--		return
--	end
--	local x, y = GetChaPos(role)
--	local MonsterID = 1036
--	local Refresh = 60					--重生时间，秒单位
--	local life = 7200000					--生命时间，毫秒单位
--	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
--	SetChaLifeTime( new, life )
--end
----伊式教堂参观门票
function Jz_Script_yszs (role, Item )
	
	local i = CheckBagItem(role,3024)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3024,1)
			if j == 1 then
				MoveCity(role,"Church")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
-------------------------------红包：红包只有在（每周六\日晚18:00--22：10）打开才会有效
--
--function ItemUse_RedBox( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "Cannot use while sailing" )
--		UseItemFailed ( role )
--		return
--	end
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
--	 if Item_CanGet < 1 then
--		SystemNotice(role ,"You need at least 1 empty slots to open Auspicious Bag")
--		UseItemFailed ( role )
--		return
--	end
--	local now_week= os.date("%w")		-------------星期几（十进制） 
--	local now_hour= os.date("%H")		-------------时 
--	local now_miniute= os.date("%M")	-------------分
--	now_week= tonumber(now_week)
--	now_hour= tonumber(now_hour)		
--	now_miniute= tonumber(now_miniute)
--	local CheckDateNum = now_hour*100 +now_miniute
--	--Notice("CheckDateNum = "..CheckDateNum)
--      if now_week==6 or now_week==0 then
--		
--		if 1800<=CheckDateNum and  CheckDateNum<=2210 then
--		--SystemNotice( role , "Use YSBOX" )
--		ItemUse_YSBOX ( role , Item )
--		else 
--		SystemNotice(role ,"It is not time yet. Do not try to cheat!")
--		UseItemFailed ( role )
--		return
--		end
--	end
--end

------------------------升级推进器
function ItemUse_TJQ ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >70 then
		SystemNotice ( role , "Characters above Level 70 cannot use Leveling Generator" )
		UseItemFailed ( role )
		return	
	end
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv > statelv then
		SystemNotice ( role , "already using a higher grade leveling item, please wait a while to use" )
		UseItemFailed ( role )
		return
	end
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

------------------------金牛船长宝箱：双击，根据角色给予道具

function ItemUse_JNCZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 4 space to use the Taurus Apparel Chest")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	     
	       GiveItem ( role , 0 , 5364  , 1 , 4 )
	       GiveItem ( role , 0 , 5365  , 1 , 4 )
	       GiveItem ( role , 0 , 5366  , 1 , 4 )
	       GiveItem ( role , 0 , 5367  , 1 , 4 )
	elseif cha_type == 4  then 

	       GiveItem ( role , 0 , 5368  , 1 , 4 )
	       GiveItem ( role , 0 , 5369  , 1 , 4 )
	       GiveItem ( role , 0 , 5370  , 1 , 4 )
	       GiveItem ( role , 0 , 5371  , 1 , 4 )
	elseif cha_type == 1 then 
	      
	       GiveItem ( role , 0 , 5356  , 1 , 4 )
	       GiveItem ( role , 0 , 5357  , 1 , 4 )
	       GiveItem ( role , 0 , 5358  , 1 , 4 )
	       GiveItem ( role , 0 , 5359  , 1 , 4 )
	elseif cha_type == 2 then 

	       GiveItem ( role , 0 , 5360  , 1 , 4 )
	       GiveItem ( role , 0 , 5361  , 1 , 4 )
	       GiveItem ( role , 0 , 5362  , 1 , 4 )
	       GiveItem ( role , 0 , 5363  , 1 , 4 )
	end
end


---------------------------召唤金牛守护者
function ItemUse_JNSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1038
	local Refresh = 10900					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--糯米粽
function ItemUse_NMZ ( role , Item )
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
  	--local hp = GetChaAttr(role, ATTR_HP) 
	--local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	--hp = hp + 0.35*mxhp 

	--if hp > mxhp then 
		--hp = mxhp 
	--end 
	--SetCharaAttr(hp, role, ATTR_HP)

end


------------------------------豆沙粽：行走速度在15分钟内有较大提升效果
function ItemUse_DSZ ( role , Item )
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
	--local statelv = 1
	--local statetime = 900
	--local Cha_Boat = 0
	--Cha_Boat = GetCtrlBoat ( role )
	--if Cha_Boat ==  nil then
		--Rem_State_StarUnnormal ( role )----------
		--AddState( role , role , STATE_DSZ , statelv , statetime )
	--else
		--SystemNotice( role , "Cannot use while sailing" )
		--UseItemFailed ( role )
		--return
	--end
end

-------------------------------蛋黄粽: 防御力在10分钟内提升60点
function ItemUse_DHZ ( role , Item )
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
	--local statelv = 1
	--local statetime = 600
	--local Cha_Boat = 0
	--Cha_Boat = GetCtrlBoat ( role )

	--if Cha_Boat ==  nil then
		--AddState( role , role , STATE_DHZ , statelv , statetime )
	--else
		--SystemNotice( role , "Cannot use while sailing" )
		--UseItemFailed ( role )
		--return
	--end
end
----------------------------温情粽子
function ItemUse_WQZZ ( role , Item )
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
	--local el_exp = GetChaAttr(role, ATTR_CEXP)
	--local exp1=el_exp
	--local charLv=Lv ( role )
	--local exp_resume = 50
	--local	exp_resume_1= 1
	--el_exp = el_exp + exp_resume
	-- if charLv>=80 then	
		--el_exp = exp1 + exp_resume_1
	--end
	--SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 

---------------------------召唤黑龙幻体
function ItemUse_HLHT ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 952---------黑龙幻影
	local Refresh = 9000					--重生时间，秒单位
	local life =9000000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------召唤蜥蜴战士统领
function ItemUse_XYZSTL ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 786---------蜥蜴战士统领
	local Refresh = 9000					--重生时间，秒单位
	local life = 9000000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------召唤邪恶的土著酋长
function ItemUse_XETZQZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 788---------邪恶的土著酋长
	local Refresh = 9000					--重生时间，秒单位
	local life = 9000000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------召唤海盗船长零零发
function ItemUse_HDCZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 757---------海盗船长零零发
	local Refresh = 9000					--重生时间，秒单位
	local life = 9000000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------召唤狐妖
function ItemUse_HY ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 761---------狐妖
	local Refresh = 9000					--重生时间，秒单位
	local life = 9000000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
----------幸运字母卡宝箱
function ItemUse_XingYunBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local el=math.random ( 1, 241920 )
	if el==1 then
		GiveItem ( role , 0 , 0961, 1 , 4  ) -------------c	
	elseif el==2 then
		GiveItem ( role , 0 , 0969, 1 , 4  ) -----------k		
	elseif el>=3 and el<=4 then
		GiveItem ( role , 0 , 0973, 1 , 4  )	-------------p	
	elseif el>=5 and el<=6 then
		GiveItem ( role , 0 , 0980, 1 , 4  )	-------------v
	elseif el>=7 and el<=8 then
		GiveItem ( role , 0 , 0979, 1 , 4  )	-------------u
	else
		local el=math.random ( 0959, 0984 )
		if el==0961 or el==0969 or el==0973 or el==0980 or el==0979 then
			GiveItem ( role , 0 , 0959  , 1 , 4  ) 
		else 
			GiveItem ( role , 0 , el , 1 , 4  ) 			
		end
	end
end

------------------------超级助推器
function ItemUse_CJZTQ ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >49 then
		SystemNotice ( role , "Characters above 49 cannot use Super booster" )
		UseItemFailed ( role )
		return	
	end
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv > statelv then
		SystemNotice ( role , "already using a higher grade leveling item, please wait a while to use" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

----------世纪辉煌彩票
function ItemUse_SJHHCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 1115  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 1117  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 1118  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 1116  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end


----------至尊年兽彩票
function ItemUse_ZZNSCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 2552  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 2550  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 2551  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 2549  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end

----------真·黑龙彩票
function ItemUse_ZHLCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 2370  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 2368  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 2369  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 2367  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end




----------惊世转生彩票------rock要的
function ItemUse_JSZSCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000 )

	if  star==1 then
		GiveItem ( role , 0 , 2941, 1 , 4  ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = "Player"..cha_name.."人品爆发,打开惊世转生彩票惊喜地获得1张转生卡." 
		Notice ( message )
	elseif star>1 and star<=10 then
		GiveItem ( role , 0 , 3016, 1 , 4  ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = "Player"..cha_name.."人品爆发,打开惊世转生彩票惊喜地获得1张黑龙幻体召唤卷." 
		Notice ( message )
	elseif star>=11 and star<190 then
		GiveItem ( role , 0 , 0992, 1 , 4  ) 
	elseif star>=190 and star<=1000 then
		GiveItem ( role , 0 , 3885, 1 , 4  ) 
	end
end
-------------------祝福宝珠
function ItemUse_ZFBZ( role , Item )
	local statelv = 1
	local statetime = 15
	AddState( role , role , STATE_CZZX , statelv , statetime )
end
------------------------成长快餐
function ItemUse_CZKC ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------当前等级经验
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.01+Exp_star
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	if charLv<86 then
		SystemNotice( role , "86级以下角色不能使用" )
		UseItemFailed ( role )
		return
	end
	if charLv>=86 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )
        end
end
------------------------双子船长宝箱：双击，根据角色给予道具

function ItemUse_SZCZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"使用双子酷装宝箱最少需要4个空位")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	     
	       GiveItem ( role , 0 , 5380  , 1 , 4 )
	       GiveItem ( role , 0 , 5381  , 1 , 4 )
	       GiveItem ( role , 0 , 5382  , 1 , 4 )
	       GiveItem ( role , 0 , 5383  , 1 , 4 )
	elseif cha_type == 4  then 

	       GiveItem ( role , 0 , 5384  , 1 , 4 )
	       GiveItem ( role , 0 , 5385  , 1 , 4 )
	       GiveItem ( role , 0 , 5386  , 1 , 4 )
	       GiveItem ( role , 0 , 5387  , 1 , 4 )
	elseif cha_type == 1 then 
	      
	       GiveItem ( role , 0 , 5372  , 1 , 4 )
	       GiveItem ( role , 0 , 5373  , 1 , 4 )
	       GiveItem ( role , 0 , 5374  , 1 , 4 )
	       GiveItem ( role , 0 , 5375  , 1 , 4 )
	elseif cha_type == 2 then 

	       GiveItem ( role , 0 , 5376  , 1 , 4 )
	       GiveItem ( role , 0 , 5377  , 1 , 4 )
	       GiveItem ( role , 0 , 5378  , 1 , 4 )
	       GiveItem ( role , 0 , 5379  , 1 , 4 )
	end
end



---------------------------召唤双子守护者
function ItemUse_SZSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1039
	local Refresh = 10900					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end


----------毕业证书使用
function ItemUse_byzm ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 100 )
	SystemNotice(role ,"star=="..star)
	if star<=5 then
		GiveItem ( role , 0 , 1028  , 1 , 4  )
		local message = cha_name.."打开毕业证书惊喜地获得 1颗摩力符石" 
		Notice ( message )
	elseif star>=6 and star<=20 then
		GiveItem ( role , 0 , 885, 1 , 4  ) 
		local message1 = cha_name.."打开毕业证书惊喜地获得 1颗精炼石" 
		Notice ( message1 )
	elseif star>=21 and star<=50 then
		GiveItem ( role , 0 , 3039, 5 , 4  ) 
		local message2 = cha_name.."打开毕业证书惊喜地获得 5个升级推进器" 
		Notice ( message2 )
	else
		GiveItem ( role , 0 , 227, 10 , 4  )
		local message3 = cha_name.."打开毕业证书惊喜地获得 10个守护精灵饲料" 
		Notice ( message3 )
	end
end
------------------------开学大礼包：双击，根据角色给予道具

function ItemUse_kxdlb ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"使用开学大礼包最少需要4个空位")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	       GiveItem ( role , 0 , 5396  , 1 , 4 )
	       GiveItem ( role , 0 , 5397  , 1 , 4 )
	       GiveItem ( role , 0 , 5398  , 1 , 4 )
	       GiveItem ( role , 0 , 5399  , 1 , 4 )
	elseif cha_type == 4  then 
	       GiveItem ( role , 0 , 5400  , 1 , 4 )
	       GiveItem ( role , 0 , 5401  , 1 , 4 )
	       GiveItem ( role , 0 , 5402  , 1 , 4 )
	       GiveItem ( role , 0 , 5403  , 1 , 4 )
	elseif cha_type == 1 then 
	       GiveItem ( role , 0 , 5388  , 1 , 4 )
	       GiveItem ( role , 0 , 5389  , 1 , 4 )
	       GiveItem ( role , 0 , 5390  , 1 , 4 )
	       GiveItem ( role , 0 , 5391  , 1 , 4 )
	elseif cha_type == 2 then 
	       GiveItem ( role , 0 , 5392  , 1 , 4 )
	       GiveItem ( role , 0 , 5393  , 1 , 4 )
	       GiveItem ( role , 0 , 5394  , 1 , 4 )
	       GiveItem ( role , 0 , 5395  , 1 , 4 )
	end
end


-------------------------------胜利宝箱
function ItemUse_SLBox ( role , Item )
	local a = math.random ( 1 , 100 )
	local Item_ID = 0
	if a >= 1 and a <= 50 then
		Item_ID = 1012
	elseif a > 50 and a <= 80 then
		Item_ID = 271
	else
		Item_ID = 885
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"使用胜利宝箱最少需要1个空位")
		UseItemFailed ( role )
		return
	else
		GiveItem ( role , 0 , Item_ID , 1 , 4 )
	end
end

--------------------------------65BOSS装备箱
function ItemUse_65BBBox ( role , Item )
	local job = GetChaAttr( role, ATTR_JOB) --取职业
        local cha_type = GetChaTypeID ( role )
	if job == 0 then
		SystemNotice ( role , "只有一转以上的角色才可以使用本宝箱")
		UseItemFailed ( role )
		return
	else
		if job == 12 or job == 2 then		--猎人或狙击
			GiveItem( role , 0 , 780  , 1 , 4 )
		elseif job == 9	then			--双剑
			GiveItem( role , 0 , 769  , 1 , 4 )
		elseif job == 16 or job == 4 then	--冒险或航海
			GiveItem( role , 0 , 806  , 1 , 4 )
		elseif job == 8	then			--巨剑
			GiveItem( role , 0 , 766  , 1 , 4 )
		elseif job == 13 or job == 5 then	--圣职或药师
			GiveItem( role , 0 ,792  , 1 , 4 )
		elseif job == 14 then			--封印
			GiveItem( role , 0 , 798  , 1 , 4 )
		elseif job == 1 then
			if cha_type == 1 then
				GiveItem( role , 0 , 769  , 1 , 4 )
			elseif cha_type == 2 then
				GiveItem( role , 0 , 766  , 1 , 4 )
			end
		end
	
	end
end


---------------------巨蟹船长宝箱：双击，根据角色给予道具

function ItemUse_JXBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"使用巨蟹酷装宝箱最少需要4个空位")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
	     
	       GiveItem ( role , 0 , 5464  , 1 , 4 )
	       GiveItem ( role , 0 , 5465  , 1 , 4 )
	       GiveItem ( role , 0 , 5466  , 1 , 4 )
	       GiveItem ( role , 0 , 5467  , 1 , 4 )
	elseif cha_type == 4  then 

	       GiveItem ( role , 0 , 5468  , 1 , 4 )
	       GiveItem ( role , 0 , 5469  , 1 , 4 )
	       GiveItem ( role , 0 , 5470  , 1 , 4 )
	       GiveItem ( role , 0 , 5471  , 1 , 4 )
	elseif cha_type == 1 then 
	      
	       GiveItem ( role , 0 , 5456  , 1 , 4 )
	       GiveItem ( role , 0 , 5457  , 1 , 4 )
	       GiveItem ( role , 0 , 5458  , 1 , 4 )
	       GiveItem ( role , 0 , 5459  , 1 , 4 )
	elseif cha_type == 2 then 

	       GiveItem ( role , 0 , 5460  , 1 , 4 )
	       GiveItem ( role , 0 , 5461  , 1 , 4 )
	       GiveItem ( role , 0 , 5462  , 1 , 4 )
	       GiveItem ( role , 0 , 5463  , 1 , 4 )
	end
end

---------------------------召唤巨蟹守护者
function ItemUse_JXSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1040
	local Refresh = 10900					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end


--------------------------------------------------kokora--------------------------------------------------
--------------------------------金秋十月活动之毛蟹食用效果
function ItemUse_littlecrab ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >86 then
		SystemNotice ( role , "86级以上角色不能使用！" )
		UseItemFailed ( role )
		return	
	end

	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "已使用更高等级的同类物品，请稍候再用" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"感受到食用毛蟹的效果" )
end


--------------------------------金秋十月活动之大闸蟹食用效果
function ItemUse_bigcrab ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >86 then
		SystemNotice ( role , "86级以上角色不能使用！" )
		UseItemFailed ( role )
		return	
	end

	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "已使用更高等级的同类物品，请稍候再用" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"感受到食用大闸蟹的效果" )
end

--------------------------------金秋十月活动之蟹苗食用效果
function ItemUse_babycrab ( role , Item )  
	local el_exp = GetChaAttr(role, ATTR_CEXP)
	local exp1=el_exp
	local charLv=Lv ( role )
	local exp_resume = 1000
	local	exp_resume_1= 20
	el_exp = el_exp + exp_resume
	 if charLv>=80 then	
		el_exp = exp1 + exp_resume_1
	end
	SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 
--------------------------------金秋十月活动之蟹王食用效果
function ItemUse_kingcrab ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------当前等级经验
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3  +  Exp_star + 10
	local dif_exp_thalf_b = dif_exp_thalf - DEXP[charLv+1]
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=9 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=10 and charLv<=29 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=30 and charLv<=59 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=60 and charLv<=75 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=76 and charLv<=85 and charLv~=79  then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b<=0 then 
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=86 then
		SystemNotice( role , "Your level is too high to use" )
		UseItemFailed ( role )
		return
	end
end


------------------------------------------------kokora--------------------------------------------------
----------天使宝藏
function ItemUse_TSBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 100 )
	--SystemNotice(role ,"star=="..star)
	if star<=20 then
		GiveItem ( role , 0 , 3457  , 1 , 4  )
		local message = cha_name.."打开天使宝藏惊喜地获得 纳卡符石" 
		Notice ( message )
	elseif star>=21 and star<=70 then
		GiveItem ( role , 0 ,3433, 1 , 4  ) 
		local message1 = cha_name.."打开天使宝藏惊喜地获得 费诺符石" 
		Notice ( message1 )
	else
		GiveItem ( role , 0 , 0271, 1 , 4  ) 
		local message2 = cha_name.."打开天使宝藏惊喜地获得 天使骰子" 
		Notice ( message2 )
	end
end


----------黄金圣斗士宝藏
function ItemUse_SDSBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 100 )
	--SystemNotice(role ,"star=="..star)
	if star<=25 then
		GiveItem ( role , 0 , 2955  , 1 , 4  )
		local message = cha_name.."打开黄金圣斗士宝藏惊喜地获得 白羊船长酷装宝箱" 
		Notice ( message )
	elseif star>=26 and star<=50 then
		GiveItem ( role , 0 ,3035, 1 , 4  ) 
		local message1 = cha_name.."打开黄金圣斗士宝藏惊喜地获得 金牛船长酷装宝箱" 
		Notice ( message1 )
	elseif star>=51 and star<=75 then
		GiveItem ( role , 0 ,1881, 1 , 4  ) 
		local message2 = cha_name.."打开黄金圣斗士宝藏惊喜地获得 双子船长酷装宝箱" 
		Notice ( message2 )
	else
		GiveItem ( role , 0 , 2575, 1 , 4  ) 
		local message3 = cha_name.."打开黄金圣斗士宝藏惊喜地获得 巨蟹船长酷装宝箱" 
		Notice ( message3 )
	end
end


----------神龙宝藏
function ItemUse_ShenLongBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 100 )
	--SystemNotice(role ,"star=="..star)
	if star<=20 then
		GiveItem ( role , 0 , 0864  , 1 , 4  )
		local message = cha_name.."打开神龙宝藏惊喜地获得 黑龙之瞳" 
		Notice ( message )
	elseif star>=21 and star<=40 then
		GiveItem ( role , 0 ,0865, 1 , 4  ) 
		local message1 = cha_name.."打开神龙宝藏惊喜地获得 黑龙之魂" 
		Notice ( message1 )
	elseif star>=41 and star<=60 then
		GiveItem ( role , 0 ,0866, 1 , 4  ) 
		local message2 = cha_name.."打开神龙宝藏惊喜地获得 黑龙之心" 
		Notice ( message2 )
	else
		GiveItem ( role , 0 , 1012, 1 , 4  ) 
		local message3 = cha_name.."打开神龙宝藏惊喜地获得 加纳之神" 
		Notice ( message3 )
	end
end


----------极速宝藏
function ItemUse_JSBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0992 , 99 , 4) 			
	local itemname = GetItemName (0992) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."打开极速宝藏惊喜地获得99个"..itemname  
	Notice ( message )
end

----------恶魔宝藏
function ItemUse_EMBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2842 , 1 , 4) 			
	local itemname = GetItemName (2842) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."打开恶魔宝藏惊喜地获得"..itemname  
	Notice ( message )
end

----------年兽宝藏
function ItemUse_NSBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0192 , 1 , 4) 			
	local itemname = GetItemName (0192) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."打开年兽宝藏惊喜地获得"..itemname  
	Notice ( message )
end
--------------------------------死神宝藏
function ItemUse_SSBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr( role, ATTR_JOB) --取职业
        local cha_type = GetChaTypeID ( role )
	if job == 0 or job ==1   or job ==2  or job ==4   or job ==5  then
		SystemNotice ( role , "只有二转角色才可以使用本宝箱")
		UseItemFailed ( role )
		return
	else
		if job == 12 then			--狙击
			GiveItem( role , 0 , 2838  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.."打开死神宝藏惊喜地获得 地狱包袱"  
			Notice ( message )
		elseif job == 9	then			--双剑
			GiveItem( role , 0 , 2837  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message1 = cha_name.."打开死神宝藏惊喜地获得 暗黑盒子"  
			Notice ( message1 )
		elseif job == 16 then			--航海
			GiveItem( role , 0 , 2839  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message2 = cha_name.."打开死神宝藏惊喜地获得 修罗箱子"  
			Notice ( message2 )
		elseif job == 8	then			--巨剑
			GiveItem( role , 0 , 2836  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message3 = cha_name.."打开死神宝藏惊喜地获得 哈迪斯遗物"  
			Notice ( message3 )
		elseif job == 13 then			--圣职
			GiveItem( role , 0 ,2840  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message4 = cha_name.."打开死神宝藏惊喜地获得 幽冥宝藏"  
			Notice ( message4 )
		elseif job == 14 then			--封印
			GiveItem( role , 0 , 2841  , 1 , 4 )
			local cha_name = GetChaDefaultName ( role ) 
			local message5 = cha_name.."打开死神宝藏惊喜地获得 冥河小包"  
			Notice ( message5 )
		
		end
	
	end
end

--洛克藏宝图 

function ItemUse_Map_LK ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need to have at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 2998 )
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "同时只能携带一个海盗罗盘" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2998 , 1 , 0 )
end


-- 海盗罗盘


function ItemUse_HDLP ( role , Item )
	SystemNotice(role ,"罗盘阿.....")
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need to have at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 2998 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "所携带的海盗罗盘超过一个,你太贪心了,寻宝失败.多余的藏宝图可以暂时存放到银行里" )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 2998 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
--	SystemNotice ( role , "pos_x"..pos_x )
--	SystemNotice ( role , "pos_y"..pos_y )
--	SystemNotice ( role , "Themap"..Themap )
	
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local MapNameList = { }
	
	MapNameList [0] = "No map"
	MapNameList [1] = "Ascaron"
	MapNameList [2] = "Magical Ocean"
	MapNameList [3] = "Deep Blue"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos ( role , 1 )		
--		pos_x,pos_y,Themap = GetMapRanPos ( role )
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
--		SystemNotice ( role , "Themap"..Themap )
--		Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
--		SystemNotice ( role , "Item_MAXENERGY"..Item_MAXENERGY )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
--	SystemNotice ( role , "CheckPosOver"..GetPos ) 
	if GetPos == 0 then
		SystemNotice ( role , "Treasure is hidden at "..MapNameList[Themap].."Region"..pos_x..","..pos_y.." nearby" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom==1 then
			GiveZNZItem ( role )
		else
			SystemNotice ( role , "好像没挖出来什么,继续在附近挖挖看吧" )
			UseItemFailed ( role )
			return
		end
	end
end

function Sk_Script_DS	( role , Item ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		UseItemFailed ( role ) 
		SystemNotice( role , "你至少需要一个空格来获得学生证")
		return 
	end 
	local sk_add = SK_DS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 				--学会技能
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
	
	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem ( role , 3289 , 1 , 4 )				--给学生证
	local Itemnew = GetChaItem ( role , 2 , r2 )

	SetItemAttr(Itemnew, ITEMATTR_MAXENERGY , 120)           --设置最高存储经验
	SetItemAttr(Itemnew, ITEMATTR_ENERGY , 0 )              				 --设置当前存储经验
	SetItemAttr(Itemnew, ITEMATTR_URE,0)								 --设置当前存储学分
	SetItemAttr(Itemnew, ITEMATTR_MAXURE,150)						--设置当前最大学分，该值在每次升级考试后会变化
	SetItemAttr(Itemnew, ITEMATTR_FORGE,0)								--设置学历
	
	LiveSkillLearnLog(role, 461)
end 

function ItemUse_WisdomApple( role , Item )		-------智慧果使用效果
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"Only players Lv 40 and above may use")
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_APPLE )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "Better fruit in effect. Please use it later" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_APPLE , statelv , statetime )
	else
		UseItemFailed ( role )
		SystemNotice( role , "海上无法食用智慧果")
	end
end

function ItemUse_GoldApple ( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"Only Lv 60 and above may use")
		UseItemFailed ( role )
		return
	end

	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_APPLE )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "Better fruit in effect. Please use it later" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_APPLE , statelv , statetime )
	else
		UseItemFailed ( role )
		SystemNotice( role , "海上无法食用金苹果果")
	end
end


--------------------------------------------嘉宾宝箱
function ItemUse_JBBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , 3078  , 1 , 4 )
	local Item_el = GetChaItem ( role , 2 , r2 )			--取新精灵道具指针

	local item_old = GetChaItem2 ( role , 2 , 3066 )

	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------时   
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------分   
	
	--SystemNotice ( role , "old_month=="..old_month )
	--SystemNotice ( role , "old_day=="..old_day )       
	--SystemNotice ( role , "old_hour=="..old_hour )    
	--SystemNotice ( role , "old_miniute=="..old_miniute)

	SetItemAttr(Item_el, ITEMATTR_VAL_STA, old_month )	-------------月 	
	SetItemAttr(Item_el, ITEMATTR_VAL_STR, old_day )		-------------日  
	SetItemAttr(Item_el, ITEMATTR_VAL_CON, old_hour )		-------------时 
	SetItemAttr(Item_el, ITEMATTR_VAL_DEX, old_miniute )	-------------分

	local old_month2 = GetItemAttr(Item_el, ITEMATTR_VAL_STA)		-------------月 	
	local old_day2 = GetItemAttr(Item_el, ITEMATTR_VAL_STR)			-------------日  
	local old_hour2 = GetItemAttr(Item_el, ITEMATTR_VAL_CON)			-------------时   
	local old_miniute2 = GetItemAttr(Item_el, ITEMATTR_VAL_DEX)		-------------分 

	--SystemNotice ( role , "old_month2=="..old_month2 )
	--SystemNotice ( role , "old_day2=="..old_day2 )       
	--SystemNotice ( role , "old_hour2=="..old_hour2 )    
	--SystemNotice ( role , "old_miniute2=="..old_miniute2)

	SynChaKitbag(role,13)

end


------------------浪漫烟花
function ItemUse_LMYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

------------------巨响烟花
function ItemUse_JXYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

------------------豪华烟花
function ItemUse_HHLH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
end

---------教堂使用证书
function Jz_Script_jtsyzs (role, Item )
	
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowMniuteNum= os.date("%M")	
	local NowMiniuteNum= tonumber(Now_Miniute)	 	
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
	--SystemNotice ( role , "timing is now"..CheckDateNum)

	local item_old = GetChaItem2 ( role , 2 , 3066 )----教堂使用证
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)			
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			 
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
	 
	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
	
	local i = CheckBagItem(role,3066)
	local k = ChaIsBoat(role)
	if CheckDateNum >= CheckBook1Num  and CheckDateNum <= CheckBook2Num and k ==0 and  i >0 then
		 DelBagItem(role,3066,1)
		MoveCity(role,"Church")	
	else
		SystemNotice ( role , "咦?难道是时间不对")
		UseItemFailed ( role )
	end
end

------------请柬
function Jz_Script_qj (role, Item )
	--SystemNotice ( role , "Invitation Invitation Invitation" )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	--SystemNotice ( role , "Wahaha" )
	local NowMniuteNum= os.date("%M")	-------------分
	local NowMiniuteNum= tonumber(Now_Miniute)	 	-------------分
	local NowTimeNum = tonumber(Now_Time)
	--SystemNotice ( role , "huhuhuhu" )
	local NowDayNum = tonumber(Now_Day)
	--SystemNotice ( role , "hehehehe" )
	local NowMonthNum = tonumber(Now_Month)
	--SystemNotice ( role , "kekekeke" )
	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
	--SystemNotice ( role , "timing is now"..CheckDateNum)
	--local old_type = GetItemAttr(item_old, ITEMATTR_MAXENERGY)	----------------法式教堂

	local item_old = GetChaItem2 ( role , 2 , 3078 )
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------月 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------日  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------时 
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
	 

	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
	
	if CheckDateNum < CheckBook1Num then
		SystemNotice ( role , "Please be patient, Church is not opened yet. Please come back according to the time listed" )
		UseItemFailed ( role )
		return
	end
	--SystemNotice ( role , "Mother")
	if CheckDateNum > CheckBook2Num then
		SystemNotice ( role , "The wedding you want to visit is already finished, too bad" )
		UseItemFailed ( role )
		return
	end
	--SystemNotice ( role , "Father")

	local i = CheckBagItem(role,3078)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3078,1)
			--if j == 1 and old_type=1 then
				--MoveCity(role,"French Wedding Hall")
			--elseif	j == 1 and old_type=2 then
				--MoveCity(role,"Chinese style church")
			if j == 1 then-------------elseif	j == 1 and old_type=3 then
				MoveCity(role,"Church")
				--SystemNotice ( role , "Grandfather")
			--elseif	j == 1 and old_type=4 then
				--MoveCity(role,"Ground type Church")
			end
		end
	else
		UseItemFailed ( role )
	end
	--SystemNotice ( role , "Granny")	
end
---------------------------召唤婚礼淘气鬼
function ItemUse_FLOWER ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1037
	local Refresh = 7300					--重生时间，秒单位
	local life = 7200000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end


---------------------------气球游戏券
function ItemUse_QQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Unable to summon monster in Safe Zone" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1036
	local Refresh = 60					--重生时间，秒单位
	local life = 7200000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
--伊式教堂参观门票
function Jz_Script_yszs (role, Item )
	
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	local Now_Time = os.date("%H")
	local Now_TimeNum = tonumber(Now_Time)
	local Now_Miniute= os.date("%M")	
	local Now_Miniute= tonumber(Now_Miniute)
	local CheckDateNum = Now_WeekNum * 10000 + Now_TimeNum * 100+Now_Miniute

	if CheckDateNum < 11700  then
		SystemNotice ( role , "不要着急哦，教堂还没开门，请在每星期一晚上17点到17点10分之间使用哦" )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 11710 then
		SystemNotice ( role , "Church is now closed, please wait until next Monday night" )
		UseItemFailed ( role )
		return
	end

	local i = CheckBagItem(role,3024)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3024,1)
			if j == 1 then
				MoveCity(role,"Church")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
-----------------------------红包：红包只有在（每周六\日晚18:00--22：10）打开才会有效

function ItemUse_RedBox( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开红包最少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local now_week= os.date("%w")		-------------星期几（十进制） 
	local now_hour= os.date("%H")		-------------时 
	local now_miniute= os.date("%M")	-------------分
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute
	local flag=0
      if now_week==6 or now_week==0 then
		flag=1
      end
	if 1800<=CheckDateNum and  CheckDateNum<=2210 and flag==1 then
		ItemUse_hongbaoBOX ( role , Item )
	else 
		SystemNotice(role ,"It is not time yet. Do not try to cheat!")
		UseItemFailed ( role )
		return
	end
end

function ItemUse_hongbaoBOX ( role , Item )
	local ChaName = GetChaDefaultName ( role )

	local el = math.random ( 1, 1000 )
	if  el>=1 and el<=5 then
		GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------加纳之神        0.5
			local message ="恭喜玩家" ..ChaName.."人品爆发,打开红包获得 加纳之神" 
			Notice ( message )
	elseif el>=6 and el<=10 then
		GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------女神小包       0.5
			local message1 ="恭喜玩家" ..ChaName.."人品爆发,打开红包获得 女神小包" 
			Notice ( message1 )
	elseif el>=11 and el<=20 then
		GiveItem ( role , 0 , 0860  , 1 , 4 ) ---------------风灵         1
			local message2 ="恭喜玩家" ..ChaName.."人品爆发,打开红包获得 风灵石" 
			Notice ( message2 )
	elseif el>=21 and el<=30 then
		GiveItem ( role , 0 , 0861  , 1 , 4 ) ----------------鹰眼石     1
			local message3 ="恭喜玩家" ..ChaName.."人品爆发,打开红包获得 鹰眼石" 
			Notice ( message3 )
	elseif el>=31 and el<40 then
		GiveItem ( role , 0 , 0862  , 1 , 4 ) ----------------岩玉       1
			local message4 ="恭喜玩家" ..ChaName.."人品爆发,打开红包获得 岩玉" 
			Notice ( message4 )
	elseif el>=41 and el<=50 then
		GiveItem ( role , 0 , 0863  , 1 , 4 )-----------------炎玉       1
			local message5 ="恭喜玩家" ..ChaName.."人品爆发,打开红包获得 炎玉" 
			Notice ( message5 )
	elseif el>=51 and el<=270 then
		GiveItem ( role , 0 , 855  , 99 , 4 )-----------------精灵硬币       22
	elseif el>=271 and el<=500 then
		GiveItem ( role , 0 , 0227  , 5 , 4 )-----------------守护精灵饲料    23
	elseif el>=501 and el<=750 then
		GiveItem ( role , 0 , 3096  , 3 , 4 )-----------------财富增幅器3个   25
	elseif el>=751 and el<=1000 then
		GiveItem ( role , 0 , 3094  , 3 , 4 )-----------------努力增幅器3个   25
	end
end
------------------------------------------------可疑藏宝图(kokora)---------------------------------
function ItemUse_KYCBT (role, Item)
	local	sc = math.random ( 1,100 )
	if  sc <=50 then
	local cha_name = GetChaDefaultName ( role ) 
	local message1= cha_name.."人品爆发,根据洛克藏宝图探索到 船长之首" 
		Notice ( message1 )
	else 
	local cha_name = GetChaDefaultName ( role ) 
	local message2 = cha_name.."人品爆发,根据洛克藏宝图探索到 元帅之首" 
		Notice ( message2 )
	end
end
-----------------------------------------------------------kokora---------------------------------------------------------
------------------------------------------------兑换神泣宝箱(kokora)---------------------------------
function ItemUse_goddessBOX (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用神泣宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开神泣宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 43 )
	local ItemId = 0
	
	if sc <=14 then	
		local GoodItem = {}
		GoodItem[0] = 0111                                       -------------降魔杵          获得机率14%
		GoodItem[1] = 0150                                       -------------鱼肠             获得机率14%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=26 then		
		local GoodItem = {}
		GoodItem[0] = 0109                                       -------------如意宝杖       获得机率12%
		GoodItem[1] = 0115                                       -------------裂岩             获得机率12%
		GoodItem[2] = 0117                                       -------------飞虹             获得机率12%
		GoodItem[3] = 0119                                       -------------流星火珠       获得机率12%
	
		local Good_C = math.random ( 1, 4 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=36 then
		ItemId = 0113                                       -------------龙泉          获得机率10%
	else  local GoodItem = {}
		GoodItem[0] = 0861                                       -------------鹰眼石          获得机率7%
		GoodItem[1] = 0860                                       -------------风灵石          获得机率7%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	GiveItem ( role , 0 , ItemId , 1 , 94 )
	local message = "恭喜玩家" ..cha_name.."打开神泣宝箱,惊喜的获得"..itemname  
	Notice ( message )
end
-----------------------------------------------------------kokora---------------------------------------------------------

------------------------------------------------兑换霸王宝箱(kokora)---------------------------------
function ItemUse_overlordBOX (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用霸王宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开霸王宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 43 )
	local ItemId = 0
	
	if  sc <=14 then	
		local GoodItem = {}
		GoodItem[0] = 0112                                       -------------试炼之杵          获得机率14%
		GoodItem[1] = 0151                                       -------------断魂                获得机率14%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=26 then		
		local GoodItem = {}
		GoodItem[0] = 0110                                       -------------补天之杖       获得机率12%
		GoodItem[1] = 0116                                       -------------巨阙             获得机率12%
		GoodItem[2] = 0118                                       -------------落日             获得机率12%
		GoodItem[3] = 0120                                       -------------霹雳神雷       获得机率12%
	
		local Good_C = math.random ( 1, 4 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=36 then
		ItemId = 0114                                       -------------游龙          获得机率10%
	else local GoodItem = {}
		GoodItem[0] = 0863                                       -------------炎玉          获得机率7%
		GoodItem[1] = 0862                                       -------------岩玉          获得机率7%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	GiveItem ( role , 0 , ItemId , 1 , 94 )
	local message = "恭喜玩家" ..cha_name.."打开霸王宝箱,惊喜的获得"..itemname  
	Notice ( message )
end
-----------------------------------------------------------kokora---------------------------------------------------------
function ItemUse_XiDianBook ( role , item )
	local zsskill_lv  = {} 							----取角色转生技能等级
	 zsskill_lv [0] = GetSkillLv ( role, 453 )
	 zsskill_lv [1] = GetSkillLv ( role, 454 )
	 zsskill_lv [2] = GetSkillLv ( role, 455 )
	 zsskill_lv [3] = GetSkillLv ( role, 456 )
	 zsskill_lv [4] = GetSkillLv ( role, 457 )
	 zsskill_lv [5] = GetSkillLv ( role, 458 )
	local n = 0
	local item_canget = GetChaFreeBagGridNum ( role )
	if item_canget < 2 then
		SystemNotice(role ,"背包里至少需要有2个空位")
		UseItemFailed ( role )
	else
		for i = 0, 5, 1 do
			if zsskill_lv [i] >= 1 then
				n = n+1
			end
		end
		local cha_skill_num=GetChaAttr(role, ATTR_TP  )				----取角色当前剩余战斗技能点
		local clear_skill_num=ClearFightSkill(role)				----取清除技能点
		cha_skill_num=cha_skill_num+clear_skill_num
		if n > 0 then							----有转生技能
			local job = GetChaAttr( role, ATTR_JOB)				----取职业
			local item_id = {}
			item_id [8] = 2957
			item_id [9] = 2956
			item_id [12] = 2961
			item_id [13] = 2959
			item_id [14] = 2958
			item_id [16] = 2960
			GiveItem ( role, 0, item_id [job] , 1, 4)
			GiveItem ( role, 0, 1572, 1, 4)
			cha_skill_num = cha_skill_num - 2
		end
		SetChaAttr(role, ATTR_TP ,cha_skill_num ) 
	end
end

function Sk_Script_ZSSL( role , item )
	local sk_add = SK_ZSSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------------------------精灵硬币宝箱
function ItemUse_YingbiBox ( role , Item )
	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 10 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 4 then
				SystemNotice(role ,"开启精灵硬币宝箱至少需要4个格子")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox1[ChaName] == nil then
				PlayUseBox1[ChaName] = 0
			end
			local Use_Num = PlayUseBox1[ChaName]
			local now_day= os.date("%d")		-------------日   
			local now_month= os.date("%m")		-------------月
			now_month= tonumber(now_month)		-------------月     
			now_day = tonumber(now_day)		-------------日
			local Date = JNSTime_Flag[now_month]+now_day
			local Yingbi_Num = 0
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				Yingbi_Num = 20
				local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
					if j == 1 then 
						PlayUseBox1[ChaName] = Use_Num
						GiveBragiItem ( role , 1 )
						GiveItem ( role , 0 , 1872 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "精灵硬币不足")
					end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				--SystemNotice ( role , "a="..a)
				if a == 0 then
					Use_Num = Use_Num +1
					local time_new = Time + 1
					if time_new >= 1 and time_new <= 3 then
						Yingbi_Num = (time_new*5) + 15
						--SystemNotice ( role  , "Round"..time_new.."次开箱子，花费"..Yingbi_Num.."个硬币，品质为1")
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 1 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "精灵硬币不足")
						end
					elseif time_new >= 4 and time_new <= 6 then
						Yingbi_Num = Time * 15
						--SystemNotice ( role  , "Round"..time_new.."次开箱子，花费"..Yingbi_Num.."个硬币，品质为2")
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 2 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "精灵硬币不足")
						end
					else
						Yingbi_Num = 99
						--SystemNotice ( role  , "Round"..time_new.."次开箱子，花费"..Yingbi_Num.."个硬币，品质为3")
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 3 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "精灵硬币不足")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "你今天已经开过10个精灵硬币宝箱了")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					Yingbi_Num = 20
					--SystemNotice ( role  , "Round"..Time.."开箱子，花费"..Yingbi_Num.."个硬币")
					local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
					if j == 1 then
						PlayUseBox1[ChaName] = Use_Num
						GiveBragiItem ( role )
						GiveItem ( role , 0 , 1872 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "精灵硬币不足")
					end
				end
			end
		else
			SystemNotice( role , "等级不到10，无法使用该道具")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "该道具只能在深蓝群岛地图使用")
		UseItemFailed ( role )
	end
end

------------------------------------精灵辉印宝箱
function ItemUse_HuiYinBox ( role, Item )
	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 60 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 2 then
				SystemNotice(role ,"开启精灵辉印宝箱至少需要2个格子")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox2[ChaName] == nil then
				PlayUseBox2[ChaName] = 0
			end
			local Use_Num = PlayUseBox2[ChaName]
			local now_day= os.date("%d")		-------------日   
			local now_month= os.date("%m")		-------------月
			now_month= tonumber(now_month)		-------------月     
			now_day = tonumber(now_day)		-------------日
			local Date = JNSTime_Flag[now_month]+now_day
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				local j = TakeItem ( role , 0 , 2588 , 10 )
				if j == 1 then 
					PlayUseBox2[ChaName] = Use_Num
					GiveItem ( role , 0 , 3107 , 1 , 4 )
					GiveItem ( role , 0 , 1570 , 1 , 4 )
				else
					UseItemFailed ( role )
					SystemNotice( role, "精灵辉印不足")
				end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					local time_new = Time + 1
					if time_new == 1 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 10 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 3107 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "精灵辉印不足")
						end
					elseif time_new == 2 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 20 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							AddExpAll ( role , 1 , 1, 2)
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "精灵辉印不足")
						end
					elseif time_new == 3 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 30 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 850 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "精灵辉印不足")
						end
					elseif time_new == 4 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 40 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 852 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "精灵辉印不足")
						end
					elseif time_new == 5 then
						Use_Num = ( Date + 1 )*10
						local j = TakeItem ( role , 0 , 2588 , 50 )
						if j == 1 then 
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 851 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "精灵辉印不足")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "你今天已经开过5个精灵辉印宝箱了")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					local j = TakeItem ( role , 0 , 2588 , 10 )
					if j == 1 then
						PlayUseBox2[ChaName] = Use_Num
						GiveItem ( role , 0 , 3107 , 1 , 4 )
						GiveItem ( role , 0 , 1570 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "精灵辉印不足")
					end
				end
			end
		else
			SystemNotice( role , "等级不到60，无法使用该道具")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "该道具只能在深蓝群岛地图使用")
		UseItemFailed ( role )
	end
end

-----------------------------精灵王辉印宝箱
function ItemUse_HuiYinKBox ( role, Item )
	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 70 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 2 then
				SystemNotice(role ,"开启精灵辉印王宝箱至少需要2个格子")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox3[ChaName] == nil then
				PlayUseBox3[ChaName] = 0
			end
			local Use_Num = PlayUseBox3[ChaName]
			local now_day= os.date("%d")		-------------日   
			local now_month= os.date("%m")		-------------月
			now_month= tonumber(now_month)		-------------月     
			now_day = tonumber(now_day)		-------------日
			local Date = JNSTime_Flag[now_month]+now_day
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				local j = TakeItem ( role , 0 , 2589 , 1 )
				if j == 1 then 
					PlayUseBox3[ChaName] = Use_Num
					AddExpAll ( role , 3 , 3, 2 )
					GiveItem ( role , 0 , 1571 , 1 , 4 )
				else
					UseItemFailed ( role )
					SystemNotice( role, "精灵王辉印不足")
				end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					local time_new = Time + 1
					if time_new == 1 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2589 , 1 )
						if j == 1 then 
							PlayUseBox3[ChaName] = Use_Num
							AddExpAll ( role , 3 , 3, 2 )
							GiveItem ( role , 0 , 1571 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "精灵王辉印不足")
						end
					elseif time_new == 2 then
						Use_Num = ( Date + 1 ) * 10
						local j = TakeItem ( role ,  0 , 2589 , 2 )
						if j == 1 then 
							PlayUseBox3[ChaName] = Use_Num
							GiveItem ( role , 0 , 3336 , 1 , 4 )
							GiveItem ( role , 0 , 1571 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "精灵王辉印不足")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "你今天已经开过2个精灵王辉印宝箱了")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					local j = TakeItem ( role , 0 , 2588 , 10 )
					if j == 1 then
						PlayUseBox3[ChaName] = Use_Num
						AddExpAll ( role , 3, 3, 2 )
						GiveItem ( role , 0 , 1571 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "精灵王辉印不足")
					end
				end
			end
		else
			SystemNotice( role , "等级不到70，无法使用该道具")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "该道具只能在深蓝群岛地图使用")
		UseItemFailed ( role )
	end
end


------------------------黑匣子
function ItemUse_BACKBOX ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------当前等级经验
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.15  +  Exp_star + 10
	local dif_exp_thalf_a = (DEXP[charLv+1] - DEXP[charLv])*0.12  +  Exp_star + 10
	local dif_exp_thalf_b = (DEXP[charLv+1] - DEXP[charLv])*0.08  +  Exp_star + 10
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.05+Exp_star+ 10

	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	if charLv>=100 then
		SystemNotice( role , "100级及100级以上角色不能使用" )
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=40 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )
	elseif el>=41 and el<=70 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_b )
	elseif el>=71 and el<=90 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_a )
	elseif el>=91 and el<=100 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
        end
end
----------------经验瓶礼包
function ItemUse_jyplb( role , item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"至少需要一个背包空格")
		UseItemFailed ( role )
		return
	end
	local r1 = 0
	local r2 = 0
	r1,r2 =MakeItem ( role , 171  , 1 , 4 )
	local Item = GetChaItem ( role , 2 , r2 )
	SetItemAttr(Item, ITEMATTR_VAL_PARAM1, 0 )		-------------秒  
	SynChaKitbag(role,13)
end

---------------------------幻之证明（kokora）浩方版本专用
function ItemUse_fancyprove ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用幻之证明" )
		UseItemFailed ( role )
		return
	end
	 local cha_name = GetChaDefaultName ( role )
	 local lv = GetChaAttr ( role , ATTR_LV )
	 if lv>=20 and lv<=54 then
		SetChaAttrI(role, ATTR_CEXP , 19674240)		
	 local message = "恭喜玩家" ..cha_name.."使用幻之证明后,等级由"..lv .."级升到55级!该幻之证明,海盗王商城内免费提供喔!" 
		Notice ( message )
	 else 
		SystemNotice( role , "幻之证明需使用等级在20级至54级之间,您的等级不符合使用幻之证明的要求" )
		UseItemFailed ( role )
	end
	return
end

---------------------------超人宝箱（kokora）浩方版本专用
function ItemUse_superBOX ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用超人宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"此")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local lv = GetChaAttr ( role , ATTR_LV )	
	if lv>=70 then
	GiveItem ( role , 0 , 996 , 1 , 4 )
	local message = "恭喜玩家" ..cha_name.."打开超人宝箱,惊喜的获得超人证明,该超人宝箱,海盗王商城内免费提供喔!"
	Notice ( message )
	 else 
		SystemNotice( role , "超人宝箱需使用等级在70级以上,您的等级不符合使用超人宝箱的要求" )
		UseItemFailed ( role )
	end
	return
end

---------------------------超人证明（kokora）浩方版本专用
function ItemUse_superprove ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用超人证明" )
		UseItemFailed ( role )
		return
	end
	 local cha_name = GetChaDefaultName ( role ) 
	 local lv = GetChaAttr ( role , ATTR_LV )	
	 if lv>=55 and lv<=59 then
		SetChaAttrI(role, ATTR_CEXP , 37746418)
	 local message = "恭喜玩家" ..cha_name.."使用超人证明后,等级由"..lv .."级升到60级!该超人证明,海盗王商城内免费提供喔!" 
		Notice ( message )
	 else 
		SystemNotice( role , "超人证明需使用等级在55级至59级之间,您的等级不符合使用超人证明的要求" )
		UseItemFailed ( role )
	end
	return
end

---------------------------谜之证明（kokora）浩方版本专用
function ItemUse_riddleprove ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用谜之证明" )
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 3849 )                                                
	if i~=1 then
		SystemNotice(  role , "Please confirm you have Medal of Valor with you")
		UseItemFailed ( role )
		return LUA_FALSE
	end

	local credit = GetChaItem2 ( role , 2 , 3849 )
	local creditprove = GetItemAttr (credit , ITEMATTR_VAL_STR)
	if creditprove < 100 then
		SystemNotice ( role , "您的荣誉值未达到100点,不满足使用谜之证明的条件!" )
		UseItemFailed ( role )
		return LUA_FALSE
	end

	local meleeprove = GetItemAttr (credit , ITEMATTR_MAXENERGY)	
	if meleeprove < 11 then
		SystemNotice ( role , "您的乱斗点数未达到11点,不满足使用谜之证明的条件!" )
		UseItemFailed ( role )
		return LUA_FALSE
	end
															
	 local cha_name = GetChaDefaultName ( role ) 
	 local lv = GetChaAttr ( role , ATTR_LV )	
	 if lv>=60 and lv<=64 then
		SetChaAttrI(role, ATTR_CEXP , 116688304)
	 local message = "恭喜玩家" ..cha_name.."使用谜之证明后,等级由"..lv .."级升到65级!该谜之证明,海盗王商城内免费提供喔!" 
		Notice ( message )
	 else 
		SystemNotice( role , "谜之证明需使用等级在60级至64级之间,您的等级不符合使用谜之证明的要求" )
		UseItemFailed ( role )
	end
	return 
end

---------------------------谜之助推器（kokora）浩方版本专用
function ItemUse_riddleroll ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv < 65 or lv > 75  then
		SystemNotice ( role , "不能使用谜之助推器！" )
		UseItemFailed ( role )
		return	
	end

	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv > statelv then
		SystemNotice ( role , "已使用更高等级的同类物品，请稍候再用" )
		UseItemFailed ( role )
		return
	end
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"感受到谜之助推器的效果,半小时内,打怪经验成10倍增长喔!" )
end

------------------------------------------------兑换百慕大宝箱(kokora)---------------------------------
function ItemUse_baimodabox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用百慕大宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开百慕大宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 100 )
	
	if  sc <=25 then	
		GiveItem ( role , 0 , 1036 , 50 , 4 )                    ---------------魔幻女神卡   获得机率25%
	elseif sc <=50 then		
		GiveItem ( role , 0 , 0578 , 99 , 4 )                    ---------------加速成长果   获得机率25%
	elseif sc <=75 then
		GiveItem ( role , 0 , 0850 , 99 , 4 )                    ---------------轻装药水   获得机率25%
	else   
		GiveItem ( role , 0 , 0852 , 99 , 4 )                    ---------------全身装甲   获得机率25%
	end
end

------------------------------------------------寂寞深处召唤券(kokora)---------------------------------
function ItemUse_monsterbec (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local sc = 0
	sc =IsChaInRegion( role, 2 )
	if sc == 1 then
		SystemNotice( role , "角色当前处于安全区不可以使用召唤券" )
		UseItemFailed ( role )
		return
	end

	local Monsterattr = {533,509,531,534,550,557,553,559,50,50}
	local	sc = math.random(1,10)
	local x, y = GetChaPos( role )
	local Refresh = 3700				--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( Monsterattr[sc] , x , y , 145 ,  Refresh, role )
	SetChaLifeTime( new, life )
end

------------------------------------------------废灵召唤券(kokora)---------------------------------
function ItemUse_bierbec (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local sc = 0
	sc =IsChaInRegion( role, 2 )
	if sc == 1 then
		SystemNotice( role , "角色当前处于安全区不可以使用召唤券" )
		UseItemFailed ( role )
		return
	end
	local Monsterattr = {687,686}
	local	sc = math.random(1,2)
	local x, y = GetChaPos( role )
	local Refresh = 3700				--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( Monsterattr[sc] , x , y , 145 ,  Refresh, role )
	SetChaLifeTime( new, life )
end

------------------------------------------------寂寞召唤券(kokora)---------------------------------
function ItemUse_loneybec (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local sc = 0
	sc =IsChaInRegion( role, 2 )
	if sc == 1 then
		SystemNotice( role , "角色当前处于安全区不可以使用召唤券" )
		UseItemFailed ( role )
		return
	end

	local Monsterattr = {523,524,525,36,526,527,529,35,532,532}
	local	sc = math.random(1,10)
	local x, y = GetChaPos( role )
	local Refresh = 3700				--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( Monsterattr[sc] , x , y , 145 ,  Refresh, role )
	SetChaLifeTime( new, life )
end

------------------------------------------------------圣诞情人烟花
function ItemUse_XmasQRYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"道具使用失败，背包内至少要有一个空格")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 25 and NowDayNum <= 31 then
		local el = math.random ( 1 , 5 )
		local Item_ID = 0
		if el == 1 then
			Item_ID = 3354
		elseif el == 2 then
			Item_ID = 3355
		elseif el == 3 then
			Item_ID = 3356
		elseif el == 4 then
			Item_ID = 3077
		else
			Item_ID = 3343
		end
		GiveItem ( role , 0 , Item_ID , 1 , 4 )
	else
		SystemNotice( role , "本道具只能在圣诞节期间使用哦")
		UseItemFailed ( role )
		return
	end
end

---------------------------------------------------------圣诞狂欢烟花
function ItemUse_XmasKHYH ( role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"道具使用失败，背包内至少要有一个空格")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 25 and NowDayNum <= 31 then
		local el = math.random ( 1 , 10000 )
		local Item_ID = 0
		if el >= 1 and el <= 3000 then
			Item_ID = 2999
		elseif el >3000 and el <= 5000 then
			Item_ID = 1870
		elseif el > 5000 and el <= 7000 then
			Item_ID = 0145
		elseif el > 7000 and el <= 9000 then
			Item_ID = 1019
		elseif el == 9001 then
			Item_ID = 3000
		else
			Item_ID = 1036
		end
		GiveItem ( role , 0 , Item_ID , 1 , 4 )
	else
		SystemNotice( role , "本道具只能在圣诞节期间使用哦")
		UseItemFailed ( role )
		return
	end
end

------------------------------------------圣诞老人表情烟花
function ItemUse_SDLRYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"道具使用失败，背包内至少要有一个空格")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
	local cha_name = GetChaDefaultName ( role ) 
		local el = math.random ( 1 , 1000 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 500 then
			Item_ID = 227
			Item_Num = 5
		elseif el == 501 then
			Item_ID = 1014
			Item_Num = 1
		else
			Item_ID = 3834
			Item_Num = 5
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
		Notice ( cha_name.."祝愿全服玩家圣诞快乐!")
	else
		SystemNotice( role , "本道具只能在圣诞节期间使用哦")
		UseItemFailed ( role )
		return
	end
end

-------------------------------------merry christmas烟花
function ItemUse_MCYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"道具使用失败，背包内至少要有一个空格")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
	local cha_name = GetChaDefaultName ( role ) 
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 40 then
			Item_ID = 849
			Item_Num = 5
		elseif el > 40 and el <= 65 then
			Item_ID = 3097
			Item_Num = 2
		elseif el > 65 and el <= 90 then
			Item_ID = 3096
			Item_Num = 4
		else
			Item_ID = 3909
			Item_Num = 1
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
		Notice ( cha_name.."祝愿全服玩家Merry Christmas!")
	else
		SystemNotice( role , "本道具只能在圣诞节期间使用哦")
		UseItemFailed ( role )
		return
	end
end

-----------------------------------------------Happy NewYear烟花
function ItemUse_HNYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"道具使用失败，背包内至少要有一个空格")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
	local cha_name = GetChaDefaultName ( role ) 
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 40 then
			Item_ID = 849
			Item_Num = 5
		elseif el > 40 and el <= 65 then
			Item_ID = 3097
			Item_Num = 2
		elseif el > 65 and el <= 90 then
			Item_ID = 3096
			Item_Num = 4
		else
			Item_ID = 3909
			Item_Num = 1
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
		Notice ( cha_name.."祝愿全服玩家Happy NewYear!")
	else
		SystemNotice( role , "本道具只能在圣诞节期间使用哦")
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------雪人表情烟花
function ItemUse_XRBQYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"道具使用失败，背包内至少要有一个空格")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 50 then
			Item_ID = 3098
			Item_Num = 25
		elseif el == 51 then
			Item_ID = 333
			Item_Num = 1
		elseif el > 51 and el <= 81 then
			Item_ID = 227
			Item_Num = 15
		elseif el > 81 and el <= 91 then
			Item_ID = 3105
			Item_Num = 10
		else
			Item_ID = 3342
			Item_Num = 10
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
	else
		SystemNotice( role , "本道具只能在圣诞节期间使用哦")
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------麋鹿表情烟花
function ItemUse_MLBQYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"道具使用失败，背包内至少要有一个空格")
		UseItemFailed ( role )
		return
	end
	if NowMonthNum == 12 and NowDayNum >= 17 and NowDayNum <= 31 then
		local el = math.random ( 1 , 100 )
		local Item_ID = 0
		local Item_Num = 0
		if el >= 1 and el <= 61 then
			Item_ID = 885
			Item_Num = 1
		elseif el == 62 then
			Item_ID = 333
			Item_Num = 1
		elseif el >= 63 and el <= 64 then
			Item_ID = math.random ( 276 , 280 )
			Item_Num = 1
		elseif el > 64 and el <= 84 then
			Item_ID = 2312
			Item_Num = 15
		else
			Item_ID = 578
			Item_Num = 17
		end
		GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
	else
		SystemNotice( role , "本道具只能在圣诞节期间使用哦")
		UseItemFailed ( role )
		return
	end
end

--------------------------------------------------圣诞老人的馈赠
function ItemUse_SDLRKZ ( role , Item )
	local Item_ID = {}
	local Item_Num = {}
	local Item_PZ = {}
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"道具使用失败，背包内至少要有三个空格")
		UseItemFailed ( role )
		return
	end
	local role_job = GetChaAttr ( role, ATTR_JOB)
	if role_job == 0 or role_job == 1 or role_job == 2 or role_job == 4 or role_job == 5 then
		SystemNotice( role , "只有2转职业的角色才可以使用本道具" )
		UseItemFailed ( role )
		return
	end
	local role_type = GetChaTypeID ( role )
	local a = math.random ( 1, 1000)
	if a >= 0 and a <= 300 then
		Item_ID[1] = 2872
		Item_Num[1] = 5
		Item_PZ[1] = 4
	elseif a >= 301 and a <= 600 then
		Item_ID[1] = 2873
		Item_Num [1]= 5
		Item_PZ[1] = 4
	elseif a >= 601 and a <= 650 then
		if role_type == 1 then
			Item_ID[1] = 5264
			Item_ID[2] = 5265
			Item_ID[3] = 5266
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		elseif role_type == 2 then
			Item_ID[1] = 5267
			Item_ID[2] = 5268
			Item_ID[3] = 5269
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		elseif role_type == 3 then
			Item_ID[1] = 5270
			Item_ID[2] = 5271
			Item_ID[3] = 5272
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		elseif role_type == 4 then
			Item_ID[1] = 5273
			Item_ID[2] = 5274
			Item_ID[3] = 5275
			Item_Num[1] = 1
			Item_Num[2] = 1
			Item_Num[3] = 1
			Item_PZ[1] = 4
			Item_PZ[2] = 4
			Item_PZ[3] = 4
		end
	elseif a >= 651 and a <= 700 then
		if role_job == 8 then
			Item_ID[1] = 1375
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 1394
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 42
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			Item_ID[1] = 4198
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 14 then
			Item_ID[1] = 4204
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 16 then
			Item_ID[1] = 1421
			Item_Num[1] = 1
			Item_PZ[1] = 22
		end
	elseif a >= 701 and a <= 750 then
			Item_ID[1] = 2888
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 751 and a <= 800 then
			Item_ID[1] = 2889
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 801 and a <= 850 then
			Item_ID[1] = 2890
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 851 and a <= 900 then
			Item_ID[1] = 2891
			Item_Num[1] = 3
			Item_PZ[1] = 4
	elseif a >= 901 and a <= 950 then
		if role_job == 8 then
			Item_ID[1] = 4148
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 4150
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 4152
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			if role_type == 3 then
				Item_ID[1] = 4159
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4160
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 14 then
			if role_type == 4 then
				Item_ID[1] = 4164
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4163
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 16 then
			if role_type == 4 then
				Item_ID[1] = 4156
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4155
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		end
	elseif a >= 951 and a <= 975 then
		if role_job == 8 then
			Item_ID[1] = 653
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 4182
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 4184
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			if role_type == 3 then
				Item_ID[1] = 4191
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4192
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 14 then
			if role_type == 4 then
				Item_ID[1] = 4196
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4195
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 16 then
			if role_type == 4 then
				Item_ID[1] = 4188
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4187
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		end
	else
		if role_job == 8 then
			Item_ID[1] = 477
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 9 then
			Item_ID[1] = 4166
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 12 then
			Item_ID[1] = 4168
			Item_Num[1] = 1
			Item_PZ[1] = 22
		elseif role_job == 13 then
			if role_type == 3 then
				Item_ID[1] = 4175
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4176
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 14 then
			if role_type == 4 then
				Item_ID[1] = 4180
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4179
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		elseif role_job == 16 then
			if role_type == 4 then
				Item_ID[1] = 4172
				Item_Num[1] = 1
				Item_PZ[1] = 22
			else
				Item_ID[1] = 4171
				Item_Num[1] = 1
				Item_PZ[1] = 22
			end
		end
	end
	for i = 1, 3, 1 do
		if Item_ID[i] ~= nil and Item_Num[i] ~= nil and Item_PZ[i] ~= nil then
			GiveItem ( role , 0 , Item_ID[i] , Item_Num[i] , Item_PZ[i] )
		end
	end
end

-------------------------------------圣诞礼包(小)
function ItemUse_XmasLB ( role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"道具使用失败，背包内至少要有一个空格")
		UseItemFailed ( role )
		return
	end
	local br = math.random( 1, 10)
	local Item_ID = 0
	local Item_Num = 0
	if br >= 1 and br <= 3 then
		Item_ID = 3343
		Item_Num = 10
	elseif br >= 4 and br <= 6 then
		Item_ID = 3344
		Item_Num = 10
	else
		Item_ID = 2883
		Item_Num = 5
	end
	GiveItem ( role , 0 , Item_ID , Item_Num , 4 )
end

--------------------------------------圣诞机票
function ItemUse_movexmas ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	if NowMonthNum == 12 and NowDayNum <= 31 then
		local j = DelBagItem(role,2883,1)
		if j == 1 then
			MoveCity(role,"圣诞村")
			return
		end
	else
		SystemNotice(role ,"圣诞节已经过了哦")
		UseItemFailed ( role )
		return
	end
end	
------------------------------------------------------------阿拉丁背包
function ItemUse_ALDXB ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open chest")
		UseItemFailed ( role )
		return
	end

	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 20000 )
	--SystemNotice(role ,"star=="..star)
		if star<=3700 then
			GiveItem ( role , 0 , 2440  , 10 , 4  )
		elseif star>=3701 and star<=5700 then
			GiveItem ( role , 0 , 3885  , 1 , 4  )
		elseif star>=5701 and star<=7100 then
			GiveItem ( role , 0 , 3094  , 1 , 4  )
		elseif star>=7101 and star<=13100 then
			local el = math.random ( 1, 5 )
			if el==1  then
				GiveItem ( role , 0 , 2445  , 3 , 4 )
			elseif el==2	then
				GiveItem ( role , 0 , 3076  , 3 , 4 )
			elseif el==3	then
				GiveItem ( role , 0 , 0563  , 3 , 4 )
			elseif el==4	then	
				GiveItem ( role , 0 , 0583  , 3 , 4 )
			elseif el==5	then
				GiveItem ( role , 0 , 3050  , 3 , 4 )
			end
		elseif star>=13101 and star<=15100 then
			local el = math.random ( 1, 2 )
			if el==1  then
				GiveItem ( role , 0 , 0849  , 1 , 4 )
			elseif el==2  then
				GiveItem ( role , 0 , 0680  , 1 , 4 )
			end
		elseif star>=15101 and star<=19300then
			local el1= math.random ( 1, 6 )
			if el1==1  then
				GiveItem ( role , 0 , 2438  , 5 , 4 )
			elseif el1==2 then
				GiveItem ( role , 0 , 2419  , 3 , 4 )
			elseif el1==3 then
				GiveItem ( role , 0 , 2386  , 4 , 4 )
			elseif el1==4 then
				GiveItem ( role , 0 , 0179  , 1 , 4 )
			elseif el1==5 then
				GiveItem ( role , 0 , 3084  , 1 , 4 )
			elseif el1==6 then
				GiveItem ( role , 0 , 3085  , 1 , 4 )
			end
		elseif star>=19301 and star<=19600then
			local el1= math.random ( 1, 5 )
			if el1==1  then
				GiveItem ( role , 0 , 0863  , 1 , 4 )
				local message = cha_name.."open the Aladdin Parcel,he get the Gem of Rage" 
				Notice ( message )
			elseif el1==2 then
				GiveItem ( role , 0 , 0860  , 1 , 4 )
				local message1 = cha_name.."open the Aladdin Parcel,he get the Gem of the Wind" 
				Notice ( message1 )
			elseif el1==3 then
				GiveItem ( role , 0 , 0861  , 1 , 4 )
				local message2 = cha_name.."open the Aladdin Parcel,he get the Gem of Striking" 
				Notice ( message2 )
			elseif el1==4 then
				GiveItem ( role , 0 , 0862  , 1 , 4 )
				local message3 = cha_name.."open the Aladdin Parcel,he get the Gem of Colossus" 
				Notice ( message3 )
			elseif el1==5 then
				GiveItem ( role , 0 , 1012  , 1 , 4 )
				local message4 = cha_name.."open the Aladdin Parcel,he get the Gem of Soul" 
				Notice ( message4 )
			end

		elseif star==19601 then
			GiveItem ( role , 0 , 0192  , 1 , 4  )
			local message8= cha_name.."open the Aladdin Parcel,he get the Chest of Kylin" 
			Notice ( message8 )

		elseif star>=19601 and star<=20000 then	
			GiveItem ( role , 0 , 2224  , 1 , 4  )
			local message8= cha_name.."open the Aladdin Parcel,he get the Modern Apparel Chest" 
			Notice ( message8 )
		end
	
end

----情人节戒指----
function ItemUse_QRJJZ (role, Item )

	local x, y = GetChaPos(role)
	local map_name = GetChaMapName (role)
	x = math.floor (x*0.01)
	y = math.floor (y*0.01)
	local t = {} 
	t[0] = DEFER 
	t[1] = GetTeamCha(role, 0 )  
	t[2] = GetTeamCha(role, 1 )   
	t[3] = GetTeamCha(role, 2 )    
	t[4] = GetTeamCha(role, 3 )
	local item_count = CheckBagItem ( role , 3101 )	 ----情人节戒指
	if item_count <= 0 then  
	end
end 

-------------------------------------------------85BB系列 By dina
----------白银戒指兑换券
function ItemUse_byjz( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 1107  , 1 , 4  )
		local message = cha_name.."打开白银戒指兑换券惊喜地获得 戈壁指环" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 1108, 1 , 4  ) 
		local message1 = cha_name.."打开白银戒指兑换券惊喜地获得 宁静指环" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 1109, 1 , 4  ) 
		local message2 = cha_name.."打开白银戒指兑换券惊喜地获得 自然指环" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 1110, 1 , 4  ) 
		local message3 = cha_name.."打开白银戒指兑换券惊喜地获得 雪语指环" 
		Notice ( message3 )
	elseif star==5 then
		GiveItem ( role , 0 , 1112, 1 , 4  ) 
		local message4 = cha_name.."打开白银戒指兑换券惊喜地获得 嗜血指环" 
		Notice ( message4 )
	elseif star==6 then
		GiveItem ( role , 0 , 1113, 1 , 4  ) 
		local message5 = cha_name.."打开白银戒指兑换券惊喜地获得 猛禽指环" 
		Notice ( message5 )
	elseif star==7 then
		GiveItem ( role , 0 , 1114, 1 , 4  ) 
		local message6 = cha_name.."打开白银戒指兑换券惊喜地获得 轻盈指环" 
		Notice ( message6 )
	elseif star==8 then
		GiveItem ( role , 0 , 1862, 1 , 4  ) 
		local message7 = cha_name.."打开白银戒指兑换券惊喜地获得 灵气指环" 
		Notice ( message7 )
	elseif star==9 then
		GiveItem ( role , 0 , 2209, 1 , 4  ) 
		local message8 = cha_name.."打开白银戒指兑换券惊喜地获得 无畏指环" 
		Notice ( message8 )
	else
		GiveItem ( role , 0 , 1111, 1 , 4  ) 
		local message9 = cha_name.."打开白银戒指兑换券惊喜地获得 失落指环" 
		Notice ( message9 )
	end
end

----------黄金戒指兑换券
function ItemUse_hjjz( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 2308  , 1 , 4  )
		local message = cha_name.."打开黄金戒指兑换券惊喜地获得 猎豹急速" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 2309, 1 , 4  ) 
		local message1 = cha_name.."打开黄金戒指兑换券惊喜地获得 拟狮怒吼" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 2310, 1 , 4  ) 
		local message2 = cha_name.."打开黄金戒指兑换券惊喜地获得 古飙猛俘" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 2311, 1 , 4  ) 
		local message3 = cha_name.."打开黄金戒指兑换券惊喜地获得 齿鲸锐捕" 
		Notice ( message3 )
	elseif star==5 then
		GiveItem ( role , 0 , 2316, 1 , 4  ) 
		local message4 = cha_name.."打开黄金戒指兑换券惊喜地获得 角鹿漫步" 
		Notice ( message4 )
	elseif star==6 then
		GiveItem ( role , 0 , 2317, 1 , 4  ) 
		local message5 = cha_name.."打开黄金戒指兑换券惊喜地获得 恐狼之牙" 
		Notice ( message5 )
	elseif star==7 then
		GiveItem ( role , 0 , 2318, 1 , 4  ) 
		local message6 = cha_name.."打开黄金戒指兑换券惊喜地获得 龙鹰之爪" 
		Notice ( message6 )
	elseif star==8 then
		GiveItem ( role , 0 , 2319, 1 , 4  ) 
		local message7 = cha_name.."打开黄金戒指兑换券惊喜地获得 巨猿之臂" 
		Notice ( message7 )
	elseif star==9 then
		GiveItem ( role , 0 , 2320, 1 , 4  ) 
		local message8 = cha_name.."打开黄金戒指兑换券惊喜地获得 犰狳之鳞" 
		Notice ( message8 )
	else
		GiveItem ( role , 0 , 2321, 1 , 4  ) 
		local message9 = cha_name.."打开黄金戒指兑换券惊喜地获得 火鸟之翼" 
		Notice ( message9 )
	end
end

----------钻石戒指兑换券
function ItemUse_zsjz( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 2322  , 1 , 4  )
		local message = cha_name.."打开钻石戒指兑换券惊喜地获得 彩黎" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 2345, 1 , 4  ) 
		local message1 = cha_name.."打开钻石戒指兑换券惊喜地获得 朝阳" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 2346, 1 , 4  ) 
		local message2 = cha_name.."打开钻石戒指兑换券惊喜地获得 晴空" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 2347, 1 , 4  ) 
		local message3 = cha_name.."打开钻石戒指兑换券惊喜地获得 冰结" 
		Notice ( message3 )
	elseif star==5 then
		GiveItem ( role , 0 , 2397, 1 , 4  ) 
		local message4 = cha_name.."打开钻石戒指兑换券惊喜地获得 启雷" 
		Notice ( message4 )
	elseif star==6 then
		GiveItem ( role , 0 , 2398, 1 , 4  ) 
		local message5 = cha_name.."打开钻石戒指兑换券惊喜地获得 赤雾" 
		Notice ( message5 )
	elseif star==7 then
		GiveItem ( role , 0 , 2399, 1 , 4  ) 
		local message6 = cha_name.."打开钻石戒指兑换券惊喜地获得 蓝霜" 
		Notice ( message6 )
	elseif star==8 then
		GiveItem ( role , 0 , 2400, 1 , 4  ) 
		local message7 = cha_name.."打开钻石戒指兑换券惊喜地获得 绿风" 
		Notice ( message7 )
	elseif star==9 then
		GiveItem ( role , 0 , 2401, 1 , 4  ) 
		local message8 = cha_name.."打开钻石戒指兑换券惊喜地获得 紫雨" 
		Notice ( message8 )
	else
		GiveItem ( role , 0 , 2402, 1 , 4  ) 
		local message9 = cha_name.."打开钻石戒指兑换券惊喜地获得 晧雪" 
		Notice ( message9 )
	end
end

----------伯爵项链兑换券
function ItemUse_bjxl( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 5 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 2405  , 1 , 4  )
		local message = cha_name.."打开伯爵项链兑换券惊喜地获得 星辰之光" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 2406, 1 , 4  ) 
		local message1 = cha_name.."打开伯爵项链兑换券惊喜地获得 星辰之灵" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 2407, 1 , 4  ) 
		local message2 = cha_name.."打开伯爵项链兑换券惊喜地获得 星辰之护" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 2494, 1 , 4  ) 
		local message3 = cha_name.."打开伯爵项链兑换券惊喜地获得 星辰之风" 
		Notice ( message3 )
	else
		GiveItem ( role , 0 , 2497, 1 , 4  ) 
		local message4 = cha_name.."打开伯爵项链兑换券惊喜地获得 星辰之魂" 
		Notice ( message4 )
	end
end

----------侯爵项链兑换券
function ItemUse_hjxl( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 5 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 2498  , 1 , 4  )
		local message = cha_name.."打开侯爵项链兑换券惊喜地获得 湮灭之光" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 2506, 1 , 4  ) 
		local message1 = cha_name.."打开侯爵项链兑换券惊喜地获得 湮灭之灵" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 2507, 1 , 4  ) 
		local message2 = cha_name.."打开侯爵项链兑换券惊喜地获得 湮灭之护" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 2508, 1 , 4  ) 
		local message3 = cha_name.."打开侯爵项链兑换券惊喜地获得 湮灭之风" 
		Notice ( message3 )
	else
		GiveItem ( role , 0 , 2509, 1 , 4  ) 
		local message4 = cha_name.."打开侯爵项链兑换券惊喜地获得 湮灭之魂" 
		Notice ( message4 )
	end
end

----------公爵项链兑换券
function ItemUse_gjxl( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 5 )
	--SystemNotice(role ,"star=="..star)
	if star==1 then
		GiveItem ( role , 0 , 2510  , 1 , 4  )
		local message = cha_name.."打开公爵项链兑换券惊喜地获得 灵瞳之光" 
		Notice ( message )
	elseif star==2 then
		GiveItem ( role , 0 , 2511, 1 , 4  ) 
		local message1 = cha_name.."打开公爵项链兑换券惊喜地获得 灵瞳之灵" 
		Notice ( message1 )
	elseif star==3 then
		GiveItem ( role , 0 , 2512, 1 , 4  ) 
		local message2 = cha_name.."打开公爵项链兑换券惊喜地获得 灵瞳之护" 
		Notice ( message2 )
	elseif star==4 then
		GiveItem ( role , 0 , 2513, 1 , 4  ) 
		local message3 = cha_name.."打开公爵项链兑换券惊喜地获得 灵瞳之风" 
		Notice ( message3 )
	else
		GiveItem ( role , 0 , 2514, 1 , 4  ) 
		local message4 = cha_name.."打开公爵项链兑换券惊喜地获得 灵瞳之魂" 
		Notice ( message4 )
	end
end

---------------------------------神之祈福包
function ItemUse_SZQFB( role, Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr( role, ATTR_JOB) --取职业
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"要打开神之祈福包需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 4276 , 1 , 4 )--------------封印的雪月刺	
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 4276 , 1 , 4 )--------------封印的雪月刺	
	elseif cha_type == 2  and job~=0 then
		local dina=math.random ( 1, 2 )
	    if dina==1 then
		GiveItem ( role , 0 , 4281  , 1 , 4 )-------------封印的狂雪刀
		else
		GiveItem ( role , 0 , 4275  , 1 , 4 )------------封印的冷凝重剑
		end
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		local dina1=math.random ( 1, 2 )
	    if dina1==1 then
		GiveItem ( role , 0 , 4278  , 1 , 4 )-------------封印的寒魅弓
		else
		GiveItem ( role , 0 , 4277  , 1 , 4 )------------封印的雪魔枪
		end
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		local dina2=math.random ( 1, 2 )
	    if dina2==1 then
		GiveItem ( role , 0 , 4277  , 1 , 4 )------------封印的雪魔枪
		else
		GiveItem ( role , 0 , 4278  , 1 , 4 )-------------封印的寒魅弓
		end
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
		local dina3=math.random ( 1, 2 )
	    if dina3==1 then
		GiveItem ( role , 0 , 4279  , 1 , 4 )------------封印的寒羽之仗
		else
		GiveItem ( role , 0 , 4280  , 1 , 4 )-------------封印的鬼霜之杖
		end
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
	    GiveItem ( role , 0 , 4279  , 1 , 4 )------------封印的寒羽之仗
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
	    GiveItem ( role , 0 , 4280  , 1 , 4 )-------------封印的鬼霜之杖
	elseif cha_type == 1 and  job==1 then
	    GiveItem ( role , 0 , 4274  , 1 , 4 )-------------封印的冷凝轻剑
	elseif cha_type == 1 and  job==9 then
	    GiveItem ( role , 0 , 4274  , 1 , 4 )-------------封印的冷凝轻剑
	elseif cha_type == 3 and  job==1 then
	    GiveItem ( role , 0 , 4274  , 1 , 4 )-------------封印的冷凝轻剑
	elseif cha_type == 3 and  job==9 then
	    GiveItem ( role , 0 , 4274  , 1 , 4 )-------------封印的冷凝轻剑
	else 
		SystemNotice(role ,"目前不能使用，请找各城职业导师转职.")
		UseItemFailed ( role )
		return
	end
end


---------------------------------圣之降临包
function ItemUse_SZJFB( role, Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr( role, ATTR_JOB) --取职业
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"要打开圣之降临包需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )--------------修罗之海魄		
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )--------------修罗之海魄		
	elseif cha_type == 2  and job~=0 then
		GiveItem ( role , 0 , 2577 , 1 , 4 )----------------哈迪斯之强悍
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )-----------------地狱之羿羽
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )-----------------地狱之羿羽
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
		local dina=math.random ( 1, 2 )
	    if dina==1 then
		GiveItem ( role , 0 , 2582  , 1 , 4 )------------幽冥之晶灵
		else
		GiveItem ( role , 0 , 2581  , 1 , 4 )-------------冥河之魔化
		end
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
	    GiveItem ( role , 0 , 2582  , 1 , 4 )------------幽冥之晶灵
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
	    GiveItem ( role , 0 , 2581  , 1 , 4 )-------------冥河之魔化
	elseif cha_type == 1 and  job==1 then
	    GiveItem ( role , 0 , 2578  , 1 , 4 )-------------黑暗之威力
	elseif cha_type == 1 and  job==9 then
	    GiveItem ( role , 0 , 2578  , 1 , 4 )-------------黑暗之威力
	elseif cha_type == 3 and  job==1 then
	    GiveItem ( role , 0 , 2578  , 1 , 4 )-------------黑暗之威力
	elseif cha_type == 3 and  job==9 then
	    GiveItem ( role , 0 , 2578  , 1 , 4 )-------------黑暗之威力
	else 
		SystemNotice(role ,"目前不能使用，请找各城职业导师转职.")
		UseItemFailed ( role )
		return
	end
end

---------------------------------祥之护佑包
function ItemUse_XZHYB( role, Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"要打开祥之护佑包需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	else
		GiveItem ( role , 0 , 4282 , 1 , 4 )
	end
end

-----------------------------------------------------08鼠年春节系列红包kokora-----------------------------------------------------------

----------------------------------------------新手鼠年红包----------------------------------------------------------
function ItemUse_springgiftA (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用新手鼠年红包" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开新手鼠年红包至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 100 )
	local cha_name = GetChaDefaultName ( role )
	local item_name = ""
	if  sc <=60 then	
		GiveItem ( role , 0 , 3094 , 5 , 4 )                      ---------------双倍经验增幅器   获得机率60%
		item_name = "双倍经验增幅器"
	elseif sc <=76 then		
		GiveItem ( role , 0 , 0849 , 5 , 4 )                      ---------------组队经验果   获得机率16%
		item_name = "组队经验果"
	elseif sc <=86 then
		GiveItem ( role , 0 , 3096 , 5 , 4 )                      ---------------双倍掉料增幅器   获得机率10%
		item_name = "双倍掉料增幅器"
	elseif sc <=91 then
		GiveItem ( role , 0 , 3095 , 2 , 4 )                      ---------------高级努力增幅器   获得机率5%
		item_name = "高级努力增幅器"
	elseif sc <=96 then
		GiveItem ( role , 0 , 3097 , 2 , 4 )                      ---------------高级财富增幅器   获得机率5%
		item_name = "高级财富增幅器"
	elseif sc <=98 then
		GiveItem ( role , 0 , 1036 , 1 , 4 )                      ---------------魔幻女神卡   获得机率2%
		item_name = "魔幻女神卡"
	else   
		GiveItem ( role , 0 , 1019 , 1 , 4 )                      ---------------迷你黑龙包   获得机率2%
		item_name = "迷你黑龙包"
	end
	Notice ( "恭喜玩家" ..cha_name.."打开新手鼠年红包,惊喜的获得"..item_name )
	
end

------------------------------------------------高级鼠年红包-------------------------------------------------------
function ItemUse_springgiftB (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用高级鼠年红包" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开高级鼠年红包至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 49 )
	local ItemId = 0
	
	if sc <=14 then	
		ItemId = 3457						     -------------纳卡符石       获得机率14%

	elseif sc <=26 then		
		local GoodItem = {}
		GoodItem[0] = 1923                                       -------------寒冰封印的迷幻之刺       获得机率12%
		GoodItem[1] = 1905                                       -------------寒冰封印的迷之长枪       获得机率12%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]

	elseif sc <=36 then
		local GoodItem = {}
		GoodItem[0] = 0890                                       -------------装备加固剂       获得机率10%
		GoodItem[1] = 1916                                       -------------寒冰封印的迷咒法杖       获得机率10%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]

	elseif sc <=44 then
		local GoodItem = {}
		GoodItem[0] = 1897                                       -------------寒冰封印的迷之利刃       获得机率8%
		GoodItem[1] = 1894                                       -------------寒冰封印的迷之裁决       获得机率8%
		GoodItem[2] = 1909                                       -------------寒冰封印的迷法之杖       获得机率8%
	
		local Good_C = math.random ( 1, 3 )-1
		ItemId = GoodItem[Good_C]

	elseif sc <=47 then
		local GoodItem = {}
		GoodItem[0] = 2536                                       -------------马特躯石       获得机率3%
		GoodItem[1] = 2539                                       -------------杰克躯石       获得机率3%
		GoodItem[2] = 2542                                       -------------伊丽躯石       获得机率3%
		GoodItem[3] = 2545                                       -------------维克躯石       获得机率3%
	
		local Good_C = math.random ( 1, 4 )-1
		ItemId = GoodItem[Good_C]

	else  local GoodItem = {}
		GoodItem[0] = 0891                                       -------------装备催化粉       获得机率2%
		GoodItem[1] = 2533                                       -------------梅尔躯石          获得机率2%
		GoodItem[2] = 2530                                       -------------戴维躯石          获得机率2%
	
		local Good_C = math.random ( 1, 3 )-1
		ItemId = GoodItem[Good_C]
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role )
	GiveItem ( role , 0 , ItemId , 1 , 4 )
	local message = "恭喜玩家" ..cha_name.."打开高级鼠年红包,惊喜的获得"..itemname  
	Notice ( message )
end

----------------------------------------------超级鼠年红包----------------------------------------------------------
function ItemUse_springgiftC (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用超级鼠年红包" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开超级鼠年红包至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 1000 )
	local cha_name = GetChaDefaultName ( role )
	local item_name = ""
	local cha_type = GetChaTypeID ( role ) 

	if  sc <=239 then
		if cha_type == 1  then
		GiveItem ( role , 0 , 5651 , 1 , 4 )                      ---------------新春套装-蓝崎头部   获得机率23.9%
		item_name = "新春套装-蓝崎头部"
		elseif	cha_type == 2  then
		GiveItem ( role , 0 , 5655 , 1 , 4 )                      ---------------新春套装-卡西斯头部   获得机率23.9%
		item_name = "新春套装-卡西斯头部"
		elseif	cha_type == 3  then
		GiveItem ( role , 0 , 5659 , 1 , 4 )                      ---------------新春套装-菲利尔头部   获得机率23.9%
		item_name = "新春套装-菲利尔头部"
		elseif	cha_type == 4  then
		GiveItem ( role , 0 , 5695 , 1 , 4 )                      ---------------新春套装-艾米头部   获得机率23.9%
		item_name = "新春套装-艾米头部"
		end
	elseif sc <=439 then
		if cha_type == 1  then
		GiveItem ( role , 0 , 5652 , 1 , 4 )                      ---------------新春套装-蓝崎身体   获得机率20%
		item_name = "新春套装-蓝崎身体"
		elseif	cha_type == 2  then
		GiveItem ( role , 0 , 5656 , 1 , 4 )                      ---------------新春套装-卡西斯身体   获得机率20%
		item_name = "新春套装-卡西斯身体"
		elseif	cha_type == 3  then
		GiveItem ( role , 0 , 5660 , 1 , 4 )                      ---------------新春套装-菲利尔身体   获得机率20%
		item_name = "新春套装-菲利尔身体"
		elseif	cha_type == 4  then
		GiveItem ( role , 0 , 5696 , 1 , 4 )                      ---------------新春套装-艾米身体   获得机率20%
		item_name = "新春套装-艾米身体"
		end
	elseif sc <=639 then
		if cha_type == 1  then
		GiveItem ( role , 0 , 5653 , 1 , 4 )                      ---------------新春套装-蓝崎手套   获得机率20%
		item_name = "新春套装-蓝崎手套"
		elseif	cha_type == 2  then
		GiveItem ( role , 0 , 5657 , 1 , 4 )                      ---------------新春套装-卡西斯手套   获得机率20%
		item_name = "新春套装-卡西斯手套"
		elseif	cha_type == 3  then
		GiveItem ( role , 0 , 5693 , 1 , 4 )                      ---------------新春套装-菲利尔手套   获得机率20%
		item_name = "新春套装-菲利尔手套"
		elseif	cha_type == 4  then
		GiveItem ( role , 0 , 5697 , 1 , 4 )                      ---------------新春套装-艾米手套   获得机率20%
		item_name = "新春套装-艾米手套"
		end
	elseif sc <=839 then
		if cha_type == 1  then
		GiveItem ( role , 0 , 5654 , 1 , 4 )                      ---------------新春套装-蓝崎鞋子   获得机率20%
		item_name = "新春套装-蓝崎鞋子"
		elseif	cha_type == 2  then
		GiveItem ( role , 0 , 5658 , 1 , 4 )                      ---------------新春套装-卡西斯鞋子   获得机率20%
		item_name = "新春套装-卡西斯鞋子"
		elseif	cha_type == 3  then
		GiveItem ( role , 0 , 5694 , 1 , 4 )                      ---------------新春套装-菲利尔鞋子   获得机率20%
		item_name = "新春套装-菲利尔鞋子"
		elseif	cha_type == 4  then
		GiveItem ( role , 0 , 5698 , 1 , 4 )                      ---------------新春套装-艾米鞋子   获得机率20%
		item_name = "新春套装-艾米鞋子"
		end
	elseif sc <=909 then
		GiveItem ( role , 0 , 1012 , 1 , 4 )                      ---------------加纳之神          获得机率7%
		item_name = "加纳之神"
	elseif sc <=939 then
		GiveItem ( role , 0 , 0863 , 1 , 4 )                      ---------------炎玉   获得机率3%
		item_name = "炎玉"
	elseif sc <=969 then
		GiveItem ( role , 0 , 0862 , 1 , 4 )                      ---------------岩玉   获得机率3%
		item_name = "岩玉"
	elseif sc <=979 then
		GiveItem ( role , 0 , 0864 , 1 , 4 )                      ---------------黑龙之瞳   获得机率1%
		item_name = "黑龙之瞳"
	elseif sc <=989 then
		GiveItem ( role , 0 , 0865 , 1 , 4 )                      ---------------黑龙之魂   获得机率1%
		item_name = "黑龙之魂"
	elseif sc <=999 then
		GiveItem ( role , 0 , 0866 , 1 , 4 )                      ---------------黑龙之心   获得机率1%
		item_name = "黑龙之心"
	else   
		GiveItem ( role , 0 , 0094 , 1 , 4 )                      ---------------元帅之首   获得机率0.1%
		item_name = "元帅之首"
	end
	local message = "恭喜玩家" ..cha_name.."打开超级鼠年红包,惊喜的获得"..item_name  
	Notice ( message )
	
end

-----------------------------------------------------------------------end----------------------------------------------------------------------

----------------------------------------------------------------------08年商品调整(改名,效果不变) kokora-----------------------------------------------

------------------------------------------------------------------幸运洛克藏宝图--------------------------------------------------- 
function ItemUse_rockluck ( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"身上最少需要1个空位")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 2998 )
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "同时只能携带一个海盗罗盘" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2998 , 1 , 0 )
end

-------------------------------------------------------- 超级转生彩票-----------------------------------------------------------
function ItemUse_superticket( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000 )

	if  star==1 then
		GiveItem ( role , 0 , 2941, 1 , 4  ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = "玩家"..cha_name.."人品爆发,打开超级转生彩票惊喜地获得1张转生卡." 
		Notice ( message )
	elseif star>1 and star<=10 then
		GiveItem ( role , 0 , 3016, 1 , 4  ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = "玩家"..cha_name.."人品爆发,打开超级转生彩票惊喜地获得1张黑龙幻体召唤卷." 
		Notice ( message )
	elseif star>=11 and star<190 then
		GiveItem ( role , 0 , 0992, 1 , 4  ) 
	elseif star>=190 and star<=1000 then
		GiveItem ( role , 0 , 3885, 1 , 4  ) 
	end
end

----------------------------------------------------------------- 超级魔幻女神卡--------------------------------------------------
function ItemUse_supergodness( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 1000 )

	if star<=8 then
		GiveItem ( role , 0 , 1014  , 1 , 4  )
		local message = cha_name.."打开超级魔幻女神卡惊喜地获得 女神试炼仪式" 
		Notice ( message )
	elseif star>=9 and star<=17 then
		GiveItem ( role , 0 , 271, 1 , 4  ) 
		local message1 = cha_name.."打开超级魔幻女神卡惊喜地获得 天使骰子" 
		Notice ( message1 )
	elseif star>=18 and star<=27 then
		GiveItem ( role , 0 , 1012, 1 , 4  ) 
		local message3 = cha_name.."打开超级魔幻女神卡惊喜地获得 加纳之神" 
		Notice ( message3 )
	elseif star>=28 and star<=227 then
		GiveItem ( role , 0 , 3886, 1 , 4  ) 
	else
		GiveItem ( role , 0 , 3830, 5 , 4  ) 
	end
end

-----------------------------------------------------------白金黑龙彩票--------------------------------------------------------------
function ItemUse_platinadress( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 2370  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 2368  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 2369  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 2367  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end

------------------------------------------------------------白金年兽彩票------------------------------------------------------
function ItemUse_platinayear( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 2552  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 2550  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 2551  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 2549  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end

----------------------------------------------------------------------白金辉煌彩票----------------------------------------------------
function ItemUse_platinareful( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"背包需要1个格子")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 1115  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 1117  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 1118  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 1116  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end

---------------------------------------------------------------------新手十倍经验果-------------------------------------------------
function ItemUse_moliimm ( role , Item )

	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >49 then
		SystemNotice ( role , "49级以上角色不能使用该新手十倍经验果" )
		UseItemFailed ( role )
		return	
	end
	local statelv = 9
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local ret = UseAexpItem(role,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	else
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	
end

--------------------------------------------------------------中阶五倍经验果-------------------------------------------------
function ItemUse_molibless ( role , Item )
	
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv > 70  then
		SystemNotice ( role , "70级以上角色不能使用中阶五倍经验果！" )
		UseItemFailed ( role )
		return	
	end

	local statelv = 7
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local ret = UseAexpItem(role,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	else
		local ret = UseAexpItem(Cha_Boat,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	end
	SystemNotice ( role ,"感受到中阶五倍经验果的效果,半小时内,打怪经验成5倍增长喔!" )
end

--------------------------------------------------------------摩力祝福果-------------------------------------------------
function ItemUse_molibless1 ( role , Item )
	
	
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv < 50 then
		SystemNotice ( role , "50级以下角色不能使用摩力祝福果！" )
		UseItemFailed ( role )
		return
	elseif lv > 75  then
		SystemNotice ( role , "75级以上角色不能使用摩力祝福果！" )
		UseItemFailed ( role )
		return	
	end

	local statelv = 7

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local ret = UseAexpItem(role,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	else
		local ret = UseAexpItem(Cha_Boat,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	end
	SystemNotice ( role ,"感受到摩力祝福果的效果,半小时内,打怪经验成5倍增长喔!" )
end  

--------------------------------------------------------------摩力团队果-----------------------------------------------------
function ItemUse_moliteam( role , Item )

	local statelv = 1
	
	local ZDJYstatelv=GetChaStateLv(role,STATE_ZDSBJYGZ)
	if ZDJYstatelv~= 0 then
		SystemNotice ( role , "你现在有团队的1.5倍经验加成，请不要浪费。" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_ZDSBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_ZDSBJYGZ , statelv , statetime )
	end
end

-------------------------------------------------------------------春风镇传送石-----------------------------------------------------------------------
function Jz_Script_spring(role, Item )

	local i = CheckBagItem(role,5619)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "飞行是件很累的事情，请保持100％的hp和sp哦")
		UseItemFailed ( role )
		return
	end
------MoveCity增加监狱岛判断
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "当前地图不能传送" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5619,1)
			if j == 1 then
				MoveCity(role,"春风镇")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

------------------------------------------------------------夏岛传送石-----------------------------------------------------------------------------
function Jz_Script_summer(role, Item )

	local i = CheckBagItem(role,5620)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "飞行是件很累的事情，请保持100％的hp和sp哦")
		UseItemFailed ( role )
		return
	end
------MoveCity增加监狱岛判断
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "当前地图不能传送" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5620,1)
			if j == 1 then
				MoveCity(role,"夏岛")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

----------------------------------------------------------------秋岛传送石-------------------------------------------------------------------------
function Jz_Script_autumn(role, Item )

	local i = CheckBagItem(role,5621)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "飞行是件很累的事情，请保持100％的hp和sp哦")
		UseItemFailed ( role )
		return
	end
------MoveCity增加监狱岛判断
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "当前地图不能传送" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5621,1)
			if j == 1 then
				MoveCity(role,"秋岛")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

-----------------------------------------------------------------加勒比传送石------------------------------------------------------------------------
function Jz_Script_caribbean (role, Item )

	local i = CheckBagItem(role,5622)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "飞行是件很累的事情，请保持100％的hp和sp哦")
		UseItemFailed ( role )
		return
	end
------MoveCity增加监狱岛判断
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "当前地图不能传送" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5622,1)
			if j == 1 then
				MoveCity(role,"加勒比")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

------------------------------------------------------------------地狱4层传送石----------------------------------------------------------------------
function Jz_Script_4clime(role, Item )

	local i = CheckBagItem(role,5623)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "飞行是件很累的事情，请保持100％的hp和sp哦")
		UseItemFailed ( role )
		return
	end
------MoveCity增加监狱岛判断
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "当前地图不能传送" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5623,1)
			if j == 1 then
				MoveCity(role,"加勒比地狱4层")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

-----------------------------------------------------------------------圣雪山传送石---------------------------------------------------------------------
function Jz_Script_jokul(role, Item )

	local i = CheckBagItem(role,5624)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "飞行是件很累的事情，请保持100％的hp和sp哦")
		UseItemFailed ( role )
		return
	end
------MoveCity增加监狱岛判断
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "当前地图不能传送" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5624,1)
			if j == 1 then
				MoveCity(role,"圣雪山")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

-------------------------------------------------------------------雷霆堡传送石-----------------------------------------------------------------------
function Jz_Script_lante(role, Item )

	local i = CheckBagItem(role,5625)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "飞行是件很累的事情，请保持100％的hp和sp哦")
		UseItemFailed ( role )
		return
	end
------MoveCity增加监狱岛判断
	local map_name = GetChaMapName ( role )
	if map_name == "prisonisland" then
		SystemNotice ( role , "当前地图不能传送" )
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,5625,1)
			if j == 1 then
				MoveCity(role,"雷霆堡")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

----------------------------------------------------------------------08年商品调整(改名,效果提升) kokora-----------------------------------------------

-------------------------------------超级生命恢复剂-----------------------------------------
function ItemUse_superment( role , Item )

	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 1500 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大sp时返回为最大sp
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end

------------------------------------法力圣水-----------------------------------------
function ItemUse_holywater( role , Item ) 

	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 250
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --加超过最大sp时返回为最大sp
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

------------------------------------------------------防御灯笼-------------------------------------------------------------
function ItemUse_lantern ( role , Item )

	local statelv = 2
--	local ChaStateLv = GetChaStateLv ( role , STATE_LANTERN )
--	if ChaStateLv > statelv then
--		SystemNotice ( role , "已使用更高级的物品，请稍候再用" )
--		UseItemFailed ( role )
--		return
--	end
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_LANTERN , statelv , statetime )
	else
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
end

---------------------------------------------------------------超人饺子-----------------------------------------------------------------
function ItemUse_supdumpling ( role , Item )

  	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	hp = hp + 0.35*mxhp 

	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)

end

--------------------------------迅捷幻行水 移动速度提高50%小幅度降低防御,持续时间5分钟---------------------------------------------------
function ItemUse_rapiddrug ( role , Item )

	local statelv = 1
	local statetime = 300
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_RAPIDDRUG , statelv , statetime )
	else
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
end

--战狂药剂 瞬间提高攻击力500同时防御力降低60持续时间10分钟------------------------------------------------------
function ItemUse_warsit ( role , Item )

	Rem_State_StarUnnormal ( role )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_WARSIT , statelv , statetime )
	else
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
end

------------------------------------------玄龙装甲 瞬间提高攻击力100同时防御力降低30持续时间10分钟--------------------------------------------
function ItemUse_darkdress ( role , Item )

	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_DARKDRESS , statelv , statetime )
	else
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
end

---------------------------------------------------附魔针剂---------------------------------------------------------------------
function ItemUse_demon( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_YSJSQH )
	State [5] = GetChaStateLv ( role , STATE_GREATSH )
	State [6] = GetChaStateLv ( role , STATE_MIRAGE )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"药水加强属性效果不可叠加")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 900
	AddState( role , role , STATE_DEMON , statelv , statetime )

end

----------------------------------------------------------------巨甲针剂-------------------------------------------------------------------
function ItemUse_greatsh( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_YSJSQH )
	State [5] = GetChaStateLv ( role , STATE_DEMON )
	State [6] = GetChaStateLv ( role , STATE_MIRAGE )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )


	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"药水加强属性效果不可叠加")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 900
	AddState( role , role , STATE_GREATSH , statelv , statetime )

end

----------------------------------------------------------------幻灵针剂-------------------------------------------------------------------
function ItemUse_mirage( role , Item )

	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_YSJSQH )
	State [5] = GetChaStateLv ( role , STATE_DEMON )
	State [6] = GetChaStateLv ( role , STATE_GREATSH )
	State [7] = GetChaStateLv ( role , STATE_DEVOTE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )




	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"药水加强属性效果不可叠加")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 900
	AddState( role , role , STATE_MIRAGE , statelv , statetime )

end

--------------------------------------------------------------------专注针剂-------------------------------------------------------------------------
function ItemUse_devote( role , Item )

	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_YSJSQH )
	State [5] = GetChaStateLv ( role , STATE_DEMON )
	State [6] = GetChaStateLv ( role , STATE_GREATSH )
	State [7] = GetChaStateLv ( role , STATE_MIRAGE )
	State [8] = GetChaStateLv ( role , STATE_VIGOUR )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"药水加强属性效果不可叠加")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 900
	AddState( role , role , STATE_DEVOTE , statelv , statetime )

end

--------------------------------------------------------------力狂针剂--------------------------------------------------------------------
function ItemUse_vigour( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 8
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	State [4] = GetChaStateLv ( role , STATE_YSJSQH )
	State [5] = GetChaStateLv ( role , STATE_DEMON )
	State [6] = GetChaStateLv ( role , STATE_GREATSH )
	State [7] = GetChaStateLv ( role , STATE_MIRAGE )
	State [8] = GetChaStateLv ( role , STATE_DEVOTE )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"药水加强属性效果不可叠加")
		UseItemFailed ( role )
		return
	end	

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 900
	AddState( role , role , STATE_VIGOUR , statelv , statetime )

end

---------------------------------------------------------------新手双倍经验果---------------------------------------------------------
function ItemUse_molilucky( role , Item )

	local statelv = 1
	local lv_star = GetChaAttr( role , ATTR_LV) 
	if lv_star > 40 then
		SystemNotice ( role , "只在40级以前有效" )
		UseItemFailed ( role )
		return
	end
	local statetime = 60+5*(lv_star-1)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local ret = UseAexpItem(role,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	else
		local ret = UseAexpItem(Cha_Boat,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	end
end 

-----------------------------------------------------------------高阶三倍经验果-----------------------------------------------------------
function ItemUse_moliegis( role , Item )
	
	local Lv = Lv( role )
	if Lv < 50 then
		SystemNotice(role ,"等级不足50级不可以使用")
		UseItemFailed ( role )
		return
	end

	local statelv = 5
	local ZBMain= GetChaAttr(role,ATTR_EXTEND0)
	local ZBNType= math.floor(ZBMain/10)      ---第几次占卜
	local ZBNMain= math.mod(ZBMain,10 )			---BUFF OR DEBUFF
	local ZBday = GetChaAttr(role,ATTR_EXTEND2)		--占卜天数
	local ZBstate=GetChaAttr(role, ATTR_EXTEND1)	--
	local ZBstate1=math.floor(ZBstate/10)			--占卜效果注册
	local ZBstate2=math.mod(ZBstate,10)				--占卜类型
	local now_day=os.date("%d")
	now_day=tonumber(now_day)
	if now_day==ZBday and ZBstate2==7 then
		statelv=7
	end
	
	
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local ret = UseAexpItem(role,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	else
		local ret = UseAexpItem(Cha_Boat,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	end
	SystemNotice ( role ,"感受到高阶三倍经验果的效果,半小时内可获得3倍打怪经验喔" )
	if statelv==7 then 
		SystemNotice ( role,"占卜命运启动,半小时内可获得5倍打怪经验．" )
	end
end

-------------------------------------------------------------高阶三倍掉料果/魔力财富果-----------------------------------------------------------------------------
function ItemUse_molimoney( role , Item )

	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"等级不足60级不可以使用")
		UseItemFailed ( role )
		return
	end


	local statelv = 5

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local ret = UseABLItem(role,Item,statelv,statetime)
		if ret == 0 then
			UseItemFailed ( role )
			return
		end
	else
		local ret = UseABLItem(Cha_Boat,Item,statelv,statetime)
		if ret == 0 then
			UseItemFailed ( role )
			return
		end
	end
	SystemNotice ( role ,"半小时内让你感受3倍掉料的惊奇效果" )
end

------------------------------------------------------高级精灵饲料\高级自动喂食饲料-----------------------------------------------------------------------------

function ItemUse_numeneat ( role , Item , Item_Traget )
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		SystemNotice ( role , "不能够对53级以上的精灵使用。")
		UseItemFailed ( role ) 
		return 
	end
		local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)  --取当前耐久
		local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)--取最大耐久
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Num = 5000

		if Item_type == 57 and Item_Traget_Type == 59 then
				if Item_Traget_URE < Item_Traget_MAXURE then
				   Give_ElfURE ( role , Item_Traget , Num )
   	 			else
                                        SystemNotice(role , "精灵已经吃饱" ) 
					UseItemFailed ( role )
					return
				end
		end 

end

----------------------------------------------------------船只加速帆-----------------------------------------------------------------------
function ItemUse_shipdrive ( role , Item )

	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_SHIPDRIVE , statelv , statetime )
	else
		SystemNotice( role , "出海时才可使用" )
		UseItemFailed ( role )
		return
	end

end


-------------------------------------------------------------船只防御甲----------------------------------------------------------------
function ItemUse_shiprecovery ( role , Item )

	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )                  
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_SHIPRECOVER , statelv , statetime )
	else
		SystemNotice( role , "出海时才可使用" )
		UseItemFailed ( role )
		return
	end

end


-------------------------------------------------------黑龙瞳匣子
function ItemUse_HLTBOX ( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有2个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 864
	local stone1_lv = 5
	local stone2_id = 885
	local stone2_lv = 5
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	local r3,r4 =MakeItem ( role , stone2_id  , 1 , 4 )
	local Item_newJL2 = GetChaItem ( role , 2 , r4 )			
	local Item_newJLID2 = GetItemID ( Item_newJL2 )		
	SetItemAttr ( Item_newJL2 , ITEMATTR_VAL_BaoshiLV , stone2_lv )
	LG( "Lv5StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end

-------------------------------------------------------黑龙心匣子
function ItemUse_HLXBOX ( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有2个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 866
	local stone1_lv = 5
	local stone2_id = 885
	local stone2_lv = 5
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	local r3,r4 =MakeItem ( role , stone2_id  , 1 , 4 )
	local Item_newJL2 = GetChaItem ( role , 2 , r4 )			
	local Item_newJLID2 = GetItemID ( Item_newJL2 )		
	SetItemAttr ( Item_newJL2 , ITEMATTR_VAL_BaoshiLV , stone2_lv )
	LG( "Lv5StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end

-------------------------------------------------------黑龙魂匣子
function ItemUse_HLHBOX ( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有2个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 865
	local stone1_lv = 5
	local stone2_id = 885
	local stone2_lv = 5
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	local r3,r4 =MakeItem ( role , stone2_id  , 1 , 4 )
	local Item_newJL2 = GetChaItem ( role , 2 , r4 )			
	local Item_newJLID2 = GetItemID ( Item_newJL2 )		
	SetItemAttr ( Item_newJL2 , ITEMATTR_VAL_BaoshiLV , stone2_lv )
	LG( "Lv5StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end
------------------------------------------------------------香港白色情人节精选宝箱------------------by FGCA.Justice---------
function ItemUse_JXBX ( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <4 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有4个空位")
		UseItemFailed ( role )
		return
	end
		GiveItem ( role , 0 , 3354  , 1 , 4 ) 
		GiveItem ( role , 0 , 3355  , 1 , 4 ) 
		GiveItem ( role , 0 , 3356  , 1 , 4 )
		GiveItem ( role , 0 , 3077  , 1 , 4 )
end

---------------------------------------------------080220新需求-------------------------kokora-------------------------------

----------------------------------乾坤锦囊--------------------------------------------------------------
function ItemUse_universebox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用乾坤锦囊" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开乾坤锦囊至少需要1个空位")
		UseItemFailed ( role )
		return
	end
		
	local Itemsc = {0863,0860,0862,0861,1012}	 -----------------------------打开背包获得炎玉;风灵石;岩玉;鹰眼石;加纳之神的机率为20%
	local	sc = math.random(1,5)
	local ItemId = Itemsc[sc]
	GiveItem ( role , 0 , ItemId , 1 , 4 )
	local cha_name = GetChaDefaultName ( role )
	local itemname = GetItemName ( ItemId )
	Notice ( "恭喜玩家" ..cha_name.."打开乾坤锦囊,惊喜的获得"..itemname )
end

----------------------------------乌龙宝箱--------------------------------------------------------------
function ItemUse_jetdragon (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用乌龙宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开乌龙宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
		
	local Itemsc = {0866,0866,0865,0864}	 -----------------------------打开背包获得黑龙之心的机率为50%,获得黑龙之瞳和黑龙之魂的机率为25%
	local	sc = math.random(1,4)
	local ItemId = Itemsc[sc]
	GiveItem ( role , 0 , ItemId , 1 , 4 )
	local cha_name = GetChaDefaultName ( role )
	local itemname = GetItemName ( ItemId )
	Notice ( "恭喜玩家" ..cha_name.."打开乌龙宝箱,惊喜的获得"..itemname )
end

----------------------------------85级神装宝箱--------------------------------------------------------------
function ItemUse_raritybox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用85级神装宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开85级神装宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	
	local job = GetChaAttr( role, ATTR_JOB) --取职业
	local cha_type = GetChaTypeID ( role )
	local itemname = ""
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )--------------修罗之海魄
		itemname = "修罗之海魄"
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )--------------修罗之海魄
		itemname = "修罗之海魄"
	elseif cha_type == 2  and job~=0 then
		GiveItem ( role , 0 , 2577 , 1 , 4 )----------------哈迪斯之强悍
		itemname = "哈迪斯之强悍"
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )-----------------地狱之羿羽
		itemname = "地狱之羿羽"
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )-----------------地狱之羿羽
		itemname = "地狱之羿羽"
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
		local dina=math.random ( 1, 2 )
	if dina==1 then
		GiveItem ( role , 0 , 2582  , 1 , 4 )------------幽冥之晶灵
		itemname = "幽冥之晶灵"
	else
		GiveItem ( role , 0 , 2581  , 1 , 4 )-------------冥河之魔化
		itemname = "冥河之魔化"
	end
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
		GiveItem ( role , 0 , 2582  , 1 , 4 )------------幽冥之晶灵
		itemname = "冥河之晶灵"
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
		GiveItem ( role , 0 , 2581  , 1 , 4 )-------------冥河之魔化
		itemname = "冥河之魔化"
	elseif cha_type == 1 and  job==1 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )-------------黑暗之威力
		itemname = "黑暗之威力"
	elseif cha_type == 1 and  job==9 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )-------------黑暗之威力
		itemname = "黑暗之威力"
	elseif cha_type == 3 and  job==1 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )-------------黑暗之威力
		itemname = "黑暗之威力"
	elseif cha_type == 3 and  job==9 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )-------------黑暗之威力
		itemname = "黑暗之威力"
	else 
		SystemNotice(role ,"目前不能使用，请找各城职业导师转职.")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开85级神装宝箱,惊喜的获得"..itemname )
end

----------------------------------紫晶宝箱 --------------------------------------------------------------
function ItemUse_purplebox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用紫晶宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开紫晶宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5702 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启紫晶宝箱的紫晶钥匙")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5702 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=50 then	
		GiveItem ( role , 0 , 5711 , 1 , 4 )                    ---------------青龙宝箱   获得机率50%
		itemname = "青龙宝箱"
	elseif sc <=90 then		
		GiveItem ( role , 0 , 2997 , 5 , 4 )                    ---------------洛克藏宝图   获得机率40%
		itemname = "5张洛克藏宝图"
	elseif sc <=95 then
		GiveItem ( role , 0 ,5703 , 1 , 4 )                    ---------------青龙钥匙   获得机率5%
		itemname = "青龙钥匙"
	elseif sc <=98 then
		GiveItem ( role , 0 ,5707 , 1 , 4 )                    ---------------乾坤锦囊   获得机率3%
		itemname = "乾坤锦囊"
	elseif sc <=99 then
		GiveItem ( role , 0 ,0091 , 1 , 4 )                    ---------------中校之首   获得机率1%
		itemname = "中校之首"	
	else   
		GiveItem ( role , 0 , 0853 , 1 , 4 )                   ---------------假期欢乐杂志   获得机率1%
		itemname = "假期欢乐杂志"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开紫晶宝箱,惊喜的获得"..itemname )
end

----------------------------------青龙宝箱 --------------------------------------------------------------
function ItemUse_greenbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用青龙宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开青龙宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5703 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启青龙宝箱的青龙钥匙")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5703 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 5712 , 1 , 4 )                    ---------------真龙宝箱   获得机率30%
		itemname = "真龙宝箱"
	elseif sc <=50 then		
		GiveItem ( role , 0 , 5707 , 1 , 4 )                    ---------------乾坤锦囊   获得机率20%
		itemname = "乾坤锦囊"
	elseif sc <=65 then
		GiveItem ( role , 0 ,5750 , 1 , 4 )                    ---------------黄玉  获得机率15%
		itemname = "黄玉"
	elseif sc <=80 then
		GiveItem ( role , 0 ,5752 , 1 , 4 )                    ---------------青玉   获得机率15%
		itemname = "青玉"
	elseif sc <=93 then
		GiveItem ( role , 0 ,5751 , 1 , 4 )                    ---------------赤玉   获得机率13%
		itemname = "赤玉"
	elseif sc <=98 then
		GiveItem ( role , 0 ,5704 , 1 , 4 )                    ---------------真龙钥匙   获得机率5%
		itemname = "真龙钥匙"
	else   
		GiveItem ( role , 0 , 0092 , 1 , 4 )                   ---------------上校之首   获得机率2%
		itemname = "上校之首"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开青龙宝箱,惊喜的获得"..itemname )
end

----------------------------------真龙宝箱 --------------------------------------------------------------
function ItemUse_turebox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用真龙宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开真龙宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5704 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启真龙宝箱的真龙钥匙")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5704 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=38 then	
		GiveItem ( role , 0 , 1014 , 1 , 4 )                    ---------------女神试炼仪式   获得机率38%
		itemname = "女神试炼仪式"
	elseif sc <=58 then		
		GiveItem ( role , 0 , 5713 , 1 , 4 )                    ---------------至尊宝箱   获得机率20%
		itemname = "至尊宝箱"
	elseif sc <=77 then
		GiveItem ( role , 0 ,0992 , 20 , 4 )                    ---------------成长快餐   获得机率19%
		itemname = "成长快餐 "
	elseif sc <=92 then
		GiveItem ( role , 0 ,3016, 1 , 4 )                    ---------------黑龙幻体召唤券   获得机率15%
		itemname = "黑龙幻体召唤券"
	elseif sc <=97 then
		GiveItem ( role , 0 ,5708 , 1 , 4 )                    ---------------乌龙宝箱   获得机率5%
		itemname = "乌龙宝箱"
	else   
		GiveItem ( role , 0 , 5705 , 1 , 4 )                   ---------------至尊钥匙   获得机率3%
		itemname = "至尊钥匙"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开真龙宝箱,惊喜的获得"..itemname )
end

----------------------------------至尊宝箱 --------------------------------------------------------------
function ItemUse_respectbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用至尊宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开至尊宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5705 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启至尊宝箱的至尊钥匙")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5705 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=20 then	
		GiveItem ( role , 0 , 0094 , 1 , 4 )                    ---------------元帅之首   获得机率20%
		itemname = "元帅之首"
	elseif sc <=40 then		
		GiveItem ( role , 0 , 2368 , 1 , 20 )                    ---------------真黑龙之爪   获得机率20%
		itemname = "真黑龙之爪"
	elseif sc <=60 then
		GiveItem ( role , 0 ,2369 , 1 , 20 )                    ---------------真黑龙之翼   获得机率20%
		itemname = "真黑龙之翼"
	elseif sc <=75 then
		GiveItem ( role , 0 ,5714 , 1 , 4 )                    ---------------无双宝箱   获得机率15%
		itemname = "无双宝箱"
	elseif sc <=89 then
		GiveItem ( role , 0 ,2367 , 1 , 20 )                    ---------------真黑龙之躯   获得机率14%
		itemname = "真黑龙之躯"
	elseif sc <=99 then
		GiveItem ( role , 0 ,5769 , 1 , 4 )                    ---------------魂魄百宝箱   获得机率10%
		itemname = "魂魄百宝箱"
	else   
		GiveItem ( role , 0 , 5706 , 1 , 4 )                   ---------------无双钥匙   获得机率1%
		itemname = "无双钥匙"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开至尊宝箱,惊喜的获得"..itemname )
end

----------------------------------无双宝箱 --------------------------------------------------------------
function ItemUse_peerlessbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用无双宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开无双宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5706 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启无双宝箱的无双钥匙")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5706 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=60 then	
		GiveItem ( role , 0 , 5709 , 1 , 4 )                    ---------------85级神装宝箱   获得机率60%
		itemname = "85级神装宝箱"
	else   
		GiveItem ( role , 0 , 2522 , 1 , 4 )                   ---------------神之祈福包   获得机率15%
		itemname = "神之祈福包"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开无双宝箱,惊喜的获得"..itemname )
end

---------------------------------------------080228运营新需求添加仿真洛克藏宝图（kokora）------------------------------------------
function ItemUse_hidebox (role, Item)

	local Itemsc = {0863,0860,0862,0861,1028,0992,0853,1012,0096,0094}	 --------------打开藏宝图获得炎玉;风灵石;鹰眼石;岩玉;摩力符石;成长快餐;假期欢乐杂志;加纳之神;船长之首;元帅之首的机率各为10%
	local	sc = math.random(1,10)
	local ItemId = Itemsc[sc]
	local cha_name = GetChaDefaultName ( role )
	local itemname = GetItemName ( ItemId )
	Notice ( cha_name.."人品爆发,根据洛克藏宝图探索到"..itemname )
end


------会战荣誉箱-------
function ItemUse_HZRYX ( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=0 then
		SystemNotice(role ,"身上没有足够的空间，至少要有1个空位，打开会战荣誉箱失败")
		UseItemFailed ( role )
		return
	end

--	local s = DelBagItem ( role , 5716 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 0992 , 1 , 4 )                    ---------------成长快餐   获得机率30%
		itemname = "成长快餐"
	elseif sc <=69 then		
		GiveItem ( role , 0 , 2951 , 1 , 4 )                    ---------------乱斗加点书   获得机率39%
		itemname = "乱斗加点书"
	elseif sc <=99 then
		local Money_add = 3000000
		AddMoney ( role , 0 , Money_add )                  ---------------金钱300万   获得机率30%
		itemname = "金钱300万"
	else   
		GiveItem ( role , 0 , 0090 , 1 , 4 )                   ---------------少校之首   获得机率1%
		itemname = "少校之首"
	end
	local cha_name = GetChaDefaultName ( role )
	local Guild_ID = GetChaGuildID(role)
	local Guild_Name = GetGuildName( Guild_ID )
	Notice ( Guild_Name.."公会获得公会战胜利,会员"..cha_name.."开启会战荣誉箱，惊喜地获得"..itemname )

end
-------------------------
---------------------------------------------080401运营新需增加转生等级道具-通神的杂志（kokora）------------------------------------------
function ItemUse_generalbook ( role , Item )

	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )
		SystemNotice(role ,"尚未转生不能使用通神的杂志")
		return 
	end
	if zs_exp >= 10000 then
		UseItemFailed ( role )
		SystemNotice(role ,"转生等级达到或超过10级,不能使用通神的杂志")
		return 
	end
	local goodluck = "使用通神的杂志转生经验提升1级"
	if zs_exp > 0 and zs_exp < 400 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 400)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 400 and zs_exp < 900 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 900)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 900 and zs_exp < 1600 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 1600)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 1600 and zs_exp < 2500 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 2500)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 2500 and zs_exp < 3600 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 3600)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 3600 and zs_exp < 4900 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 4900)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 4900 and zs_exp < 6400 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 6400)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 6400 and zs_exp < 8100 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 8100)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
	if zs_exp >= 8100 and zs_exp < 10000 then 
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
	SystemNotice(role , goodluck)
	end
end

------------------------------------------------------魂魄百宝箱 by eric
function ItemUse_hpbbxBOX (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用魂魄百宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开魂魄百宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	local itemname = ""
	if job == 9 then
		GiveItem ( role , 0 , 2563  , 1 , 41 )
		itemname = "黑暗的魂魄"
	elseif job == 8 then
		GiveItem ( role , 0 , 2562  , 1 , 41 )
		itemname = "哈迪斯的魂魄" 
	elseif job == 12 then
		GiveItem ( role , 0 , 2564  , 1 , 41 )
		itemname = "地狱的魂魄" 
	elseif job == 16 then
		GiveItem ( role , 0 , 2565  , 1 , 41 )
		itemname = "修罗的魂魄"
	elseif job == 13 then
		GiveItem ( role , 0 , 2566  , 1 , 41 )
		itemname = "幽冥的魂魄"
	elseif job == 14 then
		GiveItem ( role , 0 , 2567  , 1 , 41 )
		itemname = "冥河的魂魄"
	else
		SystemNotice( role , "只有2转后才可以打开此宝箱哦" )
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开魂魄百宝箱,惊喜的获得"..itemname )
end

---------------------------召唤冥皇—卡拉 by eric
function ItemUse_MHKALAZHQ ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "角色当前处于安全区不可以召唤怪物" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 988
	local Refresh = 9000					--重生时间，秒单位
	local life = 9000000						--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end


--------------------------一级圣王宝藏
function ItemUse_lv1swbzbox (role, Item)

	SystemNotice( role , "in1" )
	local Cha_Boat = GetCtrlBoat ( role )
	
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用一级圣王宝藏" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开一级圣王宝藏至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=5 then	
		GiveItem ( role , 0 , 3012 , 1 , 4 )                    ---------------蜥蜴战士统领召唤券   获得机率5%
		itemname = "蜥蜴战士统领召唤券"
	elseif sc <=26 then		
		GiveItem ( role , 0 , 3095 , 1 , 4 )                    ---------------高级努力增幅器   获得机率21%
		itemname = "高级努力增幅器"
	elseif sc <=27 then
		GiveItem ( role , 0 , 5782 , 1 , 4 )                    ---------------二级圣王宝藏钥匙   获得机率1%
		itemname = "二级圣王宝藏钥匙"
	elseif sc <=77 then
		GiveItem ( role , 0 , 5778 , 1 , 4 )                    ---------------二级圣王宝藏   获得机率50%
		itemname = "二级圣王宝藏"
	else   
		GiveItem ( role , 0 , 5609 , 1 , 4 )                   ---------------免死金牌   获得机率23%
		itemname = "免死金牌"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开一级圣王宝藏,惊喜的获得"..itemname )
end

--------------------------二级圣王宝藏
function ItemUse_lv2swbzbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用二级圣王宝藏" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开二级圣王宝藏至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5782)                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启二级圣王宝藏的二级圣王宝藏钥匙")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5782 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=35 then	
		GiveItem ( role , 0 , 5779 , 1 , 4 )                    ---------------三级圣王宝藏   获得机率35%
		itemname = "三级圣王宝藏"
	elseif sc <=36 then
		GiveItem ( role , 0 , 5783 , 1 , 4 )                    ---------------三级圣王宝藏钥匙   获得机率1%
		itemname = "三级圣王宝藏钥匙"
	elseif sc <=40 then
		GiveItem ( role , 0 , 5703 , 1 , 4 )                    ---------------青龙钥匙   获得机率4%
		itemname = "青龙钥匙"
	elseif sc <=70 then
		GiveItem ( role , 0 , 0578 , 1 , 4 )                    ---------------精灵加速成长果   获得机率30%
		itemname = "精灵加速成长果"
	elseif sc <=90 then
		GiveItem ( role , 0 , 0145 , 1 , 4 )                    ---------------神泣宝箱   获得机率20%
		itemname = "神泣宝箱"
	else 
		GiveItem ( role , 0 , 0146 , 1 , 4 )                    ---------------霸王宝箱   获得机率10%
		itemname = "霸王宝箱"	
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开二级圣王宝藏,惊喜的获得"..itemname )
end


--------------------------三级圣王宝藏
function ItemUse_lv3swbzbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用三级圣王宝藏" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开三级圣王宝藏至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5783)                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启三级圣王宝藏的三级圣王宝藏钥匙")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5783 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 5780 , 1 , 4 )                    --------------四级圣王宝藏   获得机率30%
		itemname = "四级圣王宝藏"
	elseif sc <=31 then
		GiveItem ( role , 0 , 5783 , 1 , 4 )                    ---------------四级圣王宝藏钥匙   获得机率1%
		itemname = "四级圣王宝藏钥匙"
	elseif sc <=32 then
		GiveItem ( role , 0 , 5704 , 1 , 4 )                    ---------------真龙钥匙   获得机率1%
		itemname = "真龙钥匙"
	elseif sc <=50 then
		GiveItem ( role , 0 , 0853 , 1 , 4 )                    ---------------假期欢乐杂志   获得机率18%
		itemname = "假期欢乐杂志"
	elseif sc <=60 then
		GiveItem ( role , 0 , 0271 , 1 , 4 )                    ---------------天使骰子   获得机率10%
		itemname = "天使骰子"
	elseif sc <=90 then 
		GiveItem ( role , 0 , 1036 , 10 , 4 )                    ---------------魔幻女神卡   获得机率30%
		itemname = "魔幻女神卡"	
	else 
		GiveItem ( role , 0 , 1019 , 10 , 4 )                    ---------------迷你黑龙包   获得机率10%
		itemname = "迷你黑龙包"		
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开三级圣王宝藏,惊喜的获得"..itemname )
end
--------------------------四级圣王宝藏

function ItemUse_lv4swbzbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用四级圣王宝藏" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开四级圣王宝藏至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5784)                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启四级圣王宝藏的四级圣王宝藏钥匙")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5784 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=25 then	
		GiveItem ( role , 0 , 5781 , 1 , 4 )                    --------------五级圣王宝藏   获得机率25%
		itemname = "五级圣王宝藏"
	elseif sc <=26 then
		GiveItem ( role , 0 , 5785 , 1 , 4 )                    ---------------五级圣王宝藏钥匙   获得机率1%
		itemname = "五级圣王宝藏钥匙"
	elseif sc <=26.5 then
		GiveItem ( role , 0 , 5705 , 1 , 4 )                    ---------------至尊钥匙   获得机率0.5%
		itemname = "至尊钥匙"
	elseif sc <=46.5 then
		GiveItem ( role , 0 , 5707 , 1 , 4 )                    ---------------乾坤锦囊   获得机率20%
		itemname = "乾坤锦囊"
	elseif sc <=76.5 then
		GiveItem ( role , 0 , 3018 , 1 , 4 )                    ---------------黄金圣斗士宝藏   获得机率30%
		itemname = "黄金圣斗士宝藏"
	elseif sc <=86.5 then 
		GiveItem ( role , 0 , 5615 , 10 , 4 )                    ---------------白金辉煌彩票   获得机率10%
		itemname = "白金辉煌彩票"	
	else 
		GiveItem ( role , 0 , 5614 , 10 , 4 )                    ---------------白金年兽彩票   获得机率13.5%
		itemname = "白金年兽彩票"		
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开四级圣王宝藏,惊喜的获得"..itemname )
end
--------------------------五级圣王宝藏
function ItemUse_lv5swbzbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用五级圣王宝藏" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开五级圣王宝藏至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5785)                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启五级圣王宝藏的五级圣王宝藏钥匙")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5785 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=0.1 then	
		GiveItem ( role , 0 , 5706 , 1 , 4 )                    --------------无双钥匙   获得机率0.1%
		itemname = "无双钥匙"
	elseif sc <=10.1 then
		GiveItem ( role , 0 , 0242 , 1 , 4 )                    ---------------白银戒指兑换券   获得机率10%
		itemname = "白银戒指兑换券"
	elseif sc <=14.1 then
		GiveItem ( role , 0 , 2515 , 1 , 4 )                    ---------------黄金戒指兑换券   获得机率4%
		itemname = "黄金戒指兑换券"
	elseif sc <=16.1 then
		GiveItem ( role , 0 , 2516 , 1 , 4 )                    ---------------钻石戒指兑换券   获得机率2%
		itemname = "钻石戒指兑换券"
	elseif sc <=31.1 then
		GiveItem ( role , 0 , 2517 , 1 , 4 )                    ---------------伯爵项链兑换券   获得机率15%
		itemname = "伯爵项链兑换券"
	elseif sc <=37.1 then 
		GiveItem ( role , 0 , 2518 , 1 , 4 )                    ---------------侯爵项链兑换券   获得机率6%
		itemname = "侯爵项链兑换券"	
	elseif sc <=40.1 then 
		GiveItem ( role , 0 , 2519 , 1 , 4 )                    ---------------公爵项链兑换券   获得机率3%
		itemname = "公爵项链兑换券"	
	else 
		GiveItem ( role , 0 , 0333 , 1 , 4 )                    ---------------高级宝石兑换券   获得机率59.9%
		itemname = "高级宝石兑换券"	
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开五级圣王宝藏,惊喜的获得"..itemname )
end
------------------------------六一儿童节礼物
function ItemUse_ETJ (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用六一儿童节的礼物" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 6 then
		SystemNotice(role ,"打开六一儿童节礼物至少需要6个空位")
		UseItemFailed ( role )
		return
	end
		local BY1 = CheckBagItem( role, 5341 )
		local BY2 = CheckBagItem( role, 5345 )
		local BY3 = CheckBagItem( role, 5349 )
		local BY4 = CheckBagItem( role, 5353 )
		local JN1 = CheckBagItem( role, 5357 )
		local JN2 = CheckBagItem( role, 5361 )
		local JN3 = CheckBagItem( role, 5365 )
		local JN4 = CheckBagItem( role, 5369 )
		local SZ1 = CheckBagItem( role, 5373 )
		local SZ2 = CheckBagItem( role, 5377 )
		local SZ3 = CheckBagItem( role, 5381 )
		local SZ4 = CheckBagItem( role, 5385 )
		local JX1 = CheckBagItem( role, 5457 )
		local JX2 = CheckBagItem( role, 5461 )
		local JX3 = CheckBagItem( role, 5465 )
		local JX4 = CheckBagItem( role, 5469 )


	if BY1 == 1 or BY2 == 1 or BY3 == 1 or BY4 == 1 then
			if JN1 == 1 or JN2 == 1 or JN3 == 1 or JN4 == 1 or SZ1 == 1 or SZ2 == 1 or SZ3 == 1 or SZ4 == 1 or JX1 == 1 or JX2 == 1 or JX3 == 1 or JX4 == 1 then
			SystemNotice(role ,"你身上不能同时带2套以上圣衣哦")
			UseItemFailed ( role )
        	return
        end
		   GiveItem ( role , 0 , 3080  , 99 , 4 )
	       GiveItem ( role , 0 , 581  , 1 , 4 )
	elseif JN1 == 1 or JN2 == 1 or JN3 == 1 or JN4 == 1 then
		if BY1 == 1 or BY2 == 1 or BY3 == 1 or BY4 == 1 or SZ1 == 1 or SZ2 == 1 or SZ3 == 1 or SZ4 == 1 or JX1 == 1 or JX2 == 1 or JX3 == 1 or JX4 == 1 then
			SystemNotice(role ,"你身上不能同时带2套以上圣衣哦")
			UseItemFailed ( role )
        	return
        end
	   GiveItem ( role , 0 , 3089  , 1 , 4 )
	   GiveItem ( role , 0 , 580  , 1 , 4 )
	elseif SZ1 == 1 or SZ2 == 1 or SZ3 == 1 or SZ4 == 1 then
		if BY1 == 1 or BY2 == 1 or BY3 == 1 or BY4 == 1 or JN1 == 1 or JN2 == 1 or JN3 == 1 or JN4 == 1 or JX1 == 1 or JX2 == 1 or JX3 == 1 or JX4 == 1 then
			SystemNotice(role ,"你身上不能同时带2套以上圣衣哦")
			UseItemFailed ( role )
        	return
        end
	   GiveItem ( role , 0 , 580  , 1 , 4 )
	   GiveItem ( role , 0 , 3047  , 5 , 4 )
	elseif JX1 == 1 or JX2 == 1 or JX3 == 1 or JX4 == 1 then
		if BY1 == 1 or BY2 == 1 or BY3 == 1 or BY4 == 1 or JN1 == 1 or JN2 == 1 or JN3 == 1 or JN4 == 1 or SZ1 == 1 or SZ2 == 1 or SZ3 == 1 or SZ4 == 1 then
			SystemNotice(role ,"你身上不能同时带2套以上圣衣哦")
			UseItemFailed ( role )
        	return
        end
	   GiveItem ( role , 0 , 333  , 1 , 4 )
	elseif BY1 < 1 and BY2 < 1 and BY3 < 1 and BY4 < 1 and JN1 < 1 and JN2 < 1 and JN3 < 1 and JN4 < 1 and SZ1 < 1 and SZ2 < 1 and SZ3 < 1 and SZ4 < 1 and JX1 < 1 and JX2 < 1 and JX3 < 1 and JX4 < 1 then
	   GiveItem ( role , 0 , 3083  , 10 , 4 )
	   GiveItem ( role , 0 , 5804  , 1 , 4 )
	end
end
----------------------------------------------猪年儿童宝箱
function ItemUse_ZNBOX (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用六一儿童节的礼物" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 4 then
		SystemNotice(role ,"打开猪年儿童宝箱至少需要4个空位")
		UseItemFailed ( role )
		return
	end
	    	local cha_type = GetChaTypeID ( role ) 
			if cha_type == 1  then 
	       GiveItem ( role , 0 , 5315  , 1 , 4 )
	       GiveItem ( role , 0 , 5316  , 1 , 4 )
	       GiveItem ( role , 0 , 5317  , 1 , 4 )
	       GiveItem ( role , 0 , 5318  , 1 , 4 )
	       
			elseif cha_type == 2  then 
	       GiveItem ( role , 0 , 5319 , 1 , 4 )
	       GiveItem ( role , 0 , 5320  , 1 , 4 )
	       GiveItem ( role , 0 , 5321  , 1 , 4 )
	       GiveItem ( role , 0 , 5322  , 1 , 4 )
	       
			elseif cha_type == 3 then 
	       GiveItem ( role , 0 , 5323  , 1 , 4 )
	       GiveItem ( role , 0 , 5324  , 1 , 4 )
	       GiveItem ( role , 0 , 5325  , 1 , 4 )
	       GiveItem ( role , 0 , 5326  , 1 , 4 )
	       
			elseif cha_type == 4 then 
	       GiveItem ( role , 0 , 5327  , 1 , 4 )
	       GiveItem ( role , 0 , 5328  , 1 , 4 )
	       GiveItem ( role , 0 , 5329  , 1 , 4 )
	       GiveItem ( role , 0 , 5330  , 1 , 4 )
	       
		   end

end
------------------------------------------疯狂的撒加召唤券
function ItemUse_FKDSJSummon (role, Item)

		local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "角色当前处于安全区不可以召唤怪物" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1070
	local Refresh = 1801					--重生时间，秒单位
	local life = 1800000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
	local x, y = GetChaPos(role)
	local MonsterID1 = 1069
	local new1 = CreateChaX( MonsterID1 , x , y , 145 , Refresh, role )
	SetChaLifeTime( new1, life )
	local x, y = GetChaPos(role)
	local MonsterID2 = 1069
	local new2 = CreateChaX( MonsterID2 , x , y , 145 , Refresh, role )
	SetChaLifeTime( new2, life )
end
-------------------------------------------------邪恶教皇召唤券
function ItemUse_XEJHSummon (role, Item)

		local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "角色当前处于安全区不可以召唤怪物" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1071
	local Refresh = 1801					--重生时间，秒单位
	local life = 1800000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
-------------------------------------cosplay认可证书
function ItemUse_COSPLAY (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用cosplay认可证书" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开cosplay认可证书至少需要1个空位")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random(1,4)
	if sc == 1 then
		GiveItem ( role , 0 , 5807  , 1 , 4 )
	elseif sc == 2 then
		GiveItem ( role , 0 , 5808  , 1 , 4 )
	elseif sc == 3 then
		GiveItem ( role , 0 , 5809  , 1 , 4 )
	elseif sc == 4 then
		GiveItem ( role , 0 , 5810  , 1 , 4 )
	end
end

---------------------------------存钱罐小猪召唤券--双击召唤存钱罐小猪 by Lee 2008.06.13

function ItemUse_CQJXZ ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "宠物已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1072     -------------------存钱罐小猪 1072
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------人偶小猪召唤券--双击召唤人偶小猪 by Lee 2008.06.13

function ItemUse_ROXZ ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "宠物已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1074     -------------------人偶小猪 1074
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

----夏天的魔法书----------by Peter 2008.7.1---------------------------------------------------------------------------------------------------------------------------
function ItemUse_XTMFS(role, Item )

	local statelv = 1
	local statetime = 30                 ----1=1秒
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local CD_LV1 = GetChaStateLv(role,STATE_XTMFS)
--		SystemNotice(role,"CD_LV1")	
	if CD_LV1 > 0 then
		SystemNotice(role,"道具冷却时间还没到，无法使用!")
		UseItemFailed ( role )
	end

	AddState( role , role , STATE_XTMFS , statelv , statetime )
	SystemNotice(role ,"使用了另一个世界的物品!接下来的事将会不可思议!上帝30秒以后亲自来处理!")
end
----高超的莫邪剑-----------by Peter 2008.7.1---------------------------------------------------------------------------------------------------------------------------
function ItemUse_MWMXJ(role, Item )

	local statelv = 1
	local statetime = 30
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local CD_LV2 = GetChaStateLv(role,STATE_MWMXJ)
--		SystemNotice(role,"CD_LV2")	
	if CD_LV2 > 0 then
		SystemNotice(role,"道具冷却时间还没到，无法使用!")
		UseItemFailed ( role )
	end	
	AddState( role , role , STATE_MWMXJ , statelv , statetime )
	SystemNotice(role ,"使用了另一个世界的物品!接下来的事将会不可思议!上帝30秒以后亲自来处理!")
end
----丰丰的金刚盾---------by Peter 2008.7.1-----------------------------------------------------------------------------------------------------------------------------
function ItemUse_FFJGD(role, Item )

	local statelv = 1
	local statetime =30
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
--		SystemNotice(role,"1111111111")	
	local CD_LV3 = GetChaStateLv(role,STATE_FFJGD)
--		SystemNotice(role,"CD_LV3")	
	if CD_LV3 > 0 then
		SystemNotice(role,"道具冷却时间还没到，无法使用!")
		UseItemFailed ( role )
	end		
	
	AddState( role , role , STATE_FFJGD , statelv , statetime )
	SystemNotice(role ,"使用了另一个世界的物品!接下来的事将会不可思议!上帝30秒以后亲自来处理!")
end
----皮特的隐身药水----------------by Peter 2008.7.1----------------------------------------------------------------------------------------------------------------------
function ItemUse_YSYS(role, Item )
	
	local statelv = 1
	local statetime =5
	local  statetime2 = 5
	local CD_LV = GetChaStateLv(role,STATE_CD)
--		SystemNotice(role,"CD_LV")	
	local job = GetChaAttr( role, ATTR_JOB) --取职业
	if job == 8 or job == 9    then
		SystemNotice(role,"职业不符,不能使用道具!")
		UseItemFailed ( role )
		return
	end
	if CD_LV > 0 then
		SystemNotice(role,"道具冷却时间还没到，无法使用!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end

	AddState ( role , role , STATE_YSYS , statelv , statetime )
	AddState ( role , role , STATE_CD , statelv , statetime2 ) 

	SystemNotice(role ,"使用了另一个世界的物品!接下来的事将会不可思议!上帝5秒以后亲自来处理!")


end



---------------宙斯箱子使用------------------- by peter 
function ItemUse_ZhouSi( role, Item )

	local Elf_URE = GetItemAttr(Item,ITEMATTR_URE) --当前耐久记录剩余封印点数
	local Elf_EXP = GetItemAttr(Item,ITEMATTR_ENERGY) --最大能量记录诅咒点数
	if Elf_URE ~= 0 then
		SystemNotice(role ,"封印尚未完全解除")
		UseItemFailed ( role )
		return
	end
	if Elf_EXP >0 then
		SystemNotice(role ,"诅咒点数必须减至0，否则无法开启宝箱!")
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用道具失败")
		UseItemFailed ( role )
		return
	end
	local sta = GetItemAttr( Item ,ITEMATTR_VAL_STA )       --精神
	if sta == 0 then
		SystemNotice(role ,"未放入核心装备，使用道具失败")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	if sta == 1 then ---核心一866黑龙之心----------给宙斯之躯
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 1518  , 1 , 4  )  		
		end
		local message ="宙斯赐福于".. cha_name.."惊喜地获得宙斯之躯"  
	end
	if sta == 2 then ---核心二865黑龙之魂---------------给宙斯之手
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 1519  , 1 ,4 )  		
		end
		local message ="宙斯赐赐福于".. cha_name.."惊喜地获得宙斯之手"  
	end
	if sta == 3 then ---核心三864黑龙之瞳---------------给黑龙之爪
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 1520  , 1 ,4 )  		
		end
		local message ="宙斯赐赐福于".. cha_name.."惊喜地获得宙斯之足"  
	end

end
---------------核心2使用------------ by peter -----------sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --精神
function ItemUse_hexin2 ( role , Item , Item_Traget ) 

	local Item_Traget_ID = GetItemID ( Item_Traget )
	local Item_ID = GetItemID ( Item )		
	local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --精神
	if Item_Traget_ID ~= 5873 then
		SystemNotice(role ,"请把祭品放在祭坛上")
		UseItemFailed ( role )
		return
	end
	if sta==1 and Item_ID == 5878 then
		SystemNotice(role ,"您已经使用了阿波罗的精神作为祭品")
		UseItemFailed ( role )
		return	
	end
	if sta==2 and Item_ID == 5879 then
		SystemNotice(role ,"您已经使用了丘比特的精神作为祭品")
		UseItemFailed ( role )
		return	
	end
	if sta==3 and Item_ID == 5880 then
		SystemNotice(role ,"您已经使用了雅典娜的精神作为祭品")
		UseItemFailed ( role )
		return	
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local cha_name = GetChaDefaultName ( role ) 
		if Item_type == 49 and Item_Traget_Type == 65 then
				if Item_ID == 5878 then						---核心A
				sta =1
				SystemNotice( role , "当诅咒全部消失后使用阿波罗的精神作为祭品可获得装备--宙斯之躯" )
				LG("ZhouSiHeiXiaZi_HeXin2","角色名为",cha_name,"的玩家使用阿波罗的精神作为祭品")
				elseif Item_ID == 5879 then						---核心B
				sta =2
				SystemNotice( role , "当诅咒全部消失后使用丘比特的精神作为祭品可获得装备--宙斯之手" )
				LG("ZhouSiHeiXiaZi_HeXin2","角色名为",cha_name,"的玩家使用丘比特的精神作为祭品")
				elseif Item_ID ==5880 then						---核心C
				sta =3
				SystemNotice( role , "当诅咒全部消失后使用雅典娜的精神作为祭品可获得装备--宙斯之足" )
				LG("ZhouSiHeiXiaZi_HeXin2","角色名为",cha_name,"的玩家使用雅典娜的精神作为祭品")
				else 
						UseItemFailed ( role )
						return
				end
				SetItemAttr( Item_Traget ,ITEMATTR_VAL_STA ,sta )
		end 
end
--------------赫拉神符使用----------------- by peter ---------str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --力量
function  ItemUse_HLSF ( role , Item , Item_Traget ) 

	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 5873 then
		SystemNotice(role ,"请把赫拉神符放在祭坛上")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65  then
				local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --力量
				if str >= 10 then                    --------做法是从0加到10，超过10无法使用，客户端处理为10减到0
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --当前耐久记录剩余封印点数
					str = str + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_STR ,str )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --最大能量记录诅咒点数
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --最大能量记录诅咒点数
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "黑匣不幸被鬼魂诅咒" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end


---------------雅典娜神符使用------------- by peter ------------con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --体质

function ItemUse_YDNSF ( role , Item , Item_Traget ) 

	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 5873  then
		SystemNotice(role ,"请把雅典娜神符放在祭坛上")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --体质
				if con >= 10 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --当前耐久记录剩余封印点数
					con = con + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_CON ,con )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --最大能量记录诅咒点数
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --最大能量记录诅咒点数
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "黑匣不幸被鬼魂诅咒" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end
----------------阿波罗神符使用------------------- by peter --------agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --敏捷
function ItemUse_ABLSF ( role , Item , Item_Traget ) 

	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 5873 then
		SystemNotice(role ,"请把阿波罗神符放在祭坛上")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --敏捷
					if agi >= 10 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE= GetItemAttr(Item_Traget,ITEMATTR_URE) --当前耐久记录剩余封印点数
					agi = agi + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI ,agi )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --最大能量记录诅咒点数
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --最大能量记录诅咒点数
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "黑匣不幸被鬼魂诅咒" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

----------------丘比特神符使用------------ by peter ---------------dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --专注
function ItemUse_QBTSF ( role , Item , Item_Traget ) 

	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 5873 then
		SystemNotice(role ,"请把丘比特神符放在祭坛上")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --力量
					if dex >=10 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --当前耐久记录剩余封印点数
					dex = dex + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX ,dex )
					SetItemAttr( Item_Traget ,ITEMATTR_URE,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --最大能量记录诅咒点数
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --最大能量记录诅咒点数
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "黑匣不幸被鬼魂诅咒" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

----------------天使之手使用------------  by peter -------------
function ItemUse_ZhuFu2 ( role , Item , Item_Traget ) 

	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 5873     then
		SystemNotice(role ,"请正确使用天使骰子")
		UseItemFailed ( role )
		return
	end
	local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --当前能量记录诅咒点数
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --最大能量记录诅咒点数

	if Elf_EXP ==0 then
		UseItemFailed ( role )
		
		return
	end
	local rad = math.random ( 1, 100 )

	if Elf_EXP <= 5 and Elf_EXP >= 1 then
		if rad <= 30 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"由于您刚才使用的天使之手质量太差,诅咒并没有解除")
		end
	end

	if Elf_EXP <= 10 and Elf_EXP >= 6 then
		if rad <= 50 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"由于您刚才使用的天使之手质量太差,诅咒并没有解除")
		end
	end

	if Elf_EXP <= 15 and Elf_EXP >= 11 then
		if rad <= 80 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"由于您刚才使用的天使之手质量太差,诅咒并没有解除")
		end
	end

	if Elf_EXP >= 16  then
		Elf_EXP = Elf_EXP -1
	end

	SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
	SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_EXP )
end


-----------承影神盒
function ItemUse_chengyingbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用承影神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 4 then
		SystemNotice(role ,"打开承影神盒至少需要4个空位")
		UseItemFailed ( role )
		return
	end
--	local i= CheckBagItem( role, xxxx )                                                
--	if i <=0 then
--		SystemNotice(  role , "请确定您身上有开启承影神盒的石头")
--		UseItemFailed ( role )
--		return LUA_FALSE
--	end
	
--	local s = DelBagItem ( role , xxxx , 1 ) 
	local	sc = math.random(1,1000)
	local itemname = ""
	if  sc <=300 then	
		GiveItem ( role , 0 , 5707 , 1 , 4 )                    ---------------乾坤锦囊   获得机率30%
		GiveItem ( role , 0 , 5910 , 1 , 4 ) 
		itemname = "乾坤锦囊"
	elseif sc <=600 and sc >300 then		
		GiveItem ( role , 0 , 3336 , 40 , 4 )                    ---------------神算草   获得机率30%
		GiveItem ( role , 0 , 5910 , 1 , 4 ) 
		itemname = "神算草"
	elseif sc <=800 and sc >600 then
		GiveItem ( role , 0 , 5703 , 2 , 4 )                    ---------------青龙钥匙   获得机率20%
		GiveItem ( role , 0 , 5910 , 1 , 4 ) 
		itemname = "青龙钥匙"
	elseif sc <=989 and sc >800 then
		GiveItem ( role , 0 , 5839 , 3 , 4 )                    ---------------彩球x   获得机率18.9%
		GiveItem ( role , 0 , 5910 , 1 , 4 ) 
		itemname = "彩球x"
	elseif sc <=999 and sc >989 then
		GiveItem ( role , 0 , 5708 , 1 , 4 )                    ---------------乌龙宝箱   获得机率1%
		GiveItem ( role , 0 , 5910 , 1 , 4 ) 
		itemname = "乌龙宝箱"	
	
	else   
		GiveItem ( role , 0 , 0094 , 1 , 4 )                   ---------------元帅之首  获得机率0.1%
		GiveItem ( role , 0 , 5910 , 1 , 4 ) 
		itemname = "元帅之首"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开承影神盒,惊喜的获得"..itemname )
end

-----------纯钧神盒
function 	ItemUse_chunjunbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用纯钧神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开纯钧神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5900 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启纯钧神盒的石头")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5900 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 5644 , 35 , 4 )                    ---------------高级精灵饲料   获得机率30%
		GiveItem ( role , 0 , 5911 , 1 , 4 ) 
		itemname = "高级精灵饲料"
	elseif sc <=32 and sc >30 then		
		GiveItem ( role , 0 , 5708 , 1 , 4 )                    ---------------乌龙宝箱   获得机率2%
		GiveItem ( role , 0 , 5911 , 1 , 4 ) 
		itemname = "乌龙宝箱"
	elseif sc <=33 and sc >32 then
		GiveItem ( role , 0 , 5704 , 1 , 4 )                    ---------------真龙钥匙   获得机率1%
		GiveItem ( role , 0 , 5911 , 1 , 4 ) 
		itemname = "真龙钥匙"
	elseif sc <=63 and sc >33 then
		GiveItem ( role , 0 , 5712 , 1 , 4 )                    ---------------真龙宝箱   获得机率30%
		GiveItem ( role , 0 , 5911 , 1 , 4 ) 
		itemname = "真龙宝箱"
	elseif sc <=83 and sc >63 then
		GiveItem ( role , 0 , 1871 , 30 , 4 )                    ---------------祝福宝珠   获得机率20%
		GiveItem ( role , 0 , 5911 , 1 , 4 ) 
		itemname = "祝福宝珠"	
	
	else   
		GiveItem ( role , 0 , 2519 , 1 , 4 )                   ---------------公爵项链兑换券  获得机率17%
		GiveItem ( role , 0 , 5911 , 1 , 4 ) 
		itemname = "公爵项链兑换券"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开纯钧神盒,惊喜的获得"..itemname )
end

-----------鱼肠神盒
function ItemUse_yuchangbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用鱼肠神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开鱼肠神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5901 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启鱼肠神盒的鱼肠石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5901 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = " "
	if  sc <=30 then	
		GiveItem ( role , 0 , 5703 , 2 , 4 )                    ---------------青龙钥匙   获得机率30%
		GiveItem ( role , 0 , 5912 , 1 , 4 ) 
		itemname = "青龙钥匙"
	elseif sc <=40 and sc >30 then		
		GiveItem ( role , 0 , 1019 , 10 , 4 )                    ---------------迷你黑龙包   获得机率10%
		GiveItem ( role , 0 , 5912 , 1 , 4 ) 
		itemname = "迷你黑龙包"
	elseif sc <=60 and sc >40 then
		GiveItem ( role , 0 , 5919 , 1 , 4 )                    ---------------海盗王2008神秘兑换券   获得机率20%
		GiveItem ( role , 0 , 5912 , 1 , 4 ) 
		itemname = "海盗王2008神秘兑换券"
	elseif sc <=89 and sc >60 then
		GiveItem ( role , 0 , 5629 , 99 , 4 )                    ---------------超人饺子   获得机率30%
		GiveItem ( role , 0 , 5912 , 1 , 4 ) 
		itemname = "超人饺子"
	elseif sc <=90 and sc >89 then
		GiveItem ( role , 0 , 5704 , 1 , 4 )                    ---------------真龙钥匙   获得机率1%
		GiveItem ( role , 0 , 5912 , 1 , 4 ) 
		itemname = "真龙钥匙"	
	
	else   
		GiveItem ( role , 0 , 2516 , 1 , 4 )                   ---------------钻石戒指兑换券  获得机率10%
		GiveItem ( role , 0 , 5912 , 1 , 4 ) 
		itemname = "钻石戒指兑换券"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开鱼肠神盒,惊喜的获得"..itemname )
end

-----------干将神盒
function ItemUse_ganjiangbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用干将神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开干将神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5902 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启干将神盒的干将石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5902 , 1 ) 
	local	sc = math.random(1,10000)
	local itemname = ""
	if  sc <=1000 then	
		GiveItem ( role , 0 , 5774 , 1 , 4 )                    ---------------丰烽之抵御   获得机率10%
		GiveItem ( role , 0 , 5913 , 1 , 4 ) 
		itemname = "丰烽之抵御"
	elseif sc <=1001 and sc >1000 then		
		GiveItem ( role , 0 , 5705 , 1 , 4 )                    ---------------至尊钥匙   获得机率0.01%
		GiveItem ( role , 0 , 5913 , 1 , 4 ) 
		itemname = "至尊钥匙"
	elseif sc <=2001 and sc >1001 then
		GiveItem ( role , 0 , 5919 , 1 , 4 )                    ---------------海盗王2008神秘兑换券   获得机率10%
		GiveItem ( role , 0 , 5913 , 1 , 4 ) 
		itemname = "海盗王2008神秘兑换券"
	elseif sc <=3001 and sc >2001 then
		GiveItem ( role , 0 , 0853 , 1 , 4 )                    ---------------假期欢乐杂志   获得机率10%
		GiveItem ( role , 0 , 5913 , 1 , 4 ) 
		itemname = "假期欢乐杂志"
	elseif sc <=7001 and sc >3001 then
		GiveItem ( role , 0 , 5645 , 30 , 4 )                    ---------------高级自动喂食饲料   获得机率40%
		GiveItem ( role , 0 , 5913 , 1 , 4 ) 
		itemname = "高级自动喂食饲料"	
	
	else   
		GiveItem ( role , 0 , 5612 , 15 , 4 )                   ---------------超级魔幻女神卡  获得机率29.99%
		GiveItem ( role , 0 , 5913 , 1 , 4 ) 
		itemname = "超级魔幻女神卡"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开干将神盒,惊喜的获得"..itemname )
end

-----------莫邪神盒
function ItemUse_moxiebox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用莫邪神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开莫邪神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5903 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启莫邪神盒的莫邪石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5903 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=10 then	
		GiveItem ( role , 0 , 5771 , 1 , 4 )                    ---------------夏天之灵光   获得机率10%
		GiveItem ( role , 0 , 5914 , 1 , 4 ) 
		itemname = "夏天之灵光"
	elseif sc <=11 and sc >10 then		
		GiveItem ( role , 0 , 5705 , 1 , 4 )                    ---------------至尊钥匙   获得机率1%
		GiveItem ( role , 0 , 5914 , 1 , 4 ) 
		itemname = "至尊钥匙"
	elseif sc <=16 and sc >11 then
		GiveItem ( role , 0 , 5920 , 1 , 4 )                    ---------------海盗王2008至尊兑换券   获得机率5%
		GiveItem ( role , 0 , 5914 , 1 , 4 ) 
		itemname = "海盗王2008至尊兑换券"
	elseif sc <=40 and sc >16 then
		GiveItem ( role , 0 , 0679 , 1 , 4 )                    ---------------摩豆精灵蛋   获得机率24%
		GiveItem ( role , 0 , 5914 , 1 , 4 ) 
		itemname = "摩豆精灵蛋"
	elseif sc <=70 and sc >40 then
		GiveItem ( role , 0 , 0890 , 1 , 4 )                    ---------------装备加固剂   获得机率30%
		GiveItem ( role , 0 , 5914 , 1 , 4 ) 
		itemname = "装备加固剂"	
	
	else   
		GiveItem ( role , 0 , 0891 , 1 , 4 )                   ---------------装备催化粉  获得机率30%
		GiveItem ( role , 0 , 5914 , 1 , 4 ) 
		itemname = "装备催化粉"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开莫邪神盒,惊喜的获得"..itemname )
end

-----------七星神盒
function ItemUse_qixingbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用七星神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开七星神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5904 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启七星神盒的七星石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5904 , 1 ) 
	local	sc = math.random(1,10000)
	local itemname = ""
	if  sc <=1500 then	
		GiveItem ( role , 0 , 5751 , 1 , 4 )                    ---------------赤玉   获得机率15%
		GiveItem ( role , 0 , 5915 , 1 , 4 ) 
		itemname = "赤玉"
	elseif sc <=3000 and sc >1500 then		
		GiveItem ( role , 0 , 5752 , 1 , 4 )                    ---------------青玉   获得机率15%
		GiveItem ( role , 0 , 5915 , 1 , 4 ) 
		itemname = "青玉"
	elseif sc <=3600 and sc >3000  then
		GiveItem ( role , 0 , 5920 , 1 , 4 )                    ---------------海盗王2008至尊兑换券   获得机率6%
		GiveItem ( role , 0 , 5915 , 1 , 4 ) 
		itemname = "海盗王2008至尊兑换券"
	elseif sc <=6600 and sc >3600 then
		GiveItem ( role , 0 , 4023 , 30 , 4 )                    ---------------浪贝煨煎羹   获得机率30%
		GiveItem ( role , 0 , 5915 , 1 , 4 ) 
		itemname = "浪贝煨煎羹"
	elseif sc <=9999 and sc >6600 then
		GiveItem ( role , 0 , 0056 , 1 , 4 )                    ---------------大闸蟹   获得机率33.99%
		GiveItem ( role , 0 , 5915 , 1 , 4 ) 
		itemname = "大闸蟹"	
	
	else   
		GiveItem ( role , 0 , 2842 , 1 , 4 )                   ---------------死神藏尸处  获得机率0.01%
		GiveItem ( role , 0 , 5915 , 1 , 4 ) 
		itemname = "死神藏尸处"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开七星神盒,惊喜的获得"..itemname )
end

-----------泰阿神盒
function ItemUse_taiabox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用泰阿神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开泰阿神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5905 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启泰阿神盒的泰阿石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5905 , 1 ) 
	local	sc = math.random(1,10000)
	local itemname = ""
	if  sc <=2500 then	
		GiveItem ( role , 0 , 4022 , 5 , 4 )                    ---------------映月鲟鱼汤   获得机率25%
		GiveItem ( role , 0 , 5916 , 1 , 4 ) 
		itemname = "映月鲟鱼汤"
	elseif sc <=5500 and sc >2500 then		
		GiveItem ( role , 0 , 5643 , 99, 4 )                    ---------------精灵自动加速果   获得机率30%
		GiveItem ( role , 0 , 5916 , 1 , 4 ) 
		itemname = "精灵自动加速果"
	elseif sc <=6300 and sc >5500 then
		GiveItem ( role , 0 , 5920 , 1 , 4 )                    ---------------海盗王2008至尊兑换券   获得机率8%
		GiveItem ( role , 0 , 5916 , 1 , 4 ) 
		itemname = "海盗王2008至尊兑换券"
	elseif sc <=7300 and sc >6300 then
		GiveItem ( role , 0 , 5750 , 1 , 4 )                    ---------------黄玉   获得机率10%
		GiveItem ( role , 0 , 5916 , 1 , 4 ) 
		itemname = "黄玉"
	elseif sc <=9999 and sc >7300 then
		GiveItem ( role , 0 , 3457 , 1 , 4 )                    ---------------纳卡符石   获得机率26.99%
		GiveItem ( role , 0 , 5916 , 1 , 4 ) 
		itemname = "纳卡符石"	
	
	else   
		GiveItem ( role , 0 , 5706 , 1 , 4 )                   ---------------无双钥匙  获得机率0.01%
		GiveItem ( role , 0 , 5916 , 1 , 4 ) 
		itemname = "无双钥匙"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开泰阿神盒,惊喜的获得"..itemname )
end

-----------赤霄神盒
function ItemUse_chixiaobox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用赤霄神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开赤霄神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5906 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启赤霄神盒的赤霄石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5906 , 1 ) 
	local	sc = math.random(1,10000)
	local itemname = ""
	if  sc <=2000 then	
		GiveItem ( role , 0 , 0937 , 1 , 4 )                    ---------------天使之翼   获得机率20%
		GiveItem ( role , 0 , 5917 , 1 , 4 ) 
		itemname = "天使之翼"
	elseif sc <=5000 and sc >2000 then		
		GiveItem ( role , 0 , 1080 , 30, 4 )                    ---------------大饼   获得机率30%
		GiveItem ( role , 0 , 5917 , 1 , 4 ) 
		itemname = "大饼"
	elseif sc <=6000 and sc >5000 then
		GiveItem ( role , 0 , 5920 , 1 , 4 )                    ---------------海盗王2008至尊兑换券   获得机率10%
		GiveItem ( role , 0 , 5917 , 1 , 4 ) 
		itemname = "海盗王2008至尊兑换券"
	elseif sc <=8000 and sc >6000 then
		GiveItem ( role , 0 , 5707 , 1 , 4 )                    ---------------乾坤锦囊   获得机率20%
		GiveItem ( role , 0 , 5917 , 1 , 4 ) 
		itemname = "乾坤锦囊"
	elseif sc <=9999 and sc >8000 then
		GiveItem ( role , 0 , 5610 , 18 , 4 )                    ---------------幸运洛克藏宝图   获得机率19.99%
		GiveItem ( role , 0 , 5917 , 1 , 4 ) 
		itemname = "幸运洛克藏宝图"	
	
	else   
		GiveItem ( role , 0 , 2522 , 1 , 4 )                   ---------------神之祈福包  获得机率0.01%
		GiveItem ( role , 0 , 5917 , 1 , 4 ) 
		itemname = "神之祈福包"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开赤霄神盒,惊喜的获得"..itemname )
end

-----------湛泸神盒
function ItemUse_zhanlubox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用湛泸神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开湛泸神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5907 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启湛泸神盒的湛泸石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5907 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=40 then	
		GiveItem ( role , 0 , 5610 , 15 , 4 )                    ---------------幸运洛克藏宝图   获得机率40%
		GiveItem ( role , 0 , 5918 , 1 , 4 ) 
		itemname = "幸运洛克藏宝图"
	elseif sc <=45 and sc >40 then		
		GiveItem ( role , 0 , 0273 , 1 , 4 )                    ---------------一等奖   获得机率5%
		GiveItem ( role , 0 , 5918 , 1 , 4 ) 
		itemname = "一等奖"
	elseif sc <=50 and sc > 45 then
		GiveItem ( role , 0 , 5714 , 1 , 4 )                    ---------------无双宝箱   获得机率5%
		GiveItem ( role , 0 , 5918 , 1 , 4 ) 
		itemname = "无双宝箱"
	elseif sc <=55 and sc >50 then
		GiveItem ( role , 0 , 0095 , 1 , 4 )                    ---------------大副之首   获得机率5%
		GiveItem ( role , 0 , 5918 , 1 , 4 ) 
		itemname = "大副之首"
	elseif sc <=75 and sc >55 then
		GiveItem ( role , 0 , 5848 , 1 , 4 )                    ---------------死神凝聚   获得机率20%
		GiveItem ( role , 0 , 5918 , 1 , 4 ) 
		itemname = "死神凝聚"	
	
	else   
		GiveItem ( role , 0 , 3878 , 1 , 4 )                   ---------------二级精炼石兑换券  获得机率25%
		GiveItem ( role , 0 , 5918 , 1 , 4 ) 
		itemname = "二级精炼石兑换券"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开湛泸神盒,惊喜的获得"..itemname )
end

-----------轩辕神盒
function ItemUse_xuanyuanbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用轩辕神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开轩辕神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5908 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启轩辕神盒的轩辕石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5908 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=5 then	
		GiveItem ( role , 0 , 5845 , 1 , 4 )                    ---------------死神辉耀   获得机率5%
		GiveItem ( role , 0 , 5919 , 1 , 4 ) 
		itemname = "死神辉耀"
	elseif sc <=15 and sc >5 then		
		GiveItem ( role , 0 , 5846 , 1 , 4 )                    ---------------死神不死   获得机率10%
		GiveItem ( role , 0 , 5919 , 1 , 4 ) 
		itemname = "死神不死"
	elseif sc <=20 and sc >15 then
		GiveItem ( role , 0 , 5847 , 1 , 4 )                    ---------------死神光芒   获得机率5%
		GiveItem ( role , 0 , 5919 , 1 , 4 ) 
		itemname = "死神光芒"
	elseif sc <=55 and sc >20 then
		GiveItem ( role , 0 , 5711 , 1 , 4 )                    ---------------青龙宝箱   获得机率35%
		GiveItem ( role , 0 , 5919 , 1 , 4 ) 
		itemname = "青龙宝箱"
	elseif sc <=65 and sc >55 then
		GiveItem ( role , 0 , 5849 , 1 , 4 )                    ---------------死神旋舞   获得机率10%
		GiveItem ( role , 0 , 5919 , 1 , 4 ) 
		itemname = "死神旋舞"	
	
	else   
		GiveItem ( role , 0 , 3088 , 1 , 4 )                   ---------------28格背包  获得机率35%
		GiveItem ( role , 0 , 5919 , 1 , 4 ) 
		itemname = "28格背包"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开轩辕神盒,惊喜的获得"..itemname )
end

-----------长生剑神盒
function ItemUse_changshengbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用长生剑神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 4 then
		SystemNotice(role ,"打开长生剑神盒至少需要4个空位")
		UseItemFailed ( role )
		return
	end
--	local i= CheckBagItem( role, xxxx )                                                
--	if i <=0 then
--		SystemNotice(  role , "请确定您身上有开启长生剑神盒的石头")
--		UseItemFailed ( role )
--		return LUA_FALSE
--	end
	
--	local s = DelBagItem ( role , xxxx , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 3094 , 6 , 4 )                    ---------------双倍经验增幅器   获得机率30%
		GiveItem ( role , 0 , 5928 , 1 , 4 ) 
		GiveItem ( role , 0 , 3093 , 1 , 4 ) 
		itemname = "双倍经验增幅器"
	elseif sc <=35 and sc >30 then		
		GiveItem ( role , 0 , 0885 , 1 , 4 )                    ---------------精炼石   获得机率5%
		GiveItem ( role , 0 , 5928 , 1 , 4 ) 
		GiveItem ( role , 0 , 3093 , 1 , 4 ) 
		itemname = "精炼石"
	elseif sc <=45 and sc >35 then
		GiveItem ( role , 0 , 5618 , 4 , 4 )                    ---------------摩力团队果   获得机率10%
		GiveItem ( role , 0 , 5928 , 1 , 4 ) 
		GiveItem ( role , 0 , 3093 , 1 , 4 ) 
		itemname = "摩力团队果"
	elseif sc <=75 and sc >45 then
		GiveItem ( role , 0 , 5617 , 1 , 4 )                    ---------------中阶五倍经验果   获得机率30%
		GiveItem ( role , 0 , 5928 , 1 , 4 ) 
		GiveItem ( role , 0 , 3093 , 1 , 4 ) 
		itemname = "中阶五倍经验果"
	elseif sc <=95 and sc >95 then
		GiveItem ( role , 0 , 5609 , 3 , 4 )                    ---------------免死金牌   获得机率20%
		GiveItem ( role , 0 , 5928 , 1 , 4 ) 
		GiveItem ( role , 0 , 3093 , 1 , 4 ) 
		itemname = "免死金牌"	
	
	else   
		GiveItem ( role , 0 , 5839 , 2 , 4 )                   ---------------彩球X  获得机率5%
		GiveItem ( role , 0 , 5928 , 1 , 4 ) 
		GiveItem ( role , 0 , 3093 , 1 , 4 ) 
		itemname = "彩球X"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开长生剑神盒,惊喜的获得"..itemname )
end

-----------孔雀翎神盒
function ItemUse_kongquelingbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用孔雀翎神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 3 then
		SystemNotice(role ,"打开孔雀翎盒至少需要3个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5921 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启孔雀翎神盒的孔雀翎石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5921 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=10 then	
		GiveItem ( role , 0 , 0276 , 1 , 4 )                    ---------------高级圣雪山龙果   获得机率10%
		GiveItem ( role , 0 , 5929 , 1 , 4 ) 
		GiveItem ( role , 0 , 3092 , 1 , 4 ) 
		itemname = "高级圣雪山龙果"
	elseif sc <=30 and sc >10 then		
		GiveItem ( role , 0 , 0277 , 1 , 4 )                    ---------------高级冰极爽口梅   获得机率20%
		GiveItem ( role , 0 , 5929 , 1 , 4 ) 
		GiveItem ( role , 0 , 3092 , 1 , 4 ) 
		itemname = "高级冰极爽口梅"
	elseif sc <=50 and sc >30 then
		GiveItem ( role , 0 , 0279 , 1 , 4 )                    ---------------高级白银城果脯   获得机率20%
		GiveItem ( role , 0 , 5929 , 1 , 4 ) 
		GiveItem ( role , 0 , 3092 , 1 , 4 ) 
		itemname = "高级白银城果脯"
	elseif sc <=60 and sc >50 then
		GiveItem ( role , 0 , 0280 , 1 , 4 )                    ---------------高级新沙岚米饼   获得机率10%
		GiveItem ( role , 0 , 5929 , 1 , 4 ) 
		GiveItem ( role , 0 , 3092 , 1 , 4 ) 
		itemname = "高级新沙岚米饼"
	elseif sc <=90 and sc >60 then
		GiveItem ( role , 0 , 0278 , 1 , 4 )                    ---------------高级海风鳕鱼丝   获得机率30%
		GiveItem ( role , 0 , 5929 , 1 , 4 ) 
		GiveItem ( role , 0 , 3092 , 1 , 4 ) 
		itemname = "高级海风鳕鱼丝"	
	
	else   
		GiveItem ( role , 0 , 5610 , 4 , 4 )                   ---------------幸运洛克藏宝图  获得机率10%
		GiveItem ( role , 0 , 5929 , 1 , 4 ) 
		GiveItem ( role , 0 , 3092 , 1 , 4 ) 
		itemname = "幸运洛克藏宝图"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开孔雀翎神盒,惊喜的获得"..itemname )
end

-----------碧玉刀神盒
function ItemUse_biyudaobox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用碧玉刀神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 3 then
		SystemNotice(role ,"打开碧玉刀神盒至少需要3个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5922 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启碧玉刀神盒的碧玉刀石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5922 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=20 then	
		GiveItem ( role , 0 , 0259 , 1 , 4 )                    ---------------初级沉思   获得机率20%
		GiveItem ( role , 0 , 5930 , 1 , 4 ) 
		GiveItem ( role , 0 , 3091 , 1 , 4 ) 
		itemname = "初级沉思"
	elseif sc <=50 and sc >20 then		
		GiveItem ( role , 0 , 0227 , 12 , 4 )                    ---------------初级精灵饲料   获得机率30%
		GiveItem ( role , 0 , 5930 , 1 , 4 ) 
		GiveItem ( role , 0 , 3091 , 1 , 4 ) 
		itemname = "初级精灵饲料"
	elseif sc <=70 and sc >50 then
		GiveItem ( role , 0 , 3096 , 17 , 4 )                    ---------------双倍掉料增幅器   获得机率20%
		GiveItem ( role , 0 , 5930 , 1 , 4 ) 
		GiveItem ( role , 0 , 3091 , 1 , 4 ) 
		itemname = "双倍掉料增幅器"
	elseif sc <=80 and sc >70 then
		GiveItem ( role , 0 , 0246 , 1 , 4 )                    ---------------初级爆击   获得机率10%
		GiveItem ( role , 0 , 5930 , 1 , 4 ) 
		GiveItem ( role , 0 , 3091 , 1 , 4 ) 
		itemname = "初级爆击"
	elseif sc <=95 and sc >80 then
		GiveItem ( role , 0 , 0937 , 1 , 4 )                    ---------------天使之翼   获得机率15%
		GiveItem ( role , 0 , 5930 , 1 , 4 ) 
		GiveItem ( role , 0 , 3091 , 1 , 4 ) 
		itemname = "天使之翼"	
	
	else   
		GiveItem ( role , 0 , 0679 , 1 , 4 )                   ---------------摩豆精灵蛋  获得机率5%
		GiveItem ( role , 0 , 5930 , 1 , 4 ) 
		GiveItem ( role , 0 , 3091 , 1 , 4 ) 
		itemname = "摩豆精灵蛋"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开碧玉刀神盒,惊喜的获得"..itemname )
end

-----------多情环神盒
function ItemUse_duoqinghuanbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用多情环神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 3 then
		SystemNotice(role ,"打开多情环神盒至少需要3个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5923 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启多情环神盒的多情环石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5923 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=20 then	
		GiveItem ( role , 0 , 3079 , 5 , 4 )                    ---------------红包   获得机率20%
		GiveItem ( role , 0 , 5931 , 1 , 4 ) 
		GiveItem ( role , 0 , 3090 , 1 , 4 ) 
		itemname = "红包"
	elseif sc <=50 and sc >20 then		
		GiveItem ( role , 0 , 0890 , 1 , 4 )                    ---------------装备加固剂   获得机率30%
		GiveItem ( role , 0 , 5931 , 1 , 4 ) 
		GiveItem ( role , 0 , 3090 , 1 , 4 ) 
		itemname = "装备加固剂"
	elseif sc <=70 and sc >50 then
		GiveItem ( role , 0 , 0891 , 1 , 4 )                    ---------------装备催化粉   获得机率20%
		GiveItem ( role , 0 , 5931 , 1 , 4 ) 
		GiveItem ( role , 0 , 3090 , 1 , 4 ) 
		itemname = "装备催化粉"
	elseif sc <=80 and sc >70 then
		GiveItem ( role , 0 , 0252 , 1 , 4 )                    ---------------初级回复   获得机率10%
		GiveItem ( role , 0 , 5931 , 1 , 4 ) 
		GiveItem ( role , 0 , 3090 , 1 , 4 ) 
		itemname = "初级回复"
	elseif sc <=95 and sc >80 then
		GiveItem ( role , 0 , 0906 , 1 , 4 )                    ---------------黑魔翅膀   获得机率15%
		GiveItem ( role , 0 , 5931 , 1 , 4 ) 
		GiveItem ( role , 0 , 3090 , 1 , 4 ) 
		itemname = "黑魔翅膀"	
	
	else   
		GiveItem ( role , 0 , 3457 , 1 , 4 )                   ---------------纳卡符石  获得机率5%
		GiveItem ( role , 0 , 5931 , 1 , 4 ) 
		GiveItem ( role , 0 , 3090 , 1 , 4 ) 
		itemname = "纳卡符石"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开多情环神盒,惊喜的获得"..itemname )
end

-----------离别钩神盒
function ItemUse_libiegoubox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用离别钩神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 3 then
		SystemNotice(role ,"打开离别钩神盒至少需要3个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5924 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启离别钩神盒的离别钩石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5924 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=20 then	
		GiveItem ( role , 0 , 5641 , 2 , 4 )                    ---------------神奇老虎钳   获得机率20%
		GiveItem ( role , 0 , 5932 , 1 , 4 ) 
		GiveItem ( role , 0 , 3089 , 1 , 4 ) 
		itemname = "神奇老虎钳"
	elseif sc <=40 and sc >20 then		
		GiveItem ( role , 0 , 3878 , 1 , 4 )                    ---------------二级精炼石兑换券   获得机率20%
		GiveItem ( role , 0 , 5932 , 1 , 4 ) 
		GiveItem ( role , 0 , 3089 , 1 , 4 ) 
		itemname = "二级精炼石兑换券"
	elseif sc <=60 and sc >40 then
		GiveItem ( role , 0 , 0090 , 1 , 4 )                    ---------------少校之首   获得机率20%
		GiveItem ( role , 0 , 5932 , 1 , 4 ) 
		GiveItem ( role , 0 , 3089 , 1 , 4 ) 
		itemname = "少校之首"
	elseif sc <=90 and sc >60 then
		GiveItem ( role , 0 , 5644 , 15 , 4 )                    ---------------高级精灵饲料   获得机率30%
		GiveItem ( role , 0 , 5932 , 1 , 4 ) 
		GiveItem ( role , 0 , 3089 , 1 , 4 ) 
		itemname = "高级精灵饲料"
	elseif sc <=95 and sc >90 then
		GiveItem ( role , 0 , 0887 , 1 , 4 )                    ---------------圣光石   获得机率5%
		GiveItem ( role , 0 , 5932 , 1 , 4 ) 
		GiveItem ( role , 0 , 3089 , 1 , 4 ) 
		itemname = "圣光石"	
	
	else   
		GiveItem ( role , 0 , 5707 , 1 , 4 )                   ---------------乾坤锦囊  获得机率5%
		GiveItem ( role , 0 , 5932 , 1 , 4 ) 
		GiveItem ( role , 0 , 3089 , 1 , 4 ) 
		itemname = "乾坤锦囊"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开离别钩神盒,惊喜的获得"..itemname )
end

-----------霸王枪神盒
function ItemUse_bawangqiangbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用霸王枪神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开霸王枪神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5925 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启霸王枪神盒的霸王枪石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5925 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 0582 , 1 , 4 )                    ---------------高级贝壳兑换券   获得机率30%
		GiveItem ( role , 0 , 5933 , 1 , 4 ) 
		itemname = "高级贝壳兑换券"
	elseif sc <=45 and sc >30 then		
		GiveItem ( role , 0 , 2670 , 1 , 4 )                    ---------------天衣宝箱   获得机率15%
		GiveItem ( role , 0 , 5933 , 1 , 4 ) 
		itemname = "天衣宝箱"
	elseif sc <=70 and sc >45 then
		GiveItem ( role , 0 , 0091 , 1 , 4 )                    ---------------中校之首   获得机率25%
		GiveItem ( role , 0 , 5933 , 1 , 4 ) 
		itemname = "中校之首"
	elseif sc <=94 and sc >70 then
		GiveItem ( role , 0 , 2216 , 1 , 4 )                    ---------------技能重塑之书   获得机率24%
		GiveItem ( role , 0 , 5933 , 1 , 4 ) 
		itemname = "技能重塑之书"
	elseif sc <=99 and sc >94 then
		GiveItem ( role , 0 , 0581 , 1 , 4 )                    ---------------高级项链兑换券   获得机率5%
		GiveItem ( role , 0 , 5933 , 1 , 4 ) 
		itemname = "高级项链兑换券"	
	
	else   
		GiveItem ( role , 0 , 0853 , 1 , 4 )                   ---------------假期欢乐杂志  获得机率1%
		GiveItem ( role , 0 , 5933 , 1 , 4 ) 
		itemname = "假期欢乐杂志"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开霸王枪神盒,惊喜的获得"..itemname )
end

-----------拳头神盒
function ItemUse_quantoubox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用拳头神盒" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 2 then
		SystemNotice(role ,"打开拳头神盒至少需要2个空位")
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5926 )                                                
	if i <=0 then
		SystemNotice(  role , "请确定您身上有开启拳头神盒的拳头石")
		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5926 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=20 then	
		GiveItem ( role , 0 , 0862 , 1 , 4 )                    ---------------岩玉   获得机率20%
		GiveItem ( role , 0 , 3088 , 1 , 4 ) 
		itemname = "岩玉"
	elseif sc <=35 and sc >20 then		
		GiveItem ( role , 0 , 0863 , 1 , 4 )                    ---------------炎玉   获得机率15%
		GiveItem ( role , 0 , 3088 , 1 , 4 ) 
		itemname = "炎玉"
	elseif sc <=65 and sc >35 then
		GiveItem ( role , 0 , 0861 , 1 , 4 )                    ---------------鹰眼石   获得机率30%
		GiveItem ( role , 0 , 3088 , 1 , 4 ) 
		itemname = "鹰眼石"
	elseif sc <=90 and sc >65 then
		GiveItem ( role , 0 , 0860 , 1 , 4 )                    ---------------风灵石   获得机率25%
		GiveItem ( role , 0 , 3088 , 1 , 4 ) 
		itemname = "风灵石"
	elseif sc <=95 and sc >90 then
		GiveItem ( role , 0 , 0580 , 1 , 4 )                    ---------------高级戒指兑换券   获得机率5%
		GiveItem ( role , 0 , 3088 , 1 , 4 ) 
		itemname = "高级戒指兑换券"	
	
	else   
		GiveItem ( role , 0 , 1012 , 1 , 4 )                   ---------------加纳之神  获得机率5%
		GiveItem ( role , 0 , 3088 , 1 , 4 ) 
		itemname = "加纳之神"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开拳头神盒,惊喜的获得"..itemname )
end
----5级以下可以使用的新手升级果
function ItemUse_Lv5_AddExp(role) 

	local cha_lv = Lv(role)
	if cha_lv > 5 then 
		SystemNotice(role,"5级或5级以下才可以使用")
		UseItemFailed ( role )
		return LUA_FALSE
	else	
		--local exp_role=GetChaAttr (  role , ATTR_CEXP )----------当前经验	
		local cha_nlv = cha_lv+20
		local exp_add= GetExp[cha_nlv]-GetExp[cha_lv]			
			AddExp( role , npc , exp_add , exp_add)
		return LUA_TRUE	
	end
end
----50级以下可以使用的升级果
function ItemUse_Lv50_AddLv5(role) 

	local cha_lv = Lv(role)
	if cha_lv > 50 then 
		SystemNotice(role,"50级或50级以下才可以使用")
		UseItemFailed ( role )
		return LUA_FALSE
	else	
		--local exp_role=GetChaAttr (  role , ATTR_CEXP )----------当前经验	
		local cha_nlv = cha_lv+5
		local exp_add= GetExp[cha_nlv]- GetExp[cha_lv]			
			AddExp( role , npc , exp_add , exp_add)		
	end
end
----100级以下可以使用的升级果
function ItemUse_Lv100_AddLv1(role) 

	local cha_lv = Lv(role)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if cha_lv >= 100 then 
		SystemNotice(role,"100级以下才可以使用")
		UseItemFailed ( role )
		return LUA_FALSE
--	SystemNotice( role , Cha_Boat )
	elseif Cha_Boat ~=  nil then
		SystemNotice(Cha_Boat,"不能在海上使用")
		UseItemFailed ( role )
		return LUA_FALSE
	else	
		local exp_role=GetChaAttr (  role , ATTR_CEXP )----------当前经验
		-- if cha_lv >=1 and cha_lv <=79 then
		local cha_nlv = cha_lv+1
		local cha_n2lv= cha_nlv+1
		local lvNeedexp=GetExp[cha_nlv]-GetExp[cha_lv]
		local NlvNeedexp= GetExp[cha_n2lv]-GetExp[cha_nlv]
		local LvlessExp = exp_role-GetExp[cha_lv]
		local per= LvlessExp/lvNeedexp
		local NLvlessEXP=per*NlvNeedexp
		local ExpAfterAdd=NLvlessEXP+GetExp[cha_nlv]
		ExpAfterAdd=math.floor(ExpAfterAdd)
		SetChaAttr(role,ATTR_CEXP,ExpAfterAdd)
			-- local exp_add= GetExp[cha_nlv]-GetExp[cha_lv]
				-- SystemNotice(role,"exp_add="..exp_add)
			-- AddExp( role , npc , exp_add , exp_add)
		-- elseif	cha_lv >= 80 and cha_lv <= 89 then
			-- local cha_nlv = cha_lv+1
			-- local exp_add= (GetExp[cha_nlv]-GetExp[cha_lv])*50
				-- SystemNotice(role,"exp_add="..exp_add)
			-- AddExp( role , npc , exp_add , exp_add)			
		-- elseif 	cha_lv >= 90 and cha_lv <= 99 then
			-- local cha_nlv = cha_lv+1
			-- local exp_add= GetExp[cha_nlv]-GetExp[cha_lv]
				-- SystemNotice(role,"exp_add="..exp_add)
			-- AddExp( role , npc , exp_add , exp_add)
		-- end	
	end		
end
--精炼护佑石
function ItemUse_JLBYS ( role , Item )

	local statelv = 10
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_JLBYS , statelv , statetime )
		SystemNotice( role , "你喝了精炼护佑石，快去精炼道具吧！" )
				
	else
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
end

--合成护佑石

function ItemUse_HCBYS ( role , Item )

	local statelv = 11
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_HCBYS , statelv , statetime )
		SystemNotice( role , "你喝了合成护佑石，快去合成道具吧！" )		
	else
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
end



-----------彩球足尊宝箱        by Peter~
function ItemUse_caiqiubox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用宝箱" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开彩球足尊宝箱至少需要1个空位")
		UseItemFailed ( role )
		return
	end
local	sc = math.random(1,1000)
	local itemname = ""
	if  sc>= 1 and sc<= 150 then	
		GiveItem ( role , 0 , 5833 , 1 , 4 )                    ---------------号码球4号   获得机率20%
		itemname = "号码球4号"
	elseif sc>= 151 and sc<= 300 then		
		GiveItem ( role , 0 , 5834 , 1 , 4 )                    ---------------号码球4号   获得机率15%
		itemname = "号码球5号"
	elseif sc>= 301 and sc<= 450 then
		GiveItem ( role , 0 , 5835 , 1 , 4 )                    ---------------号码球4号   获得机率30%
		itemname = "号码球6号"
	elseif sc>= 451 and sc<= 500 then
		GiveItem ( role , 0 , 5836 , 1 , 4 )                    ---------------号码球4号   获得机率25%
		itemname = "号码球7号"
	elseif sc>= 501 and sc<= 550 then
		GiveItem ( role , 0 , 5837 , 1 , 4 )                    ---------------号码球4号  获得机率5%
		itemname = "号码球8号"	
	elseif sc>= 551 and sc<= 650 then		
		GiveItem ( role , 0 , 5838 , 1 , 4 )                    ---------------号码球4号   获得机率15%
		itemname = "号码球9号"
	elseif sc>= 651 and sc<=800 then		
		GiveItem ( role , 0 , 5844 , 1 , 4 )                    ---------------鼓惑崽召唤券   获得机率10%
		itemname = "鼓惑崽召唤券"
	elseif sc>=801 and sc<= 950 then		
		GiveItem ( role , 0 , 5843 , 1 , 4 )                    ---------------黄金万两技能券   获得机率10%
		itemname = "黄金万两技能券"
	elseif sc>= 951 and sc<= 975 then		
		GiveItem ( role , 0 , 0885 , 1 , 4 )                    ---------------精炼石   获得机率2.5%
		itemname = "精炼石"	
	elseif sc>= 976 and sc<= 997 then		
		GiveItem ( role , 0 , 2844 , 1 , 4 )                    ---------------地狱4层传送票   获得机率2.2%
		itemname = "地狱4层传送票"
	else   
		GiveItem ( role , 0 , 5839 , 1 , 4 )                   ---------------逆天的彩球X  获得机率0.3%
		itemname = "逆天的彩球X"
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "恭喜玩家" ..cha_name.."打开彩球足尊宝箱,惊喜的获得"..itemname )
end
----[[汉堡公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_HANBAO ( role , Item )  --[[汉堡公式]]--

	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("药品使用", "当前hp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("人物死后或非法hp值")  return 
		--LG("药品使用", "人物死后或非法hp值","\n" )  
	end 
	hp_resume = 235    
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("药品使用", "已达hp最大上限", "\n" ) 
	end 
		--LG("药品使用", "hp回复为", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[精灵果公式]]--") 
end 

----[[烤乳猪公式]]--————————————————————————————————————————————————————————————————————————————

function ItemUse_KAORUZHU ( role , Item )  --[[烤乳猪公式]]--
	local hp = GetChaAttr(role, ATTR_HP) 

	--LG("药品使用", "当前hp = ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("人物死后或非法hp值")  return 
		--LG("药品使用", "人物死后或非法hp值","\n" )  
	end 
	hp_resume = 280    
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then				 --加超过最大hp时返回为最大hp
		hp = mxhp 
		--LG("药品使用", "已达hp最大上限", "\n" ) 
	end 
		--LG("药品使用", "hp回复为", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[精灵果公式]]--") 
end 
---------------------冬岛双剑武器宝箱
function ItemUse_DDWQSHUANG( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local Cha_Boat = GetCtrlBoat ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用冬岛双剑武器宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 6136  , 1 , 4) 
end
---------------------冬岛巨剑武器宝箱
function ItemUse_DDWQNIU( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local Cha_Boat = GetCtrlBoat ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用冬岛巨剑武器宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 6141 , 1 , 4) 
end
---------------------冬岛狙击武器宝箱

function ItemUse_DDWQJU( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local Cha_Boat = GetCtrlBoat ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用冬岛狙击武器宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 6138 , 1 , 4) 
end

---------------------冬岛航海武器宝箱
function ItemUse_DDWQHANG( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local Cha_Boat = GetCtrlBoat ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用冬岛航海武器宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 6140 , 1 , 4) 
end
---------------------冬岛封印武器宝箱
function ItemUse_DDWQFENG( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local Cha_Boat = GetCtrlBoat ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用冬岛封印武器宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 6142 , 1 , 4) 
end
---------------------冬岛圣职武器宝箱
function ItemUse_DDWQSHENG( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local Cha_Boat = GetCtrlBoat ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用冬岛圣职武器宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 6143 , 1 , 4) 
end

function ItemUse_SZYINGYONG ( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用神之英勇宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 12 then
		SystemNotice( role , "只有狙击手才能打开这个箱子。" )
		UseItemFailed ( role )
		return
	end 
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6173 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6174 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6175 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6176 , 1 , 4)
		return
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."开启神之英勇宝箱惊喜地获得"..itemname  
	Notice ( message )
end
--神之荣誉宝箱————————————————————————————————————————————————————————————————
function ItemUse_SZRONGYU ( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用神之荣誉宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 9 then
		SystemNotice( role , "只有双剑士才能打开这个箱子。" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6177 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6178 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6179 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6180 , 1 , 4)
		return
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."开启神之荣誉宝箱惊喜地获得"..itemname  
	Notice ( message )
end
--神之牺牲宝箱————————————————————————————————————————————————————————————————
function ItemUse_SZXISHENG ( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用神之牺牲宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 8 then
		SystemNotice( role , "只有巨剑士才能打开这个箱子。" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6181 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6182 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6183 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6184 , 1 , 4)
		return
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."开启神之牺牲宝箱惊喜地获得"..itemname  
	Notice ( message )
end
--神之公正宝箱————————————————————————————————————————————————————————————————
function ItemUse_SZGONGZHENG ( role , Item )

	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 16 then
		SystemNotice( role , "只有航海士才能打开这个箱子。" )
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用神之公正宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6185 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6186 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6187 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6188 , 1 , 4)
		return
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."开启神之公正宝箱惊喜地获得"..itemname  
	Notice ( message )
end
--神之怜悯宝箱————————————————————————————————————————————————————————————————
function ItemUse_SZLIANMING ( role , Item )

	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 13 then
		SystemNotice( role , "只有圣职者才能打开这个箱子。" )
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用神之怜悯宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6189 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6190 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6191 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6192 , 1 , 4)
		return
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."开启神之怜悯宝箱惊喜地获得"..itemname  
	Notice ( message )
end
--神之精神宝箱————————————————————————————————————————————————————————————————
function ItemUse_SZJINGSHENG ( role , Item )

	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 14 then
		SystemNotice( role , "只有封印师才能打开这个箱子。" )
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，使用神之精神宝箱失败")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6193 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6194 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6195 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6196 , 1 , 4)
		return
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.."开启神之精神宝箱惊喜地获得"..itemname  
	Notice ( message )
end
----------------------------[[上古卷轴]]--
function ItemUse_SGJZ ( role , Item )  

	local el_exp = GetChaAttr(role, ATTR_CEXP)
	local exp1=el_exp
	local charLv=Lv ( role )
	local exp_resume = 2000000
	el_exp = el_exp + exp_resume
	if charLv>=100 then	
		el_exp = exp1 + exp_resume
	else
		SystemNotice (role , "等级未到100级！道具使用失败！")
		UseItemFailed(role)
		return
	end
	SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 

------------------------------------------------------------随从召唤券兑换宝箱
function ItemUse_CWKPDHBX ( role )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"没有足够的空间，无法打开箱子。")
		UseItemFailed ( role )
		return
	end

	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 100 )
	--SystemNotice(role ,"star=="..star)
		if star<=10 then
			GiveItem ( role , 0 , 6295  , 1 , 4  )
			local message1 = cha_name.."打开兑换宝箱,得到了艾米新娘召唤券!" 
			Notice ( message1 )
		elseif star>=10 and star<=20 then
			GiveItem ( role , 0 , 6296  , 1 , 4  )
			local message2 = cha_name.."打开兑换宝箱,得到了可爱罗莉召唤券!" 
			Notice ( message2 )
		elseif star>=21 and star<=30 then
			GiveItem ( role , 0 , 6297  , 1 , 4  )
			local message3 = cha_name.."打开兑换宝箱,得到了年兽小妹召唤券!" 
			Notice ( message3 )
		elseif star>=31 and star<=40 then
			GiveItem ( role , 0 , 6298  , 1 , 4  )
			local message4 = cha_name.."打开兑换宝箱,得到了冷月女皇召唤券!" 
			Notice ( message4 )
		elseif star>=41 and star<=50 then
			GiveItem ( role , 0 , 6299  , 1 , 4  )
			local message5 = cha_name.."打开兑换宝箱,得到了菲利尔新娘召唤券!" 
			Notice ( message5 )
		elseif star>=51 and star<=60 then
			GiveItem ( role , 0 , 6300  , 1 , 4  )
			local message6 = cha_name.."打开兑换宝箱,得到了皇家少校召唤券!" 
			Notice ( message6 )
		elseif star>=61 and star<=70 then
			GiveItem ( role , 0 , 6301  , 1 , 4  )
			local message7 = cha_name.."打开兑换宝箱,得到了不哭死神召唤券!" 
			Notice ( message7 )
		elseif star>=71 and star<=80 then
			GiveItem ( role , 0 , 6302  , 1 , 4  )
			local message8 = cha_name.."打开兑换宝箱,得到了骇客战士召唤券!" 
			Notice ( message8 )
		elseif star>=81 and star<=90 then
			GiveItem ( role , 0 , 6203  , 1 , 4  )
			local message9 = cha_name.."打开兑换宝箱,得到了射水贝王召唤券!" 
			Notice ( message9 )
		elseif star>=91 and star<=100 then
			GiveItem ( role , 0 , 6304  , 1 , 4  )
			local message10 = cha_name.."打开兑换宝箱,得到了蔻蔻召唤券!" 
			Notice ( message10 )

		end	
end

---------------------------------艾米新娘召唤券--双击召唤艾米新娘
function ItemUse_AMXN ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1126     -------------------艾米新娘 1126
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------可爱罗莉召唤券--双击召唤可爱罗莉
function ItemUse_AMKALL ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1127     -------------------可爱罗莉 1127
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------年兽小妹召唤券--双击召唤年兽小妹
function ItemUse_AMNSXM ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1128     -------------------年兽小妹 1128
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------冷月女皇召唤券--双击召唤冷月女皇
function ItemUse_FLELYNH ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1129     -------------------冷月女皇 1129
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------菲利尔新娘召唤券--双击召唤菲利尔新娘
function ItemUse_FLEXN ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1130     -------------------菲利尔新娘 1130
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------皇家少校召唤券--双击召唤皇家少校
function ItemUse_FLEHJSX ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1131     -------------------皇家少校 1131
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------不哭死神召唤券--双击召唤不哭死神
function ItemUse_LQBKSS ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1132     -------------------不哭死神 1132
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------骇客战士召唤券--双击召唤金牛战士
function ItemUse_KXSHKZS ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1133     -------------------骇客战士 1133
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------射水贝王召唤券--双击召唤射水贝王
function ItemUse_CWSSBW ( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1134     -------------------射水贝王 1134
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------蔻蔻召唤券--双击召唤蔻蔻
function ItemUse_CWKK( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1135     -------------------蔻蔻 1135
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

---------------------------------黑龙宝宝召唤券--双击召唤黑龙宝宝
function ItemUse_CWHLBB( role , Item  )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "海上不可使用" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 2 then
		SystemNotice( role , "随从已满2只,请稍候再召唤!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID = 1136     -------------------黑龙宝宝 1136
	local Refresh = 3600					--重生时间，秒单位
	local life = 3600000					--生命时间，毫秒单位
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end




--0902新版挖宝


--盗宝贼击杀令的使用以及刷出怪物的分布（by 刘博颋）
function ItemUse_WaBao_DBZJSL ( role , Item )
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local name = GetChaDefaultName ( role )
	local Lv = Lv( role )
	local Item = GetChaItem2 ( role , 2 , 6341 )						-------------------这个接口是取角色背包里某种ID的道具指针，前提是这个道具在背包里只有一个
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE									-------------------最大耐久，记录x坐标
	local pos_y = Item_MAXENERGY								-------------------最大能量，记录y坐标
	local Themap = Item_URE
	--按照玩家等级随机分配怪物的坐标
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local MapNameList = { }
	
	MapNameList [0] = "没有地图"
	MapNameList [1] = "加纳"
	MapNameList [2] = "魔女"
	MapNameList [3] = "深蓝"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		UseItemFailed ( role )
		if  Lv <= 40 then 			
			SystemNotice ( role , "等级不够41级，不能使用盗宝贼击杀令。" )
			return
			
		elseif Lv > 40 and Lv < 45 then			
			local pos_x , pos_y , Themap = GetTheMapPos_40 ( role , 1 )		
			local Item_MAXURE = pos_x
			local Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			local Item_MAXENERGY = pos_y
			SystemNotice ( role , "必须在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近使用才能引来盗宝的怪物" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )			
			return
			
		elseif Lv >= 45 and Lv < 50 then			
			pos_x , pos_y , Themap = GetTheMapPos_45 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "必须在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近使用才能引来盗宝的怪物" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )			
			return	
			
		elseif Lv >= 50 and Lv < 55 then			
			pos_x , pos_y , Themap = GetTheMapPos_50 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "必须在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近使用才能引来盗宝的怪物" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )			
			return
			
		elseif Lv >= 55 and Lv < 60 then			
			pos_x , pos_y , Themap = GetTheMapPos_55 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "必须在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近使用才能引来盗宝的怪物" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
			return
			
		elseif Lv >= 60 and Lv < 65 then			
			pos_x , pos_y , Themap = GetTheMapPos_60 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "必须在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近使用才能引来盗宝的怪物" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
			return	
			
		elseif Lv >= 65 and Lv < 70 then			
			pos_x , pos_y , Themap = GetTheMapPos_65 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "必须在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近使用才能引来盗宝的怪物" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
			return
		
		elseif Lv >= 70  then			
			pos_x , pos_y , Themap = GetTheMapPos_70 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "必须在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近使用才能引来盗宝的怪物" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
		    return
		end	
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
	if GetPos == 0 then
		SystemNotice ( role , "必须在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近使用才能引来盗宝的怪物" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local x, y = GetChaPos(role)
		local Refresh = 6000000					--重生时间，秒单位
		local life = 5900000000					--生命时间，毫秒单位
		if Lv > 40 and Lv <= 45 then
			local MonsterID = 1144      --40级盗宝怪ID
			local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
			--SetChaHost(new,role)
			SetChaLifeTime( new, life )
			--SetChaTarget(new, role)
			SystemNotice(role , "使用道具成功，盗宝贼现身了。")
			return
		elseif Lv > 45 and Lv <= 50 then
			local MonsterID = 1145      --45级盗宝怪ID
			local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
			--SetChaHost(new,role)
			SetChaLifeTime( new, life )
			--SetChaTarget(new, role)
			SystemNotice(role , "使用道具成功，盗宝贼现身了。")
			return
		elseif Lv > 50 and Lv <= 55 then
			local MonsterID = 1146		--50级盗宝怪ID
			local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
			--SetChaHost(new,role)
			SetChaLifeTime( new, life )
			--SetChaTarget(new, role)
			SystemNotice(role , "使用道具成功，盗宝贼现身了。")
			return
		elseif Lv > 55 and Lv <= 60 then
			local MonsterID = 1147		--55级盗宝怪ID
			local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
			--SetChaHost(new,role)
			SetChaLifeTime( new, life )
			--SetChaTarget(new, role)
			SystemNotice(role , "使用道具成功，盗宝贼现身了。")
			return	
		elseif Lv > 60 and Lv <= 65 then
			local MonsterID = 1148		--60级盗宝怪ID
			local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
			--SetChaHost(new,role)
			SetChaLifeTime( new, life )
			--SetChaTarget(new, role)
			SystemNotice(role , "使用道具成功，盗宝贼现身了。")
			return
		elseif Lv > 65 and Lv <= 70 then
			local MonsterID = 1149		--65级盗宝怪ID
			local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
			--SetChaHost(new,role)
			SetChaLifeTime( new, life )
			--SetChaTarget(new, role)
			SystemNotice(role , "使用道具成功，盗宝贼现身了。")
			return
		-- elseif Lv > 70 and Lv <= 75 then
			-- local MonsterID = 1151		--70级盗宝怪ID
			-- local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
			--SetChaHost(new,role)
			-- SetChaLifeTime( new, life )
			--SetChaTarget(new, role)
			-- SystemNotice(role , "使用道具成功，盗宝贼现身了。")
			-- return	
		else
			local MonsterID = 1150		--70级盗宝怪ID
			local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
			--SetChaHost(new,role)
			SetChaLifeTime( new, life )
			--SetChaTarget(new, role)
			SystemNotice(role , "使用道具成功，盗宝贼现身了。")
			return
		end
	end	
end			



--宝图初始坐标创建以及掉落状况（by 刘博颋）
function ItemUse_WaBao_HDCBT ( role , Item )

 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"身上最少需要1个空位")
		UseItemFailed ( role )
		return
	end 
	
	local Has_Map_NewPT = CheckBagItem ( role , 6343 )


	if Has_Map_NewPT >= 2 then
		SystemNotice ( role , "所携带的藏宝图超过一张，挖掘失败" )
		UseItemFailed ( role )
		return
	end
	local name = GetChaDefaultName ( role )
	local Lv = Lv( role )
	local Item = GetChaItem2 ( role , 2 , 6343 )						-------------------这个接口是取角色背包里某种ID的道具指针，前提是这个道具在背包里只有一个
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE									-------------------最大耐久，记录x坐标
	local pos_y = Item_MAXENERGY								-------------------最大能量，记录y坐标
	local Themap = Item_URE
	--按照宝图等级随机分配挖图的坐标
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local MapNameList = { }
	
	MapNameList [0] = "没有地图"
	MapNameList [1] = "加纳"
	MapNameList [2] = "魔女"
	MapNameList [3] = "深蓝"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		UseItemFailed ( role )
		if  Lv < 41 then 
		
			SystemNotice ( role , "等级不够41级，不能使用藏宝图。" )
			return
			
		elseif Lv >= 41 and Lv < 45 then	
			UseItemFailed ( role )
			pos_x , pos_y , Themap = GetTheMapPos_40 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "宝藏的位置在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
			return
			
		elseif Lv >= 45 and Lv < 50 then			
			UseItemFailed ( role )
			pos_x , pos_y , Themap = GetTheMapPos_45 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "宝藏的位置在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
			return	
			
		elseif Lv >= 50 and Lv < 55 then			
			UseItemFailed ( role )
			pos_x , pos_y , Themap = GetTheMapPos_50 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "宝藏的位置在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
			return
			
		elseif Lv >= 55 and Lv < 60 then			
			UseItemFailed ( role )
			pos_x , pos_y , Themap = GetTheMapPos_55 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "宝藏的位置在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
			return
			
		elseif Lv >= 60 and Lv < 65 then			
			UseItemFailed ( role )
			pos_x , pos_y , Themap = GetTheMapPos_60 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "宝藏的位置在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
			return	
			
		elseif Lv >= 65 and Lv < 70 then			
			UseItemFailed ( role )
			pos_x , pos_y , Themap = GetTheMapPos_65 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "宝藏的位置在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
			return
		
		elseif Lv >= 70  then			
			UseItemFailed ( role )
			pos_x , pos_y , Themap = GetTheMapPos_70 ( role , 1 )		
			Item_MAXURE = pos_x
			Item_URE = Themap									---------------------当前耐久为0~3，通过MapList[Themap]来变相记录是哪张地图
			Item_MAXENERGY = pos_y
			SystemNotice ( role , "宝藏的位置在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近" )
			SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
			SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
			SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
		    return
		end	
	end
			
	
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
	if GetPos == 0 then
		SystemNotice ( role , "宝藏的位置在"..MapNameList[Themap].."区域的 "..pos_x..","..pos_y.." 附近" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then   	
		if  IsWaBao(role) == 0 then
			
			local getrandom = math.random ( 1 , 100 )
			if getrandom <= 5 then					----------------------------------------------什么都没有获得
				SystemNotice ( role , "假宝图到处都是,节哀顺变吧。" )
				return
			elseif getrandom > 5 and getrandom <= 15 then               ----------------------------------------------------少量金钱
				local GiveMoney = math.random (2000,2000+lv*20)
				SystemNotice ( role , "挖到一个小宝藏，获得"..GiveMoney.."金钱" )
				AddMoney ( role , 0 , GiveMoney )
				return
			elseif getrandom > 15 and getrandom <= 35 then              -------------------------------------------------获得商城道具
				SystemNotice ( role , "哇，不知道谁把商城道具埋在地里，今天运气不错。" )
				local get_shopitem_random = math.random( 1,100 )
				if get_shopitem_random < 3 then
					GiveItem ( role , 0 , 1807 , 1 , 4 )  --理发券
					return
				elseif get_shopitem_random >= 3 and get_shopitem_random < 13 then
					GiveItem ( role , 0 , 5626 , 1 , 4 )  --超级生命恢复剂
					return	
				elseif get_shopitem_random >= 13 and get_shopitem_random < 18 then
					GiveItem ( role , 0 , 5627 , 1 , 4 )  --法力圣水
					return	
				elseif get_shopitem_random >= 18 and get_shopitem_random < 19 then
					GiveItem ( role , 0 , 3095 , 1 , 4 )  --高级努力
					return	
				elseif get_shopitem_random >= 19 and get_shopitem_random < 24 then
					GiveItem ( role , 0 , 3081 , 1 , 4 )  --菊型礼花
					return		
				elseif get_shopitem_random >= 24 and get_shopitem_random < 29 then
					GiveItem ( role , 0 , 3082 , 1 , 4 )  --豪华礼花
					return	
				elseif get_shopitem_random >= 29 and get_shopitem_random < 34 then
					GiveItem ( role , 0 , 3343 , 1 , 4 )  --玫瑰
					return		
				elseif get_shopitem_random >= 34 and get_shopitem_random < 39 then
					GiveItem ( role , 0 , 3077 , 1 , 4 )  --甜蜜巧克力
					return		
				elseif get_shopitem_random >= 39 and get_shopitem_random < 44 then
					GiveItem ( role , 0 , 3094 , 1 , 4 )  --双倍经验增幅器
					return		
				elseif get_shopitem_random >= 44 and get_shopitem_random < 46 then
					GiveItem ( role , 0 , 3100 , 1 , 4 )  --雄狮模拟药剂
					return		
				elseif get_shopitem_random >= 46 and get_shopitem_random < 48 then
					GiveItem ( role , 0 , 3101 , 1 , 4 )  --灵猴模拟药剂
					return	
				elseif get_shopitem_random >= 48 and get_shopitem_random < 50 then
					GiveItem ( role , 0 , 3102 , 1 , 4 )  --蛮牛模拟药剂
					return	
				elseif get_shopitem_random >= 50 and get_shopitem_random < 52 then
					GiveItem ( role , 0 , 3103 , 1 , 4 )  --鹰眼模拟药剂
					return	
				elseif get_shopitem_random >= 52 and get_shopitem_random < 54 then
					GiveItem ( role , 0 , 3104 , 1 , 4 )  --圣灵模拟药剂
					return	
				elseif get_shopitem_random >= 54 and get_shopitem_random < 56 then
					GiveItem ( role , 0 , 0332 , 1 , 4 )  --春风机票
					return	
				elseif get_shopitem_random >= 56 and get_shopitem_random < 58 then
					GiveItem ( role , 0 , 0563 , 1 , 4 )  --夏岛机票
					return	
				elseif get_shopitem_random >= 58 and get_shopitem_random < 60 then
					GiveItem ( role , 0 , 0583 , 1 , 4 )  --秋岛机票
					return	
				elseif get_shopitem_random >= 60 and get_shopitem_random < 62 then
					GiveItem ( role , 0 , 2491 , 1 , 4 )  --海军机票
					return	
				elseif get_shopitem_random >= 62 and get_shopitem_random < 64 then
					GiveItem ( role , 0 , 3099 , 1 , 4 )  --SP神仙水
					return		
				elseif get_shopitem_random >= 64 and get_shopitem_random < 69 then
					GiveItem ( role , 0 , 3097 , 1 , 4 )  --强力体力恢复药剂
					return	
				elseif get_shopitem_random >= 69 and get_shopitem_random < 71 then
					GiveItem ( role , 0 , 3351 , 1 , 4 )  --皇家礼炮A
					return	
				elseif get_shopitem_random >= 71 and get_shopitem_random < 73 then
					GiveItem ( role , 0 , 3352 , 1 , 4 )  --皇家礼炮B
					return	
				elseif get_shopitem_random >= 73 and get_shopitem_random < 75 then
					GiveItem ( role , 0 , 3353 , 1 , 4 )  --皇家礼炮C
					return	
				elseif get_shopitem_random >= 75 and get_shopitem_random < 77 then
					GiveItem ( role , 0 , 3354 , 1 , 4 )  --心型烟花-I
					return	
				elseif get_shopitem_random >= 77 and get_shopitem_random < 79 then
					GiveItem ( role , 0 , 3355 , 1 , 4 )  --心型烟花-LOVE
					return	
				elseif get_shopitem_random >= 79 and get_shopitem_random < 81 then
					GiveItem ( role , 0 , 3356 , 1 , 4 )  --心型烟花-U
					return	
				elseif get_shopitem_random >= 81 and get_shopitem_random < 83 then
					GiveItem ( role , 0 , 3357 , 1 , 4 )  --心型烟花-爱
					return	
				elseif get_shopitem_random >= 83 and get_shopitem_random < 85 then
					GiveItem ( role , 0 , 3358 , 1 , 4 )  --心型烟花-你
					return	
				elseif get_shopitem_random >= 85 and get_shopitem_random < 87 then
					GiveItem ( role , 0 , 3359 , 1 , 4 )  --心型烟花-我
					return	
				elseif get_shopitem_random >= 87 and get_shopitem_random < 89 then
					GiveItem ( role , 0 , 3834 , 1 , 4 )  --寂寞之塔门口机票
					return	
				elseif get_shopitem_random >= 89 and get_shopitem_random < 91 then
					GiveItem ( role , 0 , 3839 , 1 , 4 )  --寂寞之塔2层机票
					return	
				elseif get_shopitem_random >= 91 and get_shopitem_random < 93 then
					GiveItem ( role , 0 , 3840 , 1 , 4 )  --寂寞之塔3层机票
					return	
				elseif get_shopitem_random >= 93 and get_shopitem_random < 95 then
					GiveItem ( role , 0 , 3841 , 1 , 4 )  --寂寞之塔4层机票
					return	
				elseif get_shopitem_random >= 95 and get_shopitem_random < 97 then
					GiveItem ( role , 0 , 3842 , 1 , 4 )  --寂寞之塔5层机票
					return	
				elseif get_shopitem_random >= 97 and get_shopitem_random < 99 then
					GiveItem ( role , 0 , 3843 , 1 , 4 )  --寂寞之塔6层机票
					return	
				else
					GiveItem ( role , 0 , 3846 , 1 , 4 )  --替身娃娃
					return		
				end
				
				
			elseif getrandom > 35 and getrandom <= 50 then	              -------------------------------------------------吹回白银城
				RemoveChaItem( role , 6343 , 1 , 2 , -1 , 2 , 1 )
				SystemNotice ( role , "一阵大风吹来，你飘啊飘啊飘回了白银城。" )
				MoveTo( role,2200,2888,"garner" )					
				return
			elseif getrandom > 50 and getrandom <= 60 then					----------------------------出现怪物守护
				local x, y = GetChaPos(role)
				local Refresh = 6000000					--重生时间，秒单位
				local life = 5900000000					--生命时间，毫秒单位
				if Lv > 40 and Lv <= 45 then
					local MonsterID = 1160		--40怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 45 and Lv <= 50 then
					local MonsterID = 1161		--45怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 50 and Lv <= 55 then
					local MonsterID = 1162		--50怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 55 and Lv <= 60 then
					local MonsterID = 1163		--55怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 60 and Lv <= 65 then
					local MonsterID = 1164		--60怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 65 and Lv <= 70 then
					local MonsterID = 1165		--65怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 70 then
					local MonsterID = 1166		--70怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				end	
			elseif getrandom > 60 and getrandom <= 64 then					---------------------------------会掉紫装的小BOSS			
				local x, y = GetChaPos(role)
				local Refresh = 6000000					--重生时间，秒单位
				local life = 5900000000					--生命时间，毫秒单位
				local MonsterID = 1168		--挖宝大boss的ID
				local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
				-- SetChaHost(new,role)
				SetChaLifeTime( new, life )
				-- SetChaTarget(new, role)
				
				if Lv > 40 and Lv <= 45 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。")
					return
				elseif Lv > 45 and Lv <= 50 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。")
					return
				elseif Lv > 50 and Lv <= 55 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。")
					return	
				elseif Lv > 55 and Lv <= 60 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。")
					return
				elseif Lv > 60 and Lv <= 65 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。")
					return	
				elseif Lv > 65 and Lv <= 70 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在加纳大陆的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在加纳大陆的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。")
					return	
				else
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在加纳大陆的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在加纳大陆的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。")
					return	
				end	
				
				-- local map_role = GetChaMapName ( role )
				-- local map_role_name = 0
				-- if map_role == "garner" then
					-- local map_role_name = "加纳大陆"
				-- elseif map_role == "magicsea" then
					-- local map_role_name = "魔女海岸"	
				-- elseif map_role == "darkblue" then
					-- local map_role_name = "深蓝群岛"
				-- end		
				
				-- SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
				-- Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在"..map_role_name.."地区的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" )
				-- return

			elseif getrandom > 64 and getrandom <= 80 then					----------------------------------搞笑的特效--因BB组件祛除而增加1%几率
				--SystemNotice ( role , "你挖宝时遭到了天神的鄙视。" )
				Notice(name.."挖宝时遭到了天神的鄙视。")
				AddState(role , role , STATE_JLTX6 , 1 , 300 )
				return	
			-- elseif getrandom > 79 and getrandom <= 80 then					-------------------------------获得用来换取BB装的组件--暂时祛除
				-- local part_of_boss_item = math.random( 1,3 )
				-- SystemNotice ( role , "挖到奇怪的组件，好像是BB装的一部分" )
				-- ScrollNotice ( name.."挖宝时挖到可以用来换取75级BB装的古代英雄残片，运气真是棒啊！" ,1)
				-- if part_of_boss_item ==	1 then
					-- GiveItem ( role , 0 , 6344 , 1 , 4  )
					-- return
				-- elseif part_of_boss_item == 2 then
					-- GiveItem ( role , 0 , 6345 , 1 , 4  )
					-- return
				-- else
					-- GiveItem ( role , 0 , 6346 , 1 , 4  )
					-- return
				-- end	
			elseif getrandom > 80 and getrandom <= 85 then					-------------------------------难度不大，但是皮很厚的经验boss
				local x, y = GetChaPos(role)
				local Refresh = 6000000					--重生时间，秒单位
				local life = 5900000000				--生命时间，毫秒单位
				if Lv > 40 and Lv <= 45 then
					local MonsterID = 1152		--40经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" )
					return	
				elseif Lv > 45 and Lv <= 50 then
					local MonsterID = 1153		--45经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" )
					return	
				elseif Lv > 50 and Lv <= 55 then
					local MonsterID = 1154		--50经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" )
					return	
				elseif Lv > 55 and Lv <= 60 then
					local MonsterID = 1155		--55经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" )
					return		
				elseif Lv > 60 and Lv <= 65 then
					local MonsterID = 1156		--60经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" )
					return	
				elseif Lv > 65 and Lv <= 70 then
					local MonsterID = 1157		--65经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在加纳大陆"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在加纳大陆"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" )
					return		
				elseif Lv > 70  then
					local MonsterID = 1158		--70经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					-- SetChaHost(new,role)
					SetChaLifeTime( new, life )
					-- SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在加纳大陆"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就要被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在加纳大陆"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" )
					return	
				end	
			elseif getrandom > 85 and getrandom <= 100 then	               -------------------传送至命运房间
				RemoveChaItem( role , 6343 , 1 , 2 , -1 , 2 , 1 )
				ScrollNotice ("灵光一闪，"..name.."被传送到了传说中海盗王曾经埋藏宝贝的命运房间" , 1)
				SystemNotice ( role , "打爆命运房间中的命运宝箱，你的背包中将会自动获得它，双击命运宝箱，试试你的运气吧！(一个玩家身上最多只能同时携带一个命运宝箱，想获得下一个箱子首先要使用掉你已经获得的箱子。)" )
				MoveTo( role ,50,50,"mingyun")				
				return
			
			end
			
		else
			
			local getrandom = math.random ( 1 , 100 )
			if getrandom <= 10 then               ----------------------------------------------------少量金钱
				local GiveMoney = 200 * math.random ( 1, 10 )
				SystemNotice ( role , "挖到一个小宝藏，获得"..GiveMoney.."金钱" )
				AddMoney ( role , 0 , GiveMoney )
				return
			elseif getrandom > 10 and getrandom <= 35 then              -------------------------------------------------获得商城道具
				SystemNotice ( role , "哇，不知道谁把商城道具埋在地里，今天运气不错。" )
				local get_shopitem_random = math.random( 1,100 )
				if get_shopitem_random < 3 then
					GiveItem ( role , 0 , 1807 , 1 , 4 )  --理发券
					return
				elseif get_shopitem_random >= 3 and get_shopitem_random < 13 then
					GiveItem ( role , 0 , 5626 , 1 , 4 )  --超级生命恢复剂
					return	
				elseif get_shopitem_random >= 13 and get_shopitem_random < 18 then
					GiveItem ( role , 0 , 5627 , 1 , 4 )  --法力圣水
					return	
				elseif get_shopitem_random >= 18 and get_shopitem_random < 19 then
					GiveItem ( role , 0 , 3095 , 1 , 4 )  --高级努力
					return	
				elseif get_shopitem_random >= 19 and get_shopitem_random < 24 then
					GiveItem ( role , 0 , 3081 , 1 , 4 )  --菊型礼花
					return		
				elseif get_shopitem_random >= 24 and get_shopitem_random < 29 then
					GiveItem ( role , 0 , 3082 , 1 , 4 )  --豪华礼花
					return	
				elseif get_shopitem_random >= 29 and get_shopitem_random < 34 then
					GiveItem ( role , 0 , 3343 , 1 , 4 )  --玫瑰
					return		
				elseif get_shopitem_random >= 34 and get_shopitem_random < 39 then
					GiveItem ( role , 0 , 3077 , 1 , 4 )  --甜蜜巧克力
					return		
				elseif get_shopitem_random >= 39 and get_shopitem_random < 44 then
					GiveItem ( role , 0 , 3094 , 1 , 4 )  --双倍经验增幅器
					return		
				elseif get_shopitem_random >= 44 and get_shopitem_random < 46 then
					GiveItem ( role , 0 , 3100 , 1 , 4 )  --雄狮模拟药剂
					return		
				elseif get_shopitem_random >= 46 and get_shopitem_random < 48 then
					GiveItem ( role , 0 , 3101 , 1 , 4 )  --灵猴模拟药剂
					return	
				elseif get_shopitem_random >= 48 and get_shopitem_random < 50 then
					GiveItem ( role , 0 , 3102 , 1 , 4 )  --蛮牛模拟药剂
					return	
				elseif get_shopitem_random >= 50 and get_shopitem_random < 52 then
					GiveItem ( role , 0 , 3103 , 1 , 4 )  --鹰眼模拟药剂
					return	
				elseif get_shopitem_random >= 52 and get_shopitem_random < 54 then
					GiveItem ( role , 0 , 3104 , 1 , 4 )  --圣灵模拟药剂
					return	
				elseif get_shopitem_random >= 54 and get_shopitem_random < 56 then
					GiveItem ( role , 0 , 0332 , 1 , 4 )  --春风机票
					return	
				elseif get_shopitem_random >= 56 and get_shopitem_random < 58 then
					GiveItem ( role , 0 , 0563 , 1 , 4 )  --夏岛机票
					return	
				elseif get_shopitem_random >= 58 and get_shopitem_random < 60 then
					GiveItem ( role , 0 , 0583 , 1 , 4 )  --秋岛机票
					return	
				elseif get_shopitem_random >= 60 and get_shopitem_random < 62 then
					GiveItem ( role , 0 , 2491 , 1 , 4 )  --海军机票
					return	
				elseif get_shopitem_random >= 62 and get_shopitem_random < 64 then
					GiveItem ( role , 0 , 3099 , 1 , 4 )  --SP神仙水
					return		
				elseif get_shopitem_random >= 64 and get_shopitem_random < 69 then
					GiveItem ( role , 0 , 3097 , 1 , 4 )  --强力体力恢复药剂
					return	
				elseif get_shopitem_random >= 69 and get_shopitem_random < 71 then
					GiveItem ( role , 0 , 3351 , 1 , 4 )  --皇家礼炮A
					return	
				elseif get_shopitem_random >= 71 and get_shopitem_random < 73 then
					GiveItem ( role , 0 , 3352 , 1 , 4 )  --皇家礼炮B
					return	
				elseif get_shopitem_random >= 73 and get_shopitem_random < 75 then
					GiveItem ( role , 0 , 3353 , 1 , 4 )  --皇家礼炮C
					return	
				elseif get_shopitem_random >= 75 and get_shopitem_random < 77 then
					GiveItem ( role , 0 , 3354 , 1 , 4 )  --心型烟花-I
					return	
				elseif get_shopitem_random >= 77 and get_shopitem_random < 79 then
					GiveItem ( role , 0 , 3355 , 1 , 4 )  --心型烟花-LOVE
					return	
				elseif get_shopitem_random >= 79 and get_shopitem_random < 81 then
					GiveItem ( role , 0 , 3356 , 1 , 4 )  --心型烟花-U
					return	
				elseif get_shopitem_random >= 81 and get_shopitem_random < 83 then
					GiveItem ( role , 0 , 3357 , 1 , 4 )  --心型烟花-爱
					return	
				elseif get_shopitem_random >= 83 and get_shopitem_random < 85 then
					GiveItem ( role , 0 , 3358 , 1 , 4 )  --心型烟花-你
					return	
				elseif get_shopitem_random >= 85 and get_shopitem_random < 87 then
					GiveItem ( role , 0 , 3359 , 1 , 4 )  --心型烟花-我
					return	
				elseif get_shopitem_random >= 87 and get_shopitem_random < 89 then
					GiveItem ( role , 0 , 3834 , 1 , 4 )  --寂寞之塔门口机票
					return	
				elseif get_shopitem_random >= 89 and get_shopitem_random < 91 then
					GiveItem ( role , 0 , 3839 , 1 , 4 )  --寂寞之塔2层机票
					return	
				elseif get_shopitem_random >= 91 and get_shopitem_random < 93 then
					GiveItem ( role , 0 , 3840 , 1 , 4 )  --寂寞之塔3层机票
					return	
				elseif get_shopitem_random >= 93 and get_shopitem_random < 95 then
					GiveItem ( role , 0 , 3841 , 1 , 4 )  --寂寞之塔4层机票
					return	
				elseif get_shopitem_random >= 95 and get_shopitem_random < 97 then
					GiveItem ( role , 0 , 3842 , 1 , 4 )  --寂寞之塔5层机票
					return	
				elseif get_shopitem_random >= 97 and get_shopitem_random < 99 then
					GiveItem ( role , 0 , 3843 , 1 , 4 )  --寂寞之塔6层机票
					return	
				else
					GiveItem ( role , 0 , 3846 , 1 , 4 )  --替身娃娃
					return		
				end
				
				
			elseif getrandom > 35 and getrandom <= 40 then	              -------------------------------------------------吹回白银城
				RemoveChaItem( role , 6343 , 1 , 2 , -1 , 2 , 1 )
				SystemNotice ( role , "一阵大风吹来，你飘啊飘啊飘回了白银城。" )
				MoveTo( role,2200,2888,"garner" )		
				return
			elseif getrandom > 40 and getrandom <= 50 then					----------------------------出现怪物守护
				local x, y = GetChaPos(role)
				local Refresh = 6000000					--重生时间，秒单位
				local life = 5900000000					--生命时间，毫秒单位
				if Lv > 40 and Lv <= 45 then
					local MonsterID = 1160		--40怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 45 and Lv <= 50 then
					local MonsterID = 1161		--45怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 50 and Lv <= 55 then
					local MonsterID = 1162		--50怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 55 and Lv <= 60 then
					local MonsterID = 1163		--55怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 60 and Lv <= 65 then
					local MonsterID = 1164		--60怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 65 and Lv <= 70 then
					local MonsterID = 1165		--65怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				elseif Lv > 70 then
					local MonsterID = 1166		--70怪ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					SystemNotice(role , "告诉你一个好消息，你挖到一个宝箱，再告诉你一个坏消息，宝箱里是一个怪物。")
					return
				end	
			elseif getrandom > 50 and getrandom <= 60 then					---------------------------------会掉紫装的小BOSS			
				local x, y = GetChaPos(role)
				local Refresh = 6000000					--重生时间，秒单位
				local life = 5900000000					--生命时间，毫秒单位
				local MonsterID = 1168		--挖宝大boss的ID
				local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
				--SetChaHost(new,role)
				SetChaLifeTime( new, life )
				if Lv > 40 and Lv <= 45 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" )
					return
				elseif Lv > 45 and Lv <= 50 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" )
					return
				elseif Lv > 50 and Lv <= 55 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" )
					return	
				elseif Lv > 55 and Lv <= 60 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" )
					return
				elseif Lv > 60 and Lv <= 65 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在深蓝群岛的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" )
					return	
				elseif Lv > 65 and Lv <= 70 then
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在加纳大陆的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在加纳大陆的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" )
					return	
				else
					SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
					ScrollNotice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在加纳大陆的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" ,1)
					Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在加纳大陆的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" )
					return	
				end	
					
				--SetChaTarget(new, role)
				-- local map_role = GetChaMapName ( role )
				-- local map_role_name = 0
				-- if map_role == "garner" then
					-- local map_role_name = "加纳大陆"
				-- elseif map_role == "magicsea" then
					-- local map_role_name = "魔女海岸"	
				-- elseif map_role == "darkblue" then
					-- local map_role_name = "深蓝群岛"
				-- end		
				
				-- SystemNotice ( role , "你挖宝不慎惊醒了沉睡中的妖怪，实力不够的话最好走为上计。" )
				-- Notice ( name.."挖宝不慎惊醒了沉睡中的妖怪，现在发怒的妖怪正在"..map_role_name.."地区的"..math.floor(x/100)..","..math.floor(y/100).."肆虐，勇士们拿上你们的武器去征服它吧。" )
				return

			elseif getrandom > 60 and getrandom <= 76 then					----------------------------------搞笑的特效----因为BB组件祛除而增加2%
				--SystemNotice ( role , "你挖宝时遭到了天神的鄙视。" )
				Notice(name.."挖宝时遭到了天神的鄙视。")
				AddState(role , role , STATE_JLTX6 , 1 , 300 )
				return	
			-- elseif getrandom > 74 and getrandom <= 76 then					-------------------------------获得用来换取BB装的组件---按运营需求暂时祛除
				-- local part_of_boss_item = math.random( 1,3 )
				-- SystemNotice ( role , "挖到奇怪的组件，好像是BB装的一部分" )
				-- ScrollNotice ( name.."挖宝时挖到可以用来换取75级BB装的古代英雄残片，运气真是棒啊！" ,1)
				-- if part_of_boss_item ==	1 then
					-- GiveItem ( role , 0 , 6344 , 1 , 4  )
					-- return
				-- elseif part_of_boss_item == 2 then
					-- GiveItem ( role , 0 , 6345 , 1 , 4  )
					-- return
				-- else
					-- GiveItem ( role , 0 , 6346 , 1 , 4  )
					-- return
				-- end	
			elseif getrandom > 76 and getrandom <= 81 then					-------------------------------难度不大，但是皮很厚的经验boss
				local x, y = GetChaPos(role)
				local Refresh = 6000000					--重生时间，秒单位
				local life = 5900000000					--生命时间，毫秒单位
				if Lv > 40 and Lv <= 45 then
					local MonsterID = 1152		--40经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了")
					return	
				elseif Lv > 45 and Lv <= 50 then
					local MonsterID = 1153		--45经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了")
					return	
				elseif Lv > 50 and Lv <= 55 then
					local MonsterID = 1154		--50经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了")
					return	
				elseif Lv > 55 and Lv <= 60 then
					local MonsterID = 1155		--55经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了")
					return		
				elseif Lv > 60 and Lv <= 65 then
					local MonsterID = 1156		--60经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在深蓝群岛"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了")
					return	
				elseif Lv > 65 and Lv <= 70 then
					local MonsterID = 1157		--65经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在加纳大陆"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在加纳大陆"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了")
					return		
				elseif Lv > 70  then
					local MonsterID = 1158		--70经验肉boss的ID
					local new = CreateChaX( MonsterID , x-300 , y-300 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x+4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y+4000 , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x-4000 , y , 145 , Refresh, role )
					local new = CreateChaX( MonsterID , x , y-4000 , 145 , Refresh, role )
					--SetChaHost(new,role)
					SetChaLifeTime( new, life )
					--SetChaTarget(new, role)
					ScrollNotice ( name.."挖宝时幸运的发现在加纳大陆"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就要被人抢没了" ,1)
					Notice ( name.."挖宝时幸运的发现在加纳大陆"..math.floor(x/100)..","..math.floor(y/100).."附近有大量野兽，来晚了就都被人抢没了")
					return	
				end	
			elseif getrandom > 81 and getrandom <= 100 then	               -------------------传送至命运房间
				RemoveChaItem( role , 6343 , 1 , 2 , -1 , 2 , 1 )
				ScrollNotice ("灵光一闪，"..name.."被传送到了传说中海盗王曾经埋藏宝贝的命运房间" , 1)
				SystemNotice ( role , "打爆命运房间中的命运宝箱，你的背包中将会自动获得它，双击命运宝箱，试试你的运气吧！(一个玩家身上最多只能同时携带一个命运宝箱，想获得下一个箱子首先要使用掉你已经获得的箱子。)" )
				MoveTo( role ,50,50,"mingyun")				
				return
			
			end
		end	
	end
end



--给40级藏宝图随机分配坐标（by 刘博颋）
function GetTheMapPos_40 ( role , type )
	-- SystemNotice( role ,"GetTheMapPos" )

	local Pos_Map = 3
	-- SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( 2207 , 2278 )
	-- SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( 492 , 645 )
	-- SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end

--给45级藏宝图随机分配坐标（by 刘博颋）
function GetTheMapPos_45 ( role , type )
--	SystemNotice( role ,"GetTheMapPos" )

	local Pos_Map = 3
--	SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( 2519 , 2657 )
--	SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( 474 , 586 )
--	SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end

--给50级藏宝图随机分配坐标（by 刘博颋）
function GetTheMapPos_50 ( role , type )
--	SystemNotice( role ,"GetTheMapPos" )

	local Pos_Map = 3
--	SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( 2862 , 2891 )
--	SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( 634 , 704 )
--	SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end

--给55级藏宝图随机分配坐标（by 刘博颋）
function GetTheMapPos_55 ( role , type )
--	SystemNotice( role ,"GetTheMapPos" )

	local Pos_Map = 3
--	SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( 2541 , 2595 )
--	SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( 771 , 858 )
--	SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end

--给60级藏宝图随机分配坐标（by 刘博颋）
function GetTheMapPos_60 ( role , type )
--	SystemNotice( role ,"GetTheMapPos" )

	local Pos_Map = 3
--	SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( 2541 , 2642 )
--	SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( 867 , 926 )
--	SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end

--给65级藏宝图随机分配坐标（by 刘博颋）
function GetTheMapPos_65 ( role , type )
--	SystemNotice( role ,"GetTheMapPos" )

	local Pos_Map = 1
--	SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( 323 , 393 )
--	SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( 1314 , 1392 )
--	SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end

--给70级藏宝图随机分配坐标（by 刘博颋）
function GetTheMapPos_70 ( role , type )
--	SystemNotice( role ,"GetTheMapPos" )

	local Pos_Map = 1
--	SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( 387 , 494 )
--	SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( 2056 , 2137 )
--	SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end






--------------------------海盗雏鹰宝箱--------------------

function ItemUse_CYBOX( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"要打开海盗雏鹰宝箱需要背包里至少有4个空位")
		UseItemFailed ( role )
		return
	end 
		GiveItem ( role , 0 , 6020 , 1 , 95 )-----------------炎飒封印的暗影披风
		GiveItem ( role , 0 , 6022  , 1 , 4 )------------暗影披风解封说明书
		GiveItem ( role , 0 , 6005  , 1 , 4 )--------------海盗师徒宝箱
		GiveItem ( role , 0 , 6051  , 1 , 4 )--------------新手技能书
		GiveItem ( role , 0 , 0985  , 1 , 4 )--------------35至尊豪礼
	end
		
		
-----------------海盗宠宠宝箱-----------------------
function ItemUse_CCBOX( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
    local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"要打开海盗宠宠宝箱需要背包里至少有4个空位")
		UseItemFailed ( role )
		return
	end 
		if lv < 11 then
		SystemNotice(role ,"当前级别低于11级，道具使用失败！")
		UseItemFailed ( role )	
	else
		GiveItem( role , 0 , 262 , 1 , 4)----------------精灵礼品宝箱
		GiveItem( role , 0 , 6580 , 3 , 4 )----------白银城果脯
		GiveItem( role , 0 , 6015 , 5 , 4 )-------------特制精灵饲料
		--GiveItem( role , 0 , 6025 , 1 , 4 )-------------精灵养成须知
		GiveItem( role , 0 , 6004 , 1 , 4 )-------------海盗扬帆宝箱
		--GiveItem( role , 0 , 6026 , 1 , 4 )-------------一转说明书
		--GiveItem ( role , 0 , 9  , 1 , 95 )
		--GiveItem ( role , 0 , 4308  , 1 , 95 )
		end 
	end
	
	
-------------------海盗交友宝箱-------------------
function ItemUse_FriendBOX( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
    local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"要打开海盗交友宝箱需要背包里至少有4个空位")
		UseItemFailed ( role )
		return
	end 
	if lv < 10 then 
		SystemNotice(role ,"当前级别低于10级，道具使用失败！")
		UseItemFailed ( role )
	elseif job ==1  then
		if cha_type == 1 or cha_type == 2 then
		--GiveItem( role , 0 , 6014 , 1 , 4 ) --找朋友(女)
		GiveItem ( role , 0 , 10  , 1 , 95 ) 
		GiveItem ( role , 0 , 296  , 1 , 95 )
		GiveItem ( role , 0 , 6002  , 1 , 4 )----宠宠宝箱
		elseif cha_type == 3 then
		--GiveItem( role , 0 , 6041 , 1 , 4 ) --找朋友(女)
		GiveItem ( role , 0 , 10  , 1 , 95 ) 
		GiveItem ( role , 0 , 296  , 1 , 95 )
		GiveItem ( role , 0 , 6002  , 1 , 4 )----宠宠宝箱
		end
	elseif job == 2 then
		GiveItem ( role , 0 , 32  , 1 , 95 ) 
		GiveItem ( role , 0 , 311  , 1 , 95 )
		GiveItem ( role , 0 , 6002  , 1 , 4 )-----宠宠宝箱
	if cha_type == 1 then
		--GiveItem( role , 0 , 6014 , 1 , 4 ) --找朋友(女)
		else 
		--GiveItem( role , 0 , 6041 , 1 , 4 ) --找朋友(男)
		end
	elseif job== 4 then
		GiveItem ( role , 0 , 80  , 1 , 95 ) 
		GiveItem ( role , 0 , 6002  , 1 , 4 ) -----宠宠宝箱
		if cha_type == 1 then
		--GiveItem( role , 0 , 6014 , 1 , 4 ) --找朋友(女)
		GiveItem ( role , 0 , 336  , 1 , 95 ) 
			elseif cha_type == 3 then
		--GiveItem( role , 0 , 6041 , 1 , 4 ) --找朋友(男)
		GiveItem ( role , 0 , 336  , 1 , 95 )
			else
		--GiveItem( role , 0 , 6041 , 1 , 4 ) --找朋友(男)
		GiveItem ( role , 0 , 351  , 1 , 95 )
		end
	elseif job == 5 then
		--GiveItem( role , 0 , 6041 , 1 , 4 ) --找朋友(男)
		GiveItem ( role , 0 , 6002  , 1 , 4 )-----宠宠宝箱
		GiveItem ( role , 0 , 104  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 372  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 359  , 1 , 95 ) 
		end
	else 
		SystemNotice(role ,"职业不符，道具需在一转转职后方可使用！")
		UseItemFailed ( role )	
	end 
end 
	
	-------------------海盗扬帆宝箱-------------------
function ItemUse_YFBOX ( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV)
    local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"要打开海盗扬帆宝箱需要背包里至少有4个空位")
		UseItemFailed ( role )
		return
	end 
	if lv < 15 then
		SystemNotice(role ,"当前级别低于15级，道具使用失败！")
		UseItemFailed ( role )	
	elseif job== 1 then
		--GiveItem( role , 0 , 6042 , 1 , 4 ) ---造船证明
		--GiveItem( role , 0 , 6043 , 1 , 4 ) --捕鱼任务介绍
		GiveItem( role , 0 , 6008 , 1 , 4 ) --海盗彩票宝箱
		GiveItem( role , 0 , 6038 , 1 , 4 )--新捕鱼技能书
		GiveItem ( role , 0 , 2 , 1 , 95 ) 
		GiveItem ( role , 0 , 291  , 1 , 95 )
	elseif job == 2 then
		--GiveItem( role , 0 , 6042 , 1 , 4 ) ---造船证明
		--GiveItem( role , 0 , 6043 , 1 , 4 ) --捕鱼任务介绍
		GiveItem( role , 0 , 6008 , 1 , 4 )--海盗彩票宝箱
		GiveItem( role , 0 , 6038 , 1 , 4 )--新捕鱼技能书
		GiveItem ( role , 0 , 26  , 1 , 95 ) 
		GiveItem ( role , 0 , 306  , 1 , 95 )
	elseif job == 4 then
		--GiveItem( role , 0 , 6042 , 1 , 4 ) ---造船证明
		--GiveItem( role , 0 , 6043 , 1 , 4 ) --捕鱼任务介绍
		GiveItem( role , 0 , 6008 , 1 , 4 )--海盗彩票宝箱
		GiveItem( role , 0 , 6038 , 1 , 4 )--新捕鱼技能书
		GiveItem ( role , 0 , 74  , 1 , 95 )  
	if cha_type == 1 or cha_type == 3 then 
		GiveItem ( role , 0 , 338  , 1 , 95 )
	else
		GiveItem ( role , 0 , 386  , 1 , 95 ) 
	end
		elseif job == 5 then
		--GiveItem( role , 0 , 6042 , 1 , 4 ) ---造船证明
		--GiveItem( role , 0 , 6043 , 1 , 4 ) --捕鱼任务介绍
		GiveItem( role , 0 , 6008 , 1 , 4 )--海盗彩票宝箱
		GiveItem( role , 0 , 6038 , 1 , 4 )--新捕鱼技能书
		GiveItem ( role , 0 , 98 , 1 , 95 ) 
	if cha_type == 3 then
		GiveItem ( role , 0 , 366  , 1 , 95 ) 
		else
		GiveItem ( role , 0 , 381  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"职业不符，道具需在一转转职后方可使用！")
		UseItemFailed ( role )	
	end
end	


--------------------海盗拜师宝箱-------------------
function ItemUse_BSBOX( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
    local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"要打开海盗拜师宝箱需要背包里至少有3个空位")
		UseItemFailed ( role )
		return
	end
	if lv < 5 then 
		SystemNotice(role ,"当前级别低于5级，道具使用失败！")
		UseItemFailed ( role )	
	else
		GiveItem( role , 0 , 6044 , 1 , 4 )--------海盗师徒系统介绍
		GiveItem( role , 0 , 6003 , 1 , 4 )-----------交友宝箱
		GiveItem( role , 0 , 6026 , 1 , 4 )-------------一转说明书
		GiveItem ( role , 0 , 9  , 1 , 95 )
		GiveItem ( role , 0 , 4308  , 1 , 95 )
	end 
end 


---------------------精炼宝箱---------------------
function ItemUse_JLBOX( role , Item )
	local Cha_Boat = 0
	
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
    local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"要打开海盗精练宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end 
	if lv < 37 then 
		SystemNotice(role ,"当前级别低于37级，道具使用失败！")
		UseItemFailed ( role )	
	elseif job == 1 or job == 8 or job == 9 then  
		GiveItem( role , 0 , 6027 , 1 , 4 )--------精练 熔合 合成介绍
		--GiveItem( role , 0 , 6028 , 1 , 4 )-------海盗指南针指引
		GiveItem( role , 0 , 6011 , 1 , 4 )-------海盗二转宝箱
		--GiveItem( role , 0 , 453 , 1 , 4 )-------宝石熔合卷轴
		-- GiveItem ( role , 0 , 14  , 1 , 95 ) 
		-- GiveItem ( role , 0 , 297  , 1 , 95 )
		--GiveItem ( role , 0 , 6016 , 1 , 4 )------特制精练石
		if cha_type == 1 then 
			GiveItem( role , 0 , 5316 , 1 , 95 )------男一号酷装
		elseif  cha_type == 2 then
			GiveItem( role , 0 , 5320 , 1 , 95 ) ------男二号酷装
		elseif cha_type == 3 then
			GiveItem( role , 0 , 5324 , 1 , 95 )------女一酷装
			end
	elseif job == 2 or job == 12 then 
		GiveItem( role , 0 , 6027 , 1 , 4 )--------精练 熔合 合成介绍
		--GiveItem( role , 0 , 6028 , 1 , 4 )-------海盗指南针指引
		GiveItem( role , 0 , 6011 , 1 , 4 )-------海盗二转宝箱
		--GiveItem( role , 0 , 453 , 1 , 4 )-------宝石熔合卷轴
		-- GiveItem ( role , 0 , 33 , 1 , 95 ) 
		-- GiveItem ( role , 0 , 313  , 1 , 95 )
		--GiveItem ( role , 0 , 6016 , 1 , 4 )------特制精练石
		if cha_type == 3 then
			GiveItem( role , 0 , 5324 , 1 , 95 )------女一酷装
			else
			GiveItem( role , 0 , 5316 , 1 , 95 )------男一号酷装
		end
	elseif job == 4 or job == 16 then 
		GiveItem( role , 0 , 6027 , 1 , 4 )--------精练 熔合 合成介绍
		--GiveItem( role , 0 , 6028 , 1 , 4 )-------海盗指南针指引
		GiveItem( role , 0 , 6011 , 1 , 4 )-------海盗二转宝箱
		--GiveItem( role , 0 , 453 , 1 , 4 )-------宝石熔合卷轴
		-- GiveItem ( role , 0 , 81  , 1 , 95 ) 
		--GiveItem ( role , 0 , 6016 , 1 , 4 )------特制精练石
		if cha_type == 1  then 
			-- GiveItem ( role , 0 , 337  , 1 , 95 )
			GiveItem( role , 0 , 5316 , 1 , 95 )------男一号酷装
			elseif cha_type == 3 then
			-- GiveItem ( role , 0 , 337  , 1 , 95 )
			GiveItem( role , 0 , 5324 , 1 , 95 )------女一酷装
			else
			-- GiveItem ( role , 0 , 352  , 1 , 95 ) 
			GiveItem ( role , 0 , 5328 , 1 , 95 )---女二酷装
		end
	elseif job == 5 or job == 13 or job == 14 then  
		GiveItem( role , 0 , 6027 , 1 , 4 )--------精练 熔合 合成介绍
		GiveItem( role , 0 , 6028 , 1 , 4 )-------海盗指南针指引
		GiveItem( role , 0 , 6011 , 1 , 4 )-------海盗二转宝箱
		-- GiveItem ( role , 0 , 105  , 1 , 95 )
		--GiveItem ( role , 0 , 6016 , 1 , 4 )------特制精练石
		GiveItem( role , 0 , 453 , 1 , 4 )-------宝石熔合卷轴
		if cha_type == 3 then 
			-- GiveItem ( role , 0 , 373  , 1 , 95 )
			GiveItem( role , 0 , 5324 , 1 , 95 )------女一酷装
		else
			-- GiveItem ( role , 0 , 360  , 1 , 95 )
			GiveItem ( role , 0 , 5328 , 1 , 95 )
		end
	else 
		SystemNotice(role ,"职业不符，道具需在一转转职后方可使用！")
		UseItemFailed ( role )	
	end 
end 


----------------海盗PK宝箱-----------------
function ItemUse_PKBOX( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
    local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"要打开海盗PK宝箱需要背包里至少有3个空位")
		UseItemFailed ( role )
		return
	end 
	if lv < 25 then 
		SystemNotice(role ,"当前级别低于25级，道具使用失败！")
		UseItemFailed ( role )	
	elseif job == 1 then   ----剑士
		local r1,r2 =MakeItem ( role , 3  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )		--取精炼武器道具指针
		--GiveItem(role , 0 , 6032 , 1 , 4 )---------酒吧PK介绍书
		--GiveItem(role , 0 , 6033 , 1 , 4 )---------PK指引
		GiveItem(role , 0 , 6009 , 1 , 4 )------------海盗迷宫宝箱
		GiveItem ( role , 0 , 293  , 1 , 95 )
	elseif job == 2 then  
		local r1,r2 =MakeItem ( role , 27  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		--GiveItem(role , 0 , 6032 , 1 , 4 )---------酒吧PK介绍书
		--GiveItem(role , 0 , 6033 , 1 , 4 )---------PK指引
		GiveItem(role , 0 , 6009 , 1 , 4 )------------海盗迷宫宝箱
		GiveItem ( role , 0 , 307  , 1 , 95 )
	elseif job == 4 then 
		local r1,r2 =MakeItem ( role , 75  , 1 , 11 )
		--GiveItem(role , 0 , 6032 , 1 , 4 )---------酒吧PK介绍书
		--GiveItem(role , 0 , 6033 , 1 , 4 )---------PK指引
		GiveItem(role , 0 , 6009 , 1 , 4 )------------海盗迷宫宝箱
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		if cha_type == 1 or cha_type == 3 then
			GiveItem ( role , 0 , 340  , 1 , 95 ) 
		else
			GiveItem ( role , 0 , 350  , 1 , 95 ) 
		end
	elseif job == 5 then 
		--GiveItem(role , 0 , 6032 , 1 , 4 )---------酒吧PK介绍书
		--GiveItem(role , 0 , 6033 , 1 , 4 )---------PK指引
		GiveItem(role , 0 , 6009 , 1 , 4 )------------海盗迷宫宝箱
		local r1,r2 =MakeItem ( role , 99  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		if cha_type == 3 then
			GiveItem ( role , 0 , 368  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 389  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"职业不符，道具需在一转转职后方可使用！")
		UseItemFailed ( role )	
	end
end

-----------------海盗王迷宫宝箱--------------
function ItemUse_MGBOX( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
    local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"要打开海盗迷宫宝箱需要背包里至少有3个空位")
		UseItemFailed ( role )
		return
	end 
	if lv < 30 or job == 0 then 
		SystemNotice(role ,"当前级别低于30级，道具使用失败！")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem( role , 0 , 6035 , 1 , 4 ) ------------海盗三大迷宫介绍书
		--GiveItem( role , 0 , 6045 , 1 , 4 )-----------废灵迷宫探索引导
		GiveItem( role , 0 , 6010 , 1 , 4 )-----------海盗混战宝箱
		GiveItem ( role , 0 , 12  , 1 , 95 ) 
		GiveItem ( role , 0 , 298  , 1 , 95 )
	elseif job == 2 then 
		GiveItem( role , 0 , 6035 , 1 , 4 ) ------------海盗三大迷宫介绍书
		--GiveItem( role , 0 , 6045 , 1 , 4 )-----------废灵迷宫探索引导
		GiveItem( role , 0 , 6010 , 1 , 4 )-----------海盗混战宝箱
		GiveItem ( role , 0 , 34  , 1 , 95 ) 
		GiveItem ( role , 0 , 314  , 1 , 95 )
	elseif job == 4 then  
		GiveItem( role , 0 , 6035 , 1 , 4 ) ------------海盗三大迷宫介绍书
		--GiveItem( role , 0 , 6045 , 1 , 4 )-----------废灵迷宫探索引导
		GiveItem( role , 0 , 6010 , 1 , 4 )-----------海盗混战宝箱
		GiveItem ( role , 0 , 82  , 1 , 95 )
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 339  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 354  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem( role , 0 , 6035 , 1 , 4 ) ------------海盗三大迷宫介绍书
		--GiveItem( role , 0 , 6045 , 1 , 4 )-----------废灵迷宫探索引导
		GiveItem( role , 0 , 6010 , 1 , 4 )-----------海盗混战宝箱
		GiveItem ( role , 0 , 106  , 1 , 95 )
		if cha_type == 3 then
			GiveItem ( role , 0 , 374  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 361  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"职业不符，道具需在一转转职后方可使用！")
		UseItemFailed ( role )	
	end
end

-------海盗混战宝箱----------
function ItemUse_HZBOX( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
    local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"要打开海盗混战宝箱需要背包里至少有3个空位")
		UseItemFailed ( role )
		return
	end 
	if lv < 35 then 
		SystemNotice(role ,"当前级别低于35级，道具使用失败！")
		UseItemFailed ( role )	
	else
		GiveItem ( role , 0 , 6046  , 1 , 4 )------------新增自由PK区域介绍
		--GiveItem ( role , 0 , 6047  , 1 , 4 )----------------海盗王混战指引
		GiveItem ( role , 0 , 6006  , 1 , 4 )----------海盗精炼宝箱
		GiveItem( role , 0 , 451 , 1 , 4 )
	end
end
	
------------海盗二转宝箱-----
function ItemUse_EZBOX( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
    local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"要打开海盗二转宝箱需要背包里至少有3个空位")
		UseItemFailed ( role )
		return
	end 
	if lv < 40 then 
		SystemNotice(role ,"当前级别低于40级，道具使用失败！")
		UseItemFailed ( role )	
	end 
	if job == 8 then
		GiveItem( role , 0 , 15 , 1 , 95 )
		GiveItem( role , 0 , 6012 , 1 , 4 )-------收徒宝箱
		GiveItem( role , 0 , 1932 , 1 , 95 )
	elseif job == 9 then
		GiveItem( role , 0 , 4 , 1 , 95 )
		GiveItem( role , 0 , 6012 , 1 , 4 )-------收徒宝箱
		GiveItem( role , 0 , 1929 , 1 , 95 )
	elseif job == 12 then
		GiveItem( role , 0 , 39 , 1 , 95 )
		GiveItem( role , 0 , 6012 , 1 , 4 )-------收徒宝箱
		GiveItem( role , 0 , 1944 , 1 , 95 )
	elseif job == 13 then 
		GiveItem( role , 0 , 100 , 1 , 95 )
		GiveItem( role , 0 , 6012 , 1 , 4 )-------收徒宝箱
		GiveItem( role , 0 , 1959 , 1 , 95 )
	elseif job == 14 then
		GiveItem( role , 0 , 101 , 1 , 95 )
		GiveItem( role , 0 , 6012 , 1 , 4 )-------收徒宝箱
		GiveItem( role , 0 , 1956 , 1 , 95 )
	elseif job == 16 then
		GiveItem( role , 0 , 76 , 1 , 95 )
		GiveItem( role , 0 , 6012 , 1 , 4 )-------收徒宝箱
		GiveItem( role , 0 , 1977 , 1 , 95 )
	else 
		SystemNotice(role ,"职业不符，道具需在二转转职后方可使用！")
		UseItemFailed ( role )	
	end
end 


-------------海盗收徒宝箱------------
function ItemUse_STBOX( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet < 1 then
		SystemNotice(role ,"要打开海盗收徒宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end 
	if lv < 41 or job == 0 or job == 1 or job == 2 or job == 4 or job == 5 then 
		SystemNotice(role ,"当前级别低于41级，道具使用失败！")
		UseItemFailed ( role )	
	else
		--GiveItem( role , 0 , 6048 , 1 , 4 )------收徒贴
		GiveItem( role , 0 , 6013 , 1 , 4 )----海盗圣战宝箱
	end
end

-----------------海盗圣战宝箱-------------
function ItemUse_SZBOX( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"要打开海盗圣战宝箱需要背包里至少有4个空位")
		UseItemFailed ( role )
		return
	end
	if lv < 45 or job == 0 or job == 1 or job == 2 or job == 4 or job == 5 then
		SystemNotice(role ,"当前级别低于45级或者您还没有完成二转，道具使用失败！")
		UseItemFailed ( role )	
	elseif job == 9 then 
		GiveItem( role , 0 , 6050 , 1 , 4 )------圣战介绍
		GiveItem( role , 0 , 6036 , 1 , 4 )-------圣战引导图
		--GiveItem ( role , 0 , 295  , 1 , 95 )
		--GiveItem ( role , 0 , 4  , 1 , 95 ) 
		GiveItem ( role , 0 , 302  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 22  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
	elseif job == 8 then   
		GiveItem( role , 0 , 6050 , 1 , 4 )------圣战介绍
		GiveItem( role , 0 , 6036 , 1 , 4 )-------圣战引导图
		--GiveItem ( role , 0 , 300  , 1 , 95 )
		--GiveItem ( role , 0 , 15  , 1 , 95 ) 
		GiveItem ( role , 0 , 301  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 20  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
	elseif job == 12 then
		GiveItem( role , 0 , 6050 , 1 , 4 )------圣战介绍
		GiveItem( role , 0 , 6036 , 1 , 4 )-------圣战引导图
		--GiveItem ( role , 0 , 39  , 1 , 95 ) 
		--GiveItem ( role , 0 , 310  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 44  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		GiveItem ( role , 0 , 315  , 1 , 95 )
	
	elseif job == 16 then
		GiveItem( role , 0 , 6050 , 1 , 4 )------圣战介绍
		GiveItem( role , 0 , 6036 , 1 , 4 )-------圣战引导图
		--GiveItem ( role , 0 , 76  , 1 , 95 ) 
		local r1,r2 =MakeItem ( role , 83  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		if cha_type == 1 or cha_type == 3 then
			--GiveItem ( role , 0 , 341  , 1 , 95 )	
			GiveItem ( role , 0 , 342  , 1 , 95 )
		else 
			--GiveItem ( role , 0 , 353  , 1 , 95 )
			GiveItem ( role , 0 , 356  , 1 , 95 )
		end
	elseif job == 13 then
		GiveItem( role , 0 , 6050 , 1 , 4 )------圣战介绍
		GiveItem( role , 0 , 6036 , 1 , 4 )-------圣战引导图	
		--GiveItem ( role , 0 , 100  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 1440  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		if cha_type == 3 then 
			--GiveItem ( role , 0 , 370  , 1 , 95 )
			GiveItem ( role , 0 , 378  , 1 , 95 )
		else 
			--GiveItem ( role , 0 , 392  , 1 , 95 ) 
			GiveItem ( role , 0 , 388  , 1 , 95 ) 
		end
	elseif job == 14 then   
		GiveItem( role , 0 , 6050 , 1 , 4 )------圣战介绍
		GiveItem( role , 0 , 6036 , 1 , 4 )-------圣战引导图
		--GiveItem ( role , 0 , 101  , 1 , 95 ) 
		local r1,r2 =MakeItem ( role , 107  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--取精炼武器道具指针
		if cha_type == 3 then 
			--GiveItem ( role , 0 , 367  , 1 , 95 ) 
			GiveItem ( role , 0 , 375  , 1 , 95 ) 
		else  
			--GiveItem ( role , 0 , 390  , 1 , 95 ) 
			GiveItem ( role , 0 , 362  , 1 , 95 ) 
		
		end
	end
end

--------------找朋友-女-------------
function ItemUse_ZhaoGirl( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	-- local Item_CanGet = GetChaFreeBagGridNum ( role )
	-- if Item_CanGet < 1 then
		-- SystemNotice(role ,"要打开找朋友需要背包里至少有1个空位")
		-- UseItemFailed ( role )
		-- return
	-- end
	local lv = GetChaAttr(role, ATTR_LV) 
	local cha_type = GetChaTypeID ( role )
	if lv < 7 or cha_type == 1 or cha_type == 2 then 
		SystemNotice( role , "要打开该道具至少需要7级并且是女性的玩家哦" )
		UseItemFailed( role )
	elseif cha_type == 3 or cha_type == 4 then
		local cha_name = GetChaDefaultName ( role )
		--GiveItem( role , 0 , 6037 , 1 , 4 )
		--GiveItem( role , 0 , 6017 , 1 , 4 )---双倍经验
		AddExpAll(role,10000,10000,1)
		ScrollNotice (cha_name.."助人为乐，帮助新人的精神值得大家学习！" , 1)
	end
end

----------------找朋友-男-------------
function ItemUse_ZhaoBoy( role , Item )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	-- local Item_CanGet = GetChaFreeBagGridNum ( role )
	-- if Item_CanGet < 1 then
		-- SystemNotice(role ,"要打开找朋友需要背包里至少有1个空位")
		-- UseItemFailed ( role )
		-- return
	-- end
	local lv = GetChaAttr(role, ATTR_LV) 
	local cha_type = GetChaTypeID ( role )
	if lv < 7 or cha_type == 3 or cha_type == 4 then 
		SystemNotice( role , "要打开该道具至少需要7级并且是男性的玩家哦" )
		UseItemFailed( role )
	elseif cha_type == 1 or cha_type == 2 then
		--GiveItem( role , 0 , 6037 , 1 , 4 )
		--GiveItem( role , 0 , 6017 , 1 , 4 )---双倍经验
		AddExpAll(role,10000,10000,1)
		local cha_name = GetChaDefaultName ( role ) 
		ScrollNotice (cha_name.."助人为乐，帮助新人的精神值得大家学习！" , 1)
	end
end

----------新捕鱼技能书-----------
function New_Sk_Script_By ( role , Item )  --技能捕鱼

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
	local sk_add = SK_BY         
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 0 , 0 )  
	SystemNotice(role,"你学会了一个捕鱼技能,你可以按ALT+S,打开你技能栏的第二栏,里面有新的技能")
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end


-----------求师表-----------
-- function ItemUse_SF( role ,Item )
	-- local Cha_Boat = 0
	-- Cha_Boat = GetCtrlBoat ( role )
	-- if Cha_Boat ~= nil then 
		-- SystemNotice( role , "出海时不可使用" ) 
		-- UseItemFailed ( role ) 
		-- return 
	-- end      
	-- local Item_CanGet = GetChaFreeBagGridNum ( role )
	-- if Item_CanGet < 2 then
		-- SystemNotice(role ,"要打开求师表需要背包里至少有2个空位")
		-- UseItemFailed ( role )
		-- return
	-- end
	-- local ret = HasMaster(role)
	-- if ret == LUA_TRUE then
		-- GiveItem( role , 0 , 6052 , 1 , 4 )------拜师证明
		-- AddMoney( role , 0 , 10000)
		--AddExpAll( role , 35500 , 35500 , 1 )
	-- elseif ret == LUA_FALSE then
		-- SystemNotice( role , "您必须要有师傅才能够打开哦" )
		-- UseItemFailed( role )
	-- end
-- end

----------收徒帖--------------
-- function ItemUse_TD( role , Item )
	-- local Cha_Boat = 0
	-- Cha_Boat = GetCtrlBoat ( role )
	-- if Cha_Boat ~= nil then 
		-- SystemNotice( role , "出海时不可使用" ) 
		-- UseItemFailed ( role ) 
		-- return 
	-- end
	-- local Item_CanGet = GetChaFreeBagGridNum ( role )
	-- if Item_CanGet < 2 then
		-- SystemNotice(role ,"要打开收徒贴需要背包里至少有2个空位")
		-- UseItemFailed ( role )
		-- return
	-- end
	-- local ret = HasMaster(role)
	-- if ret == LUA_TRUE then
		-- GiveItem( role , 0 , 6049 , 1 , 4 )
		-- GiveItem(role , 0 , 6017 , 5 , 4 )
	-- elseif ret == LUA_FALSE then
		-- SystemNotice( role , "您必须要有师傅才能够打开哦" )
		-- UseItemFailed( role )
	-- end
-- end

-----------特制精灵饲料---------------
function ItemUse_NewSiLiao( role , Item , Item_Traget)

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
		local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)  		--取当前耐久
		local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 	--取最大耐久
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Num = 2500
		local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )		--力量
		local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )		--体质
		local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )		--专注
		local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )		--敏捷
		local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )		--精神
		local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget  ----一个精灵的等级
		if lv_Traget > 3 then
					SystemNotice(role , "只能够喂养3级以下的精灵" ) 
					UseItemFailed ( role )
		elseif Item_type == 57 and Item_Traget_Type == 59 then
		
			if Item_Traget_URE < Item_Traget_MAXURE then
				   Give_ElfURE ( role , Item_Traget , Num )
   	 		else
                    SystemNotice(role , "精灵已经吃饱" ) 
					UseItemFailed ( role )
					return
			end
		end 
end


function ItemUse_CaiPiaoBOX(role,Item)  -----海盗彩票宝箱

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"要打开海盗彩票宝箱需要背包3个空位")
		UseItemFailed ( role )
		return
	end
	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr(role, ATTR_JOB)
	if lv < 20 then 
		SystemNotice( role , "等级低于20级无法打开海盗彩票宝箱" ) 
		UseItemFailed ( role ) 
		return
	end
		--GiveItem(role,0,5828,1,4)----彩票
		--GiveItem(role,0,5940,1,4)----彩球足尊宝箱
	local cha_type = GetChaTypeID ( role )
	local job = GetChaAttr(role, ATTR_JOB)
	if job == 1 then  
		AddMoney(role,50000,50000)
		GiveItem(role,0,6007,1,4)  ----海盗PK宝箱
		GiveItem ( role , 0 , 14  , 1 , 95 ) 
		GiveItem ( role , 0 , 297  , 1 , 95 )
	elseif job == 2 then 
		AddMoney(role,50000,50000)
		GiveItem(role,0,6007,1,4)  ----海盗PK宝箱
		GiveItem ( role , 0 , 33 , 1 , 95 ) 
		GiveItem ( role , 0 , 313  , 1 , 95 )
	elseif job == 4 then
		AddMoney(role,50000,50000)
		GiveItem(role,0,6007,1,4)  ----海盗PK宝箱
		GiveItem ( role , 0 , 81  , 1 , 95 ) 
		if cha_type == 1  then 
			GiveItem ( role , 0 , 337  , 1 , 95 )
			elseif cha_type == 3 then
			GiveItem ( role , 0 , 337  , 1 , 95 )
			else
			GiveItem ( role , 0 , 352  , 1 , 95 ) 
		end
	elseif job == 5 then 
		AddMoney(role,50000,50000)
		GiveItem(role,0,6007,1,4)  ----海盗PK宝箱	
		GiveItem ( role , 0 , 105  , 1 , 95 )
		if cha_type == 3 then 
			GiveItem ( role , 0 , 373  , 1 , 95 )
		else
			GiveItem ( role , 0 , 360  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"职业不符，道具需在一转转职后方可使用！")
		UseItemFailed ( role )	
	end 
end 
--海盗王2008挖宝60BOSS箱子----海盗宝藏箱子
--（0479镀银钢手套、0492斑鸠手套、0519飓风手套、0533大海虾手套、0539高级海獭手套、0552治疗者手套、0555祈愿手套、0567高级兔手套、0477重型钢手套、0655镀银钢靴、0668斑鸠靴、0695飓风靴、0709大海虾靴、0715高级海獭靴、0728治疗者靴、0731祈愿靴、0743高级兔靴、0653重型钢靴）
function ItemUse_WaBao_HDBZBox ( role , Item )	

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用海盗财宝箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 200 )
	if getrandom <= 10 then							----------55双剑士（蓝琦）手套
		SystemNotice ( role , "获得紫色镀银钢手套" )
		GiveItem ( role , 0 , 0479 , 1 , 22 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------55狙击手（蓝琦、艾利尔）手套
		SystemNotice ( role , "获得紫色斑鸠手套" )
		GiveItem ( role , 0 , 0492 , 1 , 22 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------55航海士（蓝琦、菲利尔）手套
		SystemNotice ( role , "获得紫色飓风手套" )
		GiveItem ( role , 0 , 0519 , 1 , 22 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------55航海士（艾米）手套	
		SystemNotice ( role , "获得紫色大海虾手套" )
		GiveItem ( role , 0 , 0533 , 1 , 22 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------55封印师（艾米）手套
		SystemNotice ( role , "获得紫色高级海獭手套" )
		GiveItem ( role , 0 , 0539 , 1 , 22 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------55封印师（菲利尔）手套
		SystemNotice ( role , "获得紫色治疗者手套" )
		GiveItem ( role , 0 , 0552 , 1 , 22 ) 
		return
	elseif getrandom > 60 and getrandom <= 70  then		----------55圣职者（菲利尔）手套
		SystemNotice ( role , "获得紫色祈愿手套" )
		GiveItem ( role , 0 , 0555 , 1 , 22 ) 
		return
	elseif getrandom > 70 and getrandom <= 80  then		----------55圣职者（艾米）手套
		SystemNotice ( role , "获得紫色高级兔手套" )
		GiveItem ( role , 0 , 0567 , 1 , 22 ) 
		return
	elseif getrandom > 80 and getrandom <= 90  then		----------45巨剑士（卡西斯）手套
		SystemNotice ( role , "获得紫色重型钢手套" )
		GiveItem ( role , 0 , 0477 , 1 , 22 ) 
		return
		elseif getrandom > 90 and getrandom <= 100  then	----------55双剑士（蓝琦）靴子
		SystemNotice ( role , "获得紫色镀银钢靴" )
		GiveItem ( role , 0 , 0655 , 1 , 22 ) 
		return
	elseif getrandom > 100 and getrandom <= 110  then	----------55狙击手（蓝琦、艾利尔）靴子
		SystemNotice ( role , "获得紫色斑鸠靴" )
		GiveItem ( role , 0 , 0668 , 1 , 22 ) 
		return
	elseif getrandom > 110 and getrandom <= 120  then	----------55航海士（蓝琦、菲利尔）靴子	
		SystemNotice ( role , "获得紫色飓风靴" )
		GiveItem ( role , 0 , 0695 , 1 , 22 ) 
		return
	elseif getrandom > 120 and getrandom <= 130  then	----------55航海士（艾米）靴子
		SystemNotice ( role , "获得紫色大海虾靴" )
		GiveItem ( role , 0 , 0709 , 1 , 22 ) 
		return
	elseif getrandom > 130 and getrandom <= 140  then	----------55封印师（艾米）靴子
		SystemNotice ( role , "获得紫色高级海獭靴" )
		GiveItem ( role , 0 , 0715 , 1 , 22 ) 
		return
	elseif getrandom > 140 and getrandom <= 150  then	----------55封印师（菲利尔）靴子
		SystemNotice ( role , "获得紫色治疗者靴" )
		GiveItem ( role , 0 , 0728 , 1 , 22 ) 
		return
	elseif getrandom > 150 and getrandom <= 160  then	----------55圣职者（菲利尔）靴子
		SystemNotice ( role , "获得紫色祈愿靴" )
		GiveItem ( role , 0 , 0731 , 1 , 22 ) 
		return
	elseif getrandom > 160 and getrandom <= 170  then	----------55圣职者（艾米）靴子
		SystemNotice ( role , "获得紫色高级兔靴" )
		GiveItem ( role , 0 , 0743 , 1 , 22 ) 
		return
	elseif getrandom > 170 and getrandom <= 180  then	----------45巨剑士（卡西斯）靴子
		SystemNotice ( role , "获得紫色重型钢靴" )
		GiveItem ( role , 0 , 0653 , 1 , 22 ) 
		return
	elseif getrandom > 180 and getrandom <= 190  then	----------55双剑士（菲利尔）手套（预留）
		SystemNotice ( role , "获得紫色镀银钢手套" )
		GiveItem ( role , 0 , 0479 , 1 , 22 ) 
		return
	elseif getrandom > 190 and getrandom <= 200  then	----------55双剑士（菲利尔）靴子（预留）
		SystemNotice ( role , "获得紫色镀银钢靴" )
		GiveItem ( role , 0 , 0655 , 1 , 22 ) 
		return
	end
end




--海盗王2008挖宝80BOSS箱子--海盗秘宝箱子
function ItemUse_WaBao_HDMBBox ( role , Item )	

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用海盗秘宝箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 200 )
	if getrandom <= 10 then							----------75双剑士（蓝琦）手套
		SystemNotice ( role , "获得紫色隐秘手套" )
		GiveItem ( role , 0 , 0588 , 1 , 22 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------75狙击手（蓝琦、艾利尔）手套
		SystemNotice ( role , "获得紫色射日手套" )
		GiveItem ( role , 0 , 0590 , 1 , 22 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------75封印师（菲利尔）手套
		SystemNotice ( role , "获得紫色神士手套" )
		GiveItem ( role , 0 , 0592 , 1 , 22 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------75封印师（艾米）手套	
		SystemNotice ( role , "获得紫色神奇熊猫手套 " )
		GiveItem ( role , 0 , 0594 , 1 , 22 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------75圣职者（菲利尔）手套		
		SystemNotice ( role , "获得紫色飞天手套" )
		GiveItem ( role , 0 , 0596 , 1 , 22 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		
		SystemNotice ( role , "获得紫色鱼仙子手套" )	----------75圣职者（艾米）手套
		GiveItem ( role , 0 , 0598 , 1 , 22 ) 
		return
	elseif getrandom > 60 and getrandom <= 70  then		----------75航海士（蓝琦、菲利尔）手套
		SystemNotice ( role , "获得紫色怒涛手套" )
		GiveItem ( role , 0 , 0600 , 1 , 22 ) 
		return
	elseif getrandom > 70 and getrandom <= 80  then		----------75航海士（艾米）手套	
		SystemNotice ( role , "获得紫色瑞兽手套" )
		GiveItem ( role , 0 , 0602 , 1 , 22 ) 
		return
	elseif getrandom > 80 and getrandom <= 90  then		----------75巨剑士（卡西斯）手套
		SystemNotice ( role , "获得紫色灵神手套" )
		GiveItem ( role , 0 , 0604 , 1 , 22 ) 
		return
		elseif getrandom > 90 and getrandom <= 100  then	----------75双剑士（蓝琦）靴子
		SystemNotice ( role , "获得紫色隐秘靴" )
		GiveItem ( role , 0 , 0748 , 1 , 22 ) 
		return
	elseif getrandom > 100 and getrandom <= 110  then	----------75狙击手（蓝琦、艾利尔）靴子
		SystemNotice ( role , "获得紫色射日靴" )
		GiveItem ( role , 0 , 0750 , 1 , 22 ) 
		return
	elseif getrandom > 110 and getrandom <= 120  then	----------75航海士（蓝琦、菲利尔）靴子	
		SystemNotice ( role , "获得紫色神士靴" )
		GiveItem ( role , 0 , 0752 , 1 , 22 ) 
		return
	elseif getrandom > 120 and getrandom <= 130  then	----------75航海士（艾米）靴子
		SystemNotice ( role , "获得紫色神奇熊猫靴 " )
		GiveItem ( role , 0 , 0754, 1 , 22 ) 
		return
	elseif getrandom > 130 and getrandom <= 140  then	----------75封印师（艾米）靴子
		SystemNotice ( role , "获得紫色飞天靴" )
		GiveItem ( role , 0 , 0756 , 1 , 22 ) 
		return
	elseif getrandom > 140 and getrandom <= 150  then	----------75封印师（菲利尔）靴子
		SystemNotice ( role , "获得紫色鱼仙子靴" )
		GiveItem ( role , 0 , 0758 , 1 , 22 ) 
		return
	elseif getrandom > 150 and getrandom <= 160  then	----------75圣职者（菲利尔）靴子
		SystemNotice ( role , "获得紫色怒涛靴" )
		GiveItem ( role , 0 , 0760 , 1 , 22 ) 
		return
	elseif getrandom > 160 and getrandom <= 170  then	----------75圣职者（艾米）靴子
		SystemNotice ( role , "获得紫色瑞兽靴" )
		GiveItem ( role , 0 , 0824 , 1 , 22 ) 
		return
	elseif getrandom > 170 and getrandom <= 180  then	----------75巨剑士（卡西斯）靴子
		SystemNotice ( role , "获得紫色灵神靴" )
		GiveItem ( role , 0 , 0830 , 1 , 22 ) 
		return
	elseif getrandom > 180 and getrandom <= 190  then	----------75双剑士（菲利尔）手套（预留）
		SystemNotice ( role , "获得紫色隐秘手套" )
		GiveItem ( role , 0 , 0588 , 1 , 22 ) 
		return
	elseif getrandom > 190 and getrandom <= 200  then	----------75双剑士（菲利尔）靴子（预留）
		SystemNotice ( role , "获得紫色隐秘靴" )
		GiveItem ( role , 0 , 0748 , 1 , 22 ) 
		return
	end
end

-- 海盗王2008--命运房间--40级海盗武器箱子
function ItemUse_WaBao_HD40Box ( role , Item )
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用40级海盗武器箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 60 )
	if getrandom <= 10 then							----------40双剑士武器
		SystemNotice ( role , "获得紫色蛇剑" )
		GiveItem ( role , 0 , 0004 , 1 , 22 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------40巨剑士武器
		SystemNotice ( role , "获得紫色十字剑" )
		GiveItem ( role , 0 , 0015 , 1 , 22 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------40狙击手武器
		SystemNotice ( role , "获得紫色精致手枪" )
		GiveItem ( role , 0 , 0039 , 1 , 22 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------40航海士武器	
		SystemNotice ( role , "获得紫色月牙刺" )
		GiveItem ( role , 0 , 0076 , 1 , 22 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------40圣职者武器
		SystemNotice ( role , "获得紫色祈祷权杖" )
		GiveItem ( role , 0 , 0100 , 1 , 22 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------40封印师武器
		SystemNotice ( role , "获得紫兽头权杖" )
		GiveItem ( role , 0 , 0101 , 1 , 22 ) 
		return
	end
end

-- 海盗王2008--命运房间--45级海盗武器箱子
function ItemUse_WaBao_HD45Box ( role , Item )	

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用45级海盗武器箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 60 )
	if getrandom <= 10 then							----------45双剑士武器
		SystemNotice ( role , "获得紫色弯刃剑" )
		GiveItem ( role , 0 , 0022 , 1 , 22 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------45巨剑士武器
		SystemNotice ( role , "获得紫色战士剑" )
		GiveItem ( role , 0 , 0020 , 1 , 22 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------45狙击手武器
		SystemNotice ( role , "获得紫色礼品手枪" )
		GiveItem ( role , 0 , 0044 , 1 , 22 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------45航海士武器	
		SystemNotice ( role , "获得紫水晶刃" )
		GiveItem ( role , 0 , 0083 , 1 , 22 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------45圣职者武器
		SystemNotice ( role , "获得紫色智慧之杖" )
		GiveItem ( role , 0 , 4305 , 1 , 22 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------45封印师武器
		SystemNotice ( role , "获得紫战斗之杖" )
		GiveItem ( role , 0 , 0107 , 1 , 22 ) 
		return
	end
end

-- 海盗王2008--命运房间--50级海盗武器箱子
function ItemUse_WaBao_HD50Box ( role , Item )	

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用50级海盗武器箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 60 )
	if getrandom <= 10 then							----------50双剑士武器
		SystemNotice ( role , "获得紫色钢制佩剑" )
		GiveItem ( role , 0 , 1392 , 1 , 22 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------50巨剑士武器
		SystemNotice ( role , "获得紫色骑兵佩剑" )
		GiveItem ( role , 0 , 1373 , 1 , 22 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------50狙击手武器
		SystemNotice ( role , "获得紫色精致猎枪" )
		GiveItem ( role , 0 , 0040 , 1 , 22 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------50航海士武器	
		SystemNotice ( role , "获得紫色狼牙刺" )
		GiveItem ( role , 0 , 0077 , 1 , 22 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------50圣职者武器
		SystemNotice ( role , "获得紫色生命之光" )
		GiveItem ( role , 0 , 0103 , 1 , 22 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------50封印师武器
		SystemNotice ( role , "获得紫雷霆法杖" )
		GiveItem ( role , 0 , 0102 , 1 , 22 ) 
		return
	end
end

-- 海盗王2008--命运房间--55级海盗武器箱子
function ItemUse_WaBao_HD55Box ( role , Item )
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用55级海盗武器箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 60 )
	if getrandom <= 10 then							----------55双剑士武器
		SystemNotice ( role , "获得紫色袭击剑" )
		GiveItem ( role , 0 , 0023 , 1 , 22 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------55巨剑士武器
		SystemNotice ( role , "获得紫色冲锋剑" )
		GiveItem ( role , 0 , 0021 , 1 , 22 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------55狙击手武器
		SystemNotice ( role , "获得紫色速射火枪" )
		GiveItem ( role , 0 , 0045 , 1 , 22 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------55航海士武器	
		SystemNotice ( role , "获得紫嗜血利刃" )
		GiveItem ( role , 0 , 0084 , 1 , 22 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------55圣职者武器
		SystemNotice ( role , "获得紫色束缚之杖" )
		GiveItem ( role , 0 , 1476 , 1 , 22 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------55封印师武器
		SystemNotice ( role , "获得紫红莲法杖" )
		GiveItem ( role , 0 , 0108 , 1 , 22 ) 
		return
	end
end

-- 海盗王2008--命运房间--60级海盗武器箱子
function ItemUse_WaBao_HD60Box ( role , Item )
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用60级海盗武器箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 60 )
	if getrandom <= 10 then							----------60双剑士武器
		SystemNotice ( role , "获得紫色龙鸣剑" )
		GiveItem ( role , 0 , 1393 , 1 , 22 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------60巨剑士武器
		SystemNotice ( role , "获得紫色苍龙剑" )
		GiveItem ( role , 0 , 1374 , 1 , 22 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------60狙击手武器
		SystemNotice ( role , "获得紫色圣光枪" )
		GiveItem ( role , 0 , 0041 , 1 , 22 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------60航海士武器	
		SystemNotice ( role , "获得紫龙王匕首" )
		GiveItem ( role , 0 , 0078 , 1 , 22 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------60圣职者武器
		SystemNotice ( role , "获得紫色天使之泪" )
		GiveItem ( role , 0 , 1442 , 1 , 22 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------60封印师武器
		SystemNotice ( role , "获得紫神谴之杖" )
		GiveItem ( role , 0 , 1439 , 1 , 22 ) 
		return
	end
end

-- 海盗王2008--命运房间--65级海盗武器箱子
function ItemUse_WaBao_HD65Box ( role , Item )	

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用65级海盗武器箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 60 )
	if getrandom <= 10 then							----------65双剑士武器
		SystemNotice ( role , "获得紫色火痕" )
		GiveItem ( role , 0 , 4212 , 1 , 22 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------65巨剑士武器
		SystemNotice ( role , "获得紫色愤怒咆哮" )
		GiveItem ( role , 0 , 4209 , 1 , 22 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------65狙击手武器
		SystemNotice ( role , "获得紫色响尾蛇" )
		GiveItem ( role , 0 , 4214 , 1 , 22 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------65航海士武器	
		SystemNotice ( role , "获得紫无影牙" )
		GiveItem ( role , 0 , 4216 , 1 , 22 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------65圣职者武器
		SystemNotice ( role , "获得紫色极寒之火" )
		GiveItem ( role , 0 , 4197 , 1 , 22 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------65封印师武器
		SystemNotice ( role , "获得紫神之炎" )
		GiveItem ( role , 0 , 4203 , 1 , 22 ) 
		return
	end
end

-- 海盗王2008--命运房间--70级海盗武器箱子
function ItemUse_WaBao_HD70Box ( role , Item )	

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用70级海盗武器箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 60 )
	if getrandom <= 10 then							----------70双剑士武器
		SystemNotice ( role , "获得紫色龙泉" )
		GiveItem ( role , 0 , 0113 , 1 , 22 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------70巨剑士武器
		SystemNotice ( role , "获得紫色裂岩" )
		GiveItem ( role , 0 , 0115 , 1 , 22 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------70狙击手武器
		SystemNotice ( role , "获得紫色流星火珠" )
		GiveItem ( role , 0 , 0119 , 1 , 22 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------70航海士武器	
		SystemNotice ( role , "获得紫鱼肠" )
		GiveItem ( role , 0 , 0150 , 1 , 22 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------70圣职者武器
		SystemNotice ( role , "获得紫色如意宝杖" )
		GiveItem ( role , 0 , 0109 , 1 , 22 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------70封印师武器
		SystemNotice ( role , "获得紫降魔杵" )
		GiveItem ( role , 0 , 0111 , 1 , 22 ) 
		return
	end
end

-- 海盗王2008--命运房间--75级海盗武器箱子
function ItemUse_WaBao_HD75Box ( role , Item )
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用75级海盗武器箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 60 )
	if getrandom <= 10 then							----------75双剑士武器
		SystemNotice ( role , "获得紫色游龙" )
		GiveItem ( role , 0 , 0114 , 1 , 22 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------75巨剑士武器
		SystemNotice ( role , "获得紫色巨阙" )
		GiveItem ( role , 0 , 0116 , 1 , 22 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------75狙击手武器
		SystemNotice ( role , "获得紫色霹雳神雷" )
		GiveItem ( role , 0 , 0120 , 1 , 22 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------75航海士武器	
		SystemNotice ( role , "获得紫断魂" )
		GiveItem ( role , 0 , 0151 , 1 , 22 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------75圣职者武器
		SystemNotice ( role , "获得紫色补天之杖" )
		GiveItem ( role , 0 , 0110 , 1 , 22 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------75封印师武器
		SystemNotice ( role , "获得紫试炼之杵" )
		GiveItem ( role , 0 , 0112 , 1 , 22 ) 
		return
	end
end
-- 海盗王2008挖宝--海盗羊皮卷
function ItemUse_WaBao_HDYPJ( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"身上最少需要1个空位")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 6343 )
	local lv= GetChaAttr(role, ATTR_LV) 
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "同时只能携带一张海盗藏宝图" )
		UseItemFailed ( role )
		return
	end
	if lv <41 then
		SystemNotice ( role , "角色当前级别低于41级不能使用海盗羊皮卷" )
		UseItemFailed ( role )
		return	
	end
	GiveItem ( role , 0 , 6343 , 1 , 0 )
end
------命运房间--箱子中的箱子
function ItemUse_WaBao_MYBOXBOX ( role , Item )

local Lv = Lv( role )
	if  Lv < 40 then 
		UseItemFailed ( role )
		SystemNotice ( role , "等级不够40级，开启命运宝箱失败，什么也没有得到。" )
		return 
	end	

		local sc = math.random(1,200)
		
	-- name = GetChaDefaultName(role)
	-- local name_notice = name.."开启命运宝箱的时候受到了天神的鄙视，导致他眩晕15秒。"
	-- Notice(name_notice)
	
		if sc >= 1 and sc <= 30 then	--被鄙视，并且眩晕（30/200）
			local statelv = 1 
			local statetime = 15
			local hp = Hp(role)		
			SystemNotice(role, "您开启命运宝箱的时候受到了天神的鄙视，导致他眩晕15秒。")
			AddState ( role , role , STATE_XY , statelv , statetime )
			AddState ( role , role , STATE_SWJTWO , statelv , 3 )
			AddState(role , role , STATE_JLTX6 , 1 , 30 )
			return
			
		elseif sc > 30 and sc <= 65 then	--商城道具（35/200）
			-- SystemNotice ( role , "哇，今天运气不错，打开命运宝箱得到了商城道具！！" )
												---08-10-09修改op
			-- local name = GetChaDefaultName(role)
			-- local shangcheng_name = "哇!"..name.."打开命运宝箱得到了一件商城道具！"
			-- ScrollNotice( shangcheng_name , 1 )
			SystemNotice( role , "您打开命运宝箱得到了一件商城道具。" )
												---08-10-09修改ed
			local get_shopitem_random = math.random( 1,100 )
			if get_shopitem_random < 3 then
			GiveItem ( role , 0 , 1807 , 1 , 4 )  --理发券
				return
			elseif get_shopitem_random >= 3 and get_shopitem_random < 13 then
				GiveItem ( role , 0 , 5626 , 1 , 4 )  --超级生命恢复剂
				return	
			elseif get_shopitem_random >= 13 and get_shopitem_random < 18 then
				GiveItem ( role , 0 , 5627 , 1 , 4 )  --法力圣水
				return	
			elseif get_shopitem_random >= 18 and get_shopitem_random < 19 then
				GiveItem ( role , 0 , 3095 , 1 , 4 )  --高级努力
				return	
			elseif get_shopitem_random >= 19 and get_shopitem_random < 24 then
				GiveItem ( role , 0 , 3081 , 1 , 4 )  --菊型礼花
				return		
			elseif get_shopitem_random >= 24 and get_shopitem_random < 29 then
				GiveItem ( role , 0 , 3082 , 1 , 4 )  --豪华礼花
				return	
			elseif get_shopitem_random >= 29 and get_shopitem_random < 34 then
				GiveItem ( role , 0 , 3343 , 1 , 4 )  --玫瑰
				return		
			elseif get_shopitem_random >= 34 and get_shopitem_random < 39 then
				GiveItem ( role , 0 , 3077 , 1 , 4 )  --甜蜜巧克力
				return		
			elseif get_shopitem_random >= 39 and get_shopitem_random < 44 then
				GiveItem ( role , 0 , 3094 , 1 , 4 )  --双倍经验增幅器
				return		
			elseif get_shopitem_random >= 44 and get_shopitem_random < 46 then
				GiveItem ( role , 0 , 3100 , 1 , 4 )  --雄狮模拟药剂
				return		
			elseif get_shopitem_random >= 46 and get_shopitem_random < 48 then
				GiveItem ( role , 0 , 3101 , 1 , 4 )  --灵猴模拟药剂
				return	
			elseif get_shopitem_random >= 48 and get_shopitem_random < 50 then
				GiveItem ( role , 0 , 3102 , 1 , 4 )  --蛮牛模拟药剂
				return	
			elseif get_shopitem_random >= 50 and get_shopitem_random < 52 then
				GiveItem ( role , 0 , 3103 , 1 , 4 )  --鹰眼模拟药剂
				return	
			elseif get_shopitem_random >= 52 and get_shopitem_random < 54 then
				GiveItem ( role , 0 , 3104 , 1 , 4 )  --圣灵模拟药剂
				return	
			elseif get_shopitem_random >= 54 and get_shopitem_random < 56 then
				GiveItem ( role , 0 , 0332 , 1 , 4 )  --春风机票
				return	
			elseif get_shopitem_random >= 56 and get_shopitem_random < 58 then
				GiveItem ( role , 0 , 0563 , 1 , 4 )  --夏岛机票
				return	
			elseif get_shopitem_random >= 58 and get_shopitem_random < 60 then
				GiveItem ( role , 0 , 0583 , 1 , 4 )  --秋岛机票
				return	
			elseif get_shopitem_random >= 60 and get_shopitem_random < 62 then
				GiveItem ( role , 0 , 2491 , 1 , 4 )  --海军机票
				return	
			elseif get_shopitem_random >= 62 and get_shopitem_random < 64 then
				GiveItem ( role , 0 , 3099 , 1 , 4 )  --SP神仙水
				return		
			elseif get_shopitem_random >= 64 and get_shopitem_random < 69 then
				GiveItem ( role , 0 , 3097 , 1 , 4 )  --强力体力恢复药剂
				return	
			elseif get_shopitem_random >= 69 and get_shopitem_random < 71 then
				GiveItem ( role , 0 , 3351 , 1 , 4 )  --皇家礼炮A
				return	
			elseif get_shopitem_random >= 71 and get_shopitem_random < 73 then
				GiveItem ( role , 0 , 3352 , 1 , 4 )  --皇家礼炮B
				return	
			elseif get_shopitem_random >= 73 and get_shopitem_random < 75 then
				GiveItem ( role , 0 , 3353 , 1 , 4 )  --皇家礼炮C
				return	
			elseif get_shopitem_random >= 75 and get_shopitem_random < 77 then
				GiveItem ( role , 0 , 3354 , 1 , 4 )  --心型烟花-I
				return	
			elseif get_shopitem_random >= 77 and get_shopitem_random < 79 then
				GiveItem ( role , 0 , 3355 , 1 , 4 )  --心型烟花-LOVE
				return	
			elseif get_shopitem_random >= 79 and get_shopitem_random < 81 then
				GiveItem ( role , 0 , 3356 , 1 , 4 )  --心型烟花-U
				return	
			elseif get_shopitem_random >= 81 and get_shopitem_random < 83 then
				GiveItem ( role , 0 , 3357 , 1 , 4 )  --心型烟花-爱
				return	
			elseif get_shopitem_random >= 83 and get_shopitem_random < 85 then
				GiveItem ( role , 0 , 3358 , 1 , 4 )  --心型烟花-你
				return	
			elseif get_shopitem_random >= 85 and get_shopitem_random < 87 then
				GiveItem ( role , 0 , 3359 , 1 , 4 )  --心型烟花-我
				return	
			elseif get_shopitem_random >= 87 and get_shopitem_random < 89 then
				GiveItem ( role , 0 , 3834 , 1 , 4 )  --寂寞之塔门口机票
				return	
			elseif get_shopitem_random >= 89 and get_shopitem_random < 91 then
				GiveItem ( role , 0 , 3839 , 1 , 4 )  --寂寞之塔2层机票
				return	
			elseif get_shopitem_random >= 91 and get_shopitem_random < 93 then
				GiveItem ( role , 0 , 3840 , 1 , 4 )  --寂寞之塔3层机票
				return	
			elseif get_shopitem_random >= 93 and get_shopitem_random < 95 then
				GiveItem ( role , 0 , 3841 , 1 , 4 )  --寂寞之塔4层机票
				return	
			elseif get_shopitem_random >= 95 and get_shopitem_random < 97 then
				GiveItem ( role , 0 , 3842 , 1 , 4 )  --寂寞之塔5层机票
				return	
			elseif get_shopitem_random >= 97 and get_shopitem_random < 99 then
				GiveItem ( role , 0 , 3843 , 1 , 4 )  --寂寞之塔6层机票
				return	
			else
				GiveItem ( role , 0 , 3846 , 1 , 4 )  --替身娃娃
				return		
			end
			
		elseif sc > 65 and sc <= 125 then	--传送回城（60/200）
			RemoveChaItem( role , 6359 , 1 , 2 , -1 , 2 , 1 )
			SystemNotice ( role , "开启命运宝箱时一阵冷风吹过，你飘啊飘啊飘回了白银城。" )
			MoveTo( role,2200,2888,"garner" )
			return
			
		elseif sc > 125 and sc <= 129 then	--宠物（4/200）
			local name = GetChaDefaultName(role)
			local zhaohuan_name = name.."开启命运宝箱时,得到了幸运女神的眷顾，获得一张黑龙召唤卷！"
			ScrollNotice( zhaohuan_name , 1 )
			SystemNotice( role , "您打开命运宝箱得到了一张黑龙召唤卷。" )
			GiveItem(role,0,6305,1,4)   ---黑龙召唤卷ID未定				
			return
		
		elseif sc > 129 and sc <= 135 then	--双倍经验（6/200）
			local name = GetChaDefaultName(role)
			ScrollNotice( name.."开启命运宝箱时获得了30分钟的双倍经验时间，大家祝贺他(她)！", 1 )
			SystemNotice( role , "您开启命运宝箱时获得30分钟的双倍经验时间，这个效果不能和其他同类效果叠加。" )
			-- AddState(role , role , STATE_SBJYGZ , 1 , 1800 )
			local statelv = 1
			local statetime =1800
			TrigASBJY(role,statelv,statetime)
			return
				
		elseif sc > 135 and sc <= 139 then	--双倍掉宝（4/200）
			local name = GetChaDefaultName(role)
			ScrollNotice( name.."开启命运宝箱时获得了30分钟的双倍掉宝时间，大家祝贺他(她)！", 1 )
			SystemNotice( role , "您开启命运宝箱时获得30分钟的双倍掉宝时间，这个效果不能和其他同类效果叠加。" )
			-- AddState(role , role , STATE_SBBLGZ , 1 , 1800 )
			local statelv = 1
			local statetime =1800
			TrigASBBL(role,statelv,statetime)
			return
		
		elseif sc > 139 and sc <= 152 then	--古代硬币（13/200）
			local name = GetChaDefaultName(role)
			ScrollNotice( name.."开启命运宝箱时发现了古代精灵的宝物——古代硬币，恭喜恭喜！", 1 )
			SystemNotice( role , "您打开命运宝箱得到了一枚古代硬币。" )
			GiveItem ( role , 0 , 6348 , 1 , 4 ) 
			return
		
		elseif sc > 152 and sc <= 199 then	--钱（47/200）
			local lv = GetChaAttr(role, ATTR_LV) 
			local money = math.random(2000,2000+lv*300)
			SystemNotice( role , "您打开命运宝箱得到了一些金钱。" )
			AddMoney(role, money,money)
			return
		
		elseif sc > 199 and sc <= 200 then	-- 超兵（1/200）
			local name = GetChaDefaultName(role)
			local name_notice = name.."开启命运宝箱的时候突然被血红的凶光笼罩。煞气散开之后，无敌的魔剑——噬魂被他握在了手上！"
			ScrollNotice( name_notice , 1 )
			SystemNotice( role , "魔剑是限时道具，请抓紧时间使用，超时是会消失的喔~")
			SystemNotice( role , "魔剑的主人不允许被打败！您一旦死亡，魔剑就会从包包里掉出去喔！")
			GiveItem ( role , 0 , 6347 , 1 , 4 )
			return
		
										--2008-10-07按运营需求暂时取消部分op
									
		-- elseif sc > 69 and sc <= 75 then	--装备（6/200）
			-- local Lv = Lv( role )
			-- if  Lv < 40 then 
				-- UseItemFailed ( role )
				-- SystemNotice ( role , "等级不够40级，无法获得物品。" )
				-- return
			-- elseif Lv >= 40 and Lv < 45 then
				-- SystemNotice ( role , "运气不错，获得一件40级海盗武器箱子，真棒！" )
				-- GiveItem ( role , 0 , 6350 , 1 , 4 )
				-- return
			-- elseif Lv >= 45 and Lv < 50 then
				-- SystemNotice ( role , "运气不错，获得一件45级海盗武器箱子，真棒！" )
				-- GiveItem ( role , 0 , 6351 , 1 , 4 )
				-- return			
			-- elseif Lv >= 50 and Lv < 55 then
				-- SystemNotice ( role , "运气不错，获得一件50级海盗武器箱子，真棒！" )
				-- GiveItem ( role , 0 , 6352 , 1 , 4 )
				-- return			
			-- elseif Lv >= 55 and Lv < 60 then
				-- SystemNotice ( role , "运气不错，获得一件55级海盗武器箱子，真棒！" )
				-- GiveItem ( role , 0 , 6353 , 1 , 4 )
				-- return			
			-- elseif Lv >= 60 and Lv < 65 then
				-- SystemNotice ( role , "运气不错，获得一件60级海盗武器箱子，真棒！" )
				-- GiveItem ( role , 0 , 6354 , 1 , 4 )
				-- return				
			-- elseif Lv >= 65 and Lv < 70 then
				-- SystemNotice ( role , "运气不错，获得一件65级海盗武器箱子，真棒！" )
				-- GiveItem ( role , 0 , 6355 , 1 , 4 )
				-- return		
			-- elseif Lv >= 70 and Lv < 75 then
				-- SystemNotice ( role , "运气不错，获得一件70级海盗武器箱子，真棒！" )
				-- GiveItem ( role , 0 , 6356 , 1 , 4 )
				-- return
			-- elseif Lv >= 75 then
				-- SystemNotice ( role , "运气不错，获得一件75级海盗武器箱子，真棒！" )
				-- GiveItem ( role , 0 , 6357 , 1 , 4 )
				-- return
			-- end
		
		-- elseif sc > 197 and sc <= 198 then	--组件靴子（1/200）
			-- local name = GetChaDefaultName(role)
			-- local tuijia_name = name.."开启命运宝箱时获得了古代英雄的腿甲残片，真令人羡慕！"
			-- ScrollNotice( tuijia_name , 1 )
			-- GiveItem ( role , 0 , 6346 , 1 , 4 ) 
			-- return
			
		-- elseif sc > 198 and sc <= 199 then	--组件手套（1/200）
			-- local name = GetChaDefaultName(role)
			-- local shoujia_name = name.."开启命运宝箱时获得了古代英雄的手甲残片，真令人羡慕！"
			-- ScrollNotice( shoujia_name , 1 )
			-- GiveItem ( role , 0 , 6345 , 1 , 4 ) 
			-- return
			
		-- elseif sc > 199 and sc <= 200 then	--组件衣服（1/200）
			-- local name = GetChaDefaultName(role)
			-- local xiongjia_name = name.."开启命运宝箱时获得了古代英雄的胸甲残片，真令人羡慕！"
			-- ScrollNotice( xiongjia_name , 1 )
			-- GiveItem ( role , 0 , 6344 , 1 , 4 ) 	
			-- return
			
									--2008-10-07按运营需求暂时取消部分ed
		end
end

----------------------------------------魔能结晶
function ItemUse_mohe(role,Item)						--主函数

	local Box_old = GetChaItem2 (  role , 2 , 6378 )
	local roleLv = GetChaAttr(role, ATTR_LV)
	local Box_Open = GetItemAttr ( Box_old , ITEMATTR_VAL_STA )
	local LVtype = 0
	if roleLv < 10 then																		-- *角色等级少于10级大于60级则不可使用	
		SystemNotice(role, "人物等级到10级才能开启魔能结晶")
		UseItemFailed ( role )
		return
	end
	if roleLv>60 then
		SystemNotice(role, "你的等级太高了，魔能结晶已经不能为你提供太大帮助了，还是扔了它吧")
		UseItemFailed ( role )
		return
	end
	local now_day= os.date("%d")															-- ***一天只能开一次
	local now_day_num= tonumber(now_day)
	local Day = now_day_num
	local IDay = GetItemAttr(Item, ITEMATTR_VAL_STR)            --STR记录魔盒打开日期
	if Day == IDay then				
		SystemNotice(role ,"魔能结晶聚集能量结束，请明天再试")
		UseItemFailed ( role )
		return
	end	
	local Can_Open = GetItemAttr(Item, ITEMATTR_VAL_AGI)-- ****上线2小时才能开启
	local needtime=math.floor((240-Can_Open)/2)+1
	if Can_Open < 240 then
		SystemNotice (role,"时间还没到不要急！魔能结晶还需要"..needtime.."分钟才能开启")
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )										-- **开启魔盒至少需要1个物品栏空位
	if  Item_CanGet < 2 then
		SystemNotice(role ,"开启魔能结晶至少需要2个物品栏空位哦")
		UseItemFailed ( role )
		return
	end
	if roleLv < 46 then       --LVtype: 10-45级为1，，46-60为2.
		LVtype = 1
	elseif roleLv < 61 then
		LVtype = 2
	end

	if Box_Open < 9 then
		local isopen=MoHeGiveItem(role,Box_Open,LVtype)   	--根据LVtype给物品
		if isopen==0 then 
			UseItemFailed ( role )
			return
		end
		Box_Open = Box_Open + 1
		SystemNotice(role ,"第 "..Box_Open.." 次打开魔能结晶，下次打开会有更好的东西哦。")	
		GiveItem(role,0,6378,1,4)
		local Box_New = GetChaItem2 (  role , 2 , 6378 )
		SetItemAttr(Box_New, ITEMATTR_VAL_STR, Day)   	--设置为当天时间
		SetItemAttr(Box_New, ITEMATTR_VAL_AGI,0)	--上线时间清
		SetItemAttr(Box_New, ITEMATTR_VAL_STA, Box_Open)	--操作次数
		SetItemAttr(Box_New, ITEMATTR_VAL_CON, Day)
	else
		local isopen=MoHeGiveItem(role,Box_Open,LVtype)   	--根据LVtype给物品
		if isopen==0 then 
			UseItemFailed ( role )
			return
		end
		SystemNotice(role ,"第 "..(Box_Open+1).." 次打开魔能结晶，魔能结晶消耗了所有的能量，魔能结晶消失。请去魔晶大使处领一个全新的魔能结晶。")
	end
end

--===============时间存储瓶
function ItemUse_shiJianCunChu	 ( role , item )

	-- SystemNotice ( role , "达瓦")
	local Item_Hour = GetItemAttr ( item , ITEMATTR_VAL_STR )		--存储时间信息
	if Item_Hour==0 then 
		SystemNotice ( role , "这是一个空瓶。请找双儿MM存储你的剩余时间。")
		UseItemFailed ( role )
		return
	end 
	-- SystemNotice ( role , "Item_Hour========"..Item_Hour)
	local p = GetChaAttr ( role ,ATTR_EXTEND6 )
	-- SystemNotice ( role , " p=========".. p)
	if p == 10 then
		p = p - Item_Hour
		-- SystemNotice ( role , " p===============".. p)
		SetChaAttr ( role ,ATTR_EXTEND6 , p )
		SystemNotice ( role , "您在本周的双倍时间增加了"..Item_Hour.."小时。请到双儿MM消费吧。")
		return
	else
		SystemNotice ( role , "您本周的双倍时间还有剩余。请消费完剩余时间后再使用[时间存储瓶]")
		UseItemFailed ( role )
		return
	end
end

-----------------------------------时间胶水
function ItemUse_SB_Switch ( role , item )

	local Item_SB = GetChaItem2 (  role , 2 , 6370 )
	local SB_Switch = GetItemAttr ( Item_SB , ITEMATTR_VAL_STR )
	local Item_Num = CheckBagItem( role, 6370 )
	-- SystemNotice (role ,"Item_Num===="..Item_Num)
	if Item_Num == 1 and SB_Switch == 0 then
		SystemNotice (role ,"时间静止吧！")
		SetItemAttr (Item_SB , ITEMATTR_VAL_STR , 1 )
		return
	elseif Item_Num == 1 and SB_Switch == 1 then
	SystemNotice (role ,"时间运行吧！！")
		SetItemAttr (Item_SB , ITEMATTR_VAL_STR , 0 )
		return
	elseif Item_Num < 1 then
		SystemNotice (role ,"您并没有领取双倍经验")
		UseItemFailed ( role )
	end
end

function Sk_Script_Xszj ( role , Item ) 											--技能卷轴“新手重击”的使用公式

	local sk_add = SK_NEW
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--技能等级合法性检查
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	SystemNotice( role , "你已经学会了新手技能，通过点击界面中的技能按钮或按下快捷键ALT+S就可以看到刚刚学会的新手重击" )
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--星座卡
function ItemUse_XingZuoKa(role,Item)

	local roleBthM,roleBthD=GetPersonBirthday(role)
	roleBth=roleBthM*100+roleBthD
	if roleBth<0 then 
		SystemNotice(role,"请填写你的生日资料")
		UseItemFailed ( role )
		return
	end
	local hasBag=HasBag(role,1,Item)
	if hasBag==0 then
		UseItemFailed ( role )
		return
	end
	local i=1
	local xingzuoId=0
	for i=1,12,1 do
		local ID =5881+i
		xingzuoId=CheckBagItem(role,ID)
		if xingzuoId==1 or BankNoItem(role,ID, 1)==0then
			SystemNotice(role,"你已经拥有一张星座卡卡片！")
			UseItemFailed ( role )
			return
		end
	end
	local itemID=5881+XingZuo(roleBth)
	GiveItem ( role , 0 ,itemID, 1 , 4 )
	local rolename = GetChaDefaultName ( role )
	local itemname = GetItemName ( itemID )
	Notice("恭喜玩家 "..rolename.." ，打开星座卡获得" ..itemname.." 。目前你可以通过限量发售的“新宠星座包”获得此卡。")
	ScrollNotice("恭喜玩家 "..rolename.." ，打开星座卡获得" ..itemname.." 。目前你可以通过限量发售的“新宠星座包”获得此卡。",1)
end
--===============开瓶器
function ItemUse_KaiPingQi(role,Item)

	local item_XSJYCunChu = GetChaItem(role , 2, 4)
	local Item_Id = GetItemID ( item_XSJYCunChu )
	if item_XSJYCunChu==nil or Item_Id~=5895 then
		SystemNotice(role,"请检查背包中第5格是否有新手经验存储瓶！")
		UseItemFailed ( role )
		return
	else
		local isXSJYShiFang=XSJYShiFang(role,item_XSJYCunChu)
		if isXSJYShiFang==0 then
			UseItemFailed ( role )
		end 
	end	
end 
function ItemUse_XSJYCCP(role,Item)
	local expnumLow=GetItemAttr( Item , ITEMATTR_VAL_AGI  )
	local expnumHigh=GetItemAttr( Item , ITEMATTR_VAL_STR  )
	expnum=expnumHigh*1000+expnumLow
	SystemNotice(role,"新手经验存储瓶已存储经验值 "..expnum.." 。请使用开瓶器打开")
	UseItemFailed ( role )
end 

--=============新手经验培养瓶
function ItemUse_XSJYPeiYangPing(role,Item)

	local IsOpen=GetItemAttr( Item , ITEMATTR_VAL_AGI  )
	if IsOpen~=60 then 
		NeedOpenHour=math.floor((60-IsOpen)/6)
		NeedOpenM=(math.mod((60-IsOpen),6))*10
		SystemNotice(role,"再等等，时间还没到，还需要"..NeedOpenHour.."小时"..NeedOpenM.."分钟")
		UseItemFailed ( role )
		return
	else
		AddExpAll(role,100000,100000,1)
	end	
end
function ItemUse_SWDC(role,Item)

	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=999990000 then
		SystemNotice (role, "你的帐户已经饱和，使用道具失败")
		UseItemFailed ( role )
		return	
	end
	AddMoney ( role , 0 , 100000 )
end 
function ItemUse_MOLIBOX( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 4 then
		SystemNotice(role ,"打开宝箱背包里至少需要有4个空位")
		UseItemFailed ( role )
		return
	end
	local equipId={}
		equipId[1]=5537
		equipId[2]=5553
		equipId[3]=5593
		equipId[4]=5677
		equipId[5]=5569
	local chaType = GetChaTypeID( role )
	local rand={}
		rand[1]=5
		rand[2]=5
		rand[3]=4
		rand[4]=4
	local i=0
	for i=1,4,1 do	
		if chaType==i then
			
			local a=math.random(1,rand[i])
			local j=0
			local TZname={}
				TZname[1]="骇客套装"
				TZname[2]="死神套装"
				TZname[3]="加勒比套装"
				TZname[4]="牛仔套装"
				TZname[5]="超人套装"
			local rolename = GetChaDefaultName ( role )
			if a~=4 then
				ScrollNotice("恭喜玩家 "..rolename.." ，开启新式酷装宝箱获得精美绝伦的 " ..TZname[a].." 。你可以通过限量发售的“新宠星座包”获得此宝箱。",1)
			end
			for j=1,4,1 do
				local ID=equipId[a]+i*4+j-5
				GiveItem ( role , 0 ,ID , 1 , 4 )
				if equipId[a]~=5677 then 
					local itemname = GetItemName ( ID )
					Notice("恭喜玩家 "..rolename.." ，开启新式酷装宝箱获得精美绝伦的 " ..itemname.." 。你可以通过限量发售的“新宠星座包”获得此宝箱。")
				end
			end
		end	
	end	
end
function ItemUse_XSSJG(role,Item)
	
	local roleLv=Lv(role)
	if roleLv >=45 then
		SystemNotice(role,"你已经不是新手了，请购买更高级的果子")
		UseItemFailed ( role )
		return
	end
	local statelv = 4
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local ret = UseAexpItem(role,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	else
		local ret = UseAexpItem(Cha_Boat,Item,statelv,statetime)
		if ret==0 then
			UseItemFailed ( role )
			return
		end
	end	
end 
function ItemUse_ShiZhiSha( role , Item )
	local SB_Type = GetItemAttr (Item,ITEMATTR_VAL_AGI)
	local SB_LV = GetItemAttr (Item,ITEMATTR_VAL_DEX)
	local Now_Time = GetItemAttr (Item,ITEMATTR_VAL_CON)
	local itemTimeM=math.floor((SB_LV*3600-Now_Time)/60)+1
	local SBTypeHZ={}
	SBTypeHZ[1]="经验"
	SBTypeHZ[2]=" "
	SBTypeHZ[3]="掉率"
	SystemNotice(role,"你现在还有"..itemTimeM.."分钟双倍"..SBTypeHZ[SB_Type].."可以使用。")
	UseItemFailed ( role )
	return
end

function ItemUse_CJShiZhiSha( role , Item )
	local SB_LV = GetItemAttr (Item,ITEMATTR_VAL_DEX)
	local Now_Time = GetItemAttr (Item,ITEMATTR_VAL_CON)
	local Buff_Lv = GetItemAttr (Item,ITEMATTR_VAL_STA)
	local itemTimeM=math.floor((SB_LV*3600-Now_Time)/60)+1
	SystemNotice(role,"你现在还有"..itemTimeM.."分钟"..Buff_Lv.."倍经验可以使用。")
	UseItemFailed ( role )
	return
end 
function ItemUse_MGHZ(role,Item)
	local roleType=GetChaTypeID(role)
	if roleType<3 then
		local MGHZTime=GetItemAttr(Item,ITEMATTR_VAL_STR)
		local daojishis=(math.mod((120-MGHZTime),12))*5
		local daojishim=math.floor((120-MGHZTime)/12)
		SystemNotice(role,"玫瑰盒子消失倒记时： "..daojishim.." 分 "..daojishis.." 秒 ")
		SystemNotice(role,"你虽然很帅，但是玫瑰盒子只有女生才能打开哦，快送给你心爱的她吧。")
		UseItemFailed ( role )
		return
	else
		local hasBag=HasBag(role,1,Item)
		if hasBag==0 then
			UseItemFailed ( role )
			return
		end
		GiveItem(role,0,6381,1,4)	
	end	
end 

function ItemUse_DYMGHZ(role,Item)
	local roleType=GetChaTypeID(role)
	if roleType<3 then
		local MGHZTime=GetItemAttr(Item,ITEMATTR_VAL_STR)
		local daojishis=(math.mod((120-MGHZTime),12))*5
		local daojishim=math.floor((120-MGHZTime)/12)
		SystemNotice(role,"典雅的玫瑰盒子消失倒记时： "..daojishim.." 分 "..daojishis.." 秒 ")
		SystemNotice(role,"你虽然很帅，但是典雅的玫瑰盒子只有女生才能打开哦，快送给你心爱的她吧。")
		UseItemFailed ( role )
		return
	else
		local hasBag=HasBag(role,1,Item)
		if hasBag==0 then
			UseItemFailed ( role )
			return
		end
		GiveItem(role,0,6381,10,4)	
	end	
end 
function ItemUse_GGMGHZ(role,Item)
	local roleType=GetChaTypeID(role)
	if roleType<3 then
		local MGHZTime=GetItemAttr(Item,ITEMATTR_VAL_STR)
		local daojishis=(math.mod((120-MGHZTime),12))*5
		local daojishim=math.floor((120-MGHZTime)/12)
		SystemNotice(role,"高贵的玫瑰盒子消失倒记时： "..daojishim.." 分 "..daojishis.." 秒 ")
		SystemNotice(role,"你虽然很帅，但是高贵的玫瑰盒子只有女生才能打开哦，快送给你心爱的她吧。")
		UseItemFailed ( role )
		return
	else
		local hasBag=HasBag(role,4,Item)
		if hasBag==0 then
			UseItemFailed ( role )
			return
		end
		GiveItem(role,0,6381,333,4)	
	end	
end 

----职业训练师回城技能   by peter 2008.9.8-------------------------------------------------------------------------------------------------------------------------------------
function Peter_Script_ZYHC (role, Item )
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "飞行是件很累的事情，请保持100％的hp和sp哦")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr( role, ATTR_JOB) --取职业
	if job == 19  then
		SystemNotice ( role , "您还是新手啊?有了职业才可以使用本技能哦!" )
		UseItemFailed ( role )
		return
	end
	if job == 5 or job == 13 or job == 14  then
			MoveCity(role,"沙岚城杂货商")
	elseif  job == 2 or job == 12   then
		MoveCity(role,"冰狼堡杂货商")
	elseif  job == 1 or job == 9  or job == 8 then
		MoveCity(role,"白银城杂货商")
	else
		UseItemFailed ( role )
		return
	end
		
end
function ItemUse_HuoYingCZBX( role , Item )
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 4 then
		SystemNotice(role ,"打开宝箱背包里至少需要有4个空位")
		UseItemFailed ( role )
		return
	end
	local equipId=5577
	local chaType = GetChaTypeID( role )
	local i=0
	for i=1,4,1 do	
		if chaType==i then
			local j=0
			local rolename = GetChaDefaultName ( role )
			ScrollNotice("恭喜玩家 "..rolename.." ，打开火影酷装宝箱，获得超炫的火影酷装，大家可以去官网玩新海盗王惊艳转盘获得此酷装宝箱。",1)
			for j=1,4,1 do
				local ID=equipId+i*4+j-5
				GiveItem ( role , 0 ,ID , 1 , 4 ) 
				Notice("恭喜玩家 "..rolename.." ，打开火影酷装宝箱，获得超炫的火影酷装，大家可以去官网玩新海盗王惊艳转盘获得此酷装宝箱。")		
			end
		end	
	end	
end 
function ItemUse_ZSDPJboy( role , Item )
	

	local mm=Ismm(role)
	if mm == 1 then 
		SystemNotice(role,"赶快给心仪的男生看看吧，经验会越降越低哦。")
		UseItemFailed ( role )
		return
	end
	local isOpen=ZSDPJGive(role,Item)
	if isOpen==0 then 
		UseItemFailed ( role )
		return
	end
end
function ItemUse_ZSDPJgirl( role , Item )
	
	local mm=Ismm(role)
	if mm == 0 then 
		SystemNotice(role,"赶快给心仪的女生看看吧，经验会越降越低哦。")
		UseItemFailed ( role )
		return
	end
	local isOpen=ZSDPJGive(role,Item)
	if isOpen==0 then 
		UseItemFailed ( role )
		return
	end
end 
function ZSDPJGive(role,Item)
	local isBag=HasBag(role,1,Item)
	if isBag == 0 then 
		return 0
	end
	local is7=GetChaItem ( role , 2 , 6  )
	local is7Id=GetItemID ( is7 )
	local is8=GetChaItem ( role , 2 , 7  )
	local is8Id=GetItemID ( is8 )
	local itemID=GetItemID ( Item )
	local num1 = GetItemAttr(Item,ITEMATTR_VAL_AGI)
	local num2 = GetItemAttr(Item,ITEMATTR_VAL_DEX)
	if itemID==is7Id then
		id =6442
	elseif itemID==is8Id then
		id =6443
	else
		local a=math.random(0,1)
		id = 6442+a
	end
	local r1,r2 =MakeItem ( role , id  , 1 , 4 )		
	local item_PJ = GetChaItem ( role , 2 , r2 )
	SetItemAttr(item_PJ,ITEMATTR_VAL_AGI,num1)
	SetItemAttr(item_PJ,ITEMATTR_VAL_DEX,num2)
	return 1
end 

------------------------------------免费档宝箱
function ItemUse_MFDBox ( role , Item )	
local Item_CanGet = GetChaFreeBagGridNum ( role )	
local name = GetChaDefaultName( role )
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用免费档宝箱失败")
		UseItemFailed ( role )
		return
	end
local tfcx=GetItemAttr(Item,ITEMATTR_URE)
	if tfcx ~= 0 then
		local time1 = math.floor(tfcx/50)
		local time2 = time1 + 1
		SystemNotice( role , "你还需要等待"..time2.."分钟才能打开免费档宝箱")
		UseItemFailed ( role )
		return
	end
	local MFDBOXGL={}
	local MFDBOXVAL={}
	local MFDBOXID={}
	local MFDBOXNum = 16
	MFDBOXGL[1]=	40000	MFDBOXVAL[1]=	1	MFDBOXID[1]=	0679
	MFDBOXGL[2]=	140000	MFDBOXVAL[2]=	1	MFDBOXID[2]=	1036
	MFDBOXGL[3]=	160000	MFDBOXVAL[3]=	1	MFDBOXID[3]=	0227
	MFDBOXGL[4]=	180000	MFDBOXVAL[4]=	1	MFDBOXID[4]=	3457
	MFDBOXGL[5]=	200000	MFDBOXVAL[5]=	1	MFDBOXID[5]=	3877
	MFDBOXGL[6]=	420000	MFDBOXVAL[6]=	1	MFDBOXID[6]=	3105
	MFDBOXGL[7]=	748999	MFDBOXVAL[7]=	1	MFDBOXID[7]=	5934
	MFDBOXGL[8]=	768999	MFDBOXVAL[8]=	1	MFDBOXID[8]=	222
	MFDBOXGL[9]=	838999	MFDBOXVAL[9]=	1	MFDBOXID[9]=	223
	MFDBOXGL[10]=	888999	MFDBOXVAL[10]=	1	MFDBOXID[10]=	224
	MFDBOXGL[11]=	918999	MFDBOXVAL[11]=	1	MFDBOXID[11]=	225
	MFDBOXGL[12]=	968999	MFDBOXVAL[12]=	1	MFDBOXID[12]=	226
	MFDBOXGL[13]=	988999	MFDBOXVAL[13]=	8	MFDBOXID[13]=	0770 --平均分配8件装备
	MFDBOXGL[14]=	998999	MFDBOXVAL[14]=	12	MFDBOXID[14]=	0781
	MFDBOXGL[15]=	999999	MFDBOXVAL[15]=	15	MFDBOXID[15]=	0799
	MFDBOXGL[16]=	1000000	MFDBOXVAL[16]=	7	MFDBOXID[16]=	0785
												MFDBOXID[17]=	0763
												MFDBOXID[18]=	0777
												MFDBOXID[19]=	0803
												MFDBOXID[20]=	0789
												MFDBOXID[21]=	0774 --平均分配12件装备
												MFDBOXID[22]=	0771
												MFDBOXID[23]=	0782
												MFDBOXID[24]=	0800
												MFDBOXID[25]=	0786
												MFDBOXID[26]=	0793
												MFDBOXID[27]=	0767
												MFDBOXID[28]=	0764
												MFDBOXID[29]=	0778
												MFDBOXID[30]=	0804
												MFDBOXID[31]=	0790
												MFDBOXID[32]=	0796
												MFDBOXID[33]=	0775----平均分配15件装备
												MFDBOXID[34]=	0772
												MFDBOXID[35]=	0783
												MFDBOXID[36]=	0801
												MFDBOXID[37]=	0787
												MFDBOXID[38]=	0794
												MFDBOXID[39]=	0768
												MFDBOXID[40]=	0765
												MFDBOXID[41]=	0779
												MFDBOXID[42]=	0805
												MFDBOXID[43]=	0791
												MFDBOXID[44]=	0797
												MFDBOXID[45]=	0807
												MFDBOXID[46]=	0808
												MFDBOXID[47]=	0812
												MFDBOXID[48]=	2826----平均分配7件装备
												MFDBOXID[49]=	2822
												MFDBOXID[50]=	2818
												MFDBOXID[51]=	2831
												MFDBOXID[52]=	2832
												MFDBOXID[53]=	2824
												MFDBOXID[54]=	2835
	local i = 0 
	local j = 0 
	local b =1 
	local a = math.random(1,MFDBOXGL[MFDBOXNum])
	for i = 1 , MFDBOXNum , 1 do 
		if a<= MFDBOXGL[i] then 
			local id = 1848 
			if  MFDBOXVAL[i] == 1 then 
				id  = MFDBOXID[b]
			else 
				j = math.random (1,MFDBOXVAL[i] )
				id  = MFDBOXID[b+j-1]
			end
			local name = GetItemName (id)
			GiveItem ( role , 0 , id , 1 , 22 )	
			SystemNotice ( role , "开启免费档宝箱获得"..name )
			return 
		end
		b = b + MFDBOXVAL[i]
	end
		

	--[[local getrandom = math.random ( 1 , 1000000 )
	if getrandom <= 40000 then							
		SystemNotice ( role , "开启免费档宝箱获得摩豆精灵蛋" )
		GiveItem ( role , 0 , 0679 , 1 , 22 )				------------摩豆精灵蛋
		return
	elseif getrandom > 40000 and getrandom <= 90000  then
		SystemNotice ( role , "开启免费档宝箱获得魔幻女神卡" )
		GiveItem ( role , 0 , 1036 , 1 , 22 ) 				------------魔幻女神卡
		return
	elseif getrandom > 90000 and getrandom <= 140000  then
		SystemNotice ( role , "开启免费档宝箱获得初级精灵饲料" )
		GiveItem ( role , 0 , 0227 , 1 , 22 ) 				------------初级精灵饲料
		return
	elseif getrandom > 140000 and getrandom <= 180000  then	
		SystemNotice ( role , "开启免费档宝箱获得纳卡符石" )
		GiveItem ( role , 0 , 3457 , 1 , 22 ) 				------------纳卡符石
		return
	elseif getrandom > 180000 and getrandom <= 220000  then
		SystemNotice ( role , "开启免费档宝箱获得一级精炼石兑换券" )
		GiveItem ( role , 0 , 3877 , 1 , 22 ) 				------------一级精炼石兑换券
		return
	elseif getrandom > 220000 and getrandom <= 420000  then
		SystemNotice ( role , "开启免费档宝箱获得行走润滑剂" )
		GiveItem ( role , 0 , 3105 , 1 , 22 ) 				------------行走润滑剂
		return
	elseif getrandom > 420000 and getrandom <= 720000  then
		SystemNotice ( role , "开启免费档宝箱获得新手升级果" )
		GiveItem ( role , 0 , 5934 , 1 , 22 ) 				------------新手升级果
		return
	elseif getrandom > 720000 and getrandom <= 770000  then
		SystemNotice ( role , "开启免费档宝箱获得圣雪山龙果" )
		GiveItem ( role , 0 , 0222 , 1 , 22 ) 				------------圣雪山龙果
		return
	elseif getrandom > 770000 and getrandom <= 820000  then
		SystemNotice ( role , "开启免费档宝箱获得冰极爽口梅" )
		GiveItem ( role , 0 , 0223 , 1 , 22 ) 				------------冰极爽口梅
		return
		elseif getrandom > 820000 and getrandom <= 870000 then
		SystemNotice ( role , "开启免费档宝箱获得海风鳕鱼丝" )
		GiveItem ( role , 0 , 0224 , 1 , 22 ) 				------------海风鳕鱼丝
		return
	elseif getrandom > 870000 and getrandom <= 920000  then
		SystemNotice ( role , "开启免费档宝箱获得白银城果脯" )
		GiveItem ( role , 0 , 0225 , 1 , 22 ) 				------------白银城果脯
		return
	elseif getrandom > 920000 and getrandom <= 970000  then
		SystemNotice ( role , "开启免费档宝箱获得新沙岚米饼" )
		GiveItem ( role , 0 , 0226 , 1 , 22 ) 				------------新沙岚米饼
		return
	elseif getrandom > 970000 and getrandom <= 990000  then		------------35BB
		local a = math.random ( 1 , 8 )
		if a == 1  then
			Notice ( name.."开启免费档宝箱获得死灵之殇" )
			GiveItem ( role , 0 , 0770 , 1 , 22 ) 				------------死灵之殇
			return
		elseif a == 2  then
			Notice ( name.."开启免费档宝箱获得亡灵之触" )
			GiveItem ( role , 0 , 0781 , 1 , 22 ) 				------------亡灵之触
			return		
		elseif a == 3  then
			Notice ( name.."开启免费档宝箱获得暗影之牙" )
			GiveItem ( role , 0 , 0799 , 1 , 22 ) 				------------暗影之牙
			return		
		elseif a == 4  then
			Notice ( name.."开启免费档宝箱获得破魔法杖" )
			GiveItem ( role , 0 , 0785 , 1 , 22 ) 				------------破魔法杖
			return		
		elseif a == 5  then
			Notice ( name.."开启免费档宝箱获得幽灵铠甲" )
			GiveItem ( role , 0 , 0763 , 1 , 22 ) 				------------幽灵铠甲
			return		
		elseif a == 6  then
			Notice ( name.."开启免费档宝箱获得亡灵短袍" )
			GiveItem ( role , 0 , 0777 , 1 , 22 ) 				------------亡灵短袍
			return
		elseif a == 7  then
			Notice ( name.."开启免费档宝箱获得海妖披风" )
			GiveItem ( role , 0 , 0803 , 1 , 22 ) 				------------海妖披风
			return		
		elseif a == 8  then
			Notice ( name.."开启免费档宝箱获得巫毒法袍" )
			GiveItem ( role , 0 , 0789 , 1 , 22 ) 				------------巫毒法袍
			return		
		end
	elseif getrandom > 990000 and getrandom <= 998999  then		-----------45BB
		local b = math.random ( 1 , 12 )
		if b == 1  then
			Notice ( name.."开启免费档宝箱获得咒纹刺剑" )
			GiveItem ( role , 0 , 0774 , 1 , 22 ) 				------------咒纹刺剑
			return
		elseif b == 2  then
			Notice ( name.."开启免费档宝箱获得咒纹重剑" )
			GiveItem ( role , 0 , 0771 , 1 , 22 ) 				------------咒纹重剑
			return		
		elseif b == 3  then
			Notice ( name.."开启免费档宝箱获得诅咒之吻" )
			GiveItem ( role , 0 , 0782 , 1 , 22 ) 				------------诅咒之吻
			return		
		elseif b == 4  then
			Notice ( name.."开启免费档宝箱获得诅咒之刺" )
			GiveItem ( role , 0 , 0800 , 1 , 22 ) 				------------诅咒之刺
			return		
		elseif b == 5  then
			Notice ( name.."开启免费档宝箱获得咒术之杖" )
			GiveItem ( role , 0 , 0786 , 1 , 22 ) 				------------咒术之杖
			return		
		elseif b == 6  then
			Notice ( name.."开启免费档宝箱获得咒文法杖" )
			GiveItem ( role , 0 , 0793 , 1 , 22 ) 				------------咒文法杖
			return
		elseif b == 7  then
			Notice ( name.."开启免费档宝箱获得诅咒之灵钢甲" )
			GiveItem ( role , 0 , 0767 , 1 , 22 ) 				------------诅咒之灵钢甲
			return		
		elseif b == 8  then
			Notice ( name.."开启免费档宝箱获得武士之诅咒纹身" )
			GiveItem ( role , 0 , 0764 , 1 , 22 ) 				------------武士之诅咒纹身
			return	
		elseif b == 9  then
			Notice ( name.."开启免费档宝箱获得咒纹紧身衣" )
			GiveItem ( role , 0 , 0778 , 1 , 22 ) 				------------咒纹紧身衣
			return
		elseif b == 10  then
			Notice ( name.."开启免费档宝箱获得咒火斗篷" )
			GiveItem ( role , 0 , 0804 , 1 , 22 ) 				------------咒火斗篷
			return		
		elseif b == 11  then
			Notice ( name.."开启免费档宝箱获得符文外衣" )
			GiveItem ( role , 0 , 0790 , 1 , 22 ) 				------------符文外衣
			return		
		elseif b == 12  then
			Notice ( name.."开启免费档宝箱获得咒文之袍" )
			GiveItem ( role , 0 , 0796 , 1 , 22 ) 				------------咒文之袍
			return		
		end
	elseif getrandom > 998999 and getrandom <= 999999  then		------------55BB
		local c = math.random ( 1 , 15 )			
		if c == 1  then
			Notice ( name.."开启免费档宝箱获得幻灵之舞" )
			GiveItem ( role , 0 , 0775 , 1 , 22 ) 				------------幻灵之舞
			return
		elseif c == 2  then
			Notice ( name.."开启免费档宝箱获得幻灵之咆哮" )
			GiveItem ( role , 0 , 0772 , 1 , 22 ) 				------------幻灵之咆哮
			return		
		elseif c == 3  then
			Notice ( name.."开启免费档宝箱获得幻灵之怒吼" )
			GiveItem ( role , 0 , 0783 , 1 , 22 ) 				------------幻灵之怒吼
			return		
		elseif c == 4  then
			Notice ( name.."开启免费档宝箱获得幻灵之牙" )
			GiveItem ( role , 0 , 0801 , 1 , 22 ) 				------------幻灵之牙
			return		
		elseif c == 5  then
			Notice ( name.."开启免费档宝箱获得幻灵之精神法杖" )
			GiveItem ( role , 0 , 0787 , 1 , 22 ) 				------------幻灵之精神法杖
			return		
		elseif c == 6  then
			Notice ( name.."开启免费档宝箱获得幻化之杖" )
			GiveItem ( role , 0 , 0794 , 1 , 22 ) 				------------幻化之杖
			return
		elseif c == 7  then
			Notice ( name.."开启免费档宝箱获得幻灵战甲" )
			GiveItem ( role , 0 , 0768 , 1 , 22 ) 				------------幻灵战甲
			return		
		elseif c == 8  then
			Notice ( name.."开启免费档宝箱获得幻灵纹身" )
			GiveItem ( role , 0 , 0764 , 1 , 22 ) 				------------幻灵纹身
			return	
		elseif c == 9  then
			Notice ( name.."开启免费档宝箱获得幻灵外套" )
			GiveItem ( role , 0 , 0779 , 1 , 22 ) 				------------幻灵外套
			return
		elseif c == 10  then
			Notice ( name.."开启免费档宝箱获得幻灵披风" )
			GiveItem ( role , 0 , 0805 , 1 , 22 ) 				------------幻灵披风
			return		
		elseif c == 11  then
			Notice ( name.."开启免费档宝箱获得幻法之袍" )
			GiveItem ( role , 0 , 0791 , 1 , 22 ) 				------------幻法之袍
			return		
		elseif c == 12  then
			Notice ( name.."开启免费档宝箱获得幻咒之袍" )
			GiveItem ( role , 0 , 0797 , 1 , 22 ) 				------------幻咒之袍
			return	
		elseif c == 13  then
			Notice ( name.."开启免费档宝箱获得幻灵战甲手套" )
			GiveItem ( role , 0 , 0807 , 1 , 22 ) 				------------幻灵战甲手套
			return
		elseif c == 14  then
			Notice ( name.."开启免费档宝箱获得幻灵战甲靴" )
			GiveItem ( role , 0 , 0808 , 1 , 22 ) 				------------幻灵战甲靴
			return		
		elseif c == 15  then
			Notice ( name.."开启免费档宝箱获得幻法手套" )
			GiveItem ( role , 0 , 0812 , 1 , 22 ) 				------------幻法手套
			return		
		end
	elseif getrandom > 999999 and getrandom <= 1000000  then	-------------75BB
		local d = math.random ( 1 , 7 )
		if d == 1  then
			Notice ( name.."开启免费档宝箱获得修罗之守护" )
			GiveItem ( role , 0 , 2826 , 1 , 22 ) 				------------修罗之守护
			return
		elseif d == 2  then
			Notice ( name.."开启免费档宝箱获得黑暗的足迹" )
			GiveItem ( role , 0 , 2822 , 1 , 22 ) 				------------黑暗的足迹
			return		
		elseif d == 3  then
			Notice ( name.."开启免费档宝箱获得哈迪斯的触摸" )
			GiveItem ( role , 0 , 2818 , 1 , 22 ) 				------------哈迪斯的触摸
			return		
		elseif d == 4  then
			Notice ( name.."开启免费档宝箱获得幽冥印迹" )
			GiveItem ( role , 0 , 2831 , 1 , 22 ) 				------------幽冥印迹
			return		
		elseif d == 5  then
			Notice ( name.."开启免费档宝箱获得冥河之躯体" )
			GiveItem ( role , 0 , 2832 , 1 , 22 ) 				------------冥河之躯体
			return		
		elseif d == 6  then
			Notice ( name.."开启免费档宝箱获得地狱的延伸" )
			GiveItem ( role , 0 , 2824 , 1 , 22 ) 				------------地狱的延伸
			return
		elseif d == 7  then
			Notice ( name.."开启免费档宝箱获得后死者的王冠" )
			GiveItem ( role , 0 , 2835 , 1 , 22 ) 				------------后死者的王冠
			return		
		end
	end]]
end


function ItemUse_LVUP ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用。" )
		UseItemFailed ( role )
		return
	end
	local lv = Lv(role)
	if lv >= 80 then
		SystemNotice(role,"等级超过80级无法使用该道具。")
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then 
		SystemNotice (role , "身上必须扔有4个空位才能够打开。")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 146  , 1  , 4  )
	GiveItem ( role , 0 , 845  , 1 , 16  ) 
	GiveItem ( role , 0 , 847  , 1 , 16  )
	GiveItem ( role , 0 , 846  , 1 , 16  )
	local exp_up = GetExp[80]
	local exp_role = GetChaAttr ( role , ATTR_CLEXP )
	local exp_add = exp_up - exp_role
	local exp_add1 = exp_role + exp_add
	SetChaAttrI ( role , ATTR_CEXP , exp_add1)
end 
function ItemUse_MagicBox(role,item)
	local magicBoxID = {}
	local magicBoxNum = {}
	local magicBoxNotice = {}
	local magicnum =  	13				
	magicBoxID[1]=	5870 	magicBoxNum[1]=	12		magicBoxNotice[1]=	1
	magicBoxID[2]=	5871	magicBoxNum[2]=	24		magicBoxNotice[2]=	1
	magicBoxID[3]=	3240	magicBoxNum[3]=	39		magicBoxNotice[3]=	2
	magicBoxID[4]=	6471 	magicBoxNum[4]=	63		magicBoxNotice[4]=	2
	magicBoxID[5]=	5936	magicBoxNum[5]=	103		magicBoxNotice[5]=	0
	magicBoxID[6]=	5641 	magicBoxNum[6]=	2503	magicBoxNotice[6]=	0
	magicBoxID[7]=	2835 	magicBoxNum[7]=	4903	magicBoxNotice[7]=	0
	magicBoxID[8]=	3020	magicBoxNum[8]=	5863	magicBoxNotice[8]=	0
	magicBoxID[9]=	3019	magicBoxNum[9]=	7903	magicBoxNotice[9]=	0
	magicBoxID[10]=	3018	magicBoxNum[10]=10903	magicBoxNotice[10]=	0
	magicBoxID[11]=	5699 	magicBoxNum[11]=11263	magicBoxNotice[11]=	3
	magicBoxID[12]=	5700 	magicBoxNum[12]=11623	magicBoxNotice[12]=	3
	magicBoxID[13]=	5701 	magicBoxNum[13]=11983	magicBoxNotice[13]=	3
	local freeBag =GetChaFreeBagGridNum  (role)
	if freeBag<1 then 
		SystemNotice(role,"请你确认你背包有空余的物品栏")
		UseItemFailed ( role )
		return
	end
	local i = 0
	local a = math.random (1,magicBoxNum[magicnum])
	for i = 1 ,magicnum , 1 do 
		if a<=magicBoxNum[i] then
			GiveItem(role ,0 ,magicBoxID[i] ,1,4 )
			if magicBoxNotice[i] ~= 0 then
				local Notice= {}
				Notice[1] = "玩家抽到了惊天地泣鬼神的"
				Notice[2] = "玩家抽到了亿年罕见的"
				Notice[3] = "玩家抽到了"
				local num
				local name = GetChaDefaultName(role)
				local itemName=GetItemName(magicBoxID[i])
				ScrollNotice(name..Notice[magicBoxNotice[i]]..itemName,1)
			end
			return
		end
	end
end
	


------------联众活动宝箱-----
function ItemUse_95BBBOX( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local Now_Year = os.date("%y")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local NowYearNum = tonumber(Now_Year)
	local CheckDateNum = NowYearNum * 1000000 + NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum

	if CheckDateNum < 8121417 then
		local Cha_Boat = 0
		Cha_Boat = GetCtrlBoat ( role )
		if Cha_Boat ~= nil then 
			SystemNotice( role , "出海时不可使用" ) 
			UseItemFailed ( role ) 
			return 
		end      
		local job = GetChaAttr(role, ATTR_JOB)
		--local lv = GetChaAttr(role, ATTR_LV) 
	    	local cha_type = GetChaTypeID ( role )
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet < 1 then
			SystemNotice(role ,"要打开联众活动宝箱需要背包里至少有1个空位")
			UseItemFailed ( role )
			return
		end 
		-- if lv < 40 then 
			-- SystemNotice(role ,"当前级别低于40级，道具使用失败！")
			-- UseItemFailed ( role )	
		-- end 
		if job == 8 then
			GiveItem( role , 0 , 6477 , 1 , 95 )
		elseif job == 9 then
			GiveItem( role , 0 , 6473 , 1 , 95 )		
		elseif job == 12 then
			GiveItem( role , 0 , 6475 , 1 , 95 )
		elseif job == 13 then 
			GiveItem( role , 0 , 6479 , 1 , 95 )
		elseif job == 14 then
			GiveItem( role , 0 , 6478 , 1 , 95 )
		elseif job == 16 then
			GiveItem( role , 0 , 6476 , 1 , 95 )
		else 
			SystemNotice(role ,"职业不符，道具需在二转转职后方可使用！")
			UseItemFailed ( role )	
		end
	else
		SystemNotice (role, "活动日期已过，道具无法使用")
		UseItemFailed ( role )
	end
end 	

function ItemUse_guopu ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "出海时不可使用" ) 
		UseItemFailed ( role ) 
		return 
	end      
		local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )		--力量
		local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )		--体质
		local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )		--专注
		local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )		--敏捷
		local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )		--精神
		local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget  ----一个精灵的等级
		if lv_Traget > 3 then
			SystemNotice(role , "只能够喂养3级以下的精灵" ) 
			UseItemFailed ( role )
			return
		end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
				if Check_Exp == 0 then
					SystemNotice(role , "成长度没有达到最大不能喂食白银城果脯(体)" ) 
					UseItemFailed ( role )
				else
				   Lvup_Con ( role , Item_Num , Item_Traget ) --根据具体道具选择不同属性的成长函数 ( 例中为str )
				end 
		end 
end
function ItemUse_XDGLv1(role , item)
	ItemUse_XDG(role , item ,1 )
end
function ItemUse_XDGLv2(role , item)
	ItemUse_XDG(role , item ,2 )
end
function ItemUse_XDG(role , item ,num )
	local lv = GetChaAttr(role ,ATTR_LV)
	if lv< 55+11*(num-1) then
		SystemNotice(role,"你的等级低于"..55+11*(num-1)..",现在不能使用心动果。")
		UseItemFailed ( role )
		return 
	end
	if lv> 65+10*(num-1) then
		SystemNotice(role,"你的等级高于"..65+10*(num-1)..",现在不能使用心动果。")
		UseItemFailed ( role )
		return 
	end
	local cexp = GetChaAttr(role , ATTR_CEXP)
	local nlexp = GetChaAttr(role , ATTR_NLEXP)
	if cexp == nlexp-1 then
		SystemNotice(role,"你马上就可以升至下一级了，请不要浪费。")
		UseItemFailed ( role )
		return 
	end
	local clexp = GetChaAttr(role , ATTR_CLEXP)
	local expadd = math.floor((cexp-clexp)*0.3)
	local exp = math.min(nlexp-1,expadd+cexp)
	SetChaAttr (role ,ATTR_CEXP, exp )
end 


function Sk_Script_WaBo ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用。" )
		UseItemFailed ( role )
		return
	end
	local Lv = Lv ( role ) 
	if Lv < 50 then
		SystemNotice ( role , "等级没有达到50级，无法学习空挖技能。")
		UseItemFailed ( role )
		return
	end
	local form_sklv = GetSkillLv( role , SK_WB )
	if form_sklv ~= 0 then
		SystemNotice ( role , "你已经学习了空挖技能,道具使用失败。") 
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , SK_WB, 1 , 0 , 0 )  
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--海盗补给箱子--by:Locke.coco
function ItemUse_WaBao_HDBJBox ( role , Item )	
local map_name = GetChaMapName ( role )
	if map_name == "starena1" or map_name == "starena2" or map_name == "starena3" then
		SystemNotice ( role , "当前地图不能使用任何道具" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用海盗财宝箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 180 )
	if getrandom <= 10 then							----------45双剑士（蓝琦、菲利尔）手套
		SystemNotice ( role , "获得绿色轻便钢手套" )
		GiveItem ( role , 0 , 0478 , 1 , 14 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------45狙击手（蓝琦、菲利尔）手套
		SystemNotice ( role , "获得绿色山雀手套" )
		GiveItem ( role , 0 , 0491 , 1 , 14 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------45航海士（蓝琦、菲利尔）手套
		SystemNotice ( role , "获得绿色桅杆手套" )
		GiveItem ( role , 0 , 0518 , 1 , 14 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------45航海士（艾米）手套	
		SystemNotice ( role , "获得绿色摇摆鸭手套" )
		GiveItem ( role , 0 , 0532 , 1 , 14 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------45封印师（艾米）手套
		SystemNotice ( role , "获得绿色蹦蹦鼠手套" )
		GiveItem ( role , 0 , 0538 , 1 , 14 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------45封印师（菲利尔）手套
		SystemNotice ( role , "获得绿色远行手套" )
		GiveItem ( role , 0 , 0551 , 1 , 14 ) 
		return
	elseif getrandom > 60 and getrandom <= 70  then		----------45圣职者（菲利尔）手套
		SystemNotice ( role , "获得绿色虔诚手套" )
		GiveItem ( role , 0 , 0554 , 1 , 14 ) 
		return
	elseif getrandom > 70 and getrandom <= 80  then		----------45圣职者（艾米）手套
		SystemNotice ( role , "获得绿色快乐兔手套" )
		GiveItem ( role , 0 , 0564 , 1 , 14 ) 
		return
	elseif getrandom > 80 and getrandom <= 90  then		----------45巨剑士（卡西斯）手套
		SystemNotice ( role , "获得绿色重型钢手套" )
		GiveItem ( role , 0 , 0477 , 1 , 14 ) 
		return
		elseif getrandom > 90 and getrandom <= 100  then	----------45双剑士（蓝琦、菲利尔）靴子
		SystemNotice ( role , "获得绿色轻便钢靴" )
		GiveItem ( role , 0 , 0654 , 1 , 14 ) 
		return
	elseif getrandom > 100 and getrandom <= 110  then	----------45狙击手（蓝琦、艾利尔）靴子
		SystemNotice ( role , "获得绿色山雀靴" )
		GiveItem ( role , 0 , 0667 , 1 , 14 ) 
		return
	elseif getrandom > 110 and getrandom <= 120  then	----------45航海士（蓝琦、菲利尔）靴子	
		SystemNotice ( role , "获得绿色桅杆靴" )
		GiveItem ( role , 0 , 0694 , 1 , 14 ) 
		return
	elseif getrandom > 120 and getrandom <= 130  then	----------45航海士（艾米）靴子
		SystemNotice ( role , "获得绿色摇摆鸭靴" )
		GiveItem ( role , 0 , 0708 , 1 , 14 ) 
		return
	elseif getrandom > 130 and getrandom <= 140  then	----------45封印师（艾米）靴子
		SystemNotice ( role , "获得绿色蹦蹦鼠靴" )
		GiveItem ( role , 0 , 0714 , 1 , 14 ) 
		return
	elseif getrandom > 140 and getrandom <= 150  then	----------45封印师（菲利尔）靴子
		SystemNotice ( role , "获得绿色远行靴" )
		GiveItem ( role , 0 , 0727 , 1 , 14 ) 
		return
	elseif getrandom > 150 and getrandom <= 160  then	----------45圣职者（菲利尔）靴子
		SystemNotice ( role , "获得绿色虔诚靴" )
		GiveItem ( role , 0 , 0730 , 1 , 14 ) 
		return
	elseif getrandom > 160 and getrandom <= 170  then	----------45圣职者（艾米）靴子
		SystemNotice ( role , "获得绿色快乐兔靴" )
		GiveItem ( role , 0 , 0740 , 1 , 14 ) 
		return
	elseif getrandom > 170 and getrandom <= 180  then	----------45巨剑士（卡西斯）靴子
		SystemNotice ( role , "获得绿色重型钢靴" )
		GiveItem ( role , 0 , 0653 , 1 , 14 ) 
		return
	end
end
--海盗军需箱子--by:Locke.coco
function ItemUse_WaBao_HDJXBox ( role , Item )
local map_name = GetChaMapName ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice( role , "身上没有足够的空间，使用海盗财宝箱子失败")
		UseItemFailed ( role )
		return
	end
	local getrandom = math.random ( 1 , 180 )
	if getrandom <= 10 then							----------55双剑士（蓝琦、菲利尔）手套
		SystemNotice ( role , "获得绿色镀银钢手套" )
		GiveItem ( role , 0 , 0479 , 1 , 14 ) 
		return
	elseif getrandom > 10 and getrandom <= 20  then		----------55狙击手（蓝琦、菲利尔）手套
		SystemNotice ( role , "获得绿色斑鸠手套" )
		GiveItem ( role , 0 , 0492 , 1 , 14 ) 
		return
	elseif getrandom > 20 and getrandom <= 30  then		----------55航海士（蓝琦、菲利尔）手套
		SystemNotice ( role , "获得绿色飓风手套" )
		GiveItem ( role , 0 , 0519 , 1 , 14 ) 
		return
	elseif getrandom > 30 and getrandom <= 40  then		----------55航海士（艾米）手套	
		SystemNotice ( role , "获得绿色大海虾手套" )
		GiveItem ( role , 0 , 0533 , 1 , 14 ) 
		return
	elseif getrandom > 40 and getrandom <= 50  then		----------55封印师（艾米）手套
		SystemNotice ( role , "获得绿色高级海獭手套" )
		GiveItem ( role , 0 , 0539 , 1 , 14 ) 
		return
	elseif getrandom > 50 and getrandom <= 60  then		----------55封印师（菲利尔）手套
		SystemNotice ( role , "获得绿色治疗者手套" )
		GiveItem ( role , 0 , 0552 , 1 , 14 ) 
		return
	elseif getrandom > 60 and getrandom <= 70  then		----------55圣职者（菲利尔）手套
		SystemNotice ( role , "获得绿色祈愿手套" )
		GiveItem ( role , 0 , 0555 , 1 , 14 ) 
		return
	elseif getrandom > 70 and getrandom <= 80  then		----------55圣职者（艾米）手套
		SystemNotice ( role , "获得绿色高级兔手套" )
		GiveItem ( role , 0 , 0567 , 1 , 14 ) 
		return
	elseif getrandom > 80 and getrandom <= 90  then		----------45巨剑士（卡西斯）手套
		SystemNotice ( role , "获得绿色重型钢手套" )
		GiveItem ( role , 0 , 0477 , 1 , 14 ) 
		return
		elseif getrandom > 90 and getrandom <= 100  then	----------55双剑士（蓝琦、菲利尔）靴子
		SystemNotice ( role , "获得绿色镀银钢靴" )
		GiveItem ( role , 0 , 0655 , 1 , 14 ) 
		return
	elseif getrandom > 100 and getrandom <= 110  then	----------55狙击手（蓝琦、艾利尔）靴子
		SystemNotice ( role , "获得绿色斑鸠靴" )
		GiveItem ( role , 0 , 0668 , 1 , 14 ) 
		return
	elseif getrandom > 110 and getrandom <= 120  then	----------55航海士（蓝琦、菲利尔）靴子	
		SystemNotice ( role , "获得绿色飓风靴" )
		GiveItem ( role , 0 , 0695 , 1 , 14 ) 
		return
	elseif getrandom > 120 and getrandom <= 130  then	----------55航海士（艾米）靴子
		SystemNotice ( role , "获得绿色大海虾靴" )
		GiveItem ( role , 0 , 0709 , 1 , 14 ) 
		return
	elseif getrandom > 130 and getrandom <= 140  then	----------55封印师（艾米）靴子
		SystemNotice ( role , "获得绿色高级海獭靴" )
		GiveItem ( role , 0 , 0715 , 1 , 14 ) 
		return
	elseif getrandom > 140 and getrandom <= 150  then	----------55封印师（菲利尔）靴子
		SystemNotice ( role , "获得绿色治疗者靴" )
		GiveItem ( role , 0 , 0728 , 1 , 14 ) 
		return
	elseif getrandom > 150 and getrandom <= 160  then	----------55圣职者（菲利尔）靴子
		SystemNotice ( role , "获得绿色祈愿靴" )
		GiveItem ( role , 0 , 0731 , 1 , 14 ) 
		return
	elseif getrandom > 160 and getrandom <= 170  then	----------55圣职者（艾米）靴子
		SystemNotice ( role , "获得绿色高级兔靴" )
		GiveItem ( role , 0 , 0743 , 1 , 14 ) 
		return
	elseif getrandom > 170 and getrandom <= 180  then	----------45巨剑士（卡西斯）靴子
		SystemNotice ( role , "获得绿色重型钢靴" )
		GiveItem ( role , 0 , 0653 , 1 , 14 ) 
		return
	end
end


function Sk_Script_WaBo ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用。" )
		UseItemFailed ( role )
		return
	end
	local Lv = Lv ( role ) 
	if Lv < 50 then
		SystemNotice ( role , "等级没有达到50级，无法学习空挖技能。")
		UseItemFailed ( role )
		return
	end
	local form_sklv = GetSkillLv( role , SK_WB )
	if form_sklv ~= 0 then
		SystemNotice ( role , "你已经学习了空挖技能,道具使用失败。") 
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , SK_WB, 1 , 0 , 0 )  
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 


function ItemUse_65JZDH ( role , Item )	            ---65级戒指兑换券

	local item_type = BaoXiang_65JZDH
	local item_type_rad = BaoXiang_65JZDH_Rad 
	local item_type_count = BaoXiang_65JZDH_Count 
	local maxitem = BaoXiang_65JZDH_Mxcount						-- 终结编号
	local item_quality = 4
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，开启失败")
		UseItemFailed ( role )
		return
	end
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

		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 6618 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end

function ItemUse_75JZDH ( role , Item )	            ---75级戒指兑换券

	local item_type = BaoXiang_75JZDH
	local item_type_rad = BaoXiang_75JZDH_Rad 
	local item_type_count = BaoXiang_75JZDH_Count 
	local maxitem = BaoXiang_75JZDH_Mxcount						-- 终结编号
	local item_quality = 4
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"身上没有足够的空间，开启失败")
		UseItemFailed ( role )
		return
	end
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

		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 6638 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end




-------------------------------------------------------6级黑龙心匣子
function ItemUse_6JHLXBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 866
	local stone1_lv = 6
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv6StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------7级黑龙心匣子
function ItemUse_7JHLXBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 866
	local stone1_lv = 7
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv7StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------8级黑龙心匣子
function ItemUse_8JHLXBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 866
	local stone1_lv = 8
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv8StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end

-------------------------------------------------------9级黑龙心匣子
function ItemUse_9JHLXBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 866
	local stone1_lv = 9
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv9StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end

-------------------------------------------------------6级黑龙瞳匣子
function ItemUse_6JHLTBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 864
	local stone1_lv = 6
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv6StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------7级黑龙瞳匣子
function ItemUse_7JHLTBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 864
	local stone1_lv = 7
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv7StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------8级黑龙瞳匣子
function ItemUse_8JHLTBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 864
	local stone1_lv = 8
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv8StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------9级黑龙瞳匣子
function ItemUse_9JHLTBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 864
	local stone1_lv = 9
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv9StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------6级黑龙魂匣子
function ItemUse_6JHLHBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 865
	local stone1_lv = 6
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv6StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------7级黑龙魂匣子
function ItemUse_7JHLHBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 865
	local stone1_lv = 7
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv7StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------8级黑龙魂匣子
function ItemUse_8JHLHBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 865
	local stone1_lv = 8
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv8StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------9级黑龙魂匣子
function ItemUse_9JHLHBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 865
	local stone1_lv = 9
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv9StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end





-------------------------------------------------------6级死神辉耀匣子
function ItemUse_6JSSHYBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5845
	local stone1_lv = 6
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv6StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------7级死神辉耀匣子
function ItemUse_7JSSHYBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5845
	local stone1_lv = 7
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv7StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------8级死神辉耀匣子
function ItemUse_8JSSHYBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5845
	local stone1_lv = 8
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv8StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------9级死神辉耀匣子
function ItemUse_9JSSHYBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5845
	local stone1_lv = 9
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv9StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------6级死神不死匣子
function ItemUse_6JSSBSBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5846
	local stone1_lv = 6
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv6StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------7级死神不死匣子
function ItemUse_7JSSBSBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5846
	local stone1_lv = 7
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv7StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------8级死神不死匣子
function ItemUse_8JSSBSBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5846
	local stone1_lv = 8
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv8StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------9级死神不死匣子
function ItemUse_9JSSBSBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5846
	local stone1_lv = 9
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv9StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------6级死神光芒匣子
function ItemUse_6JSSGMBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5847
	local stone1_lv = 6
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv6StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------7级死神光芒匣子
function ItemUse_7JSSGMBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5847
	local stone1_lv = 7
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv7StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------8级死神光芒匣子
function ItemUse_8JSSGMBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5847
	local stone1_lv = 8
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv8StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------9级死神光芒匣子
function ItemUse_9JSSGMBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5847
	local stone1_lv = 9
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv9StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end




-------------------------------------------------------6级死神凝聚匣子
function ItemUse_6JSSNJBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5848
	local stone1_lv = 6
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv6StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------7级死神凝聚匣子
function ItemUse_7JSSNJBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5848
	local stone1_lv = 7
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv7StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------8级死神凝聚匣子
function ItemUse_8JSSNJBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5848
	local stone1_lv = 8
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv8StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------9级死神凝聚匣子
function ItemUse_9JSSNJBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5848
	local stone1_lv = 9
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv9StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------6级死神旋舞匣子
function ItemUse_6JSSXWBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5849
	local stone1_lv = 6
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv6StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------7级死神旋舞匣子
function ItemUse_7JSSXWBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5849
	local stone1_lv = 7
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv7StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------8级死神旋舞匣子
function ItemUse_8JSSXWBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5849
	local stone1_lv = 8
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv8StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------9级死神旋舞匣子
function ItemUse_9JSSXWBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5849
	local stone1_lv = 9
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv9StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------6级死神不死匣子
function ItemUse_6JSSBSBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5846
	local stone1_lv = 6
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv6StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-------------------------------------------------------7级死神不死匣子
function ItemUse_7JSSBSBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5846
	local stone1_lv = 7
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv7StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------8级死神不死匣子
function ItemUse_8JSSBSBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 5846
	local stone1_lv = 8
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv8StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end



-------------------------------------------------------5级精炼石匣子
function ItemUse_5JJLSBOX ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = 885
	local stone1_lv = 5
	local r1,r2 =MakeItem ( role , stone1_id  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID1 = GetItemID ( Item_newJL1 )		
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
	local cha_name = GetChaDefaultName ( role )
	local now_yes = os.date("%y")		-------------年
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	now_yes = tonumber(now_yes)			-------------年     
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分
	LG( "Lv5StoneBox" ,cha_name, now_yes, now_month, now_day, now_hour, now_miniute , stone1_id )
end


-----------------------------2009年新年道具------------------------------------------BY L.LI

function ItemUse_JBFD( role , Item )	----------金币福袋
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"打开金幣福袋最少需要1个空位")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 6588  , 1 , 16 ) 	
end

function ItemUse_PTSJ ( role , Item )-----普通水饺
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 12524  then
		SystemNotice ( role , "没过除夕就想吃饺子？还是等到1月25日晚上24点后再使用吧" )
		UseItemFailed ( role )
		return
	end
  	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	hp = hp + 20 

	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)

end


function ItemUse_XRSJ ( role , Item )-----鲜肉水饺
		local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 12524  then
		SystemNotice ( role , "没过除夕就想吃饺子？还是等到1月25日晚上24点后再使用吧" )
		UseItemFailed ( role )
		return
	end
	local sp = GetChaAttr(role, ATTR_SP) 
	local mxsp = GetChaAttr(role,ATTR_MXSP)
  	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	hp = hp + 0.1*mxhp
	sp = sp + 0.1*mxsp
	if sp > mxsp then 
		sp = mxsp 
	end 
	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP)
end

function ItemUse_HXSJ ( role , Item )-----海鲜水饺
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 12524  then
		SystemNotice ( role , "没过除夕就想吃饺子？还是等到1月25日晚上24点后再使用吧" )
		UseItemFailed ( role )
		return
	end
	local sp = GetChaAttr(role, ATTR_SP) 
	local mxsp = GetChaAttr(role,ATTR_MXSP)
  	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	hp = hp + 0.15*mxhp
	sp = sp + 0.15*mxsp
	if sp > mxsp then 
		sp = mxsp 
	end 
	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP)
end

function ItemUse_SJSJ ( role , Item )-----什锦水饺
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 12524  then
		SystemNotice ( role , "没过除夕就想吃饺子？还是等到1月25日晚上24点后再使用吧" )
		UseItemFailed ( role )
		return
	end
	local sp = GetChaAttr(role, ATTR_SP) 
	local mxsp = GetChaAttr(role,ATTR_MXSP)
  	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	hp = hp + 0.25*mxhp
	sp = sp + 0.25*mxsp
	if sp > mxsp then 
		sp = mxsp 
	end 
	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP)
end

function ItemUse_Jnsy ( role , Item )---加纳盛宴
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local attr_ap = Attr_ap( role )
		local ap_extre = 1
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
		local cha_name = GetChaDefaultName ( role ) 
		ScrollNotice( "恭喜"..cha_name.."完成“加纳美食王”任务获得额外永久属性点1点",1 )
	else
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
end


function ItemUse_Zhenheilong2( role , Item )	----------真黑龙神盒
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	local cha_type = GetChaTypeID ( role )
	if cha_type == 1 or cha_type == 2 or cha_type == 3 then
		if Item_CanGet < 3 then
			SystemNotice(role ,"打开真黑龙神盒最少需要3个空位")
			UseItemFailed ( role )
			return
		end
	GiveItem ( role , 0 , 2367  , 1 , 20 ) 
	GiveItem ( role , 0 , 2368  , 1 , 20 ) 
	GiveItem ( role , 0 , 2369  , 1 , 20 )
	elseif cha_type == 4 then 
		if Item_CanGet < 4 then
			SystemNotice(role ,"打开真黑龙神盒最少需要4个空位")
			UseItemFailed ( role )
			return
		end
		GiveItem ( role , 0 , 2367  , 1 , 20 ) 
		GiveItem ( role , 0 , 2368  , 1 , 20 ) 
		GiveItem ( role , 0 , 2369  , 1 , 20 )
		GiveItem ( role , 0 , 2370  , 1 , 20 )		
	end
end 


function ItemXianHe4 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stone1_lv = math.random(1,4)
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end


function ItemShenHe8 ( role , ItemID )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "出海时不可使用" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"要打开宝箱需要背包里至少有1个空位")
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stoneGL = {}
	stoneGL[5 ] = 85
	stoneGL[6 ] = 10
	stoneGL[7 ] = 4
	stoneGL[8 ] = 1
	local stone1_lv =5 
	local ret = math.random(1,100)
	while ret>stoneGL[stone1_lv ] and stone1_lv<=8 and stone1_lv>=5 do
		ret = ret - stoneGL[stone1_lv ]
		stone1_lv = stone1_lv+1
	end
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )			
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end


function ItemUse_XianHe1Box (  role , Item )		------风灵仙盒
	ItemXianHe4 ( role , 860 )		
end 


function ItemUse_XianHe2Box (  role , Item )		------鹰眼石仙盒
	ItemXianHe4 ( role , 861 )		
end 

function ItemUse_XianHe3Box (  role , Item )		-----岩玉仙盒
	ItemXianHe4 ( role , 862 )		
end 


function ItemUse_XianHe4Box (  role , Item )		------炎玉仙盒
	ItemXianHe4 ( role , 863 )		
end 


function ItemUse_XianHe5Box (  role , Item )		------黑龙之瞳仙盒
	ItemXianHe4 ( role , 864 )		
end 


function ItemUse_XianHe6Box (  role , Item )		------黑龙之瞳仙盒
	ItemXianHe4 ( role , 865 )		
end 


function ItemUse_XianHe7Box (  role , Item )		------黑龙之心仙盒
	ItemXianHe4 ( role , 866 )		
end 


function ItemUse_XianHe8Box (  role , Item )		------加纳之神仙盒
	ItemXianHe4 ( role , 1012)		
end 


function ItemUse_XianHe9Box (  role , Item )		------精炼石仙盒
	ItemXianHe4 ( role , 885)		
end 


function ItemUse_XianHe10Box (  role , Item )		------死神辉耀仙盒
	ItemXianHe4 ( role , 5845)		
end 


function ItemUse_XianHe11Box (  role , Item )		------死神不死仙盒
	ItemXianHe4 ( role , 5846)		
end 


function ItemUse_XianHe12Box (  role , Item )		------死神光芒仙盒
	ItemXianHe4 ( role , 5847)		
end 


function ItemUse_XianHe13Box (  role , Item )		------死神凝聚仙盒
	ItemXianHe4 ( role , 5848)		
end 


function ItemUse_XianHe14Box (  role , Item )		------死神旋舞仙盒
	ItemXianHe4 ( role , 5849)		
end 

function ItemUse_XianHe15Box (  role , Item )		------黄玉仙盒
	ItemXianHe4 ( role , 5750)		
end 


function ItemUse_XianHe16Box (  role , Item )		------赤玉仙盒
	ItemXianHe4 ( role , 5751)		
end 

function ItemUse_XianHe17Box (  role , Item )		------青玉仙盒
	ItemXianHe4 ( role , 5752)		
end 


function ItemUse_XianHe18Box (  role , Item )		------夏天灵光仙盒
	ItemXianHe4 ( role , 5771)		
end

function ItemUse_XianHe19Box (  role , Item )		------洛克必中仙盒
	ItemXianHe4 ( role , 5772)		
end  


function ItemUse_XianHe20Box (  role , Item )		------冰冰躲闪仙盒
	ItemXianHe4 ( role , 5773)		
end  


function ItemUse_XianHe21Box (  role , Item )		------丰烽抵御仙盒
	ItemXianHe4 ( role , 5774)		
end 


function ItemUse_XianHe22Box (  role , Item )		------夏克强化仙盒
	ItemXianHe4 ( role , 5775)		
end 


function ItemUse_ShenHe1Box (  role , Item )		------风灵仙盒
	ItemShenHe8 ( role , 860 )		
end 


function ItemUse_ShenHe2Box (  role , Item )		------鹰眼石仙盒
	ItemShenHe8 ( role , 861 )		
end 

function ItemUse_ShenHe3Box (  role , Item )		-----岩玉仙盒
	ItemShenHe8 ( role , 862 )		
end 


function ItemUse_ShenHe4Box (  role , Item )		------炎玉仙盒
	ItemShenHe8 ( role , 863 )		
end 


function ItemUse_ShenHe5Box (  role , Item )		------黑龙之瞳仙盒
	ItemShenHe8 ( role , 864 )		
end 


function ItemUse_ShenHe6Box (  role , Item )		------黑龙之瞳仙盒
	ItemShenHe8 ( role , 865 )		
end 


function ItemUse_ShenHe7Box (  role , Item )		------黑龙之心仙盒
	ItemShenHe8 ( role , 866 )		
end 


function ItemUse_ShenHe8Box (  role , Item )		------加纳之神仙盒
	ItemShenHe8 ( role , 1012)		
end 


function ItemUse_ShenHe9Box (  role , Item )		------精炼石仙盒
	ItemShenHe8 ( role , 885)		
end 


function ItemUse_ShenHe10Box (  role , Item )		------死神辉耀仙盒
	ItemShenHe8 ( role , 5845)		
end 


function ItemUse_ShenHe11Box (  role , Item )		------死神不死仙盒
	ItemShenHe8 ( role , 5846)		
end 


function ItemUse_ShenHe12Box (  role , Item )		------死神光芒仙盒
	ItemShenHe8 ( role , 5847)		
end 


function ItemUse_ShenHe13Box (  role , Item )		------死神凝聚仙盒
	ItemShenHe8 ( role , 5848)		
end 


function ItemUse_ShenHe14Box (  role , Item )		------死神旋舞仙盒
	ItemShenHe8 ( role , 5849)		
end 

function ItemUse_ShenHe15Box (  role , Item )		------黄玉仙盒
	ItemShenHe8 ( role , 5750)		
end 


function ItemUse_ShenHe16Box (  role , Item )		------赤玉仙盒
	ItemShenHe8 ( role , 5751)		
end 

function ItemUse_ShenHe17Box (  role , Item )		------青玉仙盒
	ItemShenHe8 ( role , 5752)		
end 


function ItemUse_ShenHe18Box (  role , Item )		------夏天灵光仙盒
	ItemShenHe8 ( role , 5771)		
end

function ItemUse_ShenHe19Box (  role , Item )		------洛克必中仙盒
	ItemShenHe8 ( role , 5772)		
end  


function ItemUse_ShenHe20Box (  role , Item )		------冰冰躲闪仙盒
	ItemShenHe8 ( role , 5773)		
end  


function ItemUse_ShenHe21Box (  role , Item )		------丰烽抵御仙盒
	ItemShenHe8 ( role , 5774)		
end 


function ItemUse_ShenHe22Box (  role , Item )		------夏克强化仙盒
	ItemShenHe8 ( role , 5775)		
end


function ItemUse_LBChest( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"You need at least 4 empty slots to open Chest of Darkness")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4976  , 30 , 4 )
	GiveItem ( role , 0 , 4938  , 30 , 4 )
	GiveItem ( role , 0 , 4957  , 30 , 4 )
	GiveItem ( role , 0 , 4974  , 10 , 4 )
end

function ItemUse_10CZHe( role , Item ) 							
 	local Money_add = 10000000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=1999000000 then
		SystemNotice (role, "Your account is saturated. Unable to use item")
		UseItemFailed ( role )
		return	
	end
	AddMoney ( role , 0 , Money_add )
end 

function ItemUse_100CZHe( role , Item ) 							
 	local Money_add = 100000000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=1990000000 then
		SystemNotice (role, "Your account is saturated. Unable to use item")
		UseItemFailed ( role )
		return	
	end
	AddMoney ( role , 0 , Money_add )
end 



function ItemUse_250CZHe( role , Item ) 							
 	local Money_add = 250000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=1999750000 then
		SystemNotice (role, "Your account is saturated. Unable to use item")
		UseItemFailed ( role )
		return	
	end
	AddMoney ( role , 0 , Money_add )
end 



function ItemUse_AZRGChest( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open Azrael's Gem Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 5845  , 1 , 4 )
	GiveItem ( role , 0 , 5846  , 1 , 4 )
	GiveItem ( role , 0 , 5847  , 1 , 4 )
	GiveItem ( role , 0 , 5848  , 1 , 4 )
	GiveItem ( role , 0 , 5849  , 1 , 4 )
end



function Winter_Ticket1 (role, Item )
	local i = CheckBagItem(role,6205)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,6205,1)
			if j == 1 then
				MoveCity(role,"Teleport5")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end









function Jz_Script_Zephyr(role, Item )
	local i = CheckBagItem(role,3698)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3698,1)
			if j == 1 then
				MoveCity(role,"Teleport6")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



function Jz_Script_Glacier(role, Item )
	local i = CheckBagItem(role,3699)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3699,1)
			if j == 1 then
				MoveCity(role,"Teleport7")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



function Jz_Script_Outlaw(role, Item )
	local i = CheckBagItem(role,3700)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3700,1)
			if j == 1 then
				MoveCity(role,"Teleport8")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



function Jz_Script_Chill(role, Item )
	local i = CheckBagItem(role,3701)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3701,1)
			if j == 1 then
				MoveCity(role,"Teleport9")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



function Jz_Script_Canary(role, Item )
	local i = CheckBagItem(role,3702)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3702,1)
			if j == 1 then
				MoveCity(role,"Teleport10")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



function Jz_Script_Cupid(role, Item )
	local i = CheckBagItem(role,3703)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3703,1)
			if j == 1 then
				MoveCity(role,"Teleport11")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



function Jz_Script_Fortune(role, Item )
	local i = CheckBagItem(role,3704)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3704,1)
			if j == 1 then
				MoveCity(role,"Teleport12")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end




function Jz_Script_Heaven(role, Item )
	local i = CheckBagItem(role,3705)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3705,1)
			if j == 1 then
				MoveCity(role,"Teleport13")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



function ItemUse_buffticket( role , Item )
local Cha_Boat = GetCtrlBoat(role)
if Cha_Boat ~= nil then
SystemNotice(role , "Not usable on the sea." )
UseItemFailed (role)
return
end
local buff1 = GetChaStateLv(role,STATE_SHPF)
local buff2 = GetChaStateLv(role,STATE_XLZH)
local buff3 = GetChaStateLv(role,STATE_TSHD)
local buff4 = GetChaStateLv(role,STATE_FZLZ)
local buff5 = GetChaStateLv(role,STATE_MLCH)
if buff1 >= 1 or buff2 >= 1 or buff3 >= 1 or buff4 >= 1 or buff5 >= 1 then
SystemNotice(role,"You can use the note only after duration of buffs end.")
UseItemFailed(role)
return
end
local del_item = DelBagItem( role , 3710 , 1 )
if del_item == 1 then
AddState ( role , role , STATE_SHPF  , 10 , 600 )
AddState ( role , role , STATE_XLZH  , 10 , 600 )
AddState ( role , role , STATE_TSHD  , 10, 600 )
AddState ( role , role , STATE_FZLZ  , 10 , 600 )
AddState ( role , role , STATE_MLCH  , 10 , 600 )
end
 
end



function ItemUse_bank ( role )
OpenBank( role, role )
end

function Jz_Script_Church(role, Item )
	local i = CheckBagItem(role,3726)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3726,1)
			if j == 1 then
				MoveCity(role,"Church")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

function Winter_lake1 (role, Item )
	local i = CheckBagItem(role,3735)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3735,1)
			if j == 1 then
				MoveCity(role,"Teleport14")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

function Winter_kara1 (role, Item )
	local i = CheckBagItem(role,3736)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3736,1)
			if j == 1 then
				MoveCity(role,"Teleport15")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

function Winter_ville1 (role, Item )
	local i = CheckBagItem(role,3737)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3737,1)
			if j == 1 then
				MoveCity(role,"Teleport16")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

function Winter_icy1 (role, Item )
	local i = CheckBagItem(role,3738)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3738,1)
			if j == 1 then
				MoveCity(role,"Teleport17")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end


function ItemUse_95cruzchest( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3497  , 1 , 4 )
	GiveItem ( role , 0 , 3498  , 1 , 4 )
	GiveItem ( role , 0 , 3499  , 1 , 4 )
	GiveItem ( role , 0 , 3500  , 1 , 4 )
end


function ItemUse_95champchest( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3501  , 1 , 4 )
	GiveItem ( role , 0 , 3502  , 1 , 4 )
	GiveItem ( role , 0 , 3503  , 1 , 4 )
	GiveItem ( role , 0 , 3504  , 1 , 4 )
end

function ItemUse_95sharpchest( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3493  , 1 , 4 )
	GiveItem ( role , 0 , 3494  , 1 , 4 )
	GiveItem ( role , 0 , 3495  , 1 , 4 )
	GiveItem ( role , 0 , 3496  , 1 , 4 )
end

function ItemUse_95voychest( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3505  , 1 , 4 )
	GiveItem ( role , 0 , 3506  , 1 , 4 )
	GiveItem ( role , 0 , 3507  , 1 , 4 )
	GiveItem ( role , 0 , 3508  , 1 , 4 )
end


function ItemUse_95clerichest( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3509  , 1 , 4 )
	GiveItem ( role , 0 , 3510  , 1 , 4 )
	GiveItem ( role , 0 , 3511  , 1 , 4 )
	GiveItem ( role , 0 , 3512  , 1 , 4 )
end

function ItemUse_95sealchest( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3513  , 1 , 4 )
	GiveItem ( role , 0 , 3514  , 1 , 4 )
	GiveItem ( role , 0 , 3515  , 1 , 4 )
	GiveItem ( role , 0 , 3516  , 1 , 4 )
end

function ItemUse_corpkylinchest( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2549  , 1 , 4 )
	GiveItem ( role , 0 , 2550  , 1 , 4 )
	GiveItem ( role , 0 , 2551  , 1 , 4 )
	GiveItem ( role , 0 , 2552  , 1 , 4 )
end


function ItemUse_GGChest( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open Great Gem's Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3721  , 1 , 4 )
	GiveItem ( role , 0 , 3722  , 1 , 4 )
	GiveItem ( role , 0 , 3723  , 1 , 4 )
	GiveItem ( role , 0 , 3724  , 1 , 4 )
	GiveItem ( role , 0 , 3725  , 1 , 4 )
end


function ItemUse_angjr( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3754  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 5 , 4 )

end


function ItemUse_mrjr( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 681  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 4 , 4 )

end


function ItemUse_frli( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3756  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_frpr( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3757  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_frca( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3758  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_frba( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3759  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_chest1( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 864  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_chest2( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 865  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_chest3( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 866  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_chest4( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 5845  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 4 , 4 )

end


function ItemUse_chest5( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 5846  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 4 , 4 )

end


function ItemUse_chest6( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 5848  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 4 , 4 )

end


function ItemUse_chest7( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 5849  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 4 , 4 )

end


function ItemUse_chest8( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 5847  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 4 , 4 )

end


function ItemUse_chest9( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 863  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 2 , 4 )

end


function ItemUse_chest10( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 862  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 2 , 4 )

end


function ItemUse_chest11( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 861  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 2 , 4 )

end


function ItemUse_chest12( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 860  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 2 , 4 )

end


function ItemUse_chest13( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1012  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 2 , 4 )

end


function ItemUse_chest14( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3721  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_chest15( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3724  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_chest16( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3723  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_chest17( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3725  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_chest18( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3722  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 3 , 4 )

end


function ItemUse_chest19( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3693  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 2 , 4 )

end


function ItemUse_chest20( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3694  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 2 , 4 )

end


function ItemUse_chest21( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 885  , 1 , 105 )
	GiveItem ( role , 0 , 854  , 2 , 4 )

end


function forsa_ken1(role, Item )
	local i = CheckBagItem(role,3763)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3763,1)
			if j == 1 then
				MoveCity(role,"Teleport1")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end


function dark_swamp1(role, Item )
	
	local i = CheckBagItem(role,3764)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3764,1)
			if j == 1 then
				MoveCity(role,"Teleport2")
				return
				end
			end
	else
		UseItemFailed ( role )
	end
	
end


function ItemUse_sprthun( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3760  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 8 , 4 )

end


function ItemUse_sprligh( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3761  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 8 , 4 )

end


function ItemUse_sprdark( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 2 empty slots to open this Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3762  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 8 , 4 )

end

function ItemUse_85Unseal( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet > 5 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3457  , 8 , 4 )
	GiveItem ( role , 0 , 3733  , 3 , 4 )
	GiveItem ( role , 0 , 3734  , 60 , 4 )
	GiveItem ( role , 0 , 854  , 40 , 4 )
	GiveItem ( role , 0 , 3691  , 3 , 4 )

end



function ItemUse_95Unseal( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3457  , 10 , 4 )
	GiveItem ( role , 0 , 3692  , 1 , 4 )
	GiveItem ( role , 0 , 3734  , 40 , 4 )
	GiveItem ( role , 0 , 854  , 50 , 4 )
end




function ItemUse_75Unseal( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3457  , 4 , 4 )
	GiveItem ( role , 0 , 3691  , 1 , 4 )
	GiveItem ( role , 0 , 3734  , 25 , 4 )
	GiveItem ( role , 0 , 854  , 10 , 4 )
end


function ItemUse_specialapp( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet > 18 then
		SystemNotice(role ,"You need at least 19 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3666  , 4 , 4 )
	GiveItem ( role , 0 , 855  , 1000 , 4 )
	GiveItem ( role , 0 , 2588  , 200 , 4 )
	GiveItem ( role , 0 , 3457  , 50 , 4 )
	GiveItem ( role , 0 , 2589 , 5 , 4 )
	GiveItem ( role , 0 , 3734 , 100 , 4 )
end


function ItemUse_deathapp( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 5780  , 1 , 4 )
	GiveItem ( role , 0 , 5781  , 1 , 4 )
	GiveItem ( role , 0 , 5782  , 1 , 4 )
	GiveItem ( role , 0 , 5783  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 6 , 4 )
end


function ItemUse_blackapp( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 5780  , 1 , 4 )
	GiveItem ( role , 0 , 5784  , 1 , 4 )
	GiveItem ( role , 0 , 5785  , 1 , 4 )
	GiveItem ( role , 0 , 5786  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 6 , 4 )
end


function ItemUse_klwep( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3753  , 1 , 4 )
	GiveItem ( role , 0 , 3692  , 1 , 4 )
	GiveItem ( role , 0 , 3457  , 13 , 4 )
	GiveItem ( role , 0 , 3734  , 75 , 4 )
	GiveItem ( role , 0 , 854  , 60 , 4 )
end


function ItemUse_desetc( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 6 then
		SystemNotice(role ,"You need at least 5 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 3691  , 2 , 4 )
	GiveItem ( role , 0 , 3734  , 40 , 4 )
	GiveItem ( role , 0 , 3457  , 6 , 4 )
	GiveItem ( role , 0 , 854  , 25 , 4 )
end


function ItemUse_darkylin( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"You need at least 4 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2240  , 1 , 4 )
	GiveItem ( role , 0 , 2241  , 1 , 4 )
	GiveItem ( role , 0 , 2242  , 1 , 4 )
	GiveItem ( role , 0 , 2243  , 1 , 4 )
end

function ItemUse_ALBFLI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 2000 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 9
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv > statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 240
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 


function ItemUse_4xexp( role , Item )


	local statelv = 4
	
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Better or same fruit in effect. Please try again later." )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"Feel the effect of Hi-Amplifier of Strive" )
end


function ItemUse_RNC( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 2 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2245  , 1 , 4 )
	GiveItem ( role , 0 , 854  , 20 , 4 )
end

function ItemUse_AFC( role , Item )		----------暗黑盒子
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 2 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 6718  , 99 , 4 )
	GiveItem ( role , 0 , 854  , 8 , 4 )
end

function ItemUse_65uns( role , Item )		----------死神藏尸处
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Cannot use while sailing" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 empty slots to open this chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 845  , 1 , 4 )
	GiveItem ( role , 0 , 846  , 1 , 4 )
	GiveItem ( role , 0 , 847  , 1 , 4 )
end


function ItemUse_Great_Strup ( role , Item , Item_Traget )
local ret = CheckJingLingLv2( role , Item_Traget )
if ret == 0 then
SystemNotice ( role , "Fairy Lv lower than 50. Unable to use Improved Strenght Fruit")
UseItemFailed ( role )
return
end
local Cha_Boat = 0
Cha_Boat = GetCtrlBoat ( role )
if Cha_Boat ~= nil then
SystemNotice( role , "Cannot use while sailing" )
UseItemFailed ( role )
return
end
local Item_type = GetItemType ( Item )
local Item_Traget_Type = GetItemType ( Item_Traget )
local Item_Num = GetItemID ( Item )
local Check_Exp = 0
local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
local Item_Target_ID = GetItemID ( Item_Traget )
local Pet_Slot = GetChaItem ( role , 2 , 1  )
local Pet_ID = GetItemID ( Pet_Slot )
 
if Item_Target_ID ~= Pet_ID then
SystemNotice(role , "Pet must be in the Pet Slot" )
UseItemFailed ( role )
return
end
 
local Item_bg = GetChaItem ( role , 2 , 1  )
if Item_type == 58 and Item_Traget_Type == 59 then
Check_Exp = CheckElf_EXP ( role , Item_Traget )
if Check_Exp == 0 then
SystemNotice(role , "Growth rate is not full. Unable to feed pet with Improved Strenght Fruit" )
UseItemFailed ( role )
else
Lvup_Str_4 ( role , Item_Num , Item_Traget )
end
end
end
 
function ItemUse_Great_Agiup ( role , Item , Item_Traget )
local ret = CheckJingLingLv2( role , Item_Traget )
if ret == 0 then
SystemNotice ( role , "Fairy Lv lower than 50. Unable to use Improved Agility Fruit")
UseItemFailed ( role )
return
end
local Cha_Boat = 0
Cha_Boat = GetCtrlBoat ( role )
if Cha_Boat ~= nil then
SystemNotice( role , "Cannot use while sailing" )
UseItemFailed ( role )
return
end
local Item_type = GetItemType ( Item )
local Item_Traget_Type = GetItemType ( Item_Traget )
local Item_Num = GetItemID ( Item )
local Check_Exp = 0
local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
local Item_Target_ID = GetItemID ( Item_Traget )
local Pet_Slot = GetChaItem ( role , 2 , 1  )
local Pet_ID = GetItemID ( Pet_Slot )
 
if Item_Target_ID ~= Pet_ID then
SystemNotice(role , "Pet must be in the Pet Slot" )
UseItemFailed ( role )
return
end
 
local Item_bg = GetChaItem ( role , 2 , 1  )
if Item_type == 58 and Item_Traget_Type == 59 then
Check_Exp = CheckElf_EXP ( role , Item_Traget )
if Check_Exp == 0 then
SystemNotice(role , "Growth rate is not full. Unable to feed pet with Improved Agility Fruit" )
UseItemFailed ( role )
else
Lvup_Agi_4 ( role , Item_Num , Item_Traget )
end
end
end
 
 
function ItemUse_Great_Dexup ( role , Item , Item_Traget )
local ret = CheckJingLingLv2( role , Item_Traget )
if ret == 0 then
SystemNotice ( role , "Fairy Lv lower than 50. Unable to use Improved Accuracy Fruit")
UseItemFailed ( role )
return
end
local Cha_Boat = 0
Cha_Boat = GetCtrlBoat ( role )
if Cha_Boat ~= nil then
SystemNotice( role , "Cannot use while sailing" )
UseItemFailed ( role )
return
end
local Item_type = GetItemType ( Item )
local Item_Traget_Type = GetItemType ( Item_Traget )
local Item_Num = GetItemID ( Item )
local Check_Exp = 0
local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
local Item_Target_ID = GetItemID ( Item_Traget )
local Pet_Slot = GetChaItem ( role , 2 , 1  )
local Pet_ID = GetItemID ( Pet_Slot )
 
if Item_Target_ID ~= Pet_ID then
SystemNotice(role , "Pet must be in the Pet Slot" )
UseItemFailed ( role )
return
end
 
local Item_bg = GetChaItem ( role , 2 , 1  )
if Item_type == 58 and Item_Traget_Type == 59 then
Check_Exp = CheckElf_EXP ( role , Item_Traget )
if Check_Exp == 0 then
SystemNotice(role , "Growth rate is not full. Unable to feed pet with Improved Accuracy Fruit" )
UseItemFailed ( role )
else
Lvup_Dex_4 ( role , Item_Num , Item_Traget )
end
end
end
 
function ItemUse_Great_Conup ( role , Item , Item_Traget )
 
local ret = CheckJingLingLv2( role , Item_Traget )
if ret == 0 then
SystemNotice ( role , "Fairy Lv lower than 50. Unable to use Improved Constitution Fruit")
UseItemFailed ( role )
return
end
local Cha_Boat = 0
Cha_Boat = GetCtrlBoat ( role )
if Cha_Boat ~= nil then
SystemNotice( role , "Cannot use while sailing" )
UseItemFailed ( role )
return
end
local Item_type = GetItemType ( Item )
local Item_Traget_Type = GetItemType ( Item_Traget )
local Item_Num = GetItemID ( Item )
local Check_Exp = 0
local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
local Item_Target_ID = GetItemID ( Item_Traget )
local Pet_Slot = GetChaItem ( role , 2 , 1  )
local Pet_ID = GetItemID ( Pet_Slot )
 
if Item_Target_ID ~= Pet_ID then
SystemNotice(role , "Pet must be in the Pet Slot" )
UseItemFailed ( role )
return
end
 
local Item_bg = GetChaItem ( role , 2 , 1  )
if Item_type == 58 and Item_Traget_Type == 59 then
Check_Exp = CheckElf_EXP ( role , Item_Traget )
if Check_Exp == 0 then
SystemNotice(role , "Growth rate is not full. Unable to feed pet with Improved Constitution Fruit" )
UseItemFailed ( role )
else
Lvup_Con_4 ( role , Item_Num , Item_Traget )
end
end
end
 
function ItemUse_Great_Staup ( role , Item , Item_Traget )
local ret = CheckJingLingLv2( role , Item_Traget )
if ret == 0 then
SystemNotice ( role , "Fairy Lv lower than 50. Unable to use Improved Spirit Fruit")
UseItemFailed ( role )
return
end
local Cha_Boat = 0
Cha_Boat = GetCtrlBoat ( role )
if Cha_Boat ~= nil then
SystemNotice( role , "Cannot use while sailing" )
UseItemFailed ( role )
return
end
local Item_type = GetItemType ( Item )
local Item_Traget_Type = GetItemType ( Item_Traget )
local Item_Num = GetItemID ( Item )
local Check_Exp = 0
local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY)
local Item_Target_ID = GetItemID ( Item_Traget )
local Pet_Slot = GetChaItem ( role , 2 , 1  )
local Pet_ID = GetItemID ( Pet_Slot )
 
if Item_Target_ID ~= Pet_ID then
SystemNotice(role , "Pet must be in the Pet Slot" )
UseItemFailed ( role )
return
end
 
local Item_bg = GetChaItem ( role , 2 , 1  )  
if Item_type == 58 and Item_Traget_Type == 59 then
Check_Exp = CheckElf_EXP ( role , Item_Traget )
if Check_Exp == 0 then
SystemNotice(role , "Growth rate is not full. Unable to feed pet with Improved Spirit Fruit" )
UseItemFailed ( role )
else
Lvup_Sta_4 ( role , Item_Num , Item_Traget )
end
end
end


function ItemUse_MJ_longguo( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	--SystemNotice(role ,Elf_MaxEXP )

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
			if Check_Exp == 0 then
				SystemNotice(role , "Growth rate is not full. Unable to feed pet with Snow Dragon Fruit" ) 
				UseItemFailed ( role )
			else
			Lvup_Str_60 ( role , Item_Num , Item_Traget ) --力量属性的成长函数
			end 
	end 
end

--高级冰极爽口梅
function ItemUse_MJ_koumei ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
			if Check_Exp == 0 then
				SystemNotice(role , "Growth rate is not full. Unable to feed pet with Icespire Plum" ) 
				UseItemFailed ( role )
			else
			   Lvup_Agi_60 ( role , Item_Num , Item_Traget ) --敏捷属性的成长函数 
			end 
	end 
end
--高级海风鳕鱼丝
function ItemUse_MJ_yusi ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59  then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
			if Check_Exp == 0 then
				SystemNotice(role , "Growth rate is not full. Unable to feed pet with Zephyr Fish Floss" ) 
				UseItemFailed ( role )
			else
			   Lvup_Dex_60 ( role , Item_Num , Item_Traget ) --专注属性的成长函数 
			end 
	end 
end
--高级白银城果脯
function ItemUse_MJ_guopu ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59 then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
			if Check_Exp == 0 then
				SystemNotice(role , "Growth rate is not full. Unable to feed pet with Argent Mango" ) 
				UseItemFailed ( role )
			else
			   Lvup_Con_60 ( role , Item_Num , Item_Traget ) --体质属性的成长函数 
			end 
	end 
end

--高级新沙岚米饼
function ItemUse_MJ_mibing ( role , Item , Item_Traget ) 

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Cannot use while sailing" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_Num = GetItemID ( Item )
	local Check_Exp = 0
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 

	if Item_type == 58 and Item_Traget_Type == 59  then
			Check_Exp = CheckElf_EXP ( role , Item_Traget ) --精灵exp是否满足升级条件
			if Check_Exp == 0 then
				SystemNotice(role , "Growth rate is not full. Unable to feed pet with Shaitan Biscuit" ) 
				UseItemFailed ( role )
			else
			   Lvup_Sta_60 ( role , Item_Num , Item_Traget ) --精神属性的成长函数 
			end  				
	end 
end

function Jz_Script_Dream(role, Item )
	local i = CheckBagItem(role,6735)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Teleportation is a tedious process. Please maintain full HP and SP")
		UseItemFailed ( role )
		return
	end 
	local cha_lv = Lv(role)
	if cha_lv < 100 then 
	SystemNotice(role,"You must be level 100 or up to go to Dream City!")
	UseItemFailed ( role )
	return LUA_FALSE
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,6735,1)
			if j == 1 then
				MoveCity(role,"Dream Island")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

function Jz_Script_Guild(role, Item )
    	 local i = CheckBagItem(role,6736)                                                                                                                                                                                                                                                                                                                                                                  
    local k = ChaIsBoat(role)                                                                                                                                                                                                                                                                                                                                                                     
    local hp = Hp(role)                                                                                                                                                                                                                                                                                                                                                                     
    local mxhp = Mxhp(role)                                                                                                                                                                                                                                                                                                                                                                     
    local sp = Sp(role)                                                                                                                                                                                                                                                                                                                                                                     
    local mxsp = Mxsp(role)
    if sp < mxsp or hp < mxhp then                                                                                                                                                                                                                                                                                                                                                                     
        SystemNotice(role,"Teleportation is a tedious process. Please maintain full HP and SP" )                                                                                                                                                                                                                                                 
        UseItemFailed(role)                                                                                                                                                                                                                                                                                                                                                                 
        return                                                                                                                                                                                                                                                                                                                                                                 
    end                                                                                                                                                                                                                                                                                                                                                                     
 
 
    if HasGuild(role) == 0 then
        SystemNotice(role,"You don't have a guild.. Please join a guild before using this ticket")
        UseItemFailed(role)
        return
    end                                                                                                                                                                                                                                                                                                                                                                     
 
    	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,6736,1)
			if j == 1 then
				local GuildID = GetChaGuildID(role)
				MoveCity(role,"Guild House",GuildID)
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end