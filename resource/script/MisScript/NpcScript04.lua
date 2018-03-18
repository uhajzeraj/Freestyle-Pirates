--------------------------------------------------------------------------
--									--
--									--
--		NPCScript04.lua Created by Robin 2006.1.21.		--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading NPCScript04.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- 春风镇 铁匠·武鑫
------------------------------------------------------------

function b_talk1()


	Talk( 1, "Wu Xin: \"Emerald Blade on my left, Galiant Sword on my right, Dragon Crown on my head…Nothing can stop me!\"" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair)
	Text( 1, "Regarding Forging", JumpPage, 2)
	Text( 1, "Regarding Combining", JumpPage, 3)

	Talk( 2, "Wu Xin: Forging? Only the blacksmith of Shaitan City knows the secret." )

	Talk( 3, "Wu Xin: You wish to combine something? From what I understand, you need a combination scroll and it will list the required items. Collect the items needed and talk to Grocer - Amos in Shaitan City. He is the only person who knows how to combine." )
	
	Talk( 4, "Blacksmith - Wu Xin: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Weapon(	0023	)
	Weapon(	1399	)
	Weapon(	0021	)
	Weapon(	1378	)
	Weapon(	1387	)
	Weapon(	0084	)
	Weapon(	1426	)
	Weapon(	1461	)
	Weapon(	0108	)
	Weapon(	4302	)
	Weapon(	1438	)
	Weapon(	1441	)
	Weapon(	1473	)
	Weapon(	1476	)
	Weapon(	0045	)
	Weapon(	1414	)


	AddNpcMission ( 393 )
        AddNpcMission ( 567 )
end


------------------------------------------------------------
-- 春风镇 客栈老板·龙女（卖回复品)
------------------------------------------------------------

function b_talk2()


	Talk( 1, "Long Er: \"Welcome! We have all type of crusine for you to choose from. Anything to your liking?\"")
	Text( 1, "Trade", JumpPage, 4 )
	
	Talk( 2, "Long Er: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


   
	Talk( 4, "Do you want our speciality...it will make you feel much better! I almost forgot, bring me 5 pirate gold")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3734,5 )
	TriggerAction( 1, TakeItem, 3734,5 )
	TriggerAction( 1, GiveItem, 1083, 3, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 4, "Spring Roll!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "You don't posses enough pirate gold.")
	
	AddNpcMission ( 394 )
	AddNpcMission ( 536 )
	AddNpcMission ( 537 )
	AddNpcMission ( 538 )
        AddNpcMission ( 569 )

end

------------------------------------------------------------
-- 春风镇 杂货商人·鲁娜儿(卖飞机票)
------------------------------------------------------------

function b_talk3()


	Talk( 1, "Luna: \"Hmm…Someone seems be have the same name as me….I might sue that person for copyrights infringement!\"" )
	Text( 1, "Trade", BuyPage )
	Talk( 2, "Luna: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )



	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission ( 395 )
	AddNpcMission ( 517 )
	AddNpcMission ( 519 )
	AddNpcMission ( 525 )
	AddNpcMission ( 526 )
	--AddNpcMission ( 535 )
        AddNpcMission ( 564 )
end

------------------------------------------------------------
-- 春风镇 贸易商人·油李（航海贸易品
------------------------------------------------------------

function b_talk4()


	Talk( 1, "Yuri: \"Have you heard of Fountain of Life before?Devil Beast? What! You know nothing? How about Mahjong? Oh man…What sort of adventurer are you?\"" )
	--Text( 1, "Trade", BuyPage )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 13 )
	TriggerAction( 1, TradeBerthList, 13 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 )
	--Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)
	
	Talk( 2, "Yuri: Sorry! Your ship is not docked in Spring Harbor. Unable to trade." )
	
	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)
	

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")
	Talk( 8, "Yuri: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )


	InitGoods()
	SaleGoodsData(	0	,	4573	,	900	,	279	,	62	)
	SaleGoodsData(	0	,	4574	,	800	,	342	,	76	)
	SaleGoodsData(	1	,	4575	,	700	,	391	,	87	)
	SaleGoodsData(	1	,	4576	,	480	,	432	,	96	)
	SaleGoodsData(	2	,	4577	,	300	,	495	,	110	)
	SaleGoodsData(	2	,	4578	,	240	,	522	,	116	)
	SaleGoodsData(	3	,	4579	,	60	,	589	,	131	)
	SaleGoodsData(	3	,	4580	,	40	,	648	,	144	)

	BuyGoodsData(0,	4581	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4585	,	-1	,	846	,	188	)
	BuyGoodsData(0,	4587	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4593	,	-1	,	1000	,	223	)
	BuyGoodsData(0,	4595	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4598	,	-1	,	878	,	195	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4552	,	-1	,	642	,	143	)
	BuyGoodsData(0,	4553	,	-1	,	789	,	175	)
	BuyGoodsData(0,	4554	,	-1	,	934	,	207	)
	BuyGoodsData(0,	4556	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4557	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4560	,	-1	,	1056	,	235	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	785	,	175	)
	BuyGoodsData(0,	4569	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	500	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission ( 396 )
	AddNpcMission ( 530 )
	AddNpcMission ( 545 )
	AddNpcMission ( 546 )
	AddNpcMission ( 547 )
        AddNpcMission ( 572 )

end

------------------------------------------------------------
-- 春风镇 传送使·春莉
------------------------------------------------------------

function b_talk5()
	
	Talk( 1, "Hi !Wanna go somewhere?")
	Text( 1, "Yes Please", BuyPage)
	Text( 1, "Record Spawn Point.", SetSpawnPos, "Spring Town" )
	Text( 1, "No Thanks", CloseTalk)
	Talk( 8, "Chun Li: \"………………^$&#&^%………………\"" )

	InitTrade()
	Other(	4602)
	Other(	4603)
	Other(	4604)


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 397 )
	 AddNpcMission ( 559 )
	AddNpcMission	(7911)
	AddNpcMission	(7912)
	AddNpcMission	(7913)
	AddNpcMission	(7914)
	AddNpcMission	(7923)
	AddNpcMission	(7924)
	MisListPage(8)

	

end

------------------------------------------------------------
-- 春风镇 算命先生·算破天
------------------------------------------------------------

function b_talk6()


	Talk( 1, "Hocus Pocus: \"Hello there! I can see that you are blessed by the deities and fortune is smiling upon you. Since this is your lucky day, I will sell you a Pirate Manual for 500G. How is it?\"" )
--	Text( 1, "I want 1 Career Lot", JumpPage, 2 )
--	Text( 1, "I want 1 Fortune Lot", JumpPage, 3 )


	Text( 1, "Bargain of Death", JumpPage, 6 )

	Talk( 6, "Hocus Pocus: Darkness is the mask of Death… What do you want to redeem?")
	Text( 6, "Silhouette of Death",JumpPage,7)
	Text( 6, "Curse series", JumpPage,8)
	Text( 6, "Soul Series", JumpPage,9)


	--InitTrigger() --兑换死神的遗容
	--TriggerCondition( 1, HasItem, 2846, 1 )
	--TriggerCondition( 1, HasItem, 2847, 1 )
	--TriggerCondition( 1, HasItem, 2848, 1 )
	--TriggerCondition( 1, HasItem, 2849, 1 )
	--TriggerCondition( 1, HasItem, 2850, 1 )
	--TriggerCondition( 1, HasItem, 2851, 1 )
	--TriggerCondition( 1, HasItem, 2852, 1 )
	--TriggerCondition( 1, HasItem, 2853, 1 )

       -- TriggerAction( 1, TakeItem,  2846, 1 )
	--TriggerAction( 1, TakeItem,  2847, 1 )
	--TriggerAction( 1, TakeItem,  2848, 1 )
	--TriggerAction( 1, TakeItem,  2849, 1 )
	--TriggerAction( 1, TakeItem,  2850, 1 )
	--TriggerAction( 1, TakeItem,  2851, 1 )
	--TriggerAction( 1, TakeItem,  2852, 1 )
	--TriggerAction( 1, TakeItem,  2853, 1 )
	--TriggerAction( 1, GiveItem,2934, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 7, "Hocus Pocus: 1 Melancholy of Phantom Baron, 1 Melancholy of Demon Flame, 1 Melancholy of Evil Beast, 1 Melancholy of Tyran, 1 Melancholy of Phoenix, 1 Melancholy of Despair, 1 Melancholy of Drakan and 1 Melancholy of Tidal= 1 Silhouette of Death.")
	Text( 7, "Confirm to redeem",GetChaName_7, 1) 

	Talk( 8, "Hocus Pocus: A kind child will not go around cursing others…")
	Text( 8, "Curse of Hardin",JumpPage,11)
	Text( 8, "Curse of Darkness", JumpPage,12)
	Text( 8, "Curse of Abaddon", JumpPage,13)
	Text( 8, "Curse of Abyss", JumpPage,14)
	Text( 8, "Curse of Styx", JumpPage,15)
	Text( 8, "Curse of Asura", JumpPage,16)



	--InitTrigger() --兑换哈迪斯的诅咒
	
	--TriggerCondition( 1, HasItem, 2854, 1 )
	--TriggerCondition( 1, HasItem, 2855, 1 )
	--TriggerCondition( 1, HasItem, 2856, 1 )
	--TriggerCondition( 1, HasItem, 2857, 1 )
	--TriggerCondition( 1, HasItem, 2927, 1 )
      
	--TriggerAction( 1, TakeItem,  2854, 1 )
	--TriggerAction( 1, TakeItem,  2855, 1 )
	--TriggerAction( 1, TakeItem,  2856, 1 )
	--TriggerAction( 1, TakeItem,  2857, 1 )
	--TriggerAction( 1, TakeItem,  2927, 1 )
	--TriggerAction( 1, GiveItem,2935, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(11, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Hardin= 1 Curse of Hardin")
	Text( 11, "Confirm to redeem",GetChaName_8, 1) 


--InitTrigger() --兑换黑暗的诅咒	
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2928, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2928, 1 )
--TriggerAction( 1, GiveItem,2936, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 12, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Darkness= 1 Curse of Darkness")
	Text( 12, "Confirm to redeem",GetChaName_9, 1) 


--InitTrigger() --兑换地狱的诅咒

--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2929, 1 )

--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2929, 1 )
--TriggerAction( 1, GiveItem,2937, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 13, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Abaddon = 1 Curse of Abaddon")
	Text( 13, "Confirm to redeem",GetChaName_10, 1) 



--InitTrigger() --兑换幽冥的诅咒
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2931, 1 )

--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2931, 1 )
--TriggerAction( 1, GiveItem,2939, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 14, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Abyss= 1 Curse of Abyss")
	Text( 14, "Confirm to redeem",GetChaName_11, 1) 

--	InitTrigger() --兑换冥河的诅咒
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2932, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2932, 1 )
--TriggerAction( 1, GiveItem,2940, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 15, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Styx= 1 Curse of Styx")
	Text( 15, "Confirm to redeem",GetChaName_12, 1) 



--InitTrigger() --兑换修罗的诅咒
--TriggerCondition( 1, HasItem, 2854, 1 )
--TriggerCondition( 1, HasItem, 2855, 1 )
--TriggerCondition( 1, HasItem, 2856, 1 )
--TriggerCondition( 1, HasItem, 2857, 1 )
--TriggerCondition( 1, HasItem, 2930, 1 )
--
--TriggerAction( 1, TakeItem,  2854, 1 )
--TriggerAction( 1, TakeItem,  2855, 1 )
--TriggerAction( 1, TakeItem,  2856, 1 )
--TriggerAction( 1, TakeItem,  2857, 1 )
--TriggerAction( 1, TakeItem,  2930, 1 )
--TriggerAction( 1, GiveItem,2938, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 16, "Hocus Pocus: 1 Fur of Death, 1 Tooth of Death, 1 Eye of Death, 1 Heart of Death and 1 Sealed Soul of Asura= 1 Curse of Asura")
	Text( 16, "Confirm to redeem",GetChaName_13, 1) 


	Talk( 9, "Hocus Pocus: I heard human souls weigh 0.1g. I wonder how heavy does the soul of Death weighs.")
	Text( 9, "Soul of Hardin",JumpPage,17)
	Text( 9, "Soul of Darkness", JumpPage,18)
	Text( 9, "Soul of Abaddon", JumpPage,19)
	Text( 9, "Soul of Abyss", JumpPage,20)
	Text( 9, "Soul of Styx", JumpPage,21)
	Text( 9, "Soul of Asura", JumpPage,22)
	Text( 9, "Soul of Black Dragon", JumpPage,23)


--InitTrigger() --兑换哈迪斯的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2935, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2935, 1 )
--TriggerAction( 1, GiveItem,2562, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 17, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Hardin= 1 Soul of Hardin")
	Text( 17, "Confirm to redeem",GetChaName_14, 1) 
--
--
--InitTrigger() --兑换黑暗的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2936, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2936, 1 )
--TriggerAction( 1, GiveItem,2563, 1,4 )
	--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 18, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Darkness= 1 Soul of Darkness")
	Text( 18, "Confirm to redeem",GetChaName_15, 1) 



