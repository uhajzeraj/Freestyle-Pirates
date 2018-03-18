--------------------------------------------------------------------------
--									--
--									--
--		NPCScript03.lua Created by Robin 2005.6.1.		--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading NPCScript03.lua" )


jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


----------------------------------------------------------
--							--
--							--
--		白银城[交易员·郝洛甫]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk10 ()
	
	
	Talk( 1, "Chiroro: Hi! I am the Harbor Operator. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, TradeBerthList, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)
	
	Talk( 2, "Chiroro: Sorry, you do not have any ships docked in Argent Harbor . Unable to trade." )
	
	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)
	

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")

	InitGoods(1)
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

	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission	(1226)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<交易员·郝洛甫



----------------------------------------------------------
--							--
--							--
--		雷霆堡[交易员·桑吉]			--
--							--
--		103877,127848				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk27 ()
	
	
	Talk( 1, " Sanjay: Hi, Baby! I am in charge of the trade here…and girls too." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, TradeBerthList, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)
	
	Talk( 2, "Sanjay: Sorry! Your ship is not docked in Thundoria Harbor. Unable to trade." )	
	
	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")
	
	
	
	InitGoods( 2)
	SaleGoodsData(	1	,	4597	,	480	,	436	,	97	)
	SaleGoodsData(	2	,	4598	,	300	,	472	,	105	)
	SaleGoodsData(	2	,	4599	,	240	,	508	,	113	)
	SaleGoodsData(	3	,	4600	,	60	,	571	,	127	)
	SaleGoodsData(	3	,	4601	,	40	,	643	,	143	)
	
	BuyGoodsData(0,	4573	,	-1	,	554	,	123	)
	BuyGoodsData(0,	4574	,	-1	,	711	,	158	)
	BuyGoodsData(0,	4576	,	-1	,	872	,	193	)
	BuyGoodsData(0,	4581	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4583	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4587	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4591	,	-1	,	880	,	195	)
	BuyGoodsData(0,	4593	,	-1	,	1029	,	229	)
	BuyGoodsData(0,	4595	,	-1	,	976	,	651	)
	BuyGoodsData(0,	4553	,	-1	,	826	,	183	)
	BuyGoodsData(0,	4555	,	-1	,	793	,	177	)
	BuyGoodsData(0,	4556	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4557	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4559	,	-1	,	920	,	205	)
	BuyGoodsData(0,	4560	,	-1	,	1039	,	231	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	831	,	185	)
	BuyGoodsData(0,	4569	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4547	,	-1	,	100	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	450	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)
	BuyGoodsData(0,	3913	,	-1	,	1248	,	832 	)
	BuyGoodsData(0,	3912	,	-1	,	1395	,	930 	)
	BuyGoodsData(0,	3914	,	-1	,	1614	,	1077	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission	(1021)
	AddNpcMission	(1077)
	AddNpcMission	(1133)
	AddNpcMission	(1184)

end 

----------------------------------------------------------
--							--
--							--
--		沙岚城[船工·弗兰克]			--
--							--
--		90391,366735				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk60 ()
	
	Talk( 1, "Franklin: Hi! I learnt my ship building skill in Argent City. You can call me Franklin." )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Ships limit reached. Unable to build more ship" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Build Ship", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, BoatLevelBerthList, 3 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Upgrade ship", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Franklin: Yo! Want to set sail? Then you will need a good ship! Look at my ships and see if there is any to your liking. To level up your ship, come back when it has gained enough experience from sailing or killing monsters out in the sea." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 3 )
	Text( 2, "Build Guppy", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 3 )
	Text( 2, "Build Windseeker", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 3 )
	Text( 2, "Build Swordfish", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 3 )
	Text( 2, "Build Turtle", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerAction( 1, CreateBoat, 14, 3 )
	Text( 2, "Build Torrent", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerAction( 1, CreateBoat, 15, 3 )
	Text( 2, "Build Goddess", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Franklin: You need to have your ship docked at my harbor in order to level it. Ships get better as they level up. To level up your ship, come back when it has gained enough experience from sailing or killing monsters out in the sea." )

	AddNpcMission	(1116)
	AddNpcMission	(158)
	AddNpcMission	(159)
	AddNpcMission	(160)
	
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<船厂工人·弗兰克

------------------------------------------------------------
-- 白银城-----海事所助理·罗拉娜
------------------------------------------------------------

function r_talk150()

	Talk( 1, "Alena: Hi! I am the Maritime Assistant. Can I help you?" )

	AddNpcMission 	(437)
	AddNpcMission 	(439)
	AddNpcMission 	(441)


end

------------------------------------------------------------
-- 白银城-----船工·斯巴克
------------------------------------------------------------
function r_talk151 ()
		
	Talk( 1, "Sinbad: Yo! Want to get out to the sea? How can you do so without a good ship? I offer the best ship around here. Come have a look!" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Ships limit reached. Unable to build more ship" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Build Ship", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, BoatLevelBerthList, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Upgrade ship", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Sinbad: What type of ships you wish to build? I have a few varieties. Please have a look." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 1 )
	Text( 2, "Build Guppy", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 1 )
	Text( 2, "Build Transporter", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 1 )
	Text( 2, "Build Flying Fish", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 1 )
	Text( 2, "Build Swordfish", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Sinbad: I guess your ship is not docked here. You need to dock here to upgrade the level when it has gained enough experience from sailing or killing monsters out in the sea." )
end 

------------------------------------------------------------
-- 白银城-----海港指挥·雪莉
------------------------------------------------------------

function r_talk152()

	Talk( 1, " Shirley: Hi! I am the Harbor Operator for Argent. I am in charge of all ships that is docked in this harbor. Look for me if you want to set sail." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 1 )
	--TriggerAction( 1, RemoveYS )
	TriggerAction( 1, LuanchBerthList, 1, 2260,2829, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, RepairBerthList, 1 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, SupplyBerthList, 1 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 1 )
	TriggerAction( 1, SalvageBerthList, 1 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )

	AddNpcMission ( 289 )
	AddNpcMission ( 290 )


end

------------------------------------------------------------
-- 沙岚城-----海港指挥·马克
------------------------------------------------------------

function r_talk153()

	Talk( 1, "Mark: Hi! I am the Harbor Operator for Shaitan Harbor. Look for me if you want to set sail." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 832, 3698, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )



end

------------------------------------------------------------
--冰狼堡-----船工·乔治
------------------------------------------------------------
function r_talk155 ()
		
	Talk( 1, "George: Hey you! Want to go sailing? How can you do so without a good ship! Come have a look at what I have!" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Ships limit reached. Unable to build more ship" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Build Ship", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, BoatLevelBerthList, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Upgrade ship", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "George: What type of ship you wish to build? I have a few models for you to choose from. I have some discount for you if you are interested." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerAction( 1, CreateBoat, 2, 4 )
	Text( 2, "Build Transporter", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 4 )
	Text( 2, "Build Windseeker", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 4 )
	Text( 2, "Build Flying Fish", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 4 )
	Text( 2, "Build Turtle", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerAction( 1, CreateBoat, 16, 4 )
	Text( 2, "Build Eagle", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "George: You need to have your ship docked at my harbor in order to level it. Ships get better as they level up. To level up your ship, come back when it has gained enough experience from sailing or killing monsters out in the sea." )
		
end 

------------------------------------------------------------
-- 冰狼堡-----海港指挥·席林
------------------------------------------------------------

function r_talk154()

	Talk( 1, "Silion: Hi! Hi, I am the Harbor Operator for Icicle City. All procedure must come through me. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 4 )
	TriggerAction( 1, LuanchBerthList, 4, 1196,673, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, RepairBerthList, 4 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, SupplyBerthList, 4 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 4 )
	TriggerAction( 1, SalvageBerthList, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )

	AddNpcMission ( 294 )
	AddNpcMission ( 295 )

end


------------------------------------------------------------
-- 海风岛-----海港指挥·路凡
------------------------------------------------------------

function r_talk178()

	Talk( 1, "Lufan: Hi! I am the Harbor Operator. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 5 )
	TriggerAction( 1, LuanchBerthList, 5, 3240, 3314, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, RepairBerthList, 5 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, SupplyBerthList, 5 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 5 )
	TriggerAction( 1, SalvageBerthList, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	
end

------------------------------------------------------------
-- 碎冰岛-----海港指挥·诺尔罗德
------------------------------------------------------------

function r_talk179()

	Talk( 1, "Noel: Hi! I am the Harbor Operator around here. Anything I can help you with?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 6 )
	TriggerAction( 1, LuanchBerthList, 6, 2301, 1144, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, RepairBerthList, 6 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, SupplyBerthList, 6 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 6 )
	TriggerAction( 1, SalvageBerthList, 6 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )

end

------------------------------------------------------------
-- 雪贼岛-----海港指挥·鲁兹鲁伊
------------------------------------------------------------

function r_talk180()

	Talk( 1, "Lucci: Hi! I am the Harbor Operator. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 7 )
	TriggerAction( 1, LuanchBerthList, 7, 3628, 770, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, RepairBerthList, 7 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, SupplyBerthList, 7 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 7 )
	TriggerAction( 1, SalvageBerthList, 7 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )

end

------------------------------------------------------------
-- 萨拉补给站-----海港指挥·温亚塔
------------------------------------------------------------

function r_talk181()

	Talk( 1, "Whitney: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )


	AddNpcMission	(763)
	AddNpcMission(	1742	)
	AddNpcMission (	1938	)
	AddNpcMission (	1953	)
----------------吉尼斯---海港指挥·温亚塔--03
	AddNpcMission	(5511)
	AddNpcMission	(5512)
	

end

------------------------------------------------------------
-- 阿尔补给站-----海港指挥·达耶达
------------------------------------------------------------

function r_talk182()

	Talk( 1, "Daruka: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )

	AddNpcMission	(379)
	AddNpcMission	(380)
----------------吉尼斯---海港指挥·达耶达--03
	AddNpcMission (5533 )
	AddNpcMission (5534 )
end

------------------------------------------------------------
-- 哈尔补给站-----海港指挥·瓦雷米
------------------------------------------------------------

function r_talk183()

	Talk( 1, "Whitcombe: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 
--Text( 1, "Obtained Fairy Soul", JumpPage, 6 ) 
	
	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 50 )
	TriggerAction( 1, TakeItem, 3116, 50 )
	TriggerAction( 1, GiveItem, 3337, 1, 4 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "Whitcombe: Hi! You wish to have a Fairy Soul? Then you must bring me 50 Elven Fruits." )
	Text( 6, "I have enough Elven Fruits", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 7, "Whitcombe: Hey! I said before. You must give me 50 Elven Fruits." )


	AddNpcMission(	1740	)
	AddNpcMission (	1936	)
	AddNpcMission (	1951	)
	AddNpcMission (	381	)
	AddNpcMission (	382	)
----------------吉尼斯---海港指挥·瓦雷米--03
	AddNpcMission (5531 )
	AddNpcMission (5532 )
	
end

------------------------------------------------------------
-- 弗里敦补给站-----海港指挥·法第尔
------------------------------------------------------------

function r_talk184()

	Talk( 1, "Fardell: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )


	AddNpcMission(	1739	)
	AddNpcMission (	1935	)
	AddNpcMission (	1950	)
	AddNpcMission (	383	)
	AddNpcMission (	384	)
	AddNpcMission (	385	)

	----------------吉尼斯---海港指挥·法第尔--03
	AddNpcMission (5529 )
	AddNpcMission (5530 )



end

------------------------------------------------------------
-- 海风岛-----交易员·布尔兹
------------------------------------------------------------

function r_talk185()

	Talk( 1, "Burgess: Hi! I am in charge of the trade here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 5 )
	TriggerAction( 1, TradeBerthList, 5 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)	

	Talk( 2, "Burgess: Sorry! You ship is not docked in Zephyr Harbor. Unable to trade." )	

	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")

	InitGoods(5)
	SaleGoodsData(	0	,	4552	,	800	,	315	,	70	)
	SaleGoodsData(	1	,	4553	,	700	,	405	,	90	)
	SaleGoodsData(	1	,	4554	,	480	,	477	,	106	)

	BuyGoodsData(0,	4574	,	-1	,	697	,	155	)
	BuyGoodsData(0,	4578	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4580	,	-1	,	972	,	648	)
	BuyGoodsData(0,	4582	,	-1	,	664	,	147	)
	BuyGoodsData(0,	4584	,	-1	,	818	,	181	)
	BuyGoodsData(0,	4586	,	-1	,	895	,	199	)
	BuyGoodsData(0,	4588	,	-1	,	969	,	646	)
	BuyGoodsData(0,	4590	,	-1	,	725	,	161	)
	BuyGoodsData(0,	4592	,	-1	,	1017	,	226	)
	BuyGoodsData(0,	4594	,	-1	,	1071	,	238	)
	BuyGoodsData(0,	4598	,	-1	,	888	,	197	)
	BuyGoodsData(0,	4599	,	-1	,	955	,	213	)
	BuyGoodsData(0,	4601	,	-1	,	991	,	661	)
	BuyGoodsData(0,	4557	,	-1	,	981	,	218	)
	BuyGoodsData(0,	4560	,	-1	,	1124	,	249	)
	BuyGoodsData(0,	4563	,	-1	,	976	,	217	)
	BuyGoodsData(0,	4566	,	-1	,	763	,	169	)
	BuyGoodsData(0,	4569	,	-1	,	981	,	218	)
	BuyGoodsData(0,	4572	,	-1	,	950	,	211	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



	AddNpcMission	(760)
		
end

------------------------------------------------------------
-- 碎冰岛-----交易员·赛瑟尼
------------------------------------------------------------

function r_talk186()

	Talk( 1, "Sacenis: Hi! I am in charge of the trade here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 6 )
	TriggerAction( 1, TradeBerthList, 6 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)

	Talk( 2, "Sacenis: Sorry, you do not have any ships docked in Glacier Harbor. Unable to trade." )
	
	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")

	InitGoods(6)
	SaleGoodsData(	1	,	4555	,	480	,	405	,	90	)
	SaleGoodsData(	2	,	4556	,	300	,	468	,	104	)
	SaleGoodsData(	2	,	4557	,	240	,	522	,	116	)

	BuyGoodsData(0,	4573	,	-1	,	554	,	123	)
	BuyGoodsData(0,	4574	,	-1	,	711	,	158	)
	BuyGoodsData(0,	4575	,	-1	,	780	,	173	)
	BuyGoodsData(0,	4585	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4586	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4590	,	-1	,	699	,	155	)
	BuyGoodsData(0,	4592	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4594	,	-1	,	997	,	221	)
	BuyGoodsData(0,	4596	,	-1	,	1027	,	685	)
	BuyGoodsData(0,	4597	,	-1	,	855	,	190	)
	BuyGoodsData(0,	4600	,	-1	,	857	,	571	)
	BuyGoodsData(0,	4554	,	-1	,	991	,	221	)
	BuyGoodsData(0,	4558	,	-1	,	828	,	184	)
	BuyGoodsData(0,	4559	,	-1	,	910	,	203	)
	BuyGoodsData(0,	4562	,	-1	,	819	,	183	)
	BuyGoodsData(0,	4563	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4566	,	-1	,	831	,	185	)
	BuyGoodsData(0,	4569	,	-1	,	1126	,	251	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
		
	AddNpcMission	(761)
end

------------------------------------------------------------
-- 雪贼岛-----交易员·肥鲸德拉德
------------------------------------------------------------

function r_talk187()

	Talk( 1, "Dilady: Hi, I am the Harbor Operator. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 7 )
	TriggerAction( 1, TradeBerthList, 7 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)

	Talk( 2, "Dilady: Sorry, you do not have any ships docked in Outlaw Harbor. Unable to trade." )	

	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")


	InitGoods(7)
	SaleGoodsData(	2	,	4558	,	300	,	450	,	100	)
	SaleGoodsData(	2	,	4559	,	240	,	495	,	110	)
	SaleGoodsData(	3	,	4560	,	60	,	571	,	127	)

	BuyGoodsData(0,	4576	,	-1	,	898	,	199	)
	BuyGoodsData(0,	4577	,	-1	,	930	,	207	)
	BuyGoodsData(0,	4585	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4587	,	-1	,	938	,	625	)
	BuyGoodsData(0,	4589	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4591	,	-1	,	844	,	187	)
	BuyGoodsData(0,	4593	,	-1	,	972	,	216	)
	BuyGoodsData(0,	4595	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4597	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4599	,	-1	,	945	,	210	)
	BuyGoodsData(0,	4600	,	-1	,	866	,	577	)
	BuyGoodsData(0,	4554	,	-1	,	1020	,	227	)
	BuyGoodsData(0,	4555	,	-1	,	793	,	177	)
	BuyGoodsData(0,	4556	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4557	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4561	,	-1	,	808	,	179	)
	BuyGoodsData(0,	4566	,	-1	,	876	,	195	)
	BuyGoodsData(0,	4569	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4572	,	-1	,	924	,	205	)



	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


	AddNpcMission	(762)	
end

------------------------------------------------------------
-- 冰雪岛-----海港指挥·波尔
------------------------------------------------------------

function r_talk188()

	Talk( 1, "Paul: Hi! I am the Harbor Operator. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 8 )
	TriggerAction( 1, LuanchBerthList, 8, 2351, 767, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, RepairBerthList, 8 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, SupplyBerthList, 8 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 8 )
	TriggerAction( 1, SalvageBerthList, 8 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	
end

------------------------------------------------------------
-- 鸣沙岛-----海港指挥·托玛
------------------------------------------------------------

function r_talk189()

	Talk( 1, "Tomas: Hi, I am the harbor operator. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 9 )
	TriggerAction( 1, LuanchBerthList, 9, 1769, 3788, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, RepairBerthList, 9 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, SupplyBerthList, 9 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 9 )
	TriggerAction( 1, SalvageBerthList, 9 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
	
end

------------------------------------------------------------
-- 真爱岛-----海港指挥·夏德利
------------------------------------------------------------
function r_talk190()

	Talk( 1, "Xad: Hi, I am the Harbor Operator. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 10 )
	TriggerAction( 1, LuanchBerthList, 10, 2527, 2358, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, RepairBerthList, 10 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, SupplyBerthList, 10 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 10 )
	TriggerAction( 1, SalvageBerthList, 10 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
end

------------------------------------------------------------
-- 苏港补给站-----海港指挥·鲁西
------------------------------------------------------------
function r_talk191()

	Talk( 1, "Luigi: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )
	 -------------吉尼斯--苏港补给站,海港指挥·鲁西(464,468)--03
	AddNpcMission (5527 )
	AddNpcMission (5528 )


end

------------------------------------------------------------
-- 埃弗里补给站-----海港指挥·布纽
------------------------------------------------------------
function r_talk192()

	Talk( 1, "Buni: Hi, I am the harbor operator. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )

	AddNpcMission ( 304 )
	AddNpcMission ( 305 )
	AddNpcMission(	1743	)
	AddNpcMission (	1939	)
	AddNpcMission (	1954	)
	AddNpcMission (	386	)
	AddNpcMission (	387	)

	----------------吉尼斯---海港指挥·布纽--03
	AddNpcMission (5525 )
	AddNpcMission (5526 )
end


------------------------------------------------------------
-- 拉古补给站-----海港指挥·多廉达
------------------------------------------------------------
function r_talk193()

	Talk( 1, "Domoru: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )

	AddNpcMission(	1441	)
	AddNpcMission (	1931	)

	----------------吉尼斯---海港指挥·多廉达--03
	AddNpcMission (5523 )
	AddNpcMission (5524 )


end

------------------------------------------------------------
-- 其索单补给站-----海港指挥·特巴齐尔
------------------------------------------------------------
function r_talk194()

	Talk( 1, "Teba: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )

end

------------------------------------------------------------
-- 穆穆尔补给站-----海港指挥·巴奥
------------------------------------------------------------
function r_talk195()

	Talk( 1, "Baros: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )

	AddNpcMission ( 291 )
	AddNpcMission ( 292 )
	AddNpcMission ( 293 )
	AddNpcMission(	1443	)
	AddNpcMission (	1932	)

	


end

------------------------------------------------------------
-- 小肯补给站-----海港指挥·迪迪萨
------------------------------------------------------------
function r_talk196()

	Talk( 1, "Didane: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )
	----------------吉尼斯---海港指挥·迪迪萨--03
	AddNpcMission (5515 )
	AddNpcMission (5516 )
end

------------------------------------------------------------
-- 肖沸补给站-----海港指挥·丹尼斯
------------------------------------------------------------
function r_talk197()

	Talk( 1, "Dannis: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )

	----------------1.7
	AddNpcMission (5133 )
	AddNpcMission (5134 )
	AddNpcMission (5135 )

	----------------吉尼斯---海港指挥·丹尼斯--03
	AddNpcMission (5513 )
	AddNpcMission (5514 )
end

------------------------------------------------------------
-- 埃皮杜补给站-----海港指挥·索尔
------------------------------------------------------------
function r_talk198()

	Talk( 1, "Soc: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )
	----------------吉尼斯---海港指挥·索尔--03
	AddNpcMission (5517 )
	AddNpcMission (5518 )
end

------------------------------------------------------------
-- 冰雪岛-----交易员·西尔班
------------------------------------------------------------

function r_talk199()

	Talk( 1, "Sibun: Hi! I am in charge of the trade here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8 )
	TriggerAction( 1, TradeBerthList, 8 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)

	Talk( 2, "Sibun: Sorry! You do not have any ships docked in Harbor of Chill. Unable to trade" )	

	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")

	InitGoods(8)
	SaleGoodsData(	1	,	4561	,	480	,	400	,	89	)
	SaleGoodsData(	2	,	4562	,	300	,	436	,	97	)
	SaleGoodsData(	2	,	4563	,	240	,	468	,	104	)

	BuyGoodsData(0,	4578	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4580	,	-1	,	1056	,	705	)
	BuyGoodsData(0,	4586	,	-1	,	936	,	208	)
	BuyGoodsData(0,	4588	,	-1	,	1042	,	695	)
	BuyGoodsData(0,	4590	,	-1	,	673	,	149	)
	BuyGoodsData(0,	4592	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4594	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4596	,	-1	,	955	,	637	)
	BuyGoodsData(0,	4598	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4599	,	-1	,	988	,	219	)
	BuyGoodsData(0,	4601	,	-1	,	1049	,	699	)
	BuyGoodsData(0,	4554	,	-1	,	1077	,	239	)
	BuyGoodsData(0,	4556	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4558	,	-1	,	837	,	186	)
	BuyGoodsData(0,	4559	,	-1	,	920	,	205	)
	BuyGoodsData(0,	4560	,	-1	,	1039	,	231	)
	BuyGoodsData(0,	4566	,	-1	,	854	,	189	)
	BuyGoodsData(0,	4569	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission(	7916)
	AddNpcMission(	7987)
	AddNpcMission(	7917)
	AddNpcMission(	7918)

	
end

------------------------------------------------------------
-- 鸣沙岛-----交易员·米索亚斯
------------------------------------------------------------

function r_talk200()

	Talk( 1, "Mickey: Hi! I am in charge of the trade here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9 )
	TriggerAction( 1, TradeBerthList, 9 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)

	Talk( 2, "Mickey: Sorry! You do not have any ship docked at Canary Harbor. Unable to trade." )	
	
	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")

	InitGoods(9)
	SaleGoodsData(	0	,	4564	,	800	,	283	,	63	)
	SaleGoodsData(	1	,	4565	,	560	,	342	,	76	)
	SaleGoodsData(	1	,	4566	,	360	,	378	,	84	)

	BuyGoodsData(0,	4574	,	-1	,	724	,	161	)
	BuyGoodsData(0,	4575	,	-1	,	798	,	177	)
	BuyGoodsData(0,	4576	,	-1	,	898	,	199	)
	BuyGoodsData(0,	4581	,	-1	,	531	,	119	)
	BuyGoodsData(0,	4582	,	-1	,	651	,	145	)
	BuyGoodsData(0,	4590	,	-1	,	699	,	155	)
	BuyGoodsData(0,	4592	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4596	,	-1	,	1027	,	685	)
	BuyGoodsData(0,	4598	,	-1	,	982	,	219	)
	BuyGoodsData(0,	4601	,	-1	,	1105	,	737	)
	BuyGoodsData(0,	4553	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4554	,	-1	,	963	,	214	)
	BuyGoodsData(0,	4557	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4560	,	-1	,	1268	,	281	)
	BuyGoodsData(0,	4563	,	-1	,	976	,	217	)
	BuyGoodsData(0,	4567	,	-1	,	705	,	157	)
	BuyGoodsData(0,	4568	,	-1	,	860	,	191	)
	BuyGoodsData(0,	4569	,	-1	,	960	,	213	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)




	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end

------------------------------------------------------------
-- 真爱岛-----交易员·尤卡
------------------------------------------------------------

function r_talk201()

	Talk( 1, "Yuka: Hi! I am in charge of the trade here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 10 )
	TriggerAction( 1, TradeBerthList, 10 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)
	
	Talk( 2, "Yuka: Sorry! You do not have any ships docked in Cupid Harbor. Unable to trade" )	

	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")

	InitGoods(10)
	SaleGoodsData(	1	,	4567	,	600	,	360	,	80	)
	SaleGoodsData(	2	,	4568	,	400	,	468	,	104	)
	SaleGoodsData(	2	,	4569	,	240	,	522	,	116	)

	BuyGoodsData(0,	4576	,	-1	,	924	,	205	)
	BuyGoodsData(0,	4577	,	-1	,	999	,	223	)
	BuyGoodsData(0,	4578	,	-1	,	1014	,	225	)
	BuyGoodsData(0,	4582	,	-1	,	664	,	147	)
	BuyGoodsData(0,	4584	,	-1	,	818	,	181	)
	BuyGoodsData(0,	4589	,	-1	,	542	,	121	)
	BuyGoodsData(0,	4593	,	-1	,	904	,	201	)
	BuyGoodsData(0,	4595	,	-1	,	846	,	564	)
	BuyGoodsData(0,	4597	,	-1	,	986	,	219	)
	BuyGoodsData(0,	4599	,	-1	,	1061	,	235	)
	BuyGoodsData(0,	4600	,	-1	,	1017	,	678	)
	BuyGoodsData(0,	4554	,	-1	,	991	,	221	)
	BuyGoodsData(0,	4557	,	-1	,	1126	,	251	)
	BuyGoodsData(0,	4560	,	-1	,	1220	,	271	)
	BuyGoodsData(0,	4563	,	-1	,	943	,	209	)
	BuyGoodsData(0,	4564	,	-1	,	577	,	129	)
	BuyGoodsData(0,	4565	,	-1	,	666	,	149	)
	BuyGoodsData(0,	4570	,	-1	,	550	,	123	)
	BuyGoodsData(0,	4571	,	-1	,	842	,	187	)





	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


end

------------------------------------------------------------
-- 好运岛-----海港指挥·卢克
------------------------------------------------------------
function r_talk202()

	Talk( 1, "Hux: Hi! I am the Harbor Operator. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 11 )
	TriggerAction( 1, LuanchBerthList, 11, 1642, 2005, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, RepairBerthList, 11 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, SupplyBerthList, 11 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 11 )
	TriggerAction( 1, SalvageBerthList, 11 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
end

------------------------------------------------------------
-- 萨迪勒补给站-----海港指挥·乔尔乔尼
------------------------------------------------------------
function r_talk203()

	Talk( 1, "Gregory: Hi! I am in charge of ship refuel. Is there anything you need?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )

	AddNpcMission(	1741	)
	AddNpcMission (	1937	)
	AddNpcMission (	1952	)
	------------------eleven
	AddNpcMission (	5063 )
	AddNpcMission (	5071 )
--------------------1.7
	AddNpcMission ( 5075	)
	AddNpcMission(	5091 )
	AddNpcMission (5105 )
	AddNpcMission (5106 )
	AddNpcMission (5107 )
	AddNpcMission (5108 )
	AddNpcMission (5115 )
	----------------吉尼斯---海港指挥·乔尔乔尼--03
	AddNpcMission (5521 )
	AddNpcMission (5522 )
end

------------------------------------------------------------
-- 卡马赛补给站-----海港指挥·奥登
------------------------------------------------------------
function r_talk204()

	Talk( 1, "Odie: Hi, I am the harbor operator. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )
	----------------吉尼斯---海港指挥·奥登--03
	AddNpcMission (5519 )
	AddNpcMission (5520 )
end

------------------------------------------------------------
-- 思思索补给站-----海港指挥·拉米修
------------------------------------------------------------
function r_talk205()

	Talk( 1, "Ramus: Hi! I am in charge of the ship refuel here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Sorry! Repair need 1000G" )
	Talk( 5, "Sorry! Refuel needs a fee of 200G" )
end

------------------------------------------------------------
-- 好运岛-----交易员·帕德琉斯
------------------------------------------------------------

function r_talk206()

	Talk( 1, "Bowey: Hi! I am in charge of the trade here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 11 )
	TriggerAction( 1, TradeBerthList, 11 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)

	Talk( 2, "Bowey: Sorry, you do not have any ships docked in Harbor of Fortune. Unable to trade." )	

	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")

	InitGoods(11)
	SaleGoodsData(	1	,	4570	,	560	,	270	,	60	)
	SaleGoodsData(	1	,	4571	,	360	,	405	,	90	)
	SaleGoodsData(	2	,	4572	,	200	,	432	,	96	)

	BuyGoodsData(0,	4577	,	-1	,	1059	,	235	)
	BuyGoodsData(0,	4578	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4579	,	-1	,	1049	,	699	)
	BuyGoodsData(0,	4583	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4584	,	-1	,	866	,	193	)
	BuyGoodsData(0,	4589	,	-1	,	537	,	119	)
	BuyGoodsData(0,	4591	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4592	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4597	,	-1	,	986	,	219	)
	BuyGoodsData(0,	4599	,	-1	,	1061	,	235	)
	BuyGoodsData(0,	4600	,	-1	,	1017	,	678	)
	BuyGoodsData(0,	4554	,	-1	,	1106	,	245	)
	BuyGoodsData(0,	4557	,	-1	,	1089	,	243	)
	BuyGoodsData(0,	4560	,	-1	,	1220	,	271	)
	BuyGoodsData(0,	4562	,	-1	,	881	,	195	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4566	,	-1	,	808	,	179	)
	BuyGoodsData(0,	4568	,	-1	,	879	,	195	)
	BuyGoodsData(0,	4569	,	-1	,	981	,	218	)


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()	

	AddNpcMission(	7919)
	AddNpcMission(	7920)
	AddNpcMission(	7921)
	

end

------------------------------------------------------------
-- 雷霆堡军港-----海港指挥·查可夫中尉
------------------------------------------------------------
function r_talk207()

	Talk( 1, "Lt. Wayne: Hi! I am the Harbor Operator. Can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 2 )
	TriggerAction( 1, LuanchBerthList, 2, 1064, 1324, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, RepairBerthList, 2 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, SupplyBerthList, 2 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 2 )
	TriggerAction( 1, SalvageBerthList, 2 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )
end

------------------------------------------------------------
-- 沙岚新城-----交易员·西多夫
------------------------------------------------------------

function r_talk208()

	Talk( 1, "Sidorf: Hi! I am in charge of the trade here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)

	Talk( 2, "Sidorf: Sorry! You do not have any ships docked in Shaitan Harbor. Unable to trade." )

	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")

	InitGoods(3)
	SaleGoodsData(	0	,	4581	,	900	,	270	,	60	)
	SaleGoodsData(	0	,	4582	,	800	,	319	,	71	)
	SaleGoodsData(	1	,	4583	,	700	,	355	,	79	)
	SaleGoodsData(	1	,	4584	,	480	,	405	,	90	)
	SaleGoodsData(	2	,	4585	,	300	,	450	,	100	)
	SaleGoodsData(	2	,	4586	,	240	,	481	,	107	)
	SaleGoodsData(	3	,	4587	,	60	,	549	,	122	)
	SaleGoodsData(	3	,	4588	,	40	,	639	,	142	)

	BuyGoodsData(0,	4573	,	-1	,	560	,	125	)
	BuyGoodsData(0,	4575	,	-1	,	798	,	177	)
	BuyGoodsData(0,	4577	,	-1	,	930	,	207	)
	BuyGoodsData(0,	4589	,	-1	,	548	,	121	)
	BuyGoodsData(0,	4591	,	-1	,	844	,	187	)
	BuyGoodsData(0,	4593	,	-1	,	972	,	216	)
	BuyGoodsData(0,	4595	,	-1	,	900	,	600	)
	BuyGoodsData(0,	4598	,	-1	,	954	,	212	)
	BuyGoodsData(0,	4599	,	-1	,	988	,	219	)
	BuyGoodsData(0,	4552	,	-1	,	655	,	145	)
	BuyGoodsData(0,	4553	,	-1	,	807	,	179	)
	BuyGoodsData(0,	4557	,	-1	,	1052	,	233	)
	BuyGoodsData(0,	4560	,	-1	,	1172	,	261	)
	BuyGoodsData(0,	4563	,	-1	,	909	,	202	)
	BuyGoodsData(0,	4564	,	-1	,	577	,	129	)
	BuyGoodsData(0,	4566	,	-1	,	740	,	165	)
	BuyGoodsData(0,	4568	,	-1	,	870	,	193	)
	BuyGoodsData(0,	4569	,	-1	,	970	,	215	)
	BuyGoodsData(0,	4572	,	-1	,	872	,	193	)
	BuyGoodsData(0,	4547	,	-1	,	200	,	0	)
	BuyGoodsData(0,	4549	,	-1	,	360	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission(	104	)
	AddNpcMission 	(198)
	AddNpcMission 	(199)
	AddNpcMission 	(149)
	AddNpcMission(	105	)
	AddNpcMission(	106	)

end

------------------------------------------------------------
-- 冰狼堡-----交易员·佩鲁诺
------------------------------------------------------------

function r_talk209()

	Talk( 1, "Pahniro: Hi! I am in charge of the trade here. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, TradeBerthList, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 1, "Regarding High Lv Commerce Permit",JumpPage, 3)
	
	Talk( 2, "Pahniro: Sorry, you do not have any ships docked in Icicle Harbor. Unable to trade." )	

	Talk( 3, "Hi! If you want to get rich, then you will need a \"Commerce Permit!\" With it you can have more products for commerce trade and also reduce your capital to maximize your profits! Currently, players can only obtain Commerce Permit from Shaitan Trading Post.")
	Text( 3, "Regarding Tax Rate",JumpPage, 7)
	Text( 3, "Low Lv Commerce Permit",JumpPage, 4)
	Text( 3, "Mid Lv Commerce Permit",JumpPage, 5)
	Text( 3, "High Lv Commerce Permit",JumpPage, 6)

	Talk( 4, "Low Lv Commerce Permit is easy to obtain. When you reaches Lv 20, go to the trading post in Shaitan and complete a simple task to have one.")
	Talk( 5, "When you reaches Lv 40 and reduces your tax rate to 20%, you can go to Shaitan Trading Post and obtain a Mid Lv Commerce Permit.")
	Talk( 6, "When you have reached level 60 and possess a Commerce Permit with 10% tax, you can activate the quest for High Lv Commerce.")
	Talk( 7, "Check your Commerce Permit to see the current Tax Rate imposed on your product when you sell it to any trader. Complete some quest at Shaitan Trading Post to reduce the Tax Rate.")

	InitGoods(4)
	SaleGoodsData(	0	,	4589	,	900	,	161	,	57	)
	SaleGoodsData(	0	,	4590	,	800	,	238	,	84	)
	SaleGoodsData(	1	,	4591	,	700	,	297	,	105	)
	SaleGoodsData(	1	,	4592	,	600	,	425	,	150	)
	SaleGoodsData(	2	,	4593	,	400	,	467	,	165	)
	SaleGoodsData(	2	,	4594	,	240	,	561	,	198	)
	SaleGoodsData(	3	,	4595	,	120	,	612	,	216	)
	SaleGoodsData(	1	,	4596	,	80	,	705	,	249	)

	BuyGoodsData(0,	4577	,	-1	,	750	,	643	)
	BuyGoodsData(0,	4578	,	-1	,	802	,	689	)
	BuyGoodsData(0,	4582	,	-1	,	471	,	403	)
	BuyGoodsData(0,	4584	,	-1	,	691	,	593	)
	BuyGoodsData(0,	4586	,	-1	,	737	,	633	)
	BuyGoodsData(0,	4597	,	-1	,	728	,	625	)
	BuyGoodsData(0,	4599	,	-1	,	1092	,	936	)
	BuyGoodsData(0,	4600	,	-1	,	1139	,	977	)
	BuyGoodsData(0,	4554	,	-1	,	844	,	725	)
	BuyGoodsData(0,	4557	,	-1	,	892	,	765	)
	BuyGoodsData(0,	4560	,	-1	,	992	,	851	)
	BuyGoodsData(0,	4561	,	-1	,	627	,	539	)
	BuyGoodsData(0,	4562	,	-1	,	649	,	557	)
	BuyGoodsData(0,	4563	,	-1	,	735	,	630	)
	BuyGoodsData(0,	4566	,	-1	,	569	,	487	)
	BuyGoodsData(0,	4568	,	-1	,	710	,	609	)
	BuyGoodsData(0,	4569	,	-1	,	761	,	653	)
	BuyGoodsData(0,	4571	,	-1	,	596	,	511	)
	BuyGoodsData(0,	4547	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4550	,	-1	,	1000	,	0	)
	BuyGoodsData(0,	4548	,	-1	,	300	,	0	)
	BuyGoodsData(0,	4551	,	-1	,	20	,	0	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


end

------------------------------------------------------------
-- 雷霆堡军港-----船工·阿憨
------------------------------------------------------------
function r_talk210 ()
		
	Talk( 1, "Attan: Yo! Want to set sail? Then you will need a good ship! Look at my ships and see if there is any to your liking." )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Ships limit reached. Unable to build more ship" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Build Ship", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, BoatLevelBerthList, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Upgrade ship", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Attan: What type of ships do you wish to have? I have a few variety for you to chose from. But you must select one of your level if not you will not be able to navigate it." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerAction( 1, CreateBoat, 3, 2 )
	Text( 2, "Build Flying Fish", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 2 )
	Text( 2, "Build Turtle", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 2 )
	Text( 2, "Build Swordfish", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 11 )
	TriggerAction( 1, CreateBoat, 11, 2 )
	Text( 2, "Build Phantom", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 12 )
	TriggerAction( 1, CreateBoat, 12, 2 )
	Text( 2, "Build Silver Dolphin", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerAction( 1, CreateBoat, 13, 2 )
	Text( 2, "Build Great White Shark", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Attan: I guess your ship is not docked here. You need to dock here to upgrade the level when it has gained enough experience from sailing or killing monsters out in the sea." )
end 

------------------------------------------------------------
-- 白银城-----海盗情报员·戈瓦撒
------------------------------------------------------------

function r_talk211()

	Talk( 1, "Gewas: Hey! Want to know the world most notorious pirates? Want to join the pirates on their treasure hunt?" )
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 1 )
	TriggerAction( 1, ListAllGuild, 1 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 1 )
	TriggerFailure( 3, JumpPage, 3 )
	Text( 1, "Check Pirates Organisation", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "Leave", CloseTalk)
	
	Talk( 2, "Gewas: Hey! Are you from the Navy? We do not talk to anybody from the Navy." )

	Talk( 3, "Gewas: Hey! Want to know who is the most notorious pirate? Hehe! Not telling you now!" )

		
end

------------------------------------------------------------
-- 白银城-----海军情报员·达隆丹
------------------------------------------------------------

function r_talk212()

	Talk( 1, "Dalongdan: Hi, I am the famous Navy informer. You can check out all Navy division status here. You are also welcome to join us!" )
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 0 )
	TriggerAction( 1, ListAllGuild, 0 )
	TriggerCondition( 2, IsGuildType, 1 )
	TriggerAction( 2, JumpPage, 3 )
	TriggerCondition( 3, NoGuild )
	TriggerCondition( 3, HasItem, 4110, 1 )
	TriggerAction( 3, TakeItem, 4110, 1 )
	TriggerAction( 3, ListAllGuild, 0 )
	TriggerFailure( 3, JumpPage, 2 )
	Text( 1, "Navy Division Enquiry", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "Leave", CloseTalk)
	
	Talk( 2, "Dalongdan: You cannot check the status of the Navy if you do not have a recommendation letter" )

	Talk( 3, "Dalongdan: You do not belong to the Navy. I will not give you any information regarding the Navy!" )

		
end

------------------------------------------------------------
-- 白银城-----海军募兵小姐·蕾绮尔
------------------------------------------------------------

function r_talk213()

	Talk( 1, "Rachel: Hi! The Navy wants you! If you think you have the capability, bring this recommendation letter to the nearby recruitment post in Argent Harbor!" )
	InitTrigger()
	TriggerCondition( 1, HasItem, 4110, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 4 )
	TriggerCondition( 3, IsGuildType, 1 )
	TriggerAction( 3, JumpPage, 5 )
	TriggerCondition( 4, HasLeaveBagGrid, 1 )
	TriggerCondition( 4, NoGuild )
	TriggerAction( 4, GiveItem, 4110, 1, 4 )
	TriggerFailure( 4, JumpPage, 3 )
	Text( 1, "Ok, a recommendation letter please.",MultiTrigger, GetMultiTrigger(), 4 )
	Text( 1, "Maybe not now. Bye!", CloseTalk)

	Talk( 2, "Rachel: You still have a recommendation letter…" )

	Talk( 3, "Rachel: You have joined any guild? Check your inventory. Make sure it is not full or I will not be able to give you a recommendation letter." )

	Talk( 4, "Rachel: You are already in the Navy! Why do you need the recommendation letter for? Talk to the person in charge if you want to check the status of the Navy Division." )

	Talk( 5, "Rachel: Looks like you are a bad person. I cannot hand this to you. Its for the honor of the Navy!" )

		
end

------------------------------------------------------------
-- 废矿补给站-----打包人·乎勒达
------------------------------------------------------------

function r_talk214()

	Talk( 1, "Huradar: Hi! I am the Freights NPC here. I can help you load the products up your ship if it is docked in Argent Harbor." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Crystal", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Huradar: Hi! Your ship is not docked in Argent Harbor" )
		
end

------------------------------------------------------------
-- 雷霆堡军港-----打包人·费德索拉
------------------------------------------------------------

function r_talk215()

	Talk( 1, "Fernando: Hi! I am the Freights NPC here. I can help you load the products up your ship if it is docked in Thundoria Harbor." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Fernando: Hey there! You do not have any ships docked at Thundoria Harbor" )
		
end

------------------------------------------------------------
-- 白银林区-----打包人·摩根
------------------------------------------------------------

function r_talk216()

	Talk( 1, "Moken: Yo! I am the Freights NPC. I will load your products for trading up your ship if it is docked in Argent Harbor" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Moken: Hey there! You do not have any ships docked at Argent Harbor" )

	AddNpcMission(	1436	)
	AddNpcMission (	1930	)
		
end

------------------------------------------------------------
-- 冰雪岛-----打包人·阿里西斯
------------------------------------------------------------

function r_talk217()

	Talk( 1, "Alexis: Yo! I am the Freights NPC. I will load your products for trading up your ship if it is docked in Harbor of Chill" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8)
	TriggerAction( 1, PackBagList, 8, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Alexis: Hi! You do not have any ships docked in Harbor of Chill." )
		
end

------------------------------------------------------------
-- 鸣沙岛-----打包人·伊加卡班
------------------------------------------------------------

function r_talk218()

	Talk( 1, "Yevgeni: Yo! I am the Freights NPC. I will load your products for trading up your ship if it is docked in Canary Harbor." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9)
	TriggerAction( 1, PackBagList, 9, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Yevgeni: Hi! You do not have any ships docked in Canary Harbor." )
		
end

------------------------------------------------------------
-- 沙岚新城-----打包人·安巴瓦而
------------------------------------------------------------

function r_talk219()

	Talk( 1, "Amber: Hi! I am the Freights NPC here. I can help you load the products up your ship if it is docked in Shaitan Harbor." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_MINE, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Energy Ore", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Amber: Hi friend. You do not have any ships docked in Shaitan Harbor." )
		
end

------------------------------------------------------------
-- 阿兰比斯补给站-----打包人·阿加恩布赖得
------------------------------------------------------------

function r_talk220()

	Talk( 1, "Alkins: Hi! I am the Freights NPC here. I can help you load the products up your ship if it is docked in Icicle Harbor" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_MINE, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Iron Ore", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Alkins: Hi! You do not have any ships docked in Icicle Harbor" )

	AddNpcMission(	1581	)
	AddNpcMission (	1933	)

	
end


------------------------------------------------------------
-- 卡尔加德雪原-----打包人·坎贝尔
------------------------------------------------------------

function r_talk243()

	Talk( 1, "Canari: Hi! I am the Freights NPC here. I can help you load the products up your ship if it is docked in Thundoria Harbor." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Canari: Hi! You do not have any ships docked in Thundoria Harbor" )
		
end

------------------------------------------------------------
-- 德尔维平原-----打包人·索拉斯
------------------------------------------------------------

function r_talk244()

	Talk( 1, "Soraris: Yo! I am the Freights NPC. I will load your products for trading up your ship if it is docked in Argent Harbor" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Soraris: Hey, you do not have any ships docked in Argent Harbor." )

end



------------------------------------------------------------
-- 帕克荒漠-----打包人·安塞拉
------------------------------------------------------------

function r_talk245()

	Talk( 1, "Ansto: Yo! I am the Freights NPC. I will load your products for trading up your ship if it is docked in Shaitan Harbor." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Ansto: Hi! You do not have any ship docked at Shaitan Harbor" )
		
end


------------------------------------------------------------
-- 冰极-----打包人·阿加西
------------------------------------------------------------

function r_talk246()

	Talk( 1, "Jas: Yo! I am the Freights NPC. I will load your products for trading up your ship if it is docked in Icicle Harbor" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Jas: Hi friend! You do not have any ships docked here in Icicle Harbor" )
	
end

------------------------------------------------------------
-- 迷之港口-----港口指挥◎迷
------------------------------------------------------------
function r_talk247()

	Talk( 1, "Mist: Hi, I can help you salvage any sunken ships in this mysterious land. Do you need any help?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1341, 3257, 0 )
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
	Talk( 4, "Sorry I only repair ships docked at Mystery Harbor. Please pay 1000G" )
	Talk( 5, "Sorry! I only refuel ships docked at Maze Harbor. Please pay 200G as repair fee." )
	Talk( 6, "Sorry, I only salvage sunken ship docked in Maze Harbor. Please pay 1000G" )

end

------------------------------------------------------------
-- 迷之港口-----小花园北部商店海港指挥
------------------------------------------------------------
function r_talk248()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 116, 51, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	
	

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	

end

------------------------------------------------------------
-- 迷之港口-----小花园北部中央海港指挥
------------------------------------------------------------
function r_talk249()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 235, 123, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	

end


------------------------------------------------------------
-- 迷之港口-----小花园东部海港指挥
------------------------------------------------------------
function r_talk250()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 248, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	

end

------------------------------------------------------------
-- 迷之港口-----小花园南部商店海港指挥
------------------------------------------------------------
function r_talk251()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 353, 428, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )


end

------------------------------------------------------------
-- 迷之港口-----小花园北部下海海港指挥
------------------------------------------------------------
function r_talk257()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,211, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )


end

------------------------------------------------------------
-- 迷之港口-----小花园南部下海海港指挥
------------------------------------------------------------
function r_talk258()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,256, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )


end


------------------------------------------------------------
-- 迷之港口-----阴暗沼泽海港指挥
------------------------------------------------------------
function r_talk261()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 295, 352, 0 )
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
	Talk( 4, "Sorry I only repair ships docked at Mystery Harbor. Please pay 1000G" )
	Talk( 5, "Sorry! I only refuel ships docked at Maze Harbor. Please pay 200G as repair fee." )
	Talk( 6, "Sorry, I only salvage sunken ship docked in Maze Harbor. Please pay 1000G" )

end

------------------------------------------------------------
-- 迷之港口-----废灵之都海港指挥
------------------------------------------------------------
function r_talk262()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 299, 321, 0 )
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
	Talk( 4, "Sorry I only repair ships docked at Mystery Harbor. Please pay 1000G" )
	Talk( 5, "Sorry! I only refuel ships docked at Maze Harbor. Please pay 200G as repair fee." )
	Talk( 6, "Sorry, I only salvage sunken ship docked in Maze Harbor. Please pay 1000G" )

end

----------------------------------------------------------
--							--
--							--
--		竞技花园[神秘商人]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk259 ()
	
	
	Talk( 1, "Mystery Merchant: Hi! I have some great stuff here! Want to have a look?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12 )
	TriggerAction( 1, TradeBerthList, 12 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Trade", MultiTrigger, GetMultiTrigger(), 1 )

	
	Talk( 2, "Mystery Merchant: Sorry, you do not have any ships docked in Mystery Harbor. Unable to trade." )
	
	InitGoods(12)
	SaleGoodsData(	0	,	1861	,	500	,	5000	,	5000	)

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 52, TE_GAMETIME, TT_CYCLETIME, 15, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 



------------------------------------------------------------
-- 小花园-----药草商人
------------------------------------------------------------

function r_talk260()

	Talk( 1, "Physician: Hi, I have a variety of rare herbs, do you need any?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Other(	3460	)
	Other(	3461	)

end

------------------------------------------------------------
-- 沙岚新城-----神秘海港指挥
------------------------------------------------------------
function r_talk263()

	Talk( 1, "Obscure Harbor Operator: Hi! I can salvage boats docked at Mysterious Harbor. No matter Santuary Maze or Garden of Edel, I will be able to locate your ship. Do you need my help?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 832, 3698, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 3, "Sorry I only repair ships docked at Mystery Harbor. Please pay 1000G" )
	Talk( 4, "Sorry! I only refuel ships docked at Maze Harbor. Please pay 200G as repair fee." )
	Talk( 5, "Sorry, I only salvage sunken ship docked in Maze Harbor. Please pay 1000G" )

end

----------------------------------------------------
--擂主公会特殊贸易品
----------------------------------------------------
--军火商


function r_talk264()
	Talk( 1, "Arms Dealer: Hi, I am the Arms Dealer who supply most of Thundoria's arsenal. I have a new batch of firearms to ship to Thundoria. It will fetch a good price at the trader there. However, I only trust members of the first placing guild to deliever for me!" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 1 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Purchase", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "Arms Dealer: Only the members from the first placing guild may purchase from me provided your ship is docked in Shaitan Harbor." )

	InitGoods(3)
	SaleGoodsData(	0	,	3914	,	150	,	990	,	220	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end

--精密仪器供应商	

function r_talk265()
	Talk( 1, "Rare Material Supplier: Hi, I am the Rare Material Supplier who supply most of Thundoria's material for construction. I have a new batch of material to ship to Thundoria. It will fetch a good price at the trader there. However, I only trust members of the second placing guild to deliever for me!" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 2 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "Rare Material Supplier: Only members from the second placing guild may purchase if they have a ship docked in Shaitan Harbor." )


	InitGoods(3)
	SaleGoodsData(	0	,	3912	,	200	,	855	,	190	)
	


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end


--稀有金属供应商

function r_talk266()
	Talk( 1, "Rare Metal Supplier: Hi, I am the Rare Metal Supplier who supply most of Thundoria's metal for construction. I have a new batch of metal to ship to Thundoria. It will fetch a good price at the trader there. However, I only trust members of the third placing guild to deliever for me!" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Cargo Trade", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "Rare Metal Supplier: Only members from the third placing guild can purchase items from here. Also, your ship must be docked in Shaitan Harbor." )


	InitGoods(3)
	SaleGoodsData(	0	,	3913	,	250	,	765	,	170	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end



------------------------------------------------------------
-- 沙岚新城-----打包人·阿里七七
------------------------------------------------------------

function m_talk001()

	Talk( 1, "Ali Q: Yo! I am the Freights NPC. I will load your products for trading up your ship if it is docked in Shaitan Harbor" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Load Wood", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Ali Q: Hi! You do not have any ships docked in Shaitan Harbor." )
		
end


------------------------------------------------------------
-- 夏岛北港-----海港指挥
------------------------------------------------------------
function b_talk19()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 14 )
	TriggerAction( 1, LuanchBerthList, 14, 3662, 2645, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, RepairBerthList, 14 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, SupplyBerthList, 14 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 14 )
	TriggerAction( 1, SalvageBerthList, 14 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry I only repair ships docked at Summer Island northern harbor. Please pay 1000G" )
	Talk( 5, "Sorry! I only refuel ships docked at Summer Island Harbor. Please pay 200G" )
	Talk( 6, "Sorry! I only salvage sunken ships docked in northern Summer Island. Please pay 1000G." )

	AddNpcMission(7935)
	AddNpcMission(7936)
	AddNpcMission(7937)
	AddNpcMission(7938)

end


------------------------------------------------------------
-- 夏岛南港-----海港指挥
------------------------------------------------------------
function b_talk20()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 15 )
	TriggerAction( 1, LuanchBerthList, 15, 3324, 3541, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, RepairBerthList, 15 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, SupplyBerthList, 15 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 15 )
	TriggerAction( 1, SalvageBerthList, 15 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked at southern Summer Island. Please pay 1000G as repair fee." )
	Talk( 5, "Sorry, I only refuel ships docked at Summer Island southern harbor. Please pay 200G" )
	Talk( 6, "Sorry! I only salvage ships docked in Summer Island. Please pay 1000G." )

	AddNpcMission(7939)
	AddNpcMission(7940)
	AddNpcMission(7941)
	AddNpcMission(7942)

end

-----------黑市商人
function leo_talk10()	

	Talk( 1, "Black Market Merchant: Hoho, you must be somebody to locate me. Hoho, what do you need?")
	Text( 1, "Show me your Black Marcket", JumpPage, 2 )
	Text( 1, "Buy", BuyPage)

	Talk( 2, "Black Market Merchant: Hoho, you are well-informed indeed...How you wish to exchange?")
	Text( 2, "Let me take a look at your things first", SendExchangeData )

	--兑换所需物品 ID，数量，兑换所得物品数量，赋予的值
	InitExchange()
	--加载8个道具信息，在ScriptSDK里
	DoExchange()

	InitTrade()
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 53, TE_GAMETIME, TT_CYCLETIME, 120, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
end

function rand()	--黑市随机装备列表
	local tabunknow = {}
	tabunknow[	1	] =	0088
	tabunknow[	2	] =	0089
	tabunknow[	3	] =	3302
	tabunknow[	4	] =	3303
	tabunknow[	5	] =	3304
	tabunknow[	6	] =	3305
	tabunknow[	7	] =	3306
	tabunknow[	8	] =	3307
	tabunknow[	9	] =	3308
	tabunknow[	10	] =	3309
	tabunknow[	11	] =	3310
	tabunknow[	12	] =	3311
	tabunknow[	13	] =	3312
	tabunknow[	14	] =	3313
	tabunknow[	15	] =	3314
	tabunknow[	16	] =	3315
	tabunknow[	17	] =	3316
	tabunknow[	18	] =	3317
	tabunknow[	19	] =	3318
	tabunknow[	20	] =	3319
	tabunknow[	21	] =	3320
	tabunknow[	22	] =	3321
	tabunknow[	23	] =	3322
	tabunknow[	24	] =	3323
	tabunknow[	25	] =	3324
	tabunknow[	26	] =	3325
	tabunknow[	27	] =	3326
	tabunknow[	28	] =	3327
	tabunknow[	29	] =	3328
	tabunknow[	30	] =	3329
	tabunknow[	31	] =	3330
	tabunknow[	32	] =	3331
	tabunknow[	33	] =	3332
	tabunknow[	34	] =	3333
	tabunknow[	35	] =	3334

	return tabunknow[math.floor(math.random(1,35))]
end
------------------------------------------------------------
-- Habour Operator - 001
------------------------------------------------------------
function star_talk001()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 148 , 154, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 002
------------------------------------------------------------
function star_talk002()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 176, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 003
------------------------------------------------------------
function star_talk003()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 168 , 111, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 004
------------------------------------------------------------
function star_talk004()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 452 , 135, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 005
------------------------------------------------------------
function star_talk005()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 496 , 164, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 006
------------------------------------------------------------
function star_talk006()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 007
------------------------------------------------------------
function star_talk007()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3 , 262 , 181, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 008
------------------------------------------------------------
function star_talk008()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 348 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 009
------------------------------------------------------------
function star_talk009()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 110 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end

------------------------------------------------------------
-- Habour Operator - 010
------------------------------------------------------------
function star_talk010()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 493, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 011
------------------------------------------------------------
function star_talk011()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 82 , 456, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 012
------------------------------------------------------------
function star_talk012()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 463 , 453, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 013
------------------------------------------------------------
function star_talk013()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 492 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 014
------------------------------------------------------------
function star_talk014()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 506, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 015
------------------------------------------------------------
function star_talk015()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 357 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end
------------------------------------------------------------
-- Habour Operator - 016
------------------------------------------------------------
function star_talk016()
	Talk( 1, "Harbour Operator: Hi! I'm the Harbour Operator for this Sacred War. I have records of all boats docked at Shaitan Harbour. Please register with me before you set sail, else you will be disallowed." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 256 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Sorry, your boat is not docked at this harbor." )
end

------------------------------------------------------------
-- Navy Frontline Commander
------------------------------------------------------------
function roico_talk001()
	Talk( 1, "Navy Frontline Commander: The battle has begun! Here everyone is a hero, bear in mind the hearts of the faith, work together to defeat the enemy's attack, that is our only way out!" )
	Text( 1, "Battle objetives" ,JumpPage, 2)
	Text( 1, "Exchange fighting material", JumpPage, 3)
	Text( 1, "Donate upgrading resource", JumpPage, 4)
	Text( 1, "Navy Tokens", JumpPage, 13)
	
	Talk( 2, "Battle Objectives: Destroy the enemy base within the statue. To greatly weaken their strength, you can destroy their Armory and their Granary. You can collect resources to improve our defense facilities or exchange for fighting material. Request the Navy Commander to be used with caution, so that the enemy can be surprised.")
	
	Talk( 3, "Navy Frontline Commander: Let the enemy be surprised and not forget our strenght!")
	Text( 3, "Obtain Statue Pass" ,JumpPage, 6)
	Text( 3, "Obtain Random Attribute" ,JumpPage, 7)
	
	Talk( 4, "Navy Frontline Commander: You can donated some materials to increase our base's strength.")
	Text( 4, "Increase Naval Statue's Defense by 20 and Physical Resist by 1" ,JumpPage, 8)
	Text( 4, "Increase Naval Tower's Attack by 25" ,JumpPage, 9)
	Text( 4, "Navy Statue Invincible for 3 minutes" ,JumpPage, 10)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2859, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2859,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "Navy Frontline Commander: I will exchange 25 Eyepatch for a Statue Pass!")
	Text( 6, "I have 25 Eyepatch",  MultiTrigger, GetMultiTrigger(), 1)
        Talk( 11, "Navy Frontline Commander: Use the Statue Pass to come back to our base and defend the Statue, when in danger!" )
	Talk( 12, "Navy Frontline Commander: You don't have all required items or your inventory is full!")


	Talk( 7, "Navy Frontline Commander: I will exchange 20 Eyepatch for a Random Attribute!")
	Text( 7, "I have 20 Eyepatch", GetChaName1_guildwar, 1)
	
	Talk( 8, "Navy Frontline Commander: To increase Naval Statue's Defense, you will need to collect 30 Crystal Ore!")
	Text( 8, "I have 30 Crystal Ore", GetChaName2_guildwar, 1)
	
	Talk( 9, "Navy Frontline Commander: To increase Naval Tower's Attack, you will need to collect 12 Fish Bone and 12 Squirting Fish!")
	Text( 9, "I have enough material", GetChaName4_guildwar, 1)
	
	Talk( 10, "Navy Frontline Commander: To make Navy Statue invincible, you will need to collect 4 Hard Tortoise Shell and 9 Moon Tail Eel!")
	Text( 10, "I have enough material", GetChaName3_guildwar, 1)
	
	Talk( 13, "Navy Frontline Commander: If you collect enough Navy Tokens, I will summon a Surprise Attack to our enemy, the Pirates!")
	Text( 13, "15 Navy Tokens", JumpPage, 14)
	Text( 13, "30 Navy Tokens", JumpPage, 15)
	Text( 13, "45 Navy Tokens", JumpPage, 16)
	
	Talk( 14, "Navy Frontline Commander: For 15 Navy Tokens, I will summon 3 Navy Emissary to help us anywhere you choose!")
	Text( 14, "Around enemy's Statue", GetChaName5_guildwar, 1)
	Text( 14, "Around enemy's Armory", GetChaName6_guildwar, 1)
	Text( 14, "Around enemy's Granary", GetChaName7_guildwar, 1)
	Text( 14, "Around our Statue", GetChaName8_guildwar, 1)
	Text( 14, "Around our Armory", GetChaName9_guildwar, 1)
	Text( 14, "Around our Granary", GetChaName10_guildwar, 1)
	--Text( 14, "Battlefield Road", GetChaName11_guildwar, 1)
	
	Talk( 15, "Navy Frontline Commander: For 30 Navy Tokens, I will summon 7 Navy Emissary to help us anywhere you choose!")
	Text( 15, "Around enemy's Statue", GetChaName11_guildwar, 1)
	Text( 15, "Around enemy's Armory", GetChaName12_guildwar, 1)
	Text( 15, "Around enemy's Granary", GetChaName13_guildwar, 1)
	Text( 15, "Around our Statue", GetChaName14_guildwar, 1)
	Text( 15, "Around our Armory", GetChaName15_guildwar, 1)
	Text( 15, "Around our Granary", GetChaName16_guildwar, 1)
	--Text( 15, "Battlefield Road", GetChaName18_guildwar, 1)
	
	Talk( 16, "Navy Frontline Commander: For 45 Navy Tokens, I will summon 11 Navy Emissary to help us anywhere you choose!")
	Text( 16, "Around enemy's Statue", GetChaName17_guildwar, 1)
	Text( 16, "Around enemy's Armory", GetChaName18_guildwar, 1)
	Text( 16, "Around enemy's Granary", GetChaName19_guildwar, 1)
	Text( 16, "Around our Statue", GetChaName20_guildwar, 1)
	Text( 16, "Around our Armory", GetChaName21_guildwar, 1)
	Text( 16, "Around our Granary", GetChaName22_guildwar, 1)

end

------------------------------------------------------------
-- Pirate Frontline Commander
------------------------------------------------------------
function roico_talk002()
	Talk( 1, "Pirate Frontline Commander: Destruction, looting, killing, Nothing can stop us, let the enemy know the true meaning of fear!" )
	Text( 1, "Battle objetives" ,JumpPage, 2)
	Text( 1, "Exchange fighting material", JumpPage, 3)
	Text( 1, "Donate upgrading resource", JumpPage, 4)
	Text( 1, "Pirate Tokens", JumpPage, 13)
	
	Talk( 2, "Battle Objectives: Destroy the enemy base within the statue. To greatly weaken their strength, you can destroy their Armory and their Granary. You can collect resources to improve our defense facilities or exchange for fighting material. Request the Pirate Commander to be used with caution, so that the enemy can be surprised.")
	
	Talk( 3, "Pirate Frontline Commander: Let the enemy be surprised and not forget our strenght!")
	Text( 3, "Obtain Statue Pass" ,JumpPage, 6)
	Text( 3, "Obtain Random Attribute" ,JumpPage, 7)
	
	Talk( 4, "Pirate Frontline Commander: You can donated some materials to increase our base's strength.")
	Text( 4, "Increase Pirate Statue's Defense by 20 and Physical Resist by 1" ,JumpPage, 8)
	Text( 4, "Increase Pirate Tower's Attack by 25" ,JumpPage, 9)
	Text( 4, "Pirate Statue Invincible for 3 minutes" ,JumpPage, 10)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2858, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2858,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "Pirate Frontline Commander: I will exchange 25 Snuff for a Statue Pass!")
	Text( 6, "I have 25 Snuff",  MultiTrigger, GetMultiTrigger(), 1)
        Talk( 11, "Pirate Frontline Commander: Use the Statue Pass to come back to our base and defend the Statue, when in danger!" )
	Talk( 12, "Pirate Frontline Commander: You don't have all required items or your inventory is full!")


	Talk( 7, "Pirate Frontline Commander: I will exchange 20 Snuff for a Random Attribute!")
	Text( 7, "I have 20 Snuff", GetChaName23_guildwar, 1)
	
	Talk( 8, "Pirate Frontline Commander: To increase Pirate Statue's Defense, you will need to collect 30 Crystal Ore!")
	Text( 8, "I have 30 Crystal Ore", GetChaName24_guildwar, 1)
	
	Talk( 9, "Pirate Frontline Commander: To increase Pirate Tower's Attack, you will need to collect 12 Fish Bone and 12 Squirting Fish!")
	Text( 9, "I have enough material", GetChaName26_guildwar, 1)
	
	Talk( 10, "Pirate Frontline Commander: To make Pirate Statue invincible, you will need to collect 4 Diving Clam and 9 Tortoise Shell Fragment!")
	Text( 10, "I have enough material", GetChaName25_guildwar, 1)
	
	Talk( 13, "Pirate Frontline Commander: If you collect enough Pirate Tokens, I will summon a Surprise Attack to our enemy, the Navy!")
	Text( 13, "15 Pirate Tokens", JumpPage, 14)
	Text( 13, "30 Pirate Tokens", JumpPage, 15)
	Text( 13, "45 Pirate Tokens", JumpPage, 16)
	
	Talk( 14, "Pirate Frontline Commander: For 15 Pirate Tokens, I will summon 3 Pirate Emissary to help us anywhere you choose!")
	Text( 14, "Around enemy's Statue", GetChaName27_guildwar, 1)
	Text( 14, "Around enemy's Armory", GetChaName28_guildwar, 1)
	Text( 14, "Around enemy's Granary", GetChaName29_guildwar, 1)
	Text( 14, "Around our Statue", GetChaName30_guildwar, 1)
	Text( 14, "Around our Armory", GetChaName31_guildwar, 1)
	Text( 14, "Around our Granary", GetChaName32_guildwar, 1)
	--Text( 14, "Battlefield Road", GetChaName11_guildwar, 1)
	
	Talk( 15, "Pirate Frontline Commander: For 30 Pirate Tokens, I will summon 7 Pirate Emissary to help us anywhere you choose!")
	Text( 15, "Around enemy's Statue", GetChaName33_guildwar, 1)
	Text( 15, "Around enemy's Armory", GetChaName34_guildwar, 1)
	Text( 15, "Around enemy's Granary", GetChaName35_guildwar, 1)
	Text( 15, "Around our Statue", GetChaName36_guildwar, 1)
	Text( 15, "Around our Armory", GetChaName37_guildwar, 1)
	Text( 15, "Around our Granary", GetChaName38_guildwar, 1)
	--Text( 15, "Battlefield Road", GetChaName18_guildwar, 1)
	
	Talk( 16, "Pirate Frontline Commander: For 45 Pirate Tokens, I will summon 11 Pirate Emissary to help us anywhere you choose!")
	Text( 16, "Around enemy's Statue", GetChaName39_guildwar, 1)
	Text( 16, "Around enemy's Armory", GetChaName40_guildwar, 1)
	Text( 16, "Around enemy's Granary", GetChaName41_guildwar, 1)
	Text( 16, "Around our Statue", GetChaName42_guildwar, 1)
	Text( 16, "Around our Armory", GetChaName43_guildwar, 1)
	Text( 16, "Around our Granary", GetChaName44_guildwar, 1)
end


-------Sacred War Administrator

function roico_talk()
	Talk( 1, "Holy War Administrator: To enter the Holy War, please obtain the [Token of Life & Death] from me, it represents your determination and spirit! Next I have some item you might be intrested in, but I'll only give them to heroes of the war!" )
	Text( 1, "Exchange Level 70 boss equipment",JumpPage, 2 )
	Text( 1, "Exchange for Title Medal",JumpPage, 16 )
	Text( 1, "Exchange Blood Pledge Token",JumpPage, 28 )
	Text( 1, "Use Honor points to exchange into Token of Life & Death",JumpPage, 29 )

	Talk( 2, "Select the boss stone of your choice" )
	Text( 2, "Hephaestus PawStone (Champion)", JumpPage, 3)
	Text( 2, "Hermes PawStone (Crusader)", JumpPage, 4)
	Text( 2, "Apollo PawStone (Sharpshooter)", JumpPage, 5)
	Text( 2, "Poseidon PawStone (Voyager)", JumpPage, 6)
	Text( 2, "Hestia PawStone (Cleric)", JumpPage, 7)
	Text( 2, "Athena PawStone (Seal Master)", JumpPage, 8)
	Text( 2, "Next Page", JumpPage, 9)
	Talk( 9, "Select the boss stone of your choice" )
	Text( 9, "Hephaestus ClawStone (Champion)", JumpPage, 10)
	Text( 9, "Hermes ClawStone (Crusader)", JumpPage, 11)
	Text( 9, "Apollo ClawStone (Sharpshooter)", JumpPage, 12)
	Text( 9, "Poseidon ClawStone (Voyager)", JumpPage, 13)
	Text( 9, "Hestia ClawStone (Cleric)", JumpPage, 14)
	Text( 9, "Athena ClawStone (Seal Master)", JumpPage, 15)
	Text( 9, "Go back a page", JumpPage, 2) 


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2532, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 3, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 3, "Hephaestus Pawstone", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2535, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 4, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 4, "Hermes Pawstone", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2538, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 5, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 5, "Apollo Pawstone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2541, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 6, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 6, "Poseidon Pawstone", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2544, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 7, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 7, "Hestia Pawstone", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2547, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 8, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 8, "Athena Pawstone", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2531, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 10, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 10, "Hephaestus Clawstone", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2534, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 11, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 11, "Hermes Clawstone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2537, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 12, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 12, "Apollo Clawstone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2540, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 13, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 13, "Poseidon Clawstone", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2543, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 14, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 14, "Hestia Clawstone", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2546, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 15, "Sacred War Administrator: If your level is above 65 and if you bring me 300 blood contract, I can give you this stone." )
	Text( 15, "Athena Clawstone", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 16, "Sacred War Administrator: Please Select the Title Accessories that you want!" )
        Text( 16, "Scout", JumpPage, 17)
	Text( 16, "3rd Rank Special Attack Force", JumpPage, 18)
	Text( 16, "Vice-Cap", JumpPage, 19)
	Text( 16, "Major General", JumpPage, 20)
	Text( 16, "Major Chief", JumpPage, 21)
	Text( 16, "Next Page", JumpPage, 30)

	Talk( 30, "Sacred War Administrator: Please Select the Title Accessories that you want!" )
	Text( 30, "Iron blood commander", JumpPage, 22)
	Text( 30, "Argent lieutenant commander", JumpPage, 23)
	Text( 30, "Golden Colonel General", JumpPage, 24)
	Text( 30, "Gold General", JumpPage, 25)
	Text( 30, "General Godslayer", JumpPage, 26)
	Text( 30, "Go back a page", JumpPage, 16)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 5331, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 17, "Sacred War Administrator: If you can give me 20 blood contract, I can give you this Medal of Honor." )
	Text( 17, "Obtain Medal of Honor", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 50 )
	TriggerCondition( 1, HasItem, 5331, 1 )
	TriggerAction( 1, TakeItem, 2383, 50 )
	TriggerAction( 1, TakeItem, 5331, 1 )
	TriggerAction( 1, GiveItem, 5332, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 18, "Sacred War Administrator: If you can give me 50 Blood Contract and 1st Rank Medal, I'll give you the medal of this rank." )
	Text( 18, "Obtain Medal of Honor", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 100 )
	TriggerCondition( 1, HasItem, 5332, 1 )
	TriggerAction( 1, TakeItem, 2383, 100 )
	TriggerAction( 1, TakeItem, 5332, 1 )
	TriggerAction( 1, GiveItem, 5333, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 19, "Sacred War Administrator: If you can give me 100 Blood Contract and 2nd Rank Medal, I'll give you the medal of this rank." )
	Text( 19, "Obtain Medal of Honor", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 250 )
	TriggerCondition( 1, HasItem, 5333, 1 )
	TriggerAction( 1, TakeItem, 2383, 250 )
	TriggerAction( 1, TakeItem, 5333, 1 )
	TriggerAction( 1, GiveItem, 5334, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 20, "Sacred War Administrator: If you can give me 250 Blood Contract and 3rd Rank Medal, I'll give you the medal of this rank." )
	Text( 20, "Obtain Medal of Honor", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 400 )
	TriggerCondition( 1, HasItem, 5334, 1 )
	TriggerAction( 1, TakeItem, 2383, 400 )
	TriggerAction( 1, TakeItem, 5334, 1 )
	TriggerAction( 1, GiveItem, 5335, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 21, "Sacred War Administrator: If you can give me 400 Blood Contract and 4th Rank Medal, I'll give you the medal of this rank." )
	Text( 21, "Obtain Medal of Honor", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 650 )
	TriggerCondition( 1, HasItem, 5335, 1 )
	TriggerAction( 1, TakeItem, 2383, 650 )
	TriggerAction( 1, TakeItem, 5335, 1 )
	TriggerAction( 1, GiveItem, 5336, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 22, "Sacred War Administrator: If you can give me 650 Blood Contract and 5th Rank Medal, I'll give you the medal of this rank." )
	Text( 22, "Obtain Medal of Honor", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 55 )
	TriggerCondition( 1, HasItem, 5336, 1 )
	TriggerAction( 1, TakeItem, 2865, 55 )
	TriggerAction( 1, TakeItem, 5336, 1 )
	TriggerAction( 1, GiveItem, 5337, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 23, "Sacred War Administrator: If you can give me 55 Blood Pledge Token and 6th Rank Medal, then I'll give you the medal of this rank." )
	Text( 23, "Obtain Medal of Honor", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 80 )
        TriggerCondition( 1, HasItem, 5337, 1)
	TriggerAction( 1, TakeItem, 2865, 80 )
	TriggerAction( 1, TakeItem, 5337, 1 )
	TriggerAction( 1, GiveItem, 5338, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 24, "Sacred War Administrator: If you can give me 80 Blood Pledge Token and 7th Rank Medal, then I'll give you the medal of this rank." )
	Text( 24, "Obtain Medal of Honor", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 110 )
	TriggerCondition( 1, HasItem, 5338, 1)
	TriggerAction( 1, TakeItem, 2865, 110 )
	TriggerAction( 1, TakeItem, 5338, 1 )
	TriggerAction( 1, GiveItem, 5339, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 25, "Sacred War Administrator: If you can give me 110 Blood Pledge Token and 8th Rank Medal, then I'll give you the medal of this rank." )
	Text( 25, "Obtain Medal of Honor", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 155 )
	TriggerCondition( 1, HasItem, 5339, 1)
	TriggerAction( 1, TakeItem, 2865, 155 )
	TriggerAction( 1, TakeItem, 5339, 1 )
	TriggerAction( 1, GiveItem, 5340, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 26, "Sacred War Administrator: If you can give me 155 Blood Pledge Token and 9th Rank Medal, then I'll give you the medal of this rank." )
	Text( 26, "Obtained Emblem", MultiTrigger, GetMultiTrigger(), 1)

	Text( 27, "Sacred War Administrator: Please Check if your inventory has enough space or you may not have all the items you needed I cannot exchange with you!")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 2865, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 28, "Sacred War Administrator: 20 Blood Covenant can be exchanged into 1 Token of Blood Alliance!" )
	Text( 28, "Confirm to exchange", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 29, "Sacred War Adminisrator: 15 honor points can be exchanged into one Token of Life & Death. Token of Life & Death will only disapear if you die inside Sacred War!")
	Text( 29, "Confirm to exchange", GetChaName45_guildwar, 1)

end
