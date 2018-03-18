--------------------------------------------------------------------------
--									--
--									--
--		NPCScript01.lua Created by Robin 2005.1.20.		--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading NPCScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- 白银之城:服装店尼萨婆婆
------------------------------------------------------------

function BT_NpcSale001()


	Talk( 1, "Granny Nila: Welcome! My clothings are cheap and good! We also have trendy stuff! Have a look around!" )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	0290	)
	Defence(	0466	)
	Defence(	0642	)
	Defence(	0296	)
	Defence(	0472	)
	Defence(	0648	)
	Defence(	0291	)
	Defence(	0467	)
	Defence(	0643	)
	Defence(	0297	)
	Defence(	0473	)
	Defence(	0649	)
	Defence(	0293	)
	Defence(	0469	)
	Defence(	0645	)
	Defence(	0298	)
	Defence(	0474	)
	Defence(	0650	)
	Defence(	0300	)
	Defence(	0476	)
	Defence(	0652	)
	Defence(	0301	)
	Defence(	0477	)
	Defence(	0653	)
	Defence(	0228	)
	Defence(	0229	)
	Defence(	0230	)
	Defence(	0295	)
	Defence(	0471	)
	Defence(	0647	)
	Defence(	0302	)
	Defence(	0478	)
	Defence(	0654	)
	Defence(	0299	)
	Defence(	0475	)
	Defence(	0651	)
	Defence(	0303	)
	Defence(	0479	)
	Defence(	0655	)
	
	-- AddNpcMission ( 220 )
	AddNpcMission ( 705 )
	
end

-------------------------------------------------------------------
--								--
--		白银城（比特）		--
--		219533,270323				--
-------------------------------------------------------------------

function r_talk86()

	Talk( 1, "Peter: Hi, I am the Guard, Peter. I keep the streets of this city free of thugs. I am also incharge of training new Swordsman. Is there anything that matters?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000 )
	TriggerCondition( 1, HasItem, 3953, 1 )
	TriggerAction( 1, TakeItem, 3953, 1 )
	TriggerAction( 1, TakeMoney, 1000 )
	TriggerAction( 1, GiveItem, 3164, 1, 4 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerAction( 1, SetProfession, 1 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerCondition( 2, HasItem, 3953, 1 )
	TriggerAction( 2, TakeItem, 3953, 1 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, GiveItem, 3164, 1, 4 )
	TriggerAction( 2, GiveItem, 1, 1, 4 )
	TriggerAction( 2, SetProfession, 1  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerCondition( 3, LvCheck, ">", 9 )
	TriggerCondition( 3, IsCategory, 3 )
	TriggerCondition( 3, PfEqual, 0 )
	TriggerCondition( 3, HasMoney, 1000 )
	TriggerCondition( 3, HasItem, 3953, 1 )
	TriggerAction( 3, TakeItem, 3953, 1 )
	TriggerAction( 3, TakeMoney, 1000 )
	TriggerAction( 3, GiveItem, 3164, 1, 4 )
	TriggerAction( 3, GiveItem, 1, 1, 4 )
	TriggerAction( 3, SetProfession, 1  )
	TriggerAction( 3, JumpPage, 3 )
	TriggerFailure( 3, JumpPage, 4 )

	--Talk(2, "Peter: Hey wait! Are you interested in swordsmanship? Hmm…you seems suitable to learn some sword fighting. It'll be a pity if you did not become a Swordsman!")
	--Text(2, "Ok, I will advance to become a Swordsman", MultiTrigger, GetMultiTrigger(), 3)
	--Text(2, "No, it is good enough for now.", CloseTalk)

	--Talk(3, "Peter: I have taught you all I know regarding swordsmanship. The rest will be up to your own effort.")

	--Talk(4, "Peter: Want to become a Swordsman? Only male Newbies at Level 10 with 1 Courage Certificate are eligible. Registration fee is 1000G.")

	--InitTrigger()
	---------------剑士
	--TriggerCondition( 1, LvCheck, ">", 9 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck, ">", 9 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerCondition( 3, LvCheck, ">", 9 )
	--TriggerCondition( 3, IsCategory, 3 )
	--TriggerCondition( 3, PfEqual, 0 )
	--TriggerAction( 3, JumpPage, 2 )
	--TriggerFailure( 3, JumpPage, 1 )

	--Start( GetMultiTrigger(), 3 )

	MisListPage(2)


end


-------------------------------------------------------------------
--								--
--		白银城（铁匠——小金金）		--
--		219533,270323				--
-------------------------------------------------------------------
function r_trade01 ()
	--买卖东西对话
	Talk( 1, "Goldie: Hi, I sell all sorts of weapons! Take a look!" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair )
	Text( 1, "Forge", OpenForge)
	Text( 1, "Fusion", OpenMilling)
	Text( 1, "Apparel Fusion", OpenFusion)
	Text( 1, "Apparel Upgrade", OpenUpgrade)
	
	
	Talk(9,"Recently, the item mall has sold a batch of aberrance Alloy Pickaxe which has caused much trouble to the players. Should you have any Alloy Pickaxe which durability is at 0, you can come to me to exchange a new one")
	Text(9,"I have an aberrance pickaxe, I need to repair my pickaxe",CheckMetal)
	Text(9,"Don't know what are you talking about",CloseTalk)

	
	Text( 1, "Mold a mask", JumpPage,4)

	Talk( 2, "Goldie: Forging? Only the blacksmith in Shaitan City can do it." )

	Talk( 3, "Goldie: You wish to combine something? From what I understand, you need a combining scroll and it will list the required items. Collect the items needed and talk to Grocer - Amos in Shaitan City. He is the only person who knows how to combine." )

	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0001	)
	Weapon(	0010	)
	Weapon(	0002	)
	Weapon(	0011	)
	Weapon(	0003	)
	Weapon(	0012	)
	Weapon(	0013	)
	Weapon(	0014	)
	Weapon(	0022	)
	Weapon(	0005	)
	Weapon(	0023	)
	Weapon(	1388	)
	Weapon(	1389	)
	Weapon(	1390	)
	Weapon(	1391	)
	Weapon(	1392	)
	Weapon(	1395	)
	Weapon(	1396	)
	Weapon(	1397	)
	Weapon(	1398	)
	Weapon(	1399	)
	Weapon(	0121	)
	Weapon(	0122	)
	Weapon(	0123	)
	Weapon(	0124	)
	Weapon(	0125	)
	Weapon(	0126	)
	Weapon(	0015	)
	Weapon(	0020	)
	Weapon(	0016	)
	Weapon(	0021	)
	Weapon(	0004	)
	Weapon(	1370	)
	Weapon(	1371	)
	Weapon(	1372	)
	Weapon(	1373	)
	Weapon(	1377	)
	Weapon(	1378	)
	Weapon(	1379	)
	Weapon(	1380	)
	Weapon(	1381	)
	Weapon(	1382	)
	Weapon(	1386	)
	Weapon(	1387	)
	Weapon(	0073	)
	Weapon(	0080	)
	Weapon(	0074	)
	Weapon(	0081	)
	Weapon(	0075	)
	Weapon(	0082	)
	Weapon(	0076	)
	Weapon(	0083	)
	Weapon(	0077	)
	Weapon(	0084	)
	Weapon(	1415	)
	Weapon(	1416	)
	Weapon(	1417	)
	Weapon(	1418	)
	Weapon(	1419	)
	Weapon(	1422	)
	Weapon(	1423	)
	Weapon(	1424	)
	Weapon(	1425	)
	Weapon(	1426	)
	Weapon(	1443	)
	Weapon(	1444	)
	Weapon(	1445	)
	Weapon(	1446	)
	Weapon(	1447	)
	Weapon(	1450	)
	Weapon(	1451	)
	Weapon(	1452	)
	Weapon(	1460	)
	Weapon(	1461	)
	Talk( 4, "Goldie: What type of mask would you like to mold?")
	Text( 4, "Snowdoll Mask",JumpPage,5)
	Text( 4, "Pumpkin Mask", JumpPage,6)
	Text( 4, "Deathsoul Mask", JumpPage,7)


	InitTrigger() --兑换鬼怪面具
	TriggerCondition( 1, HasItem, 4358, 30 )
	TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 4358, 30 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1120, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(5, "Goldie: Snowdoll Mask requires 30 Blue Snowballs to mold.")
	Text( 5, "Confirm to make",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --兑换面具
	TriggerCondition( 1, HasItem, 4809, 30 )
	TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 4809, 30 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1121, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(6, "Goldie: Pumpkin Mask requires 30 Pumpkin Heads")
	Text( 6, "Confirm to make",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --兑换面具
	TriggerCondition( 1, HasItem, 2419, 20 )
	TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 2419, 20 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1122, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(7, "Goldie: Deathsoul Mask requires 20 Magical Bones to mold.")
	Text( 7, "Confirm to make",MultiTrigger, GetMultiTrigger(), 1) 
	
	Talk( 8, "Goldie: You do not seems to have the required items to mold a mask or your inventory has been binded.")
	
	AddNpcMission ( 703 )
	AddNpcMission	(1044)
	AddNpcMission	(1096)
	AddNpcMission	(1155)
	AddNpcMission	(1207)
	AddNpcMission	(58)
	AddNpcMission	(59)
	AddNpcMission	(60)
	AddNpcMission(	1221	)


end
-----------------------------------------------------------------小金金铁匠结束----------------------------------------------------------------------------------------------




------------------------------------------------------------------
--								--
--								--
------------------------白银城秘书斯克特---------------------------
--			221925,274925				--
--								--
------------------------------------------------------------------
function r_talk01 ()
	
	Talk( 1,"Hello there! I am Argent Secratary - Salvier. If you're looking for any kind of job, feel free to ask!")


end 
---------------<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<NPC 《斯克特》结束了!
----------------------------------------------------------
--							--
--							--
--		白银城[老奶奶]				--
--							--
--		227725,276925				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk02 ()

	
	Talk( 1, "Old granny: How are you, young man." )
	--Text( 1, "Seed of Love", JumpPage, 2)
	--Text( 1, "Redeem 10 Seeds of Love", JumpPage, 3)
	--Text( 1, "Redeem 100 Seeds of Love", JumpPage, 4)
	--Text( 1, "Redeem 1000 Seeds of Love", JumpPage, 5)
	Text( 1, "Exchange Lantern", JumpPage, 7 )
	Text( 1, "Leave", CloseTalk)
	
	
	Talk( 2, "Granny: Why wait when you can sow your Seed of Love. Bring me 1 vial of Pure Water, 1 Fancy Petal, 1 Perfect Sapphire and 1 Heart of Naiad to germinate 1 Seed of Love." )
	Text( 2, "Redeem Seed of Love", GetChaName_21, 1 )

	Talk( 3, "Granny: 10 Seeds of Love to exchange for 1 Honey Chocolate")
	Text(3,"Confirm to exchange",  GetChaName_22, 1)

	Talk( 4, "Granny: 100 Seeds of Love to exchange for 3 Amplifiers of Strive")
	Text(4,"Confirm to exchange",  GetChaName_23, 1)

	Talk( 5, "Granny: 1000 Seeds of Love can be used to exchange for 1 Pass to Abandon 4")
	Text(5,"Confirm to exchange",  GetChaName_24, 1)
	
	InitTrigger() --对换灯笼
	TriggerCondition( 1, HasItem, 3904, 15 )
	TriggerCondition( 1, HasItem, 3911, 15 )
	TriggerCondition( 1, HasItem, 4450, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 3904, 15 )
	TriggerAction( 1, TakeItem, 3911, 15 )
	TriggerAction( 1, TakeItem, 4450, 1 )
 	TriggerAction( 1, GiveItem, 3342, 1 ,4)
	TriggerFailure( 1, JumpPage, 9 ) 
	Talk( 7, "Bingo: Give me 15 pieces of Red Paper, 15 sticks of Bamboo Stick and 1 Strange Candle to exchange for a Lantern.")
	Text( 7, "Confirm trade",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 9, "Bingo: You do not seem to have enough of Red Paper, Bamboo Stick or Strange Candle!")

	MisListPage(1)

	AddNpcMission ( 282 )
	AddNpcMission ( 283 )
	AddNpcMission	(1026)
	AddNpcMission	(1084)
	AddNpcMission	(1137)
	AddNpcMission	(1189)
	AddNpcMission(	1224	)
	AddNpcMission(	373	)
	AddNpcMission(	374	)
	AddNpcMission(	388	)
--	AddNpcMission( 906 )



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<老奶奶结束




----------------------------------------------------------
--							--
--							--
--		白银城[药草商人——帝姆]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function r_talk03 ()

	Talk( 1, "Ditto: Hi! The herbs I have are all gathered by meself. Have a look!" )
	Text( 1, "Trade", BuyPage)
	--Text( 1, "Sell items!", SalePage)
	Text( 1, "Decoct Recovery Potion", JumpPage, 5)


	Talk( 4, "Ditto: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Shaitan by using the teleporter." )
	Text( 4, "Trade", BuyPage)
	--Text( 4, "Sell items!", SalePage )
	Text( 4, "Decoct Recovery Potion", JumpPage, 5)

---------------制作甘草药水
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3133, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "Ditto: You need to have medicine when you are sick! What do you need?" )
	Text( 5, "Decoct Liquorice Potion", MultiTrigger, GetMultiTrigger(), 1 )
	--------------炮制醒神花茶
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Brew Energetic Tea", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------合成秘制奇异膏
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3131, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3131, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3135, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 5, "Decoct Special Ointment", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------蒸烤冰芽酥
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3132, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3132, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3136, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "Make Snowy Soft Bud", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "Ditto: Money first. This is what you wanted. Keep it well." )
	Talk( 7, "Ditto: It requires 10 Medicated Grass, 1 Bottle and 50G to make 1 Liquorice Potion." )
	Talk( 8, "Ditto: Oh, you need 10 Fancy Petals, 1 Bottle and 50G to make 1 cup of Energetic Tea." )
	Talk( 9, "Ditto: Hi, I need 10 Strange Fruits and 1 Bottle to make 1 Special Ointment. You also need to pay me 50G." )
	Talk( 10, "Ditto: Hey, you need to have 10 Snowy Grass Buds and 1 Bottle to make 1 Snowy Soft Bud. There is a fee of 50G too!" )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)




--这里写任务的检测


-----------超过9级告诉玩家可以转职
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	---TriggerAction( 1, JumpPage, 4 )
	--TriggerFailure( 1, JumpPage, 1 )

	--Start( GetMultiTrigger(), 1 )

---------------------注册任务
	MisListPage(1)

	AddNpcMission ( 707 )
	--AddNpcMission ( 733 )
	--AddNpcMission ( 738 )
	--AddNpcMission ( 739 )
	AddNpcMission ( 214 )
	AddNpcMission ( 215 )
	AddNpcMission ( 217 )
	AddNpcMission ( 218 )
	AddNpcMission ( 219 )
	AddNpcMission ( 220 )
	AddNpcMission	(1046)
	AddNpcMission	(1208)
	AddNpcMission	(73)
	AddNpcMission	(74)
	AddNpcMission	(75)
	--AddNpcMission	(913)
	--AddNpcMission	(914)
	--AddNpcMission	(915)
	--AddNpcMission	(916)
-------------eleven
	AddNpcMission	(5027)
	AddNpcMission	(5035)
	AddNpcMission	(5036)

	MisListPage(4)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<药草商人——嫡母结束



----------------------------------------------------------
--							--
--							--
--		白银城[护士小姐——岚岚]			--
--							--
--		224575,277025				--
----------------------------------------------------------

---------------加血恢复的判定


----------------普通对话开始
function r_talk04 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1, "Gina: Hello! I am Nurse Gina. Look for me if you are sick or injured!" )
	Text( 1, "Greater Heal", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1, "Heal", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1, "Build Ship", JumpPage, 10)

	Talk( 2, "Gina: Sorry, healing requires 200G. You do not have enough…" )

	Talk( 3, "Gina: Sorry! Healing requires 50G…You do not have enough…" )

	Talk( 4, "I do not have any letter. I guess you got the wrong person" )

	Talk( 5, "Ya? Forget it...Thank you. Take this reward for your hard work." )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 200 )
	TriggerAction( 2, TakeMoney, 200 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6, "Gina: Hello! I am Nurse Gina. Look for me if you are sick or injured!" )
	Text( 6, "Greater Heal", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 50 )
	TriggerAction( 2, TakeMoney, 50 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6, "Heal", MultiTrigger,GetMultiTrigger(),2)
	

	InitTrigger()
	TriggerCondition( 1, HasMission, 53 )
	TriggerCondition( 1, HasFlag, 53, 1 )
	TriggerCondition( 1, NoRecord, 53 )
	TriggerCondition( 1, NoFlag, 53, 4 )
	TriggerCondition( 1, HasItem, 2304, 1 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )
	AddNpcMission	(1048)
	AddNpcMission	(1210)
	AddNpcMission	(920)-----------------------------------------
	AddNpcMission	(921)

	MisListPage(6)
	
	-----铁人六项
	AddNpcMission ( 6117 )
	AddNpcMission ( 6118 )
	AddNpcMission ( 6119 )
	AddNpcMission ( 6120 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护士小姐——岚岚         结束咯



----------------------------------------------------------
----							--
--							--
--		白银城[酒吧女 - 蒂娜]			--
--							--
--		225325,278875				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk05 ()

	Talk( 1, "Donna: Hi, I am Donna. Are you a sailor? Have you been to the legendary Galley Isle? Tell me the stories if you have." )
	Text( 1, "Buy Wine", BuyPage )
	Text(1, "regarding fame",JumpPage,4)
	--Text(1, "Royal Pirate Reputation Redemption",JumpPage,7)
	InitTrade()
	Other(	3916	)

	Talk( 2, "Donna: Heard you have run out of Eight Treasure Wine. I have one left though. If you would like to purchase it, bring me 100000G." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 4072, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Eight Treasures Wine", MultiTrigger,GetMultiTrigger(),1)

	Talk( 3, "Donna: It seems that you do not have enough gold. Wine is not for the poor. Come back when you have earned enough." )

	Talk(4,"Reputation is very important. Those who are extremely helpful will in turn obtain more reputation! You can redeem these reputation points for rewards here")
	Text(4,"I have faith in my reputation. I come to redeem the rewards.", JumpPage,5)

	Talk(5,"The current rewards for redemption are as follows. When you redempt your rewards, I'll minus your fame.")
	InitTrigger()
	TriggerCondition( 1, HasCredit,20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20 )
	TriggerAction( 1, GiveItem, 2602,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"Novice Endeavor Emblem: Requires 20 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200 )
	TriggerAction( 1, GiveItem, 2603,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"Standard Endeavor Emblem: Requires 200 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 2604,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"Expert Endeavor Emblem: Requires 2000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)
	Talk(6,"Please make sure that there are empty slots in your inventory and your inventory is not binded. Either that you do not have sufficient reputation points. Help more people before you come back looking for me. Let me tell you a secret...If you are willing to accept a disciple...",CloseTalk)

	Talk(7,"Hi! This is the Royal Pirates! We only serve pirates with good reputation! Do you wish to redeem anything? Reputation points will be deducted upon redemption.")
	InitTrigger()
	TriggerCondition( 1, HasCredit,500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerAction( 1, GiveItem, 855,5,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"5 fairy coins: Requires 500 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 5000 )
	TriggerAction( 1, GiveItem, 3094,3,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"Amplifier of Strive x3: Requires 5000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,20000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20000 )
	TriggerAction( 1, GiveItem, 0610,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"1 Novice Self Destruct: Requires 20000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 50000 )
	TriggerAction( 1, GiveItem, 0885,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"Lv1 Refining Gem: Requires 50000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200000 )
	TriggerAction( 1, GiveItem, 0862,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"Gem of Colossus x1: Requires 200000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)


	InitTrigger()
	TriggerCondition( 1, HasCredit,600000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 600000 )
	TriggerAction( 1, GiveItem, 1012,1,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"1 Gem of Soul: Requires 600000 reputation points" ,MultiTrigger,GetMultiTrigger(),1)

	Talk(8,"Welcome to the Royal Pirates! Work harder to achieve your aim!")

	InitTrigger()
	TriggerCondition( 1, HasRecord, 255 )
	TriggerCondition( 1, NoItem, 4072, 1 )
	TriggerCondition( 1, NoRecord, 242 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )


	Start( GetMultiTrigger(), 1 )

	MisListPage(2)

	AddNpcMission ( 268 )
	AddNpcMission ( 269 )
	AddNpcMission ( 288 )
	AddNpcMission ( 502 )
	AddNpcMission ( 334 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒吧女 - 蒂娜结束



----------------------------------------------------------
--							--
--							--
--		白银城[小山车]				--
--							--
--		219350,273050				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk06 ()
	
	
	Talk( 1, "Little Daniel: Young adventurers should not be afraid to explore the world. There are many beautiful things waiting to be discovered. Have you been to the great shrine in the desert? How about the Lone Tower in the deep Sacred forest?" )
	--Text( 1, "Learn Navigation Skill", BuyPage )
	Text( 1, "I do not have time for story now.", CloseTalk)
	Text(1,"Show Little Daniel those Robot Cores in your inventory",JumpPage,2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeItem, 3933, 10 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, GiveItem, 1812, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Little Daniel: Oh my...I did not expect you to bring so many mechanical core. Bring me 10 Robot Core and 5000G so that I can make a Ancient Generator for you." )
	Text( 2, "Ok I will pay the (5000G) fee",  MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, "Let me consider", CloseTalk)

	Talk(3, "Little Daniel: Keep it well. This is the Ancient Generator that you will need to get inside Forsaken City. Come to me if you need more.")

	Talk(4, "Little Daniel: Sorry, you need to give me 10 Robot Cores and 5000G to make 1 Ancient Generator.")

	InitTrade()
	Other(	3243	)
	Other(	3244	)
	Other(	3245	)
	Other(	3246	)
	Other(	3247	)
	Other(	3248	)
	Other(	3249	)
	Other(	3250	)
	Other(	3251	)
	Other(	3252	)
	Other(	3253	)
	Other(	3254	)
	Other(	3255	)
	Other(	3256	)
	Other(	3257	)
	Other(	3258	)
	Other(	3259	)
	Other(	3260	)
	Other(	3261	)
	Other(	3262	)
	Other(	3263	)
	Other(	3264	)
	Other(	3265	)
	Other(	3266	)
	Other(	3267	)
	Other(	3268	)
	Other(	3269	)
	Other(	3270	)
	Other(	3271	)
	Other(	3272	)
	Other(	3273	)
	Other(	3274	)
	Other(	3275	)
	Other(	3276	)
	Other(	3277	)
	Other(	3278	)
	Other(	3279	)
	Other(	3280	)
	Other(	3281	)
	Other(	3282	)
	Other(	3283	)
	Other(	3284	)
	Other(	3285	)
	Other(	3286	)
	Other(	3287	)
	Other(	3288	)
	Other(	3289	)
	Other(	3290	)
	Other(	3291	)
	Other(	3292	)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 10 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 748 )
	AddNpcMission	(1045)
	AddNpcMission	(1099)
	AddNpcMission	(1157)
	AddNpcMission	(758)
	AddNpcMission	(103)
	AddNpcMission	(191)
	AddNpcMission	(192)
	AddNpcMission	(193)
	AddNpcMission	(197)
	AddNpcMission(	1225	)
	AddNpcMission(	503	)
	AddNpcMission	(330)
	AddNpcMission	(331)
	AddNpcMission	(332)
	AddNpcMission	(335)
	AddNpcMission	(359)
	AddNpcMission	(360)
	AddNpcMission	(361)
	AddNpcMission	(362)
	AddNpcMission	(363)
	AddNpcMission	(364)
	AddNpcMission	(365)
	AddNpcMission	(366)
	AddNpcMission	(367)
	AddNpcMission	(368)
	AddNpcMission	(369)
	AddNpcMission	(370)
	AddNpcMission	(371)
	AddNpcMission	(522)
------------eleven
	AddNpcMission	(5058)
	AddNpcMission	(5062)
	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<小山车结束






----------------------------------------------------------
--							--
--							--
--		白银城[杂货商人 - 吉普立]			--
--							--
--		225075,277025				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk07 ()

	Talk( 1, "Jimberry: Hi, welcome! How can I help you?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Redeem Reality Mask",JumpPage, 2 )
	Text( 1, "Earn Life Skill Points", JumpPage, 5 )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	3297	)
	Other(	3298	)
	Other(	3164	)
	Other(	3160	)
	Other(	3161	)
	Other(	3165	)
	Other(	3238	)
	Other(	3170	)
	Other(	3293	)
	Other(	3174	)
	Other(	3163	)
	Other(	3176	)
	Other(	3180	)
	Other(	3179	)
	Other(	3177	)
	Other(	3168	)
	Other(	3162	)
	Other(	3166	)
	Other(	3167	)
	Other(	3172	)
	Other(	3173	)
	Other(	3227	)
	Other(	3231	)
	Other(	3228	)
	Other(	3229	)
	Other(	3230	)
	Other(	3232	)
	Other(	3233	)
	Other(	3234	)
	Other(	3235	)
	Other(	3236	)
	Other(	3237	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other(	3296	)
	Other(	3299	)
	--baby--生活技能书Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
--	Other(	3288	)--Study Skill Book
	Other(  2440    )
	--AddNpcMission	(5501)


	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "To obtain a Reality Mask requires 1 Elven Signet, 10000G and any of 10x Lv3 gathered resource" )
	Text( 2, "Bones to change a Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Crystal Eolith to change a Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Teak Wood Log to change a Reality Mask ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Bubble Fish to change a Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "Life Skill Points Are Totally Free!")
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<",121  )
	TriggerAction( 1, AddExpAndType, 2, 85500, 85500 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 5, "Points Please", MultiTrigger, GetMultiTrigger(), 1)
	

	Talk( 3, "Jimberry: Keep it well, this is important!" )
	Talk( 4, "Jimberry: You do not seem to have enough materials. Your inventory may be binded or you do not have enough free slots." )
	Talk( 6, "Seems that something wasn't right!" )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人 - 吉普立结束


----------------------------------------------------------
--							--
--							--
--		白银城[居民·玛格丽特]			--
--							--
--		227459,277722				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk08 ()

	Talk( 1, "Margaret: You...Hahaha...Hello. Yesterday on television...Hahaha...Did you watch it. Hohoho...Its so funny! Hahaha..." )
	Text( 1, "Bake Pastry", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Margaret: You have good foresight! Not that I am boosting, but I watched the \"Iron Chef\" on television daily! The foodstuff I made are just delicious. Hehe" )
	Text( 2, "Mix Elven Fruit Juice", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3123, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Brew Red Date Tea", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3124, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "Make Mushroom Soup", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3125, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 2, "Mix Stramonium Juice", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3126, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Make Ice Cream", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Margaret: This is what you wanted. No more no less." )
	Talk( 4, "Margaret: Sorry, you do not have the required items. Elven Fruit Juice needs 10 Elven Fruits and 1 Glass to mix." )
	Talk( 5, "Margaret: Sorry, you do not have the required items. Red Date Tea needs 10 Red Dates and 1 Glass to make." )
	Talk( 6, "Margaret: Sorry, you do not have the required items. Mushroom Soup requires 10 Mushroom and 1 Glass to make." )
	Talk( 7, "Margaret: Sorry, you do not have the required items for the recipe. It requires 10 Stramonium Fruits and 1 Glass to mix." )
	Talk( 8, "Margaret: Sorry! You do not have the required items. You need 10 Ice Fruits and 1 Glass to make an Ice Cream." )
	AddNpcMission	(1023)
	AddNpcMission	(1080)
	AddNpcMission	(1135)
	AddNpcMission	(1186)
	AddNpcMission(	1223	)
	




end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<居民·玛格丽特


----------------------------------------------------------
--							--
--							--

	--白银城[旅店老板·玛拉依兰]		--
--							--
--		221150,278125				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk09 ()
	
	Talk( 1, "Hi there! Everything that you need about pet ,you can find here!")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Fairies marriage", OpenEidolonMetempsychosis )
	Text( 1, "Nothing...", CloseTalk)
	
	InitTrade()

	Weapon(	0680	)--Mordo
	Weapon(	0183	)
	Weapon(	0184	)
	Weapon(	0185	)
	Weapon(	0186	)
	Weapon(	0187	)
	Weapon(	0188	)
	Weapon(	0189	)
	Weapon(	0190	)
	Weapon(	0191	)
	Defence(	0227	)--Fairy Ration
	Defence(	2312	)--Auto Ration
	Defence(	0578	)--Fruit of Growth
	Defence(	0222	)--Snow Dragon Fruit
	Defence(	0276	)--Great Snow Dragon Fruit
	Defence(	0223	)--Icepire Plum
	Defence(	0277	)--Great Icepire Plum
	Defence(	0224	)--Zephyr Fish Floss
	Defence(	0278	)--Great Zephyr Fish Floss
	Defence(	0225	)--Argent Mango
	Defence(	0279	)--Great Argent Mango
	Defence(	0226	)--Shaitan Biscuit
	Defence(	0280	)--Great Shaitan Biscuit
	Defence(	0244	)--Standard Protection
	Defence(	0247	)--Standard Berserk
	Defence(	0250	)--Standard Magic
	Defence(	0253	)--Standard Recover
	Defence(	0260	)--Standard Meditation
	Defence(	0239	)--Novice Fairy Possession
	Defence(	0610	)--Novice Self Destruct
	Defence(	3918	)--Demonic Fruit of Acidity
	Defence(	3919	)--Demonic Fruit of Courage
	Defence(	3920	)--Demonic Fruit of Strength
	Defence(	3921	)--Demonic Fruit of Intellect
	Defence(	3922	)--Demonic Fruit of Energy
	Defence(	3925	)--Demonic Fruit of Mystery
	Other(	1196	)
	Other(	4531	)
	Other(	4537	)
	Other(	3444	)
	Other(	4533	)
	Other(	4530	)
	Other(	1253	)
	Other(	3442	)
	Other(	3436	)
	Other(	3435	)
	Other(	3437	)
	Other(	3434	)





end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅店老板·玛拉依兰




----------------------------------------------------------
--							--
--							--
--		白银城[佛姆]				--
--							--
--		222629,272668				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk11 ()
	
	
	Talk( 1, "Psst! Looking for valuable things, anything rare, gems maybe? Then you are in the right place! I hope you have any voucher.")
	Text( 1, "Level 1 Gems", JumpPage, 2)
	Text( 1, "Level 5 Gems", JumpPage, 3)
	Text( 1, "Level 7 Gems", JumpPage, 4)
	Text( 1, "Level 9 Gems", JumpPage, 5)
	Text( 1, "Refining Gems", JumpPage, 27)
	Text( 1, "Nothing...", CloseTalk)
	
	Talk( 2, "Hahaha! Level 1 Gems? I see that you are still in the newbie phase! Anyway, in what gems are you interested?")
	Text( 2, "Unique Gems", JumpPage, 6)
	Text( 2, "Black Dragon Gems", JumpPage, 7)
	Text( 2, "Great Gems", JumpPage, 8)
	Text( 2, "Azrael Gems", JumpPage, 9)
	Text( 2, "Diamond Gems", JumpPage, 10)
	Text( 2, "Special Gems", JumpPage, 28)
	Text( 2, "Other level of gems", JumpPage, 1)
	
	Talk( 3, "Gooood! Level 5 Gems. Well...higher level of gems more earnings for me hehehehehe!")
	Text( 3, "Unique Gems", JumpPage, 11)
	Text( 3, "Black Dragon Gems", JumpPage, 12)
	Text( 3, "Great Gems", JumpPage, 13)
	Text( 3, "Azrael Gems", JumpPage, 14)
	Text( 3, "Diamond Gems", JumpPage, 15)
	Text( 3, "Special Gems", JumpPage, 29)
	Text( 3, "Other level of gems", JumpPage, 1)
	
	Talk( 4, "Wooow! You have upgraded to level 7 Gems? Mucher nicer, much nicer!")
	Text( 4, "Unique Gems", JumpPage, 16)
	Text( 4, "Black Dragon Gems", JumpPage, 17)
	Text( 4, "Great Gems", JumpPage, 18)
	Text( 4, "Azrael Gems", JumpPage, 19)
	Text( 4, "Diamond Gems", JumpPage, 20)
	Text( 4, "Special Gems", JumpPage, 30)
	Text( 4, "Other level of gems", JumpPage, 1)
	
	Talk( 5, "Oh my god! Level 9 Gems? Someone's gonna be strong and someone's rich!")
	Text( 5, "Unique Gems", JumpPage, 21)
	Text( 5, "Black Dragon Gems", JumpPage, 22)
	Text( 5, "Great Gems", JumpPage, 23)
	Text( 5, "Azrael Gems", JumpPage, 24)
	Text( 5, "Diamond Gems", JumpPage, 25)
	Text( 5, "Special Gems", JumpPage, 31)
	Text( 5, "Other level of gems", JumpPage, 1)

	Talk( 6, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3765,1 )
	TriggerAction( 1, TakeItem, 3765,1 )
	TriggerAction( 1, GiveItem, 863, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Gem of Rage", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3765,1 )
	TriggerAction( 1, TakeItem, 3765,1 )
	TriggerAction( 1, GiveItem, 860, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Gem of the Wind", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3765,1 )
	TriggerAction( 1, TakeItem, 3765,1 )
	TriggerAction( 1, GiveItem, 861, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Gem of Striking", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3765,1 )
	TriggerAction( 1, TakeItem, 3765,1 )
	TriggerAction( 1, GiveItem, 862, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3765,1 )
	TriggerAction( 1, TakeItem, 3765,1 )
	TriggerAction( 1, GiveItem, 1012, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Gem of Soul", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 6, "Other Gem!", JumpPage, 2)
	
	Talk( 7, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3766,1 )
	TriggerAction( 1, TakeItem, 3766,1 )
	TriggerAction( 1, GiveItem, 864, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "Eye of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3766,1 )
	TriggerAction( 1, TakeItem, 3766,1 )
	TriggerAction( 1, GiveItem, 865, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "Soul of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3766,1 )
	TriggerAction( 1, TakeItem, 3766,1 )
	TriggerAction( 1, GiveItem, 866, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "Heart of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 7, "Other Gem!", JumpPage, 2)
	
	Talk( 8, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3767,1 )
	TriggerAction( 1, TakeItem, 3767,1 )
	TriggerAction( 1, GiveItem, 3721, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Great Gem of Rage", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3767,1 )
	TriggerAction( 1, TakeItem, 3767,1 )
	TriggerAction( 1, GiveItem, 3725, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Great Gem of the Wind", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3767,1 )
	TriggerAction( 1, TakeItem, 3767,1 )
	TriggerAction( 1, GiveItem, 3723, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Great Gem of Striking", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3767,1 )
	TriggerAction( 1, TakeItem, 3767,1 )
	TriggerAction( 1, GiveItem, 3724, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Great Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3767,1 )
	TriggerAction( 1, TakeItem, 3767,1 )
	TriggerAction( 1, GiveItem, 3722, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Great Gem of Soul", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 8, "Other Gem!", JumpPage, 2)
	
	Talk( 9, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3768,1 )
	TriggerAction( 1, TakeItem, 3768,1 )
	TriggerAction( 1, GiveItem, 5845, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Azrael's Glare", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3768,1 )
	TriggerAction( 1, TakeItem, 3768,1 )
	TriggerAction( 1, GiveItem, 5846, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Undead Azrael", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3768,1 )
	TriggerAction( 1, TakeItem, 3768,1 )
	TriggerAction( 1, GiveItem, 5847, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Azrael's Light", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3768,1 )
	TriggerAction( 1, TakeItem, 3768,1 )
	TriggerAction( 1, GiveItem, 5848, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Azrael's Aggregation", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3768,1 )
	TriggerAction( 1, TakeItem, 3768,1 )
	TriggerAction( 1, GiveItem, 5849, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Azrael's Dance", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 9, "Other Gem!", JumpPage, 2)
	
	Talk( 10, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3769,1 )
	TriggerAction( 1, TakeItem, 3769,1 )
	TriggerAction( 1, GiveItem, 3693, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 10, "Attack Speed Diamond", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3769,1 )
	TriggerAction( 1, TakeItem, 3769,1 )
	TriggerAction( 1, GiveItem, 3694, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 10, "Movement Speed Diamond", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 10, "Other Gem!", JumpPage, 2)
	
	Talk( 11, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3770,1 )
	TriggerAction( 1, TakeItem, 3770,1 )
	TriggerAction( 1, GiveItem, 863, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Gem of Rage", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3770,1 )
	TriggerAction( 1, TakeItem, 3770,1 )
	TriggerAction( 1, GiveItem, 860, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Gem of the Wind", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3770,1 )
	TriggerAction( 1, TakeItem, 3770,1 )
	TriggerAction( 1, GiveItem, 861, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Gem of Striking", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3770,1 )
	TriggerAction( 1, TakeItem, 3770,1 )
	TriggerAction( 1, GiveItem, 862, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3770,1 )
	TriggerAction( 1, TakeItem, 3770,1 )
	TriggerAction( 1, GiveItem, 1012, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Gem of Soul", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 11, "Other Gem!", JumpPage, 3)
	
	Talk( 12, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3771,1 )
	TriggerAction( 1, TakeItem, 3771,1 )
	TriggerAction( 1, GiveItem, 864, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "Eye of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3771,1 )
	TriggerAction( 1, TakeItem, 3771,1 )
	TriggerAction( 1, GiveItem, 865, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "Soul of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3771,1 )
	TriggerAction( 1, TakeItem, 3771,1 )
	TriggerAction( 1, GiveItem, 866, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "Heart of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 12, "Other Gem!", JumpPage, 3)
	
	Talk( 13, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3772,1 )
	TriggerAction( 1, TakeItem, 3772,1 )
	TriggerAction( 1, GiveItem, 3721, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Great Gem of Rage", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3772,1 )
	TriggerAction( 1, TakeItem, 3772,1 )
	TriggerAction( 1, GiveItem, 3725, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Great Gem of the Wind", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3772,1 )
	TriggerAction( 1, TakeItem, 3772,1 )
	TriggerAction( 1, GiveItem, 3723, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Great Gem of Striking", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3772,1 )
	TriggerAction( 1, TakeItem, 3772,1 )
	TriggerAction( 1, GiveItem, 3724, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Great Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3772,1 )
	TriggerAction( 1, TakeItem, 3772,1 )
	TriggerAction( 1, GiveItem, 3722, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Great Gem of Soul", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 13, "Other Gem!", JumpPage, 3)
	
	
	Talk( 14, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3773,1 )
	TriggerAction( 1, TakeItem, 3773,1 )
	TriggerAction( 1, GiveItem, 5845, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Azrael's Glare", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3773,1 )
	TriggerAction( 1, TakeItem, 3773,1 )
	TriggerAction( 1, GiveItem, 5846, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Undead Azrael", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3773,1 )
	TriggerAction( 1, TakeItem, 3773,1 )
	TriggerAction( 1, GiveItem, 5847, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Azrael's Light", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3773,1 )
	TriggerAction( 1, TakeItem, 3773,1 )
	TriggerAction( 1, GiveItem, 5848, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Azrael's Aggregation", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3773,1 )
	TriggerAction( 1, TakeItem, 3773,1 )
	TriggerAction( 1, GiveItem, 5849, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Azrael's Dance", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, "Other Gem!", JumpPage, 3)
	
	Talk( 15, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3774,1 )
	TriggerAction( 1, TakeItem, 3774,1 )
	TriggerAction( 1, GiveItem, 3693, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "Attack Speed Diamond", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3774,1 )
	TriggerAction( 1, TakeItem, 3774,1 )
	TriggerAction( 1, GiveItem, 3694, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "Movement Speed Diamond", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, "Other Gem!", JumpPage, 3)
	
	Talk( 16, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3784,1 )
	TriggerAction( 1, TakeItem, 3784,1 )
	TriggerAction( 1, GiveItem, 863, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "Gem of Rage", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3784,1 )
	TriggerAction( 1, TakeItem, 3784,1 )
	TriggerAction( 1, GiveItem, 860, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "Gem of the Wind", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3784,1 )
	TriggerAction( 1, TakeItem, 3784,1 )
	TriggerAction( 1, GiveItem, 861, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "Gem of Striking", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3784,1 )
	TriggerAction( 1, TakeItem, 3784,1 )
	TriggerAction( 1, GiveItem, 862, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3784,1 )
	TriggerAction( 1, TakeItem, 3784,1 )
	TriggerAction( 1, GiveItem, 1012, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "Gem of Soul", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, "Other Gem!", JumpPage, 4)
	
	Talk( 17, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3785,1 )
	TriggerAction( 1, TakeItem, 3785,1 )
	TriggerAction( 1, GiveItem, 864, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "Eye of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3785,1 )
	TriggerAction( 1, TakeItem, 3785,1 )
	TriggerAction( 1, GiveItem, 865, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "Soul of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3785,1 )
	TriggerAction( 1, TakeItem, 3785,1 )
	TriggerAction( 1, GiveItem, 866, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "Heart of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, "Other Gem!", JumpPage, 4)
	
	Talk( 18, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3786,1 )
	TriggerAction( 1, TakeItem, 3786,1 )
	TriggerAction( 1, GiveItem, 3721, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "Great Gem of Rage", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3786,1 )
	TriggerAction( 1, TakeItem, 3786,1 )
	TriggerAction( 1, GiveItem, 3725, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "Great Gem of the Wind", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3786,1 )
	TriggerAction( 1, TakeItem, 3786,1 )
	TriggerAction( 1, GiveItem, 3723, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "Great Gem of Striking", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3786,1 )
	TriggerAction( 1, TakeItem, 3786,1 )
	TriggerAction( 1, GiveItem, 3724, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "Great Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3786,1 )
	TriggerAction( 1, TakeItem, 3786,1 )
	TriggerAction( 1, GiveItem, 3722, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "Great Gem of Soul", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, "Other Gem!", JumpPage, 4)
	
	Talk( 19, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3787,1 )
	TriggerAction( 1, TakeItem, 3787,1 )
	TriggerAction( 1, GiveItem, 5845, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "Azrael's Glare", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3787,1 )
	TriggerAction( 1, TakeItem, 3787,1 )
	TriggerAction( 1, GiveItem, 5846, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "Undead Azrael", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3787,1 )
	TriggerAction( 1, TakeItem, 3787,1 )
	TriggerAction( 1, GiveItem, 5847, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "Azrael's Light", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 3787,1 )
	TriggerAction( 1, TakeItem, 3787,1 )
	TriggerAction( 1, GiveItem, 5848, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "Azrael's Aggregation", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3787,1 )
	TriggerAction( 1, TakeItem, 3787,1 )
	TriggerAction( 1, GiveItem, 5849, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "Azrael's Dance", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, "Other Gem!", JumpPage, 4)
	
	Talk( 20, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3788,1 )
	TriggerAction( 1, TakeItem, 3788,1 )
	TriggerAction( 1, GiveItem, 3693, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "Attack Speed Diamond", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3788,1 )
	TriggerAction( 1, TakeItem, 3788,1 )
	TriggerAction( 1, GiveItem, 3694, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "Movement Speed Diamond", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, "Other Gem!", JumpPage, 4)
	
	Talk( 21, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 6695,1 )
	TriggerAction( 1, TakeItem, 6695,1 )
	TriggerAction( 1, GiveItem, 863, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "Gem of Rage", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6695,1 )
	TriggerAction( 1, TakeItem, 6695,1 )
	TriggerAction( 1, GiveItem, 860, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "Gem of the Wind", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 6695,1 )
	TriggerAction( 1, TakeItem, 6695,1 )
	TriggerAction( 1, GiveItem, 861, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "Gem of Striking", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 6695,1 )
	TriggerAction( 1, TakeItem, 6695,1 )
	TriggerAction( 1, GiveItem, 862, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6695,1 )
	TriggerAction( 1, TakeItem, 6695,1 )
	TriggerAction( 1, GiveItem, 1012, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "Gem of Soul", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, "Other Gem!", JumpPage, 5)
	
	Talk( 22, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 6696,1 )
	TriggerAction( 1, TakeItem, 6696,1 )
	TriggerAction( 1, GiveItem, 864, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 22, "Eye of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6696,1 )
	TriggerAction( 1, TakeItem, 6696,1 )
	TriggerAction( 1, GiveItem, 865, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 22, "Soul of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6696,1 )
	TriggerAction( 1, TakeItem, 6696,1 )
	TriggerAction( 1, GiveItem, 866, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 22, "Heart of Black Dragon", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 22, "Other Gem!", JumpPage, 5)
	
	Talk( 23, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 6697,1 )
	TriggerAction( 1, TakeItem, 6697,1 )
	TriggerAction( 1, GiveItem, 3721, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 23, "Great Gem of Rage", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6697,1 )
	TriggerAction( 1, TakeItem, 6697,1 )
	TriggerAction( 1, GiveItem, 3725, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 23, "Great Gem of the Wind", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 6697,1 )
	TriggerAction( 1, TakeItem, 6697,1 )
	TriggerAction( 1, GiveItem, 3723, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 23, "Great Gem of Striking", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 6697,1 )
	TriggerAction( 1, TakeItem, 6697,1 )
	TriggerAction( 1, GiveItem, 3724, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 23, "Great Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6697,1 )
	TriggerAction( 1, TakeItem, 6697,1 )
	TriggerAction( 1, GiveItem, 3722, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 23, "Great Gem of Soul", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 23, "Other Gem!", JumpPage, 5)
	
	Talk( 24, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 6698,1 )
	TriggerAction( 1, TakeItem, 6698,1 )
	TriggerAction( 1, GiveItem, 5845, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 24, "Azrael's Glare", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6698,1 )
	TriggerAction( 1, TakeItem, 6698,1 )
	TriggerAction( 1, GiveItem, 5846, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 24, "Undead Azrael", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 6698,1 )
	TriggerAction( 1, TakeItem, 6698,1 )
	TriggerAction( 1, GiveItem, 5847, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 24, "Azrael's Light", MultiTrigger, GetMultiTrigger(), 1 ) InitTrigger()
	TriggerCondition( 1, HasItem, 6698,1 )
	TriggerAction( 1, TakeItem, 6698,1 )
	TriggerAction( 1, GiveItem, 5848, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 24, "Azrael's Aggregation", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6698,1 )
	TriggerAction( 1, TakeItem, 6698,1 )
	TriggerAction( 1, GiveItem, 5849, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 24, "Azrael's Dance", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 24, "Other Gem!", JumpPage, 5)
	
	Talk( 25, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 6699,1 )
	TriggerAction( 1, TakeItem, 6699,1 )
	TriggerAction( 1, GiveItem, 3693, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 25, "Attack Speed Diamond", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6699,1 )
	TriggerAction( 1, TakeItem, 6699,1 )
	TriggerAction( 1, GiveItem, 3694, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 25, "Movement Speed Diamond", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 25, "Other Gem!", JumpPage, 5)
	
	Talk( 27, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3877,1 )
	TriggerAction( 1, TakeItem, 3877,1 )
	TriggerAction( 1, GiveItem, 885, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 27, "Lv1 Refining Gem", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3878,1 )
	TriggerAction( 1, TakeItem, 3878,1 )
	TriggerAction( 1, GiveItem, 885, 1, 102 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 27, "Lv2 Refining Gem", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3775,1 )
	TriggerAction( 1, TakeItem, 3775,1 )
	TriggerAction( 1, GiveItem, 885, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 27, "Lv5 Refining Gem", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 3789,1 )
	TriggerAction( 1, TakeItem, 3789,1 )
	TriggerAction( 1, GiveItem, 885, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 27, "Lv7 Refining Gem", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6700,1 )
	TriggerAction( 1, TakeItem, 6700,1 )
	TriggerAction( 1, GiveItem, 885, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 27, "Lv9 Refining Gem", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 27, "Other Gem!", JumpPage, 1)


	Talk( 28, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 6703,1 )
	TriggerAction( 1, TakeItem, 6703,1 )
	TriggerAction( 1, GiveItem, 5771, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 28, "Chiatan's Aura", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6703,1 )
	TriggerAction( 1, TakeItem, 6703,1 )
	TriggerAction( 1, GiveItem, 5772, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 28, "Lock's Hit", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6703,1 )
	TriggerAction( 1, TakeItem, 6703,1 )
	TriggerAction( 1, GiveItem, 5773, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 28, "Bing's Dodging", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6703,1 )
	TriggerAction( 1, TakeItem, 6703,1 )
	TriggerAction( 1, GiveItem, 5774, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 28, "Feng's Defense", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6703,1 )
	TriggerAction( 1, TakeItem, 6703,1 )
	TriggerAction( 1, GiveItem, 5775, 1, 1 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 28, "Shark's Strengthening", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 28, "Other Gem!", JumpPage, 2)


	
	Talk( 29, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 6704,1 )
	TriggerAction( 1, TakeItem, 6704,1 )
	TriggerAction( 1, GiveItem, 5771, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 29, "Chiatan's Aura", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6704,1 )
	TriggerAction( 1, TakeItem, 6704,1 )
	TriggerAction( 1, GiveItem, 5772, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 29, "Lock's Hit", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6704,1 )
	TriggerAction( 1, TakeItem, 6704,1 )
	TriggerAction( 1, GiveItem, 5773, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 29, "Bing's Dodging", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6704,1 )
	TriggerAction( 1, TakeItem, 6704,1 )
	TriggerAction( 1, GiveItem, 5774, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 29, "Feng's Defense", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6704,1 )
	TriggerAction( 1, TakeItem, 6704,1 )
	TriggerAction( 1, GiveItem, 5775, 1, 105 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 29, "Shark's Strengthening", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 29, "Other Gem!", JumpPage, 3)


	Talk( 30, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 6705,1 )
	TriggerAction( 1, TakeItem, 6705,1 )
	TriggerAction( 1, GiveItem, 5771, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 30, "Chiatan's Aura", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6705,1 )
	TriggerAction( 1, TakeItem, 6705,1 )
	TriggerAction( 1, GiveItem, 5772, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 30, "Lock's Hit", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6705,1 )
	TriggerAction( 1, TakeItem, 6705,1 )
	TriggerAction( 1, GiveItem, 5773, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 30, "Bing's Dodging", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6705,1 )
	TriggerAction( 1, TakeItem, 6705,1 )
	TriggerAction( 1, GiveItem, 5774, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 30, "Feng's Defense", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6705,1 )
	TriggerAction( 1, TakeItem, 6705,1 )
	TriggerAction( 1, GiveItem, 5775, 1, 107 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 30, "Shark's Strengthening", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 30, "Other Gem!", JumpPage, 4)	


	Talk( 31, "Show me your voucher so I can give you the gem")
	InitTrigger()
	TriggerCondition( 1, HasItem, 6706,1 )
	TriggerAction( 1, TakeItem, 6706,1 )
	TriggerAction( 1, GiveItem, 5771, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 31, "Chiatan's Aura", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6706,1 )
	TriggerAction( 1, TakeItem, 6706,1 )
	TriggerAction( 1, GiveItem, 5772, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 31, "Lock's Hit", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6706,1 )
	TriggerAction( 1, TakeItem, 6706,1 )
	TriggerAction( 1, GiveItem, 5773, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 31, "Bing's Dodging", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6706,1 )
	TriggerAction( 1, TakeItem, 6706,1 )
	TriggerAction( 1, GiveItem, 5774, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 31, "Feng's Defense", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasItem, 6706,1 )
	TriggerAction( 1, TakeItem, 6706,1 )
	TriggerAction( 1, GiveItem, 5775, 1, 109 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 31, "Shark's Strengthening", MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 31, "Other Gem!", JumpPage, 5)	
	
	
	Talk( 26, "Sorry I can't give you the gem. Check if you have the right voucher because I always have the right gem!")
	
	end 







function r_talk12 ()
	
	
	Talk( 1, "Coddy: Hi, I am Sailor Coddy." )

--	InitTrigger()
--	TriggerCondition( 1, HasMission, 1043 )
--	TriggerCondition( 1, HasRecord, 1042 )
--	TriggerCondition( 1, NoRecord, 1058 )
--	TriggerAction( 1, JumpPage, 2 )
--	TriggerFailure( 1, JumpPage, 3 )
--	Text( 1, "First question",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1044 )
--	TriggerAction( 1, SetRecord, 1058 )
--	TriggerAction( 1, JumpPage, 4 )
--	Talk( 2, "Is killing Mystic Shrubs fun?")
--	Text( 2, "Good",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1045 )
--	TriggerAction( 1, SetRecord, 1058 )
--	TriggerAction( 1, JumpPage, 5 )
--	Text( 2, "Not happy",MultiTrigger, GetMultiTrigger(), 1  )
--
--
--	Talk( 3, "Who are you? I do not know you!")
--	Talk( 4, "Good? Let's continue.")
--	Talk( 5, "No satisfied? Let's change another for you to kill")

	AddNpcMission	(1039)
	AddNpcMission	(1202)
	AddNpcMission	(80)
	AddNpcMission	(81)
	AddNpcMission	(79)
	----------------吉尼斯-海云---01
	AddNpcMission	(5510)
--	AddNpcMission ( 6061 )
--	AddNpcMission ( 6062 )
--	AddNpcMission ( 6063 )
--	AddNpcMission ( 6064 )
--	AddNpcMission ( 6065 )
--	AddNpcMission ( 6066 )
--	AddNpcMission ( 6067 )
--	AddNpcMission ( 6068 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<水手·海云


----------------------------------------------------------
--							--
--							--
--		白银城[银行出纳·摩妮雅]			--
--							--
--		222050,270400				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk13 ()
	
	
	Talk( 1, "Monica: Hi, I am Banker Monica. Accounts can never go wrong with me around." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry, you do not have sufficient gold to pay for vault usage" )

	AddNpcMission	(1050)
	AddNpcMission	(1212)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·摩妮雅

----------------------------------------------------------
--							--
--							--
--		白银城[海军少将·威尔斯]			--
--							--
--		230228,270157				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk14 ()
	
	
	Talk( 1, "William: Hi, I am General William. The highest authority around here." )
	

	InitTrigger()
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, GiveItem, 4082, 1, 4)
	Talk( 2, "William: What? What! You lost your token? The Chairman will not admit to anything without it! Luckily I still have another. I spend 20000G to get it but you can buy from me.")
	Text( 2, "Ok, I will buy a Bounty Token", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasMission, 248 )
	TriggerCondition( 1, NoItem, 4082, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, HasRecord, 249 )
	TriggerCondition( 2, NoRecord, 250 )
	TriggerCondition( 2, NoItem, 4082, 1 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerFailure( 2, JumpPage, 1 )

	Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 207 )
	AddNpcMission ( 208 )
	AddNpcMission ( 209 )
	AddNpcMission ( 212 )
	AddNpcMission ( 213 )
	AddNpcMission ( 216 )
	AddNpcMission ( 274 )
	AddNpcMission ( 275 )
	AddNpcMission ( 276 )
	AddNpcMission	(1016)
	AddNpcMission	(1179)
	AddNpcMission	(69)
	AddNpcMission	(70)
	AddNpcMission	(71)
	AddNpcMission	(194)
	AddNpcMission	(195)
	AddNpcMission	(196)
	AddNpcMission	(318)
	AddNpcMission	(323)
	AddNpcMission	(324)
----------eleven
	AddNpcMission	(5053)

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军少将·威尔斯



----------------------------------------------------------
--							--
--							--
--		白银城[沙岚城大使·席巴]			--
--							--
--		225648,270640				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk15 ()
	
	
	Talk( 1, "Xiba: Although I am an Ambassador, I need some time for myself too…Life cannot be just about work. You need to play to balance it too!" )

	AddNpcMission	(1032)
	AddNpcMission	(1195)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙岚城大使·席巴


----------------------------------------------------------
--							--
--							--
--		白银城[白银城商会会长·劳伦迪马斯]		--
--							--
--		224207,274850				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk16 ()
	
	
	Talk( 1, "Ronnie: I am the chairman who is in-charge of all commerce trading in Argent City. I can train you to become the richest Merchant in Ascaron." )
	
	AddNpcMission ( 271 )
	AddNpcMission ( 277 )
	AddNpcMission ( 278 )
	AddNpcMission ( 280 )
	AddNpcMission ( 286 )
------------1.7
	AddNpcMission (5076 )
	AddNpcMission (5077 )
	AddNpcMission (5078 )
	AddNpcMission (5079 )
	AddNpcMission (5088 )
	AddNpcMission (5110 )
	AddNpcMission (5112 )
	AddNpcMission (5114 )
	AddNpcMission (5116 )
	AddNpcMission (5147 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<白银城商会会长·劳伦迪马斯

----------------------------------------------------------
--							--
--							--
--		白银城[老者·糊涂山人]			--
--							--
--		227208,270036				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk17 ()
	
	
	Talk( 1, "Blurry: The strawberry biscuit made by Beldi is so delicious!" )

	AddNpcMission ( 266 )
	AddNpcMission ( 267 )
	AddNpcMission ( 270 )
	AddNpcMission ( 272 )
	AddNpcMission ( 273 )
	AddNpcMission ( 337 )
	AddNpcMission ( 338 )
	AddNpcMission ( 554 )
	AddNpcMission ( 555 )
	AddNpcMission ( 901 )
	---------------白羊
	AddNpcMission	(5557)
	AddNpcMission	(5558)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<老者·糊涂山人

----------------------------------------------------------
--							--
--							--
--		白银城[会长助理·罗伊]			--
--							--
--		224075,275275				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk18 ()
	
	
	Talk( 1, "Rouri: Hmm…I am wandering what secret does our chairman has? I am really interested to find out…" )
	
	AddNpcMission ( 76 )
	AddNpcMission ( 77 )
	AddNpcMission ( 78 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<会长助理·罗伊

----------------------------------------------------------
--							--
--							--
--		白银城[路人·甲]				--
--							--
--		221588,282819				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk19 ()
	
	
	Talk( 1, "Passerby A: Of all the sea monsters, Bubble Clam are the most fearsome. Its true. I have seen one at the port this big. If Sakura 13 hadn't shot a dart at it, those living by the shore would have been done for." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·甲

----------------------------------------------------------
--							--
--							--
--		白银城[酒鬼·芬德内]			--
--							--
--		236002,281965				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk20 ()
	
	
	Talk( 1, "Anthony: What? You want to find out something from me? Then you have found the right guy. However, only money talk. You have to pay for all information. Please input '/?keyword' into your text back for enquiry." )
	
	AddNpcMission ( 500 )
	AddNpcMission ( 501 )
	AddNpcMission ( 358 )
	AddNpcMission ( 372 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒鬼·芬德内

----------------------------------------------------------
--							--
--							--
--		白银城[少年·唐德]			--
--							--
--		196225,269425				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk21 ()
	
	
	Talk( 1, "Tommy: Hi, I am Tommy. What about you? Monsters are running rampant these days." )
	
	AddNpcMission ( 210 )
	AddNpcMission ( 211 )
	AddNpcMission	(1034)
	AddNpcMission	(1197)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<少年·唐德

----------------------------------------------------------
--							--
--							--
--		白银城[制造师·德萨克]			--
--							--
--		173269,278261				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk22 ()
	
	
	Talk( 1, "Desmond: Our artisan works are better than you humans, but you humans are just too arrogant to admit." )
	
	AddNpcMission	(1054)
	AddNpcMission	(1216)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<制造师·德萨克


----------------------------------------------------------
--							--
--							--
--		白银城[D版商·走私兔]			--
--							--
--		2298,2520				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk23 ()
	
	
	Talk( 1, "Smuggling Bunny: Banned items? You name it, I have it! What do you need?" )
	
	AddNpcMission	(1000)
	AddNpcMission	(1164)
			--------愚人节
	--AddNpcMission	(5601)
	--AddNpcMission	(5602)
	--AddNpcMission	(5603)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<D版商·走私兔


----------------------------------------------------------
--							--
--							--
--		雷霆堡[海军司令官·德斯塔罗]		--
--							--
--		71350,141619				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk24 ()
	
	
	Talk( 1, "Dessaro: Hi, I am the highest in command in Thundoria. Do you wish to join us?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Create a Navy Guild", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Dessaro: To become a guild leader of the Navy Division, you will need to pay 100000G and bring a Stone of Oath to prove your loyalty." )
        
	AddNpcMission	(566)
	AddNpcMission	(477)
	AddNpcMission	(478)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军司令官·德斯塔罗


----------------------------------------------------------
--							--
--							--
--		雷霆堡[酒吧服务员·米娜]			--
--							--
--		99053,133465				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk25 ()
	
	
	Talk( 1, "Mona: Hi! Do you know the famous pirate, Sakura 13? She is my idol! I wish to leave this boring place and be a pirate like her!" )
	AddNpcMission	(1022)
	AddNpcMission	(1079)
	AddNpcMission	(1134)
	AddNpcMission	(1185)
	AddNpcMission	(378)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒吧服务员·米娜

----------------------------------------------------------
--							--
--							--
--		雷霆堡[水手·迪奥]			--
--							--
--		108330,128563				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk26 ()
	
	
	Talk( 1, "Hi! I am Sailor Dio. Becareful when you are out in the open sea. There are many ferocious monsters out there, especially those sharks. They are demons…and they will bite off your leg! Just like mine! Oh no!...My leg!" )
	AddNpcMission	(1038)
	AddNpcMission	(1092)
	AddNpcMission	(1150)
	AddNpcMission	(1201)
----------------吉尼斯---水手·迪奥--01
	AddNpcMission (5535 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<水手·迪奥






----------------------------------------------------------
--							--
--							--
--		雷霆堡[军医·玛沙]			--
--							--
--		77300,154900				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk28 ()
	
	
	Talk( 1, "Masa: Anything wrong with you? I am the military doctor of Thundoria. Don't look for me if its only a small cut." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)

	AddNpcMission	(1024)
	AddNpcMission	(1081)
	AddNpcMission	(1136)
	AddNpcMission	(1187)
	----------------1.7
	AddNpcMission (5130 )
	AddNpcMission (5131 )
	AddNpcMission (5132 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<军医·玛沙

----------------------------------------------------------
--							--
--							--
--		雷霆堡[银行出纳·玛卡多]			--
--							--
--		74300,153400				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk29 ()
	
	
	Talk( 1, "Macurdo: Hi, welcome to Thundoria Bank." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry, you do not have sufficient gold to pay for vault usage" )

	AddNpcMission	(1049)
	AddNpcMission	(1103)
	AddNpcMission	(1159)
	AddNpcMission	(1211)
	AddNpcMission	(320)
	AddNpcMission	(375)
	AddNpcMission	(376)
	AddNpcMission	(377)
	AddNpcMission	(432)
	AddNpcMission	(560)
	AddNpcMission	(561)
	AddNpcMission	(542)
	AddNpcMission	(562)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·玛卡多


----------------------------------------------------------
--							--
--							--
--		雷霆堡[铁匠·佛朗哥]			--
--							--
--		76662,144769				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk30 ()
	
	
	Talk( 1, "Furlington: Eh? Smelting? Hehe!" )
	Text( 1, "Refine", JumpPage, 2)
	Text( 1, "Nothing...",CloseTalk )


----------------炼制水晶砂碎片
	InitTrigger()
	TriggerCondition( 1, HasItem, 1784, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1784, 10 )
	TriggerAction( 1, GiveItem, 1785, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Furlington: Forge…forge…forge…All I do all day long is forge items…zzZZz" )
	Text( 2, "Refine Clarion Fragment",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "Furlington: This Clarion Crystal is made from the fragments. Keep it well. Look for me again." )
	Talk( 4, "Furlington: I can refine 10 Clarion Sand into a Clarion Fragment. You need to pay 200G for my service." )
	AddNpcMission	(1042)
	AddNpcMission	(1094)
	AddNpcMission	(1153)
	AddNpcMission	(1205)


	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<铁匠·佛朗哥
----------------------------------------------------------
--							--
--							--
--		雷霆堡[少女·辛蒂]			--
--							--
--		74026,145143				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk31 ()
	
	
	Talk( 1, "Cindy: Hi, I love cute stuff. If you come across any cute items, keep for me!" )
	
	--Text( 1, "Vampiric Aries Palace (Horoscope Quest)", JumpPage,6 )
	--Text( 1, "Sailor Completion Reward", JumpPage,8 )
	--Text( 1, "Pirate Completion Reward", JumpPage,11 )
	--Text( 1, "Captain completion reward", JumpPage,12 )
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)

	Talk( 6, "Cindy: Please select the difficulty, in ascending order from Sailor to Captain. Greater rewards awaits those who chosen a tougher challenge. Have you come to a decision? Do not regret." )

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 833 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "Sailor",MultiTrigger_1, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,833 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 834 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "Pirate",MultiTrigger_2, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,833 )
	TriggerAction( 1, SetRecord, 835 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "Captain",MultiTrigger_3, GetMultiTrigger(), 1)

	Talk( 7, "Cindy: Good luck!" )
  



	InitTrigger()
	TriggerCondition( 1, HasRecord,833 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )
	TriggerAction( 1, SetLog  , 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 1 , 4)
	TriggerAction( 1, AddMoney, 10000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 8, "Cindy: Collect 7 Emblems to change for the Seal of Aries and the ticket to the next palace. There will also be other rewards" )
	Text( 8, "Confirm to exchange",MultiTrigger_0, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasRecord,834 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 3 , 4)
	TriggerAction( 1, AddMoney, 50000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 11, "Cindy: Collect 7 Emblems to change for the Seal of Aries and the ticket to the next palace. There will also be other rewards" )
	Text( 11, "Confirm to exchange",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasRecord,835 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 5 , 4)
	TriggerAction( 1, AddMoney, 80000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 12, "Cindy: Collect 7 Emblems to change for the Seal of Aries and the ticket to the next palace. There will also be other rewards" )
	Text( 12, "Confirm to exchange",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 10, "Cindy: You do not seem to have enough emblems. Please check to see if your inventory has been binded, and make sure that you have at least 3 free slots. Also, are you sure about the difficulty that you have chose?")
	Talk( 9, "Cindy: Taurus Palace has many difficult challenges!")
	Talk( 13, "Cindy: You can only chose the difficulty level once while challenging Aries Palace")

	InitTrigger()
	TriggerCondition( 1, HasItem, 1789, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1789, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1799, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Cindy: Want to have the same hair color as me? Let me help you mix the hair colourant." )
	Text( 2, "Decoct Yellow Colorant",MultiTrigger, GetMultiTrigger(), 1)
---------------调配绿色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1790, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1790, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1800, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Decoct Green Colorant",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Cindy: I am still new to this art. Please be patient. This is the colorant you needed." )
	Talk( 4, "Cindy: I can make Yellow Colorant. You will need to give me 5 Yellow Dye, 1 Special Gas, 1 Rainbow Glass and 200G." )
	Talk( 5, "Cindy: I can make Green Colorant. You need to bring me 5 Green Dye, 1 Special Gas, 1 Rainbow Glass and 200G." )
	AddNpcMission	(1036)
	AddNpcMission	(1090)
	AddNpcMission	(1148)
	AddNpcMission	(1199)
	AddNpcMission	(867)
	AddNpcMission	(863)
	------------------------------------------
	AddNpcMission	(5536)
	AddNpcMission	(5537)
	AddNpcMission	(5538)
	AddNpcMission	(5539)
	AddNpcMission	(5540)
	AddNpcMission	(5541)

	AddNpcMission	(5542)
	AddNpcMission	(5543)
	AddNpcMission	(5544)
	AddNpcMission	(5545)
	AddNpcMission	(5546)
	AddNpcMission	(5547)

	AddNpcMission	(5548)
	AddNpcMission	(5549)
	AddNpcMission	(5550)
	AddNpcMission	(5551)
	AddNpcMission	(5552)


	AddNpcMission	(5597)
	AddNpcMission	(5600)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<少女·辛蒂


----------------------------------------------------------
--							--
--							--
--		雷霆堡[沙岚驻雷霆堡大使·埃德加]		--
--							--
--		71220,150827				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk32 ()
	
	
	Talk( 1, "Alix: Hi, I am the Shaitan Ambassador Alix. Have you been there recently? I miss that place." )
	AddNpcMission	(1033)
	AddNpcMission	(1088)
	AddNpcMission	(1145)
	AddNpcMission	(1196)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙岚驻雷霆堡大使·埃德加

----------------------------------------------------------
--							--
--							--
--		雷霆堡[道具商人·休布李维斯]		--
--							--
--		74100,156300				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk33 ()
	
	
	Talk( 1, "Wesley: Holla! Welcome welcome! I am also a new citizen in this town. Please visit me often." )

	AddNpcMission	(1008)
	AddNpcMission	(1063)
	AddNpcMission	(1118)
	AddNpcMission	(1172)
	AddNpcMission	(850)
	AddNpcMission	(861)
	AddNpcMission	(868)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<道具商人·休布李维斯

----------------------------------------------------------
--							--
--							--
--		雷霆堡[旅馆老板·玛雅婆婆]		--
--							--
--		69761,154269				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk34 ()
	
	
	Talk( 1, "Granny Maya: Hi, my inn is closed as I am not in good health." )
	AddNpcMission	(1030)
	AddNpcMission	(1086)
	AddNpcMission	(1139)
	AddNpcMission	(1193)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅馆老板·玛雅婆婆

----------------------------------------------------------
--							--
--							--
--		雷霆堡[服装店主·迪乐]			--
--							--
--		75450,151200				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk35 ()
	
	
	Talk( 1, "Ditter: Hi! We are closed for the moment" )
	Text( 1, "Nothing...",CloseTalk )
	AddNpcMission	(1010)
	AddNpcMission	(1066)
	AddNpcMission	(1122)
	AddNpcMission	(1174)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<服装店主·迪乐

----------------------------------------------------------
--							--
--							--
--		雷霆堡[白银城驻雷霆堡大使·伊塔多]		--
--							--
--		74171,155325				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk36 ()
	
	
	Talk( 1, "Yata: Only wicked merchants made it big! Haha." )
	AddNpcMission	(1003)
	AddNpcMission	(1058)
	AddNpcMission	(1113)
	AddNpcMission	(1167)
--	AddNpcMission ( 6025 )
--	AddNpcMission ( 6026 )
--	AddNpcMission ( 6027 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<白银城驻雷霆堡大使·伊塔多

----------------------------------------------------------
--							--
--							--
--		雷霆堡[护卫长·迦略克]			--
--							--
--		79600,148800				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk37 ()
	
	
	Talk( 1, "Mallack: Hellow! I am the Guard for Thundoria Castle." )
	Text( 1, "Nothing...",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasItem, 1673, 1 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeItem, 1673, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 10 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasItem, 1673, 1 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeItem, 1673, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 10  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	Talk(2, "Pirates and monsters are rampant nowadays. We are lacking of Swordsman to deal with them. Hmm...You look suitable to become a Swordsman. Want to consider being the one to defend the peace?")
	Text(2, "Ok, become a White Knight", MultiTrigger, GetMultiTrigger(), 2)
	Text(2, "No, it is good enough for now.", CloseTalk)

	Talk(3, "Keeping the peace is the job of a White Knight. Please remember this in your heart.")

	Talk(4, "Want to become a White Knight? Come back to me when you have reached Lv 40. You must train your swordsmanship well. Remember to bring 1 Strange Metal Fragment and 20000G as a proof of your training too.")
	

	
	
	
		

	----------转职成为剑盾士
	--TriggerCondition( 1, LvCheck, ">", 39 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 1 )
	--TriggerAction( 1, JumpPage, 2 )

	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 1 )
	--TriggerAction( 2, JumpPage, 2 )

-------------------转狙击手判断

	AddNpcMission	(1019)
	AddNpcMission	(1074)
	AddNpcMission	(1130)
	AddNpcMission	(1182)
	AddNpcMission	(852)
	AddNpcMission	(855)
	AddNpcMission	(865)
	AddNpcMission	(473)

	MisListPage(5)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护卫长·迦略克

----------------------------------------------------------
--							--
--							--
--		雷霆堡[杂货商人·咕嘟]			--
--							--
--		72500,155100				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk38 ()
	
	
	Talk( 1, "Kudu: Hi! You come at the right moment! We are having a promotion here. Look for me when you are above Lv 10, I can give you special discount for my items. Maybe you will get some experience bonus too!" )
	Text( 1, "Nothing...",CloseTalk )
	AddNpcMission	(1053)
	AddNpcMission	(1107)
	AddNpcMission	(1163)
	AddNpcMission	(1215)

		
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人·咕嘟

----------------------------------------------------------
--							--
--							--
--		雷霆堡[少女·罗莉]			--
--							--
--		101653,128642				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk39 ()
	
	
	Talk( 1, "Rioli: You have been to many places. Have you met Navy General William? Since he has been transferred to Argent City, the city is a boring place to be in." )
	AddNpcMission	(1035)
	AddNpcMission	(1089)
	AddNpcMission	(1147)
	AddNpcMission	(1198)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<少女·罗莉

----------------------------------------------------------
--							--
--							--
--		雷霆堡[海军总部指挥官·基.埃斯西准将]	--
--							--
--		80800,152100				--
---------------------2005-3-8-------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk40 ()
	
	
	Talk( 1, "General Ken: I sense that Maxi will come looking for my trouble one day. Even I sent himto guard other outpost, I am sure that he will make some trouble there too. He is always landing me in trouble…" )
	AddNpcMission	(1017)
	AddNpcMission	(1071)
	AddNpcMission	(1127)
	AddNpcMission	(1180)
---------------白羊
	AddNpcMission	(5575)
	AddNpcMission	(5576)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军总部指挥官·基.埃斯西准将

----------------------------------------------------------
--							--
--							--
--		雷霆堡[海军总部参谋长·玛亚兹少校]		--
--							--
--		65323,150512				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk41 ()
	
	
	Talk( 1, "Colonel Maxi: Hi, I am Colonel Maxi. General Ken delegates me to take care of this place. Hehe! I love to make trouble for him…Hehe!" )
	
	AddNpcMission	(849)
	AddNpcMission	(856)
	AddNpcMission	(858)
	AddNpcMission	(860)
	AddNpcMission	(866)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军总部参谋长·玛亚兹少校

----------------------------------------------------------
--							--
--							--
--		雷霆堡[摩尔克人后裔·菲儿]		--
--							--
--		65146,158595				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk42 ()
	
	
	Talk( 1, "Freya: Didn't you guys label us as demons? Don't talk to me, arrogant fellow!" )
	
	AddNpcMission	(851)
	AddNpcMission	(853)
	AddNpcMission	(854)
	AddNpcMission	(862)
	AddNpcMission	(864)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<摩尔克人后裔·菲儿

----------------------------------------------------------
--							--
--							--
--		雷霆堡[护卫·尼松]			--
--							--
--		71187,141438				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk43 ()
	
	
	Talk( 1, "Nisson: I am a close friend of Sonny and the both of us are excellent Navy guards." )

	AddNpcMission	(859)
	AddNpcMission	(857)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护卫·尼松

----------------------------------------------------------
--							--
--							--
--		雷霆堡[护卫·松尼]			--
--							--
--		71536,141462				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk44 ()
	
	
	Talk( 1, "Sonny: Good friends do not talk about money." )

	AddNpcMission	(474)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护卫·松尼

----------------------------------------------------------
--							--
--							--
--		雷霆堡[路人·丙]				--
--							--
--		66976,155428				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk45 ()
	
	
	Talk( 1, "Bey: Thundoria has a nice bar near the harbor. But its too far for me to visit." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·丙


----------------------------------------------------------
--							--
--							--
--		雷霆堡[路人·巴比]				--
--							--
--		99475,123473				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk46 ()
	
	
	Talk( 1, "Barbi: Hi, are you an ex-pirate? There are just too much Navy men in Thundoria. The pirates dare not approach!" )
	Text( 1, "Refine", JumpPage, 2)

--------------炼造地金
	InitTrigger()
	TriggerCondition( 1, HasItem, 1782, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1782, 10 )
	TriggerAction( 1, GiveItem, 1783, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Barbi: My job is to combine those ore fragment into a big ore." )
	Text( 2, "Refine Terra Gold", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Barbi: I will give Terra Gold Ore to you. Do not regret in the future." )
	Talk( 4, "Barbi: Terra Gold? Bring me 10 Terra Gold Ores and 2000G in exchange." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·巴比

----------------------------------------------------------
--							--
--							--
--		沙岚城[大神官·甘地维拉]			--
--							--
--		86299,350092				--
 
-----------------------------------------------------------这里开始P话聊天
function r_talk47 ()
	
	
	Talk( 1, "Gannon: Hello, my friend. May the Goddess Kara bless you. I'm High Priest Gannon of Shaitan City" )
	Text( 1, "Research Runestone", JumpPage, 2)
        Text( 1, "Combine Treasure Map", JumpPage, 7)
        Text( 1, "Illusion Fragment to change a Blueprint", JumpPage, 9)
	Text( 1, "Illusion Heart to exchange for Lv 60 ring", JumpPage, 10)

	Talk( 2, "Gannon: I am doing some research on ancient runestones. If you bring me enough, I will exchange them for something good." )
	Text( 2, "Regarding Skeletar set items", JumpPage, 3)
	Text( 2, "Regarding Incantation set", JumpPage, 4)
	Text( 2, "Regarding Evanescence set items", JumpPage, 5)
	Text( 2, "Regarding Enigma set items", JumpPage, 6)
	
	Talk( 3, "Gannon: Skeletar set items belong to Lv 30 equipments from Forsaken City. You will need to pass me 10 Nal Runestones and 10 Sol Runestones. You can select the related class too." )
	--------------骷髅之剑士宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3400, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtain Swordsman equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------骷髅之猎人宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3401, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtained Hunter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------骷髅之药师宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3402, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtained Herbalist equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------骷髅之冒险者宝箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3403, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtained Explorer equipment", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Gannon: Incantation set items are Lv 40 equipments from Forsaken City and Dark Swamp. You need to bring me 10 El Runestone and 10 Cam Runestone in exchange. You can select the class for the equipment." )
	--------------咒术之双剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3404, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Crusader equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之巨剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3405, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Champion equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之狙击手装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3406, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Sharpshooter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之圣职者装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3407, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtain Cleric equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之封印师装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3408, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Seal Master equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------咒术之航海士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3409, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Voyager equipment", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 5, "Gannon: Incantation set items belonged to Demonic World Lv50 equipments. You will need to pass me 10 Ja Runestones and 10 Tef Runestones. You can select the related class too." )
	--------------幻灵之双剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3410, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Crusader equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之巨剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3411, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Champion equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之狙击手装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3412, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Sharpshooter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之圣职者装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3413, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtain Cleric equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之封印师装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3414, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Seal Master equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------幻灵之航海士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3415, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Voyager equipment", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 6, "Gannon: Enigma set items belonged to Demonic World Lv60 equipments. You will need to pass me 10 Ter Runestones and 10 Fa Runestones. You can select the related class too." )
	--------------迷之双剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3416, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Crusader equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之巨剑士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3417, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Champion equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之狙击手装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3418, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Sharpshooter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之圣职者装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3419, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtain Cleric equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之封印师装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3420, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Seal Master equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------迷之航海士装备箱
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3421, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Voyager equipment", MultiTrigger, GetMultiTrigger(), 1)

 
	InitTrigger() --合成藏宝图
	TriggerCondition( 1, HasItem, 0432, 1 )
        TriggerCondition( 1, HasItem, 0433, 1 )
	TriggerCondition( 1, HasItem, 0434, 1 )
	TriggerCondition( 1, HasItem, 0435, 1 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeItem, 0432, 1 )
	TriggerAction( 1, TakeItem, 0433, 1 )
	TriggerAction( 1, TakeItem, 0434, 1 )
	TriggerAction( 1, TakeItem, 0435, 1 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GiveItem, 1092, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 ) 

	Talk( 7, "Gannon: Bring the 4 map fragments to me and I will combine a complete treasure map for you." )
	Text( 7, "Combine Treasure Map",MultiTrigger, GetMultiTrigger(), 1) 
	Talk( 8, "Gannon: When you have collected the 4 separate maps, look for me and bring along 2000G." )

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 5 )
	TriggerAction( 1, GiveItem, 1000, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "Gannon: Ah? Can you give me your Fragment? It will be worth your while." )
	Text( 9, "5 Illusion Fragments to exchange for 1 Burry Blueprint", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 30 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 30 )
	TriggerAction( 1, GiveItem, 1001, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "30 Illusion Fragments to exchange for 1 Encrypted Blueprint ", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 100 )
	TriggerAction( 1, GiveItem, 1002, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "100 Illusion Fragments to exchange for 1 Sealed Blueprint", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换图纸
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 500 )
	TriggerAction( 1, GiveItem, 1003, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "500 Illusion Fragments to exchange for 1 Invocation Blueprint", MultiTrigger, GetMultiTrigger(), 1)


	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4656, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "Gannon: Its such a beautiful Illusion Heart. Let me use this ring to exchange." )
	Text( 10, "Exchanged Flame of Fury", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4657, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Stable Cliff", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4658, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Wind of the Gentle Soul", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4659, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Entwined Rattan", MultiTrigger, GetMultiTrigger(), 1)

	--------------兑换戒指
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4660, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Water of Miracle", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 11, "You do not have the items required for exchanging, or your inventory might be binded or you do not have sufficient inventory slots." )



	--AddNpcMission ( 719 )
	AddNpcMission ( 102 )
	AddNpcMission 	(416)
	AddNpcMission 	(751)
	AddNpcMission 	(755)
	AddNpcMission 	(95)
	AddNpcMission 	(96)
	AddNpcMission 	(97)
	AddNpcMission 	(151)
	AddNpcMission(	1227	)
	AddNpcMission 	(342)
	AddNpcMission 	(343)
	AddNpcMission 	(344)
	AddNpcMission 	(345)
	AddNpcMission 	(346)
	AddNpcMission 	(347)
	AddNpcMission 	(348)
	AddNpcMission 	(349)
	AddNpcMission 	(350)
	AddNpcMission 	(351)
	AddNpcMission 	(352)
	AddNpcMission 	(353)
	AddNpcMission 	(354)
	AddNpcMission 	(355)
-------------eleven
	AddNpcMission 	(5009)
	AddNpcMission 	(5015)
	AddNpcMission 	(5017)
	AddNpcMission 	(5024)
	AddNpcMission 	(5028)
	AddNpcMission 	(5031)
	AddNpcMission 	(5059)
	AddNpcMission 	(5064)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<大神官·甘地维拉


----------------------------------------------------------
--							--
--							--
--		沙岚城[氏族长·阿布多罗.李]		--
--							--
--		90374,364023				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk48 ()
	
	
	Talk( 1, "Albuda: Hi, I am the Clan Chief. How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasMission, 1014 )
	TriggerCondition( 1, HasRecord, 1013 )
	TriggerCondition( 1, NoRecord, 1059 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "Select path of Rebirth",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 1059 )
	TriggerCondition( 1, HasNOZSExp )
	TriggerCondition( 1, NoRecord, 1056 )
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6)
	Text( 1, "Reselect path of rebirth",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "Nothing", CloseTalk)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1015 )
	TriggerAction( 1, SetRecord, 1059 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "Albuda: There are two paths to rebirth. One has tough difficulty and you will meet the strongest monsters in this game along the way. This path is meant for the strong. The other path consists of many obstacles and interference. This is meant for those with great patience. You must be fully prepared before you embark on either path. Complete either and you will be rebirthed!")
	Text( 2, "Tough Difficulty",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerAction( 1, SetRecord, 1016 )
	TriggerAction( 1, SetRecord, 1059 )
	TriggerAction( 1, JumpPage, 4 )
	Text( 2, "Troublesome Path",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "You have not select the path of rebirth or have you selected the path of rebirth")

	Talk( 4, "Go forth once you have selected your path. Look for Tink!")


	InitTrigger()
	TriggerCondition( 1, HasRecord, 1016 )
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, ClearRecord, 1016 )
	TriggerAction( 1, SetRecord, 1015 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8)
	Talk( 5, "To reselect the path of rebirth requires a high price of 5000000 gold!")
	Text( 5, "Changed to tough difficulty",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1015 )
	TriggerCondition( 1, HasMoney, 5000000 )
	TriggerAction( 1, ClearRecord, 1015 )
	TriggerAction( 1, SetRecord, 1016 )
	TriggerAction( 1, TakeMoney, 5000000 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8)
	Text( 5, "Change to troublesome path",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "You have not select your path of rebirth or you have already competed your rebirth process. This function is for players who regretted their initial choice.")

	Talk( 7, "You must work harder this time")

	Talk( 8, "You do not have sufficient gold or you have selected the same path of rebirth")

	AddNpcMission ( 231 )
	AddNpcMission ( 232 )
	AddNpcMission ( 234 )
	AddNpcMission	(1037)
	AddNpcMission	(1091)
	AddNpcMission	(1149)
	AddNpcMission	(1200)
	AddNpcMission(	1228	)
	AddNpcMission	(327)
	AddNpcMission	(339)
	AddNpcMission	(340)
	AddNpcMission ( 6017 )
	AddNpcMission ( 6018 )
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<氏族长·阿布多罗.李


----------------------------------------------------------
--							--
--							--
--		沙岚城[道具店主·欧翟]			--
--							--
--		86214,359121				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk49 ()
	
	
	Talk( 1, "Ouya: Come and take a look, my friend. My medicines are made from the secret recipes of the natives." )
	Text( 1, "Decoct Recovery Potion", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, GiveItem, 3133, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Ouya: To recover SP you will need a potion. I can decoct one for you if you like." )
	Text( 2, "Decoct Liquorice Potion", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "Mix Elven Fruit Juice", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Brew Energetic Tea", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Ouya: Money first…This is the Energetic Tea you needed. Keep it well." )
	Talk( 4, "Ouya: Oh…It requires 10 Medicated Grass and 1 Bottle to make 1 Liquorice Potion. Also, it needs a fee of 50G." )
	Talk( 5, "Ouya: This Elven Fruit Juice was made from your Elven Fruit. Keep it well." )
	Talk( 6, "Ouya: Sorry, you do not have the required items. Elven Fruit Juice requires 10 Elven Fruits and 1 Glass to make." )
	Talk( 7, "Ouya: Money first...This is the Energetic Tea you needed. Keep it well." )
	Talk( 8, "Ouya: Oh…It requires 10 Fancy Petal and 1 Bottle to make 1 Energetic Tea. Needs a fee of 50G too." )

	AddNpcMission( 1007 )
	AddNpcMission( 1117 )
	AddNpcMission( 1171 )
	AddNpcMission(	1062	)
	AddNpcMission(	1229	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<道具店主·欧翟


----------------------------------------------------------
--							--
--							--
--		沙岚城[服装店主·莫亚]			--
--							--
--		89463,360213				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk50 ()
	
	
	Talk( 1, "Moya: I come from a family of tailors. See if there is anything you like." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Defence(	2205	)--Goaty Cap
	Defence(	0383	)--Goaty Costume
	Defence(	0559	)--Goaty Muffs
	Defence(	0735	)
	Defence(	2196	)--Sheepy Cap
	Defence(	0359	)--Sheepy Costume
	Defence(	0535	)
	Defence(	0711	)
	Defence(	2203	)--Kitty Cap
	Defence(	0381	)--Kitty Costume
	Defence(	0557	)
	Defence(	0733	)
	Defence(	2197	)--Meowy Cap
	Defence(	0360	)--Meowy Costume
	Defence(	0536	)
	Defence(	0712	)
	Defence(	2211	)--Night Owl Cap
	Defence(	0389	)--Night Owl Costume
	Defence(	0565	)
	Defence(	0741	)
	Defence(	2198	)--Owl Cap
	Defence(	0361	)--Owl Costume
	Defence(	0537	)
	Defence(	0713	)
	Defence(	2212	)--Kangaroo Cap
	Defence(	0390	)--Kangaroo Costume
	Defence(	0566	)
	Defence(	0742	)
	Defence(	2199	)--Hopperoo Cap
	Defence(	0362	)--Hopperoo Costume
	Defence(	0538	)
	Defence(	0714	)
	Defence(	2207	)--Otter Cap
	Defence(	0385	)--Otter Costume
	Defence(	0561	)
	Defence(	0737	)
	Defence(	2200	)--Clever Otter Cap
	Defence(	0363	)--Clever Otter Costume
	Defence(	0539	)
	Defence(	0715	)
	Defence(	2214	)--Bunny Baby Cap
	Defence(	0392	)--Bunny Baby Costume
	Defence(	0568	)
	Defence(	0744	)
	Defence(	2210	)--Happy Bunny Cap
	Defence(	0388	)--Happy Bunny Costume
	Defence(	0564	)
	Defence(	0740	)
	Defence(	2204	)--Loopy Bunny Cap
	Defence(	0382	)--Loopy Bunny Costume
	Defence(	0558	)
	Defence(	0734	)
	Defence(	2213	)--Joyful Bunny Cap
	Defence(	0391	)--Joyful Bunny Costume
	Defence(	0567	)
	Defence(	0743	)
	Defence(	0365	)
	Defence(	0541	)
	Defence(	0717	)
	Defence(	0372	)
	Defence(	0548	)
	Defence(	0724	)
	Defence(	0366	)
	Defence(	0542	)
	Defence(	0718	)
	Defence(	0373	)
	Defence(	0549	)
	Defence(	0725	)
	Defence(	0368	)
	Defence(	0544	)
	Defence(	0720	)
	Defence(	0374	)
	Defence(	0550	)
	Defence(	0726	)
	Defence(	0367	)
	Defence(	0543	)
	Defence(	0719	)
	Defence(	0375	)
	Defence(	0551	)
	Defence(	0727	)
	Defence(	0369	)
	Defence(	0545	)
	Defence(	0721	)
	Defence(	0376	)
	Defence(	0552	)
	Defence(	0728	)
	Defence(	0370	)
	Defence(	0546	)
	Defence(	0722	)
	Defence(	0378	)
	Defence(	0554	)
	Defence(	0730	)
	Defence(	0371	)
	Defence(	0547	)
	Defence(	0723	)
	Defence(	0379	)
	Defence(	0555	)
	Defence(	0731	)



	AddNpcMission ( 715 )
	AddNpcMission	(1011)
	AddNpcMission	(1068)
	AddNpcMission	(1123)
	AddNpcMission	(1175)
	AddNpcMission(	1230	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<服装店主·莫亚

----------------------------------------------------------
--							--
--							--
--		沙岚城[银行出纳·朱迪斯]			--
--							--
--		90637,353900				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk51 ()
	
	
	Talk( 1, "Judis: Hi! Welcome to the bank of Shaitan! How can I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry, you do not have sufficient gold to pay for vault usage" )

	AddNpcMission	(1051)
	AddNpcMission	(1104)
	AddNpcMission	(1160)
	AddNpcMission	(1213)
	AddNpcMission(	1231	)
-------eleven
	AddNpcMission(	5012	)	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·朱迪斯

----------------------------------------------------------
--							--
--							--
--		沙岚城[港卫队成员·鹧鸪草]		--
--							--
--		86734,366071				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk52 ()
	
	
	Talk( 1, "Franco: I wanted to join the Navy actually. However, I am a jinx. One time while we were out in the open sea, our ship got attacked by 10 pirate ships. My officers were stripped bare with only their underwear left. They got so angry with me that they made me to look after this place in Shaitan." )
	Text( 1, "Nothing...",CloseTalk )
	
	
	----------------转职成为训兽师
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 11 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 11  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

	Talk(5, "Sigh…it's a pity that you are not a Beast Tamer. I believed that you have the ability to become one. Let me teach you how!")
	Text(5, "Ok, I will become a Beast Tamer", MultiTrigger, GetMultiTrigger(), 2)
	Text(5, "No, it is good enough for now.", CloseTalk)

	Talk(6, "How is it? I knew you are born to be a Beast Tamer!")

	Talk(7, "Want to become a Beast Tamer? Come back to me when you have reached Lv 40. Train your hunter skills well as they are important foundation for you to advance further. Remember to bring 1 Clarity Crystal and 20000G too.")


	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 1 )
	--TriggerCondition( 2, PfEqual, 2 )
	--TriggerAction( 2, JumpPage, 5 )
	--TriggerCondition( 3, LvCheck, ">", 39 )
	--TriggerCondition( 3, IsCategory, 3 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	

	--Start( GetMultiTrigger(), 1 )
	

	AddNpcMission ( 243 )
	AddNpcMission ( 244 )
	AddNpcMission	(1012)
	AddNpcMission	(1069)
	AddNpcMission	(1124)
	AddNpcMission	(1176)
	AddNpcMission	(88)
	AddNpcMission	(89)
	AddNpcMission	(90)
	AddNpcMission(	1232	)
	



	
	MisListPage(5)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<港卫队成员·鹧鸪草

----------------------------------------------------------
--							--
--							--
--		沙岚城[铁匠·铜铜鼓]			--
--							--
--		90424,349871				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk53 ()
	
	
	Talk( 1, "Smithy: Hi! I have a wide variety of weapons here! Free free to browse!" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair )
	Text( 1, "Forge", OpenForge)
	Text( 1, "Fusion", OpenMilling)
	Text( 1, "Apparel Fusion", OpenFusion)
	Text( 1, "Apparel Upgrade", OpenUpgrade)
	Text( 1, "Nothing...",CloseTalk )


	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0097	)
	Weapon(	0104	)
	Weapon(	0098	)
	Weapon(	0105	)
	Weapon(	0099	)
	Weapon(	0106	)
	Weapon(	0101	)
	Weapon(	0107	)
	Weapon(	0102	)
	Weapon(	0108	)
	Weapon(	0100	)
	Weapon(	4301	)
	Weapon(	0103	)
	Weapon(	4302	)
	Weapon(	1427	)
	Weapon(	1428	)
	Weapon(	1429	)
	Weapon(	1430	)
	Weapon(	1431	)
	Weapon(	1432	)
	Weapon(	1433	)
	Weapon(	1434	)
	Weapon(	1435	)
	Weapon(	1436	)
	Weapon(	1437	)
	Weapon(	1438	)
	Weapon(	1440	)
	Weapon(	1441	)
	Weapon(	1462	)
	Weapon(	1463	)
	Weapon(	1464	)
	Weapon(	1465	)
	Weapon(	1466	)
	Weapon(	1467	)
	Weapon(	1468	)
	Weapon(	1469	)
	Weapon(	1470	)
	Weapon(	1471	)
	Weapon(	1472	)
	Weapon(	1473	)
	Weapon(	1475	)
	Weapon(	1476	)

	AddNpcMission	(713)
	AddNpcMission	(1043)
	AddNpcMission	(1095)
	AddNpcMission	(1154)
	AddNpcMission	(1206)
	AddNpcMission	(91)
	AddNpcMission	(92)
	AddNpcMission	(93)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<铁匠·铜铜鼓




--------------------------------------------------------------铁匠的徒弟 

function mmm_talk04 ()	

	Talk( 1, "Hey there! You need anything about forge? Feel free to look." )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Unique Gems", JumpPage, 9)
	Text( 1, "Black Dragon Gems", JumpPage, 10)
	Text( 1, "Great Gems", JumpPage, 14)
	Text( 1, "Azrael Gems", JumpPage, 2)
	Text( 1, "Other Gems", JumpPage, 11)
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Defence(	878	)
	Defence(	879	)
	Defence(	880	)
	Defence(	881	)
	Defence(	882	)
	Defence(	884	)
	Defence(	887	)
	Defence(	5750	)
	Defence(	5751	)
	Defence(	5752	)
	Other(	1020	)--Blacksmith Pliers
	Other(	0455	)--Strengthening Scroll 
	Other(	0456	)--Strengthening Crystal
	Other(	0453	)--Fusion Scroll
	Other(	0454	)--Fusion Catalyst
	Other(	0890	)--Equipment Stabilizer
	Other(	0891	)--Equipment Catalyst
	Other(	3074	)--Refining Catalyst
        Other(	3075	)--Composition Catalyst

	

	Talk( 2, "The best gems!They require 3 kal, 5 Pirate Gold, 7 united chaos voucher and 13 million gold for each exchange.")
	Text( 2, "Azrael's Glare(STR)", JumpPage, 3)
	Text( 2, "Undead Azrael(CON)", JumpPage, 4)
	Text( 2, "Azrael's Light(SPR)", JumpPage, 5)
	Text( 2, "Azrael's Aggregation(ACC)", JumpPage, 6)
	Text( 2, "Azrael's Dance(AGI)", JumpPage, 7)
	Text( 2, "Nevermind", JumpPage, 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3687, 7)
	TriggerCondition( 1, HasItem, 3734, 5)
	TriggerCondition( 1, HasMoney, 13000000 )
	TriggerAction( 1, TakeItem, 3457, 3 )
	TriggerAction( 1, TakeItem, 3687, 7 )
	TriggerAction( 1, TakeItem, 3734, 5 )
	TriggerAction( 1, TakeMoney, 13000000 )
	TriggerAction( 1, GiveItem, 5845, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 3, "Are you sure you want this gem?")
	Text( 3, "Yes" , MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "No", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3687, 7)
	TriggerCondition( 1, HasItem, 3734, 5)
	TriggerCondition( 1, HasMoney, 13000000 )
	TriggerAction( 1, TakeItem, 3457, 3 )
	TriggerAction( 1, TakeItem, 3687, 7 )
	TriggerAction( 1, TakeItem, 3734, 5 )
	TriggerAction( 1, TakeMoney, 13000000 )
	TriggerAction( 1, GiveItem, 5846, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 4, "Are you sure you want this gem?")
	Text( 4, "Yes" , MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "No", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3687, 7)
	TriggerCondition( 1, HasItem, 3734, 5)
	TriggerCondition( 1, HasMoney, 13000000 )
	TriggerAction( 1, TakeItem, 3457, 3 )
	TriggerAction( 1, TakeItem, 3687, 7 )
	TriggerAction( 1, TakeItem, 3734, 5 )
	TriggerAction( 1, TakeMoney, 13000000 )
	TriggerAction( 1, GiveItem, 5847, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 5, "Are you sure you want this gem?")
	Text( 5, "Yes" , MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "No", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3687, 7)
	TriggerCondition( 1, HasItem, 3734, 5)
	TriggerCondition( 1, HasMoney, 13000000 )
	TriggerAction( 1, TakeItem, 3457, 3 )
	TriggerAction( 1, TakeItem, 3687, 7 )
	TriggerAction( 1, TakeItem, 3734, 5 )
	TriggerAction( 1, TakeMoney, 13000000 )
	TriggerAction( 1, GiveItem, 5848, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "Are you sure you want this gem?")
	Text( 6, "Yes" , MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "No", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3687, 7)
	TriggerCondition( 1, HasItem, 3734, 5)
	TriggerCondition( 1, HasMoney, 13000000 )
	TriggerAction( 1, TakeItem, 3457, 3 )
	TriggerAction( 1, TakeItem, 3687, 7 )
	TriggerAction( 1, TakeItem, 3734, 5 )
	TriggerAction( 1, TakeMoney, 13000000 )
	TriggerAction( 1, GiveItem, 5849, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 7, "Are you sure you want this gem?")
	Text( 7, "Yes" , MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "No", JumpPage, 2)



	Talk( 9,"Unique Gems require 4m, 1 Pirate Gold and 3 United Chaos Voucher, Refining Gem require 2m, 1 Pirate Gold and 1 United Chaos Voucher !")
	

	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 1 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 2000000 )
	TriggerAction( 1, TakeItem, 3687, 1 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 2000000 )
	TriggerAction( 1, GiveItem, 885, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 9, "Refining Gem" , MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 4000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 4000000 )
	TriggerAction( 1, GiveItem, 863, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 9, "Gem of Rage(STR)" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 4000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 4000000 )
	TriggerAction( 1, GiveItem, 860, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 9, "Gem of the Wind(AGI)" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 4000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 4000000 )
	TriggerAction( 1, GiveItem, 1012, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 9, "Gem of Soul(SPR)" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 4000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 4000000 )
	TriggerAction( 1, GiveItem, 861, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 9, "Gem of Striking(ACC)" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 4000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 4000000 )
	TriggerAction( 1, GiveItem, 862, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 9, "Gem of Colossus(CON)" , MultiTrigger, GetMultiTrigger(), 1)
	Text( 9, "Nevermind", JumpPage, 1)

	Talk( 10,"Black Dragon Gems require 6m, 2 Pirate Gold, 2 kal runestone and 4 United Chaos Voucher !")

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 2 )
	TriggerCondition( 1, HasItem, 3687, 4 )
	TriggerCondition( 1, HasItem, 3734, 2)
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3457, 2 )
	TriggerAction( 1, TakeItem, 3687, 4 )
	TriggerAction( 1, TakeItem, 3734, 2 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, GiveItem, 864, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Eye of BD(Attack)" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 2 )
	TriggerCondition( 1, HasItem, 3687, 4 )
	TriggerCondition( 1, HasItem, 3734, 2)
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3457, 2 )
	TriggerAction( 1, TakeItem, 3687, 4 )
	TriggerAction( 1, TakeItem, 3734, 2 )
	TriggerAction( 1, GiveItem, 865, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Soul of BD(PR)" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 2 )
	TriggerCondition( 1, HasItem, 3687, 4 )
	TriggerCondition( 1, HasItem, 3734, 2)
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3457, 2 )
	TriggerAction( 1, TakeItem, 3687, 4 )
	TriggerAction( 1, TakeItem, 3734, 2 )
	TriggerAction( 1, GiveItem, 866, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Heart of BD(HP)" , MultiTrigger, GetMultiTrigger(), 1)
	Text( 10, "Nevermind", JumpPage, 1)

	Talk( 11, "You may choose here between special gems and speed gems!")
	Text( 11, "Special Gems", JumpPage, 12)
	Text( 11, "Speed Gems", JumpPage, 13)
	Text( 11, "Nevermind", JumpPage, 1)

	Talk( 12, "Choose your desired gem...they cost 3m, 1 Pirate Gold and 3 United Chaos Voucher!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, GiveItem, 5771, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Chaitan's Aura" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, GiveItem, 5772, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Lock's Hit" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, GiveItem, 5773, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Bing's Dodging" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, GiveItem, 5774, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Feng's Defence" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, GiveItem, 5775, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Shark's Strengthening" , MultiTrigger, GetMultiTrigger(), 1)
	Text( 12, "Nevermind", JumpPage, 11)

	Talk( 13, "Choose your desired gem...they cost 3m, 1 Pirate Gold and 3 United Chaos Voucher!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, GiveItem, 3694, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 13, "Movement Speed Diamond" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3687, 3 )
	TriggerCondition( 1, HasItem, 3734, 1)
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3687, 3 )
	TriggerAction( 1, TakeItem, 3734, 1 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, GiveItem, 3693, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 13, "Attack Speed Diamond" , MultiTrigger, GetMultiTrigger(), 1)
	Text( 13, "Nevermind", JumpPage, 11)

	Talk( 14, "Great Gem costs 2 Kal Runestone, 3 Pirate Gold, 6 United Chaos Voucher and 9m!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 2 )
	TriggerCondition( 1, HasItem, 3687, 6 )
	TriggerCondition( 1, HasItem, 3734, 3)
	TriggerCondition( 1, HasMoney, 9000000 )
	TriggerAction( 1, TakeItem, 3457, 2 )
	TriggerAction( 1, TakeItem, 3687, 6 )
	TriggerAction( 1, TakeItem, 3734, 3 )
	TriggerAction( 1, TakeMoney, 9000000 )
	TriggerAction( 1, GiveItem, 3721, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 14, "Great Gem of Rage(STR)" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 2 )
	TriggerCondition( 1, HasItem, 3687, 6 )
	TriggerCondition( 1, HasItem, 3734, 3)
	TriggerCondition( 1, HasMoney, 9000000 )
	TriggerAction( 1, TakeItem, 3457, 2 )
	TriggerAction( 1, TakeItem, 3687, 6 )
	TriggerAction( 1, TakeItem, 3734, 3 )
	TriggerAction( 1, GiveItem, 3725, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 14, "Great Gem of the Wind(AGI)" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 2 )
	TriggerCondition( 1, HasItem, 3687, 6 )
	TriggerCondition( 1, HasItem, 3734, 3)
	TriggerCondition( 1, HasMoney, 9000000 )
	TriggerAction( 1, TakeItem, 3457, 2 )
	TriggerAction( 1, TakeItem, 3687, 6 )
	TriggerAction( 1, TakeItem, 3734, 3 )
	TriggerAction( 1, GiveItem, 3722, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 14, "Great Gem of Soul(SPR)" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 2 )
	TriggerCondition( 1, HasItem, 3687, 6 )
	TriggerCondition( 1, HasItem, 3734, 3)
	TriggerCondition( 1, HasMoney, 9000000 )
	TriggerAction( 1, TakeItem, 3457, 2 )
	TriggerAction( 1, TakeItem, 3687, 6 )
	TriggerAction( 1, TakeItem, 3734, 3 )
	TriggerAction( 1, GiveItem, 3723, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 14, "Great Gem of Striking(ACC)" , MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 2 )
	TriggerCondition( 1, HasItem, 3687, 6 )
	TriggerCondition( 1, HasItem, 3734, 3)
	TriggerCondition( 1, HasMoney, 9000000 )
	TriggerAction( 1, TakeItem, 3457, 2 )
	TriggerAction( 1, TakeItem, 3687, 6 )
	TriggerAction( 1, TakeItem, 3734, 3 )
	TriggerAction( 1, GiveItem, 3724, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 14, "Great Gem of Colossus(CON)" , MultiTrigger, GetMultiTrigger(), 1)
	Text( 14, "Nevermind", JumpPage, 1)


	Talk( 8,"Sorry,You don't posses items that are required!")




end

----------------------------------------------------------
--							--
--							--
--		沙岚城[莉娜]				--
--							--
--		88307,352019				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk54 ()
	
	
	Talk( 1, "Lena: Hi! I am the wife of Smithy." )
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)

----------------调配青色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1791, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1791, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1801, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Lena: I think this color will suit your hair. Need me to decoct a hair colorant for you?" )
	Text( 2, "Decoct Cyan Colorant",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Lena: How is it? Is this Cyan Colorant to your liking?" )
	Talk( 4, "Lena: 5 Cyan Dye, 1 Special Gas, 1 Rainbow Glass and 200G to make a Cyan Colorant." )
	
	AddNpcMission	(1146)
	AddNpcMission	(155)
	AddNpcMission	(156)
	AddNpcMission	(157)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<莉娜

----------------------------------------------------------
--							--
--							--
--		沙岚城[杂货商人·艾墨]			--
--							--
--		84040,358567				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk55 ()
	
	
	Talk( 1, "Amos: Hi, we have the latest items here. Don't bother to look elsewhere." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Combine", OpenUnite)
	Text( 1, "Nothing...",CloseTalk )
	Text( 1, "Redeem Reality Mask",JumpPage, 2 )

	InitTrade()
	Other(	3206	)
	Other(	3208	)
	Other(	3205	)
	Other(	3242	)
	Other(	3210	)
	Other(	3207	)
	Other(	3211	)
	Other(	3215	)
	Other(	3212	)
	Other(	3209	)
	Other(	3220	)
	Other(	3222	)
	Other(	3219	)
	Other(	3218	)
	Other(	3216	)
	Other(	3223	)
	Other(	3217	)
	Other(	3224	)--Healing Spring
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other(	886	)
	Other(	3296	)
	--baby--生活技能书Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
--	Other(	3288	)--Study Skill Book
	Other(  2440    )

	AddNpcMission	(1161)
	AddNpcMission	(152)
	AddNpcMission	(153)
	AddNpcMission	(154)
	--AddNpcMission	(5500)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "To obtain a Reality Mask requires 1 Elven Signet, 10000G and any of 10x Lv3 gathered resource" )
	Text( 2, "Use bones to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Crystal Eolith to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Teak Wood Log to exchange for a Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Bubble Fish to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Amos: Be careful with it, its very important." )
	Talk( 4, "Amos: You do not seem to have enough material. Or it might be that your inventory is binded or you do not have enough slots in your inventory." )

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人·艾墨

----------------------------------------------------------
--							--
--							--
--		沙岚城[旅店老板·哈根]			--
--							--
--		81035,349813				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk56 ()
	
	
	Talk( 1, "Moken: Hi! Need a stay? I have a room for two above." )
	Text( 1, "Make nice desert", JumpPage, 2)


--------------------调配五彩琉璃汁
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3121, 4 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3121, 4 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3127, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Harken: It's a good year for the business. All my items are sold out due to overwhelming demands." )
	Text( 2, "Mix Rainbow Fruit Juice",MultiTrigger, GetMultiTrigger(), 1)

----------------调配综合果汁
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3122, 1 )
	TriggerCondition( 1, HasItem, 3123, 1 )
	TriggerCondition( 1, HasItem, 3124, 1 )
	TriggerCondition( 1, HasItem, 3125, 1 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3122, 1 )
	TriggerAction( 1, TakeItem, 3123, 1 )
	TriggerAction( 1, TakeItem, 3124, 1 )
	TriggerAction( 1, TakeItem, 3125, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3128, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Decoct Fruity Mix",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Harken: Young man, the drink you wanted is done. Be careful with it. Its the most popular drink in town." )
	Talk( 4, "Harken: Sorry, you do not have the required items. Rainbow Fruit Juice requires 4 Rainbow Fruits, 1 Rainbow Glass and 50G" )
	Talk( 5, "Harken: Sorry, you do not have the required items. Fruity Mix requires 1 Elven Fruit Juice, 1 Red Date Tea, 1 Mushroom Soup, 1 Stramonium Fruit Juice, 1 Rainbow Glass and also 50G to make." )
	AddNpcMission	(1138)
	AddNpcMission	(1161)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅店老板·哈根

----------------------------------------------------------
--							--
--							--
--		沙岚城[护士小姐·兰兰]			--
--							--
--		87954,356282				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk57 ()
	
	
	Talk( 1, "Landy: Hi I am Nurse Landy. I am still in training so my healing skill is mediocre. I am unable to heal you for the moment. If you need anything, look for Physician - Shala at (903,3646)." )
	AddNpcMission	(1129)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护士小姐·兰兰

----------------------------------------------------------
--							--
--							--
--		沙岚城[海盗·德克]			--
--							--
--		80262,364842				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk58 ()
	
	
	Talk( 1, "Decky: Hey! I am the werewolf pirates leader Decky! I am currently ranked 7th on the Navy bounty list. Why I telling you this? It is because I am not afraid of the Navy! Hehe!" )
	AddNpcMission	(1125)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海盗·德克

----------------------------------------------------------
--							--
--							--
--		沙岚城[新手指导·拉丝碧]			--
--							--
--		87614,357250				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<新手指导·拉丝碧


----------------------------------------------------------
--							--
--							--
--		沙岚城[海军办事处官员·艾微尔少校]		--
--							--
--		86507,364804				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk61 ()
	
	
	Talk( 1, "Admiral Nic: Hi! I am Nic, the first female officer appointed here." )
	AddNpcMission	(1126)
	AddNpcMission	(98)
	AddNpcMission	(99)
	AddNpcMission	(150)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<海军办事处官员·艾微尔少校

----------------------------------------------------------
--							--
--							--
--		沙岚城[沙岚城商会会长·古利击]		--
--							--
--		87362,354566				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk62 ()
	
	
	Talk( 1, "Guile: I love collecting strange items, buy low price items and sell them off at a higher price. I can be considered the most resourceful trader. Is there any matter?" )
	Text( 1, "Nothing...",CloseTalk )
	AddNpcMission	(1144)

	-----铁人六项
	AddNpcMission ( 6115 )
	AddNpcMission ( 6116 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙岚城商会会长·古利击

----------------------------------------------------------
--							--
--							--
--		沙岚城[路人·珊瑚虫]		--
--							--
--		84634,349945				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk63 ()
	
	
	Talk( 1, "Wowo: Little Daniel cannot be trusted. I moved here to avoid him" )



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·珊瑚虫

----------------------------------------------------------
--							--
--							--
--		沙岚城[小羊·威利]			--
--							--
--		89875,368331				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk64 ()
	
	
	Talk( 1, "Welly: Hi! I am the world only talking lamb! Baa!" )

	AddNpcMission ( 233 )
	---------------白羊
	AddNpcMission	(5565)
	AddNpcMission	(5566)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<小羊·威利

----------------------------------------------------------
--							--
--							--
--		沙岚城[会长助理·提司面包]		--
--							--
--		87171,354774				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk65 ()
	
	
	Talk( 1, "Tintin: We always talk but never take any action." )
--	AddNpcMission ( 905 )
	----------------周岁包
	AddNpcMission ( 5604 )
	AddNpcMission ( 5605 )
	AddNpcMission ( 5606 )
	AddNpcMission ( 5607 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<会长助理·提司面包

----------------------------------------------------------
--							--
--							--
--		沙岚城[路人·乙]				--
--							--
--		79792,355469				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk66 ()
	
	
	Talk( 1, "Yay: Holy Priestess is at the temple in Shaitan City. She has the blessings of many devotees." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·乙

----------------------------------------------------------
--							--
--							--
--		沙岚城[沙匪·闪光侠八世]			--
--							--
--		108242,310135				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk67 ()
	
	
	Talk( 1, "Supermun: I am the great descendent of Superman! I will rule the desert with my super powers! (Oh god he is dreaming again…)" )
	
	AddNpcMission ( 237 )
	AddNpcMission ( 238 )
	AddNpcMission ( 239 )
	AddNpcMission ( 240 )
	AddNpcMission ( 248 )
	AddNpcMission ( 557 )
--------eleven
	AddNpcMission (5011 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<沙匪·闪光侠八世


----------------------------------------------------------
--							--
--							--
--		沙岚城[人鱼王子·哈沙特]			--
--							--
--		125471,349171				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk68 ()
	
	
	Talk( 1, "Hassan: Hmm…I smell something nice the other day and the smell has lingered for very long. I wish to find out what is it exactly." )
	Text( 1, "Combine", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1785, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1785, 10 )
	TriggerAction( 1, GiveItem, 1786, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Hassan: Clarion Fragment has little value. Would you like to combine them into a Clarion Crystal?" )
	Text( 2, "Combine Clarion Crystal", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Hassan: Isn't this Clarion Crystal beautiful? Remember to look for me next time." )
	Talk( 4, "Hassan: Bring 10 Crystal Fragment and 2000G and Clarion Crystal will be yours." )
	-------------eleven
	AddNpcMission ( 5010)
	AddNpcMission ( 5014)
	AddNpcMission ( 5033)
	AddNpcMission ( 5034)
	---------------白羊
	AddNpcMission	(5553)
	AddNpcMission	(5554)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<人鱼王子·哈沙特


----------------------------------------------------------
--							--
--							--
--		沙岚城[乐器专家·沙梅洱]			--
--							--
--		66465,609367				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk69 ()
	
	
	Talk( 1, "Shamel: Hi! I am a musician that bring melody to this place." )
---------------白羊
	AddNpcMission	(5559)
	AddNpcMission	(5560)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<乐器专家·沙梅洱


----------------------------------------------------------
--							--
--							--
--		沙岚城[圣女·艾达]			--
--							--
--		86248,330381				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk70 ()
	
	
	Talk( 1, "Ada: Hi, friend from afar. May the Goddess be with you. I am High Priestess Ada." )

	AddNpcMission ( 756 )
	AddNpcMission ( 341 )
	AddNpcMission ( 356 )
	AddNpcMission ( 357 )
	AddNpcMission ( 521 )
	AddNpcMission ( 539 )
	AddNpcMission ( 540 )
	AddNpcMission ( 541 )
	AddNpcMission ( 552 )
	AddNpcMission ( 553 )
	AddNpcMission ( 556 )

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<圣女·艾达

----------------------------------------------------------
--							--
--							--
--		沙岚城[路人·法利尔]			--
--							--
--		93176,352977				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk71 ()
	
	
	Talk( 1, "Fairu: You know something? Cactus also has flowers! And the smell is just heavenly!" )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·法利尔

----------------------------------------------------------
--							--
--							--
--		沙岚城[工会会长·佛瑞]			--
--							--
--		83171,354853				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk72 ()
	
	Talk( 1, "Forlan: Unity is strength! Want to challenge the Top 3 Guilds? Want to rule this world? Guild leader may apply for guild challenge with me. Your guild might make it to the Top 3 too!" )
	Text( 1, "View Top 3 Guild", ListChallenge)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<工会会长·佛瑞

----------------------------------------------------------
--							--
--							--
--		冰狼堡[铁匠·暴冰]			--
--							--
--		134423,52988				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk73 ()
	
	
	Talk( 1, "Bash: Welcome! I sell all sorts of weapon! Satisfaction guarantee!" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair )
	Text( 1, "Forge", OpenForge)
	Text( 1, "Fusion", OpenMilling)
	Text( 1, "Apparel Fusion", OpenFusion)
	Text( 1, "Apparel Upgrade", OpenUpgrade)
	

	Talk( 2, "Bash: Forging? Only Shaitan Blacksmith know how to forge items." )

	Talk( 3, "Bash: You wish to combine something? From what I understand, you need a combining scroll and it will list the required items. Collect the items needed and talk to Grocer - Amos in Shaitan City. He is the only person who knows how to combine." )


	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0025	)
	Weapon(	0032	)
	Weapon(	0026	)
	Weapon(	0033	)
	Weapon(	0027	)
	Weapon(	0034	)
	Weapon(	1400	)
	Weapon(	1401	)
	Weapon(	1402	)
	Weapon(	1403	)
	Weapon(	1404	)
	Weapon(	1405	)
	Weapon(	0037	)
	Weapon(	0038	)
	Weapon(	0039	)
	Weapon(	0044	)
	Weapon(	0040	)
	Weapon(	0045	)
	Weapon(	1406	)
	Weapon(	1407	)
	Weapon(	1408	)
	Weapon(	1409	)
	Weapon(	1413	)
	Weapon(	1414	)



	AddNpcMission	(6251)
	AddNpcMission	(6252)
	AddNpcMission	(6253)
	AddNpcMission	(723)
	AddNpcMission	(1041)
	AddNpcMission	(1093)
	AddNpcMission	(1152)
	AddNpcMission	(1204)
	AddNpcMission	(1233)
	


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<铁匠·暴冰

----------------------------------------------------------
--							--
--							--
--		冰狼堡[杂货商人·伯鲁]			--
--							--
--		135671,48320				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk74 ()
	Talk( 1, "Palpin: Hi, I am the Grocery in Icicle City. I love to collect items. After you are Lv 10, look for me to get some item scollection quest. I pay well for the items I needed. How can I help you?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )
	Text( 1, "Redeem Reality Mask",JumpPage, 2 )

	InitTrade()
	Other(	3187	)
	Other(	3188	)
	Other(	3190	)
	Other(	3239	)
	Other(	3197	)
	Other(	3193	)
	Other(	3241	)
	Other(	3192	)
	Other(	3198	)
	Other(	3202	)
	Other(	3203	)
	Other(	3204	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	--baby--生活技能书Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)
--	Other(	3288	)--Study Skill Book
	Other(  2440    )


	AddNpcMission	(1052)
	AddNpcMission	(1106)
	AddNpcMission	(1162)
	AddNpcMission	(1214)
	AddNpcMission	(181)
	AddNpcMission	(182)
	AddNpcMission	(183)
	AddNpcMission	(1234)
	--AddNpcMission	(5502)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "To obtain a Reality Mask requires 1 Elven Signet, 10000G and any of 10x Lv3 gathered resource" )
	Text( 2, "Use bones to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Crystal Eolith to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Teak Wood Log to exchange for a Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Use Bubble Fish to exchange for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Palpin: Keep it well...It is important." )
	Talk( 4, "Palpin: You do not seem to have enough material. Your inventory may be binded or you do not have enough free slots." )
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<杂货商人·伯鲁

----------------------------------------------------------
--							--
--							--
--		冰狼堡[药店老板·达赫]			--
--							--
--		135298,49926				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk75 ()
	
	
	Talk( 1, "Daisha: Hello! Have a look here! I have the best herbs in all of Icicle." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )
	
	Talk( 2, "Daisha: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Argent or Shaitan by using the teleporter." )
	Text( 2, "Trade", BuyPage )
	Text( 2, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)

	---------------------玩家超过9级
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 727 )
	--AddNpcMission ( 735 )
	--AddNpcMission ( 746 )
	--AddNpcMission ( 747 )
	AddNpcMission	(1047)
	AddNpcMission	(1101)
	AddNpcMission	(1158)
	AddNpcMission	(1209)
	AddNpcMission(	1235	)
---------eleven	
	AddNpcMission(	5067)
	AddNpcMission(	593)
	AddNpcMission(	594	)
	AddNpcMission(	596	)	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<药店老板·达赫


----------------------------------------------------------
--							--
--							--
--		冰狼堡[护士小姐·安妮]			--
--							--
--		131725,50169				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk76 ()
	
	
	Talk( 1, "Anne: Hi! I am Nurse Anne. As I am on probation, I cannot give you any treatment just yet." )
	AddNpcMission	(1018)
	AddNpcMission	(1073)
	AddNpcMission	(1128)
	AddNpcMission	(1181)
	AddNpcMission(	1236	)
	



	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<护士小姐·安妮

----------------------------------------------------------
--							--
--							--
--		冰狼堡[新手指导·安琪露亚]		--
--							--
--		131577,50700				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天


-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<新手指导·安琪露亚


----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰狼堡剑士·雷欧]		--
--							--
--		136573,57078				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk78 ()
	
	-------------------转职双剑
	Talk( 1, "Ray: I am a bounty hunter. I love to hunt for undeads. If you are interested, I can recommend a few places to you." )

		----------------转职成为猎人
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasMoney, 1000 )
	TriggerCondition( 1, HasItem, 3955, 1 )
	TriggerAction( 1, TakeItem, 3955, 1 )
	TriggerAction( 1, TakeMoney, 1000 )
	TriggerAction( 1, GiveItem, 3187, 1 , 4)
	TriggerAction( 1, GiveItem, 25, 1 , 4)
	TriggerAction( 1, SetProfession, 2 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerCondition( 2, HasItem, 3955, 1 )
	TriggerAction( 2, TakeItem, 3955, 1 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, GiveItem, 3187, 1 , 4)
	TriggerAction( 2, GiveItem, 25, 1, 4)
	TriggerAction( 2, SetProfession, 2  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

	Talk(2, "Hi my friend. You have great reflexes, suitable to become a hunter. Why don't you become a hunter now? I believe that you will not be disappointed.")
	Text(2, "Ok, class change to be Hunter", MultiTrigger, GetMultiTrigger(), 2)
	Text(2, "No, it is good enough for now.", CloseTalk)

	Talk(3, "I have told you all I can about being a Hunter. Now its up to you to become the best Hunter.")

	Talk(4, "Want to be a Hunter? Only players Lv 8 and above who possess a Hunter Manual can register with me for 1000G. Muscular guy or little girl are not suitable.")

	----------------转职成为狙击手
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 15000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 15000 )
	TriggerAction( 2, SetProfession, 12  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

	Talk(5, "Sharpshoots nowadays only want to earn more money. They will kill anyone on sight as long as there is a bounty. Friend, it seems that you are suitable to become a sharpshooter. You have a good character and build. Would you consider to be one so that you might restore the glory of the Sharpshooters one day?")
	Text(5, "Ok, I will become a Sharpshooter", MultiTrigger, GetMultiTrigger(), 2)
	Text(5, "No, it is good enough for now.", CloseTalk)

	Talk(6, "Sharpshooters are not assassins. You must not forget the principles of the sharpshooters in the future.")

	Talk(7, "Want to become a Sharpshooter? Come back here when you are Lv 40. Remember to bring along 1 Clarity Crystal and 15000G too!")

	--InitTrigger()

-------------------转猎人判断
	--TriggerCondition( 1, LvCheck, ">", 9 )
	----TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck, ">", 9 )
	--TriggerCondition( 2, IsCategory, 3 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

----------------狙击手

	--TriggerCondition( 3, LvCheck, ">", 39 )
	--TriggerCondition( 3, IsCategory, 1 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	--TriggerCondition( 4, LvCheck, ">", 39 )
	--TriggerCondition( 4, IsCategory, 3 )
	--TriggerCondition( 4, PfEqual, 2 )
	--TriggerAction( 4, JumpPage, 5 )
	--TriggerFailure( 4, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )
	
	--AddNpcMission ( 729 )
	AddNpcMission ( 101 )
	AddNpcMission ( 251 )
	AddNpcMission ( 252 )
	AddNpcMission ( 260 )
	AddNpcMission ( 261 )
	AddNpcMission 	(410)
	AddNpcMission 	(757)
	AddNpcMission 	(167)
	AddNpcMission 	(168)
	AddNpcMission 	(169)
	AddNpcMission 	(174)
	AddNpcMission 	(175)
	AddNpcMission 	(176)
	AddNpcMission 	(180)
	AddNpcMission 	(523)
	AddNpcMission(	1237	)
-------------eleven
	AddNpcMission(	5057	)
	AddNpcMission(	5061	)	
	AddNpcMission(	5069	)
----------1.7
	AddNpcMission(	5168	)
	AddNpcMission(	5090	)
	AddNpcMission (5097 )
	AddNpcMission (5098 )
	AddNpcMission (5099 )
	AddNpcMission (5100 )
	AddNpcMission (5111 )

	MisListPage(2)


	-----铁人六项
	AddNpcMission ( 6125 )


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<冰狼堡剑士·雷欧

----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰狼堡商会会长·艾立克]		--
--							--
--		129486,49842				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk79 ()
	
	
	Talk( 1, "Reyno: Wherever there are money to be earned, I will be there. Hi! I am Icicle Chairman - Reyno. The richest man in the city." )
	Text( 1, "Decoct Recovery Potion", JumpPage, 5)

	--------------------炮制提神剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3138, 2 )
	TriggerCondition( 1, HasItem, 3137, 2 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3138, 2 )
	TriggerAction( 1, TakeItem, 3137, 2 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3139, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "Reyno: Those herbs sold by physicians are just common herbs. Only I possess rare herbs that do miracles." )
	Text( 5, "Make Agrypnotic",MultiTrigger, GetMultiTrigger(), 1)

	----------------合成魔幻药水
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3133, 1 )
	TriggerCondition( 1, HasItem, 3134, 1 )
	TriggerCondition( 1, HasItem, 3135, 1 )
	TriggerCondition( 1, HasItem, 3136, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3133, 1 )
	TriggerAction( 1, TakeItem, 3134, 1 )
	TriggerAction( 1, TakeItem, 3135, 1 )
	TriggerAction( 1, TakeItem, 3136, 1 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3140, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Decoct Magical Potion",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Reyno: Did you wait for a long time? This is what you wanted." )
	Talk( 7, "Reyno: I do have Agrypnotic. However, you must bring me 2 Mystery Fruits, 2 Tiamari Fruits, 1 Bottle and 200G in exchange." )
	Talk( 8, "Reyno: I have with me some Magical Potion. You can bring me 1 Liquorice Potion, 1 Energetic Tea, 1 Special Ointment, 1 Snowy Soft Bud, 1 Bottle and 200G in exchange." )

	AddNpcMission 	(459)
	AddNpcMission 	(465)
	AddNpcMission 	(699)
	AddNpcMission 	(800)
	AddNpcMission	(1005)
	AddNpcMission	(1060)
	AddNpcMission	(1115)
	AddNpcMission	(1169)
	AddNpcMission(	1238	)
	--------------------1.7
	AddNpcMission ( 5084	)
	AddNpcMission ( 5085	)
	AddNpcMission ( 5086	)
	AddNpcMission ( 5087	)
	AddNpcMission (5143 )
	AddNpcMission (5144 )
	AddNpcMission (5145 )
	AddNpcMission (5146 )
	AddNpcMission (5151 )



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<商会会长·艾立克

----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰狼堡贵族·马尔修斯]		--
--							--
--		134652,45141				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk80 ()
	
	
	Talk( 1, "Mas: My family history runs as deep as Icicle Castle. Everybody here know and respected me." )
	Text( 1, "Regarding the legends of the Pirates",JumpPage, 2 )
	Text( 1, "Nothing...",CloseTalk )


	Talk( 2, "Mas: Hohoho...Pirates Crew? You wish to create one? That would have to depend on your ability." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerAction( 1, CreateGuild, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Create a Pirate Guild", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Mas: To be the leader of the pirates is not an easy matter. Bring 100000G and the Stone of Oath to prove your worth" )


	AddNpcMission ( 253 )
	AddNpcMission ( 254 )
	AddNpcMission (	453 )
	AddNpcMission 	(698)
	AddNpcMission 	(801)
	AddNpcMission	(1004)
	AddNpcMission	(1059)
	AddNpcMission	(1114)
	AddNpcMission	(1168)
	AddNpcMission	(317)
	AddNpcMission	(321)
	AddNpcMission	(322)
-----------eleven
	AddNpcMission	(5045)
	AddNpcMission	(5046)
	AddNpcMission	(5047)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<冰狼堡贵族·马尔修斯

----------------------------------------------------------
--							--
--							--
--		冰狼堡[银行出纳·布丽娜]		--
--							--
--		136058,51931				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk81 ()
	
	
	Talk( 1, "Belinda: Welcome to Icicle Bank. How may I help you?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry, you do not have sufficient gold to pay for vault usage" )

	AddNpcMission	(1102)
	AddNpcMission	(187)
	AddNpcMission	(188)
	AddNpcMission	(189)
----------eleven
	AddNpcMission	(597)
	AddNpcMission	(598)	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<银行出纳·布丽娜

----------------------------------------------------------
--							--
--							--
--		冰狼堡[酒吧服务员·芭芭拉]		--
--							--
--		131083,53031				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk82 ()
	
	
	Talk( 1, "Babara: Hi, do you have any interesting story to tell?" )
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)
	Text( 1, "Bake Pastry", JumpPage, 6)

-----------调配蓝色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1792, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1792, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1802, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Babara: Hi! Have you encounter anything interesting? Tell me!" )
	Text( 2, "Decoct Blue Colorant", MultiTrigger, GetMultiTrigger(), 1)
-------------------------调配紫色染发剂
	InitTrigger()
	TriggerCondition( 1, HasItem, 1793, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1793, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1803, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Decoct Purple Colorant", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Babara: I did a great job for you! Keep it close. Look for me next time." )
	Talk( 4, "Babara: 5 Blue Dye, 1 Special Gas, 1 Rainbow Glass and 200G to make 1 Blue Colorant." )
	Talk( 5, "Babara: 5 Purple Dye, 1 Special Gas, 1 Rainbow Glass and 200G to make 1 Purple Colorant." )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "Babara: I'm the only one in Icicle City who can make Elven Fruit Juice. Do you want a glass?" )
	Text( 6, "Mix Elven Fruit Juice", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "Babara: This is the Elven Fruit Juice I mixed for you. Keep it well." )

	Talk( 8, "Babara: Sorry! You do not have the required items. You need to have 10 Elven Fruits and 1 Glass to mix the drink." )
	AddNpcMission	(1078)
	AddNpcMission	(389)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<酒吧服务员·芭芭拉

----------------------------------------------------------
--							--
--							--
--		冰狼堡[服装店主·翰娜]		--
--							--
--		134926,53992				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk83 ()
	
	
	Talk( 1, "Hannah: Welcome to the Tailor Shop of Icicle City. We have all sorts of trendy clothes." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )
	
	InitTrade()
	Defence(	0305	)
	Defence(	0481	)
	Defence(	0657	)
	Defence(	0313	)
	Defence(	0487	)
	Defence(	0665	)
	Defence(	0306	)
	Defence(	0482	)
	Defence(	0658	)
	Defence(	0311	)
	Defence(	0489	)
	Defence(	0663	)
	Defence(	0307	)
	Defence(	0483	)
	Defence(	0659	)
	Defence(	0314	)
	Defence(	0490	)
	Defence(	0666	)
	Defence(	0310	)
	Defence(	0486	)
	Defence(	0662	)
	Defence(	0491	)
	Defence(	0315	)
	Defence(	0667	)
	Defence(	0312	)
	Defence(	0488	)
	Defence(	0664	)
	Defence(	0316	)
	Defence(	0492	)
	Defence(	0668	)




	AddNpcMission ( 725 )
	AddNpcMission	(1067)
	AddNpcMission	(170)
	AddNpcMission	(171)
	AddNpcMission	(172)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<服装店主·翰娜

----------------------------------------------------------
--							--
--							--
--		冰狼堡[旅店老板·约瑟夫]		--
--							--
--		129074,54098				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk84 ()
	
	
	Talk( 1, "Yaskey: Welcome to the Inn of Icicle City. I am the owner Yaskey." )
	AddNpcMission	(1085)
	AddNpcMission	(184)
	AddNpcMission	(185)
	AddNpcMission	(186)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<旅店老板·约瑟夫

----------------------------------------------------------
--							--
--							--
--		冰狼堡[路人·丁]		--
--							--
--		133550,46900				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk85 ()
	
	
	Talk( 1, "Tink: Have you seen my three brothers? They live in Shaitan, Argent and Thundoria respectively." )
	Text( 1, "Refine", JumpPage, 2)
-------------------炼造地金矿石
	InitTrigger()
	TriggerCondition( 1, HasItem, 1781, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1781, 10 )
	TriggerAction( 1, GiveItem, 1782, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )	
	Talk( 2, "Tink: I am not just a normal NPC. The game cannot do without me! Hoho! Let me prove it to you!" )
	Text( 2, "Refine Terra Gold", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Tink: Ok! This Terra Gold Ore is yours!" )
	Talk( 4, "Tink: Tink: I have a method to make Terra Gold Ore. Pass me 10 Terra Gold Fragment and 200G and it'll be yours." )

	AddNpcMission ( 6015 )
	AddNpcMission ( 6016 )
	AddNpcMission ( 6019 )
	AddNpcMission ( 6020 )
	AddNpcMission ( 6021 )
	AddNpcMission ( 6022 )
	AddNpcMission ( 6023 )
	AddNpcMission ( 6024 )
	-------------------路人·丁  -------------------------巨蟹
	AddNpcMission ( 5859 )
	AddNpcMission ( 5860 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<路人·丁




------------------------------------------------------------
-- 白银之城:历史任务:新手指导任务
------------------------------------------------------------






------------------------------------------------------------
-- 通用竞技场脚本
------------------------------------------------------------

function r_talk87 ()

	Talk( 1, "Arena Administrator: Hi! I am the Arena Administrator. Do you wish to prove your capability? Or challenge other players?" )
	Text( 1, "Obtain Medal of Valor", JumpPage, 2)
	Text( 1, "Party Challenge Honor System", JumpPage, 6)
	Text( 1, "Honor Exchange", JumpPage, 3)
	Text( 1, "Record Current Challenge Location", SetSpawnPos, "Argent Bar")

	Talk( 2, "Arena Administrator: Hi young man, to obtain the Medal of Valor, you need to be above Lv25, prepare 50000G as administration fee along with the Medal of Valor, you will be able to participate in party pk. This Medal of Valor will forever with you. You won't be able to throw, destroy or sell it." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 25 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, NoItem, 3849, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 3849, 1, 97 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Obtain Medal of Valor", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Arena Administrator: To exchange for Honor points, you will need to have Party Contribution points. They can be obtained by winning party challenge. Each Honor point requires 10 Party Contribution points and 500G." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 10 )
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, TakeOffer, 10 )
	TriggerAction( 1, AddCredit, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Redeem 10 Party Contribution points", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 50 )
	TriggerCondition( 1, HasMoney, 2500 )
	TriggerAction( 1, TakeMoney, 2500 )
	TriggerAction( 1, TakeOffer, 50 )
	TriggerAction( 1, AddCredit, 5 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 3, "Redeem 50 Party Contribution points", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 100 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, TakeOffer, 100 )
	TriggerAction( 1, AddCredit, 10 )
	TriggerFailure( 1, JumpPage, 12 )
	Text( 3, "Redeem 100 Party Contribution points", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 300 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, TakeOffer, 300 )
	TriggerAction( 1, AddCredit, 30 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 3, "Redeem 300 Party Contribution points", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Arena Administrator: Sorry, you need to have at least 1 empty inventory slot, higher than Lv25 with at least 50000G. Each person is limit to 1 Medal of Valor." )

	Talk( 5, "Arena Administrator: Hi! To exchange 10 Party Contribution points for 1 Honor point, you will need to have 10 Party Contribution points, 500G and a negative Honor value." )

	Talk( 6, "Arena Administrator: Regarding Honor system as followed" )
	Text( 6, "Regarding Battle Count", JumpPage, 7)
	Text( 6, "Regarding Challenge Honor", JumpPage, 8)
	Text( 6, "Regarding Victory Honor", JumpPage, 9)
	Text( 6, "Regarding Escape Penalty", JumpPage, 10)

	Talk( 7, "Arena Administrator: Each battle will increase battle count by 1" )

	Talk( 8, "Arena Administrator: Each kill will increase Kill count by 1 and 1 Honor point (Opponent lower by 10 levels will not have any Honor. Those higher by 10 levels will earn a bonus 1 Honor). Vice versa for those defeated in challenge." )

	Talk( 9, "Arena Administrator: Each victory to the party will increase victory count by 1 and gain Honor points according to the differences between the average level of the two parties." )

	Talk( 10, "Arena Administrator: Each time a party escape or quit battle, System will deduct Honor points according to the average level of both party and an additional of 2 Honor points per person. The other party will gain Honor points based on those lost by the party." )

	Talk( 11, "Arena Administrator: Hi! To exchange 50 Party Contribution points for 5 Honor points, you will need to have 50 Party Contribution points, 2500G and a negative Honor value." )

	Talk( 12, "Arena Administrator: Hi, 100 Party Contribution points can be exchanged for 10 Honor points. You also need to pay 5000G and have a negative Honor point value in order to exchange." )

	Talk( 13, "Arena Administrator: Hi, exchanging 300 Party Contribution points for 30 Honor points requires 300 Party Contribution points, 15000G and negative Honor points" )

end



------------------------------------------------------------
-- 白银城——巡逻兵·马尔斯
------------------------------------------------------------

function r_talk88 ()

	Talk( 1, "Marcusa: Hi, I am new around here. My name is Marcusa. Wonder why so many squids appear outside of Argent. My captain sends me to clear up the mess they did with their ink…sob…sob. New man always gets bullied…" )

	Talk( 2, "Marcusa: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). Explorer look for Little Daniel at (2193, 2730). You can reach Icicle or Shaitan by using the teleporter." )


	---------------------玩家超过9级
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 730 )
	--AddNpcMission ( 736 )
	--AddNpcMission ( 737 )
	AddNpcMission ( 400 )
	AddNpcMission ( 52 )
	AddNpcMission ( 53 )
	AddNpcMission ( 54 )

	MisListPage(2)

end

------------------------------------------------------------
-- 沙岚城——巡逻兵·迈克
------------------------------------------------------------

function r_talk89 ()

	Talk( 1, "Michael: Hi, I am suppose to patrol around here.. You better be careful as the scorpions here are dangerous. Its so boring…" )
	
	Talk( 2, "Michael: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Argent by using the teleporter." )

	---------------------玩家超过9级
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 731 )
	--AddNpcMission ( 740 )
	--AddNpcMission ( 741 )
	AddNpcMission ( 235 )
	AddNpcMission ( 236 )
	AddNpcMission ( 241 )
	AddNpcMission ( 242 )
	AddNpcMission 	(412)
	AddNpcMission 	(85)
	AddNpcMission 	(86)
	AddNpcMission 	(87)
	AddNpcMission 	(922)--------------------------------------------
	AddNpcMission 	(923)
	AddNpcMission 	(924)------------


	MisListPage(2)

end

------------------------------------------------------------
-- 冰狼堡——巡逻兵·小莫
------------------------------------------------------------

function r_talk90 ()

	Talk( 1, "Little Mo: I am supposed to patrol around this area all day long. It is so boring and cold around here. Do you have something for me to eat? I am so hungry. There are no good foods around here…" )

	Talk( 2, "Little Mo: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Shaitan by using the teleporter." )

	---------------------玩家超过9级
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission ( 732 )
	--AddNpcMission ( 742 )
	--AddNpcMission ( 743 )
	AddNpcMission ( 255 )
	AddNpcMission ( 256 )
	AddNpcMission 	(408)
	AddNpcMission 	(164)
	AddNpcMission 	(165)
	AddNpcMission 	(166)
	AddNpcMission 	(177)
	AddNpcMission 	(178)
	AddNpcMission 	(179)


	MisListPage(2)

end

------------------------------------------------------------
-- 沙岚城——药材商人·沙拉拉
------------------------------------------------------------

function r_talk91 ()

	Talk( 1, "Shala: Hey hey...I am the physician in Shaitan. I have all you needed!" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )
	
	Talk( 2, "Shala: Very good. You have advanced to Lv9. You can select a class at Lv 10. Now is the time for you to make a decision. Look for Peter in Argent City at (2192, 2767) if you want to become a Swordsman. Look for High Priest - Gannon in Shaitan City at (862, 3500) to be a Herbalist. To be a Hunter, look for Swordsman Ray in Icicle City at (1365, 570). As the journey to Argent and Icicle is too far, look for the Teleporter to teleport you there in an instant." )
	Text( 2, "Trade", BuyPage )
	Text( 2, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)


	---------------------玩家超过9级
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 717 )
	--AddNpcMission ( 734 )
	--AddNpcMission ( 744 )
	--AddNpcMission ( 745 )

	MisListPage(2)

end 

------------------------------------------------------------
--卡尔加德雪原    旅行医生·瓦罗温妮
------------------------------------------------------------

function r_talk92 ()

	Talk( 1, "Chivo: Hi, I am Chivo. I am the only doctor around here. You need any herbs?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	471	)
	AddNpcMission(	472	)
	AddNpcMission	(753)
	
end

------------------------------------------------------------
-- 赖安森林——旅行医生·米奈希尔
------------------------------------------------------------

function r_talk93 ()

	Talk( 1, "Minoseva: Hi, I am Minoseva. There is no other doctor nearby. Do you need some medicine?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission(	1442	)
	AddNpcMission (	1900	)

	---------------白羊
	AddNpcMission	(5567)
	AddNpcMission	(5568)
--	AddNpcMission ( 6052 )
--	AddNpcMission ( 6053 )
	


	
end

------------------------------------------------------------
-- 德尔维平原-----福克
------------------------------------------------------------

function r_talk94 ()

	Talk( 1, "Fukei: You may say that I am arrogant! But my dream is to be a proud sailor? Did I say that?" )

end

------------------------------------------------------------
-- 冰极补给站-----法迪尔
------------------------------------------------------------

function r_talk95 ()

	Talk( 1, "Fardey: My dumb friend is thinking to bring winter clothings to sell in the hot and dry Shaitan City…What can I do to deter him…." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
		
	AddNpcMission	(1065)
	AddNpcMission	(	869	)
	AddNpcMission	(	872	)
	AddNpcMission	(	874	)
	AddNpcMission	(	878	)
	AddNpcMission	(	886	)
	AddNpcMission	(	889	)
	AddNpcMission	(	470	)
	AddNpcMission(	1738	)
	AddNpcMission (	1927	)
	AddNpcMission (	1948	)

	------------------二月
	--AddNpcMission (5504	)



end

------------------------------------------------------------
-- 德尔维平原-----席特
------------------------------------------------------------

function r_talk96 ()

	Talk( 1, "Xitron: Everyone says that I'm a wolf in sheep's clothing. Hehe." )

end

------------------------------------------------------------
-- 德尔维平原-----严罗塔
------------------------------------------------------------

function r_talk97 ()

	Talk( 1, "Kentaro: Life is short like a fleeting snowflake which melts before it reaches the ground." )

	AddNpcMission 	(409)
	AddNpcMission 	(415)
	AddNpcMission 	(424)
	AddNpcMission 	(426)
	AddNpcMission 	(449)
	AddNpcMission 	(809)
	AddNpcMission 	(813)
	AddNpcMission(	1431	)
	AddNpcMission (	1901	)
----------eleven
	AddNpcMission (	5048	)
	AddNpcMission (	5049	)
	AddNpcMission (	5050	)
	AddNpcMission (	5051	)
	AddNpcMission (	5052	)
--	AddNpcMission ( 6030 )
--	AddNpcMission ( 6031 )

end

------------------------------------------------------------
-- 德尔维平原-----布布
------------------------------------------------------------

function r_talk98 ()

	Talk( 1, "Bubu: My father is a pirate so I want to join the Navy and be their spy!" )

end

------------------------------------------------------------
-- 德尔维平原-----鲁鲁
------------------------------------------------------------

function r_talk99 ()

	Talk( 1, "Lulu: Haha! See no evil!" )

	AddNpcMission(	1736	)
	AddNpcMission (	1925	)
	AddNpcMission (	1946	)

	---------------白羊
	AddNpcMission	(5561)
	AddNpcMission	(5562)
--	AddNpcMission ( 6040 )
--	AddNpcMission ( 6041 )



end

------------------------------------------------------------
-- 德尔维平原-----奥迪斯.闪光
------------------------------------------------------------

function r_talk100()

	Talk( 1, "Odessis: When I am old, I want to move to Demon Isle. To be able to see the magnificient volcanic eruption." )

	AddNpcMission (	454	)
	AddNpcMission (	458	)
	AddNpcMission 	(654)
	AddNpcMission 	(657)
	AddNpcMission 	(658)
	AddNpcMission 	(663)
	AddNpcMission 	(666)
	AddNpcMission	(1110)
	AddNpcMission(	1584	)
	AddNpcMission (	1914	)

	




end

------------------------------------------------------------
-- 德尔维平原-----梅尔
------------------------------------------------------------

function r_talk101()

	Talk( 1, "Melissa: To end a gossip, start another." )

end

------------------------------------------------------------
-- 德尔维平原-----古博拉
------------------------------------------------------------

function r_talk102()

	Talk( 1, "Gador: I have written a bestseller by the name of \"Beach Boys with Tees\". I heard its popular among the pirates." )

	AddNpcMission 	(603)
	AddNpcMission 	(608)
	AddNpcMission 	(613)
	AddNpcMission 	(615)
	AddNpcMission 	(618)


end

------------------------------------------------------------
-- 德尔维平原-----小库尔森
------------------------------------------------------------

function r_talk103()

	Talk( 1, "Little Cuwen: Mum say I should not talk to stranger…Can I have a sweet?" )

end

------------------------------------------------------------
-- 德尔维平原-----玛姬婶婶
------------------------------------------------------------

function r_talk104()

	Talk( 1, "Aunt Mary: I love to eat Black Forest Cake, baked with a thick layer of chocolates on top. Yummy…It makes me drool." )

end

------------------------------------------------------------
-- 德尔维平原-----瓦萨法尔
------------------------------------------------------------

function r_talk105()

	Talk( 1, "Waala: Tell you a secret…Recently, my friends and I made a new card game. It requires 4 person and 108 cards. Each of us sit in a circle and…." )

	AddNpcMission 	(451)
	AddNpcMission 	(457)
	AddNpcMission 	(621)
	AddNpcMission 	(625)
	AddNpcMission(	1590	)
	AddNpcMission (	1902	)
	AddNpcMission (	1940	)

	




end

------------------------------------------------------------
-- 德尔维平原-----朱丽布玛
------------------------------------------------------------

function r_talk106()

	Talk( 1, "Julie Burn: Do you want to know why the blacksmith is bald? I like to gossip? You are so boring!" )

	AddNpcMission 	(689)
	AddNpcMission	(1109)
	AddNpcMission(	1579	)
	AddNpcMission (	1918	)





end

------------------------------------------------------------
-- 德尔维平原-----阿里克斯
------------------------------------------------------------

function r_talk107()

	Talk( 1, "Alexandis: Life is tough, why not play online game?" )
	AddNpcMission 	(425)
	AddNpcMission 	(431)
	AddNpcMission 	(436)
	AddNpcMission 	(442)
	AddNpcMission 	(448)
	AddNpcMission 	(601)
	AddNpcMission 	(607)
	AddNpcMission 	(610)
	AddNpcMission 	(612)
	AddNpcMission	(1001)
	AddNpcMission	(1165)



end

------------------------------------------------------------
-- 德尔维平原-----老库尔森
------------------------------------------------------------

function r_talk108()

	Talk( 1, "Old Cuwen: In this warm summer I feel like going to a isolated island for a holiday." )

	AddNpcMission	(475)

end

------------------------------------------------------------
-- 德尔维平原-----海军列兵
------------------------------------------------------------

function r_talk109()

	Talk( 1, "Shhhh~ softer, our boss is speaking" )

end

------------------------------------------------------------
-- 帕克荒漠-----吉尔尼尼斯
------------------------------------------------------------

function r_talk110()

	Talk( 1, "Jernis: My ancestors are all woodcutters. Some environmentalist has been picking on my family recently. So troublesome." )

	AddNpcMission 	(411)
	AddNpcMission 	(669)
	AddNpcMission 	(675)
	AddNpcMission 	(678)
	AddNpcMission 	(680)
	AddNpcMission	(1075)



end

------------------------------------------------------------
-- 帕克荒漠-----米尔米莉
------------------------------------------------------------

function r_talk111()

	Talk( 1, "Minelli: Hi how are you? My friends all call me Elli. I don't mind if you call me that too." )

	AddNpcMission 	(456)
	AddNpcMission 	(656)
	AddNpcMission 	(661)
	AddNpcMission 	(665)
	AddNpcMission	(1142)
	AddNpcMission(	1582	)
	AddNpcMission (	1910	)
---------eleven
	AddNpcMission (	5025	)
	AddNpcMission ( 5026	)
	AddNpcMission ( 5029	)
	AddNpcMission (	5070)
	AddNpcMission ( 5072	)
	AddNpcMission ( 5073	)
	------------1.7
	AddNpcMission ( 5074	)
	AddNpcMission(	5092 )
	AddNpcMission (5101 )
	AddNpcMission (5102 )
	AddNpcMission (5103 )
	AddNpcMission (5104 )
	AddNpcMission (5113 )
--	AddNpcMission ( 6032 )
--	AddNpcMission ( 6033 )

end

------------------------------------------------------------
-- 帕克荒漠-----奥格森
------------------------------------------------------------

function r_talk112()

	Talk( 1, "Augustan: There are many myth and legends waiting for a great adventurer to solve them all!" )

	AddNpcMission	(1111)


end

------------------------------------------------------------
-- 帕克荒漠-----加西亚·破帆
------------------------------------------------------------

function r_talk113()

	Talk( 1, "Jeynaa: Hi, I am Jeynaa." )
	AddNpcMission	(1131)

end

------------------------------------------------------------
-- 帕克荒漠-----迪迪马修
------------------------------------------------------------

function r_talk114()

	Talk( 1, "Ditaro: Great adventurers! Let's set off for the big ocean!" )

	AddNpcMission 	(640)
	AddNpcMission 	(644)
	AddNpcMission 	(645)
	AddNpcMission 	(646)
	AddNpcMission 	(651)
	AddNpcMission	(1119)
	AddNpcMission(	1437	)
	AddNpcMission (	1911	)
--	AddNpcMission ( 6038 )
--	AddNpcMission ( 6039 )

	





end

------------------------------------------------------------
-- 帕克荒漠-----俄克琉西斯
------------------------------------------------------------

function r_talk115()

	Talk( 1, "Ruben Actus: I want to earn a lot of gold. If that cannot be done, I need a party mate that is able to supply me with lots of gold." )
	AddNpcMission	(1120)


end

------------------------------------------------------------
-- 帕克荒漠-----梅利西亚·猫眼
------------------------------------------------------------

function r_talk116()

	Talk( 1, "Merrix: Why you look so surprised? Have you not seen a female pirate before?" )
	
	AddNpcMission ( 245 )
	AddNpcMission ( 246 )
	AddNpcMission ( 247 )
	AddNpcMission ( 249 )
	AddNpcMission ( 250 )
	AddNpcMission (1141)

end

------------------------------------------------------------
-- 帕克荒漠-----古得塔克·灰墙
------------------------------------------------------------

function r_talk117()

	Talk( 1, "Gudas: Who say I will get seasick, in this golden era, how can I be seasick! I am only not accustomed to the new ship." )

end

------------------------------------------------------------
-- 帕克荒漠-----奎赛斯·狂沙
------------------------------------------------------------

function r_talk118()

	Talk( 1, "Gasardis: It doesn't pay to be kind…" )
	
	AddNpcMission ( 257 )
	AddNpcMission ( 258 )
	AddNpcMission ( 259 )
	AddNpcMission 	(435)
	AddNpcMission 	(686)
	AddNpcMission 	(691)
	AddNpcMission 	(693)
	AddNpcMission 	(694)
	AddNpcMission	(1082)



end

------------------------------------------------------------
-- 帕克荒漠-----通灵者·月光眼
------------------------------------------------------------

function r_talk119()

	Talk( 1, "Oracle Moonlight: I can see what others cannot see…like the shadow behind you…" )

	AddNpcMission 	(804)
	AddNpcMission 	(808)
	
	AddNpcMission	(	468	)
	AddNpcMission(	1586	)
	AddNpcMission (	1920	)

	
---------------白羊
	AddNpcMission	(5585)
	AddNpcMission	(5586)



end

------------------------------------------------------------
-- 帕克荒漠-----卡尔苏斯·泥巴
------------------------------------------------------------

function r_talk120()

	Talk( 1, "Kavosky: I do not envy being Argent secretary or a high ranking officer of Thundoria. I only want to be myself." )

	AddNpcMission 	(407)
	AddNpcMission 	(638)
	AddNpcMission 	(642)
	AddNpcMission(	1438	)
	AddNpcMission (	1912	)

	



end

------------------------------------------------------------
-- 帕克荒漠-----尼里艾亚·长发
------------------------------------------------------------

function r_talk121()

	Talk( 1, "Neila: Ya, you…me….that…oh….Sorry! Did I say anthing?" )

	
	AddNpcMission	(	870	)
	AddNpcMission	(	875	)
	AddNpcMission	(	876	)
	AddNpcMission	(	880	)
	AddNpcMission	(	882	)
	AddNpcMission	(	885	)
	AddNpcMission	(	888	)
	AddNpcMission	(	891	)
	AddNpcMission	(	892	)
	AddNpcMission(	1735	)
	AddNpcMission (	1924	)
	AddNpcMission (	1945	)

	


end

------------------------------------------------------------
-- 帕克荒漠-----克莉莉雅
------------------------------------------------------------

function r_talk122()

	Talk( 1, "Geliya: Argent City is well known as a trendsetter. Those pirates cannot match it." )

	AddNpcMission 	(428)
	AddNpcMission 	(812)
	AddNpcMission	(1025)
	AddNpcMission	(1188)


end

------------------------------------------------------------
-- 帕克荒漠-----贝克
------------------------------------------------------------

function r_talk123()

	Talk( 1, "Beck: I have a brother named Ham. However, I am cuter!" )

end

------------------------------------------------------------
-- 帕克荒漠-----汉姆
------------------------------------------------------------

function r_talk124()

	Talk( 1, "Ham: I have a brother by the name of Beck. But I am the better half." )

end

------------------------------------------------------------
-- 帕克荒漠-----爱尔尤利·微风
------------------------------------------------------------

function r_talk125()

	Talk( 1, "Love Yuri: Sigh…Love is so near yet so far…Sigh…" )

end

------------------------------------------------------------
-- 帕克荒漠-----薇莉尔
------------------------------------------------------------

function r_talk126()

	Talk( 1, "Willi: First! Never say that I am fat! Second! Never say that I am plump! Third! Don't tell me that I look like a pig! Ok…you can speak now." )

	AddNpcMission 	(685)
	AddNpcMission 	(688)
	AddNpcMission 	(690)
	AddNpcMission	(1097)
--	AddNpcMission ( 6034 )
--	AddNpcMission ( 6035 )


end
------------------------------------------------------------
-- 帕克荒漠-----冬达米婆婆
------------------------------------------------------------
function r_talk127()
Talk( 1, "Granny Dong: Young fellow…explore while you are still young." )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1557 )
	TriggerCondition( 1, NoRecord, 1558 )
	TriggerCondition( 1, NoRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1560 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "Hello!",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasMission, 1561 )
	TriggerCondition( 1, HasRecord, 1558 )
	TriggerCondition( 1, HasRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1569 )
	TriggerCondition( 1, NoRecord, 1561 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "Hello again!",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "I am only passing by",JumpPage, 3  )
	
	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1559 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "Granny Dong: Do you think egg come first or the chicken?")
	Text(2, "Chicken first", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1560 )
	TriggerAction( 1, JumpPage, 5 )
	Text(2, "Egg first", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "Granny Dong: Young friends, Granny is very busy. If theres nothing important, please move away a little bit~~")
	Talk( 10, "Granny Dong: Young friend, you have answered wrongly. Think it over before coming again.")

	Talk( 4, "Granny Dong: You are gifted! Not bad!")

	Talk( 5, "Granny Dong: Can it be that Weird Grampa's disease is infecteous!?")
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1563 )
	TriggerAction( 1, JumpPage, 7 )
	Talk( 6, "Granny Dong: A rabbit and a tortoise had a race. Who won?")
	Text( 6, "turtle",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "Rabbit",JumpPage, 10  )

	Talk( 7, "Granny Dong: Of course the tortoise won, because it's a tortoise that runs super fast.")
	Text( 7, "Next question",JumpPage, 8  )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1564 )
	TriggerAction( 1, JumpPage, 9 )
	Talk( 8, "Granny Dong: A rabbit and a turtle with sunglasses in a race, who will be the winner?")
	Text( 8, "Turtle with Sunglasses",MultiTrigger, GetMultiTrigger(), 1 )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1565 )
	TriggerAction( 1, JumpPage, 9 )
	Text( 8, "Rabbit",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "Granny Dong: The rabbit did not win. It is because the turtle with sunglasses is a speedo racer! Hoho!")
	--Start( GetMultiTrigger(), 1 )
	AddNpcMission 	(417)
	AddNpcMission 	(674)
	AddNpcMission 	(676)
	AddNpcMission 	(681)
	AddNpcMission	(1064)
	AddNpcMission	(752)

	
	------------------1.7
	AddNpcMission (5153 )
	AddNpcMission (5154 )
	AddNpcMission (5155 )
	AddNpcMission (5156 )
	AddNpcMission (5157 )
	AddNpcMission (5159 )
	end

------------------------------------------------------------
-- 帕克荒漠-----罗宾斯·背包
------------------------------------------------------------

function r_talk128()

	Talk( 1, "Robin: When I was small, my father would put me in his backpack and roam the world. I wanted to do the same too…" )

end

------------------------------------------------------------
-- 帕克荒漠-----瑞得·皮戈
------------------------------------------------------------

function r_talk129()

	Talk( 1, "Don Pitt: Ah Ha! How are you. Why have you come looking for me, Don Pitt!" )

	AddNpcMission 	(623)
	AddNpcMission 	(627)
	AddNpcMission 	(634)
	AddNpcMission	(1031)
	AddNpcMission	(1194)
	AddNpcMission(	1591	)
	AddNpcMission (	1905	)
	AddNpcMission (	1941	)

	---------------白羊
	AddNpcMission	(5583)
	AddNpcMission	(5584)



end

------------------------------------------------------------
-- 阿兰比斯冰原-----温莉·冰泉
------------------------------------------------------------

function r_talk130()

	Talk( 1, "Wynne: My home is in Icicle Castle. Have you visited my house?" )
---------------白羊
	AddNpcMission	(5581)
	AddNpcMission	(5582)
end

------------------------------------------------------------
-- 阿兰比斯冰原-----雷斯·小虫
------------------------------------------------------------

function r_talk131()

	Talk( 1, "Lessie: People always refer to me as a little worm…But I will not stay this small forever…" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----达米尔·嘟嘟
------------------------------------------------------------

function r_talk132()

	Talk( 1, "Dodo: Dodo, Dodo, Dodo..." )
	AddNpcMission	(1061)
	AddNpcMission	(1007)
	AddNpcMission	(1062)
	AddNpcMission	(1117)
	AddNpcMission	(1171)


end

------------------------------------------------------------
-- 阿兰比斯冰原-----索拉姆·萨加
------------------------------------------------------------

function r_talk133()

	Talk( 1, "Solaru: Have you heard of the PKO treasure chest? I have been looking for it for many many years!" )

	AddNpcMission 	(421)
	AddNpcMission 	(427)
	AddNpcMission 	(438)
	AddNpcMission 	(444)
	AddNpcMission 	(653)
	AddNpcMission 	(659)
	AddNpcMission 	(660)
	AddNpcMission 	(664)
	AddNpcMission	(1151)
	AddNpcMission(	1583	)
	AddNpcMission (	1913	)






end

------------------------------------------------------------
-- 阿兰比斯冰原-----狼牙拉姆
------------------------------------------------------------

function r_talk134()

	Talk( 1, "Lamut: I cannot see any city after three days of walking….Am I lost again?" )
	AddNpcMission	(1083)

end

------------------------------------------------------------
-- 阿兰比斯冰原-----狼牙拉姆
------------------------------------------------------------

function r_talk135()

	Talk( 1, "Irisis: If you never bring me a letter by the \"Legendary Prince Charming\", don't talk to me…" )
	AddNpcMission	(1098)

end


------------------------------------------------------------
-- 阿兰比斯冰原-----艾伦娜
------------------------------------------------------------

function r_talk136()

	Talk( 1, "Eluna: I am preparing to go to the sales today! If I am late, nothing will be left!" )

	AddNpcMission ( 262 )
	AddNpcMission ( 263 )
	AddNpcMission ( 264 )
	AddNpcMission ( 265 )
	AddNpcMission	(1056)


end

------------------------------------------------------------
-- 阿兰比斯冰原-----赫尔达达
------------------------------------------------------------

function r_talk137()

	Talk( 1, "Shereda: Boring...this is really so boring..." )
	AddNpcMission	(1072)

end

------------------------------------------------------------
-- 阿兰比斯冰原-----约瑟夫·乔
------------------------------------------------------------

function r_talk138()

	Talk( 1, "Ciao: I hate those squids! They always spray me with their ink!" )
	AddNpcMission	(1105)

end

------------------------------------------------------------
-- 阿兰比斯冰原-----草莓优优
------------------------------------------------------------

function r_talk139()

	Talk( 1, "Strawberry: Have you seen those pinkish piglets? They are the tastiest around here." )
---------------白羊
	AddNpcMission	(5555)
	AddNpcMission	(5556)
end

------------------------------------------------------------
-- 阿兰比斯冰原-----伊文
------------------------------------------------------------

function r_talk140()

	Talk( 1, "Eve: Hi! I am Eve. What are you doing here?" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----苏珊娜
------------------------------------------------------------

function r_talk141()

	Talk( 1, "Susana: Oh my god! Time is passing me by so fast!" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----卡诺林
------------------------------------------------------------

function r_talk142()

	Talk( 1, "Caroline: I am a vegetarian, hence theres something that troubles me. Is the rolling Melon an animal or vegetable?" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----詹姆斯
------------------------------------------------------------

function r_talk143()

	Talk( 1, "Jameson: Rumored that there is a talking lamb in this world…" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----露西丽丽雅
------------------------------------------------------------

function r_talk144()

	Talk( 1, "Lucy: Hi! Visitor!" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----尤兰达克
------------------------------------------------------------

function r_talk145()

	Talk( 1, "Yulandor: I always try to earn more money by killing monsters. However, I discover that they have very small purse recently…" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----博尔芬尼
------------------------------------------------------------

function r_talk146()

	Talk( 1, "Professor Fenny: I met a mermaid once while out at sea. I forgot to ask her where she bought those alluring eyelashes." )

	AddNpcMission 	(622)
	AddNpcMission 	(624)
	AddNpcMission 	(628)
	AddNpcMission 	(630)
	AddNpcMission 	(636)
	AddNpcMission	(1006)
	AddNpcMission	(1170)
	AddNpcMission(	1592	)
	AddNpcMission (	1906	)
	AddNpcMission (	1942	)
--	AddNpcMission ( 6036 )
--	AddNpcMission ( 6037 )

	



end

------------------------------------------------------------
-- 阿兰比斯冰原-----淘淘
------------------------------------------------------------

function r_talk147()

	Talk( 1, "Berry: This sky is so blue... Blue… Ocean… Blue… Blue… Oh my… mood also… Blue… Blue!" )

	AddNpcMission ( 401 )
	AddNpcMission 	(810)
	AddNpcMission	(1040)
	AddNpcMission	(1203)
	AddNpcMission(	1433	)
	AddNpcMission (	1909	)

	
---------------白羊
	AddNpcMission	(5579)
	AddNpcMission	(5580)





end

------------------------------------------------------------
-- 阿兰比斯冰原-----科瑞其
------------------------------------------------------------

function r_talk148()

	Talk( 1, "Ketan: Hi, I am pondering why there isn't any moon here. What about you?" )

end

------------------------------------------------------------
-- 阿兰比斯冰原-----米歇尔梅林芬
------------------------------------------------------------

function r_talk149()

	Talk( 1, "Missy Elene: ..............(I don't have anything to say to you...)" )

end

------------------------------------------------------------
-- 冰狼堡-----水手·埃迪加
------------------------------------------------------------

function r_talk156()

	Talk( 1, "Ajax: Hi! I am the best sailor around here. Do you need my help?" )

end

------------------------------------------------------------
-- 古里咯利补给站-----榴莲
------------------------------------------------------------

function r_talk157()

	Talk( 1, "Durian: I am always hungry although I eat a lot. I guess it's an illness..." )

	AddNpcMission 	(419)
	AddNpcMission 	(460)
	AddNpcMission 	(600)
	AddNpcMission 	(604)
	AddNpcMission 	(606)
	AddNpcMission 	(611)
	AddNpcMission 	(614)
	AddNpcMission 	(619)
	AddNpcMission	(1028)
	AddNpcMission	(1191)
	AddNpcMission(	1434	)
	AddNpcMission (	1903	)

	---------------白羊
	AddNpcMission	(5587)
	AddNpcMission	(5588)

--	AddNpcMission ( 6042 )
--	AddNpcMission ( 6043 )


end

------------------------------------------------------------
-- 古里咯利补给站-----莲娜姨
------------------------------------------------------------

function r_talk158()

	Talk( 1, "Leyna: Wh...at...do...yyy...ou...wan...t...tooo...bbuy?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(450)
	AddNpcMission 	(452)
	AddNpcMission 	(602)
	AddNpcMission 	(605)
	AddNpcMission 	(609)
	AddNpcMission 	(616)
	AddNpcMission 	(617)
	AddNpcMission(	1435	)
	AddNpcMission (	1904	)

	



	
end

------------------------------------------------------------
-- 瓦尔诺补给站-----古奈斯
------------------------------------------------------------

function r_talk159()

	Talk( 1, "Guiderius: Buy or sell, you can come find me." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	
	AddNpcMission 	(463)
	AddNpcMission 	(620)
	AddNpcMission 	(626)
	AddNpcMission 	(629)
	AddNpcMission 	(631)
	AddNpcMission 	(632)
	AddNpcMission 	(633)
	AddNpcMission 	(635)
	AddNpcMission 	(637)
	AddNpcMission	(1015)
	AddNpcMission	(1178)
	AddNpcMission(	1593	)
	AddNpcMission (	1907	)
	AddNpcMission (	1943	)

	


end

------------------------------------------------------------
-- 废矿补给站-----里卡尔
------------------------------------------------------------

function r_talk160()

	Talk( 1, "Kal: Hi! I am Security - Kal! This place is dangerous…" )

	AddNpcMission ( 223 )
	AddNpcMission ( 224 )
	AddNpcMission ( 225 )
	AddNpcMission ( 226 )
	AddNpcMission ( 227 )
	AddNpcMission ( 228 )
	AddNpcMission ( 229 )
	AddNpcMission ( 230 )
	AddNpcMission	(1055)
	AddNpcMission	(1217)
	AddNpcMission(	1432	)
	AddNpcMission (	1908	)
	AddNpcMission (	7899	)
	AddNpcMission (	7900	)
	AddNpcMission (	7901	)
	AddNpcMission (	7902	)



	
end

------------------------------------------------------------
-- 废矿补给站-----里卡尔
------------------------------------------------------------

function r_talk161()

	Talk( 1, "Drunky: Groan…I am so hungry…I lost my lunchbox…Sigh…" )

	AddNpcMission ( 284 )
	AddNpcMission ( 285 )
	AddNpcMission ( 311 )
end

------------------------------------------------------------
-- 废矿补给站-----古灵精
------------------------------------------------------------

function r_talk162()

	Talk( 1, "Greg: Hi, I am Greg. Do you need my help?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(455)
	AddNpcMission 	(461)
	AddNpcMission 	(811)
	AddNpcMission 	(814)
	AddNpcMission	(1013)
	AddNpcMission	(1014)
	AddNpcMission	(1177)

	-----铁人六项
	AddNpcMission ( 6121 )
	AddNpcMission ( 6122 )

	
end

------------------------------------------------------------
-- 温拿补给站-----琳达
------------------------------------------------------------

function r_talk163()

	Talk( 1, "Linda: I don't want to work OT! But my boss force me to OT everyday…I want a pay rise!" )
	AddNpcMission	(1027)
	AddNpcMission	(1190)
----------------1.7
	AddNpcMission (5139 )
	AddNpcMission (5140 )
	AddNpcMission (5141 )
--	AddNpcMission ( 6044 )
--	AddNpcMission ( 6045 )

end

------------------------------------------------------------
-- 温拿补给站-----达达迈亚
------------------------------------------------------------

function r_talk164()

	Talk( 1, "Dada: Hi my friend. How can you come to such a dangerous place without any supplies?" )

end

------------------------------------------------------------
-- 温拿补给站-----古力果
------------------------------------------------------------

function r_talk165()

	Talk( 1, "Gregg: Hi, is there anything you required?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	---------------白羊
	AddNpcMission	(5563)
	AddNpcMission	(5564)
end

------------------------------------------------------------
-- 巴布补给站-----蘑蘑
------------------------------------------------------------

function r_talk166()

	Talk( 1, "Momo: Hi! I am Momo. You can buy some delicious foodstuff from me." )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(433)
	AddNpcMission 	(655)
	AddNpcMission 	(662)
	AddNpcMission 	(667)
	AddNpcMission	(1143)
	AddNpcMission(	1585	)
	AddNpcMission (	1915	)

	---------------白羊
	AddNpcMission	(5577)
	AddNpcMission	(5578)




end

------------------------------------------------------------
-- 沙泉补给站-----维娜
------------------------------------------------------------

function r_talk167()

	Talk( 1, "Wenona: I am getting married soon! I want everybody to share my joy!" )

	AddNpcMission 	(418)
	AddNpcMission 	(641)
	AddNpcMission 	(650)
	AddNpcMission	(1156)

	
end


------------------------------------------------------------
-- 沙泉补给站-----菲菲
------------------------------------------------------------

function r_talk168()

	Talk( 1, "Fey Fey: Hi! My name is Fey Fey." )

	AddNpcMission 	(422)
	AddNpcMission 	(639)
	AddNpcMission 	(648)
	AddNpcMission	(1121)
	AddNpcMission(	1439	)
	AddNpcMission (	1916	)

	---------------二月
	--AddNpcMission (5503	)

---------------白羊
	AddNpcMission	(5569)
	AddNpcMission	(5572)

	
end

------------------------------------------------------------
-- 沙泉补给站-----马洛
------------------------------------------------------------

function r_talk169()

	Talk( 1, "Marcus: I can replenish your item. Need anything?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(403)
	AddNpcMission 	(413)
	AddNpcMission 	(420)
	AddNpcMission 	(643)
	AddNpcMission 	(647)
	AddNpcMission 	(649)
	AddNpcMission 	(652)
	AddNpcMission	(1140)
	AddNpcMission(	1440	)
	AddNpcMission (	1917	)

	----------------1.7
	AddNpcMission (5124 )
	AddNpcMission (5125 )
	AddNpcMission (5126 )
end

------------------------------------------------------------
-- 阿兰比斯补给站-----朱比
------------------------------------------------------------

function r_talk170()

	Talk( 1, "Zurbi: I always hear the summon of the sea. I guess there are many beautiful things to explore in this world." )

	AddNpcMission 	(429)
	AddNpcMission 	(464)
	AddNpcMission 	(466)
	AddNpcMission 	(684)
	AddNpcMission 	(696)
	AddNpcMission 	(697)
	AddNpcMission	(1108)

----------------1.7
	AddNpcMission (5136 )
	AddNpcMission (5137 )
	AddNpcMission (5138 )

end

------------------------------------------------------------
-- 沙泉补给站-----尤塔里尼
------------------------------------------------------------

function r_talk171()

	Talk( 1, "Ulkar: Hey! Do you want some bread?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(423)
	AddNpcMission 	(440)
	AddNpcMission 	(446)
	AddNpcMission 	(462)
	AddNpcMission 	(683)
	AddNpcMission 	(687)
	AddNpcMission 	(692)
	AddNpcMission 	(695)
	AddNpcMission(	1580	)
	AddNpcMission (	1919	)
	AddNpcMission (	1955	)

	




end

------------------------------------------------------------
-- 骷髅营地补给站-----修司
------------------------------------------------------------

function r_talk172()

	Talk( 1, "Xeus: Kill-stealing is despicable!" )

	AddNpcMission 	(802)
	AddNpcMission 	(807)
	AddNpcMission	(1100)
	AddNpcMission(	1587	)
	AddNpcMission (	1921	)
	AddNpcMission (	1922	)
----------------1.7
	AddNpcMission (5127 )
	AddNpcMission (5128 )
	AddNpcMission (5129 )
--	AddNpcMission ( 6046 )
--	AddNpcMission ( 6047 )

	


end

------------------------------------------------------------
-- 骷髅营地补给站-----嘻嘻哈哈
------------------------------------------------------------

function r_talk173()

	Talk( 1, "Hoho: Hi, I am incharge of replenishment. Do you need anything?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(467)
	AddNpcMission 	(803)
	AddNpcMission(	1588	)
	AddNpcMission (	1923	)
	AddNpcMission (	1944	)

	





end

------------------------------------------------------------
-- 冰极补给站-----米开朗费罗
------------------------------------------------------------

function r_talk174()

	Talk( 1, "Mekkilon: My father admired a famous artist and so he named me after him." )

	
	AddNpcMission	(	871	)
	AddNpcMission	(	873	)
	AddNpcMission	(	879	)
	AddNpcMission	(	887	)
	AddNpcMission	(	890	)
	AddNpcMission	(	893	)
	AddNpcMission(	1737	)
	AddNpcMission (	1926	)
	AddNpcMission (	1947	)

	



end

------------------------------------------------------------
-- 冰都补给站-----奈奈
------------------------------------------------------------

function r_talk175()

	Talk( 1, "Nana: I guess I am stupid…being lost just outside of the city. If only I have a automated guide." )

	AddNpcMission 	(405)
	AddNpcMission 	(432)
	AddNpcMission 	(668)
	AddNpcMission 	(672)
	AddNpcMission 	(673)
	AddNpcMission 	(677)
	AddNpcMission	(1087)
	AddNpcMission(	1429	)
	AddNpcMission (	1928	)
---------------白羊
	AddNpcMission	(5589)
	AddNpcMission	(5590)
--	AddNpcMission ( 6050 )
--	AddNpcMission ( 6051 )
	




end

------------------------------------------------------------
-- 冰都补给站-----怪叟爷爷
------------------------------------------------------------

function r_talk176()

	Talk( 1, "Weird Grampa: Although I look strange, I am the healer around here. Any pretty ladies requires a check up?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission 	(430)
	AddNpcMission 	(434)
	AddNpcMission 	(670)
	AddNpcMission 	(671)
	AddNpcMission 	(679)
	AddNpcMission 	(682)
	AddNpcMission	(1070)
	AddNpcMission(	1430	)
	AddNpcMission (	1929	)

	---------------1.7
	AddNpcMission (5148 )
	AddNpcMission (5150 )
	AddNpcMission (5152 )
	AddNpcMission (5158 )
	AddNpcMission (5160 )
	AddNpcMission (5161 )
	AddNpcMission (5162 )
	AddNpcMission (5163 )
	AddNpcMission (5164 )
	AddNpcMission (5165 )
	AddNpcMission (5166 )
	AddNpcMission (5169 )


end


------------------------------------------------------------
-- 骷髅营地补给站-----阿泰
------------------------------------------------------------

function r_talk177()

	Talk( 1, "Tae: I want to organize a music band made up of sea animals. Let the mermaids do the singing and armored crab as the drummers. I will be the lead guitarist! Hehe!" )

	AddNpcMission 	(805)
	AddNpcMission 	(806)
	AddNpcMission(	1589	)
	AddNpcMission (	1934	)
	AddNpcMission (	1949	)

	




	
end

------------------------------------------------------------
-- 德尔维平原-----贝壳商人·拉姆
------------------------------------------------------------

function r_talk221()

	Talk( 1, "Lamon: I love to collect any type of Conch. I have lots of unique Conchs. Do you wish to have a look?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Conch Energy Replenishment", JumpPage, 2 )
	Text( 1, "Nothing...",CloseTalk )


	Talk( 2, "Lamon: Corals can be recharged. In the sea, there are many regions. Wind corals need to go to Wind region, Thunder corals to Thunder region and Fog coral to Fog regions...I remember that there is a Thunder region near Argent at (2500, 2850). You can try it there. Remember to equip back the coral after it is recharged.")


	InitTrade()
	Weapon(	0817	)--Lv 1 Wind Coral
	Weapon(	0867	)--Lv 1 Thunder Coral
	Weapon(	0872	)--Lv 1 Fog Coral
	Weapon(	0635	)--Lv 1 Strike Coral
	Weapon(	0818	)--Lv 2 Wind Coral
	Weapon(	0868	)--Lv 2 Thunder Coral
	Weapon(	0873	)--Lv 2 Fog Coral
	Weapon(	0636	)--Lv 2 Strike Coral
	Weapon(	0819	)--Lv 3 Wind Coral
	Weapon(	0869	)--Lv 3 Thunder Coral
	Weapon(	0874	)--Lv 3 Fog Coral
	Weapon(	0637	)--Lv 3 Strike Coral
	Weapon(	0820	)--Lv 4 Wind Coral
	Weapon(	0870	)--Lv 4 Thunder Coral
	Weapon(	0875	)--Lv 4 Fog Coral
	Weapon(	0638	)--Lv 4 Strike Coral
	Weapon(	0821	)--Lv 5 Wind Coral
	Weapon(	0871	)--Lv 5 Thunder Coral
	Weapon(	0876	)--Lv 5 Fog Coral
	Weapon(	0639	)--Lv 5 Strike Coral

end




------------------------------------------------------------
-- 白银城-----服装店助理◎蓓蓓
------------------------------------------------------------
function r_talk222()


	Talk( 1, "Bebe: Hi, I am the new tailor around here! I sell all type of clothing for Explorer." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	2202	)--Mousey Cap
	Defence(	0380	)--Mousey Costume
	Defence(	0556	)
	Defence(	0732	)
	Defence(	2188	)--Rooroo Cap
	Defence(	0351	)--Rooroo Costume
	Defence(	0527	)
	Defence(	0703	)
	Defence(	2208	)--Racoon Cap
	Defence(	0386	)--Racoon Costume
	Defence(	0562	)
	Defence(	0738	)
	Defence(	2189	)--Playful Racoon Cap
	Defence(	0352	)--Playful Racoon Costume
	Defence(	0528	)
	Defence(	0704	)
	Defence(	2187	)--Crabby Cap
	Defence(	0350	)--Crabby Costume
	Defence(	0526	)
	Defence(	0702	)
	Defence(	2191	)--Big Crab Cap
	Defence(	0354	)--Big Crab Costume
	Defence(	0530	)
	Defence(	0706	)
	Defence(	2190	)--Duckling Cap
	Defence(	0353	)--Duckling Costume
	Defence(	0529	)
	Defence(	0705	)
	Defence(	2193	)--Ducky Cap
	Defence(	0356	)--Ducky Costume
	Defence(	0532	)
	Defence(	0708	)
	Defence(	2192	)--Lobster Cap
	Defence(	0355	)--Lobster Costume
	Defence(	0531	)
	Defence(	0707	)
	Defence(	2194	)--Prawn Cap
	Defence(	0357	)--Prawn Costume
	Defence(	0533	)
	Defence(	0709	)
	Defence(	0335	)
	Defence(	0511	)
	Defence(	0687	)
	Defence(	0336	)
	Defence(	0512	)
	Defence(	0688	)
	Defence(	0338	)
	Defence(	0514	)
	Defence(	0690	)
	Defence(	0337	)
	Defence(	0513	)
	Defence(	0689	)
	Defence(	0340	)
	Defence(	0516	)
	Defence(	0692	)
	Defence(	0339	)
	Defence(	0515	)
	Defence(	0691	)
	Defence(	0341	)
	Defence(	0517	)
	Defence(	0693	)
	Defence(	0342	)
	Defence(	0518	)
	Defence(	0694	)
	Defence(	0345	)
	Defence(	0521	)
	Defence(	0697	)
	Defence(	0343	)
	Defence(	0519	)
	Defence(	0695	)
----------------1.7
	AddNpcMission (5118 )
	AddNpcMission (5119 )
	AddNpcMission (5120 )

end
------------------------------------------------------------
-- 秋之岛-----莱娜
------------------------------------------------------------
function r_talk223()


	Talk( 1, "Lanna: Hi! I am the Teleporter of Autumn Island. How can I help you?" )
	Text( 1, "Return to Icicle City", GoTo, 1318, 510, "darkblue" )

end


------------------------------------------------------------
-- 冰雪岛-----海盗杰里米
------------------------------------------------------------
function r_talk224()


	Talk( 1, "Pirate Jeremy: \"I'm a pirate! Lala! I'm a happy go lucky pirate! Oh yeah!\"" )

	AddNpcMission ( 306 )
	AddNpcMission ( 307 )
	AddNpcMission ( 308 )

end

------------------------------------------------------------
-- 鸣沙岛-----杰克船长
------------------------------------------------------------
function r_talk225()


	Talk( 1, "Captain Jack: Hoho! I am rich and handsome, the famous Jack that everybody idolize! Hoho!" )

	AddNpcMission ( 309 )
	AddNpcMission ( 310 )
	AddNpcMission ( 312 )
	AddNpcMission ( 313 )
	AddNpcMission ( 314 )
	AddNpcMission ( 315 )
	AddNpcMission ( 316 )
	AddNpcMission ( 328 )
	AddNpcMission ( 329 )
	AddNpcMission ( 333 )
	AddNpcMission ( 336 )
	AddNpcMission ( 483 )
	AddNpcMission ( 484 )
	AddNpcMission (	7905)
	AddNpcMission (	7906)
	AddNpcMission (	7907)
	AddNpcMission (	7908)
end


------------------------------------------------------------
-- 冰狼堡下城-----鲁格兰
------------------------------------------------------------
function r_talk226()


	Talk( 1, "Luke: My brother loves to create trouble for me…always expecting me to clear the mess. Sigh…" )
	
	Talk( 2, "Luke: My brother loves to create trouble for me…always expecting me to clear the mess. Sigh…")
	Text( 2, "I lost the ring you gave me", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 4144, 1 , 4)
	TriggerAction( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Luke: You lost such an expensive ring? Pay me 50000G and I will remake for you.")
	Text( 3, "Okay, heres 50000G.", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "This is extortion! I do not have so much", CloseTalk )

	Talk( 4, "Luke: Keep it well, this ring is for you")

	Talk( 5, "Luke: You don't seems to have enough gold...Its 50000G...")

	InitTrigger()
	-----------检测任务拿了鱼鳞戒指,但是丢了不见了
	TriggerCondition( 1, HasRecord, 260 )
	TriggerCondition( 1, NoRecord, 262 )
	TriggerCondition( 1, NoItem, 4144, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	
	Start( GetMultiTrigger(), 1 )

	AddNpcMission ( 296 )
	AddNpcMission ( 297 )
	AddNpcMission ( 298 )
	AddNpcMission ( 302 )
	AddNpcMission ( 303 )

end


------------------------------------------------------------
-- 骷髅营地补给站-----克拉拉大师
------------------------------------------------------------
function r_talk227()

	Talk( 1, "Master Kerra: Everyone thought that I have super powers. Actually, its because they do not have a strong faith." )

	AddNpcMission ( 299 )
	AddNpcMission ( 300 )
	AddNpcMission ( 469 )
	AddNpcMission ( 391 )
	----------------1.7
	AddNpcMission (5121 )
	AddNpcMission (5122 )
	AddNpcMission (5123 )
end

------------------------------------------------------------
-- 卡尔加德补给站-----萨南·格力德
------------------------------------------------------------
function r_talk228()

	Talk( 1, "Simon Gilter: Sigh…When can I become an officier in the Navy? Am I not charming?" )
	
	AddNpcMission ( 837 )
	AddNpcMission ( 838 )
	AddNpcMission ( 839 )

end

------------------------------------------------------------
-- 卡尔加德补给站-----海蓝·微风
------------------------------------------------------------
function r_talk229()

	Talk( 1, "Azur Breeze: Please remember to keep any nice looking branch for me." )

	AddNpcMission ( 840 )
---------------白羊
	AddNpcMission	(5591)
	AddNpcMission	(5592)
--	AddNpcMission ( 6048 )
--	AddNpcMission ( 6049 )

end

------------------------------------------------------------
-- 卡尔加德补给站-----賽·魔力
------------------------------------------------------------
function r_talk230()

	Talk( 1, "Sa Mori: Hohoho! There isn't any lady as beautiful and gentle as me in this world." )

	AddNpcMission ( 844 )
	AddNpcMission ( 841 )
	AddNpcMission ( 842 )
	AddNpcMission ( 843 )

end

------------------------------------------------------------
-- 卡尔加德补给站-----卡休·碎石
------------------------------------------------------------
function r_talk231()

	Talk( 1, "Carin Livingstone: I hate that fat old granny over there. Still dare to claim that she is young and beautiful. Pukes!" )

	AddNpcMission ( 845 )
	AddNpcMission ( 846 )
	AddNpcMission ( 847 )
	AddNpcMission ( 848 )

end

------------------------------------------------------------
-- 冰极补给站-----塞维·朱尔
------------------------------------------------------------
function r_talk232()

	Talk( 1, "Sasha: The wind here is very big and my delicate skin often get expose to the sand particle in the wind. I use seaweed and mud found in Icespire to keep them in good condition. Do you want to try too." )
	
	AddNpcMission ( 877 )
	AddNpcMission ( 883 )
	AddNpcMission ( 884 )


end

------------------------------------------------------------
-- 冰极补给站-----凯文·狼
------------------------------------------------------------
function r_talk233()

	Talk( 1, "Kevin Wolf: I am a wolf wandering in the lonely desert…." )

	AddNpcMission ( 881 )
end

------------------------------------------------------------
-- 白银城-----潮流发型师·卡特
------------------------------------------------------------
function r_talk234()

	Talk( 1, "Cartel: Hi! Want a change of hairstyle? Be hip and keep up with the trend!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "I want to change my hairstyle", JumpPage, 2)

	
	InitTrade()
	Other(	1807	)--Hairstyling Voucher
	Other(	1804	)--Scissor
	Other(	1805	)--Comb
	Other(	1806	)--Hair Gel
	Other(	1808	)--Lance Hairstyle Book
	Other(	1809	)--Carsise Hairstyle Book
	Other(	1810	)--Phyllis Hairstyle Book
	Other(	1811	)--Ami Hairstyle Book
	Other(	0931	)--Lance Trendy Hairstyle Book
	Other(	0932	)--Carsise Trendy Hairstyle Book
	Other(	0933	)--Phyllis Trendy Hairstyle Book
	Other(	0934	)--Ami Trendy Hairstyle Book
	Other(	1797	)--Red Colorant
	Other(	1798	)--Orange Colorant
	Other(	1799	)--Yellow Colorant
	Other(	1800	)--Green Colorant
	Other(	1801	)--Cyan Colorant
	Other(	1802	)--Blue Colorant
	Other(	1803	)--Purple Colorant
	Other(	4607	)--Black Colorant
	Other(	4609	)--Brown Colorant
	Other(	4610	)--Decolorant

	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "Cartel: Acutally...I have not style any hair for a long time. But if you would like, I can change your hairdo for you. Just bring me a Hairstyling Voucher.")
	Text( 2, "Yes, I am sure", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Forget it", CloseTalk )

	Talk( 3, "Cartel: You do not seem to have any Hairstyling Voucher. I cannot style your hair yet.")


end
----- Plastic Surgeon Test----
function r_talkpls()

	Talk( 1, "Plastic Surgeon: This is a test npc?" )
	Text( 1, " test pk state on ", JumpPage, 2)
	Text( 1, " test pk state off ", JumpPage, 3)
	
	InitTrigger()
	TriggerAction( 1, SetPkState, 1 )
	TriggerAction(1,SystemNotice, "Testing Pkstate" )
--	TriggerAction( 1, OpenChaSel )
--	TriggerAction( 1, OpenTiger )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, " Start Test " )
	Text( 2, " Engage ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerAction( 1, SetPkState, 0 )
	TriggerAction(1,SystemNotice, "Testing Pkstate " )
--	TriggerAction( 1, OpenChaSel )
--	TriggerAction( 1, OpenTiger )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, " Start Test " )
	Text( 3, " Dis-Engage ", MultiTrigger, GetMultiTrigger(), 1)
	

end
------------------------------------------------------------
-- 废矿补给站-----饰品商人·布卡
------------------------------------------------------------
function r_talk235()

	Talk( 1, "Pucan: I have all sorts of valuable rings and necklaces. See if there is anything you like. My prices are the cheapest around here." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4611	)
	Defence(	4612	)
	Defence(	4613	)
	Defence(	4614	)
	Defence(	4615	)
	Defence(	4616	)
	Defence(	4617	)
	Defence(	4618	)
	Defence(	4619	)
	Defence(	4620	)

end

------------------------------------------------------------
-- 赖安森林补给站-----饰品商人·里克
------------------------------------------------------------
function r_talk236()

	Talk( 1, "Rikka: I have all sorts of valuable rings and necklaces. See if there is anything you like. My prices are the cheapest around here." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4626	)
	Defence(	4627	)
	Defence(	4628	)
	Defence(	4629	)
	Defence(	4630	)
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)
end

------------------------------------------------------------
-- 瓦尔诺补给站-----饰品商人·费拉里
------------------------------------------------------------
function r_talk237()

	Talk( 1, "Ferrari: I have here the best rings and necklace you can find. Have a look around and see if there is anything you like." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)
	Defence(	4636	)
	Defence(	4637	)
	Defence(	4638	)
	Defence(	4639	)
	Defence(	4640	)

end

------------------------------------------------------------
-- 雷霆堡-----饰品商人·维克多
------------------------------------------------------------
function r_talk238()

	Talk( 1, "Wetigo: I have all sorts of valuable rings and necklaces. See if there is anything you like. My prices are the cheapest around here." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4641	)
	Defence(	4642	)
	Defence(	4643	)
	Defence(	4644	)
	Defence(	4645	)
	Defence(	4646	)
	Defence(	4647	)
	Defence(	4648	)
	Defence(	4649	)
	Defence(	4650	)
	Defence(	4706	)
	Defence(	4707	)
	Defence(	4708	)
	Defence(	4709	)
	Defence(	4711	)
	Defence(	4712	)
	Defence(	4713	)
	Defence(	4714	)
	Defence(	4715	)

end

------------------------------------------------------------
-- 卡尔加德补给站-----饰品商人·艾尔
------------------------------------------------------------
function r_talk239()

	Talk( 1, "Aii: I have all sort of valuable necklace and ring. Have a look to see if anything suits you." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4651	)
	Defence(	4652	)
	Defence(	4653	)
	Defence(	4654	)
	Defence(	4655	)
	Defence(	4656	)
	Defence(	4657	)
	Defence(	4658	)
	Defence(	4659	)
	Defence(	4660	)

end

------------------------------------------------------------
-- 巴布补给站-----饰品商人·艾伦
------------------------------------------------------------
function r_talk240()

	Talk( 1, "Accessory - Dunman: I only sell valuable rings and necklace of the best quality. Have a look around. My prices are reasonable." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4666	)
	Defence(	4667	)
	Defence(	4668	)
	Defence(	4669	)
	Defence(	4671	)
	Defence(	4672	)
	Defence(	4673	)
	Defence(	4674	)
	Defence(	4675	)
	Defence(	4676	)
	Defence(	4677	)
	Defence(	4678	)
	Defence(	4679	)
	Defence(	4681	)
	Defence(	4682	)
	Defence(	4683	)
	Defence(	4684	)
	Defence(	4685	)

end

------------------------------------------------------------
-- 冰极补给站-----饰品商人·瑞恩
------------------------------------------------------------
function r_talk241()

	Talk( 1, "Accessory - Dunman: I only sell valuable rings and necklace of the best quality. Have a look around. My prices are reasonable." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	4686	)
	Defence(	4687	)
	Defence(	4688	)
	Defence(	4689	)
	Defence(	4691	)
	Defence(	4692	)
	Defence(	4693	)
	Defence(	4694	)
	Defence(	4695	)
	Defence(	4696	)
	Defence(	4697	)
	Defence(	4698	)
	Defence(	4699	)
	Defence(	4701	)
	Defence(	4702	)
	Defence(	4703	)
	Defence(	4704	)
	Defence(	4705	)

end


------------------------------------------------------------
-- 白银城-----清洗机
------------------------------------------------------------
function r_talk252()
	
	InitFuncList()
	AddFuncList( GiveItem,	0817	,	1	,	4)
	AddFuncList( GiveItem,	0818	,	1	,	4)
	AddFuncList( GiveItem,	0819	,	1	,	4)
	AddFuncList( GiveItem,	0867	,	1	,	4)
	AddFuncList( GiveItem,	0868	,	1	,	4)
	AddFuncList( GiveItem,	0869	,	1	,	4)
	AddFuncList( GiveItem,	0872	,	1	,	4)
	AddFuncList( GiveItem,	0873	,	1	,	4)
	AddFuncList( GiveItem,	0874	,	1	,	4)
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "This is a very old Cleaner which can cleanse any dirt for you. Do you need to clean anything at 200G each try?" )
	Text( 1, "Cleanse Mud", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Cleanse Christmas Box", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "Woah! What a dirty box! You need to pay 10000G to clean such a dirty box." )
	Text( 3, "Comfirm to clean", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "What a beautiful chest! Open it for some surprises" )
	Talk( 2, "Failed to clean the item. Insufficient gold or does not possess the required item" )
end


------------------------------------------------------------
-- 考古队长-----考古学家
------------------------------------------------------------
function r_talk253()
	
	Talk( 1, "Researcher: Hi! I belong to a organization of professional researchers. I have studied a lot on ancient curse and spell. How can I help you?" )
	Text( 1, "Regarding the Fire Seal", JumpPage, 3)

	Talk( 3, "Researcher: Since you found me, I will not reject you. Those seals are of ancient bearing. Bring me the required runestones and I will uncurse the item for you." )
	Text( 3, "Robe of the Arcane", JumpPage, 6)
	Text( 3, "Staff of Mirage", JumpPage, 7)
	Text( 3, "Staff of Evanescence", JumpPage, 8)
	Text( 3, "Cloak of Evanescence", JumpPage, 9)
	Text( 3, "Coat of Evanescence", JumpPage, 10)
	Text( 3, "Tattoo of Evanescence", JumpPage, 11)
	Text( 3, "Armor of Evanescence", JumpPage, 12)
	Text( 3, "Next Page", JumpPage, 4)

	Talk( 4, "Researcher: Since you found me, I will not reject you. Those seals are of ancient bearing. Bring me the required runestones and I will uncurse the item for you." )
	Text( 4, "Bellow of Evanescence", JumpPage, 13)
	Text( 4, "Roar of Evanescence", JumpPage, 14)
	Text( 4, "Dance of Evanescence", JumpPage, 15)
	Text( 4, "Tooth of Evanescence", JumpPage, 16)
	Text( 4, "Robe of Malediction", JumpPage, 17)
	Text( 4, "Gauntlets of Evanescence", JumpPage, 18)
	Text( 4, "Greaves of Evanescence", JumpPage, 19)
	Text( 4, "Next Page", JumpPage, 5)

	Talk( 5, "Researcher: Since you found me, I will not reject you. Those seals are of ancient bearing. Bring me the required runestones and I will uncurse the item for you." )
	Text( 5, "Gloves of Evanescence", JumpPage, 20)
	Text( 5, "Shoes of Evanescence", JumpPage, 21)
	Text( 5, "Gloves of Malediction", JumpPage, 22)
	Text( 5, "Boots of Malediction", JumpPage, 23)
	Text( 5, "Gloves of the Arcane", JumpPage, 24)
	Text( 5, "Boots of the of the Arcane", JumpPage, 25)
	Text( 5, "Heavy Gloves of Evanescence", JumpPage, 26)
	Text( 5, "Boots of Evanescence", JumpPage, 27)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1912, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1912, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 791, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Researcher: To unseal the curse on Robe of the Arcane, you must bring me: Fire Sealed Robe of the Arcane, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 6, "Unseal curse on Robe of the Arcane", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1915, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1915, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 794, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Researcher: To unseal the curse on Staff of Mirage, you must bring me: Fire Sealed Staff of Mirage, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 7, "Unseal curse on Staff of Mirage", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1908, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1908, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 787, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Researcher: To unseal the curse on Staff of Evanescence, you must bring me: Fire Sealed Staff of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 8, "Unseal curse on Staff of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1926, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1926, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 805, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Researcher: To unseal the curse on Cloak of Evanescence, you must bring me: Fire Sealed Cloak of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 9, "Unseal curse on Cloak of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1900, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1900, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 779, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Researcher: To unseal the curse on Coat of Evanescence, you must bring me: Fire Sealed Coat of Evanescence, Fel Runestonex5, Ja Runestonex10, Tef Runestonex10 and also 600000G as fee." )
	Text( 10, "Unseal curse on Coat of Evanescence", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1886, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1886, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 765, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Researcher: To unseal the curse on Tattoo of Evanescenc, you must bring me: Fire Sealed Armor of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 11, "Unseal curse on Tattoo of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1889, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1889, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 768, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Researcher: To unseal the curse on Armor of Evanescenc, you must bring me: Fire Sealed Armor of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 12, "Unseal curse on Armor of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1904, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1904, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 783, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Researcher: To unseal the curse on Bellow of Evanescence, you must bring me: Fire Sealed Bellow of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 13, "Unseal curse on Bellow of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1893, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1893, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 772, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Researcher: To unseal the curse on Roar of Evanescence, you must bring me: Fire Sealed Roar of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 14, "Unseal curse on Roar of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1896, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1896, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 775, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Researcher: To unseal the curse on Dance of Evanescence, you must bring me: Fire Sealed Dance of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 15, "Unseal curse on Dance of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1922, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1922, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 801, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Researcher: To unseal the curse on Tooth of Evanescence, you must bring me: Fire Sealed Tooth of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 16, "Unseal curse on Tooth of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1918, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1918, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 797, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Researcher: To unseal the curse on Robe of Malediction, you must bring me: Fire Sealed Robe of Malediction, Fel Runestonex5, Ja Runestonex10, Tef Runestonex10 and also 600000G as fee." )
	Text( 17, "Unseal curse on Robe of Malediction", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1988, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1988, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0807, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 18, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Boots of Malediction, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 18, "Unseal curse on Gauntlets of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1989, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1989, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0808, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 19, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Shoes of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 19, "Unseal curse on Greaves of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1990, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1990, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0809, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 20, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Greaves of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 20, "Unseal curse on Gloves of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1991, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1991, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0810, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 21, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Boots of Malediction, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 21, "Unseal curse on Shoes of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1992, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1992, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0811, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 22, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Heavy Gloves of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 22, "Unseal curse on Gloves of Malediction", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 1994, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1994, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0813, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 23, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Gloves of the Arcane, Fel Runestone x5, Ja Runestonex10, Tef Runestone x10 and also 600000G as fee." )
	Text( 23, "Unseal curse on Boots of Malediction", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1993, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1993, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0812, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 24, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Boots of the of the Arcane, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 24, "Unseal curse on Gloves of the Arcane", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1995, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1995, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0814, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 25, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Heavy Gloves of Evanescence, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 25, "Unseal curse on Boots of the of the Arcane", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1996, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1996, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0815, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 26, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Gloves of Malediction, Fel Runestone x5, Ja Runestone x10, Tef Runestone x10 and also 600000G as fee." )
	Text( 26, "Unseal curse on Heavy Gloves of Evanescence", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1997, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1997, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0877, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 27, "Researcher: To unseal the curse on Gauntlets of Evanescence, you must bring me: Fire Sealed Gloves of the Arcane, Fel Runestone x5, Ja Runestonex10, Tef Runestone x10 and also 600000G as fee." )
	Text( 27, "Unseal curse on Boots of Evanescence", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 30, "Researcher: Sorry, you did not give me the correct items. I cannot break the seal for you without them." )


end

------------------------------------------------------------
-- 废灵之都-----考古学家
------------------------------------------------------------
function r_talk254()
	
	Talk( 1, "Researcher: Hi, I belonged to an organization of professional researchers. I am responsible for the research of Forsaken City. Is there anything I can help you?" )
	Text( 1, "Regarding Forsaken City", JumpPage, 2)

	Talk( 2, "Researcher: I have been researching on Forsaken City for a long time. I can break the seal with the use of some powerful runestones." )
	Text( 2, "Unseal curse", JumpPage, 3)
	
	Talk( 3, "Researcher: There are many hidden Undead Sealed equipments in Forsaken City. After many years of research. I am able to break the curse on these equipments. Do you wish to uncurse anything?" )
	Text( 3, "Tooth of Specter", JumpPage, 6)
	Text( 3, "Mantle of the Naga", JumpPage, 7)
	Text( 3, "Staff of the Avenger", JumpPage, 8)
	Text( 3, "Sword of Grief", JumpPage, 9)
	Text( 3, "Robe of Death", JumpPage, 10)
	Text( 3, "Touch of Death", JumpPage, 11)
	Text( 3, "Robe of the Venom Witch", JumpPage, 12)
	Text( 3, "Armor of Revenant", JumpPage, 13)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1920, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1920, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 799, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Researcher: To unseal the curse on Tooth of Specter, you must bring me:  Undead Sealed Tooth of Specter, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 6, "Unseal curse on Tooth of Specter", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1924, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1924, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 803, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Researcher: To unseal the curse on Mantle of the Naga, you must bring me: Undead Sealed Mantle of the Naga, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 7, "Unseal curse on Mantle of the Naga", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1906, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1906, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 785, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Researcher: To unseal the curse on Staff of the Avenger, you must bring me: Undead Sealed Staff of the Avenger, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 8, "Unseal curse on Staff of the Avenger", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1891, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1891, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 770, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Researcher: To unseal the curse on Sword of Grief, you must bring me: Undead Sealed Sword of Grief, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 9, "Unseal curse on Sword of Grief", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1898, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1898, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 777, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Researcher: To unseal the curse on Robe of Death, you must bring me: Undead Sealed Robe of Death, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 10, "Unseal curse on Robe of Death", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1902, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1902, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 781, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Researcher: To unseal the curse on Touch of Death, you must bring me: Undead Sealed Touch of Death, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee" )
	Text( 11, "Unseal curse on Touch of Death", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1910, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1910, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 789, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Researcher: To unseal the curse on Robe of the Venom Witch, you must bring me: Undead Sealed Robe of the Venom Witch, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 12, "Unseal curse on Robe of the Venom Witch", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1884, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1884, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 763, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Researcher: To unseal the curse on Armor of Revenant, you must bring me: Undead Sealed Armor of Revenant, Yal Runestone x5, El Runestone x5, Nal Runestone x10 and also 200000G as fee." )
	Text( 13, "Unseal curse on Armor of Revenant", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Researcher: Sorry, you did not give me the correct items. I cannot break the seal for you without them." )

end

------------------------------------------------------------
-- 魔方世界-----考古学家
------------------------------------------------------------
function r_talk255()
	
	Talk( 1, "Researcher: Hi! I belong to an organization of professional researcher. I am responsible for the research of Demonic World. How may I help you?" )
	Text( 1, "Regarding Demonic World", JumpPage, 2)

	Talk( 2, "Researcher: I have done research on Demonic World for a long time. If you need to unseal the curse on the items, bring me some runestones." )
	Text( 2, "Unseal curse", JumpPage, 3)
	
	Talk( 3, "Researcher: In the Demonic World, there are many items being Ice sealed. After many years of research, I am able to break these seals by using some powerful runestones. Do you need to unseal anything?" )
	Text( 3, "Staff of Enigma", JumpPage, 6)
	Text( 3, "Mantle of the Sphinx", JumpPage, 7)
	Text( 3, "Kris of the Sphinx", JumpPage, 8)
	Text( 3, "Judgment of Enigma", JumpPage, 9)
	Text( 3, "Rifle of Enigma", JumpPage, 10)
	Text( 3, "Mantle of Enigma", JumpPage, 11)
	Text( 3, "Robe of Enigma", JumpPage, 12)
	Text( 3, "Next Page", JumpPage, 4)

	Talk( 4, "Researcher: In the Demonic World, there are many items being Ice sealed. After many years of research, I am able to break these seals by using some powerful runestones. Do you need to unseal anything?" )
	Text( 4, "Blade of Enigma", JumpPage, 13)
	Text( 4, "Tattoo of Enigma", JumpPage, 14)
	Text( 4, "Armor of Enigma", JumpPage, 15)
	Text( 4, "Robe of the Sphinx", JumpPage, 16)
	Text( 4, "Staff of the Sphinx", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Researcher: To unseal the curse on Staff of Enigma, you must bring me: Ice Sealed Staff of Enigma, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 6, "Unseal curse on Staff of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Researcher: To unseal the curse on Mantle of the Sphinx, you must bring me: Ice Sealed Mantle of the Sphinx, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 7, "Unseal curse on Mantle of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Researcher: To unseal the curse on Kris of the Sphinx, you must bring me: Ice Sealed Kris of the Sphinx, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 8, "Unseal curse on Kris of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Researcher: To unseal the curse on Judgment of Enigma, you must bring me: Ice Sealed Judgment of Enigma, Kal Runestonex5, Fa Runestonex10, Ter Runestonex20 and also 800000G as fee." )
	Text( 9, "Unseal curse on Judgment of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Researcher: To unseal the curse on Rifle of Enigma, you must bring me: Ice Sealed Rifle of Enigma, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 10, "Unseal curse on Rifle of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Researcher: To unseal the curse on Mantle of Enigma, you must bring me: Ice Sealed Mantle of Enigma, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 11, "Unseal curse on Mantle of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Researcher: To unseal the curse on Robe of Enigma, you must bring me: Ice Sealed Robe of Enigma, Kal Runestonex5, Fa Runestonex10, Ter Runestonex20 and also 800000G as fee." )
	Text( 12, "Unseal curse on Robe of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Researcher: To unseal the curse on Blade of Enigma, you must bring me: Ice Sealed Blade of Enigma, Kal Runestonex5, Fa Runestonex10, Ter Runestonex20 and also 800000G as fee." )
	Text( 13, "Unseal curse on Blade of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Researcher: To unseal the curse on Tattoo of Enigma, you must bring me: Ice Sealed Tattoo of Enigma, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 14, "Unseal curse on Tattoo of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Researcher: To unseal the curse on Armor of Enigma, you must bring me: Ice Sealed Armor of Enigma, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 15, "Unseal curse on Armor of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Researcher: To unseal the curse on Robe of the Sphinx, you must bring me: Ice Sealed Robe of the Sphinx, Kal Runestonex5, Fa Runestonex10, Ter Runestonex20 and also 800000G as fee." )
	Text( 16, "Unseal curse on Robe of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Researcher: To unseal the curse on Staff of the Sphinx, you must bring me: Ice Sealed Staff of the Sphinx, Kal Runestone x5, Fa Runestone x10, Ter Runestone x20 and also 800000G as fee." )
	Text( 17, "Unseal curse on Staff of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Researcher: Sorry, you did not give me the correct items. I cannot break the seal for you without them." )

end


------------------------------------------------------------
-- 阴暗沼泽-----考古学家队长
------------------------------------------------------------
function r_talk256()
	
	Talk( 1, "Researcher: Hi, I belonged to an organization of profession researchers. I am responsible for the research of Forsaken City. Is there anything I can help you?" )
	Text( 1, "Regarding Dark Swamp", JumpPage, 2)

	Talk( 2, "Researcher: I have done a research on Dark Swamp for a long time. To unseal the curse on those items, you must bring me some runestones. Also, if you found some Murky Oil, I can make some Fire Seed for you." )
	Text( 2, "Unseal curse", JumpPage, 3)
	Text( 2, "Regarding Fire Seed", JumpPage, 5)
	
	Talk( 3, "Researcher: In the Dark Swamp, there are many items being Earth sealed. After many years of research, I am able to break these seals by using some powerful runestones. Do you need to unseal anything?" )
	Text( 3, "Coat of Invocation", JumpPage, 6)
	Text( 3, "Tattoo of the Cursed Warrior", JumpPage, 7)
	Text( 3, "Mantle of the Cursed Flame", JumpPage, 8)
	Text( 3, "Staff of Incantation", JumpPage, 9)
	Text( 3, "Staff of Abraxas", JumpPage, 10)
	Text( 3, "Robe of Abraxas", JumpPage, 11)
	Text( 3, "Blade of Incantation", JumpPage, 12)
	Text( 3, "Next Page", JumpPage, 4)

	Talk( 4, "Researcher: In the Dark Swamp, there are many items being Earth sealed. After many years of research, I am able to break these seals by using some powerful runestones. Do you need to unseal anything?" )
	Text( 4, "Corset of Incantation", JumpPage, 13)
	Text( 4, "Greatsword of Incantation", JumpPage, 14)
	Text( 4, "Tooth of the Cursed", JumpPage, 15)
	Text( 4, "Platemail of the Cursed Soul", JumpPage, 16)
	Text( 4, "Kiss of the Cursed", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3930, 5 )
	TriggerCondition( 1, HasItem, 3931, 1 )
	TriggerCondition( 1, HasItem, 3932, 5 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3930, 5 )
	TriggerAction( 1, TakeItem, 3931, 1 )
	TriggerAction( 1, TakeItem, 3932, 5 )
	TriggerAction( 1, GiveItem, 3934, 1, 4 )
	TriggerFailure( 1, JumpPage, 31 )
	Talk( 5, "Researcher: To make a Fire Seed, you will need: Murky Oil x5, Fire Starter x1, Cloth Strip x5 and 200G." )
	Text( 5, "Make Fire Seed", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1911, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1911, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 790, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Researcher: To unseal the curse on Coat of Invocation, you must bring me: Earth Sealed Coat of Invocation, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 6, "Unseal curse on Coat of Invocation", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1885, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1885, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 764, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Researcher: To unseal the curse on Tattoo of the Cursed Warrior, you must bring me: Earth Sealed Tattoo of the Cursed Warrior, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 7, "Unseal curse on Tattoo of the Cursed Warrior", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1925, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1925, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 804, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Researcher: To unseal the curse on Mantle of the Cursed Flame, you must bring me: Earth Sealed Mantle of the Cursed Flame, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 8, "Unseal curse on Mantle of the Cursed Flame", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1907, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1907, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 786, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Researcher: To unseal the curse on Staff of Incantation, you must bring me: Earth Sealed Staff of Incantation, Lum Runestonex5, Sol Runestonex10, Cam Runestonex5 and also 400000G as fee." )
	Text( 9, "Unseal curse on Staff of Incantation", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1914, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1914, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 793, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Researcher: To unseal the curse on Staff of Incantation, you must bring me: Earth Sealed Staff of Incantation, Lum Runestonex5, Sol Runestonex10, Cam Runestonex5 and also 400000G as fee." )
	Text( 10, "Unseal curse on Staff of Abraxas", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1917, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1917, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 796, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Researcher: To unseal the curse on Robe of Abraxas, you must bring me: Earth Sealed Robe of Abraxas, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 11, "Unseal curse on Robe of Abraxas", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1895, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1895, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 774, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Researcher: To unseal the curse on Blade of Incantation, you must bring me: Earth Sealed Blade of Incantation, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 12, "Unseal curse on Blade of Incantation", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1899, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1899, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 778, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Researcher: To unseal the curse on Corset of Incantation, you must bring me: Earth Sealed Corset of Incantation, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 13, "Unseal curse on Corset of Incantation", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1892, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1892, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 771, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Researcher: To unseal the curse on Greatsword of Incantation, you must bring me: Earth Sealed Greatsword of Incantation, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 14, "Unseal curse on Greatsword of Incantation", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1921, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1921, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 800, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Researcher: To unseal the curse on Tooth of the Cursed, you must bring me: Earth Sealed Tooth of the Cursed, Lum Runestonex5, Sol Runestonex10, Cam Runestonex5 and also 400000G as fee." )
	Text( 15, "Unseal curse on Tooth of the Cursed", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1888, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1888, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 767, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Researcher: To unseal the curse on Platemail of the Cursed Soul, you must bring me: Earth Sealed Platemail of the Cursed Soul, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 16, "Unseal curse on Platemail of the Cursed Soul", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1903, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1903, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 782, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Researcher: To unseal the curse on Kiss of the Cursed, you must bring me: Earth Sealed Kiss of the Cursed, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 17, "Unseal curse on Kiss of the Cursed", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Researcher: Sorry, you did not give me the correct items. I cannot break the seal for you without them." )

	Talk( 31, "Researcher: Sorry. You need to pass me Murky Oil x5, Fire Starter x1, Cloth Strip x5 and 200G to make a Fire Seed." )


end


------------------------------------------------------------
-- 白银城-----槟果
------------------------------------------------------------
function r_talk242()
	Talk( 1, "Hello. I can exchange your gem voucher into gems. Just show me your voucher!")
	Text( 1, "Unique Gem Voucher", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 885, 1 )
	TriggerAction( 1, TakeItem, 885, 1 )
	TriggerAction( 1, GiveItem, 3877, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Refining Gem to Voucher", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3877, 1 )
	TriggerAction( 1, TakeItem, 3877, 1 )
	TriggerAction( 1, GiveItem, 885, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Lv1 Refining Gem Voucher", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3878, 1 )
	TriggerAction( 1, TakeItem, 3878, 1 )
	TriggerAction( 1, GiveItem, 885, 1, 102 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Lv2 Refining Gem Voucher", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Nothing...", CloseTalk)

	Talk( 2, "Choose the desired Unique Gem you want to exchange.")
	InitTrigger()
	TriggerCondition( 1, HasItem, 333, 1 )
	TriggerAction( 1, TakeItem, 333, 1 )
	TriggerAction( 1, GiveItem, 863, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Gem Of Rage", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 333, 1 )
	TriggerAction( 1, TakeItem, 333, 1 )
	TriggerAction( 1, GiveItem, 862, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Gem Of Colossus", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 333, 1 )
	TriggerAction( 1, TakeItem, 333, 1 )
	TriggerAction( 1, GiveItem, 1012, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Gem Of Soul", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 333, 1 )
	TriggerAction( 1, TakeItem, 333, 1 )
	TriggerAction( 1, GiveItem, 860, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Gem Of The Wind", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 333, 1 )
	TriggerAction( 1, TakeItem, 333, 1 )
	TriggerAction( 1, GiveItem, 861, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Gem Of Striking", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "None of them", JumpPage, 1)

	Talk( 4, "Choose the desired Azrael Gem you want to exchange.")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3765, 1 )
	TriggerAction( 1, TakeItem, 3765, 1 )
	TriggerAction( 1, GiveItem, 5845, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 4, "Azrael's Glare", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3766, 1 )
	TriggerAction( 1, TakeItem, 3766, 1 )
	TriggerAction( 1, GiveItem, 5846, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 4, "Undead Azrael", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3767, 1 )
	TriggerAction( 1, TakeItem, 3767, 1 )
	TriggerAction( 1, GiveItem, 5847, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 4, "Azrael's Light", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3768, 1 )
	TriggerAction( 1, TakeItem, 3768, 1 )
	TriggerAction( 1, GiveItem, 5848, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 4, "Azrael's Aggregation", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3769, 1 )
	TriggerAction( 1, TakeItem, 3769, 1 )
	TriggerAction( 1, GiveItem, 5849, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 4, "Azrael's Dance", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "None of Them", JumpPage, 1)
	
	
	Talk( 5, "Choose the desired Great Gem you want to exchange.")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3770, 1 )
	TriggerAction( 1, TakeItem, 3770, 1 )
	TriggerAction( 1, GiveItem, 3721, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 5, "Great Gem of Rage", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3771, 1 )
	TriggerAction( 1, TakeItem, 3771, 1 )
	TriggerAction( 1, GiveItem, 3722, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 5, "Great Gem of Soul", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3772, 1 )
	TriggerAction( 1, TakeItem, 3772, 1 )
	TriggerAction( 1, GiveItem, 3723, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 5, "Great Gem of Striking", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3773, 1 )
	TriggerAction( 1, TakeItem, 3773, 1 )
	TriggerAction( 1, GiveItem, 3724, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 5, "Great Gem of Colossus", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3774, 1 )
	TriggerAction( 1, TakeItem, 3774, 1 )
	TriggerAction( 1, GiveItem, 3725, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 5, "Great Gem of Wind", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "None of Them", JumpPage, 1)
	
	Talk( 6, "Choose the desired Black Dragon Gem you want to exchange.")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3775, 1 )
	TriggerAction( 1, TakeItem, 3775, 1 )
	TriggerAction( 1, GiveItem, 864, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 6, "Eye of Black Dragon", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3776, 1 )
	TriggerAction( 1, TakeItem, 3776, 1 )
	TriggerAction( 1, GiveItem, 866, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 6, "Heart of Black Dragon", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3777, 1 )
	TriggerAction( 1, TakeItem, 3777, 1 )
	TriggerAction( 1, GiveItem, 865, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 6, "Soul of Black Dragon", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "None of Them", JumpPage, 1)
	
	Talk( 7, "Choose the desired Diamond Gem you want to exchange.")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3784, 1 )
	TriggerAction( 1, TakeItem, 3784, 1 )
	TriggerAction( 1, GiveItem, 3693, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 7, "Attack Speed Diamond", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3785, 1 )
	TriggerAction( 1, TakeItem, 3785, 1 )
	TriggerAction( 1, GiveItem, 3694, 1, 101 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 7, "Movement Speed Diamond", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "None of Them", JumpPage, 1)
	
	
	Talk( 3, "You don't possess the voucher...you can't get the gem!")
end
------------------------------------------------------------
-- 白银城-----活动专员
------------------------------------------------------------
function mmm_talk01()
	Talk( 1, "Ticket NPC: Hello, i sell all type of Tickets..!" )
	Text( 1, "Trade Tickets", BuyPage )
	Text( 1, "Nothing...", CloseTalk)

	
	InitTrade()
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other(	3141	)
	Other(	3073	)
	Other(	3056	) 
	Other(	3057	)
	Other(	3058	)
	Other(	3054	)
	Other(	3059	)
	Other(	3060	)
	Other(	3070	)
	Other(	3071	)
	Other(	3072	)
	Other(	3048	)
	Other(	3049	)
	Other(	3076	)
	Other(	563	)
	Other(	583	)
	Other(	3050	)
	Other(	3051	)
	Other(	3052	)
	Other(	3053	)
	Other(	2491	)
	Other(	2447	)
	Other(	2445	)
	Other(	6205	)
	Other(	3763	)
	Other(	3764	)
	Other(	2844	)
	Other(	6735	)
	Other(	6736	)
	

end
------------------------------------------------------------
-- 白银城-----屈原
------------------------------------------------------------
function mmm_talk02()
	Talk( 1, "Qu Yuan: A long journey home...Sigh...")
	AddNpcMission ( 902 )
	AddNpcMission ( 903 )
	AddNpcMission ( 904 )
end
-----------------------------------------------------------
---沙岚城---宠物管理员·朗拿度
-----------------------------------------------------------
function e_talk01 ()
	Talk( 1, "Pet Assistant - Langa: Demonic fruit determines which type of fairy that will be conceived and the type of fairy determines what attributes the player will gain when the fairy possession skill is used. After marriage, the parent pet fairies will each drop by 4 levels. Do you wish to know more?" )
	Text( 1, "Features of new generation fairies" ,JumpPage, 2)
	Text( 1, "Conditions to concieve fairies", JumpPage, 3)
	Text( 1, "Fairies marriage", OpenEidolonMetempsychosis )
	Talk( 2, "Pet Assistant - Langa: New generation of pet fairies can learn Self Destruct and Possession. Fairy of Strength, Fairy of Constitution, Fairy of Accuracy, Fairy of Spirit and Fairy of Agility can all raise a character's attribute respectively. Fairy of Luck and Fairy of Evil can increases a character's drop rate and experience gain respectively and Mordo Junior has the ability of both Luck and Evil Fairy, and also other hidden ability.")	
	Talk( 3, "Pet Assistant - Langa: Level of normal fairies affects a baby fairy greatly. I have much information about fairies. Please do check them out.")
	Text( 3, "Conditions to conceieve a Fairy of Strength", JumpPage, 4  )
	Text( 3, "Conditions to conceieve a Fairy of Constitution", JumpPage, 5  )
	Text( 3, "Conditions to conceieve a Fairy of Accuracy", JumpPage, 6  )
	Text( 3, "Conditions to conceieve a Fairy of Spirit", JumpPage, 7  )
	Text( 3, "Conditions to conceieve a Fairy of Agility", JumpPage, 8  )
	Text( 3, "Conditions to conceieve a Fairy of Luck", JumpPage, 9 )
	Text( 3, "Conditions to conceieve a Fairy of Evil", JumpPage, 10 )
	Text( 3, "Conditions to conceieve a Mordo Junior", JumpPage, 11 )	
	Talk(  4, "Pet Assistant - Langa: To conceive a Fairy of Strength requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Strength, 10 Arabic Pearl Fragment, 10 Wailing Warrior Carcass and some gold")
	Talk(  5, "Pet Assistant - Langa: The conditions to grow Fairy of Constitution is: 2 fairy with Lv not lower than 20,  1 Demonic Fruit of Courage. Inventory must contain 10 Cracked Arabic Pearl, 10 Sorrow Archer Carcass and some Gold.")
	Talk(  6, "Pet Assistant - Langa: Conditions to grow Fairy of Accuracy: 2 fairys of Lv not lower than 20, 1 Demonic Fruit of Energy. Your inventory must have 10 Fish Spike, 10 Mud Chunk and some Gold.")
	Talk(  7, "Pet Assistant - Langa: To conceive a Fairy of Spirit requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Intellect, 10 Polliwog Tail, 10 Wailing Archer Carcass and some gold")
	Talk(  8, "Pet Assistant - Langa: To conceive a Fairy of Agility requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Aberrant, 10 Shark Fin, 10 Swamp Wood and some gold.")
	Talk(  9, "Pet Assistant - Langa: To conceive a Fairy of Luck requires:  Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Acidity, 10 Tasty Squid Meat, 10 Sorrow Warrior Carcass and some gold")
	Talk(  10, "Pet Assistant - Langa: To conceive a Fairy of Evil requires: Two Lv20 and above normal pet fairies, 1 Demonic Fruit of Mystery, 10 Sparkling Arabic Pearl Fragments, 10 Mud Slice and some gold")
	Talk(  11, "Pet Assistant - Langa: Requirements to conceive Mordo Junior, A Mordo fairy who marry another Mordo will give birth to a Mordo Junior at 100% success rate and it has nothing to do with Demonic Fruit. The probability of giving birth to a Mordo Junior when a Mordo and other fairies marry will depend on their level.")

-----------eleven
	AddNpcMission ( 5019 )
	AddNpcMission ( 5032 )

	--------------------1.7
	AddNpcMission ( 5080	)
	AddNpcMission ( 5081	)
	AddNpcMission ( 5082	)
	AddNpcMission ( 5083	)
	AddNpcMission (5117 )
	AddNpcMission (5142 )
	AddNpcMission (5149 )
end 

------------------------------寻找遗失的爱情
function el_talk01()
	Talk( 1, "Little Fish: Be back fast! I can't handle it alone…..")	
	AddNpcMission ( 907 )
	AddNpcMission ( 911 )
	AddNpcMission ( 912 )
	AddNpcMission ( 917 )
end
function el_talk02()
	Talk( 1, "Butterfly: I am a close friend of Flower...")
	AddNpcMission ( 908 )
	AddNpcMission ( 909 )
	AddNpcMission ( 910 )
end
-----------------------------------------------------------
---白银---神秘婆婆
-----------------------------------------------------------
-------------------------------------爱情重生
function el_talk03()
	Talk( 1, "Mysterious Granny: I do not understand what is so mysterious about me…")	
	AddNpcMission ( 918 )
--------eleven
	AddNpcMission ( 5018 )
	AddNpcMission ( 5020 )
	AddNpcMission ( 5021)
	AddNpcMission ( 5022)
end
-----------------------------------------------------------
---春风镇---神秘的炉子
-----------------------------------------------------------
function star_talk02 ()
	Talk( 1, "Furnace: What are you looking at! Never seen such a beautiful furnace?" )
	Text( 1, "Function Introduction", JumpPage, 2 )
	Text( 1, "Special set upgrade", OpenItemTiChun )
	Text( 1, "Coral recharge", OpenItemEnergy )
	Text( 1, "Extract Gem", OpenGetStone )
	Text( 1, "Repair Lifeskill tools", OpenItemFix )
	Talk( 2, "Furnace of Immortality: I won't say anymore. Try it out yourself!" )
	Text( 2, "Upgrade introduction for kylin set, Black Dragon set and lvl 70 BOSS set.", JumpPage, 3)
	Text( 2, "Introduction to coral charging", JumpPage, 4 )
	Text( 2, "Introduction of gem extraction", JumpPage, 5 )
	Text( 2, "Repair Tools Introduction", JumpPage, 6)
	Talk( 3, "Furnace of Immortality: This function can upgrade Kylin set, Black Dragon set and also upgrade Lv 70 Boss equipment into Lv 75 Death equipment (Boss). You will required corresponding item to undergo upgrade. Apparel image will not be retained but gem forged into equipment will remain unchanged." )
	Talk( 4, "Furnace of Immortality: Use battery to recharge the energy of your corals. Rechargeable Battery can recharge 50 to 1000 points of energy while a Super Rechargeable Battery can recharge up to 1500 points of energy. Battery disappears upon usage!" )
	Talk( 5, "Furnace of Immortality: According to Gem position, extracting from top to bottom. Gem level extract will be the same as displayed in the socket and the level of gem will decrease by 1 upon extraction. Each extraction requires 1 Blacksmith's Pliers.")
	Text( 5, "Extract gem sample", JumpPage, 7 )
	Talk( 6, "Furnace of Immortality: Repair damaged Crystal Cauldron, Black Hole Crystal, Anti Matter Crystal and Particle Crystal. Require 1 fixing tool. Guaranteed to look like new!" )
	Talk( 7, "Furnace of Immortality: Taking a 3 sockets Wyrm Sword as an example, first socket forged with Lv3 Gem of Rage, second socket forged with Lv2 Furious Gem and third socket forged with Lv1 Eye of Black Dragon. During extraction, only Lv3 Gem of Rage will be extracted, and first socket will be reduced to Lv2 Gem of Rage. The other 2 sockets will not be affected. Note: Extraction starts from first socket in descending order." )

	AddNpcMission ( 7894)
	



end 



-----------------------------------------------------------
---白银---碰碰乐
-----------------------------------------------------------
function star_talk03 ()
	Talk( 1, "Lucky Chance: Hi, I advised you to leave some empty slots in your inventory before playing. You might win something great!" )
	Text( 1, "Playing Lucky Chance", JumpPage, 2 )
	Text( 1, "Try your luck, play a round!", OpenTiger )
	Talk( 2, "Lucky Chance: Each try requires 5 Fairy Coins. You can try multiple times. The more you try, the higher your chance of winning!" )
end 
--------------------------------------血腥的高跟鞋
function el_talk04 ()
	
	Talk( 1, "Skinny Worker: Sigh...Sigh...Oh god, who can take revenge for me…" )-------------(2249,2705)
	AddNpcMission ( 919 )
end

-----------------------------------------------------------
---印第安纳·琼斯
-----------------------------------------------------------
function llleo_talk01()
	Talk( 1, "Indianna Jones: Through the Crescent Canyon till the Shrine, immortality in the name of the Goddess...I have found a secret of Demonic World. Do you wish to know?" )
	Text( 1, "The Other Secret", JumpPage, 2)

	Talk( 2, "Indianna Jones: Rumor has it that Demonic World is made up of 2 dimension, meaning that there will be 2 of you at each demension at the same moment. I found the other demension by chance and also a new way to unseal those uniques equipment from Demonic World. Those researchers do not know of this yet. If you wish to try my method, I might consider" )
	Text( 2, "Unseal", JumpPage, 3)
	
	Talk( 3, "Indianna Jones: To unseal a unique equipment requires great energy consumption. Only those useless researchers will use multiple runestones to draw on their energy. I only need 1 special runestone to unseal it. Bring me 1 Morph Runestone and I will help you to unseal your equipment." )
	Text( 3, "Staff of Enigma", JumpPage, 6)
	Text( 3, "Mantle of the Sphinx", JumpPage, 7)
	Text( 3, "Kris of the Sphinx", JumpPage, 8)
	Text( 3, "Judgment of Enigma", JumpPage, 9)
	Text( 3, "Rifle of Enigma", JumpPage, 10)
	Text( 3, "Mantle of Enigma", JumpPage, 11)
	Text( 3, "Robe of Enigma", JumpPage, 12)
	Text( 3, "Next Page", JumpPage, 4)

	Talk( 4, "Indianna Jones: To unseal a unique equipment requires great energy consumption. Only those useless researchers will use multiple runestones to draw on their energy. I only need 1 special runestone to unseal it. Bring me 1 Morph Runestone and I will help you to unseal your equipment." )
	Text( 4, "Blade of Enigma", JumpPage, 13)
	Text( 4, "Tattoo of Enigma", JumpPage, 14)
	Text( 4, "Armor of Enigma", JumpPage, 15)
	Text( 4, "Robe of the Sphinx", JumpPage, 16)
	Text( 4, "Staff of the Sphinx", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Indianna Jones: To unseal the curse on Staff of Enigma, you must bring me: Ice Sealed Staff of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 6, "Unseal curse on Staff of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Indianna Jones: To unseal the curse on Mantle of the Sphinx, you must bring me: Ice Sealed Mantle of the Sphinx, Morph Runestone x1 and also 800000G as fee" )
	Text( 7, "Unseal curse on Mantle of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Indianna Jones: To unseal the curse on Kris of the Sphinx, you must bring me: Ice Sealed Kris of the Sphinx, Morph Runestone x1 and also 800000G as fee." )
	Text( 8, "Unseal curse on Kris of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Indianna Jones: To unseal the curse on Judgment of Enigma, you must bring me: Ice Sealed Judgment of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 9, "Unseal curse on Judgment of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Indianna Jones: To unseal the curse on Rifle of Enigma, you must bring me: Ice Sealed Rifle of Enigma, Morph Runestone x1 and also 800000G as fee" )
	Text( 10, "Unseal curse on Rifle of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Indianna Jones: To unseal the curse on Mantle of Enigma, you must bring me: Ice Sealed Mantle of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 11, "Unseal curse on Mantle of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Indianna Jones: To unseal the curse on Robe of Enigma, you must bring me: Ice Sealed Robe of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 12, "Unseal curse on Robe of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Indianna Jones: To unseal the curse on Blade of Enigma, you must bring me: Ice Sealed Blade of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 13, "Unseal curse on Blade of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Indianna Jones: To unseal the curse on Tattoo of Enigma, you must bring me: Ice Sealed Tattoo of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 14, "Unseal curse on Tattoo of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Indianna Jones: To unseal the curse on Armor of Enigma, you must bring me: Ice Sealed Armor of Enigma, Morph Runestone x1 and also 800000G as fee." )
	Text( 15, "Unseal curse on Armor of Enigma", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Indianna Jones: To unseal the curse on Robe of the Sphinx, you must bring me: Ice Sealed Robe of the Sphinx, Morph Runestone x1 and also 800000G as fee." )
	Text( 16, "Unseal curse on Robe of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Indianna Jones: To unseal the curse on Staff of the Sphinx, you must bring me: Ice Sealed Staff of the Sphinx, Morph Runestone x1 and also 800000G as fee." )
	Text( 17, "Unseal curse on Staff of the Sphinx", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Indianna Jones: Sorry, you do not have the required items. I cannot unseal it for you." )

end

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<乱斗管理员
function kk_talk01 ()
	
	Talk( 1, "Chaos Administrator: Only the strongest can survive in combat and only the strongest will be respected." )
	Text( 1, "Apply for redemption", JumpPage ,7 )
	Text( 1, "Check Chaos ranking", Garner2GetWiner )
	Text( 1, "Apply to enter Ranking List", Garner2RequestReorder )
--	Text( 1, "You received Chaos Manual", Change_FightingBook )
--	Text( 1, "About Chaos manual", JumpPage ,2 )
	Text( 1, "About Chaos ranking", JumpPage ,3 )
	Text( 1, "Regarding Chaos Argent", JumpPage ,13 )
	
	Talk( 2, "Chaos Administrator: If you do not have the Mark of Honor, this Chaos Manual will record all your Honor points. If you have the Mark of Honor, this book will replace your former Mark of Honor and record all your Honor. Your existing points will not vanish and will be recorded on this book." )
	Text( 2, "Comfirm",Change_FightingBook )

	Talk( 3, "Chaos Administrator: All adventurers that have gone through combat in Chaos Argent will be ranked accordingly. However, only the top 5 with the highest Chaos points will be listed." )
	Text( 3, "About Chaos points",JumpPage ,4 )
	Text( 3, "About Chaos equipment",JumpPage ,6 )


	Talk( 4, "Chaos Administrator: You can gain Chaos points in Chaos Argent by defeating players around your level. It will be recorded in your Medal of Valor." )
	Talk( 6, "Chaos Administrator: Including of Chaos Framestone, Chaos Clawstone, Chaos Pawstone, this set of equipment has high attribute bonus and other hidden ability. These abilities will be activated according to your ranking on the list." )
	
	Talk( 7, "Chaos Administrator: Come to me if you want to exchange for good things." )
	Text( 7, "Redeem Standard Chaos Voucher",JumpPage ,8 )
	Text( 7, "Redeem Chaos Chest",JumpPage ,9 )
	Text( 7, "Exchanged for King of the Ring Emblem",JumpPage ,10 )
	Text( 7, "Redeem Symbol of Honor",JumpPage ,12 )

	--兑换所需物品 ID,数量,兑换所得物品数量,赋予的值
	InitExchange()

	ExchangeData(	2608	,	100	,	2682	,	1	,	1)
	ExchangeData(	2609	,	100	,	2683	,	1	,	1)
	ExchangeData(	2609	,	1000	,	2684	,	1	,	1)
	ExchangeData(	2608	,	100	,	2692	,	1	,	1)
	ExchangeData(	2609	,	100	,	2693	,	1	,	1)
	ExchangeData(	2609	,	1000	,	2694	,	1	,	1)
	ExchangeData(	2608	,	100	,	2702	,	1	,	1)
	ExchangeData(	2609	,	100	,	2703	,	1	,	1)
	ExchangeData(	2609	,	1000	,	2704	,	1	,	1)
	ExchangeData(	2608	,	100	,	2712	,	1	,	1)
	ExchangeData(	2609	,	100	,	2713	,	1	,	1)
	ExchangeData(	2609	,	1000	,	2714	,	1	,	1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 1 )
	TriggerAction( 1, GiveItem, 2609, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 8, "Chaos Administrator: 1 Saint of the Ring Emblem is enough" )
	Text( 8, "Confirm to exchange", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1032, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1032, 1 )
	TriggerAction( 1, GiveItem, 1134, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "Chaos Arena Administrator: 1 King of the Ring Emblem will be enough." )
	Text( 9, "Confirm to exchange", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 5 )
	TriggerAction( 1, GiveItem, 1032, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "Chaos Administrator: I need 5 Saint of the Ring Emblem" )
	Text( 10, "Confirm to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "Chaos Administrator: Come and find me after assembling the necessary items. Your inventory must have 1 free slot and not binded." )
	
	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Talk( 12, "Chaos Administrator: The Symbols of Honor are Heart of Sparkle, Heart of Glory and Heart of Splendor. They required 200, 2000, 20000 reputation points respectively." )
	Text( 12, "Obtain Chaos Heart of Sparkle", Change_shanyao)
	Text( 12, "Received Chaos Heart of Honor.", Change_rongyao)
	Text( 12, "Obtained Chaos Heart of Splendor", Change_huihuang)

	Talk( 13, "Chaos Administrator: Chaos Argent will allow players to engage in combat and enjoy PvP battles! To enter, players need to be at least Lv 20, possess 20 Honor points, 30 Reputation points and some gold. It will be open PK upon entering the area. If level differences of two players are less than 15, the one defeated will lose 1 Honor and the winner will obtain 1 Chaos point. If the defeated player is 15 levels higher, he will lose 2 Honor instead and the winner will obtain 2 Chaos points. When the combat ends, the survivor will recieve gold as reward. If there are 5 or less survivors, each will obtain 1 Saint of the Ring Emblem. If there is only 1 survivor, he/she will obtain additional gold and a King of the Ring Emblem. Note: Please leave 1 empty inventory slot before participating." )
	
	
	
end 

function b_talk25 ()
	Popup( LifeSkillBegin , 3 )	

end 

function b_talk26 ()
	Popup( LifeSkillBegin , 2 )	

end 

function b_talk27 ()
	Popup( LifeSkillBegin , 0 )
end 

function b_talk28 ()
	Popup( LifeSkillBegin , 1 )	

end 


function leo_talkaa()
	Talk( 1, "Will accept all sort of project! Workmanship guarantee!" )
	Text( 1, "Have a look at your item.", SendExchangeData)

	
	--兑换所需物品 ID,数量,兑换所得物品数量,赋予的值
	InitExchange()

	ExchangeData(	3989	,	99	,	3999	,	20	,	1)
	ExchangeData(	3990	,	99	,	4000	,	20	,	1)
	ExchangeData(	3991	,	99	,	4001	,	20	,	1)
	ExchangeData(	3992	,	99	,	4002	,	20	,	1)
	ExchangeData(	3993	,	99	,	4003	,	20	,	1)
	ExchangeData(	3994	,	99	,	4004	,	20	,	1)
	ExchangeData(	3995	,	99	,	4005	,	20	,	1)
	ExchangeData(	3996	,	99	,	4006	,	20	,	1)
	ExchangeData(	3997	,	99	,	4007	,	20	,	1)
	ExchangeData(	3998	,	99	,	4008	,	20	,	1)

end


function leo_talkbb()
	Talk( 1, "Selling stones! Do not come if you have no money!" )
	Text( 1, "I only have money.", SendExchangeData)

	
	--兑换所需物品 ID,数量,兑换所得物品数量,赋予的值
	InitExchange()

	ExchangeData(	4029	,	99	,	4039	,	20	,	1)
	ExchangeData(	4030	,	99	,	4040	,	20	,	1)
	ExchangeData(	4031	,	99	,	4041	,	20	,	1)
	ExchangeData(	4032	,	99	,	4042	,	20	,	1)
	ExchangeData(	4033	,	99	,	4043	,	20	,	1)
	ExchangeData(	4034	,	99	,	4044	,	20	,	1)
	ExchangeData(	4035	,	99	,	4045	,	20	,	1)
	ExchangeData(	4036	,	99	,	4046	,	20	,	1)
	ExchangeData(	4037	,	99	,	4047	,	20	,	1)
	ExchangeData(	4038	,	99	,	4048	,	20	,	1)
	ExchangeData(	1670	,	99	,	1671	,	20	,	1)
	ExchangeData(	1668	,	99	,	3368	,	20	,	1)
	ExchangeData(	1667	,	99	,	3360	,	20	,	1)
	ExchangeData(	1642	,	99	,	1643	,	20	,	1)
	ExchangeData(	4825	,	99	,	1638	,	20	,	1)
	ExchangeData(	1633	,	99	,	1641	,	20	,	1)
	ExchangeData(	1782	,	99	,	1769	,	20	,	1)
	ExchangeData(	2815	,	99	,	1775	,	20	,	1)
	ExchangeData(	1674	,	99	,	1767	,	20	,	1)
	ExchangeData(	4832	,	99	,	2901	,	20	,	1)

end


function leo_talkcc()
	Talk( 1, "Never buy anything from the Black Market Merchant beside me, he will scam you of your money. Take a look at my things instead." )
	Text( 1, "Let me take a look at your item.", SendExchangeXData)
	
	InitExchangeX()
	ExchangeDataX(	855	,	60	,	2617	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2619	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2622	,	1	,	1)
	ExchangeDataX(	2589	,	5	,	2624	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2640	,	1	,	1)
	ExchangeDataX(	855	,	60	,	2641	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2642	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2643	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2644	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2649	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1055	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1056	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1058	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1059	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1061	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1062	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1064	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1065	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2680	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2681	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2682	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2683	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2684	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2685	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2690	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2691	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2692	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2693	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2694	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2695	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2700	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2701	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2702	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2703	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2704	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2705	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2710	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2711	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2712	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2713	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2714	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2715	,	1	,	1)

end


-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<合成介绍员
-----介绍员-蓝
function max_talka1()
	Talk( 1, "Assistant - Blue: Hi, I am Assistant - Blue. I can help you with any problem encountered while using Substance Analyzation Tool. How may I help you?" )
	Text( 1, "What is Substance Analyzation Tool?", JumpPage ,2)
	Text( 1, "Can I use the Substance Analyzation Tool?", JumpPage ,7)
	Text( 1, "How do Substance Analyzation Tool work?", JumpPage ,3)
	Text( 1, "What can the Substance Analyzation Tool analyze?", JumpPage ,4)
	Text( 1, "I have no issue. I am only passing by!", JumpPage ,6)

	Talk( 2, "Assistant - Blue: Substance Analyzation Tool is a mysterious instrument of nature. It allows you to analyze and restore an item into its original state." )
	Text( 2, "I still have other questions", JumpPage ,1)
	Text( 2, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 3, "Assistant - Blue: First you need to prepare the fairy, tools and catalyst for analyzation. Access the instrument and place the items into their respective slots. During the process, you can see a 5-digit number on the left side of the display. When the number on the right side of the display is lower than that number, your analyzation is successful." )
	Text( 3, "Will it be life-threatening if it fail?", JumpPage ,5)
	Text( 3, "You mentioned about tool just now?", JumpPage ,9)
	Text( 3, "I have other questions", JumpPage ,1)
	Text( 3, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 4, "Assistant - Blue: Substance Analyzation Tool allows a weapon or equipment, with the correct catalyst, to breakdown into the original material. Addition of different catalyst might obtain different effect. You might be surprised!" )
	Text( 4, "How can I get Catalyst?", JumpPage ,8)
	Text( 4, "I still have other questions", JumpPage ,1)
	Text( 4, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 5, "Assistant - Blue: Haha! Do not worry about our Substance Analyzation Tool. It is very safe and will not harm your pet. However, items and catalyst used will disppeared if Analyzation failed.")
	Text( 5, "I have other questions", JumpPage ,1)
	Text( 5, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 6, "Assistant - Blue: Hope that you pass by here happily!")
	Text( 6, "Continute to walk pass!", CloseTalk)

	Talk( 7, "Assistant - Blue: Of course you can, But first you need to buy an Analyze Guide from the Grocer's. After reading through it, you will be able to start trying.")
	Text( 7, "I have other questions", JumpPage ,1)
	Text( 7, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 8, "Assistant - Blue: You can purchase any catalyst from our Item Mall" )
	Text( 8, "I have other questions", JumpPage ,1)
	Text( 8, "I see.. I don't have any more questions, thank you!", CloseTalk)

	Talk( 9, "Assistant - Blue: Tools are item that increases success rate. Please note that manufacturing skill of pet fairy must be higher than the level of tools to be made." )
	Text( 9, "I have other questions", JumpPage ,1)
	Text( 9, "I see.. I don't have any more questions, thank you!", CloseTalk)

end

-----篝火婆婆
function max_talka2()
	Talk( 1, "Matchstick Granny: Hello young man, I'm matchstick Granny. When I was young, I was the most famous chef! Haha! What can I do for you?" )
	Text( 1, "I would like to know where I can cook", JumpPage ,2)
	Text( 1, "Can I learn cooking?", JumpPage ,3)
	Text( 1, "Can you teach me how to cook?", JumpPage ,4)
	Text( 1, "Are the things made that special?", JumpPage ,5)
	Text( 1, "I am only passing by…", JumpPage ,6)

	Talk( 2, "Matchstick Granny: We should treasure the world limited resource - Fire. It can allow us to cook tasty dishes." )
	Text( 2, "Enquire about other questions", JumpPage ,1)
	Text( 2, "Thank you Granny, I understand now.", CloseTalk)

	Talk( 3, "Matchstick Granny: Haha of course. But you need to go to the Grocers to buy a Cooking Guide that I have written. After you have understand the basic knowledge, you will be able to start." )
	Text( 3, "I would like to enquire about other questions", JumpPage ,1)
	Text( 3, "Thank you Granny, I understand now.", CloseTalk)

	Talk( 4, " Matchstick Granny: Cooking is a great skill. You should be thankful to our God for being able to use such powers. Firstly, you need to have a fairy, cooking recipe, cooking tools and lastly, ingredients for cooking. Next you need to place the things in their respective places. Remember not to place them wrongly. Once everything is ready, you can start cooking. The fire must be controlled nicely, or the things might get burnt. Wastage of food is a sin!" )
	Text( 4, "When will the fire be just nice?", JumpPage ,7)
	Text( 4, "I would like to enquire about other questions", JumpPage ,1)
	Text( 4, "Thank you Granny, I understand now.", CloseTalk)

	Talk( 5, "Matchstick Granny: If the boiling water is of the right temperature, the food you cooked will be delicious. Food can not only fill up your stomach, some of them have special effect as well. It is rumored that ancient warriors eat Codfish Steamboat to gain enormous strength!" )
	Text( 5, "I would like to enquire about other questions", JumpPage ,1)
	Text( 5, "Thank you Granny, I understand now.", CloseTalk)

	Talk( 6, "Matchstick Granny: Hope you will pass by happily! May God bless you!")
	Text( 6, "I'm really just passing by", CloseTalk)

	Talk( 7, "Matchstick Granny: It means the bottom line reaches 75%. You have no knowledge at all!")
	Text( 7, "I would like to enquire about other questions", JumpPage ,1)
	Text( 7, "Thank you Granny, I understand now.", CloseTalk)

end

-----熔炉技师·梅克
function max_talka3()
	Talk( 1, "Furnace Artificer - Mel: Hi! Looking for me?" )
	Text( 1, "Tell me what can the Furnace do", JumpPage ,2)
	Text( 1, "How to use the Furnace?", JumpPage ,3)
	Text( 1, "Can tell me the secret of the Furnace?", JumpPage ,4)
	Text( 1, "I'm just passing through.", JumpPage ,5)


	Talk( 2, "Furnace Artificer - Mel: Haha want to forge your own weapon and equipments? Then this is a must. Its an inheritance from my father. Its said that my father used this to forge a whole nation's army's equipment." )
	Text( 2, "I would like to enquire about other questions", JumpPage ,1)
	Text( 2, "So this is it. I understand now.", CloseTalk)

	Talk( 3, "Furnace Artificer - Mel: Hoho! Do you wish to use? If you can understand the \"Novice Manufacturing Guide\" sold by the Groceror, I will let you try for free! Do you understand at all? Hoho!" )
	Text( 3, "I would like to enquire about other questions", JumpPage ,1)
	Text( 3, "So this is it. I understand now.", CloseTalk)

	Talk( 4, "Furnace Artificer - Mel: You will need to have a pet fairy. After that, find a blueprint and place in the materials into the Furnace accordingly to start crafting. When you see the dices shake, you will need to guess big or small. Your guess determine the outcome of crafting." )
	Text( 4, "How do I craft better things?", JumpPage ,7)
	Text( 4, "So this is it. I understand now.", CloseTalk)

	Talk( 7, "Furnace Artificer - Mel: During the process of manufacturing, you can add in material with magical properties. It will enhanced the product greatly. However, your pet will have to be of higher level." )
	Text( 7, "I would like to enquire about other questions", JumpPage ,1)
	Text( 7, "So this is it. I understand now.", CloseTalk)

	Talk( 5, "Furnace Artificer - Mel: ...Are you Wolf? Passing by here?")
	Text( 5, "I am only passing by…", CloseTalk)

end

-----研究生
function max_talka4()
	Talk( 1, "Graduate: Hi, is there anything I can do for you?" )
	Text( 1, "What is it above you", JumpPage ,2)
	Text( 1, "Can I use Substance Generator?", JumpPage ,3)
	Text( 1, "How do Substance Generator work?", JumpPage ,4)
	Text( 1, "What item can it generate?", JumpPage ,5)
	Text( 1, "I'm just passing through.", JumpPage ,6)


	Talk( 2, "Graduate: This is our latest invention: Substance Generator. We can now refine metals with it!" )
	Text( 2, "I would like to enquire about other questions", JumpPage ,1)
	Text( 2, "So this is it. I understand now.", CloseTalk)

	Talk( 3, "Graduate: First, go to a Groceror to buy the Novice Manufacturing Guide. After you have read through the basics, you will be able to start trying on your own." )
	Text( 3, "I would like to enquire about other questions", JumpPage ,1)
	Text( 3, "So this is it. I understand now.", CloseTalk)

	Talk( 4, "Graduate: To ensure that the power of Substance Generator comes under control, you will need to have a pet fairy. Place the Manufacturing Blueprint and Material into the Substance Generator accordingly and click the button to process." )
	Text( 4, "Are there different results?", JumpPage ,7)
	Text( 4, "I would like to enquire about other questions", JumpPage ,1)
	Text( 4, "So this is it. I understand now.", CloseTalk)

	Talk( 5, "Graduate: As it is a copy of the original smelting technique, it is not as wondrous. But if you follow strictly to the formulas, you will not be disappointed." )
	Text( 5, "I would like to enquire about other questions", JumpPage ,1)
	Text( 5, "So this is it. I understand now.", CloseTalk)

	Talk( 6, "Graduate: Looks like you are…")
	Text( 6, "I am really only passing by…", CloseTalk)

	Talk( 7, "Graduate: As we are not the Almighty, what we create are not perfect. To distinguish the quality of the product we have seperate it accordingly in ascending order:                  Thank you     Abysmal                            Terrible                           Bad                                  Poor                            Mediocre                          Fair                              Good                                Great                              Superb                            Perfect .")
	Text( 7, "I would like to enquire about other questions", JumpPage ,1)
	Text( 7, "So this is it. I understand now.", CloseTalk)
end

---------------------圣诞树
function el_talk05 ()
	
	Talk( 1, "Christmas Tree: Merry Christmas to you! Each blessing that comes from the heart will hold true" )
	Text( 1, "Select blessing",JumpPage, 2  )
	
	Talk( 2, "Christmas Tree: Do you want to dedicate your blessing? Every dedication requires a Christmas Card and 1000G." )
	Text( 2, "I want to dedicate my blessings",JumpPage, 3  )
	
	Talk( 3, "May God bless you on this Christmas season! The Goddess of Mercy protect you! God of Fortune hugs you! Cupid shoots you! God of Cookery bites you!")
	Text( 3, "Confirm to broadcast this blessing",  GetChaName_0, 1)
	Text( 3, "Next Line",JumpPage, 6  )

	Talk( 6, "Due to consideration of the upcoming world event…")
	Text( 6, "Confirm to broadcast this blessing",  GetChaName_1, 1)
	Text( 6, "Next Line",JumpPage, 7  )
	Text( 6, "Previous Line",JumpPage, 3  )

	Talk( 7, "I have a beautiful wish: That is to ring the bell that signify the coming of Christmas as I hold your hands on Christmas Eve and begin our romantic journey...Will you help me fulfil this wish?")
	Text( 7, "Confirm to broadcast this blessing",  GetChaName_2, 1)
	Text( 7, "Next Line",JumpPage, 8  )
	Text( 7, "Previous Line",JumpPage, 6  )

	Talk( 8, "After a year has past, now we have return to this meaningful night. Let this moment be full of joy and happiness...Merry Christmas!")
	Text( 8, "Confirm to broadcast this blessing",  GetChaName_3, 1)
	Text( 8, "Previous Line",JumpPage, 7  )
---------------------------------------------------------------------------------------------------------------	
end

----------------------------------------霍金斯-------------------------
--------------------------------寂寞之塔6层(51300,26900)
--------------------------------------eleven------------------------------------------
function el_talk07 ()

	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, LvCheck, ">", 74 )
	TriggerCondition( 1, HasCredit,9999 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerCondition( 1, NoRecord, 1301 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, CloseTalk  )

	Talk( 1, "Huckinson: I am a killing machine! Spare nobody! I do gossip sometimes. Do not talk to me if you are below Lv 75 and lower than 9999 reputation points!" )
	Text( 1, "Hi!",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Huckinson: To get the fragments you must answer a few questions. Which of the story quest below is connected to the missing boy quest?" )
	Text( 2, "Food Poisoning",JumpPage, 3  )
	Text( 2, "The Lost Tool",JumpPage, 4  )
	Text( 2, "A Crazy Reason",JumpPage, 3  )---------
	Text( 2, "Kill the Shrooms",JumpPage, 32  )

	Talk( 3, "Huckinson: Do not be too arrogant. I ask you about some gossip instead. Who is the lover of Andrew?" )
	Text( 3, "Coddy",JumpPage, 4  )
	Text( 3, "Zhou",JumpPage, 32  )
	Text( 3, "Little Fish",JumpPage,5  )
	Text( 3, "Yuan Bin",JumpPage, 2  )
	Text( 3, "Hami",JumpPage, 4  )--------------
	Text( 3, "Li Zhang Zhong",JumpPage, 4  )

	Talk( 4, "Huckinson: Which of these below are material for manufacturing" )
	Text( 4, "Murky Polliwog Blood and Pure Water",JumpPage, 5  )
	Text( 4, "Blood Red Polliwog skin and Energetic Tea",JumpPage, 5  )
	Text( 4, "Evil Polliwog Blood and Incitant",JumpPage, 2  )
	Text( 4, "Transparent Polliwog Blood and Pure Water",JumpPage, 32 )
	Text( 4, "Thick Transparent Polliwog Tail",JumpPage, 6  )
	Text( 4, "Energetic Tea and Incitant",JumpPage, 19  )-----------
	Text( 4, "Evil Polliwog Blood",JumpPage, 5  )


	Talk( 5, "Huckinson: The love keepsake of the myterious granny is...?" )
	Text( 5, "Crystal Tears",JumpPage, 32  )
	Text( 5, "Tear Soothstone",JumpPage, 6  )
	Text( 5, "Stone of Langa",JumpPage, 3  )
	Text( 5, "Amber Tear",JumpPage, 22  )----------
	Text( 5, "Garden of Eve stone",JumpPage, 7  )
	Text( 5, "Tears of Kara",JumpPage, 7  )
	Text( 5, "Stone of First Love",JumpPage, 32  )

	Talk( 6, "Huckinson: What is the relationship between the Richies and Anubis?" )
	Text( 6, "Father and Son Relationship",JumpPage, 4  )
	Text( 6, "grandparents and grandchildren relationship",JumpPage, 8  )
	Text( 6, "brothers",JumpPage, 7  )
	Text( 6, "Lover",JumpPage, 32  )
	Text( 6, "No relation",JumpPage, 32  )
	Text( 6, "Distance relative",JumpPage, 32  )
	Text( 6, "Cousin Relationship",JumpPage, 7  )-----------------
	Text( 6, "Sisters",JumpPage, 7  )

	Talk( 7, "Huckinson: Demonic Fruit will change into what?" )
	Text( 7, "Fairy Baby",JumpPage, 32  )
	Text( 7, "Normal Apple",JumpPage, 8  )----------
	Text( 7, "Devil",JumpPage, 9  )
	Text( 7, "Running Demonic Fruit",JumpPage, 5  )
	Text( 7, "harden",JumpPage, 32  )

	Talk( 8, "Huckinson: What is Goldie now working as?" )
	Text( 8, "butcher",JumpPage, 3  )
	Text( 8, "Movie star",JumpPage, 32  )
	Text( 8, "Face dot teacher",JumpPage, 32  )
	Text( 8, "Body Art Model",JumpPage, 9  )--------
	Text( 8, "GM",JumpPage, 7  )
	Text( 8, "Company Boss",JumpPage, 9  )

	Talk( 9, "Huckinson: Which of the option below is correct?" )
	Text( 9, "You will regret choosing me.",JumpPage, 4  )
	Text( 9, "Hami is the illegitimate son of Sang Di",JumpPage, 10 )-----------
	Text( 9, "Beldi do not know how to make cakes",JumpPage, 32  )
	Text( 9, "Sang Di will live longer than Mysterious Granny",JumpPage, 23 )
	Text( 9, "The High Priest was once a pirate",JumpPage, 6  )

	Talk( 10, "Huckinson: Black Market merchant used to be common. That was " )
	Text( 10, "10 years ago",JumpPage, 5  )
	Text( 10, "Half a year ago",JumpPage, 5  )
	Text( 10, "While he is trading in antique",JumpPage, 32 )
	Text( 10, "When he just arrived at Icicle City",JumpPage, 8  )
	Text( 10, "Before he fell in love with Donna.",JumpPage, 11  )-----------
	Text( 10, "After he has been ditched by Donna",JumpPage, 32  )
	Text( 10, "When he is studying in Black Market University",JumpPage, 8  )


	Talk( 11, "Huckinson: NPC secrets revealed! What sort of person do you think NPC Pappa is?" )
	Text( 11, "25 years old handsome guy",JumpPage, 32 )
	Text( 11, "gentle lady",JumpPage, 30  )
	Text( 11, "Fierce tom-boy",JumpPage, 13  )
	Text( 11, "Scary Marriage Whacko",JumpPage, 2  )
	Text( 11, "Happy Pretty Girl",JumpPage, 13  )---------------
	Text( 11, "Charming Idol",JumpPage, 32  )
	Text( 11, "No correct option",JumpPage, 28  )

	Talk( 30, "Huckinson: You have a deep misunderstanding of her"  )
	Text( 30, "Next",JumpPage, 32  )
	Talk( 31, "Huckinson: Don't let her know that you have chosen this answer" )
	Text( 31, "Next",JumpPage, 32  )



	--Talk( 12, "Huckinson: Which of the below description is wrong?" )
	--Text( 12, "Minelli is the High Priest's secretary",JumpPage, 32 )
	--Text( 12, "You can win Black Dragon equipment from Lucky Chance",JumpPage, 3 )
	--Text( 12, "Ditto knows how to concort the Reverse Love Potion.",JumpPage,8 )
	--Text( 12, "Roland is the most desired lover",JumpPage, 10 )
	--Text( 12, "Kentaro feels that Mas is a very clever person",JumpPage, 13 )---------------
	--Text( 12, "Horrific Cursed Corpse is near Ascaron at (360, 1340)",JumpPage, 5 )
	--Text( 12, "Merman Prince used to be just a frog",JumpPage, 13 )
	--Text( 12, "Minelli used to be Carsise's lover",JumpPage, 13 )

	Talk( 13, "Huckinson: Regarding gem extraction, which of these stated below is wrong?" )
	Text( 13, "Blacksmith's Plier is the tool for extraction",JumpPage, 5 )
	Text( 13, "Each piece of equipment will follow a sequence to extract",JumpPage, 3 )
	Text( 13, "Socket number will not change after extraction but Plier will disappear after usage",JumpPage, 32 )
	Text( 13, "Collection Fee= Equipment refining level * 1000G",JumpPage, 14 )
	Text( 13, "You can only extract one from each socket",JumpPage, 10 )
	Text( 13, "Level of gem extracted is 1 level lower than original gem forged into socket",JumpPage, 14 )-----------------
	Text( 13, "The 3rd option is correct",JumpPage, 8 )

	Talk( 14, "Huckinson: Who knows the secret of the Brimstone?" )
	Text( 14, "Houston",JumpPage, 4 )
	Text( 14, "Langa and the Mysterious Granny",JumpPage, 32 )
	Text( 14, "Merman Prince and Azure Siren",JumpPage, 7 )
	Text( 14, "Ditto and Mystery Granny",JumpPage, 15 )
	Text( 14, "Ditto and Langa",JumpPage, 15 )-----------------
	Text( 14, "Mysterious Granny and the Merman Prince",JumpPage, 8 )
	Text( 14, "Houston and the Merman Prince",JumpPage, 12 )


	Talk( 15, "Huckinson: Which herbs stated below has side effect?" )
	Text( 15, "Restoration Potion",JumpPage,13 )
	Text( 15, "Revival Clover",JumpPage, 32 )
	Text( 15, "Memory Capsule",JumpPage, 16 )--------------
	Text( 15, "Reverse Love Potion",JumpPage, 5 )
	Text( 15, "Memory Soup",JumpPage, 4 )
	Text( 15, "Sorcerer's bone powder.",JumpPage, 16 )
	Text( 15, "Preservative",JumpPage, 9 )

	Talk( 16, "Huckinson: Whos lying?" )
	Text( 16, "Mysterious Granny: I love Langa.",JumpPage, 32 )
	Text( 16, "General William: Mask of Zorro is not with me",JumpPage, 17 )-----------
	Text( 16, "Langa: Mysterious Granny is not the one in my heart",JumpPage, 17 )
	Text( 16, "Pappe: I am a beautiful woman before I turned into a penguin!",JumpPage, 5 )
	Text( 16, "Sang Di: I know how to speak the language that humans don't understand.",JumpPage, 10 )
	Text( 16, "Mordo Junior: My parents aren't all Mordos",JumpPage, 15 )

	Talk( 17, "Huckinson: Do you like to play Tales of Pirates?" )
	Text( 17, "I like it",JumpPage, 32 )
	Text( 17, "I like it very much",JumpPage, 32 )
	Text( 17, "I like it very much",JumpPage, 32 )
	Text( 17, "I like it!",JumpPage, 32 )
	Text( 17, "I like it!",JumpPage, 18 )-----------------
	Text( 17, "I like it!!!",JumpPage, 5 )
	Text( 17, "I still likes it.",JumpPage, 15 )

	Talk( 18, "Huckinson: The High Priest has what bad habit?" )
	Text( 18, "Tear footskin",JumpPage, 5 )
	Text( 18, "Dig Nose",JumpPage, 14 )
	Text( 18, "Peep",JumpPage, 2 )
	Text( 18, "Drunkyard",JumpPage, 9 )
	Text( 18, "Smoke Addict",JumpPage, 12 )
	Text( 18, "Gamble Addict",JumpPage, 10 )
	Text( 18, "Squat in toilet",JumpPage, 12 )------------------
	Text( 18, "Wash hand",JumpPage, 4 )


	Talk( 19, "Huckinson: Are you sure about your option?" )
	Text( 19, "I am sure",JumpPage, 21  )
	Text( 19, "I chose wrongly just now.",JumpPage, 20  )
	Text( 19, "I need to consider",JumpPage, 32  )

	Talk( 20, "Huckinson: Please be steady…" )
	Text( 20, "Next",JumpPage, 3  )

	Talk( 21, "Huckinson: Confidence is important to a pirate!" )
	Text( 21, "Comfirm",JumpPage, 5  )

	Talk( 22, "Huckinson: Are you sure about your option?" )
	Text( 22, "I am sure",JumpPage, 24  )
	Text( 22, "I chose wrongly just now.",JumpPage, 20  )
	Text( 22, "I need to consider",JumpPage, 32  )


	Talk( 23, "Huckinson: Are you sure about your option?" )
	Text( 23, "I am sure",JumpPage, 25  )
	Text( 23, "I chose wrongly just now.",JumpPage, 8  )
	Text( 23, "I need to consider",JumpPage, 32  )

	Talk( 24, "Huckinson: Confidence is the basic requirement to be a pirate!")
	Text( 24, "Next",JumpPage, 6   )
	Talk( 25, "Huckinson: Please use your brain. Don't always choose the same answer. Who told you that you must believe me? I'm talking about having confidence!")
	Text( 25, "Next",JumpPage, 32  )

	Talk( 26, "Huckinson: Are you sure about your option?" )
	Text( 26, "I am sure",JumpPage, 28  )
	Text( 26, "I chose wrongly just now.",JumpPage, 27  )
	Text( 26, "I need to consider",JumpPage, 32  )

	Talk( 27, "Huckinson: This move allow you to save lots of time"   )
	Text( 27, "Next",JumpPage, 12  )

	Talk( 28, "Huckinson: You are too over-confident. That's not a pirate's virtue."  )
	Text( 28, "Next",JumpPage, 32  )



	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerAction( 1, SetRecord, 1301 )
	TriggerAction( 1, JumpPage, 29 )
	
	Talk( 12, "Huckinson: I believe that these riddles are interesting. Do you wish to try?"  )
	Text( 12, "want",MultiTrigger, GetMultiTrigger(), 1  )
	Text( 12, "No",JumpPage, 2  )

	Talk( 29, "Huckinson: Congratulations! Your wisdom has enabled you to join the quest for the fragments. Now go and prove your strength!" )

	Talk(32, "Huckinson: Are you stupid?" )
	Text( 32, "Not me. I want to try again.",JumpPage, 2  )
	Text( 32, "I'm stupid, I quit!",CloseTalk  )
	AddNpcMission	(6001)
	AddNpcMission	(6002)
	
		
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<霍金斯



----------------------------------------托马斯·图图-------------------------
--------------------------------魔方世界二层(26600,25900)
--------------------------------------eleven------------------------------------------

function el_talk08 ()


	Talk( 1, "Tomas Tutu: Organising tour! 3 days 2 night at Icy Devil Cave! Discount for members!" )
	 
	AddNpcMission	(6010)
	AddNpcMission	(6011)
	AddNpcMission	(6012)
	AddNpcMission	(6013)
	AddNpcMission	(6014)

	end
	-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<托马斯·图图
	
	--神使
	
function Leo_talkQ()
	Talk(1,"Representative of order, protector of love and justice! I am the Online GM, maning my post to help those in need...")
	Text(1,"Regarding Online GM",JumpPage,2)
	Text(1,"Submit question" , OpenGMSend)
	Text(1,"Check on reply" , OpenGMRecv)
	
	Talk(2,"I'm the online GM. Here, I relay the questions of the players to the GM in real life. At the same time, I'll relay the replies back to the players. When asking questions, please take note of the following:                                    1) Every player can only ask 1 question and have to wait for the reply before asking another.                                                                                        2)The questions cannot infringe upon the rules and regulations of the game     3)Content should be within 16-256 letters or 8-128 words.                                  4)Please do not ask questions not related to the game. Thank You!")
	Text(2,"I understand" , CloseTalk)
end


-------------------------bargi-----------------------------
function smzh_talk ()

	Talk( 1, "Mystery Grocer: Young man, do not be fooled so easily by illusions!!!" )
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

function leo_talkzz()
	Talk(1,"Hi, I am an online support NPC. I will help players clear some of their query or issue. Please select the following options")
	Text( 1,"Event of Chaos points abnormality",JumpPage,2)
--	Text( 1,"Rebirth card event",JumpPage,3)
	 
	Talk(3, "Hi, did your Rebirth Card changed to a rock? I guess that happens when it is exposed to radiation. Do you wish to restore your Rebirth Card here")
	Text( 3, "Confirm to reset",GetChaName_25, 1) 
	
	Talk(2,"If you encounter abnormality in your Chaos points, please reset it to zero")
	Text(2,"My Chaos points are abnormal. I wish to reset",PKPointToZero)
	Text(2,"Don't know what are you talking about",CloseTalk)
end

------------------------------------------------------------
----							--
----							--
----		沙岚城[教堂修女.梅拉达]			--
----							--
----		82271,353453				--
------------------------------------------------------------
-------------------------------------------------------------这里开始P话聊天
--function el_talk09 ()
--	
--	Talk( 1, "梅拉达:神爱世人，我以主的名义邀请你去圣地." )
--	Text( 1, "教堂竞拍", ListAuction)
--	Text( 1, "购买教堂参观门票", JumpPage,2 )
--	Text( 1, "购买请柬", JumpPage, 5)
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasMoney,5000 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction( 1, TakeMoney, 5000 )
--	TriggerAction(1, GiveItem, 3013, 1 , 4)
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk(2, "梅拉达:神圣典雅的教堂是幸福开始的地方,是爱情庄严的见证.欢迎持票参观,每张参观门票只需5000海盗币")
--	Text( 2, "确定购买",  MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk(3, "梅拉达:欢迎准时参观")
--	Talk(4, "梅拉达:您身上似乎没有足够的金钱啊!或者您的背包已锁定，请保证背包内留有一个空格")
--	
--	Talk( 5, "梅拉达:用教堂使用证书就可以购买对应教堂的请柬,每10张请柬为1组,每组5万海盗币.邀请您的朋友参加聚会吧!" )
--	Text( 5, "确定购买", ChangeItem, 1  )
--	
--	
--end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<梅拉达
	
-----------------------------怨念草
function ync_talk ()
	Talk( 1, "What are you looking at? Stare longer and I will hit you.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1403 )
	TriggerCondition( 1, HasRecord, 1402 )
	TriggerCondition( 1, NoRecord, 1403 )
	TriggerCondition( 1, NoRecord, 1404 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Answer question",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1405 )
	Talk( 2, "为什么...为什么老是要屠杀我们精灵草一族...你知道这个世界里一共有多少个杀我们精灵草和抢我们身上物品的任务吗？")
	Text( 2, "11个",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "12个",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "13个",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1407 )
	Text( 2, "我管你多少呢",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "I have to get my revenge! You stay away.")

	AddNpcMission ( 6072 )
	AddNpcMission ( 6073 )
	AddNpcMission ( 6074 )
	AddNpcMission ( 6075 )
	AddNpcMission ( 6076 )
	AddNpcMission ( 6077 )

end

--------------------------------------重伤的无名战士

function Zs_Soldier ()
	Talk( 1, "小心朋友，别惊醒那只大蜥蜴。")


	AddNpcMission ( 6098 )
	AddNpcMission ( 6099 )
end
---------------------------------------------------------
--							--
--							--
--		地狱7层[拉瑞]			--
--							--
--		190, 181				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function el_talk11 ()

	Talk( 1, "Hey, quickly hide in here before any of these horryfic monsters see us!")
	AddNpcMission(8000)
	AddNpcMission(8001)
	AddNpcMission(8002)
	AddNpcMission(8003)
	AddNpcMission(8004)
	AddNpcMission(8005)
	AddNpcMission(8006)

end	


-----------------------------------------------------------这里开始P话聊天
function el_talk12 ()
	
	Talk( 1, "希尔塔:地狱15层曾经给无数人留下恶梦,只有真正的强者才能获得殊荣." )
--	Text( 1, "请点击这里一下", JumpPage,2 )
--	
--	
--	InitTrigger()
--	TriggerCondition( 1, NoRecord, 1155 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction(1, GiveItem, 0853, 1 , 4)
--	TriggerAction( 1, SetRecord, 1155 )
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk( 2, "希尔塔:朋友,到地狱15层挑战命运的人都有资格获得我的礼物.只有一次机会哦!")
--	Text( 2, "我接受",  MultiTrigger, GetMultiTrigger(), 1)
--	Text( 2,"谢了,我只是路过.",CloseTalk)
--
--	Talk(3, "希尔塔:朋友,在探索地狱的道路上没有失败者,前进本来就是英雄的宿命.")
--	Talk(4, "希尔塔:请确定您的背包未锁定,并保证背包内留有一个空格.礼物只能领取一次哦!")
	
end 


---------------------------------------------------------
--							--
--							--
--		春风镇[月老]			--
--							--
--		3228,2508				--
----------------------------------------------------------
function amon_talk1 ()
	Talk( 1, "月老: 一根红线,两处情缘.道不完人间情事.")


	--AddNpcMission ( 5736 )
	--AddNpcMission ( 5737 )
end

---------------------------------------------------------
--							--
--							--
--		夏岛[牛郎]			--
--							--
--		3670,2636			--
----------------------------------------------------------
function amon_talk2 ()
	Talk( 1, "牛郎: 相聚短,银河长.悠悠鹊桥路,来人路,离人路.")


	--AddNpcMission ( 5738 )
	--AddNpcMission ( 5739 )
end

---------------------------------------------------------
--							--
--							--
--		天堂[织女]			--
--							--
--		1599,909			--
----------------------------------------------------------
function amon_talk3 ()
	Talk( 1, "织女: 相聚短,思念长.悠悠鹊桥路,离人路,来人路.")


	--AddNpcMission ( 5740 )
	
end
---------------------------------------------------------
--							--
--							--
--		白银[校长雷诺]			--
--							--
--		2232,2781			--
----------------------------------------------------------
function dina_talk01 ()
	Talk( 1, "校长雷诺: 暑假已经过去，两个月的长假之后，迎来了新的学期。")

	AddNpcMission ( 6127 )
	AddNpcMission ( 6128 )
	AddNpcMission ( 6129 )
	AddNpcMission ( 6130 )
	AddNpcMission ( 6131 )

		
end
-----------------------------------------------------------
----							--
----							--
----		沙岚[昂莉娜老师]			--
----							--
----		871,3581			--
------------------------------------------------------------
function dina_talk02 ()
	Talk( 1, "昂莉娜老师: 新学期，新开始，学无止境~")
	
	InitTrigger()
	TriggerCondition( 1, HasMission, 1458)
	TriggerCondition( 1, NoRecord, 1458)
	TriggerCondition( 1, NoRecord, 1461)
	TriggerCondition( 1, HasItem, 579, 1)
	TriggerAction( 1, JumpPage, 2)
	TriggerAction( 1, SetTestTime )
	TriggerFailure( 1, JumpPage, 20)
	Text( 1, "参加入学考试",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 2, "问题一:假期欢乐杂志是否可交易?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "可交易",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "不可交易",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "问题二:NPC克拉拉大师在那个补给站?")

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	TriggerAction( 1, RenewTestTime2)
	Text( 3, "冰都补给站",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 4)
	Text( 3, "冰极补给站",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 4, "问题三:雷贝与项链能不能同时装备?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "可以",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "不可以",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 5, "问题四:幻影三城每天开放几次?")
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "2次",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "4次",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 6, "问题五:圣光石可以镶嵌在鞋子上吗?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "可以",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "不可以",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 7, "问题六:100级的猎鹰护卫舰的航速是多少?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "623",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "632",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 8, "问题七:海盗王的职业技能中有几种技能是需要消耗道具才能施展的?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "3种",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "4种",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "问题八:冰狼堡一共有几只冰雕的狼?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "9只",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "10只",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 12, "你确定你就这样回答这些问题吗?")

	TriggerAction( 1, SetRecord, 1461)
	TriggerAction( 1, JumpPage, 13)
	Text( 12, "我确定",MultiTrigger, GetMultiTrigger(), 1  )

	Text( 12, "让我再想想", CloseTalk )
	
	Talk( 13, "回答完了就可以找我还任务了哦,别忘了.")
	Text( 13, "好的", CloseTalk )

	Talk( 20, "想参加入学考试吗?你有入学证书吗?没的话自己去找雷诺校长办一张吧")

	AddNpcMission ( 6132 )
	AddNpcMission ( 6133 )
	AddNpcMission ( 6134 )
	AddNpcMission ( 6135 )
	AddNpcMission ( 6136 )


end
-----------------------------------------------------------
----							--
----							--
--		冰极[库拉托斯1]			--
--							--
--		2646,671			--
----------------------------------------------------------
function dina_talk03 ()
	Talk( 1, "库拉托斯:嘻嘻,猜猜那个才是真正的我!猜错了可是要被我赶回白银城的哦.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "我找你有事",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "原来是想找真正的库拉托斯啊,那你认为我是真正的库拉托斯吗?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 1)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "我猜你就是真正的库拉托斯",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "让我再想想", CloseTalk)

	Talk( 3, "你是谁?我又不认识你.")

	Talk( 4, "哎呀,被你抓住了,好吧好吧,把昂莉娜的信给我吧")

	AddNpcMission ( 6137 )

end

---------------------------------------------------------
--							--
--							--
--		冰极[库拉托斯2]			--
--							--
--		2718,586			--
----------------------------------------------------------
function dina_talk04 ()
	Talk( 1, "库拉托斯:嘻嘻,猜猜那个才是真正的我!猜错了可是要被我赶回白银城的哦.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "我找你有事",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "原来是想找真正的库拉托斯啊,那你认为我是真正的库拉托斯吗?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 2)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "我猜你就是真正的库拉托斯",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "让我再想想", CloseTalk)

	Talk( 3, "你是谁?我又不认识你.")

	Talk( 4, "哎呀,被你抓住了,好吧好吧,把昂莉娜的信给我吧")

	AddNpcMission ( 6137 )

end

---------------------------------------------------------
--							--
--							--
--		冰极[库拉托斯3]			--
--							--
--		2714,699			--
----------------------------------------------------------
function dina_talk05 ()
	Talk( 1, "库拉托斯:嘻嘻,猜猜那个才是真正的我!猜错了可是要被我赶回白银城的哦.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "我找你有事",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "原来是想找真正的库拉托斯啊,那你认为我是真正的库拉托斯吗?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 3)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "我猜你就是真正的库拉托斯",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "让我再想想", CloseTalk)

	Talk( 3, "你是谁?我又不认识你.")

	Talk( 4, "哎呀,被你抓住了,好吧好吧,把昂莉娜的信给我吧")

	AddNpcMission ( 6137 )
end

---------------------------------------------------------
--							--
--							--
--		冰极[库拉托斯4]			--
--							--
--		2609,607			--
----------------------------------------------------------
function dina_talk06 ()
	Talk( 1, "库拉托斯:嘻嘻,猜猜那个才是真正的我!猜错了可是要被我赶回白银城的哦.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "我找你有事",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "原来是想找真正的库拉托斯啊,那你认为我是真正的库拉托斯吗?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 0)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "我猜你就是真正的库拉托斯",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "让我再想想", CloseTalk)

	Talk( 3, "你是谁?我又不认识你.")

	Talk( 4, "哎呀,被你抓住了,好吧好吧,把昂莉娜的信给我吧")
	AddNpcMission ( 6137 )

end

-----------------------读书系统
function reading_talk01 ()

	Talk( 1 , "Tester: I am the tester in Argent City. I will assist you when taking tests. Put your Student Card in your bag before starting the tests.")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3279, 1 )
	TriggerCondition( 1, HasItem, 3289, 1 )
	TriggerAction( 1, checkcytime )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Hand in the Report Card.",  MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "What are requirements for taking tests?" , JumpPage , 5)

	Text( 1, "What are the tests like?", JumpPage , 6)

	Talk( 4, "Tester: There is no Student Card and no Report Card in your bag!")

	Talk( 5, "Tester: The requirements for taking tests are strict. You have to have a Student Cad in your bag.")

	Talk( 6, "Tester: You have to put your Student Card in your bag and then start the tests. After the tests are completed, you will be given a Report Card. I will reward you based on your grades.")

	AddNpcMission ( 112 )
end

function reading_talk02 ()
	Talk( 1, "Promotion Examination Officer: I am the Promoton Examination Officer in Icicle City. I sell test papers for the Promotion Examination.")

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasNoItem, 3280 )
	TriggerCondition( 1, HasNoItem, 3281 )
	TriggerCondition( 1, HasNoItem, 3282 )
	TriggerAction( 1, AddChaItem7)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "I want to take the test papers!",  MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, CheckKJNum )
	TriggerCondition( 1, HasItem, 3280, 1 )
	TriggerCondition( 1, HasItem, 3282, 1 )
	TriggerAction( 1 , AddChaItem8)
	TriggerAction( 1, TakeItem, 3282, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "I have completed the tests and want my Report Card!",  MultiTrigger, GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, HasItem, 3289, 1 )
	TriggerCondition( 1, HasItem, 3281, 1 )
	TriggerAction( 1, checksjtime )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Hand in the Report Card and find out your test results!",  MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "What are the requirements for taking the Promotion Examination?" , JumpPage , 5)

	Text( 1, "What is the Promotion Examination like?", JumpPage , 6)
	
	Talk( 2, "Promotion Examination Officer: You failed to meet the requirements and are unable to take the test. Review the requirements before taking the exam.")

	Talk( 3, "Promotion Examination Officer: You must have one test paper and one answer sheet to get your Report Card.")

	Talk( 4, "Promotion Examination Officer: You don't have a Report Card.")

	Talk( 5, "Promotion Examination Officer: Requirements for taking the Promotion Examination are strict. You must have one Student Card in your bag with full academic credits. Besides, you are not allowed to own any test papers, answer sheets of Report Cards.")

	Talk( 6, "Promotion Examination Officer: You have to take a test paper before starting the Promotion Examination. After completing the exam, you will be given an answer sheet to visit me, you will get your Report Card. I will reward you according to your grades.")
	
	AddNpcMission ( 6138 )

end


----------------------------------------------------------
--							--
--							--
--		沙岚城[教堂修女.梅拉达]			--
--							--
--		82271,353453				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function el_talk09 ()
	
	Talk( 1, "梅拉达:神爱世人,我以主的名义邀请你去圣地." )
	Text( 1, "关于教堂", JumpPage, 17)	

	Talk( 17, "梅拉达:你要租借教堂吗？今天正好有打折活动哦." )

	Text( 17, "征用教堂简介", JumpPage, 6)
	Text( 17, "教堂竞拍", ListAuction)
	Text( 17, "购买教堂参观门票", JumpPage,2 )
	Text( 17, "购买请柬", JumpPage, 5)




	InitTrigger()
	TriggerCondition( 1, HasMoney,5000 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction(1, GiveItem, 3024, 1 , 4)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4 )
	Talk(2, "梅拉达:神圣典雅的教堂是幸福开始的地方,是爱情庄严的见证.每周一晚17:00~17:10欢迎持票参观,每张参观门票只需5000游戏币")
	Text( 2, "确定购买",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "梅拉达:欢迎准时参观")
	Talk(4, "梅拉达:您身上似乎没有足够的金币啊!或者您的背包已锁定,请保证背包内留有一个空格")
	
	Talk( 5, "梅拉达:用教堂使用证书就可以购买对应教堂的请柬,每10枚请柬为1组,每组5万游戏币.邀请您的朋友参加聚会吧!" )
	Text( 5, "确定购买", ChangeItem, 1  )
	
	Talk( 6, "梅拉达:你想了解那一部分?" )
	Text( 6, "关于参观", JumpPage, 7)
	Text( 6, "关于教堂竞拍", JumpPage, 8)
	Text( 6, "关于教堂使用权", JumpPage, 9)
	Text( 6, "关于教堂使用证书", JumpPage, 10)

	Talk( 7, "梅拉达:购买参观门票的朋友于每周一晚17:00~17:10参观教堂.")
	Text( 7, "确定", CloseTalk)
	Text( 7, "返回", JumpPage, 6)

	Talk( 8, "梅拉达:竞拍时间:于每周一晚上18:00~20:30之间在我这里进行教堂竞拍.竞拍条件:携带教堂竞标卡1份.竞拍场次:教堂每星期出租两日,可承办四场典礼.星期六两场,礼拜天两场.每场2个小时,场次由竞拍时段决定.")
	Text( 8, "确定", CloseTalk)
	Text( 8, "返回", JumpPage, 6)

	Talk( 9, "梅拉达:共分4个时段竞拍,对应时段内出价最高的朋友将获得教堂使用权,为竞标成功者颁发教堂使用证书,还将赠送10枚请柬.")
	Text( 9, "确定", CloseTalk)
	Text( 9, "返回", JumpPage, 6)

	Talk( 10, "梅拉达:证书作用:凭该证书方可购买请柬;典礼时段内双击该证书进入教堂.在教堂使用证书上标示的时间后两小时,自动将所有在场人员传送回沙岚城.")
	Text( 10, "确定", CloseTalk)
	Text( 10, "返回", JumpPage, 6)
end 

----------------------------------------------------------
--							--
--							--
--		魔方1层兑换员[爱德华]			--
--							--
--		26600,23000			--
----------------------------------------------------------
function el_talk13 ()
	Talk( 1, "爱德华:千年的历史被岁月尘埃所埋葬,曾经团结而富饶的加纳大陆已不复存在.谁还记得卡拉女神万年前为她爱人所留下的点点冰泪!")
	Text( 1, "兑换神泣宝箱", JumpPage, 2)
	
	Talk( 2, "爱德华:千年冰泪是守卫爱人的寸寸相思,朋友!如若你有心窥探女神丰富的精神世界,请带上1个情之殇和1个纳卡符石来兑换这迷失的神泣宝藏吧!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3827, 1)              -------------情之殇
	TriggerCondition( 1, HasItem, 3457, 1)              --------------纳卡符石
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 3827, 1)
	TriggerAction(1, TakeItem, 3457, 1)
	TriggerAction(1, GiveItem, 0145, 1, 4)              ----------神泣宝箱
	TriggerFailure(1, JumpPage, 3)
	Text(2,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "朋友,神灵不容亵渎,如若你身上还未有情之殇和纳卡符石或是你的背包格已满,请安静的离开.")

end

----------------------------------------------------------
--							--
--							--
--		魔方2层兑换员[德鲁克]			--
--							--
--		26600,23000			--
----------------------------------------------------------
function el_talk14 ()
	Talk( 1, "德鲁克:嘿嘿,近来探寻大海盗王罗森遗留宝藏的人趋之若鹜,却不知魔方二层隐藏着一个惊天的秘密!这里的巨人首领身上流淌着摩尔克族人的血液,那些野蛮的家伙在分裂土地时,不知从王宫里盗了多少稀珍异宝!")
	
	Text( 1, "兑换霸王宝箱", JumpPage, 2)

	Talk( 2, "德鲁克:朋友,朋友!凶猛的魔尔克人没把你吓坏吧?什么?你说你有信心把他杀死?!真是佩服佩服!我妹妹最近在研制一柄火焰神器,急需这头巨人身上的1个巨人首领项链和1个纳卡符石做原料!如果你能把这两样东西找来,我将赠与你:我妹妹亲手锤炼的霸王宝箱,嘿嘿,里边的宝贝可是妹妹毕生收录的精华!!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3826, 1)             ------------巨人首领项链
	TriggerCondition( 1, HasItem, 3457, 1)             ------------纳卡符石
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 3826, 1)
	TriggerAction(1, TakeItem, 3457, 1)
	TriggerAction(1, GiveItem, 0146, 1, 4)              ----------霸王宝箱
	TriggerFailure(1, JumpPage, 3)
	Text(2,"确认兑换", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "哎呀哎呀,你竟然还没收集到巨人首领项链和纳卡符石或是你背包太满了!那赶紧逃吧!!!摩尔克族巨人发起火来可是十分凶悍喔!")

end


---------------------------------------------------------
--							--
--							--
--		白银[魔法师夏天]			--
--							--
--		2229,2782			--
----------------------------------------------------------
function el_talk15 ()
	Talk( 1, "魔法师夏天: 我的朋友裴梦被魔王洛克残忍的杀害了。勇敢的战士,如果你能够为我找回代表我朋友灵魂的七个字母P-E-I-M-E-N-G。我将会把我收藏多年的魔法盒送给你。")
	
	Text( 1, "我想给我的戒指赋予魔力", JumpPage, 2)

	AddNpcMission ( 6139 )
	AddNpcMission ( 6161 )
	AddNpcMission ( 6166 )
		
	Talk( 2, "魔法师说道:请找到你的情人，并组好队伍，然后高声歌唱《找个好人就嫁了吧》。")
	InitTrigger()                                        
	TriggerCondition(1, HasItem, 2521, 1)               ---------商城买的情人节戒指 
	TriggerCondition(1, ValentinesRingJudge)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, ValentinesRing)
	TriggerFailure(1, JumpPage, 3)
	Text(2,"找个好人就嫁了吧,虽然不是我心里话……", MultiTrigger, GetMultiTrigger(), 1) 	
	Talk( 3, "哪里出问题了？检查一下条件是否满足吧")
	Text(3, "回到上一页", JumpPage, 2)
end


---------------------------------------------------------
--							--
--							--
--		加纳圣林[洛克家的守门人]			--
--							--
--		271，1775			--
----------------------------------------------------------
function el_talk16 ()
	
	Talk( 1, "洛克家的守门人: 我是洛克大人的忠实家仆,虽然他很残忍,但是这并不妨碍我欣赏他的能力和身材.")
	Text( 1, "我要去寂寞之塔1层！", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMission,1213 )
	TriggerAction( 1, GoTo, 352, 378, "lonetower")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "洛克家的守门人:寂寞之塔之所以寂寞是因为没有几个活人" )
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 1 )


	Talk( 3, "洛克家的守门人:朋友你还没接 守门人透露的信息 这个任务吧?" )
	AddNpcMission ( 6140 )
	
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔1层[洛克家的男佣]			--
--							--
--		260,257			--
----------------------------------------------------------
function el_talk17 ()
	Talk( 1, " 洛克家的男佣: 众所周知,一目了然,我比洛克帅,为什么他的情人们不这样想......")
	Text( 1, "我要去圣林！", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, 275, 1775, "garner")
	Talk( 2, "洛克家的男佣:有空常来玩,孤独的时候、快乐的时候和不知道是否快乐的时候..." )
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 1 )

	AddNpcMission ( 6141 )
	AddNpcMission ( 6142 )
	AddNpcMission ( 6143 )
	
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔2层[洛克家的女佣]			--
--							--
--		151，134			--
----------------------------------------------------------
function el_talk18 ()
	Talk( 1, "洛克家的女佣: 作为一个女佣不能不关注自己主人的私生活,否则日子会更加无聊.")


	AddNpcMission ( 6144 )
	AddNpcMission ( 6145 )
	AddNpcMission ( 6146 )
	
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔3层[洛克家的小秘]			--
--							--
--		63，311			--
----------------------------------------------------------
function el_talk19 ()
	Talk( 1, " 洛克家的小秘: 我知道我漂亮,不要垂涎我.")


	AddNpcMission ( 6147 )
	AddNpcMission ( 6148 )
	AddNpcMission ( 6149 )
	
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔4层[洛克家的守护者]			--
--							--
--		261，70			--
----------------------------------------------------------
function el_talk20 ()
	Talk( 1, "洛克家的守护者: 守护者是用来尊敬的.洛克什么时候才能明白这个道理呢")


	AddNpcMission ( 6150 )
	AddNpcMission ( 6151 )
	AddNpcMission ( 6152 )
	
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔5层[洛克家的管家]			--
--							--
--		542，54			--
----------------------------------------------------------
function el_talk21 ()
	Talk( 1, "洛克家的管家: 管家管家,主人不管就是我的家.")


	AddNpcMission ( 6153 )
	AddNpcMission ( 6154 )
	AddNpcMission ( 6155 )
end

---------------------------------------------------------
--							--
--							--
--		寂寞之塔6层[魔王洛克的情人]			--
--							--
--		541，268			--
----------------------------------------------------------
function el_talk22 ()
	Talk( 1, "魔王洛克的情人: 我可能不是Rock最美丽的情人,但一定是最花心的一个.")


	AddNpcMission ( 6156 )
	AddNpcMission ( 6157 )
	AddNpcMission ( 6158 )
	
end

---------------------------------------------------------
--							--
--							--
--		地狱4层[洛克家的旺财]			--
--							--
--		154,912			--
----------------------------------------------------------
function el_talk23 ()
	Talk( 1, "洛克家的旺财: 汪汪汪汪汪汪汪...你汪,我汪,大家汪!")


	AddNpcMission ( 6159 )
	AddNpcMission ( 6160 )

end

---------------------------------------------------------
--							--
--							--
--		秋岛[秋岛导游小姐]			--
--							--
--		2423,3186			--
----------------------------------------------------------
function el_talk24 ()
	Talk( 1, "Stranger! This is not a really good place for someone to stay. It's too dangerous.")


	AddNpcMission ( 6162 )
	AddNpcMission ( 6163 )
	AddNpcMission ( 6164 )
	AddNpcMission ( 6165 )
	AddNpcMission (	7925)
	AddNpcMission (	7926)
	AddNpcMission (	7927)
	AddNpcMission (	7928)
	AddNpcMission (	7929)
	AddNpcMission (	7930)
	AddNpcMission (	7931)
	AddNpcMission (	7932)
	
end

---------------------------------------------------------
--							--
--							--
--		冰狼[礼品派送专员]			--
--							--
--		1307,500			--
----------------------------------------------------------
function pre_talk()
	Talk( 1, "Hello, I'm the Gift Giver who gave you the rewards. Hope you a good time.")
	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1872 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1872, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "To get Fairy Coin Chest", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1570 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1570, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Receive Fary Seal Chest", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1571 )
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1571, 1, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Draw Fairy Lord's Seal Chest", MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 2, "Either you already have a chest of this type, or your bag is too full to put the chest in.")
end

-----------------------------------------------------------------------------
-- 白银城-----四艘小尖刀号、珊瑚号、巨鲸号（配合程序修改的船舱非法道具问题）
-----------------------------------------------------------------------------

function k_talk001()

	Talk( 1, "... ..." )

end


---------------------------------------------------------
--							--
--							--
--		夏岛[西门庆]			--
--							--
--		3734，2661			--
----------------------------------------------------------
function el_talk25 ()
	Talk( 1, "西门庆: 西门我其实是个正经人,爱一个人有什么错?如果有来生,我希望在所有男人之前遇到她.")

---------------------秋岛开发
	AddNpcMission ( 6176 )
	AddNpcMission ( 6178 )
	AddNpcMission ( 6181 )
	AddNpcMission ( 6183 )
	
end

---------------------------------------------------------
--							--
--							--
--		夏岛传送使·艾蒙			--
--							--
--		3714，2664			--
----------------------------------------------------------
function el_talk26 ()
	Talk( 1, " 夏岛传送使·艾蒙: 因为我爱上旅行,所以我做了传送使,送别人去旅行.")
	Text( 1, "我要去秋岛!", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, 2414,3174, "darkblue")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "夏岛传送使·艾蒙:时刻享受人生的美景..." )
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "夏岛传送使·艾蒙:朋友,你好歹也带500块出门啊!否则别人会认为你没面子" )
end

----------------------------------------------------------

	--圣诞村[斐谢特]		

--		221150,278125				
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function el_talk29 ()
	
	
	Talk( 1, "斐谢特:圣诞快乐!华丽温馨的圣诞节怎么可以没有美味的圣诞宴呢?" )		

	
	Text(1, "烹调美味的火鸡肉", JumpPage, 2)
	Text(1, "烹调圣诞大餐", JumpPage, 5)
	
	
---------------------烹调美味的火鸡肉
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4)
	Talk( 2, "斐谢特:我需要原材料10个火鸡肉,当然你还要支付给我10000海盗币的辛苦费")
	Text(2, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "斐谢特:这是我精心烹调的美味火鸡肉,赶快尝尝,味道怎么样?" )

	Talk( 5, "斐谢特:做圣诞大餐喽,每人只限三次哦!")
	Text(5, "第一次烹制圣诞大餐",  JumpPage, 6)
	Text(5, "第二次烹制圣诞大餐",  JumpPage, 7)
	Text(5, "第三次烹制圣诞大餐", JumpPage, 8)
	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 9 )
	Talk( 6, "要做圣诞大餐可不容易,我需要原材料10个美味的火鸡肉和1个圣诞玫瑰佐料,圣诞玫瑰佐料好像在商城能够找到,当然除了以上几点你还要支付给我10000海盗币的辛苦费,而且只能为每人做3次")
	Text( 6, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk(7, "又来做圣诞大餐?我需要原材料10个美味的火鸡肉和1个圣诞玫瑰佐料,圣诞玫瑰佐料好像在商城能够找到,当然除了以上几点你还要支付给我1百万海盗币的辛苦费,而且只能为每人做3次")
	Text( 7, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------烹调圣诞大餐
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage,11 )
	Talk(8, "又来做圣诞大餐?我需要原材料10个美味的火鸡肉和1个圣诞玫瑰佐料,圣诞玫瑰佐料好像在商城能够找到,当然除了以上几点你还要支付给我1千万海盗币的辛苦费,而且只能为每人做3次")
	Text( 8, "确定烹制",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 9, "斐谢特:您身上似乎没有足够用来烹制的物品或金钱啊!您的背包至少要有一个空格哦.你确定是第一次做圣诞大餐吗?只能做3次.")
	Talk( 10, "斐谢特:您身上似乎没有足够用来烹制的物品或金钱啊!您的背包至少要有一个空格哦.你确定是第二次做圣诞大餐吗?只能做3次哦.")
	Talk( 11, "斐谢特:您身上似乎没有足够用来烹制的物品或金钱啊!您的背包至少要有一个空格哦.你确定是第三次做圣诞大餐吗?只能做3次哦.")
	Talk( 4, "斐谢特:您身上似乎没有足够用来烹制的物品或金钱啊!请确保您的背包未锁定,并且至少要有一个空格哦.")
	Talk(12, "斐谢特:这是我精心烹调的圣诞大餐,赶快尝尝,味道怎么样?" )
	AddNpcMission ( 6191 )
end 

------------------------------------------------------------
-- 圣诞村-----圣诞老人的洗衣机
------------------------------------------------------------
function el_talk30()
	
	InitFuncList()
	AddFuncList( GiveItem,	0817	,	1	,	4)
	AddFuncList( GiveItem,	0818	,	1	,	4)
	AddFuncList( GiveItem,	0819	,	1	,	4)
	AddFuncList( GiveItem,	0867	,	1	,	4)
	AddFuncList( GiveItem,	0868	,	1	,	4)
	AddFuncList( GiveItem,	0869	,	1	,	4)
	AddFuncList( GiveItem,	0872	,	1	,	4)
	AddFuncList( GiveItem,	0873	,	1	,	4)
	AddFuncList( GiveItem,	0874	,	1	,	4)
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "圣诞快乐!这是一台古老的清洗机,在这里可以洗涤你的一切,你需要清洗么?每次200G." )
	Text( 1, "清洗污泥", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "清洗圣诞盒子", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "哇!好脏的盒子!清洗这么脏的盒子必须支付10000海盗币" )
	Text( 3, "确定清洗", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "好漂亮的盒子!打开会有惊喜吧" )
	Talk( 2, "清洗失败,没有支付足够的金钱或者没有需要清洗的物品" )
	AddNpcMission ( 6195 )
end


---------------------------------------------------------
--							--
--							--
--		冰狼堡[圣诞老人麦瑞]			--
--							--
--		（1216，550）			--
----------------------------------------------------------
function el_talk27 ()
	Talk( 1, "麦瑞: 圣诞快乐!愿你得到世上最真挚美好的祝福.想要拿到最诱人的圣诞礼物吗?去商城买一张圣诞护送资格证你就可以在我这里接取护送圣诞老人的任务了.")
	--------------护送圣诞老人
	AddNpcMission	(6185)
end


---------------------------------------------------------
--							--
--							--
--		冰极补给站[圣诞老人克瑞斯莫斯]		--
--							--
--		（2111，557）			--
----------------------------------------------------------
function el_talk28 ()
	Talk( 1, "克瑞斯莫斯: 圣诞快乐!你听说过圣诞村吗?那是一个充满快乐的天堂.")
	--------------护送圣诞老人
	AddNpcMission	(6186)

end

---------------------------------圣诞商人行会会长
function Xmas_talk01 ()
	Talk( 1, "圣诞商人行会会长:Merry Christmas~我为这个美丽的圣诞节准备了很多的货物哦,你有兴趣想看一下吗?")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了,我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "冰之力", JumpPage , 3)
	Text( 2, "雷之力", JumpPage , 4)
	Text( 2, "风之力", JumpPage , 5)
	Text( 2, "炎之力", JumpPage , 6)
	Text( 2, "雄狮药剂", JumpPage , 7)
	Text( 2, "鹰眼药剂", JumpPage , 8)
	Text( 2, "灵猴药剂", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "蛮牛药剂", JumpPage, 11)
	Text( 10, "圣灵药剂", JumpPage, 12)
	Text( 10, "28格背包", JumpPage, 13)
	Text( 10, "摩豆小子", JumpPage, 14)
	Text( 10, "组队经验果", JumpPage, 15)
	Text( 10, "替身宝宝", JumpPage, 16)
	Text( 10, "下一页", JumpPage , 17)

	Talk( 17, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 17, "上一页", JumpPage , 10)
	Text( 17, "初级精灵自爆", JumpPage, 18)
	Text( 17, "加速成长果", JumpPage, 19)
	Text( 17, "圣诞老人的馈赠", JumpPage, 20)

	Talk( 3, "兑换冰之力的话总共需要面额250W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 4, "兑换雷之力的话总共需要面额250W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换风之力的话总共需要面额250W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换炎之力的话总共需要面额250W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换雄狮药剂的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 897, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换鹰眼药剂的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 894, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换灵猴药剂的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 893, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换蛮牛药剂的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 895, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换圣灵药剂的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 896, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换28格背包的话总共需要面额1000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 3088, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换摩豆小子的话总共需要面额1000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 680, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "兑换组队经验果的话总共需要面额80W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "兑换替身宝宝的话总共需要面额55W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "兑换初级精灵自爆的话总共需要面额500W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 500 )
	TriggerAction( 1, GiveItem, 610, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 19, "兑换加速成长果的话总共需要面额20W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 578, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "兑换圣诞老人的馈赠的话总共需要面额2000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 2877, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
end

-------------------------------------------------------------------圣诞杂货商A
function Xmas_talk02 ()
	Talk( 1, "圣诞杂货商:圣诞节到拉~我为这个温馨的圣诞准备了很多货物,有兴趣看一下吗?你肯定会喜欢的!")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了，我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "高级伐木斧", JumpPage , 3)
	Text( 2, "高级矿镐", JumpPage , 4)
	Text( 2, "高级项链兑换券", JumpPage , 5)
	Text( 2, "高级贝壳兑换券", JumpPage , 6)
	Text( 2, "迷之锁", JumpPage , 7)
	Text( 2, "高级充电电池", JumpPage , 8)
	Text( 2, "气球游戏券", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "豪华礼花", JumpPage, 11)
	Text( 10, "菊型礼花", JumpPage, 12)
	Text( 10, "花球", JumpPage, 13)
	Text( 10, "金苹果", JumpPage, 14)
	Text( 10, "智慧果", JumpPage, 15)
	Text( 10, "神算草", JumpPage, 16)
	Text( 10, "邪恶土著酋长召唤券", JumpPage , 17)

	Talk( 3, "兑换高级伐木斧的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 207, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "兑换高级矿镐的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 208, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换高级项链兑换券的话总共需要面额1000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 581, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换高级贝壳兑换券的话总共需要面额1000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 582, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换迷之锁的话总共需要面额15W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 2440, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换高级充电电池的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1024, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换气球游戏券的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3083, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换豪华礼花的话总共需要面额9W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3082, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换菊型礼花的话总共需要面额9W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3081, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换花球的话总共需要面额15W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 3080, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换金苹果的话总共需要面额50W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 3291, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "兑换智慧果的话总共需要面额20W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3290, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "兑换神算草的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3336, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "兑换邪恶的土著酋长召唤券的话总共需要面额2000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3013, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
	AddNpcMission ( 6197 )
end

-------------------------------------------------------------------圣诞杂货商B
function Xmas_talk03 ()
	Talk( 1, "圣诞礼品商:Merry Christmas~我为这个美丽的圣诞节准备了很多的货物哦,你有兴趣想看一下吗?")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了,我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "海盗船长零零发召唤券", JumpPage , 3)
	Text( 2, "蜥蜴战士统领召唤券", JumpPage , 4)
	Text( 2, "组队经验果", JumpPage , 5)
	Text( 2, "替身宝宝", JumpPage , 6)
	Text( 2, "高级怪物契约", JumpPage , 7)
	Text( 2, "中级怪物契约", JumpPage , 8)
	Text( 2, "初级怪物契约", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "石材催化剂", JumpPage, 11)
	Text( 10, "液体催化剂", JumpPage, 12)
	Text( 10, "食材催化剂", JumpPage, 13)
	Text( 10, "特殊催化剂", JumpPage, 14)
	Text( 10, "骨头催化剂", JumpPage, 15)
	Text( 10, "植物催化剂", JumpPage, 16)
	Text( 10, "毛皮催化剂", JumpPage , 17)

	Talk( 3, "兑换海盗船长零零发召唤券的话总共需要面额2000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3014, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "兑换蜥蜴战士统领召唤券的话总共需要面额2000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3012, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换组队经验果的话总共需要面额80W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换替身宝宝的话总共需要面额55W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换高级怪物契约的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 2607, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换中级怪物契约的话总共需要面额200W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 200 )
	TriggerAction( 1, GiveItem, 2606, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换初级怪物契约的话总共需要面额60W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 60 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 60 )
	TriggerAction( 1, GiveItem, 2605, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换石材催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2625, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换液体催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2638, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换食材催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2630, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换特殊催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2634, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "兑换骨头催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2635, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "兑换植物催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2636, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "兑换毛皮催化剂的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2637, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
end
-------------------------------------------------------------------圣诞商人·我行我酷
function Xmas_talk04 ()
	Talk( 1, "圣诞商人·我行我酷:来来来,买了我的东西今年的圣诞节你将无比幸福,不要犹豫啦,来看下吧~")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了,我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "圣诞情人烟花", JumpPage , 3)
	Text( 2, "圣诞狂欢烟花", JumpPage , 4)
	Text( 2, "心型I", JumpPage , 5)
	Text( 2, "心型LOVE", JumpPage , 6)
	Text( 2, "心型U", JumpPage , 7)
	Text( 2, "心型我", JumpPage , 8)
	Text( 2, "心型爱", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "心型你", JumpPage, 11)
	Text( 10, "玫瑰花", JumpPage, 12)
	Text( 10, "黑魔翅膀", JumpPage, 13)
	Text( 10, "甜蜜巧克力", JumpPage, 14)

	Talk( 3, "兑换圣诞情人烟花的话总共需要面额180W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 180 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 180 )
	TriggerAction( 1, GiveItem, 2870, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "兑换圣诞狂欢烟花的话总共需要面额1000W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 2871, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换心型I的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3354, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换心型LOVE的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3355, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换心型U的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3356, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换心型我的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3359, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换心型爱的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3357, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换心型你的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3358, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换玫瑰花的话总共需要面额20W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3343, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换黑魔翅膀的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 906, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换甜蜜巧克力的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3077, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
	AddNpcMission ( 6199 )
end

-------------------------------------------------------------------圣诞商人·我酷我行
function Xmas_talk05 ()
	Talk( 1, "圣诞商人·我酷我行:你好呀,圣诞快乐!我很酷是吧,我的东西比我更酷,来看下吧~")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了,我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "青蝠翅膀", JumpPage , 3)
	Text( 2, "精灵之翼", JumpPage , 4)
	Text( 2, "红龙翅膀", JumpPage , 5)
	Text( 2, "<技·白痴>技能书", JumpPage , 6)
	Text( 2, "<技·鄙视>技能书", JumpPage , 7)
	Text( 2, "<技·大便>技能书", JumpPage , 8)
	Text( 2, "<技·金钱雨>技能书", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "<技·内裤>技能书", JumpPage, 11)
	Text( 10, "<技·骗子>技能书", JumpPage, 12)
	Text( 10, "<技·傻子>技能书", JumpPage, 13)
	Text( 10, "<技·胸罩>技能书", JumpPage, 14)

	Talk( 3, "兑换青蝠翅膀的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 904, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "兑换精灵之翼的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 935, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换红龙翅膀的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 905, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换<技·白痴>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1130, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换<技·鄙视>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1131, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换<技·大便>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1037, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换<技·金钱雨>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1129, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换<技·内裤>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1038, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换<技·骗子>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1132, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换<技·傻子>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1133, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换<技·胸罩>技能书的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1039, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
end

-------------------------------------------------------------------圣诞商人·学者
function Xmas_talk06 ()
	Talk( 1, "圣诞商人·学者:Merry Christmas~我为这个美丽的圣诞节准备了很多的货物哦,你有兴趣想看一下吗?")
	Text( 1, "让我看看你这有什么好东西吧." , JumpPage , 2 )
	Text( 1, "算了,我没空看", CloseTalk )

	Talk( 2, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 2, "航海士高级读物", JumpPage , 3)
	Text( 2, "封印师高级读物", JumpPage , 4)
	Text( 2, "圣职者高级读物", JumpPage , 5)
	Text( 2, "狙击手高级读物", JumpPage , 6)
	Text( 2, "巨剑士高级读物", JumpPage , 7)
	Text( 2, "双剑士高级读物", JumpPage , 8)
	Text( 2, "航海士中级读物", JumpPage , 9)
	Text( 2, "下一页", JumpPage , 10)

	Talk( 10, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 10, "上一页", JumpPage , 2)
	Text( 10, "封印师中级读物", JumpPage, 11)
	Text( 10, "圣职者中级读物", JumpPage, 12)
	Text( 10, "狙击手中级读物", JumpPage, 13)
	Text( 10, "巨剑士中级读物", JumpPage, 14)
	Text( 10, "双剑士中级读物", JumpPage, 15)
	Text( 10, "魔力催化", JumpPage, 16)
	Text( 10, "下一页", JumpPage , 17)

	Talk( 17, "我这里的规矩和别的地方可不一样哦,只可以使用圣诞硬币来购买.")
	Text( 17, "上一页", JumpPage , 10)
	Text( 17, "海草清除剂", JumpPage, 18)
	Text( 17, "寒冰水晶", JumpPage, 19)
	Text( 17, "动力帆", JumpPage, 20)
	Text( 17, "冰灵护佑", JumpPage, 21)
	Text( 17, "魔法草", JumpPage, 22)

	Talk( 3, "兑换航海士高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3272, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "兑换封印师高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3271, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "兑换圣职者高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "兑换狙击手高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "兑换巨剑士高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "兑换双剑士高级读物的话总共需要面额120W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "兑换航海士中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3266, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "兑换封印师中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3265, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "兑换圣职者中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3264, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "兑换狙击手中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3263, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "兑换巨剑士中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3262, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "兑换双剑士中级读物的话总共需要面额100W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3261, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "兑换魔力催化的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3300, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "兑换海草清除剂的话总共需要面额25W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 25 )
	TriggerAction( 1, GiveItem, 3114, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 19, "兑换寒冰水晶的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3463, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "兑换动力帆的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3046, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 21, "兑换冰灵护佑的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3301, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 22, "兑换魔法草的话总共需要面额10W的圣诞硬币哦")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3462, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 22, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "谢谢你的光顾,祝你圣诞愉快!")

	Talk( 26, "你背包内好象没有足够的圣诞硬币哦,也有可能你的背包没空格或背包已锁.")
end

----------------------------------------------------圣诞村科恩
function Xmas_talk07 ()
	Talk ( 1, "我讨厌这圣洁雪白的冬天.朋友，为什么不抛弃这些无聊的庆祝活动出去杀戮一番呢?白银,冰狼和沙岚城外有许多的火鸡,麋鹿和雪人,去干掉他们,然后把证据带回来，我不会亏待你的.")
--	Text ( 1, "我带来了一百个火鸡的羽毛", JumpPage, 2)
--	Text ( 1, "我带来了一百个麋鹿的尖角", JumpPage, 3)
--	Text ( 1, "我带来了一百个雪人的眼球", JumpPage, 4)
	Text ( 1, "我想去圣诞竞技场", JumpPage, 5)
	Text ( 1, "为什么我们要杀戮这些可怜的怪物呢?", JumpPage, 10)

--	Talk ( 2, "你确定要用这一百个火鸡的羽毛跟我换一个圣诞礼盒吗?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2879, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2879, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpHuojiNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 2, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 3, "你确定要用这一百个麋鹿的尖角跟我换一个圣诞礼盒吗?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2881, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2881, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpMiluNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 3, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 4, "你确定要用这一百个雪人的眼球我换一个圣诞礼盒吗?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2880, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2880, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpXuerenNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 4, "确定兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "我们一共有5个竞技场,你想去哪一个呢?")
	Text ( 5, "圣诞竞技场A", GoTosdBoss, 1 )
	Text ( 5, "圣诞竞技场B", GoTosdBoss, 2 )
	Text ( 5, "圣诞竞技场C", GoTosdBoss, 3 )
	Text ( 5, "圣诞竞技场D", GoTosdBoss, 4 )
	Text ( 5, "圣诞竞技场E", GoTosdBoss, 5 )

	Talk ( 6, "祝你有个快乐的圣诞")

	Talk ( 7, "你背包内好象没有足够的道具哦,也有可能你的背包已锁或者背包内没有空格.")

	Talk ( 10, "告诉你个秘密,如果你们能上缴足够数量的供品给我,那么我就能在圣诞竞技场中召唤出极其强大的黑暗BOSS,不过怎么才能击败它们就是你们该考虑的事啦!")

	AddNpcMission ( 6187 )
	AddNpcMission ( 6188 )
	AddNpcMission ( 6189 )
	AddNpcMission ( 6193 )
	AddNpcMission ( 6204 )
end

----------------------------------------------------圣诞村圣诞老人
function Xmas_talk08 ()
	Talk ( 1, "圣诞老人:呵呵~圣诞快乐~~我这里可以为大家兑换圣诞村专用的购物硬币,如果你想在这个圣诞村里Shopping的话那就找我好了.")

	Text ( 1, "我想兑换圣诞万元硬币", JumpPage, 2)
	Text ( 1, "我想兑换圣诞百万元硬币", JumpPage, 3)
	Text ( 1, "我想把圣诞万元硬币兑换回海盗币", JumpPage, 4)
	Text ( 1, "我想把圣诞百万元硬币兑换回海盗币", JumpPage, 5)
	Text ( 1, "我想回冰狼堡", JumpPage, 6)

	Talk ( 2, "兑换一个圣诞万元硬币需要10000的海盗币,你确认要兑换吗?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2962, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 2, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 3, "兑换一个圣诞百万元硬币需要100W的海盗币,你确认要兑换吗?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, GiveItem, 2963, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 3, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 4, "你确定要把圣诞万元硬币换成10000海盗币吗?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2962, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2962,1 )
	TriggerAction( 1, AddMoney, 10000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 4, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "你确定要把圣诞百万元硬币换成100W海盗币吗?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2963, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2963,1 )
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 5, "确认兑换", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerAction( 1, GoTo, 1318,510, "darkblue")
	Talk( 6, "你确定要离开这里回到冰狼堡吗?")
	Text( 6, "开始传送",MultiTrigger, GetMultiTrigger(), 1 )

	Talk ( 9, "祝你有个快乐的圣诞节~")
	Talk ( 10, "你的钱不够哦,也有可能你的背包已锁定或者没有足够的空格.")
	Talk ( 11, "你没有此道具,也有可能你的背包已锁定.")
	AddNpcMission ( 6201 )
	AddNpcMission ( 6202 )
end

-----------------------------------------冰狼堡圣诞村传送使
function movexmas_talk()
	Talk ( 1, "圣诞村传送使:Merry Christmas~想去圣诞村吗？想去你就说啊,你不说我怎么知道呢?不可能说你不想去我偏偏送你去,也不可能你想去我偏偏不送你的!")
	Text ( 1, "我想去圣诞村", JumpPage, 2)
	Text ( 1, "这人好罗嗦,我还是走了", CloseTalk)


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, 144,136, "07xmas" )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, 144,136, "07xmas")
	TriggerFailure( 2, JumpPage, 3 )
	Talk( 2, "美丽的圣诞村现在正在开放期间,只要支付区区500海盗币我就可以送你过去,如果你是10级以下的新手的话我可以免费为你服务哦.")
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 2 )

	Talk( 3, "圣诞村传送使:没钱吗?那很抱歉不能为你服务了哦.")
	AddNpcMission ( 6190 )
	AddNpcMission ( 6192 )
	AddNpcMission ( 6194 )
	AddNpcMission ( 6196 )
	AddNpcMission ( 6198 )
	AddNpcMission ( 6200 )
end

---------------------------------------圣诞竞技场传送使
function movexmas_talk01 ()
	Talk ( 1, "圣诞快乐~你想回到圣诞村吗?不再多玩会了吗?那好,我这里的服务可是全免费的哦!")
	Text ( 1, "我想回圣诞村", JumpPage, 2)


	InitTrigger()
	TriggerAction( 1, GoTo, 144,136, "07xmas")
	Talk( 2, "准备好了吗?.")
	Text( 2, "开始传送",MultiTrigger, GetMultiTrigger(), 1 )
end

-------------------------------------以下为土著狂欢者--------bragi
function Xmas_talk09 ()
	Talk ( 1, "圣诞篝火在欢快的跳动着~")
	AddNpcMission ( 6203 )
end

function Xmas_talk10 ()
	Talk ( 1, "土著狂欢者:为了这美丽欢乐的节日,来和我们一起围着篝火跳舞吧!")
end

function Xmas_talk11 ()
	Talk ( 1, "土著狂欢者:雪花...舞蹈...篝火...火鸡...雪人...圣诞树...礼物...还有比这更完美的圣诞节吗?")
end

function Xmas_talk12 ()
	Talk ( 1, "土著狂欢者:还是围着篝火比较暖和啊!朋友，要不要来一起烤会火,跳个舞呢?")
end

function Xmas_talk13 ()
	Talk ( 1, "土著狂欢者:我还是觉得我的舞姿才是最棒的，你不这样认为吗?")
end

function Xmas_talk14 ()
	Talk ( 1, "土著狂欢者:今天的晚餐是什么呢?会有香喷喷的火鸡吗?好想念妈妈的手艺啊.")
end

function Xmas_talk15 ()
	Talk ( 1, "土著狂欢者:虽然不太喜欢这寒冷的天气,不过圣诞节的氛围真好啊!好开心啊!")
end

-------------------------------------以下为小动物群------bragi
function Xmas_talk16 ()
	Talk ( 1, "小鹿斑比:没来过圣诞村么?你真落伍,告诉你哈,圣诞村中间有棵很大的圣诞树,传说对这圣诞树许愿是很灵验的.快去试试吧~~~!哈哈,祝你圣诞快乐!")
end

function Xmas_talk17 ()
	Talk ( 1, "冰龙萨菲拉:别挤我啊!小心我发火揍你们哦!")
end

function Xmas_talk18 ()
	Talk ( 1, "小吉米:喂喂,别挡住我嘛,我也想要一份礼物!就一份,可以吗?")
end

function Xmas_talk19 ()
	Talk ( 1, "快乐的雪娃娃:波尔先生!你的口袋里都装了些什么啊?有甜甜的糖果吗?有漂亮的玩具吗?")
end

function Xmas_talk20 ()
	Talk ( 1, "小猫辛丝:叮叮当,叮叮当,铃儿响叮当~~~!哈哈.今年一定是个快乐的圣诞节,告诉你个秘密哦.据说圣诞节当天午夜12点的时候,神秘的逆转圣诞村入口会出现在村里.别忘了去看看哦~~记得多穿点.")
end

function Xmas_talk21 ()
	Talk ( 1, "飞熊猫派达:有巧克力味道的竹笋吗?给我一些!!")
end

function Xmas_talk22 ()
	Talk ( 1, "小路易丝:圣诞节咯!!你们看,这是我妈妈帮我新买的海军帽子,很漂亮吧!")
end

function Xmas_talk23 ()
	Talk ( 1, "波尔先生:好的好的孩子们,我这准备了很多礼物,每个人都会有的,不要挤哦!")
end

function Xmas_talk24 ()
	Talk ( 1, "小汤姆:有谁愿意和我一起去打雪仗的吗?不过先说好,我要做将军!!!终有一天我会超过科恩的,带着火鸡羽毛去找他证明我的实力,就是在圣诞村中下方喷泉上面的那个家伙.")
	AddNpcMission ( 6205 )
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[呆呆的呆呆]			--
--							--
--		3901, 4301			--
----------------------------------------------------------
function peter_talk01 ()
	Talk( 1, "呆呆的呆呆: 别看我叫呆呆，其实我一点也不呆，我的智商可是高达180哦！")

end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[游客·伊玛]			--
--							--
--		10802, 5602             		--
----------------------------------------------------------
function peter_talk02 ()
	Talk( 1, "游客·伊玛:过节的时候,放下所有的纷扰,来这里和大家一起过圣诞,是我一年中最轻松的事,嘘,不要告诉别人我是谁,一会我还要去扮成圣诞老人发奖品呢,到时候看你能不能认出我来,哈哈哈。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[西林的爸爸]		--
--							--
--		11803, 6103			        --
----------------------------------------------------------
function peter_talk03 ()
	Talk( 1, "西林的爸爸:告诉你的爸爸,就说我说的,圣诞节该给孩子们零花钱,因为你总买不全所有他们爱吃的糖果,当然,还有一句,看好自己的孩子,瞧,我的西林就跟丢了。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[游客·温努]			--
--							--
--		5904, 4704			--
----------------------------------------------------------
function peter_talk04 ()
	Talk( 1, "游客·温努: 嗨!圣诞快乐,你一定和我一样是来这里过圣诞的吧?哈哈,快去找圣诞商人,他们有好多很炫的东西呢!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[哈根大叔]			--
--							--
--		3001 ，11701			--
----------------------------------------------------------
function peter_talk05 ()
	Talk( 1, "哈根大叔: 哈哈!哈哈!圣诞节啊。哈哈,我一开心就只会`哈哈`哈哈哈。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[嘻哈小子]			--
--							--
--		7031, 4902			--
----------------------------------------------------------
function peter_talk06 ()
	Talk( 1, "嘻哈小子: come on!圣诞你该怎么炫?戴起墨镜来装酷?不不不,让我告诉你,穿一套圣诞老人的衣服才酷。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[卡利米船长]			--
--							--
--		3101, 11901			--
----------------------------------------------------------
function peter_talk07 ()
	Talk( 1, "卡利米船长: 你怀疑海上的孩子们收不到圣诞礼物?放心,圣诞老人会让孩子都满意的!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[船员艾尼]			--
--							--
--		4401, 8401			--
----------------------------------------------------------
function peter_talk08 ()
	Talk( 1, "船员艾尼: 船长真是大发慈悲了,往年的圣诞节我只能漂啊漂啊,这次终于带我来这里参加圣诞聚会了!太高兴了。")
end


--------------------------------------------------------
--							--
--							--
--		圣诞岛[上尉卡里]			--
--							--
--		25801, 23101			--
----------------------------------------------------------
function peter_talk09 ()
	Talk( 1, "上尉卡里: 这里的节日气氛会让你忘记了冬天的存在,真想和孩子们一起玩啊,可是身为军人,我有自己的职责,祝你玩得开心!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[海军士兵]			--
--							--
--		19401, 3901			--
----------------------------------------------------------
function peter_talk10 ()
	Talk( 1, "海军士兵: 我敢保证,大家在这里都可以尽情的享受圣诞的快乐,绝对不会有不开心的事发生,你问为什么?没看见我手里的警棍么!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[游客·罗琳斯]			--
--							--
--		7301, 23601			        --
----------------------------------------------------------
function peter_talk11 ()
	Talk( 1, "游客·罗琳斯: 我喜欢圣诞节,我喜欢在这里玩,好多可爱的东东喔,你想买一件圣诞礼物送给我么?")
end


--------------------------------------------------------
--							--
--							--
--		圣诞岛[小摊贩朱迪]			--
--							--
--		13901, 6101			--
----------------------------------------------------------
function peter_talk12 ()
	Talk( 1, "小摊贩朱迪: 如果游玩能够赚到钱,我也不用摆摊了,呵呵,但是我摆看到顾客买到称心的东西时开心的样子,我就觉得值。")
end


--------------------------------------------------------
--							--
--							--
--		圣诞岛[小摊贩切尔]			--
--							--
--		3301, 21601			        --
----------------------------------------------------------
function peter_talk13 ()
	Talk( 1, "小摊贩切尔:你去过真爱岛么?如果你没去过,那一定要买买这个纪念品,你说你去过了?那就更该买这个做圣诞纪念品了啊!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛小摊贩罗门			--
--							--
--		8701, 20401			         --
----------------------------------------------------------
function peter_talk14 ()
	Talk( 1, "圣诞岛小摊贩罗门: 冬天的时候,只有节日礼品是所有人肯花钱的。")
end
 
--------------------------------------------------------
--							--
--							--
--		圣诞岛小摊贩耶亚			--
--							--
--		25501, 12401    			--
----------------------------------------------------------
function peter_talk15 ()
	Talk( 1, "圣诞岛小摊贩耶亚: 嗨!圣诞快乐!瞧我穿的这身衣服好看么?")
end


--------------------------------------------------------
--							--
--							--
--		圣诞岛[篝火老人]			--
--							--
--		24801, 9801			        --
----------------------------------------------------------
function peter_talk16 ()
	Talk( 1, "篝火老人: 看那红红的火焰吧,整个圣诞的夜空将被它照亮,每当这时候我就想起了年轻时围着篝火跳舞的情景。要珍惜现在啊。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[白胡子鲁特]			--
--							--
--		13001,23601			--
----------------------------------------------------------
function peter_talk17 ()
	Talk( 1, "白胡子鲁特:你觉得我有多大?在圣诞老人面前我们都是孩子嘛,我可真是孩子哦,不信我们来打雪仗。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[老太太克拉]			--
--							--
--		23901, 22701	         		--
----------------------------------------------------------
function peter_talk18 ()
	Talk( 1, "老太太克拉: 嗨!嗨!该积极的帮助来过圣诞节的人们啊!我可是个热心肠,哪里的路你要是不知道就找我!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[红胡子雷顿]			--
--							--
--		24601, 19701			--
----------------------------------------------------------
function peter_talk19 ()
	Talk( 1, "红胡子雷顿: 呃?你要和我说话?唔,我很久没和人交谈了,上次和人说话是什么时候?……唔?你是谁?你要和我说话?…呃…我想问你什么来着…")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[小摊贩尤卡丹]			--
--							--
--		23201, 20001			--
----------------------------------------------------------
function peter_talk20 ()
	Talk( 1, "小摊贩尤卡丹: HOoooo,圣诞节快乐!看你这么喜欢圣诞节,为什么不拿个气球呢?听说圣诞老人先给拿气球的孩子发礼物哦!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[小淘气西林]			--
--							--
--		22801, 5401			--
----------------------------------------------------------
function peter_talk21 ()
	Talk( 1, "小淘气西林:呜…我要爸爸…我领到了圣诞老人的蛋糕,可是却找不到爸爸了…")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[短尾巴卡斯]			--
--							--
--		25601, 4301			--
----------------------------------------------------------
function peter_talk22 ()
	Talk( 1, "短尾巴卡斯:以前圣诞节就是收礼物,这回我要自己去找礼物,圣诞老人送的礼物总是和爸爸前两天偷偷买回家的一样,我都知道,厉害吧?")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[小女孩西尔文]			--
--							--
--		21501, 4101			--
----------------------------------------------------------
function peter_talk23 ()
	Talk( 1, "小女孩西尔文:哟~~圣诞快乐!一起开心的过节吧!什么?你没烟花?嘿嘿,告诉你哦,可以去圣诞村中央下方的市场去购买~~~还有很多其他打折商品.记得去看看哦.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[欧米]			--
--							--
--		20601, 7601			--
----------------------------------------------------------
function peter_talk24 ()
	Talk( 1, "欧米:在古老的东方有一句名言,书中自有黄金屋,书中自有颜如玉.快点去学个读书技能试试吧!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[佐姆]			--
--							--
--		19401, 23501			--
----------------------------------------------------------
function peter_talk25 ()
	Talk( 1, "佐姆: 告诉你个秘密,快去那边,对,一堆气球的地方,那边有很多好东西卖呢!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[马克]			--
--							--
--		19401, 20101			--
----------------------------------------------------------
function peter_talk26 ()
	Talk( 1, "马克:看见游客我就会主动对他们说~嗨~~我是马克~。")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[林克]			        --
--							--
--		17301, 23501		         	--
----------------------------------------------------------
function peter_talk27 ()
	Talk( 1, "林克: 有人说我不该从厨房里跑出来…我想这是圣诞老人的点子,看着大家在我周围笑的肚子痛,我也笑的直不起腰了,圣诞快乐!记住啊,今年的圣诞,你看见过矮冬瓜林克在街上!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[文娜]			--
--							--
--		15701, 23401			--
----------------------------------------------------------
function peter_talk28 ()
	Talk( 1, "文娜: 我长的矮么?我是圣诞老人最好的助手呢!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[圣诞雪人雷格林]			--
--							--
--		15101, 25901			        --
----------------------------------------------------------
function peter_talk29 ()
	Talk( 1, "圣诞雪人雷格林: 我不该说话,但是,还是祝你圣诞快乐!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[圣诞雪人卡格林]			--
--						 	--
--		6601, 8301			        --
----------------------------------------------------------
function peter_talk30 ()
	Talk( 1, "圣诞雪人卡格林: HELLO!!圣诞快乐,你知道曾经有个船长被石头跟踪的故事么?哈哈,还没听过啊?那今晚你可要抓着圣诞老人给你讲,晚上你会笑醒的!!")
end




--------------------------------------------------------
--							--
--							--
--		圣诞岛[圣诞村指导员]		--
--						 	--
--		                         	        --
----------------------------------------------------------
function Xmas_talk25 ()
	Talk( 1, "圣诞快乐!欢迎来到美丽的圣诞村,我可是这里的万事通,有什么不知道的尽管问我吧")
	Text( 1, "圣诞村的活动",JumpPage, 2  )
	Text( 1, "圣诞村可以买到什么",JumpPage, 3  )
	Text( 1, "圣诞竞技场",JumpPage, 4 )

	Talk( 2, "你的圣诞礼盒脏了吗?找清洗机(83,39)吧......你想吃火鸡大餐吗?找斐谢特(220,40)吧......你想点播祝福吗?请找圣诞树(144,158)吧......都了解了吗?快点返回吧....")
	Text( 2, "返回",JumpPage, 1  )

	Talk( 3, "你可以到(132,246)附近,那里有一个很大的集市,可以买到很多传说中的东东哦。不过你先要到圣诞老人(146,171)把海盗币换成圣诞硬币，我们的营业员可是不能直接收钱的……快去抢购吧")
	Text( 3, "返回",JumpPage, 1  )

	Talk( 4, "据说圣诞竞技场里有极其恐怖的BOSS,不过好象还没有足够的供品来召唤它们,你可以到(146,252)找科恩问问!")
	Text( 4, "返回",JumpPage, 1  )
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[小乐尼]			--
--						 	--
--		9801, 23501			        --
----------------------------------------------------------
function peter_talk31 ()
	Talk( 1, "小乐尼:你有想过晚上在圣诞老人送礼物的时候把他抓住养在家里么?我就试过,可惜失败了,不过今晚我想的办法绝对能抓住他,想知道什么办法?到了明天才能告诉你! ")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[拿铁小子]			--
--						 	--
--		14501, 26802			        --
----------------------------------------------------------
function peter_talk32 ()
	Talk( 1, "拿铁小子:哦吼~圣诞老人给我带来了一大桶我最爱的拿铁,整个冬天我都是最幸福的啦!圣诞节万岁~")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[笨蛋约翰]			--
--						 	--
--		18101, 23903			        --
----------------------------------------------------------
function peter_talk33 ()
	Talk( 1, "笨蛋约翰:嗨~圣诞快乐~别人都叫我约翰,你可能也知道我的外号,但是我不笨的,我都知道小乐尼今晚有办法抓住圣诞老人的事呢!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[说笑话的麋鹿]			--
--						 	--
--		22201, 22804			        --
----------------------------------------------------------
function peter_talk34 ()
	Talk( 1, "说笑话的麋鹿:你听说了吗?我有一个同伴,它十分擅长奔跑,有一次它越跑越快,结果就变成了高速公路!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[米奇亚外婆]			--
--						 	--
--		24801, 8105			        --
----------------------------------------------------------
function peter_talk35 ()
	Talk( 1, "米奇亚外婆:圣诞节的晚上,你可一定要记得把袜子挂在圣诞树上哦,圣诞老人会给你送来礼物的.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[伊鲁森教士]			--
--						 	--
--		5501, 19506			        --
----------------------------------------------------------
function peter_talk36 ()
	Talk( 1, "伊鲁森教士:有一个真心朋友就足够了,有十个真正的朋友,你就天下无敌.耶酥保佑你,我的朋友.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[卡鲁]			--
--						 	--
--		11301, 23907			        --
----------------------------------------------------------
function peter_talk37 ()
	Talk( 1, "卡鲁: 每天晚上别抱着电视消磨时间啦~今晚换点花样,和朋友们一起聚会吧!一个人的圣诞节总是闹不起来,我就在尝试着改变呢.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[布奇]			--
--						 	--
--		26301, 17308			        --
----------------------------------------------------------
function peter_talk38 ()
	Talk( 1, "布奇: 你知道吗?据说有一种叫做万能宝石的东西,据说可以让使用者变的更强大,具体的情况你可以找冰狼的麦瑞问下!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[里纳多]			--
--						 	--
--		17401, 6009			        --
----------------------------------------------------------
function peter_talk39 ()
	Talk( 1, "里纳多:看着人们都在点播祝福,我也很想点播一句心里话：我要加公资!我要带薪放假!我要拿奖金!…还有,别让老板知道是我说的.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[克莱尔]			--
--						 	--
--		3401, 20011			        --
----------------------------------------------------------
function peter_talk40 ()
	Talk( 1, "克莱尔: 节日虽然快乐~但是也要注意安全哦!我可不想一大早就在医院里看到有病人在! ")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[迪可斯]			--
--						 	--
--		7401, 20511			        --
----------------------------------------------------------
function peter_talk41 ()
	Talk( 1, "迪可斯:好多的雪啊,难道这么大的地方都要我来扫吗?我希望这个圣诞节我能得到的礼物是一台除雪机!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[普罗]			--
--						 	--
--		20901, 21912			        --
----------------------------------------------------------
function peter_talk42 ()
	Talk( 1, "普罗: 从海上无尽的漂泊到现在站在你的面前,我懂得了生活要珍惜现在,能站在陆地上过圣诞节,实在是件值得庆祝的事,我会对每个人大声的祝福!享受现在的生活吧!圣诞快乐!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[温尼丽]			--
--						 	--
--		26401, 13813			        --
----------------------------------------------------------
function peter_talk43 ()
	Talk( 1, "温尼丽: 我一直想当一名航海家!我要让我的船开的比圣诞老人飞起来还要快!将来圣诞老人还要拜托我帮他运送礼物呢.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[加菲]			--
--						 	--
--		24801, 8114			        --
----------------------------------------------------------
function peter_talk44 ()
	Talk( 1, "加菲: 知道圣诞节该怎么过吗?我觉得坐在软软的沙发上,看电视,吃意大利千层面才是最棒的!")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[问题小多多]			--
--						 	--
--		26101, 8915			        --
----------------------------------------------------------
function peter_talk45 ()
	Talk( 1, "问题小多多: 我从哪里来的?冬天的玫瑰花怎么来的?小雪人和小麋鹿宠物是怎么来的?唔,这些我都知道,我只是想听听你知不知道.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[奥斯卡]			--
--						 	--
--		19301, 4016			        --
----------------------------------------------------------
function peter_talk46 ()
	Talk( 1, "奥斯卡: 圣诞节到了,就算是作为最伟大的冒险家的我也应该停下来和孩子们打打雪仗,好好享受一下美味的火鸡了吧.")
end

--------------------------------------------------------
--							--
--							--
--		圣诞岛[彩颐]			--
--						 	--
--		19101, 8417			        --
----------------------------------------------------------
function peter_talk47 ()
	Talk( 1, "彩颐: 这就是圣诞节吗?我还是第一次过这个节日呢~不过那个圣诞老人胖乎乎的真可爱,还有那棵大大的圣诞树也好漂亮哦,你去看了吗?")
end

------------------------------------------------------------
-- 神秘的考古学家
------------------------------------------------------------
function dina_talk07()
	
	Talk( 1, "神秘的考古学家:竟然被你发现我了的存在!我其实是一名专职研究冰雪封印的考古学家。对了，如果你有被冰雪封印的武器，可以找我帮解封，当然不可能是免费的！" )
	Text( 1, "我要解冰雪封印", JumpPage, 2)

	Talk( 2, "神秘的考古学家:嗯,既然你找到我,那我就不推辞了,我可以解除这些封印,只要你给我找到解封所需的东西就可以了." )
	Text( 2, "冷凝轻剑", JumpPage, 4)
	Text( 2, "冷凝重剑", JumpPage, 5)
	Text( 2, "狂雪刀", JumpPage, 6)
	Text( 2, "圣雪盾", JumpPage, 7)
	Text( 2, "雪月刺", JumpPage, 8)
	Text( 2, "雪魔枪", JumpPage, 9)
	Text( 2, "寒魅弓", JumpPage, 10)
	Text( 2, "下一页", JumpPage, 3)
	
	Talk( 3, "神秘的考古学家:嗯,既然你找到我,那我就不推辞了,我可以解除这些封印,只要你给我找到解封所需的东西就可以了." )
	Text( 3, "寒羽之仗", JumpPage, 11)
	Text( 3, "鬼霜之杖", JumpPage, 12)
	

	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4274, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4274, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 4, "神秘的考古学家:要解除冷凝轻剑的封印你必须给我以下物品:冰雪封印的冷凝轻剑、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 4, "解除冷凝轻剑的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4275, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4275, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 5, "神秘的考古学家:要解除冷凝重剑的封印你必须给我以下物品:冰雪封印的冷凝重剑、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 5, "解除冷凝重剑的封印", MultiTrigger, GetMultiTrigger(), 1)
	
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4281, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4281, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 6, "神秘的考古学家:要解除狂雪刀的封印你必须给我以下物品:冰雪封印的狂雪刀、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 6, "解除狂雪刀的封印", MultiTrigger, GetMultiTrigger(), 1)
	

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4282, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4282, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 7, "神秘的考古学家:要解除圣雪盾的封印你必须给我以下物品:冰雪封印的圣雪盾、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 7, "解除圣雪盾的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4276, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4276, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 8, "神秘的考古学家:要解除雪月刺的封印你必须给我以下物品:冰雪封印的雪月刺、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 8, "解除雪月刺的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4277, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4277, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 9, "神秘的考古学家:要解除雪魔枪的封印你必须给我以下物品:冰雪封印的雪魔枪、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 9, "解除雪魔枪的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4278, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4278, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 10, "神秘的考古学家:要解除寒魅弓的封印你必须给我以下物品:冰雪封印的寒魅弓、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 10, "解除寒魅弓的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4279, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4279, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 11, "神秘的考古学家:要解除寒羽之仗的封印你必须给我以下物品:冰雪封印的寒羽之仗、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 11, "解除寒羽之仗的封印", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4280, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4280, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 12, "神秘的考古学家:要解除鬼霜之杖的封印你必须给我以下物品:冰雪封印的鬼霜之杖、冰雪女皇的灵魄x1,为了研究解除封印我付出了极大的代价,请支付给我100万海盗币作为解封费用" )
	Text( 12, "解除鬼霜之杖的封印", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "神秘的考古学家:很抱歉,你给我的物品不对,我无法为你解除封印." )

end

-------------------------------------------------------------------------------------------------------
----BOSS挑战登记员
-------------------------------------------------------------------------------------------------------
function bragi_talk01()
	Talk( 1, "Riding the whirlwind with rebirth wings on back. This is what you will be after rebirth. Wanna level your character. Come to me.")
	Text( 1, "Why I can't take a quest to raise my Rebirth Level?", JumpPage, 2 )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1431)
	TriggerCondition( 1, NoMission, 1430)
	TriggerCondition( 1, NoMission, 1432)
	TriggerCondition( 1, NoMission, 1433)
	TriggerCondition( 1, NoMission, 1434)
	TriggerCondition( 1, NoMission, 1435)
	TriggerCondition( 1, NoMission, 1436)
	TriggerCondition( 1, NoMission, 1437)
	TriggerCondition( 1, NoMission, 1438)
	TriggerCondition( 1, NoMission, 1439)
	TriggerCondition( 1, NoMission, 1440)
	TriggerCondition( 1, NoMission, 1441)
	TriggerCondition( 1, NoMission, 1442)
	TriggerAction( 1, ClearRecord, 1431)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4)
	
	Text( 1, "I want to fix the problem that quests cannot be taken after int", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "If you want to challenge BOSS and raise your rebirth level, you must meet the following requirements: 1- You must complete rebirth quest. 2- You must complete the New Challenge quest and many others quets coming up given by Rebirth Angel. If you have done all of them, come to me to take quests and challenge BOSS.")
	Text( 2, "I understand, Goodbye.", CloseTalk)
	
	Talk( 3, "Repair successful!")
	
	Talk( 4, "You are wrong. You don't need any repairs.")

	AddNpcMission	(6102)
	AddNpcMission	(6103)
	AddNpcMission	(6104)
	AddNpcMission	(6105)
	AddNpcMission	(6106)
	AddNpcMission	(6107)
	AddNpcMission	(6108)
	AddNpcMission	(6109)
	AddNpcMission	(6110)
	AddNpcMission	(6111)
	AddNpcMission	(6112)
	AddNpcMission	(6113)
end

------------------------------------------------------------
-- 白银之城:神秘帽商
------------------------------------------------------------

function dina_talk08()

	Talk( 1, "Weird Hat Seller: I heard that the hat refining system is now opened. It seems that I have struck gold this time. Hey, you guys, take your tume to select the perfect hat for yourselves. No hurry." )
	Text( 1, "Trade", BuyPage )

	InitTrade()
	Defence(	2553	)
	Defence(	2583	)
	Defence(	2584	)
	Other(	5472	)--Lance Yahoo Hat
	Other(	5476	)--Lance Resident Cover Hat
	Other(	5480	)--Lance Ma Yongshi Days Helmet
	Other(	5484	)--Lance Icy Dragon Helmet
	Other(	5473	)--Carsise Yahoo Hat
	Other(	5477	)--Carsise Resident Cover Hat
	Other(	5481	)--Carsise Ma Yongshi Days Helmet
	Other(	5485	)--Carsise Icy Dragon Helmet
	Other(	5474	)--Phyllis Yahoo Hat
	Other(	5478	)--Phyllis Resident Cover Hat
	Other(	5482	)--Phyllis Ma Yongshi Days Helmet
	Other(	5486	)--Phyllis Icy Dragon Helmet
	Other(	5475	)--Ami Yahoo Hat
	Other(	5479	)--Ami Resident Cover Hat
	Other(	5483	)--Ami Ma Yongshi Days Helmet
	Other(	5487	)--Ami Icy Dragon Helmet
	Other(	5118	)--Wizard Hat
	Other(	5126	)--Flyboy Cap
	Other(	5114	)--Crazed Cowboy
	Other(	5106	)--Clowny Cap
	Other(	5150	)--Cowboy Hat
	
end

------------------------------------------------------------
-- Shion the Holy Father
------------------------------------------------------------

function dina_talk10()

Talk( 1, "Welcome to Heaven, the most peaceful place that you can ever find! How may I help you?" )


AddNpcMission(7890)
AddNpcMission(7891)
AddNpcMission(7892)
AddNpcMission(7893)



	

end

------------------------------------------------------------
-- Little Angel
------------------------------------------------------------

function dina_talk11()

	Talk( 1, "Little Angel: I am waiting for you, my hero. If you have a [Revive Stone], you will be blessed by Athene and become much stronger." )
	Text( 1, "I want to be blessed by Athene.", JumpPage, 2)
	Text( 1, "I have no interest in being blessed by Athene.", CloseTalk)
	
	Talk( 2, "Little Angel: Athene has been kept waiting for many years. You should make the wise decison to get blessed and be rebirth. Now what class you want to be?" )
	Text( 2, "I want to become a Crusader to uphold justice and peace",  GetChaName1_born2, 1)
	Text( 2, "I want to become a Champion and protect the innocent",  GetChaName2_born2, 1)
	Text( 2, "I want to become a Cleric and save people's lives",  GetChaName5_born2, 1)
	Text( 2, "I want to become a Voyager and set sail",  GetChaName3_born2, 1)
	Text( 2, "I want to become a Sharpshooter and and learn killing skills", GetChaName4_born2, 1)
	Text( 2, "I want to become a Seal Master and defeat all of the BOSSES", GetChaName6_born2, 1)
	Text( 2, "I need a moment to think.", CloseTalk)
	
end



------------------------------------------------------------
-- 地狱5层:穆
------------------------------------------------------------

function dina_talk12()

	Talk( 1, "穆:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6215)
	
end

------------------------------------------------------------
-- 地狱6层:阿鲁狄巴
------------------------------------------------------------

function dina_talk13()

	Talk( 1, "阿鲁狄巴:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6216)
	
end

------------------------------------------------------------
-- 地狱7层:撒加
------------------------------------------------------------

function dina_talk14()

	Talk( 1, "撒加:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6217)
	
end

------------------------------------------------------------
-- 地狱8层:狄马斯
------------------------------------------------------------

function dina_talk15()

	Talk( 1, "狄马斯:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6218)
	
end

------------------------------------------------------------
-- 地狱10层:艾奥利亚
------------------------------------------------------------

function dina_talk16()

	Talk( 1, "艾奥利亚:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6219)
	
end

------------------------------------------------------------
-- 地狱11层:沙加
------------------------------------------------------------

function dina_talk17()

	Talk( 1, "沙加:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6220)
	
end

------------------------------------------------------------
-- 地狱12层:童虎
------------------------------------------------------------

function dina_talk18()

	Talk( 1, "童虎:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6221)
	
end

------------------------------------------------------------
-- 地狱13层:米罗
------------------------------------------------------------

function dina_talk19()

	Talk( 1, "米罗:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6222)
	
end

------------------------------------------------------------
-- 地狱14层:艾俄罗斯
------------------------------------------------------------

function dina_talk20()

	Talk( 1, "艾俄罗斯:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6223)
	
end

------------------------------------------------------------
-- 地狱15层:修罗
------------------------------------------------------------

function dina_talk21()

	Talk( 1, "修罗:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6224)
	
end

------------------------------------------------------------
-- 地狱16层:加妙
------------------------------------------------------------

function dina_talk22()

	Talk( 1, "加妙:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6225)
	
end

------------------------------------------------------------
-- 地狱17层:阿布罗狄
------------------------------------------------------------

function dina_talk23()

	Talk( 1, "阿布罗狄:哇噻，我隐藏的这么好都被你发现！" )
	AddNpcMission	(6226)
	
end

-------------------狱警
function prison_talk01 ()
	Talk ( 1, "You will glow to love this place if you are imprisoned here long enough.")
	Text ( 1, "You must find out ways to be released from prison", JumpPage, 2)

	Talk ( 2, "If you want to be released from prison, there are many ways available. Which one you want to find out about?")
	Text ( 2, "Way No.1", JumpPage, 3)
	Text ( 2, "Way No.2", JumpPage, 4)
	Text ( 2, "Way No.3", JumpPage, 5)

	Talk ( 3, "Way No.1: You can look for the warden to get a prison Log Card. You put this card in your 3rd inventory slot and then stay in prison for one hour. After that you can ask the Warden to release you.")
	Text ( 3, "Return", JumpPage, 2)
	Text ( 3, "Leave", CloseTalk)

	Talk ( 4, "Way No.2: It is said that the Head of the Prisoners has a Prison Discharge Certificate. If you can take it by force, you will be released by Warden.")
	Text ( 4, "Return", JumpPage, 2)
	Text ( 4, "Leave", CloseTalk)

	Talk ( 5, "Way No.3: You can also buy a Prison Discharge Certificate at the Magic Mall.")
	Text ( 5, "Return", JumpPage, 2)
	Text ( 5, "Leave", CloseTalk)

	AddNpcMission	(6231)

end

--------------------监狱长
function prison_talk02 ()
	Talk ( 1, "Shoot. You are in my area. I make my rules here and you listen to me. Got it?")

	InitTrigger()
	TriggerCondition( 1, NoItem, 5724, 1 ) --监狱记录卡
	TriggerCondition( 1, HasRecord, 1280 ) --完成监狱指引任务
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, GiveItem, 5724, 1, 4) --监狱记录卡
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 5)
	Text ( 1, "I want to get a Prison Discharge Certificate", MultiTrigger, GetMultiTrigger(), 1)

	Text ( 1, "I want to leave here...", JumpPage, 4)

	Talk ( 2, "Remember to put the Prison Log Card in the 3rd inventory slot to make it work properly.")

	Talk ( 4, "If you have a Prison Discharge Certificate in your inventory or no time is left on your Prison Log Card, you will be released. Now are you sure that you want to leave?")
	
	InitTrigger()
	TriggerCondition( 1, Checkjlktime ) --检测监狱记录卡上剩余时间是否为0
	TriggerAction( 1, TakeItem, 5724, 1) --提取监狱记录卡
	TriggerAction( 1, Leaveprison ) --离开监狱岛
	TriggerCondition( 2, HasItem, 5723, 1) --出狱证明
	TriggerAction( 2, TakeItem, 5723, 1) --提取出狱证明
	TriggerAction( 2, Leaveprison ) --离开监狱岛
	TriggerFailure( 2, JumpPage, 6)

	Text ( 4, "Confirm to leave", MultiTrigger, GetMultiTrigger(), 2)
	Text ( 4, "Let me think again", CloseTalk)

	Talk ( 5, "You cannot take the Prison Log Card! Please make sure that you have completed the [Way to be Disimprisoned] quest. If you have done it and still failed to take a Prison Log Card, check your inventory to find out whether your inventory has been locked or does not have any empty slots lefts. It is also quite possible that you have already got one Prison Log Card in your inventory.")

	Talk ( 6, "You have not met all the requiments to be released. Be avised, stay in prison.")

	AddNpcMission	(6230)

end


----------------------------------------------------------
--							--
--							--
--		白银[加纳·罗伊]			--
--							--
--		2235,2785		--
----------------------------------------------------------
function dean_talk01 ()

	Talk( 1, "加纳·罗伊: 哦，我亲爱的朋友，欢迎你接受挑战,勇敢的你将获得丰厚的收获以及圣王传承的荣誉，你将得到整个海盗世界的关注！")
	Text( 1, "1级圣王宝藏", JumpPage, 2)
	Text( 1, "2级圣王宝藏钥匙", JumpPage, 7)
	Text( 1, "3级圣王宝藏钥匙", JumpPage, 9)
	Text( 1, "4级圣王宝藏钥匙", JumpPage, 11)
	Text( 1, "5级圣王宝藏钥匙", JumpPage, 13)
	
	Talk( 2, "加纳·罗伊: 1级圣王宝藏是圣王年轻时期就留下的财富，它是所有海盗都梦寐以求的，你愿意接受挑战吗？")
	Text( 2, "我接受", JumpPage, 3)
	Text( 2, "我不接受", CloseTalk)
	
	Talk( 3, "加纳·罗伊: 那就开始吧！选择一个适合你的迷宫出发吧！")
	
	Text( 3, "挑战废灵迷宫", JumpPage, 4)
	Text( 3, "挑战沼泽迷宫", JumpPage, 5)
	Text( 3, "挑战魔方迷宫", JumpPage, 6)
	
	Talk( 4, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5776, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 4, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "不知道你在说什么", CloseTalk)
	
	Talk( 5, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5791, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 5, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "不知道你在说什么", CloseTalk)
	
	Talk( 6, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5792, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 6, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "不知道你在说什么", CloseTalk)
	
	Talk( 7, "加纳·罗伊: 想要打开2级圣王的宝藏必须要使用相对应的钥匙才行，但是这神秘的钥匙会在哪里呢？")
	Text( 7, "我想知道，快告诉我吧", JumpPage, 8)
	Text( 7, "我可没兴趣知道", CloseTalk)
	
	Talk( 8, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5793, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 8, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "不知道你在说什么", CloseTalk)
	
	
	Talk( 9, "加纳·罗伊: 想要打开3级圣王的宝藏必须要使用相对应的钥匙才行，但是这神秘的钥匙会在哪里呢？")
	Text( 9, "我想知道，快告诉我吧", JumpPage, 10)
	Text( 9, "我可没兴趣知道", CloseTalk)
	
	Talk( 10, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5794, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 10, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 10, "不知道你在说什么", CloseTalk)
	
	Talk( 11, "加纳·罗伊: 想要打开4级圣王的宝藏必须要使用相对应的钥匙才行，但是这神秘的钥匙会在哪里呢？")
	Text( 11, "我想知道，快告诉我吧", JumpPage, 12)
	Text( 11, "我可没兴趣知道", CloseTalk)
	
	Talk( 12, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5795, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 12, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 12, "不知道你在说什么", CloseTalk)
	
	Talk( 13, "加纳·罗伊: 想要打开5级圣王的宝藏必须要使用相对应的钥匙才行，但是这神秘的钥匙会在哪里呢？")
	Text( 13, "我想知道，快告诉我吧", JumpPage, 14)
	Text( 13, "我可没兴趣知道", CloseTalk)
	
	Talk( 14, "加纳·罗伊: 年轻人，你果然很勇敢！在雷霆堡有个叫斯通纳(730,1508)的人，带着这封信去找他吧，他会给你指引的！")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --没有加纳·罗伊的密函A
	TriggerCondition( 1, NoItem, 5791, 1 )   --没有加纳·罗伊的密函B
	TriggerCondition( 1, NoItem, 5792, 1 )   --没有加纳·罗伊的密函C
    TriggerCondition( 1, NoItem, 5786, 1 )   --没有废旧的月光宝盒
	TriggerCondition( 1, NoItem, 5787, 1 )   --没有陈旧的月光宝盒
	TriggerCondition( 1, NoItem, 5788, 1 )   --没有崭新的月光宝盒
	TriggerCondition( 1, NoItem, 5789, 1 )   --没有精致的月光宝盒
	TriggerCondition( 1, NoItem, 5790, 1 )   --没有卓越的月光宝盒
	TriggerCondition( 1, NoItem, 5793, 1 )   --2级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5794, 1 )   --3级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5795, 1 )   --4级宝藏钥匙密函
	TriggerCondition( 1, NoItem, 5796, 1 )   --5级宝藏钥匙密函
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --背包至少有一个空格
	TriggerCondition( 1, KitbagLock, 0 )               --背包没有上锁
	TriggerAction( 1, GiveItem, 5796, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 14, "我知道了", MultiTrigger, GetMultiTrigger(), 1)
	Text( 14, "不知道你在说什么", CloseTalk)
	
	
	
	
	
	Talk( 22, "加纳·罗伊: 请确保你身上没有我给你的密函以及月光宝盒，背包也不能上锁或是满的！")
	Text( 22, "离开", CloseTalk)
	
end	
	
	
	
----------------------------------------------------------
--							--
--							--
--		雷霆堡[斯通纳]			--
--							--
--		730,1508		                     --
----------------------------------------------------------
function dean_talk03 ()

	Talk( 1, "斯通纳: 你好，找我有事吗？")
	Text( 1, "兑换一级圣王宝藏", JumpPage, 10 )
	Text( 1, "兑换二级圣王宝藏钥匙", JumpPage, 3 )
	Text( 1, "兑换三级圣王宝藏钥匙", JumpPage, 4 )
	Text( 1, "兑换四级圣王宝藏钥匙", JumpPage, 5 )
	Text( 1, "兑换五级圣王宝藏钥匙", JumpPage, 6 )
	
	
	Talk( 10,"请根据你挑战的迷宫来选择兑换，不要选错哦！")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------废旧的月光宝盒
	TriggerCondition(1, HasRecord, 1281)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1281)       --清除record 1281
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1级圣王宝藏
	TriggerFailure(1, JumpPage, 9)	
	Text( 10, "我挑战的是废灵迷宫", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------废旧的月光宝盒
	TriggerCondition(1, HasRecord, 1282)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1282)   	--清除record 1282
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1级圣王宝藏
	TriggerFailure(1, JumpPage, 9)
	Text( 10, "我挑战的是沼泽迷宫", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------废旧的月光宝盒
	TriggerCondition(1, HasRecord, 1283)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1283)     --清除record 1283
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1级圣王宝藏
	TriggerFailure(1, JumpPage, 9)
	Text( 10, "我挑战的是魔方迷宫", MultiTrigger, GetMultiTrigger(), 1)
	
	Text( 10, "取消", CloseTalk)	
	
	
	Talk( 3,"兑换二级圣王宝藏钥匙需要一个能量为0的陈旧的月光宝盒，你确定兑换吗？")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5787, 1)               ---------陈旧的月光宝盒
	TriggerCondition(1, HasRecord, 1284)
	TriggerCondition(1, ItemAttrNum,5787,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5787, 1)
	TriggerAction(1, ClearRecord, 1284)    --清除record 1284
	TriggerAction(1, GiveItem, 5782, 1, 4)              ----------2级圣王宝藏钥匙
	TriggerFailure(1, JumpPage, 9)
	Text( 3, "我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "我不换", CloseTalk)
	
	Talk( 4,"兑换三级圣王宝藏钥匙需要一个能量为0的崭新的月光宝盒，你确定兑换吗？")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5788, 1)               ---------崭新的月光宝盒
	TriggerCondition(1, HasRecord, 1285)
	TriggerCondition(1, ItemAttrNum,5788,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5788, 1)
	TriggerAction(1, ClearRecord, 1285)   --清除record 1285
	TriggerAction(1, GiveItem, 5783, 1, 4)              ----------3级圣王宝藏钥匙
	TriggerFailure(1, JumpPage, 9)
	Text( 4, "我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "我不换", CloseTalk)
	
	Talk( 5,"兑换四级圣王宝藏钥匙需要一个能量为0的精致的月光宝盒，你确定兑换吗？")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5789, 1)               ---------精致的月光宝盒
	TriggerCondition(1, HasRecord, 1286)
	TriggerCondition(1, ItemAttrNum,5789,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5789, 1)
	TriggerAction(1, ClearRecord, 1286)    --清除record 1286
	TriggerAction(1, GiveItem, 5784, 1, 4)              ----------4级圣王宝藏钥匙
	TriggerFailure(1, JumpPage, 9)
	Text( 5, "我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "我不换", CloseTalk)
	
	Talk( 6,"兑换五级圣王宝藏钥匙需要一个能量为0的卓越的月光宝盒，你确定兑换吗？")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5790, 1)               ---------卓越的月光宝盒
	TriggerCondition(1, HasRecord, 1287)
	TriggerCondition(1, ItemAttrNum,5790,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5790, 1)
	TriggerAction(1, ClearRecord, 1287)     --清除record 1287
	TriggerAction(1, GiveItem, 5785, 1, 4)              ----------5级圣王宝藏钥匙
	TriggerFailure(1, JumpPage, 9)
	Text( 6, "我确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "我不换", CloseTalk)
	
	
	Talk( 9, "请确定你选择了正确的迷宫并且身上只有一个并且是能量为0的月光宝贝盒哦")
	
	
	
	AddNpcMission	(6232)
	AddNpcMission	(6233)
	AddNpcMission	(6234)
	AddNpcMission	(6235)
	AddNpcMission	(6236)
	AddNpcMission	(6237)
	AddNpcMission	(6238)
end

----------------------------------------------------------
--							--
--							--
--		白银城[城户沙织]			--
--							--
--		2279,2757		                     --
----------------------------------------------------------
function sds_talk01 ()
	Talk( 1, "城户沙织: 好无聊啊,我想再看一遍圣斗士！")
	AddNpcMission	(6239)
	AddNpcMission	(6249)

end



----------------------------------------------------------
--							--
--							--
--		白银城[星矢]			--
--							--
--		2167,2511		                     --
----------------------------------------------------------
function sds_talk02 ()
	Talk( 1, "星矢: 燃烧吧！我的小宇宙！为了女神！战斗吧！")
	AddNpcMission	(6240)
	AddNpcMission	(6241)

end



----------------------------------------------------------
--							--
--							--
--		沙岚[紫龙]			--
--							--
--		1126,3416		                     --
----------------------------------------------------------
function sds_talk03 ()
	Talk( 1, "紫龙: 为了雅典娜,燃烧我的小宇宙。")
	Text( 1, "我要回答问题", JumpPage, 2 )
	
	
	Talk( 2, "你真要开始回答？")
	InitTrigger() 	
	TriggerCondition(1, HasRecord, 1294)
	TriggerAction(1, JumpPage, 4)
	TriggerFailure(1, JumpPage, 3)
	Text( 2, "确定", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "取消", CloseTalk )
	
	Talk( 3, "不好意思，你似乎还没接取任务。")
	
	
	Talk( 4, "1，	请问牧先生在隐居时所居住的帕米尔高原在哪个洲？")
	Text( 4, "亚洲", JumpPage, 5 )
	Text( 4, "欧洲", JumpPage, 9 )
	Text( 4, "南美洲", JumpPage, 9 )
	
	Talk( 5, "2，	请问在圣斗士里面，海王是干什么的？")
	Text( 5, "卖鱼的", JumpPage, 9 )
	Text( 5, "卖船的", JumpPage, 6 )
	Text( 5, "搞海洋运输的", JumpPage, 9 )
	
	Talk( 6, "3，	请问以下几个名字中，哪个在海盗王npc中没出现过")
	Text( 6, "梦裴", JumpPage, 9 )
	Text( 6, "哈哈大叔", JumpPage, 9 )
	Text( 6, "西门", JumpPage, 7 )
	
	
	Talk( 7, "4，	请问海盗王的圣斗士12宫起始npc在哪座城市？")
	Text( 7, "白银城", JumpPage, 9 )
	Text( 7, "雷霆堡", JumpPage, 8 )
	Text( 7, "冰狼堡", JumpPage, 9 )


	InitTrigger() 
	TriggerCondition(1, HasRecord, 1294)               
	TriggerAction(1, SetRecord, 1293)
	Talk( 8, "5，	以下哪个国家没举办过奥林匹克运动会")
	Text( 8, "荷兰", JumpPage, 9 )
	Text( 8, "新西兰", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 8, "加拿大", JumpPage, 9 )

	Talk( 9, "您答错了，请从头开始回答")



	AddNpcMission	(6242)
	AddNpcMission	(6243)

end

----------------------------------------------------------
--							--
--							--
--		冰狼堡[冰河]			--
--							--
--		1533,699		                     --
----------------------------------------------------------
function sds_talk04 ()

	
	
	Talk( 1, "冰河: 高贵的我,在这里,看着白皑皑的景色,生出高贵的心,妈妈,我想你......")
	Text( 1,"给我疯狂撒加召唤券吧!", JumpPage, 2)
	
	
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1297)               
	TriggerCondition(1, HasItem, 3152, 99)               
	TriggerCondition(1, HasMoney, 100000) 
    TriggerAction(1, GiveItem, 5805,1,31) 	
	TriggerAction(1, TakeItem, 3152, 99)               
	TriggerAction(1, TakeMoney, 100000)               
	TriggerAction(1, SetRecord, 1298)               
	TriggerFailure(1, JumpPage, 3)

	
	Talk( 2, "冰河: 要疯狂撒加召唤券要100000和99个宠物饲料哦！")
	Text( 2, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "冰河: 你的东西不够啊！")
	
	AddNpcMission	(6244)
	AddNpcMission	(6245)

end
----------------------------------------------------------
--							--
--							--
--		加勒比[瞬]			--
--							--
--		619,965		                     --
----------------------------------------------------------
function sds_talk05 ()
	Talk( 1, "Hello there. Welcome to Treasure Gulf...an island kept by peaceful pirates. How may I help you?")

	AddNpcMission (	7945)
	AddNpcMission (	7946)
	AddNpcMission (	7954)
	AddNpcMission (	7955)
	AddNpcMission (	7963)
	AddNpcMission (	7964)
	


end


----------------------------------------------------------
--							--
--							--
--		地狱一层[一辉]			--
--							--
--		336,174		                     --
----------------------------------------------------------
function sds_talk06 ()
	Talk( 1, "一辉: 瞬......你一定要坚强......")
	Text( 1,"给我邪恶教皇召唤券吧!", JumpPage, 2)
	
	
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1303)               
	TriggerCondition(1, HasItem, 5807, 1)               
	TriggerCondition(1, HasItem, 5808, 1)               
	TriggerCondition(1, HasItem, 5809, 1)               
	TriggerCondition(1, HasItem, 5810, 1)               
	TriggerAction(1, TakeItem, 5807, 1)               
	TriggerAction(1, TakeItem, 5808, 1)               
	TriggerAction(1, TakeItem, 5809, 1)               
	TriggerAction(1, TakeItem, 5810, 1)               
	TriggerAction(1, GiveItem, 5811, 1,31)               
	TriggerAction(1, SetRecord, 1305)               
	TriggerFailure(1, JumpPage, 3)


	Talk( 2, "一辉: 要找邪恶教皇？你四张cosplay证书都收集好了没？如果你没有足够强的实力的话是无法挑战教皇的,实力必须达到55级以上")
	Text( 2, "确定", MultiTrigger, GetMultiTrigger(), 1 )


	Talk( 3, "一辉: 你的东西不够啊！")
	
	AddNpcMission	(6247)
	AddNpcMission	(6248)

end
----------------------------------------------------------
--		雷霆堡[艾米娜]			--
--		741,1505		                  --
----------------------------------------------------------
function aimina_talk01 ()
	Talk( 1, "你好啊，我最喜欢收集耐久为0的月光宝盒了，如果你有的话我愿意用一些材料与你交换！")
	Text( 1,"我想兑换", JumpPage, 2)
	Text( 1,"离开", CloseTalk)
	
	Talk( 2, "不同品质的月光宝盒的价值也是不一样的哦！让我看看你要用来兑换的是哪种呢？")
	Text( 2,"废旧的月光宝盒", JumpPage, 3)
	Text( 2,"陈旧的月光宝盒", JumpPage, 4)
	Text( 2,"崭新的月光宝盒", JumpPage, 5)
	Text( 2,"精致的月光宝盒", JumpPage, 6)
	Text( 2,"卓越的月光宝盒", JumpPage, 7)
	
	Talk( 3, "废旧的月光宝盒？你可以获得15个废灵武士骸骨,10个废灵弓箭手骸骨和15个泣灵武士骸骨")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5786, 1)               
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, Take_THSJ_Record)	
	TriggerAction(1, GiveItem, 3434, 15, 4)
	TriggerAction(1, GiveItem, 3435, 10, 4)
	TriggerAction(1, GiveItem, 3436, 15, 4)
	TriggerFailure(1, JumpPage, 15)
	Text( 3, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "离开", CloseTalk)
	
	
	
	Talk( 4, "陈旧的月光宝盒？你可以获得10个精灵辉印和99个精灵硬币")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5787, 1)               
	TriggerCondition(1, ItemAttrNum,5787,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 2)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5787, 1)
	TriggerAction(1, Take_THSJ_Record)
	TriggerAction(1, GiveItem, 2588, 10, 4)
	TriggerAction(1, GiveItem, 0855, 99, 4)
	TriggerFailure(1, JumpPage, 16)
	Text( 4, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, "离开", CloseTalk)
	
	
	Talk( 5, "崭新的月光宝盒？你可以获得30个粘乎乎水草和99个精灵硬币")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5788, 1)               
	TriggerCondition(1, ItemAttrNum,5788,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 2)
	TriggerCondition( 1, KitbagLock, 0)               
	TriggerAction(1, TakeItem, 5788, 1)
	TriggerAction(1, Take_THSJ_Record)
	TriggerAction(1, GiveItem, 4511, 30, 41)
	TriggerAction(1, GiveItem, 0855, 99, 4)	
	TriggerFailure(1, JumpPage, 14)
	Text( 5, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, "离开", CloseTalk)
	
	
	
	Talk( 6, "精致的月光宝盒？你可以获得1个黑龙祭坛,1个精灵王辉印和1个宝藏密钥")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5789, 1)               
	TriggerCondition(1, ItemAttrNum,5789,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5789, 1)
	TriggerAction(1, Take_THSJ_Record)	
	TriggerAction(1, GiveItem, 0266, 1, 65)
	TriggerAction(1, GiveItem, 2589, 1, 31)
	TriggerAction(1, GiveItem, 3000, 1, 41)
	TriggerFailure(1, JumpPage, 13)
	Text( 6, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "离开", CloseTalk)
	
	
	Talk( 7, "卓越的月光宝盒？你可以获得5个精灵王辉印,2个青龙钥匙,1个宝藏密钥和5个精灵果汁")
	InitTrigger() 
	TriggerCondition(1, HasItem, 5790, 1)               
	TriggerCondition(1, ItemAttrNum,5790,6,0,0)               
	TriggerCondition(1, HasLeaveBagGrid, 4)
	TriggerCondition( 1, KitbagLock, 0 )               
	               
	TriggerAction(1, TakeItem, 5790, 1)
	TriggerAction(1, Take_THSJ_Record)	
	TriggerAction(1, GiveItem, 2589, 5, 31)
	TriggerAction(1, GiveItem, 5703, 2, 41)
	TriggerAction(1, GiveItem, 3000, 1, 41)
	TriggerAction(1, GiveItem, 3122, 5, 31)
	TriggerFailure(1, JumpPage, 12)
	Text( 7, "确定", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, "离开", CloseTalk)
	
	Talk( 15, "请确认你身上有能量为0的废旧的月光宝盒！记得背包不要上锁并且留好3个空位哦！")
	Text( 15, "离开", CloseTalk)
	Talk( 16, "请确认你身上有能量为0的陈旧的月光宝盒！记得背包不要上锁并且留好2个空位哦！")
	Text( 16, "离开", CloseTalk)
	Talk( 14, "请确认你身上有能量为0的崭新的月光宝盒！记得背包不要上锁并且留好2个空位哦！")
	Text( 14, "离开", CloseTalk)
	Talk( 13, "请确认你身上有能量为0的精致的月光宝盒！记得背包不要上锁并且留好3个空位哦！")
	Text( 13, "离开", CloseTalk)
	Talk( 12, "请确认你身上有能量为0的卓越的月光宝盒！记得背包不要上锁并且留好4个空位哦！")
	Text( 12, "离开", CloseTalk)
end
----------------------------------------------------------
--							--
--							--
--		沙岚城 圣火传递大使		--
--							--
--		871,3580		                     --
----------------------------------------------------------
function ay_talk01 ()
	Talk( 1, "Relay Officer: Sacred Flame Relay will start soon, but the Sacred Torch hasn't appeared yet, is it lost? Can you check it out for me?")
	AddNpcMission	(6250)
	AddNpcMission	(6254)
	AddNpcMission	(6255)
	AddNpcMission	(6266)
	AddNpcMission	(6267)
	AddNpcMission	(6270)
	AddNpcMission	(6271)
	AddNpcMission	(6275)
	AddNpcMission	(6276)
	AddNpcMission	(6279)
	
end
----------------------------------------------------------
--							--
--							--
--		沙岚城 圣火台		          --
--							--
--		856,3707		                     --
----------------------------------------------------------
function ay_talk02 ()
	Talk( 1, "Congratulation, you've pass the whole quest, and obtained the rewards.")
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1324)
	TriggerCondition(1, HasItem, 5842, 1)
	TriggerCondition(1, HasItem, 5797, 1)
	TriggerCondition(1, HasItem, 5798, 1)
	TriggerCondition(1, HasItem, 5799, 1)
	TriggerCondition(1, HasItem, 5800, 1)
	TriggerCondition(1, HasItem, 5801, 1)
	TriggerCondition(1, HasLeaveBagGrid, 2)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5842, 1)
	TriggerAction(1, TakeItem, 5797, 1)
	TriggerAction(1, TakeItem, 5798, 1)
	TriggerAction(1, TakeItem, 5799, 1)
	TriggerAction(1, TakeItem, 5800, 1)
	TriggerAction(1, TakeItem, 5801, 1)
	TriggerAction(1, GiveItem, 5825, 1, 26)   --点燃的火炬
	TriggerAction(1, GiveItem, 5827, 1, 26)	  --心中的力量
	TriggerFailure(1, JumpPage, 2)
	Text( 1, "Ignite Sacred Torch", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Only the one who complete the Five Tests can kindle the torch! Remember to unlock your inventory and reserve 2 slots before going to kindle the torch.")
	Text( 2, "Close",CloseTalk)
	AddNpcMission (6280)
end

----------------------------------------------------------
--							--
--							--
--		白银城[彩票贩卖员彼德]				--Peter
--							--
--		2315,2836				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function peter_talk001 ()



	
	Talk( 1, "彩票贩卖员彼德:嗨!从今天起你就是个职业彩民啦!先仔细阅读一下我们的彩票行规,然后咱们就来碰碰运气吧~祝你一注定乾坤!" )
	Text( 1, "彩票购买须知", JumpPage, 2)
	Text( 1, "我愿意花20万买一张空白彩票", JumpPage, 3)
	Text( 1, "我愿意花99个精灵硬币买一个数字球", JumpPage, 4)
	Text( 1, "我要填写彩票,别拦我中大奖!", OpenLottery)
	Text( 1, "我超想买一只存钱罐猪猪宠物", JumpPage, 5)	
        Text( 1, "离开", CloseTalk)
	
	
	Talk( 2, "彩票购买须知:请购买一张空彩票,并拥有6个号码球,然后点填写选项填入你需要的号码,并点击确定就可以生成一张有效的彩票了,我们的彩票销售时间是每周1的临晨0点开始出售至每周6的晚上8点停止,填写的彩票如不在下周进行兑奖会自动作废,空彩票不填写是一直有效的。另外注意0-3号码球可以从我这里直接购买,其他号码球的获得需要你想别的办法了哦" )
	Text( 2, "离开", CloseTalk)

	Talk( 3, "拿走我的20万吧!我要空彩票!我要中奖!")
	
        InitTrigger()                                                   --------兑换空彩票
        TriggerCondition(1, HasLeaveBagGrid,1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )            --背包未锁	
        TriggerCondition( 1, HasMoney, 200000)    ---有20万
        TriggerAction(1, TakeMoney, 200000)
	TriggerAction(1, GiveItem, 5828,1,4)              ----------空彩票
	TriggerFailure(1, JumpPage, 8)
	Text(3,"确定兑换",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "用一组精灵硬币可以兑换下边的任何一个号码球,请想好了选购!")
	InitTrigger()                                                   --------兑换号码球0
        TriggerCondition( 1, HasItem, 0855, 99)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁		
        TriggerAction(1, TakeItem, 0855, 99)                 ----一组精灵硬币
	TriggerAction(1, GiveItem, 5829,1,4)              ----------号码球0
	TriggerFailure(1, JumpPage, 8)
	Text(4,"确定兑换号码球0",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()                                                   --------兑换号码球0
        TriggerCondition( 1, HasItem, 0855, 99)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁	
        TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5830, 1,4)              ----------号码球0
	TriggerFailure(1, JumpPage, 8)
	Text(4,"确定兑换号码球1",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()      --------兑换号码球1
        TriggerCondition( 1, HasItem, 0855, 99)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁                                                 
	TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5831, 1,4)              ----------号码球1
	TriggerFailure(1, JumpPage, 8)
	Text(4,"确定兑换号码球2",  MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger()                             --------兑换号码球2
        TriggerCondition( 1, HasItem, 0855, 99)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁   
	TriggerAction(1, TakeItem, 0855, 99)           
	TriggerAction(1, GiveItem, 5832, 1,4)              ----------号码球2
	TriggerFailure(1, JumpPage, 8)
	Text(4,"确定兑换号码球3",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()                                                   --------兑换号码球3
        TriggerCondition( 1, HasItem, 0855, 99)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁   
	TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5833, 1,4)              ----------号码球3
	TriggerFailure(1, JumpPage, 8)
	Text( 4, "离开", CloseTalk)

	Talk(5, "这可是本次活动的限量版超酷宠物哦!当了这么多年海盗的你,会高兴的发狂的!!在我们的商城里,还有本次活动的酷炫宠物和技能供您选择!")   ---购买小猪宠物
        InitTrigger()                                                   --------兑换空彩票
        TriggerCondition(1, HasLeaveBagGrid,1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )            --背包未锁	
        TriggerCondition( 1, HasMoney, 100000)    ---有10万
        TriggerAction(1, TakeMoney,100000)
	TriggerAction(1, GiveItem, 5840,1,4)              ----------小猪宠物
	TriggerFailure(1, JumpPage, 8)
	Text(5,"我要买一只猪猪宝贝!10万块成交!",  MultiTrigger, GetMultiTrigger(), 1)
        Text( 5, "谢谢光临,下次再来!", CloseTalk)

	Talk(8, "嗨!朋友,你身上不仅要有足够的钱,还要有足够的包栏啊!")
        Text( 8, "离开", CloseTalk)

end 

-----彩票贩卖员彼德结束



----------------------------------------------------------
--							--
--							--
--		白银城[彩票兑换员帕查理]				--Peter
--							--
--		231888,283688				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function peter_talk002 ()

	Talk( 1, "彩票兑换员帕查理:我们的奖品可是非常让人眼红的呦!只需要一点点运气,你就能拥有!" )
	Text( 1, "彩票兑奖须知", JumpPage, 2)
	Text( 1, "奖品查询", JumpPage, 3)
	Text( 1, "彩票一开,奖品自来,我来兑奖,大家鼓掌!", JumpPage, 4)     
	Text( 1, "中奖号码查询",JumpPage, 5)
        Text( 1, "离开", CloseTalk)
	
	
	Talk( 2, "彩票兑换须知：请找我查询本期的中奖号码,把需要兑奖的彩票放在包栏的第一格。如果彩票号码全部正确为一等奖,连续五位与中奖号码相同为二等奖,连续四位与中奖号码相同为三等奖,连续三位与中奖号码相同为四等奖,连续二位与中奖号码相同为五等奖." )
	Text( 2, "离开", CloseTalk)

	Talk( 3, "我们的奖品可是有史以来最丰厚的!海盗们从今天起可以不用出海就打劫到好东东啦!不信请看奖品:五等奖奖品为很酷的存钱罐猪猪召唤券,四等奖奖品为假期欢乐杂志,三等奖为真龙钥匙,二等奖奖品为后死者的王冠,一等奖奖品为死神藏尸处!")
	Text( 3, "离开", CloseTalk)
	
	Talk( 4, "确定兑换的彩票放在包栏的第一格,然后兑换相应的奖品吧!看准了,我们提供给你兑换低等奖的权利,但是换了可别后悔哦!!" )

	InitTrigger()
        TriggerCondition( 1, HasItem, 5828, 1)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁		
	TriggerCondition(1, DuiHhuan1)	               ---兑换2等奖
  	TriggerAction(1, GiveItem, 2842,1,4)              ---------2等奖奖品
	TriggerFailure(1, JumpPage, 8)--------兑换奖品失败
	Text(4,"确定兑换一等奖", MultiTrigger, GetMultiTrigger(), 1)       
	 
	InitTrigger()                                                   --------兑换2等奖
        TriggerCondition( 1, HasItem, 5828, 1)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁		
	TriggerCondition(1, DuiHhuan2)	               ---兑换2等奖
  	TriggerAction(1, GiveItem, 2835,1,4)              ---------2等奖奖品
	TriggerFailure(1, JumpPage, 8)--------兑换奖品失败
  	Text(4,"确定兑换二等奖", MultiTrigger, GetMultiTrigger(), 1)

        InitTrigger()                                                   --------兑换3等奖
        TriggerCondition( 1, HasItem, 5828, 1)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁
        TriggerCondition(1, DuiHhuan3)                ---兑换3等奖
	TriggerAction(1, GiveItem, 5704,1,4)              ---------3等奖奖品
	TriggerFailure(1, JumpPage, 8)--------兑换奖品失败
	Text(4,"确定兑换三等奖", MultiTrigger, GetMultiTrigger(),  1)

        InitTrigger()                                                   --------兑换4等奖
        TriggerCondition( 1, HasItem, 5828, 1)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁	
	TriggerCondition(1, DuiHhuan4)                   ---兑换4等奖
	TriggerAction(1, GiveItem, 0853,1,4)              ---------4等奖奖品
	TriggerFailure(1, JumpPage, 8)--------兑换奖品失败
	Text(4,"确定兑换四等奖", MultiTrigger, GetMultiTrigger(),  1)

        InitTrigger()                                                   --------兑换5等奖
        TriggerCondition( 1, HasItem, 5828, 1)       ---判断是否有道具,数量     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --空栏有一
	TriggerCondition(1, KitbagLock, 0 )           --背包未锁	
	TriggerCondition(1, DuiHhuan5)                     ---兑换5等奖
	TriggerAction(1, GiveItem, 5840,1,4)              ---------5等奖奖品
	TriggerFailure(1, JumpPage, 8)--------兑换奖品失败
	Text(4,"确定兑换五等奖", MultiTrigger, GetMultiTrigger(), 1)
        Text( 4, "离开", CloseTalk)
	
        Talk(5, "每天的下午8点至9点半会有循环公布每一位中奖号码，9点半公布的是全部的中奖号码，记得来看系统公告哦!")            --------兑换查询
        Text( 5, "离开", CloseTalk)


	Talk(8, "请查询中奖号码,然后在开奖期间拿有效的彩票来找我兑奖")            --------兑换失败
	Text(8, "离开", CloseTalk)
end

	-----彩票兑换员帕查理结束

		----------------------------------------------------------
--							--
--							--
--		白银城[存钱罐猪猪]				--Peter
--							--
--		231888,283688				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function peter_talk003 ()
	Talk( 1, "哼哼~充满中国风的存钱罐猪猪就是偶!商城里还有一只我的兄弟!想知道它的摸样么?" )
        Text( 1, "离开", CloseTalk)
end
		----存钱罐猪猪结束


function heal_m01 ()

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, ReAll )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "Hello! I am Nurse Rina. Look for me if you are sick or injured!" )
	Text( 1, "Greater Heal", MultiTrigger,GetMultiTrigger(),1)

	Talk( 2, "Sorry,you don't have enough money to pay the treatment!")

end

function heal_m02 ()

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, ReAll )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "Hello! I am Nurse Rina. Look for me if you are sick or injured!" )
	Text( 1, "Greater Heal", MultiTrigger,GetMultiTrigger(),1)

	Talk( 2, "Sorry,you don't have enough money to pay the treatment!")

end

function heal_m07 ()

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, ReAll )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "Hello! I am Nurse Pranvera. Look for me if you are sick or injured!" )
	Text( 1, "Greater Heal", MultiTrigger,GetMultiTrigger(),1)

	Talk( 2, "Sorry,you don't have enough money to pay the treatment!")

end


function heal_m02 ()

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, ReAll )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "Hello! I am Nurse Missy. Look for me if you are sick or injured!" )
	Text( 1, "Greater Heal", MultiTrigger,GetMultiTrigger(),1)

	Talk( 2, "Sorry,you don't have enough money to pay the treatment!")

end

function bank_d01 ()
	
	
	Talk( 1, "Hi, I am Banker Hanna. Accounts can never go wrong with me around." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry, you do not have sufficient gold to pay for vault usage" )


end

function bank_d02 ()
	
	
	Talk( 1, "Hi, I am Banker Jessica. Accounts can never go wrong with me around." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Vault (200G Fee)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Sorry, you do not have sufficient gold to pay for vault usage" )


end

function bank_d03 ()
	
	
	Talk( 1, "Those damn other banks, took every costumer this bank had! If there will be no costumers, there will be no bank anymore!" )

end

function secr_d01 ()
	
	
	Talk( 1, "Welcome to Dream City! Wait...I do not know you. Who are you you?" )

end




	