--InitTrigger() --兑换地狱的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2937, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2937, 1 )
--TriggerAction( 1, GiveItem,2564, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk(19, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Abaddon= 1 Soul of Abaddon")
	Text( 19, "Confirm to redeem",GetChaName_16, 1) 
--
--
--
--InitTrigger() --兑换幽冥的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2939, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--	TriggerAction( 1, TakeItem,  2939, 1 )
--TriggerAction( 1, GiveItem,2566, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 20, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Abyss= 1 Soul of Abyss")
	Text( 20, "Confirm to redeem",GetChaName_17, 1) 
--
--
--InitTrigger() --兑换冥河的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2940, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2940, 1 )
--TriggerAction( 1, GiveItem,2567, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 21, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Styx = 1 Soul of Styx")
	Text( 21, "Confirm to redeem",GetChaName_18, 1) 
--
--

--InitTrigger() --兑换修罗的魂魄
--TriggerCondition( 1, HasItem, 2934, 1 )
--TriggerCondition( 1, HasItem, 2938, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, TakeItem,  2938, 1 )
--TriggerAction( 1, GiveItem,2565, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 22, "Hocus Pocus: 1 Silhouette of Death + 1 Curse of Asura= 1 Soul of Asura")
	Text( 22, "Confirm to redeem",GetChaName_19, 1) 
--
--InitTrigger() --兑换黑龙的魂魄
--TriggerCondition( 1, HasItem, 2562, 1 )
--TriggerCondition( 1, HasItem, 2563, 1 )
--TriggerCondition( 1, HasItem, 2564, 1 )
--TriggerCondition( 1, HasItem, 2565, 1 )
--TriggerCondition( 1, HasItem, 2566, 1 )
--TriggerCondition( 1, HasItem, 2567, 1 )
--TriggerCondition( 1, HasItem, 2933, 1 )
--TriggerCondition( 1, HasItem, 2934, 1 )
--
--TriggerAction( 1, TakeItem,  2562, 1 )
--TriggerAction( 1, TakeItem,  2563, 1 )
--TriggerAction( 1, TakeItem,  2564, 1 )
--TriggerAction( 1, TakeItem,  2565, 1 )
--TriggerAction( 1, TakeItem,  2566, 1 )
--TriggerAction( 1, TakeItem,  2567, 1 )
--TriggerAction( 1, TakeItem,  2933, 1 )
--TriggerAction( 1, TakeItem,  2934, 1 )
--TriggerAction( 1, GiveItem,2404, 1,4 )
--TriggerFailure( 1, JumpPage, 10 ) 
	Talk( 23, "Hocus Pocus: 1 Soul of Darkness, 1 Soul of Asura, 1 Soul of Hardin, 1 Soul of Abaddon, 1 Soul of Abyss, 1 Soul of Styx, 1 Silhouette of Death and 1 Titter of Black Dragon= 1 Soul of Black Dragon")
	Text( 23, "Confirm to redeem",GetChaName_20, 1) 

	Talk( 10, "You do not have the items required for exchanging, or your inventory might be binded or you do not have sufficient inventory slots." )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3086,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, "Career Lot? 5000G please!" )
	Text( 2, "Ok, I give you 5000G",MultiTrigger, GetMultiTrigger(), 1 ) 

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3087,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Buying a Fortune Lot? 5000G!" )
	Text( 3, "Ok, I give you 5000G",MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "Hocus Pocus: \"………………^$&#&^%………………\"" )

	Talk( 5, "You do not have enough gold, inventory space or your inventory has been binded" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 4 )
	
	AddNpcMission ( 520 )
        AddNpcMission ( 900 )
---------------------新历史任务
	AddNpcMission(	5065)
	AddNpcMission(	595	)
	AddNpcMission(	599	)
	AddNpcMission(	5000	)
	AddNpcMission(	5001	)
	AddNpcMission(	5002	)
	AddNpcMission(	5003 )
	AddNpcMission(	5066)

end
------------------------------------------------------------
-- 春风镇 酒店老板·裴蒂
------------------------------------------------------------

function b_talk7()


	Talk( 1, "Sang Di: \"Hey guys! Come to receive the guest!\"" )
   	--Text( 1, "Trade", BuyPage )
	
	Talk( 2, "Sang Di: \"………………^$&#&^%………………\"" )

	InitTrade()
	Other(	1084	)
	Other(	1085	)
	Other(	1087	)
	Other(	1088	)
	Other(	1089	)
	Other(	1090	) 


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


	AddNpcMission ( 392 )
	AddNpcMission ( 514 )
	AddNpcMission ( 516 )
	AddNpcMission ( 527 )
	AddNpcMission ( 528 )
	AddNpcMission ( 529 )
	AddNpcMission ( 548 )
	AddNpcMission ( 550 )
	AddNpcMission ( 551 )
       AddNpcMission ( 558 )
       AddNpcMission ( 571 )
------------新增历史任务
	AddNpcMission(	592	)
	AddNpcMission(	5004	)
	AddNpcMission(	5005	)
	AddNpcMission(	5006	)
	AddNpcMission(	5007	)
	AddNpcMission(	5008	)
	AddNpcMission(	5043	)
	AddNpcMission(	5054	)
	AddNpcMission(	5055	)
end

------------------------------------------------------------
-- 春风镇 港口指挥·霜奇
------------------------------------------------------------

function b_talk8()


	Talk( 1, "Shuang: \"Sailing? Salvage? Repair? Refuel?\"" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 3426, 2575, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, RepairBerthList, 13 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, SupplyBerthList, 13 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 13 )
	TriggerAction( 1, SalvageBerthList, 13 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Shuang: \"………………^$&#&^%………………\"" )


	AddNpcMission ( 398 )
	AddNpcMission ( 565 )


end

------------------------------------------------------------
-- 春风镇 银行总管·王墨
------------------------------------------------------------

function b_talk9()


	Talk( 1, "Wang Mo: \"You…look familiar? Do you have anything that requires storage?\"" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry! You do not have enough gold to pay the fee to access the bank." )
	Talk( 3, "Wang Mo: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 2 )



	AddNpcMission ( 399 )
	AddNpcMission ( 510 )
	AddNpcMission ( 511 )
	AddNpcMission ( 512 )
	AddNpcMission ( 513 )
	AddNpcMission ( 543 )
	AddNpcMission ( 544 )
        AddNpcMission ( 570 )
 
end

------------------------------------------------------------
-- 春风镇 卫兵·赵钱孙
------------------------------------------------------------

function b_talk10()


	Talk( 1, "Zhao: \"So hungry…What time is my dinner arriving…?\"" )
	Talk( 2, "Zhao: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end

------------------------------------------------------------
-- 春风镇 卫兵·周吴郑
------------------------------------------------------------

function b_talk11()


	Talk( 1, "Zhou: \"1 plus 1equals 2? Not 2? 2? Actually I am only talking to myself. You don't have to be so worked up. Equals 2? Not equals 2…? \"" )
	Talk( 2, "Zhou: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 531 )
	AddNpcMission ( 532 )
	AddNpcMission ( 533 )
	AddNpcMission ( 534 )

end

------------------------------------------------------------
-- 春风镇 青年男子·流云
------------------------------------------------------------

function b_talk12()


	Talk( 1, "Cloud: \"Have you seen Misty? She is my girlfriend.\"" )
	Talk( 2, "Cloud: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
         
	 AddNpcMission ( 533 )
	 AddNpcMission ( 563 )
end

------------------------------------------------------------
-- 春风镇 青年女子·水雾
------------------------------------------------------------

function b_talk13()


	Talk( 1, "Misty: \"Have you seen Cloud? He is my boyfriend\"" )
	Talk( 2, "Misty: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end

------------------------------------------------------------
-- 春风镇 中年男子·比盖
------------------------------------------------------------

function b_talk14()


	Talk( 1, "Bill: \"Trouble? No trouble? I am earning millions each second! Do not disturb me!\"" )
	Talk( 2, "Bill: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

        AddNpcMission ( 568 )
end

------------------------------------------------------------
-- 春风镇 中年女子·王蓉
------------------------------------------------------------

function b_talk15()


	Talk( 1, "Wang Rong: \"I does not know any martial art. Don't bully me…\"" )
	Talk( 2, "Wang Rong: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end

------------------------------------------------------------
-- 春风镇 东方海盗·铃佐田山
------------------------------------------------------------

function b_talk16()


	Talk( 1, "Yakamoto: \"Seriously…can't you see that we are robbers? \"" )
	Talk( 2, "Yakamoto: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end


------------------------------------------------------------
-- 春风镇 潮流理发师
------------------------------------------------------------

function b_talk17()


	Talk( 1, "Hairstylist: \"Braid……\"" )
        Text( 1, "I want to change my hairstyle", JumpPage, 2)
	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "Hairstylist: Want a change of hairstyle? Let me have a look at your Hairstyling Coupon.")
	Text( 2, "Yes I'm sure", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Forget it, let me think it over.", CloseTalk )

	Talk( 3, "Hairstylist: You don't seem to possess Hairstyling Voucher. I cannot style your hair.")
	Talk( 4, "Hairstylist: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(6003)
	AddNpcMission	(6004)
	AddNpcMission	(6005)
	AddNpcMission	(6006)
	AddNpcMission	(6007)
	AddNpcMission	(6008)
	AddNpcMission	(6009)
end

------------------------------------------------------------
-- 春风镇 僵尸·裴永军
------------------------------------------------------------

function b_talk18()


	Talk( 1, "Hami: \"……\"" )
	Talk( 2, "Hami: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )
	
	AddNpcMission ( 515 )
	AddNpcMission ( 518 )
	AddNpcMission ( 524 )
end

------------------------------------------------------------
--黑龙巢穴 一层to二层
------------------------------------------------------------

function b_talk21()


	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "I need to reconsider."
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "Forget it, I will stay here"
	local CancelSelectPage = 5

	--地图名称信息
	local CurMapName = "eastgoaf"


	--黑龙巢穴二层坐标
	local GoTo01X = 767
	local GoTo01Y = 602
	local GoTo01M = CurMapName

	Talk( 1, "Guardian Statue: \"I am the Goddess that sealed Death within.\"" )
	Text( 1, "Go to Black Dragon Lair 2!", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 179,1 )
	TriggerCondition( 1, HasItem, 3084,1 )
	TriggerCondition( 1, HasItem, 3085,1 )
	TriggerAction( 1, TakeItem, 179,1 )
	TriggerAction( 1, TakeItem, 3084,1 )
	TriggerAction( 1, TakeItem, 3085,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Teleport to Black Dragon Lair 2 requires 1<ySigil of Anubis>, 1 <yMask of Mummy King> and 1 <yTimeless Machine>!" )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 3, "Guardian Statue: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Sorry, you have not collect all 3 items!" )

	Talk( 5, "Remember to look for me again if you need to teleport", CloseTalk )
end

------------------------------------------------------------
--黑龙巢穴 二层to一层
------------------------------------------------------------

function b_talk22()


	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "I need to reconsider."
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "Forget it, I will stay here"
	local CancelSelectPage = 4

	--地图名称信息
	local CurMapName = "eastgoaf"


	--黑龙巢穴三层坐标
	local GoTo01X = 847
	local GoTo01Y = 247
	local GoTo01M = CurMapName

	Talk( 1, "Guardian Statue: \"I am the Goddess that sealed Death within.\"" )
	Text( 1, "Go to Black Dragon Lair 1!", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "Do you wish to go out?" )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 3, "Guardian Statue: \"………………^$&#&^%………………\"" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Remember to look for me again if you need to teleport", CloseTalk )



end

------------------------------------------------------------
--黑龙巢穴 二层to三层
------------------------------------------------------------

function b_talk23()

	--地图名称信息
	local CurMapName = "eastgoaf"


	--黑龙巢穴三层坐标
	local GoTo01X = 772
	local GoTo01Y = 722
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, HasItem, 182,1 )
	--TriggerAction( 1, TakeItem, 1091,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "Guardian Statue: \"I am the Goddess that sealed Death within.\"" )
	Text( 1, "Go to Black Dragon Lair 3!", MultiTrigger, GetMultiTrigger(), 1 )

	--Talk( 3, "Guardian Statue: \"………………^$&#&^%………………\"" )
	--InitTrigger()
--	TriggerCondition( 1, HasRecord, 330 )
--	TriggerAction( 1, JumpPage, 1 )
--	TriggerCondition( 2, NoRecord, 330 )
--	TriggerAction( 2, JumpPage, 3 )
--	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Statue is being sealed. You need a <Dragon Key> to access it" )

--	Talk( 4, "The statue emits a energy shield to keep me away. Looks like I am not strong enough to break it yet. I must think of other ways." )


end

------------------------------------------------------------
--黑龙宝箱
------------------------------------------------------------

function b_talk24()

--	InitFuncList()
--	AddFuncList( GiveItem,	110	,	1	,	4)
--	AddFuncList( GiveItem,	112	,	1	,	4)
--	AddFuncList( GiveItem,	114	,	1	,	4)
--	AddFuncList( GiveItem,	116	,	1	,	4)
--	AddFuncList( GiveItem,	118	,	1	,	4)
--	AddFuncList( GiveItem,	120	,	1	,	4)
--	AddFuncList( GiveItem,	151	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 182, 1 )
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, AddMoney, 10000000 )
--	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerAction(1, GiveItem, 0266, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "This is a mysterious chest. It seems to be locked…" )
	Text( 1, "Forbidden words", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Failed to open. It seems that some sort of key is needed" )

end

------------------------------------------------------------
-- 加勒比海盗版本 -----  铁匠
------------------------------------------------------------

function l_talk01()
	Talk(1, "Jack Arrow and I have been here for almost a month but failed to find the way out. And I don't know where is my loved one now! Arrgh! I hate this hellish place!")

	AddNpcMission(7959)
	AddNpcMission(7960)
	AddNpcMission(7961)
	AddNpcMission(7962)

end

------------------------------------------------------------
-- 加勒比海盗版本 -----  杰克史派罗
------------------------------------------------------------

function l_talk02()
	Talk(1, "Rumored that Barborosa got his monstrous power from the curse. This place is no longer safe, please be careful and these monsters aren't vegetarian.")


	AddNpcMission(7956)
	AddNpcMission(7957)
	AddNpcMission(7958)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  诺灵顿将军
------------------------------------------------------------

function l_talk03()
	Talk(1, "Damn Jack! If he did not steal our war galley, I would not be stuck in this hellhole")

	AddNpcMission(897)
	AddNpcMission(898)
	AddNpcMission(899)
	AddNpcMission(476)
	AddNpcMission(479)
	AddNpcMission(480)
	AddNpcMission(481)
	AddNpcMission(576)
	AddNpcMission(577)
	AddNpcMission(578)
	AddNpcMission(589)
	AddNpcMission(590)

	AddNpcMission (	7947)
	AddNpcMission (	7948)
	AddNpcMission (	7949)

end

------------------------------------------------------------
-- 加勒比海盗版本 -----  伊丽莎白
------------------------------------------------------------

function l_talk04()
	Talk(1, "Where am I? How did I ended up here? Mark! Sob…Sob…")
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission(505)
	AddNpcMission(506)
	AddNpcMission(507)
	AddNpcMission(579)
	AddNpcMission(580)
	AddNpcMission(587)
	AddNpcMission(588)
	AddNpcMission(591)

	---------------白羊
	AddNpcMission	(5573)
	AddNpcMission	(5574)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  藏宝海湾北海港指挥·彭尼
------------------------------------------------------------
function mmm_talk06()

	Talk( 1, "Penny: Dock? Set sail? Salvage? Repair? Refuel?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 650,999, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Shuang: \"………………^$&#&^%………………\"" )




end

------------------------------------------------------------
-- 加勒比海盗版本 -----  藏宝海湾南海港指挥·凯奇
------------------------------------------------------------
function mmm_talk05()

	Talk( 1, "Catchy: Dock? Set sail? Salvage? Repair? Refuel?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 625,925, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Catchy: ..................^$&#&^%.................." )




end
------------------------------------------------------------
-- 加勒比海盗版本 -----  骷髅海港指挥
------------------------------------------------------------
function mmm_talk07()
Talk( 1, "Seaport Commander: Dock? Set sail? Salvage? Repair? Refuel?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 620,628, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Seaport Commander: ..................^$&#&^%.................." )


	

end
------------------------------------------------------------
-- 加勒比海盗版本 -----  神秘人出海人
------------------------------------------------------------
function mmm_talk08()
Talk( 1, "Mysterious Sailor: Dock? Set sail? Salvage? Repair? Refuel?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 380,161, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Mysterious Sailor: ..................^$&#&^%.................." )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  海军基地海港指挥
------------------------------------------------------------
function mmm_talk09()
Talk( 1, "Seaport Commander: Dock? Set sail? Salvage? Repair? Refuel?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1070,212, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Seaport Commander: ………………^$&#&^%………………" )
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  打包人·戴普
------------------------------------------------------------
function mmm_talk10()
Talk( 1, "Zabu: Hi! I am the Freights NPC here. I can help you load the products up your ship if it is docked in this harbor" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Crystal", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Zabu:  Hi! You do not have any ship docked at this harbor" )

end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱传送使
------------------------------------------------------------
function mmm_talk11()
	--地图名称信息
	local CurMapName = "jialebi" 

	--黑龙巢穴三层坐标
	local GoTo01X = 190
	local GoTo01Y = 815
	local GoTo01M = CurMapName


	InitTrigger()
	TriggerCondition( 1, HasItem, 2438,20 )
	TriggerCondition( 1, HasItem, 2419,15 )
	TriggerCondition( 1, HasItem, 2386,15 )
	TriggerAction( 1, TakeItem, 2438,20 )
	TriggerAction( 1, TakeItem, 2419,15 )
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "Abaddon Teleporter: Want to go to Abaddon? Be prepared. Bring me 20 <Gold Coins>, 15 <Pirate's Bones> and 15 <Souls of Undead> and I will send you down." )
	Text( 1, "Go to Abaddon 1", MultiTrigger, GetMultiTrigger(), 1 )

	--Talk( 3, "Guardian Statue: \"………………^$&#&^%………………\"" )

--InitTrigger()
--	TriggerCondition( 1, HasRecord, 330 )
--	TriggerAction( 1, JumpPage, 1 )
--	TriggerCondition( 2, NoRecord, 330 )
--	TriggerAction( 2, JumpPage, 3 )
--	Start( GetMultiTrigger(), 3 )

	Talk( 4, "Come back again after you have the required items" )

--	Talk( 4, "The statue emits a energy shield to keep me away. Looks like I am not strong enough to break it yet. I must think of other ways." )

---------------白羊
	AddNpcMission	(5593)
	AddNpcMission	(5594)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  天堂传送使
------------------------------------------------------------
function mmm_talk12()

	Talk( 1, "Hello! Looking for peace...well, Heaven is that place! Would you like to go?")
	Text( 1, "Yes", BuyPage)
	Text( 1, "No", CloseTalk)

	InitTrade()
	Other(	3705)


end
------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员A
------------------------------------------------------------
function mmm_talk13()
	Talk( 1, "Bewildered Researcher A: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Secrets set item", JumpPage, 2)

	Talk( 2, "Bewildered Researcher A: These good items are also known as Tsunami set!" )
	Text( 2, "Redeem Armor of Secrets (Lance Crusader)", JumpPage, 3)
	Text( 2, "Redeem Gloves of Secrets (Lance Crusader)", JumpPage, 4)
	Text( 2, "Redeem Boots of Secrets (Lance Crusader)", JumpPage, 5)
	Text( 2, "Redeem Drakan (Lance Crusader)", JumpPage, 6)

	Talk(3,"To redeem Armor of Secrets requires 1 Guise Veilstone, 30 Rainbow Fruit, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2467, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2467, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0396, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Obtained Armor of Secrets", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Gloves of Secrets requires 1 Avow Blotstone, 30 Rainbow Fruit, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2473, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2473, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0588, 1 , 4)
	TriggerFailure( 1, JumpPage, 7)
	Text( 4, "Obtained Gloves of Secrets ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Boots of Secrets requires 1 Mirage Shadestone, 30 Rainbow Fruit, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0748, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Obtained Boots of Secrets", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Drakan requires 1 Demonic Orestone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2463, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2463, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0114, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Obtained Drakan", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Sorry, you do not have the required items to redeem")
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员B
------------------------------------------------------------
function mmm_talk14()
	Talk( 1, "Bewildered Researcher B: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Olympus set", JumpPage, 2)

	Talk( 2, "Bewildered Researcher B: These good items are also known as Olympus set!" )
	Text( 2, "Redeem Armor of Olympus (Carsise Champion)", JumpPage, 3)
	Text( 2, "Redeem Gauntlets of Olympus (Carsise Champion)", JumpPage, 4)
	Text( 2, "Redeem Greaves of Olympus (Carsise Champion)", JumpPage, 5)
	Text( 2, "Redeem Colossus (Carsise Champion)", JumpPage, 6)

	Talk(3,"To redeem Armor of Olympus requires 1 Myth Flamestone, 30 Magical Branches, 20 Animal Skins, 10 Splendor Cloths and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0398, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Obtained Armor of Olympus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Gauntlets of Olympus requires 1 Rainbow Soothstone, 30 Magical Branch, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0604, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Obtained Gauntlets of Olympus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Greaves of Olympus requires 1 Spirit Orestone, 30 Magical Branch, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2484, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2484, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0830, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Obtained Greaves of Olympus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Colossus requires 1 Thaw Finestone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2464, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2464, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0116, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Obtained Colossus", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Sorry, you do not have the required items to redeem")
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员C
------------------------------------------------------------
function mmm_talk15()
	Talk( 1, "Bewildered Researcher C: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Dragon Lord set", JumpPage, 2)
	Text( 1, "Redeem Tsunami set", JumpPage, 9)

	Talk( 2, "Bewildered Researcher C: These good items are also known as Dragon Lord set!" )
	Text( 2, "Redeem Dragon Lord Costume (Ami Voyager)", JumpPage, 3)
	Text( 2, "Redeem Dragon Lord Muffs (Ami Voyager)", JumpPage, 4)
	Text( 2, "Redeem Dragon Lord Shoes (Ami Voyager)", JumpPage, 5)
	Text( 2, "Redeem Dragon Lord Cap (Ami Voyager)", JumpPage, 6)
	Text( 2, "Redeem Riven Soul (Ami Voyager)", JumpPage, 7)

	Talk(3,"To redeem Dragon Lord Costume requires 1 Beastie Finestone, 30 Rainbow Glass, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0413, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Obtained Dragon Lord Costume", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Dragon Lord Muffs requires 1 Beastie Toothstone, 30 Rainbow Glass, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2477, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2477, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0602, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Obtained Dragon Lord Muffs", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Dragon Lord Shoes requires 1 Cadavar Orestone, 30 Rainbow Glass, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2483, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2483, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0824, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Obtained Dragon Lord Shoes ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Dragon Lord Cap requires 1 Beastie Borestone, 30 Rainbow Glass, 20 Life Stones, 10 Meteorites and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2487, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2487, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2223, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Obtained Dragon Lord Cap ", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"To redeem Riven Soul requires 1 Tear Soothstone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2466, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2466, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0151, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Obtained Riven Soul", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Sorry, you do not have the required items to redeem")

	Talk( 9, "Bewildered Researcher C: These good items are also known as Tsunami set!" )
	Text( 9, "Redeem Tsunami Robe (Lance, Phyllis Voyager)", JumpPage, 10)
	Text( 9, "Redeem Tsunami Gloves (Lance, Phyllis Voyager)", JumpPage, 11)
	Text( 9, "Redeem Tsunami Shoes (Lance, Phyllis Voyager)", JumpPage, 12)
	Text( 9, "Redeem Riven Soul (Lance, Phyllis Voyager)", JumpPage, 7)

	Talk(10,"To redeem Tsunami Robe requires 1 Beastie Finestone, 30 Agate Crystal, 20 Animal Skin, 10 Earthen Element Fragment and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0411, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Obtained Tsunami Robe", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"To redeem Tsunami Gloves requires 1 Zest Jadestone, 30 Quartz Crystals, 20 Extender, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0600, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Obtained Tsunami Gloves", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"To redeem Tsunami Shoes requires 1 Mirage Shadestone, 30 Agate Crystal, 20 Life Stone, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0760, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Obtained Tsunami Shoes", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员D
------------------------------------------------------------
function mmm_talk26()
	Talk( 1, "Bewildered Researcher D: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Fish Fairy set", JumpPage, 2)
	Text( 1, "Redeem Faerie set", JumpPage, 9)

	Talk( 2, "Bewildered Researcher D: These good items are also known as Fish Fairy set!" )
	Text( 2, "Redeem Fish Fairy Costume (Ami Cleric)", JumpPage, 3)
	Text( 2, "Redeem Fish Fairy Muffs (Ami Cleric)", JumpPage, 4)
	Text( 2, "Redeem Fish Fairy Shoes (Ami Cleric)", JumpPage, 5)
	Text( 2, "Redeem Fish Fairy Cap (Ami Cleric)", JumpPage, 6)
	Text( 2, "Redeem Revered Staff (Ami Cleric)", JumpPage, 7)

	Talk(3,"To redeem Fish Fairy Costume requires 1 Searing Debstone, 30 Life Stone Fragment, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2471, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2471, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0408, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Obtained Fish Fairy Costume", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Fish Fairy Muffs requires 1 Dark Soothstone, 30 Life Stone Fragment, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0598, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Obtained Fish Fairy Muffs", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Fish Fairy Shoes requires 1 Pearl Soothstone, 30 Life Stone Fragment, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0758, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Obtained Fish Fairy Shoes", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Fish Fairy Cap requires 1 Oceanic Gutstone, 30 Life Stone Fragment, 20 Life Stone, 10 Meteorite and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2486, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2486, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2221, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Obtained Fish Fairy Cap", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"To redeem Revered Staff requires 1 Goddess Mudstone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2461, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2461, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0110, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Obtained Revered Staff", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Sorry, you do not have the required items to redeem")

	Talk( 9, "Bewildered Researcher D: These good items are also known as Faerie set!" )
	Text( 9, "Redeem Faerie Robe (Phyllis Cleric)", JumpPage, 10)
	Text( 9, "Redeem Faerie Gloves (Phyllis Cleric) ", JumpPage, 11)
	Text( 9, "Redeem Faerie Shoes (Phyllis Cleric)", JumpPage, 12)
	Text( 9, "Redeem Revered Staff (Phyllis Cleric)", JumpPage, 7)

	Talk(10,"To redeem Faerie Robe requires 1 Myth Flamestone, 30 Life Stone Fragment, 20 Life Stone, 10 Pearl and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0406, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Obtained Faerie Robe", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"To redeem Faerie Gloves requires 1 Dark Soothstone, 30 Agate Crystal, 20 Animal Skin, 10 Splendor Cloth and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0596, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Obtained Faerie Gloves", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"To redeem Faerie Shoes requires 1 Goddess Tearstone, 30 Life Stone Fragment, 20 Life Stone, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0756, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Obtained Faerie Shoes", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员E
------------------------------------------------------------
function mmm_talk27()
	Talk( 1, "Bewildered Researcher E: Hi, I have been lost for a long time. I got some good stuff with me. Do you wish to do an exchange?" )
	Text( 1, "Redeem Panda set", JumpPage, 2)
	Text( 1, "Redeem Sage set", JumpPage, 9)

	Talk( 2, "Bewildered Researcher E: These good items are also known as Panda set!" )
	Text( 2, "Redeem Mystic Panda Costume (Ami Seal Master)", JumpPage, 3)
	Text( 2, "Redeem Mystic Panda Gloves (Ami Seal Master)", JumpPage, 4)
	Text( 2, "Redeem Mystic Panda Shoes (Ami Seal Master)", JumpPage, 5)
	Text( 2, "Redeem Mystic Panda Cap (Ami Seal Master)", JumpPage, 6)
	Text( 2, "Redeem Crimson Rod (Ami Seal Master)", JumpPage, 7)

	Talk(3,"To redeem Mystic Panda Costume requires 1 Dim Jadestone, 30 Quartz Crystal, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0404, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Obtained Mystic Panda Costume", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Mystic Panda Gloves requires 1 Worldstone, 30 Quartz Crystal, 20 Hard Shell, 10 Earthen Element Fragment and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2475, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2475, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0594, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Obtained Mystic Panda Gloves", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Mystic Panda Shoes requires 1 Crystal Zionstone, 30 Quartz Crystal, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2481, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2481, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0754, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Obtained Mystic Panda Shoes", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Mystic Panda Cap requires 1 Sky Shadestone, 30 Quartz Crystals, 20 Life Stones, 10 Meteorites and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2485, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2485, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2219, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Obtained Mystic Panda Cap", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"To redeem Crimson Rod requires 1 Abrade Orestone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2462, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2462, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0112, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Obtained Crimson Rod", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Sorry, you do not have the required items to redeem")

	Talk( 9, "Bewildered Researcher E: These good items are also known as Sage set!" )
	Text( 9, "Redeem Robe of the Sage (Phyllis Seal Master)", JumpPage, 10)
	Text( 9, "Redeem Gloves of the Sage (Phyllis Seal Master)", JumpPage, 11)
	Text( 9, "Redeem Boots of the Sage (Phyllis Seal Master)", JumpPage, 12)
	Text( 9, "Redeem Crimson Rod (Phyllis Seal Master)", JumpPage, 7)

	Talk(10,"To redeem Robe of the Sage requires 1 Dim Jadestone, 30 Quartz Crystal, 20 Hard Shell, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0402, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Obtained Robe of the Sage", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"To redeem Gloves of the Sage requires 1 Rainbow Soothstone, 30 Life Stone Fragment, 20 Extender, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0592, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Obtained Gloves of the Sage", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"To redeem Boots of the Sage requires 1 Pearl Soothstone, 30 Agate Crystal, 20 Animal Skin, 10 Magical Bone and 50000")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0752, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Obtained Boots of the Sage", MultiTrigger, GetMultiTrigger(), 1)
end

------------------------------------------------------------
-- 加勒比海盗版本 -----  迷失的考古队成员F
------------------------------------------------------------
function mmm_talk28()
	Talk( 1, "Bewildered Researcher F: Hi, I have been lost for a long time. I got some good stuff with me, do you wish to do an exchange?" )
	Text( 1, "Redeem Apollo set", JumpPage, 2)

	Talk( 2, "Bewildered Researcher F: These good items are also known as Apollo set!" )
	Text( 2, "Redeem Vest of Apollo (Lance, Phyllis Sharpshooter)", JumpPage, 3)
	Text( 2, "Redeem Gloves of Apollo (Lance, Phyllis Sharpshooter) ", JumpPage, 4)
	Text( 2, "Redeem Boots of Apollo (Lance, Phyllis Sharpshooter)", JumpPage, 5)
	Text( 2, "Redeem Twilight (Lance, Phyllis Sharpshooter)", JumpPage, 6)

	Talk(3,"To redeem Vest of Apollo requires 1 Hervo Bloodstone, 30 Clarity Crystal, 20 Animal Skin, 10 Splendor Cloth and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2469, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2469, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0400, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Obtained Vest of Apollo", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"To redeem Gloves of Apollo requires 1 Zest Jadestone, 30 Clarity Crystals, 20 Hard Shells, 10 Earthen Element Fragments and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0590, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Obtained Gloves of Apollo", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"To redeem Boots of Apollo requires 1 Goddess Tearstone, 30 Clarity Crystal, 20 Special Gas, 10 Pearl and 50000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0750, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Obtained Boots of Apollo", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"To redeem Twilight requires 1 Oceanic Soulstone, 30 Agate Crystal, 20 Extender, 10 Magical Bone and 100000G")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2465, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2465, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0118, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Obtained Twilight", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Sorry, you do not have the required items to redeem")
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  陆地一层传送使
------------------------------------------------------------
function mmm_talk16()
	--地图名称信息
	local CurMapName = "jialebi"


	--海军码头坐标
	local GoTo01X = 1250
	local GoTo01Y = 1010
	local GoTo01M = CurMapName

	Talk( 1, "Want to find out what is underneath? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Below leads to the Underground Dock of the Deathsouls. Are you brave enough to enter?" )
	Text( 2, "Yes! Go to Underground Dock!", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  实验室看守人A
------------------------------------------------------------
function mmm_talk17()
	--地图名称信息
	local CurMapName = "jialebi"

	--实验室A坐标
	local GoTo01X = 968
	local GoTo01Y = 828
	local GoTo01M = CurMapName

	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )
	
	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "The Research Room of the Deathsouls is on the inside. Do you dare to enter?" )
	Text( 2, "Go to Research Room A!", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  实验室看守人B2386
------------------------------------------------------------
function mmm_talk18()
	--地图名称信息
	local CurMapName = "jialebi"


	--实验室B坐标
	local GoTo01X = 968
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "Do you wish to know what is inside? Bring me 20 Soul of Undead and I will let you in!" )
	Text( 1, "Bring me in", JumpPage, 2 )
	Text( 1, "Forget it! I do not want to go", JumpPage, 3 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 2386, 20 )
	TriggerAction( 1, TakeItem, 2386, 20 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Research Room B consists of a terrifying Deathsoul Commander. Do you still wish to enter?" )
	Text( 2, "Go to Research Room B!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You have not collect 20 Souls of Undead", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  实验室看守人C
------------------------------------------------------------
function mmm_talk19()
	--地图名称信息
	local CurMapName = "jialebi"


	--实验室C坐标
	local GoTo01X = 968
	local GoTo01Y = 993
	local GoTo01M = CurMapName

	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Research Room C is on the other side" )
	Text( 2, "Yes! Go to Research Room C!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold", CloseTalk)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地下船坞守卫
------------------------------------------------------------
function mmm_talk20()
	

	Talk( 1, "What are you doing here? You shouldn't be here. It's too dangerous!")
	
	AddNpcMission(7950)
	AddNpcMission(7951)
	AddNpcMission(7952)
	AddNpcMission(7953)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱一层炼狱人
------------------------------------------------------------
function mmm_talk22()
	--地图名称信息
	local CurMapName = "jialebi"


	--地狱二层坐标
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Vile merchant! Never mind...I will pay", JumpPage, 2 )
	Text( 1, "Forget it! I do not have enough money to go", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )


	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Go to Abaddon 2?" )
	Text( 2, "Yes! Go to Abaddon 2!", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "Go away beggar!" )
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0267, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 1 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Obtain Power of Flame", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 1 Warden: Come back again after you have the required items" )
	AddNpcMission(7988)
	AddNpcMission(7989)
	AddNpcMission(7990)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱二层炼狱人
------------------------------------------------------------
function mmm_talk23()
	--地图名称信息
	local CurMapName = "jialebi"


	--地狱一层坐标
	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName

	--地狱三层坐标
	local GoTo02X = 70
	local GoTo02Y = 952
	local GoTo02M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Go to Abaddon 1", JumpPage, 2 )
	Text( 1, "Go to Abaddon 3", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Do you wish to go to Abaddon 1?" )
	Text( 2, "Go to Abaddon 1", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Go to Abaddon 3?" )
	Text( 3, "Yes! Go to Abaddon 3!", MultiTrigger, GetMultiTrigger(),2 )
	
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0268, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 2 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Obtained Power of Wind", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 2 Warden: Come back again after you have the required items" )

	AddNpcMission(7991)
	AddNpcMission(7992)
	AddNpcMission(7993)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱三层炼狱人
------------------------------------------------------------
function mmm_talk24()

	--地图名称信息
	local CurMapName = "jialebi"


	--地狱二层坐标
	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName

	--地狱四层坐标
	local GoTo02X = 209
	local GoTo02Y = 955
	local GoTo02M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Go to Abaddon 2", JumpPage, 2 )
	Text( 1, "Go to Abaddon 4", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Go to Abaddon 2?" )
	Text( 2, "Yes! Go to Abaddon 2!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Do you wish to go to Abaddon 4?" )
	Text( 3, "Go to Abaddon 4", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0269, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 3 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Power of Thunder", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 3 Warden: Come back again after you have the required items" )

	AddNpcMission(7994)
	AddNpcMission(7995)
	AddNpcMission(7996)
end
------------------------------------------------------------
-- 加勒比海盗版本 -----  地狱四层炼狱人
------------------------------------------------------------
function mmm_talk25()

		--地图名称信息
	local CurMapName = "jialebi"


	--地狱三层坐标
	local GoTo01X = 70
	local GoTo01Y = 952
	local GoTo01M = CurMapName

	--藏宝海湾坐标
	local GoTo02X = 690
	local GoTo02Y = 1043
	local GoTo02M = CurMapName


	Talk( 1, "Want to find out what is inside? Pay me 5000G and I will send you in!" )
	Text( 1, "Go back to Abaddon 3", JumpPage, 2 )
	Text( 1, "I want to leave this hellish place", JumpPage, 3 )
	Text( 1, "I heard that you have some good items here", JumpPage, 5 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Go to Abaddon 3?" )
	Text( 2, "Yes! Go to Abaddon 3!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Do you wish to go out?" )
	Text( 3, "Yes! Let me out!", MultiTrigger, GetMultiTrigger(), 2 )
	
	Talk( 4, "You do not have enough gold" ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0270, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Abaddon 4 Warden: Hi, I got some good stuff with me but don't expect me to give it for free. Bring me 1 Kal Runestone and I might reconsider" )
	Text( 5, "Power of Frost", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Abaddon 4 Warden: Come back again after you have the required items" )
	AddNpcMission(7997)
	AddNpcMission(7998)
	AddNpcMission(7999)
end


------------------------------------------------------------
-- 藏宝海湾 传送使
------------------------------------------------------------

function mmm_talk29()
	--取消传送返回选择传送地点的对话内容和页面编号
	local ReSelectTalk = "I need to reconsider…"
	local ReSelectPage = 1

	--取消传送和退出传送的对话和页面编号
	local CancelSelectTalk = "Forget it…I will stay here"
	local CancelSelectPage = 7

	--地图名称信息
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	--白银之城坐标
	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	--沙岚之城坐标
	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	--冰狼堡坐标
	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "Teleporter: Do you wish to leave the beautiful Treasure Gulf?" )
	Text( 1, "Go to Argent City!", JumpPage, 2 )
	Text( 1, "Go to Shaitan City!", JumpPage, 3 )
	Text( 1, "Go to Icicle City!", JumpPage, 4 )
	Text( 1, "Record Spawn point", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "Teleports to Argent City? No problem! Please pay 500G." )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "I love Shaitan City! Please pay 500G" )
	Text( 3, "Teleport",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "Teleports to Icicle City? No problem! Please pay 500G." )
	Text( 4, "Teleport",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 6, "Sorry! You do not have enough gold to teleport." )

	Talk( 7, "Remember to look for me if you need teleportation services", CloseTalk )
	Talk( 8, "..................^$&#&^%.................." )



	InitTrigger()
	TriggerAction( 1, JumpPage, 1 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	

end


-- 女神
------------------------------------------------------------

	
function mmm_talk30()

	Talk( 1, "Hello stranger. How may I help you?")
	Text( 1, "I Want To Rebirth For The Third Time", JumpPage, 2)
	Text( 1, "Nothing", CloseTalk)

	Talk( 2, "During your legendary quest, you have been sucessful. Choose your reward and you shall recieve it")
	Text( 2, "Become a Crusader to uphold justice and peace", GetChaName1_born3, 1)
	Text( 2, "Become a Champion to protect companion", GetChaName2_born3, 1)
	Text( 2, "Become a Voyager to sail the seas", GetChaName3_born3, 1)
	Text( 2, "Become a Sharpshooter to vanquish your enemies", GetChaName4_born3, 1)
	Text( 2, "Become a Cleric to heal the sick", GetChaName5_born3, 1)
	Text( 2, "Become a Seal Master to do anything", GetChaName6_born3, 1)
	Text( 2, "I dont want to rebirth right now", CloseTalk)
	
	
end

function dydz_talk()


	Talk( 1, "Abaddon Vagabond: \"If you treasured your life, leave now! I have seen too much adventurers like you!\"" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 40,74, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "What are you thinking? You don't have a boat that you can use anymore. Now scram if you value your life!" )
	Talk( 4, "Don't think that your boat will be repaired for free here. Dock your boat and prepare a fee of 1000G." )
	Talk( 5, "Don't think you can refuel your ship here for free. Dock your ship and prepare a fee of 200G." )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	Talk( 7, "Abaddon Vagabond: \"………………^$&#&^%………………\"" )

end


function dysr_talk ()

	Talk( 1, "Abaddon Merchant: On command of my lord, Death. I am here to provide help to you brave warriors, and to witness your deaths. Haha!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Repair", OpenRepair)

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	637	)
	Other(	819	)
	Other(	869	)
	Other(	874	)


end 


function zsts_talk()
	
	Talk( 1, "Rebirth Angel: Only the best and elite Navy or Pirates will have a chance to get rebirth!")
	Text( 1, "More about Rebirth", JumpPage, 2)
	Text( 1, "I wish to Rebirth", JumpPage, 6)
	
	
	Talk( 2, "Rebirth Angel: What do you need to know?")
	Text( 2, "Classes after rebirth", JumpPage, 3)
	Text( 2, "Regarding stats and skill points after rebirth", JumpPage, 4)
	Text( 2, "Regarding conditions of rebirth", JumpPage, 5)
	
	Talk( 3, "Players can reselect their class after rebirth: Lance can become Crusader, Voyager or Sharpshooter. Carsise can become Champion. Phyllis can become Crusader, Cleric, Seal Master, Voyager or Sharpshooter. Ami can become Cleric, Seal Master or Voyager")
	Text( 3, "Thank you, I understand", CloseTalk)

	Talk( 4, "All attributes will be resetted upon rebirth and all additional stat points gained from Career Lot or Birthday Cake will remained for reallocation. Also, all skill will be resetted and skill points will be returned for reallocation.")
	Text( 4, "Thank you, I understand", CloseTalk)

	Talk( 5, "To be rebirth, you will need to complete quest Phoenix Rebirth which can be activated at the Goddess. Look for me after you obtained the Rebirth Stone or you can come directly to me if you have the Rebirth Card.")
	Text( 5, "Thank you, I understand", CloseTalk)

	Talk( 6, "Goddess: What would you like to be after rebirth" )
	Text( 6, "Become a Crusader to uphold justice and peace", GetChaName1_born, 1)
	Text( 6, "Become a Champion to protect companion", GetChaName2_born, 1)
	Text( 6, "Become a Voyager to sail the seas", GetChaName3_born, 1)
	Text( 6, "Become a Sharpshooter to vanquish your enemies", GetChaName4_born, 1)
	Text( 6, "Become a Cleric to heal the sick", GetChaName5_born, 1)
	Text( 6, "Become a Seal Master to do anything", GetChaName6_born, 1)
	Text( 6, "I dont want to rebirth right now", CloseTalk)



end


------------------------------------------------------------
--藏宝海湾 百慕大守护者（66900，106400）
------------------------------------------------------------

function k_talk002()


	Talk( 1, "百慕大守护者:“海的那边是更遥远的海,山的尽头是更苍翠的山,我早已忘却何年何月何日流落到此!来自远方的朋友,如果你能找到一个叫春风镇的地方,请捎上一枚思乡者的祝福.”" )
	Text( 1, "兑换百慕大宝箱", JumpPage, 2)

	Talk( 2, "百慕大守护者:我是百慕大的守护者,我流浪到这里已经很多年了,这么多年在岛上没有食物充饥,请给我一张“蛋糕品尝券”吧!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1097, 1)             ------------蛋糕品尝券
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 1097, 1)
	TriggerAction(1, GiveItem, 1104, 1, 4)              ----------百慕大宝箱
	TriggerFailure(1, JumpPage, 3)
	Text(2,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "你连一个流浪者的心愿都不满足,我一定要!!要惩罚你!呜呜呜... ...年轻人,如果你背包格已满或是锁上了,我也无法品尝到美味的蛋糕!")

	Text( 1, "兑换10个成长快餐", JumpPage, 4)

	Talk( 4, "百慕大守护者:我是百慕大的守护者,我流浪到这里已经很多年了,这么多年在岛上没有可口的食物,请给我一个“超级寿司”品尝一下吧!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2989, 1)             ------------超级寿司
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 2989, 1)
	TriggerAction(1, GiveItem, 0992, 10, 4)              ----------成长快餐10个
	TriggerFailure(1, JumpPage, 5)
	Text(4,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 5, "现在的年轻人喔,咳咳... ...怎么身上一样好吃的也不带?请仔细检查下你的背包是否有空位或是背包已上锁!")

end

------------------------------------------------------------
--天堂 誉之神仆（175440,90279）
------------------------------------------------------------

function k_talk003()


	Talk( 1, "誉之神仆:“神之光芒普照加纳,神之祝福在你我心间传承,加纳女神的信仰者将得到永生!我是第110代誉之神仆索莉亚,非常高兴与您相会!" )
	Text( 1, "兑换无双宝箱", JumpPage, 2)

	Talk( 2, "誉之神仆:据说承载了真神圣衣的无双宝箱需要85级神装宝箱方可获得,远到而来的朋友您有兴趣兑换吗?")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 5709, 1)             ------------85级神装宝箱
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5709, 1)
	TriggerAction(1, GiveItem, 5714, 1, 4)              ----------无双宝箱
	TriggerFailure(1, JumpPage, 3)
	Text(2,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "请确认您的背包是否锁定或是您的背包格已满.")

	Text( 1, "兑换真龙宝箱", JumpPage, 4)

	Talk( 4, "誉之神仆:兑换真龙宝箱不仅需要您有一颗信仰女神的灵魂,还需要一张转生卡,您确定兑换吗?")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2941, 1)             ------------转生卡
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 2941, 1)
	TriggerAction(1, GiveItem, 5712, 1, 4)              ----------真龙宝箱
	TriggerFailure(1, JumpPage, 5)
	Text(4,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 5, "请确认您的背包是否锁定或是您的背包格已满.")

end


