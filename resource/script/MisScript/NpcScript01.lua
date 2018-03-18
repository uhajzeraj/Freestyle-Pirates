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
-- ����֮��:��װ����������
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
--		�����ǣ����أ�		--
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

	--Talk(2, "Peter: Hey wait! Are you interested in swordsmanship? Hmm��you seems suitable to learn some sword fighting. It'll be a pity if you did not become a Swordsman!")
	--Text(2, "Ok, I will advance to become a Swordsman", MultiTrigger, GetMultiTrigger(), 3)
	--Text(2, "No, it is good enough for now.", CloseTalk)

	--Talk(3, "Peter: I have taught you all I know regarding swordsmanship. The rest will be up to your own effort.")

	--Talk(4, "Peter: Want to become a Swordsman? Only male Newbies at Level 10 with 1 Courage Certificate are eligible. Registration fee is 1000G.")

	--InitTrigger()
	---------------��ʿ
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
--		�����ǣ���������С���		--
--		219533,270323				--
-------------------------------------------------------------------
function r_trade01 ()
	--���������Ի�
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


	InitTrigger() --�һ�������
	TriggerCondition( 1, HasItem, 4358, 30 )
	TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 4358, 30 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1120, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(5, "Goldie: Snowdoll Mask requires 30 Blue Snowballs to mold.")
	Text( 5, "Confirm to make",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�һ����
	TriggerCondition( 1, HasItem, 4809, 30 )
	TriggerCondition( 1, HasItem, 3909, 2 )
        TriggerAction( 1, TakeItem, 4809, 30 )
	TriggerAction( 1, TakeItem,  3909, 2 )
	TriggerAction( 1, GiveItem,1121, 1,4 )
	TriggerFailure( 1, JumpPage, 8 ) 
	Talk(6, "Goldie: Pumpkin Mask requires 30 Pumpkin Heads")
	Text( 6, "Confirm to make",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --�һ����
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
-----------------------------------------------------------------С�����������----------------------------------------------------------------------------------------------




------------------------------------------------------------------
--								--
--								--
------------------------����������˹����---------------------------
--			221925,274925				--
--								--
------------------------------------------------------------------
function r_talk01 ()
	
	Talk( 1,"Hello there! I am Argent Secratary - Salvier. If you're looking for any kind of job, feel free to ask!")


end 
---------------<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<NPC ��˹���ء�������!
----------------------------------------------------------
--							--
--							--
--		������[������]				--
--							--
--		227725,276925				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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
	
	InitTrigger() --�Ի�����
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����̽���




----------------------------------------------------------
--							--
--							--
--		������[ҩ�����ˡ�����ķ]			--
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

---------------�����ʲ�ҩˮ
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
	--------------�������񻨲�
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
	-------------------�ϳ����������
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
	-------------------������ѿ��
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




--����д����ļ��


-----------����9��������ҿ���תְ
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	---TriggerAction( 1, JumpPage, 4 )
	--TriggerFailure( 1, JumpPage, 1 )

	--Start( GetMultiTrigger(), 1 )

---------------------ע������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ҩ�����ˡ�����ĸ����



----------------------------------------------------------
--							--
--							--
--		������[��ʿС�㡪����]			--
--							--
--		224575,277025				--
----------------------------------------------------------

---------------��Ѫ�ָ����ж�


----------------��ͨ�Ի���ʼ
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

	Talk( 2, "Gina: Sorry, healing requires 200G. You do not have enough��" )

	Talk( 3, "Gina: Sorry! Healing requires 50G��You do not have enough��" )

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
	
	-----��������
	AddNpcMission ( 6117 )
	AddNpcMission ( 6118 )
	AddNpcMission ( 6119 )
	AddNpcMission ( 6120 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡪����         ������



----------------------------------------------------------
----							--
--							--
--		������[�ư�Ů - ����]			--
--							--
--		225325,278875				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ư�Ů - ���Ƚ���



----------------------------------------------------------
--							--
--							--
--		������[Сɽ��]				--
--							--
--		219350,273050				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Сɽ������






----------------------------------------------------------
--							--
--							--
--		������[�ӻ����� - ������]			--
--							--
--		225075,277025				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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
	--baby--�������Lv1
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����� - ����������


----------------------------------------------------------
--							--
--							--
--		������[�����������]			--
--							--
--		227459,277722				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����������


----------------------------------------------------------
--							--
--							--

	--������[�õ��ϰ塤��������]		--
--							--
--		221150,278125				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤��������




----------------------------------------------------------
--							--
--							--
--		������[��ķ]				--
--							--
--		222629,272668				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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
	----------------����˹-����---01
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ˮ�֡�����


----------------------------------------------------------
--							--
--							--
--		������[���г��ɡ�Ħ����]			--
--							--
--		222050,270400				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ�Ħ����

----------------------------------------------------------
--							--
--							--
--		������[�����ٽ�������˹]			--
--							--
--		230228,270157				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ٽ�������˹



----------------------------------------------------------
--							--
--							--
--		������[ɳᰳǴ�ʹ��ϯ��]			--
--							--
--		225648,270640				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk15 ()
	
	
	Talk( 1, "Xiba: Although I am an Ambassador, I need some time for myself too��Life cannot be just about work. You need to play to balance it too!" )

	AddNpcMission	(1032)
	AddNpcMission	(1195)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳᰳǴ�ʹ��ϯ��


----------------------------------------------------------
--							--
--							--
--		������[�������̻�᳤�����׵���˹]		--
--							--
--		224207,274850				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������̻�᳤�����׵���˹

----------------------------------------------------------
--							--
--							--
--		������[���ߡ���Ϳɽ��]			--
--							--
--		227208,270036				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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
	---------------����
	AddNpcMission	(5557)
	AddNpcMission	(5558)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ߡ���Ϳɽ��

----------------------------------------------------------
--							--
--							--
--		������[�᳤��������]			--
--							--
--		224075,275275				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk18 ()
	
	
	Talk( 1, "Rouri: Hmm��I am wandering what secret does our chairman has? I am really interested to find out��" )
	
	AddNpcMission ( 76 )
	AddNpcMission ( 77 )
	AddNpcMission ( 78 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�᳤��������

----------------------------------------------------------
--							--
--							--
--		������[·�ˡ���]				--
--							--
--		221588,282819				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk19 ()
	
	
	Talk( 1, "Passerby A: Of all the sea monsters, Bubble Clam are the most fearsome. Its true. I have seen one at the port this big. If Sakura 13 hadn't shot a dart at it, those living by the shore would have been done for." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���

----------------------------------------------------------
--							--
--							--
--		������[�ƹ��ҵ���]			--
--							--
--		236002,281965				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk20 ()
	
	
	Talk( 1, "Anthony: What? You want to find out something from me? Then you have found the right guy. However, only money talk. You have to pay for all information. Please input '/?keyword' into your text back for enquiry." )
	
	AddNpcMission ( 500 )
	AddNpcMission ( 501 )
	AddNpcMission ( 358 )
	AddNpcMission ( 372 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ƹ��ҵ���

----------------------------------------------------------
--							--
--							--
--		������[���ꡤ�Ƶ�]			--
--							--
--		196225,269425				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk21 ()
	
	
	Talk( 1, "Tommy: Hi, I am Tommy. What about you? Monsters are running rampant these days." )
	
	AddNpcMission ( 210 )
	AddNpcMission ( 211 )
	AddNpcMission	(1034)
	AddNpcMission	(1197)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ꡤ�Ƶ�

----------------------------------------------------------
--							--
--							--
--		������[����ʦ��������]			--
--							--
--		173269,278261				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk22 ()
	
	
	Talk( 1, "Desmond: Our artisan works are better than you humans, but you humans are just too arrogant to admit." )
	
	AddNpcMission	(1054)
	AddNpcMission	(1216)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ʦ��������


----------------------------------------------------------
--							--
--							--
--		������[D���̡���˽��]			--
--							--
--		2298,2520				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk23 ()
	
	
	Talk( 1, "Smuggling Bunny: Banned items? You name it, I have it! What do you need?" )
	
	AddNpcMission	(1000)
	AddNpcMission	(1164)
			--------���˽�
	--AddNpcMission	(5601)
	--AddNpcMission	(5602)
	--AddNpcMission	(5603)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<D���̡���˽��


----------------------------------------------------------
--							--
--							--
--		������[����˾��١���˹����]		--
--							--
--		71350,141619				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˾��١���˹����


----------------------------------------------------------
--							--
--							--
--		������[�ưɷ���Ա������]			--
--							--
--		99053,133465				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk25 ()
	
	
	Talk( 1, "Mona: Hi! Do you know the famous pirate, Sakura 13? She is my idol! I wish to leave this boring place and be a pirate like her!" )
	AddNpcMission	(1022)
	AddNpcMission	(1079)
	AddNpcMission	(1134)
	AddNpcMission	(1185)
	AddNpcMission	(378)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ưɷ���Ա������

----------------------------------------------------------
--							--
--							--
--		������[ˮ�֡��ϰ�]			--
--							--
--		108330,128563				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk26 ()
	
	
	Talk( 1, "Hi! I am Sailor Dio. Becareful when you are out in the open sea. There are many ferocious monsters out there, especially those sharks. They are demons��and they will bite off your leg! Just like mine! Oh no!...My leg!" )
	AddNpcMission	(1038)
	AddNpcMission	(1092)
	AddNpcMission	(1150)
	AddNpcMission	(1201)
----------------����˹---ˮ�֡��ϰ�--01
	AddNpcMission (5535 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ˮ�֡��ϰ�






----------------------------------------------------------
--							--
--							--
--		������[��ҽ����ɳ]			--
--							--
--		77300,154900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ҽ����ɳ

----------------------------------------------------------
--							--
--							--
--		������[���г��ɡ��꿨��]			--
--							--
--		74300,153400				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ��꿨��


----------------------------------------------------------
--							--
--							--
--		������[���������ʸ�]			--
--							--
--		76662,144769				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk30 ()
	
	
	Talk( 1, "Furlington: Eh? Smelting? Hehe!" )
	Text( 1, "Refine", JumpPage, 2)
	Text( 1, "Nothing...",CloseTalk )


----------------����ˮ��ɰ��Ƭ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1784, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1784, 10 )
	TriggerAction( 1, GiveItem, 1785, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Furlington: Forge��forge��forge��All I do all day long is forge items��zzZZz" )
	Text( 2, "Refine Clarion Fragment",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "Furlington: This Clarion Crystal is made from the fragments. Keep it well. Look for me again." )
	Talk( 4, "Furlington: I can refine 10 Clarion Sand into a Clarion Fragment. You need to pay 200G for my service." )
	AddNpcMission	(1042)
	AddNpcMission	(1094)
	AddNpcMission	(1153)
	AddNpcMission	(1205)


	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���������ʸ�
----------------------------------------------------------
--							--
--							--
--		������[��Ů������]			--
--							--
--		74026,145143				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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
---------------������ɫȾ����
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��Ů������


----------------------------------------------------------
--							--
--							--
--		������[ɳ�פ��������ʹ�����¼�]		--
--							--
--		71220,150827				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk32 ()
	
	
	Talk( 1, "Alix: Hi, I am the Shaitan Ambassador Alix. Have you been there recently? I miss that place." )
	AddNpcMission	(1033)
	AddNpcMission	(1088)
	AddNpcMission	(1145)
	AddNpcMission	(1196)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳ�פ��������ʹ�����¼�

----------------------------------------------------------
--							--
--							--
--		������[�������ˡ��ݲ���ά˹]		--
--							--
--		74100,156300				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������ˡ��ݲ���ά˹

----------------------------------------------------------
--							--
--							--
--		������[�ù��ϰ塤��������]		--
--							--
--		69761,154269				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk34 ()
	
	
	Talk( 1, "Granny Maya: Hi, my inn is closed as I am not in good health." )
	AddNpcMission	(1030)
	AddNpcMission	(1086)
	AddNpcMission	(1139)
	AddNpcMission	(1193)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ù��ϰ塤��������

----------------------------------------------------------
--							--
--							--
--		������[��װ����������]			--
--							--
--		75450,151200				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk35 ()
	
	
	Talk( 1, "Ditter: Hi! We are closed for the moment" )
	Text( 1, "Nothing...",CloseTalk )
	AddNpcMission	(1010)
	AddNpcMission	(1066)
	AddNpcMission	(1122)
	AddNpcMission	(1174)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ����������

----------------------------------------------------------
--							--
--							--
--		������[������פ��������ʹ��������]		--
--							--
--		74171,155325				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<������פ��������ʹ��������

----------------------------------------------------------
--							--
--							--
--		������[�����������Կ�]			--
--							--
--		79600,148800				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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
	

	
	
	
		

	----------תְ��Ϊ����ʿ
	--TriggerCondition( 1, LvCheck, ">", 39 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 1 )
	--TriggerAction( 1, JumpPage, 2 )

	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 1 )
	--TriggerAction( 2, JumpPage, 2 )

-------------------ת�ѻ����ж�

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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����������Կ�

----------------------------------------------------------
--							--
--							--
--		������[�ӻ����ˡ����]			--
--							--
--		72500,155100				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk38 ()
	
	
	Talk( 1, "Kudu: Hi! You come at the right moment! We are having a promotion here. Look for me when you are above Lv 10, I can give you special discount for my items. Maybe you will get some experience bonus too!" )
	Text( 1, "Nothing...",CloseTalk )
	AddNpcMission	(1053)
	AddNpcMission	(1107)
	AddNpcMission	(1163)
	AddNpcMission	(1215)

		
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ����

----------------------------------------------------------
--							--
--							--
--		������[��Ů������]			--
--							--
--		101653,128642				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk39 ()
	
	
	Talk( 1, "Rioli: You have been to many places. Have you met Navy General William? Since he has been transferred to Argent City, the city is a boring place to be in." )
	AddNpcMission	(1035)
	AddNpcMission	(1089)
	AddNpcMission	(1147)
	AddNpcMission	(1198)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��Ů������

----------------------------------------------------------
--							--
--							--
--		������[�����ܲ�ָ�ӹ١���.��˹��׼��]	--
--							--
--		80800,152100				--
---------------------2005-3-8-------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk40 ()
	
	
	Talk( 1, "General Ken: I sense that Maxi will come looking for my trouble one day. Even I sent himto guard other outpost, I am sure that he will make some trouble there too. He is always landing me in trouble��" )
	AddNpcMission	(1017)
	AddNpcMission	(1071)
	AddNpcMission	(1127)
	AddNpcMission	(1180)
---------------����
	AddNpcMission	(5575)
	AddNpcMission	(5576)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ܲ�ָ�ӹ١���.��˹��׼��

----------------------------------------------------------
--							--
--							--
--		������[�����ܲ���ı������������У]		--
--							--
--		65323,150512				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk41 ()
	
	
	Talk( 1, "Colonel Maxi: Hi, I am Colonel Maxi. General Ken delegates me to take care of this place. Hehe! I love to make trouble for him��Hehe!" )
	
	AddNpcMission	(849)
	AddNpcMission	(856)
	AddNpcMission	(858)
	AddNpcMission	(860)
	AddNpcMission	(866)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ܲ���ı������������У

----------------------------------------------------------
--							--
--							--
--		������[Ħ�����˺��ᡤ�ƶ�]		--
--							--
--		65146,158595				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk42 ()
	
	
	Talk( 1, "Freya: Didn't you guys label us as demons? Don't talk to me, arrogant fellow!" )
	
	AddNpcMission	(851)
	AddNpcMission	(853)
	AddNpcMission	(854)
	AddNpcMission	(862)
	AddNpcMission	(864)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Ħ�����˺��ᡤ�ƶ�

----------------------------------------------------------
--							--
--							--
--		������[����������]			--
--							--
--		71187,141438				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk43 ()
	
	
	Talk( 1, "Nisson: I am a close friend of Sonny and the both of us are excellent Navy guards." )

	AddNpcMission	(859)
	AddNpcMission	(857)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		������[����������]			--
--							--
--		71536,141462				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk44 ()
	
	
	Talk( 1, "Sonny: Good friends do not talk about money." )

	AddNpcMission	(474)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		������[·�ˡ���]				--
--							--
--		66976,155428				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk45 ()
	
	
	Talk( 1, "Bey: Thundoria has a nice bar near the harbor. But its too far for me to visit." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���


----------------------------------------------------------
--							--
--							--
--		������[·�ˡ��ͱ�]				--
--							--
--		99475,123473				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk46 ()
	
	
	Talk( 1, "Barbi: Hi, are you an ex-pirate? There are just too much Navy men in Thundoria. The pirates dare not approach!" )
	Text( 1, "Refine", JumpPage, 2)

--------------����ؽ�
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ��ͱ�

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����١��ʵ�ά��]			--
--							--
--		86299,350092				--
 
-----------------------------------------------------------���￪ʼP������
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
	--------------����֮��ʿ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3400, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtain Swordsman equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮���˱���
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3401, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtained Hunter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ҩʦ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3402, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtained Herbalist equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ð���߱���
	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3403, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Obtained Explorer equipment", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Gannon: Incantation set items are Lv 40 equipments from Forsaken City and Dark Swamp. You need to bring me 10 El Runestone and 10 Cam Runestone in exchange. You can select the class for the equipment." )
	--------------����֮˫��ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3404, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Crusader equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�޽�ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3405, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Champion equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�ѻ���װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3406, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Sharpshooter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ʥְ��װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3407, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtain Cleric equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮��ӡʦװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3408, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Seal Master equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮����ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3409, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Obtained Voyager equipment", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 5, "Gannon: Incantation set items belonged to Demonic World Lv50 equipments. You will need to pass me 10 Ja Runestones and 10 Tef Runestones. You can select the related class too." )
	--------------����֮˫��ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3410, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Crusader equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�޽�ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3411, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Champion equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮�ѻ���װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3412, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Sharpshooter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮ʥְ��װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3413, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtain Cleric equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮��ӡʦװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3414, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Seal Master equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------����֮����ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3415, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Obtained Voyager equipment", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 6, "Gannon: Enigma set items belonged to Demonic World Lv60 equipments. You will need to pass me 10 Ter Runestones and 10 Fa Runestones. You can select the related class too." )
	--------------��֮˫��ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3416, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Crusader equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮�޽�ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3417, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Champion equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮�ѻ���װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3418, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Sharpshooter equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮ʥְ��װ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3419, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtain Cleric equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮��ӡʦװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3420, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Seal Master equipment", MultiTrigger, GetMultiTrigger(), 1)
	--------------��֮����ʿװ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3421, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Obtained Voyager equipment", MultiTrigger, GetMultiTrigger(), 1)

 
	InitTrigger() --�ϳɲر�ͼ
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

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 5 )
	TriggerAction( 1, GiveItem, 1000, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "Gannon: Ah? Can you give me your Fragment? It will be worth your while." )
	Text( 9, "5 Illusion Fragments to exchange for 1 Burry Blueprint", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 30 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 30 )
	TriggerAction( 1, GiveItem, 1001, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "30 Illusion Fragments to exchange for 1 Encrypted Blueprint ", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 100 )
	TriggerAction( 1, GiveItem, 1002, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "100 Illusion Fragments to exchange for 1 Sealed Blueprint", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ�ͼֽ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 500 )
	TriggerAction( 1, GiveItem, 1003, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "500 Illusion Fragments to exchange for 1 Invocation Blueprint", MultiTrigger, GetMultiTrigger(), 1)


	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4656, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "Gannon: Its such a beautiful Illusion Heart. Let me use this ring to exchange." )
	Text( 10, "Exchanged Flame of Fury", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4657, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Stable Cliff", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4658, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Wind of the Gentle Soul", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4659, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Redeem Entwined Rattan", MultiTrigger, GetMultiTrigger(), 1)

	--------------�һ���ָ
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����١��ʵ�ά��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���峤����������.��]		--
--							--
--		90374,364023				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���峤����������.��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���ߵ�����ŷ��]			--
--							--
--		86214,359121				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

	Talk( 3, "Ouya: Money first��This is the Energetic Tea you needed. Keep it well." )
	Talk( 4, "Ouya: Oh��It requires 10 Medicated Grass and 1 Bottle to make 1 Liquorice Potion. Also, it needs a fee of 50G." )
	Talk( 5, "Ouya: This Elven Fruit Juice was made from your Elven Fruit. Keep it well." )
	Talk( 6, "Ouya: Sorry, you do not have the required items. Elven Fruit Juice requires 10 Elven Fruits and 1 Glass to make." )
	Talk( 7, "Ouya: Money first...This is the Energetic Tea you needed. Keep it well." )
	Talk( 8, "Ouya: Oh��It requires 10 Fancy Petal and 1 Bottle to make 1 Energetic Tea. Needs a fee of 50G too." )

	AddNpcMission( 1007 )
	AddNpcMission( 1117 )
	AddNpcMission( 1171 )
	AddNpcMission(	1062	)
	AddNpcMission(	1229	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ߵ�����ŷ��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[��װ������Ī��]			--
--							--
--		89463,360213				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ������Ī��

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���г��ɡ����˹]			--
--							--
--		90637,353900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ����˹

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�����ӳ�Ա������]		--
--							--
--		86734,366071				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk52 ()
	
	
	Talk( 1, "Franco: I wanted to join the Navy actually. However, I am a jinx. One time while we were out in the open sea, our ship got attacked by 10 pirate ships. My officers were stripped bare with only their underwear left. They got so angry with me that they made me to look after this place in Shaitan." )
	Text( 1, "Nothing...",CloseTalk )
	
	
	----------------תְ��Ϊѵ��ʦ
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

	Talk(5, "Sigh��it's a pity that you are not a Beast Tamer. I believed that you have the ability to become one. Let me teach you how!")
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ӳ�Ա������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[������ͭͭ��]			--
--							--
--		90424,349871				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<������ͭͭ��




--------------------------------------------------------------������ͽ�� 

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
--		ɳᰳ�[����]				--
--							--
--		88307,352019				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk54 ()
	
	
	Talk( 1, "Lena: Hi! I am the wife of Smithy." )
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)

----------------������ɫȾ����
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�ӻ����ˡ���ī]			--
--							--
--		84040,358567				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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
	--baby--�������Lv1
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
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ���ī

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�õ��ϰ塤����]			--
--							--
--		81035,349813				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk56 ()
	
	
	Talk( 1, "Moken: Hi! Need a stay? I have a room for two above." )
	Text( 1, "Make nice desert", JumpPage, 2)


--------------------�����������֭
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

----------------�����ۺϹ�֭
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[��ʿС�㡤����]			--
--							--
--		87954,356282				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk57 ()
	
	
	Talk( 1, "Landy: Hi I am Nurse Landy. I am still in training so my healing skill is mediocre. I am unable to heal you for the moment. If you need anything, look for Physician - Shala at (903,3646)." )
	AddNpcMission	(1129)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡤����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������¿�]			--
--							--
--		80262,364842				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk58 ()
	
	
	Talk( 1, "Decky: Hey! I am the werewolf pirates leader Decky! I am currently ranked 7th on the Navy bounty list. Why I telling you this? It is because I am not afraid of the Navy! Hehe!" )
	AddNpcMission	(1125)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������¿�

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����ָ������˿��]			--
--							--
--		87614,357250				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ָ������˿��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������´���Ա����΢����У]		--
--							--
--		86507,364804				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk61 ()
	
	
	Talk( 1, "Admiral Nic: Hi! I am Nic, the first female officer appointed here." )
	AddNpcMission	(1126)
	AddNpcMission	(98)
	AddNpcMission	(99)
	AddNpcMission	(150)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������´���Ա����΢����У

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ɳᰳ��̻�᳤��������]		--
--							--
--		87362,354566				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk62 ()
	
	
	Talk( 1, "Guile: I love collecting strange items, buy low price items and sell them off at a higher price. I can be considered the most resourceful trader. Is there any matter?" )
	Text( 1, "Nothing...",CloseTalk )
	AddNpcMission	(1144)

	-----��������
	AddNpcMission ( 6115 )
	AddNpcMission ( 6116 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳᰳ��̻�᳤��������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ�ɺ����]		--
--							--
--		84634,349945				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk63 ()
	
	
	Talk( 1, "Wowo: Little Daniel cannot be trusted. I moved here to avoid him" )



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ�ɺ����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[С������]			--
--							--
--		89875,368331				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk64 ()
	
	
	Talk( 1, "Welly: Hi! I am the world only talking lamb! Baa!" )

	AddNpcMission ( 233 )
	---------------����
	AddNpcMission	(5565)
	AddNpcMission	(5566)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<С������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�᳤������˾���]		--
--							--
--		87171,354774				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk65 ()
	
	
	Talk( 1, "Tintin: We always talk but never take any action." )
--	AddNpcMission ( 905 )
	----------------�����
	AddNpcMission ( 5604 )
	AddNpcMission ( 5605 )
	AddNpcMission ( 5606 )
	AddNpcMission ( 5607 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�᳤������˾���

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ���]				--
--							--
--		79792,355469				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk66 ()
	
	
	Talk( 1, "Yay: Holy Priestess is at the temple in Shaitan City. She has the blessings of many devotees." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ɳ�ˡ�����������]			--
--							--
--		108242,310135				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk67 ()
	
	
	Talk( 1, "Supermun: I am the great descendent of Superman! I will rule the desert with my super powers! (Oh god he is dreaming again��)" )
	
	AddNpcMission ( 237 )
	AddNpcMission ( 238 )
	AddNpcMission ( 239 )
	AddNpcMission ( 240 )
	AddNpcMission ( 248 )
	AddNpcMission ( 557 )
--------eleven
	AddNpcMission (5011 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳ�ˡ�����������


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������ӡ���ɳ��]			--
--							--
--		125471,349171				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk68 ()
	
	
	Talk( 1, "Hassan: Hmm��I smell something nice the other day and the smell has lingered for very long. I wish to find out what is it exactly." )
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
	---------------����
	AddNpcMission	(5553)
	AddNpcMission	(5554)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������ӡ���ɳ��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����ר�ҡ�ɳ÷��]			--
--							--
--		66465,609367				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk69 ()
	
	
	Talk( 1, "Shamel: Hi! I am a musician that bring melody to this place." )
---------------����
	AddNpcMission	(5559)
	AddNpcMission	(5560)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ר�ҡ�ɳ÷��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ʥŮ������]			--
--							--
--		86248,330381				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ʥŮ������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ�������]			--
--							--
--		93176,352977				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk71 ()
	
	
	Talk( 1, "Fairu: You know something? Cactus also has flowers! And the smell is just heavenly!" )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ�������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����᳤������]			--
--							--
--		83171,354853				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk72 ()
	
	Talk( 1, "Forlan: Unity is strength! Want to challenge the Top 3 Guilds? Want to rule this world? Guild leader may apply for guild challenge with me. Your guild might make it to the Top 3 too!" )
	Text( 1, "View Top 3 Guild", ListChallenge)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����᳤������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����������]			--
--							--
--		134423,52988				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�ӻ����ˡ���³]			--
--							--
--		135671,48320				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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
	--baby--�������Lv1
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
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ���³

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[ҩ���ϰ塤���]			--
--							--
--		135298,49926				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

	---------------------��ҳ���9��
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ҩ���ϰ塤���


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[��ʿС�㡤����]			--
--							--
--		131725,50169				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk76 ()
	
	
	Talk( 1, "Anne: Hi! I am Nurse Anne. As I am on probation, I cannot give you any treatment just yet." )
	AddNpcMission	(1018)
	AddNpcMission	(1073)
	AddNpcMission	(1128)
	AddNpcMission	(1181)
	AddNpcMission(	1236	)
	



	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡤����

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����ָ��������¶��]		--
--							--
--		131577,50700				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������


-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ָ��������¶��


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ���ʿ����ŷ]		--
--							--
--		136573,57078				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk78 ()
	
	-------------------תְ˫��
	Talk( 1, "Ray: I am a bounty hunter. I love to hunt for undeads. If you are interested, I can recommend a few places to you." )

		----------------תְ��Ϊ����
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

	----------------תְ��Ϊ�ѻ���
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

-------------------ת�����ж�
	--TriggerCondition( 1, LvCheck, ">", 9 )
	----TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 0 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerCondition( 2, LvCheck, ">", 9 )
	--TriggerCondition( 2, IsCategory, 3 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 2 )
	--TriggerFailure( 2, JumpPage, 1 )

----------------�ѻ���

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


	-----��������
	AddNpcMission ( 6125 )


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���Ǳ���ʿ����ŷ

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ��̻�᳤��������]		--
--							--
--		129486,49842				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk79 ()
	
	
	Talk( 1, "Reyno: Wherever there are money to be earned, I will be there. Hi! I am Icicle Chairman - Reyno. The richest man in the city." )
	Text( 1, "Decoct Recovery Potion", JumpPage, 5)

	--------------------���������
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

	----------------�ϳ�ħ��ҩˮ
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�̻�᳤��������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ����塤�����˹]		--
--							--
--		134652,45141				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���Ǳ����塤�����˹

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���г��ɡ�������]		--
--							--
--		136058,51931				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ�������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�ưɷ���Ա���Ű���]		--
--							--
--		131083,53031				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk82 ()
	
	
	Talk( 1, "Babara: Hi, do you have any interesting story to tell?" )
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)
	Text( 1, "Bake Pastry", JumpPage, 6)

-----------������ɫȾ����
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
-------------------------������ɫȾ����
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ưɷ���Ա���Ű���

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[��װ����������]		--
--							--
--		134926,53992				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ����������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�õ��ϰ塤Լɪ��]		--
--							--
--		129074,54098				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk84 ()
	
	
	Talk( 1, "Yaskey: Welcome to the Inn of Icicle City. I am the owner Yaskey." )
	AddNpcMission	(1085)
	AddNpcMission	(184)
	AddNpcMission	(185)
	AddNpcMission	(186)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤Լɪ��

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[·�ˡ���]		--
--							--
--		133550,46900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk85 ()
	
	
	Talk( 1, "Tink: Have you seen my three brothers? They live in Shaitan, Argent and Thundoria respectively." )
	Text( 1, "Refine", JumpPage, 2)
-------------------����ؽ��ʯ
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
	-------------------·�ˡ���  -------------------------��з
	AddNpcMission ( 5859 )
	AddNpcMission ( 5860 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���




------------------------------------------------------------
-- ����֮��:��ʷ����:����ָ������
------------------------------------------------------------






------------------------------------------------------------
-- ͨ�þ������ű�
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
-- �����ǡ���Ѳ�߱������˹
------------------------------------------------------------

function r_talk88 ()

	Talk( 1, "Marcusa: Hi, I am new around here. My name is Marcusa. Wonder why so many squids appear outside of Argent. My captain sends me to clear up the mess they did with their ink��sob��sob. New man always gets bullied��" )

	Talk( 2, "Marcusa: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). Explorer look for Little Daniel at (2193, 2730). You can reach Icicle or Shaitan by using the teleporter." )


	---------------------��ҳ���9��
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
-- ɳᰳǡ���Ѳ�߱�������
------------------------------------------------------------

function r_talk89 ()

	Talk( 1, "Michael: Hi, I am suppose to patrol around here.. You better be careful as the scorpions here are dangerous. Its so boring��" )
	
	Talk( 2, "Michael: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Argent by using the teleporter." )

	---------------------��ҳ���9��
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
-- ���Ǳ�����Ѳ�߱���СĪ
------------------------------------------------------------

function r_talk90 ()

	Talk( 1, "Little Mo: I am supposed to patrol around this area all day long. It is so boring and cold around here. Do you have something for me to eat? I am so hungry. There are no good foods around here��" )

	Talk( 2, "Little Mo: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Shaitan by using the teleporter." )

	---------------------��ҳ���9��
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
-- ɳᰳǡ���ҩ�����ˡ�ɳ����
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


	---------------------��ҳ���9��
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
--�����ӵ�ѩԭ    ����ҽ������������
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
-- ����ɭ�֡�������ҽ��������ϣ��
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

	---------------����
	AddNpcMission	(5567)
	AddNpcMission	(5568)
--	AddNpcMission ( 6052 )
--	AddNpcMission ( 6053 )
	


	
end

------------------------------------------------------------
-- �¶�άƽԭ-----����
------------------------------------------------------------

function r_talk94 ()

	Talk( 1, "Fukei: You may say that I am arrogant! But my dream is to be a proud sailor? Did I say that?" )

end

------------------------------------------------------------
-- ��������վ-----���϶�
------------------------------------------------------------

function r_talk95 ()

	Talk( 1, "Fardey: My dumb friend is thinking to bring winter clothings to sell in the hot and dry Shaitan City��What can I do to deter him��." )
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

	------------------����
	--AddNpcMission (5504	)



end

------------------------------------------------------------
-- �¶�άƽԭ-----ϯ��
------------------------------------------------------------

function r_talk96 ()

	Talk( 1, "Xitron: Everyone says that I'm a wolf in sheep's clothing. Hehe." )

end

------------------------------------------------------------
-- �¶�άƽԭ-----������
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
-- �¶�άƽԭ-----����
------------------------------------------------------------

function r_talk98 ()

	Talk( 1, "Bubu: My father is a pirate so I want to join the Navy and be their spy!" )

end

------------------------------------------------------------
-- �¶�άƽԭ-----³³
------------------------------------------------------------

function r_talk99 ()

	Talk( 1, "Lulu: Haha! See no evil!" )

	AddNpcMission(	1736	)
	AddNpcMission (	1925	)
	AddNpcMission (	1946	)

	---------------����
	AddNpcMission	(5561)
	AddNpcMission	(5562)
--	AddNpcMission ( 6040 )
--	AddNpcMission ( 6041 )



end

------------------------------------------------------------
-- �¶�άƽԭ-----�µ�˹.����
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
-- �¶�άƽԭ-----÷��
------------------------------------------------------------

function r_talk101()

	Talk( 1, "Melissa: To end a gossip, start another." )

end

------------------------------------------------------------
-- �¶�άƽԭ-----�Ų���
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
-- �¶�άƽԭ-----С���ɭ
------------------------------------------------------------

function r_talk103()

	Talk( 1, "Little Cuwen: Mum say I should not talk to stranger��Can I have a sweet?" )

end

------------------------------------------------------------
-- �¶�άƽԭ-----�꼧����
------------------------------------------------------------

function r_talk104()

	Talk( 1, "Aunt Mary: I love to eat Black Forest Cake, baked with a thick layer of chocolates on top. Yummy��It makes me drool." )

end

------------------------------------------------------------
-- �¶�άƽԭ-----��������
------------------------------------------------------------

function r_talk105()

	Talk( 1, "Waala: Tell you a secret��Recently, my friends and I made a new card game. It requires 4 person and 108 cards. Each of us sit in a circle and��." )

	AddNpcMission 	(451)
	AddNpcMission 	(457)
	AddNpcMission 	(621)
	AddNpcMission 	(625)
	AddNpcMission(	1590	)
	AddNpcMission (	1902	)
	AddNpcMission (	1940	)

	




end

------------------------------------------------------------
-- �¶�άƽԭ-----��������
------------------------------------------------------------

function r_talk106()

	Talk( 1, "Julie Burn: Do you want to know why the blacksmith is bald? I like to gossip? You are so boring!" )

	AddNpcMission 	(689)
	AddNpcMission	(1109)
	AddNpcMission(	1579	)
	AddNpcMission (	1918	)





end

------------------------------------------------------------
-- �¶�άƽԭ-----�����˹
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
-- �¶�άƽԭ-----�Ͽ��ɭ
------------------------------------------------------------

function r_talk108()

	Talk( 1, "Old Cuwen: In this warm summer I feel like going to a isolated island for a holiday." )

	AddNpcMission	(475)

end

------------------------------------------------------------
-- �¶�άƽԭ-----�����б�
------------------------------------------------------------

function r_talk109()

	Talk( 1, "Shhhh~ softer, our boss is speaking" )

end

------------------------------------------------------------
-- ���˻�Į-----��������˹
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
-- ���˻�Į-----�׶�����
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
-- ���˻�Į-----�¸�ɭ
------------------------------------------------------------

function r_talk112()

	Talk( 1, "Augustan: There are many myth and legends waiting for a great adventurer to solve them all!" )

	AddNpcMission	(1111)


end

------------------------------------------------------------
-- ���˻�Į-----�����ǡ��Ʒ�
------------------------------------------------------------

function r_talk113()

	Talk( 1, "Jeynaa: Hi, I am Jeynaa." )
	AddNpcMission	(1131)

end

------------------------------------------------------------
-- ���˻�Į-----�ϵ�����
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
-- ���˻�Į-----�������˹
------------------------------------------------------------

function r_talk115()

	Talk( 1, "Ruben Actus: I want to earn a lot of gold. If that cannot be done, I need a party mate that is able to supply me with lots of gold." )
	AddNpcMission	(1120)


end

------------------------------------------------------------
-- ���˻�Į-----÷�����ǡ�è��
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
-- ���˻�Į-----�ŵ����ˡ���ǽ
------------------------------------------------------------

function r_talk117()

	Talk( 1, "Gudas: Who say I will get seasick, in this golden era, how can I be seasick! I am only not accustomed to the new ship." )

end

------------------------------------------------------------
-- ���˻�Į-----����˹����ɳ
------------------------------------------------------------

function r_talk118()

	Talk( 1, "Gasardis: It doesn't pay to be kind��" )
	
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
-- ���˻�Į-----ͨ���ߡ��¹���
------------------------------------------------------------

function r_talk119()

	Talk( 1, "Oracle Moonlight: I can see what others cannot see��like the shadow behind you��" )

	AddNpcMission 	(804)
	AddNpcMission 	(808)
	
	AddNpcMission	(	468	)
	AddNpcMission(	1586	)
	AddNpcMission (	1920	)

	
---------------����
	AddNpcMission	(5585)
	AddNpcMission	(5586)



end

------------------------------------------------------------
-- ���˻�Į-----������˹�����
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
-- ���˻�Į-----���ﰬ�ǡ�����
------------------------------------------------------------

function r_talk121()

	Talk( 1, "Neila: Ya, you��me��.that��oh��.Sorry! Did I say anthing?" )

	
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
-- ���˻�Į-----��������
------------------------------------------------------------

function r_talk122()

	Talk( 1, "Geliya: Argent City is well known as a trendsetter. Those pirates cannot match it." )

	AddNpcMission 	(428)
	AddNpcMission 	(812)
	AddNpcMission	(1025)
	AddNpcMission	(1188)


end

------------------------------------------------------------
-- ���˻�Į-----����
------------------------------------------------------------

function r_talk123()

	Talk( 1, "Beck: I have a brother named Ham. However, I am cuter!" )

end

------------------------------------------------------------
-- ���˻�Į-----��ķ
------------------------------------------------------------

function r_talk124()

	Talk( 1, "Ham: I have a brother by the name of Beck. But I am the better half." )

end

------------------------------------------------------------
-- ���˻�Į-----����������΢��
------------------------------------------------------------

function r_talk125()

	Talk( 1, "Love Yuri: Sigh��Love is so near yet so far��Sigh��" )

end

------------------------------------------------------------
-- ���˻�Į-----ޱ���
------------------------------------------------------------

function r_talk126()

	Talk( 1, "Willi: First! Never say that I am fat! Second! Never say that I am plump! Third! Don't tell me that I look like a pig! Ok��you can speak now." )

	AddNpcMission 	(685)
	AddNpcMission 	(688)
	AddNpcMission 	(690)
	AddNpcMission	(1097)
--	AddNpcMission ( 6034 )
--	AddNpcMission ( 6035 )


end
------------------------------------------------------------
-- ���˻�Į-----����������
------------------------------------------------------------
function r_talk127()
Talk( 1, "Granny Dong: Young fellow��explore while you are still young." )
	
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
-- ���˻�Į-----�ޱ�˹������
------------------------------------------------------------

function r_talk128()

	Talk( 1, "Robin: When I was small, my father would put me in his backpack and roam the world. I wanted to do the same too��" )

end

------------------------------------------------------------
-- ���˻�Į-----��á�Ƥ��
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

	---------------����
	AddNpcMission	(5583)
	AddNpcMission	(5584)



end

------------------------------------------------------------
-- ������˹��ԭ-----���򡤱�Ȫ
------------------------------------------------------------

function r_talk130()

	Talk( 1, "Wynne: My home is in Icicle Castle. Have you visited my house?" )
---------------����
	AddNpcMission	(5581)
	AddNpcMission	(5582)
end

------------------------------------------------------------
-- ������˹��ԭ-----��˹��С��
------------------------------------------------------------

function r_talk131()

	Talk( 1, "Lessie: People always refer to me as a little worm��But I will not stay this small forever��" )

end

------------------------------------------------------------
-- ������˹��ԭ-----���׶�����
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
-- ������˹��ԭ-----����ķ������
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
-- ������˹��ԭ-----������ķ
------------------------------------------------------------

function r_talk134()

	Talk( 1, "Lamut: I cannot see any city after three days of walking��.Am I lost again?" )
	AddNpcMission	(1083)

end

------------------------------------------------------------
-- ������˹��ԭ-----������ķ
------------------------------------------------------------

function r_talk135()

	Talk( 1, "Irisis: If you never bring me a letter by the \"Legendary Prince Charming\", don't talk to me��" )
	AddNpcMission	(1098)

end


------------------------------------------------------------
-- ������˹��ԭ-----������
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
-- ������˹��ԭ-----�ն����
------------------------------------------------------------

function r_talk137()

	Talk( 1, "Shereda: Boring...this is really so boring..." )
	AddNpcMission	(1072)

end

------------------------------------------------------------
-- ������˹��ԭ-----Լɪ����
------------------------------------------------------------

function r_talk138()

	Talk( 1, "Ciao: I hate those squids! They always spray me with their ink!" )
	AddNpcMission	(1105)

end

------------------------------------------------------------
-- ������˹��ԭ-----��ݮ����
------------------------------------------------------------

function r_talk139()

	Talk( 1, "Strawberry: Have you seen those pinkish piglets? They are the tastiest around here." )
---------------����
	AddNpcMission	(5555)
	AddNpcMission	(5556)
end

------------------------------------------------------------
-- ������˹��ԭ-----����
------------------------------------------------------------

function r_talk140()

	Talk( 1, "Eve: Hi! I am Eve. What are you doing here?" )

end

------------------------------------------------------------
-- ������˹��ԭ-----��ɺ��
------------------------------------------------------------

function r_talk141()

	Talk( 1, "Susana: Oh my god! Time is passing me by so fast!" )

end

------------------------------------------------------------
-- ������˹��ԭ-----��ŵ��
------------------------------------------------------------

function r_talk142()

	Talk( 1, "Caroline: I am a vegetarian, hence theres something that troubles me. Is the rolling Melon an animal or vegetable?" )

end

------------------------------------------------------------
-- ������˹��ԭ-----ղķ˹
------------------------------------------------------------

function r_talk143()

	Talk( 1, "Jameson: Rumored that there is a talking lamb in this world��" )

end

------------------------------------------------------------
-- ������˹��ԭ-----¶��������
------------------------------------------------------------

function r_talk144()

	Talk( 1, "Lucy: Hi! Visitor!" )

end

------------------------------------------------------------
-- ������˹��ԭ-----�������
------------------------------------------------------------

function r_talk145()

	Talk( 1, "Yulandor: I always try to earn more money by killing monsters. However, I discover that they have very small purse recently��" )

end

------------------------------------------------------------
-- ������˹��ԭ-----��������
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
-- ������˹��ԭ-----����
------------------------------------------------------------

function r_talk147()

	Talk( 1, "Berry: This sky is so blue... Blue�� Ocean�� Blue�� Blue�� Oh my�� mood also�� Blue�� Blue!" )

	AddNpcMission ( 401 )
	AddNpcMission 	(810)
	AddNpcMission	(1040)
	AddNpcMission	(1203)
	AddNpcMission(	1433	)
	AddNpcMission (	1909	)

	
---------------����
	AddNpcMission	(5579)
	AddNpcMission	(5580)





end

------------------------------------------------------------
-- ������˹��ԭ-----������
------------------------------------------------------------

function r_talk148()

	Talk( 1, "Ketan: Hi, I am pondering why there isn't any moon here. What about you?" )

end

------------------------------------------------------------
-- ������˹��ԭ-----��Ъ��÷�ַ�
------------------------------------------------------------

function r_talk149()

	Talk( 1, "Missy Elene: ..............(I don't have anything to say to you...)" )

end

------------------------------------------------------------
-- ���Ǳ�-----ˮ�֡����ϼ�
------------------------------------------------------------

function r_talk156()

	Talk( 1, "Ajax: Hi! I am the best sailor around here. Do you need my help?" )

end

------------------------------------------------------------
-- ���￩������վ-----����
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

	---------------����
	AddNpcMission	(5587)
	AddNpcMission	(5588)

--	AddNpcMission ( 6042 )
--	AddNpcMission ( 6043 )


end

------------------------------------------------------------
-- ���￩������վ-----������
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
-- �߶�ŵ����վ-----����˹
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
-- �Ͽ󲹸�վ-----�￨��
------------------------------------------------------------

function r_talk160()

	Talk( 1, "Kal: Hi! I am Security - Kal! This place is dangerous��" )

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
-- �Ͽ󲹸�վ-----�￨��
------------------------------------------------------------

function r_talk161()

	Talk( 1, "Drunky: Groan��I am so hungry��I lost my lunchbox��Sigh��" )

	AddNpcMission ( 284 )
	AddNpcMission ( 285 )
	AddNpcMission ( 311 )
end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----���龫
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

	-----��������
	AddNpcMission ( 6121 )
	AddNpcMission ( 6122 )

	
end

------------------------------------------------------------
-- ���ò���վ-----�մ�
------------------------------------------------------------

function r_talk163()

	Talk( 1, "Linda: I don't want to work OT! But my boss force me to OT everyday��I want a pay rise!" )
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
-- ���ò���վ-----�������
------------------------------------------------------------

function r_talk164()

	Talk( 1, "Dada: Hi my friend. How can you come to such a dangerous place without any supplies?" )

end

------------------------------------------------------------
-- ���ò���վ-----������
------------------------------------------------------------

function r_talk165()

	Talk( 1, "Gregg: Hi, is there anything you required?" )
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	---------------����
	AddNpcMission	(5563)
	AddNpcMission	(5564)
end

------------------------------------------------------------
-- �Ͳ�����վ-----ĢĢ
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

	---------------����
	AddNpcMission	(5577)
	AddNpcMission	(5578)




end

------------------------------------------------------------
-- ɳȪ����վ-----ά��
------------------------------------------------------------

function r_talk167()

	Talk( 1, "Wenona: I am getting married soon! I want everybody to share my joy!" )

	AddNpcMission 	(418)
	AddNpcMission 	(641)
	AddNpcMission 	(650)
	AddNpcMission	(1156)

	
end


------------------------------------------------------------
-- ɳȪ����վ-----�Ʒ�
------------------------------------------------------------

function r_talk168()

	Talk( 1, "Fey Fey: Hi! My name is Fey Fey." )

	AddNpcMission 	(422)
	AddNpcMission 	(639)
	AddNpcMission 	(648)
	AddNpcMission	(1121)
	AddNpcMission(	1439	)
	AddNpcMission (	1916	)

	---------------����
	--AddNpcMission (5503	)

---------------����
	AddNpcMission	(5569)
	AddNpcMission	(5572)

	
end

------------------------------------------------------------
-- ɳȪ����վ-----����
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
-- ������˹����վ-----���
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
-- ɳȪ����վ-----��������
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
-- ����Ӫ�ز���վ-----��˾
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
-- ����Ӫ�ز���վ-----��������
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
-- ��������վ-----�׿��ʷ���
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
-- ��������վ-----����
------------------------------------------------------------

function r_talk175()

	Talk( 1, "Nana: I guess I am stupid��being lost just outside of the city. If only I have a automated guide." )

	AddNpcMission 	(405)
	AddNpcMission 	(432)
	AddNpcMission 	(668)
	AddNpcMission 	(672)
	AddNpcMission 	(673)
	AddNpcMission 	(677)
	AddNpcMission	(1087)
	AddNpcMission(	1429	)
	AddNpcMission (	1928	)
---------------����
	AddNpcMission	(5589)
	AddNpcMission	(5590)
--	AddNpcMission ( 6050 )
--	AddNpcMission ( 6051 )
	




end

------------------------------------------------------------
-- ��������վ-----����үү
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
-- ����Ӫ�ز���վ-----��̩
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
-- �¶�άƽԭ-----�������ˡ���ķ
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
-- ������-----��װ�����������
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
-- ��֮��-----����
------------------------------------------------------------
function r_talk223()


	Talk( 1, "Lanna: Hi! I am the Teleporter of Autumn Island. How can I help you?" )
	Text( 1, "Return to Icicle City", GoTo, 1318, 510, "darkblue" )

end


------------------------------------------------------------
-- ��ѩ��-----����������
------------------------------------------------------------
function r_talk224()


	Talk( 1, "Pirate Jeremy: \"I'm a pirate! Lala! I'm a happy go lucky pirate! Oh yeah!\"" )

	AddNpcMission ( 306 )
	AddNpcMission ( 307 )
	AddNpcMission ( 308 )

end

------------------------------------------------------------
-- ��ɳ��-----�ܿ˴���
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
-- ���Ǳ��³�-----³����
------------------------------------------------------------
function r_talk226()


	Talk( 1, "Luke: My brother loves to create trouble for me��always expecting me to clear the mess. Sigh��" )
	
	Talk( 2, "Luke: My brother loves to create trouble for me��always expecting me to clear the mess. Sigh��")
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
	-----------��������������۽�ָ,���Ƕ��˲�����
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
-- ����Ӫ�ز���վ-----��������ʦ
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
-- �����ӵ²���վ-----���ϡ�������
------------------------------------------------------------
function r_talk228()

	Talk( 1, "Simon Gilter: Sigh��When can I become an officier in the Navy? Am I not charming?" )
	
	AddNpcMission ( 837 )
	AddNpcMission ( 838 )
	AddNpcMission ( 839 )

end

------------------------------------------------------------
-- �����ӵ²���վ-----������΢��
------------------------------------------------------------
function r_talk229()

	Talk( 1, "Azur Breeze: Please remember to keep any nice looking branch for me." )

	AddNpcMission ( 840 )
---------------����
	AddNpcMission	(5591)
	AddNpcMission	(5592)
--	AddNpcMission ( 6048 )
--	AddNpcMission ( 6049 )

end

------------------------------------------------------------
-- �����ӵ²���վ-----ِ��ħ��
------------------------------------------------------------
function r_talk230()

	Talk( 1, "Sa Mori: Hohoho! There isn't any lady as beautiful and gentle as me in this world." )

	AddNpcMission ( 844 )
	AddNpcMission ( 841 )
	AddNpcMission ( 842 )
	AddNpcMission ( 843 )

end

------------------------------------------------------------
-- �����ӵ²���վ-----���ݡ���ʯ
------------------------------------------------------------
function r_talk231()

	Talk( 1, "Carin Livingstone: I hate that fat old granny over there. Still dare to claim that she is young and beautiful. Pukes!" )

	AddNpcMission ( 845 )
	AddNpcMission ( 846 )
	AddNpcMission ( 847 )
	AddNpcMission ( 848 )

end

------------------------------------------------------------
-- ��������վ-----��ά�����
------------------------------------------------------------
function r_talk232()

	Talk( 1, "Sasha: The wind here is very big and my delicate skin often get expose to the sand particle in the wind. I use seaweed and mud found in Icespire to keep them in good condition. Do you want to try too." )
	
	AddNpcMission ( 877 )
	AddNpcMission ( 883 )
	AddNpcMission ( 884 )


end

------------------------------------------------------------
-- ��������վ-----���ġ���
------------------------------------------------------------
function r_talk233()

	Talk( 1, "Kevin Wolf: I am a wolf wandering in the lonely desert��." )

	AddNpcMission ( 881 )
end

------------------------------------------------------------
-- ������-----��������ʦ������
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
-- �Ͽ󲹸�վ-----��Ʒ���ˡ�����
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
-- ����ɭ�ֲ���վ-----��Ʒ���ˡ����
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
-- �߶�ŵ����վ-----��Ʒ���ˡ�������
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
-- ������-----��Ʒ���ˡ�ά�˶�
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
-- �����ӵ²���վ-----��Ʒ���ˡ�����
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
-- �Ͳ�����վ-----��Ʒ���ˡ�����
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
-- ��������վ-----��Ʒ���ˡ����
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
-- ������-----��ϴ��
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
-- ���Ŷӳ�-----����ѧ��
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
-- ����֮��-----����ѧ��
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
-- ħ������-----����ѧ��
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
-- ��������-----����ѧ�Ҷӳ�
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
-- ������-----�Ĺ�
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
-- ������-----�רԱ
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
-- ������-----��ԭ
------------------------------------------------------------
function mmm_talk02()
	Talk( 1, "Qu Yuan: A long journey home...Sigh...")
	AddNpcMission ( 902 )
	AddNpcMission ( 903 )
	AddNpcMission ( 904 )
end
-----------------------------------------------------------
---ɳᰳ�---�������Ա�����ö�
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

------------------------------Ѱ����ʧ�İ���
function el_talk01()
	Talk( 1, "Little Fish: Be back fast! I can't handle it alone��..")	
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
---����---��������
-----------------------------------------------------------
-------------------------------------��������
function el_talk03()
	Talk( 1, "Mysterious Granny: I do not understand what is so mysterious about me��")	
	AddNpcMission ( 918 )
--------eleven
	AddNpcMission ( 5018 )
	AddNpcMission ( 5020 )
	AddNpcMission ( 5021)
	AddNpcMission ( 5022)
end
-----------------------------------------------------------
---������---���ص�¯��
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
---����---������
-----------------------------------------------------------
function star_talk03 ()
	Talk( 1, "Lucky Chance: Hi, I advised you to leave some empty slots in your inventory before playing. You might win something great!" )
	Text( 1, "Playing Lucky Chance", JumpPage, 2 )
	Text( 1, "Try your luck, play a round!", OpenTiger )
	Talk( 2, "Lucky Chance: Each try requires 5 Fairy Coins. You can try multiple times. The more you try, the higher your chance of winning!" )
end 
--------------------------------------Ѫ�ȵĸ߸�Ь
function el_talk04 ()
	
	Talk( 1, "Skinny Worker: Sigh...Sigh...Oh god, who can take revenge for me��" )-------------(2249,2705)
	AddNpcMission ( 919 )
end

-----------------------------------------------------------
---ӡ�ڰ��ɡ���˹
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

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�Ҷ�����Ա
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

	--�һ�������Ʒ ID,����,�һ�������Ʒ����,�����ֵ
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

	
	--�һ�������Ʒ ID,����,�һ�������Ʒ����,�����ֵ
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

	
	--�һ�������Ʒ ID,����,�һ�������Ʒ����,�����ֵ
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


-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ϳɽ���Ա
-----����Ա-��
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

-----��������
function max_talka2()
	Talk( 1, "Matchstick Granny: Hello young man, I'm matchstick Granny. When I was young, I was the most famous chef! Haha! What can I do for you?" )
	Text( 1, "I would like to know where I can cook", JumpPage ,2)
	Text( 1, "Can I learn cooking?", JumpPage ,3)
	Text( 1, "Can you teach me how to cook?", JumpPage ,4)
	Text( 1, "Are the things made that special?", JumpPage ,5)
	Text( 1, "I am only passing by��", JumpPage ,6)

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

-----��¯��ʦ��÷��
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
	Text( 5, "I am only passing by��", CloseTalk)

end

-----�о���
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

	Talk( 6, "Graduate: Looks like you are��")
	Text( 6, "I am really only passing by��", CloseTalk)

	Talk( 7, "Graduate: As we are not the Almighty, what we create are not perfect. To distinguish the quality of the product we have seperate it accordingly in ascending order:                  Thank you     Abysmal                            Terrible                           Bad                                  Poor                            Mediocre                          Fair                              Good                                Great                              Superb                            Perfect .")
	Text( 7, "I would like to enquire about other questions", JumpPage ,1)
	Text( 7, "So this is it. I understand now.", CloseTalk)
end

---------------------ʥ����
function el_talk05 ()
	
	Talk( 1, "Christmas Tree: Merry Christmas to you! Each blessing that comes from the heart will hold true" )
	Text( 1, "Select blessing",JumpPage, 2  )
	
	Talk( 2, "Christmas Tree: Do you want to dedicate your blessing? Every dedication requires a Christmas Card and 1000G." )
	Text( 2, "I want to dedicate my blessings",JumpPage, 3  )
	
	Talk( 3, "May God bless you on this Christmas season! The Goddess of Mercy protect you! God of Fortune hugs you! Cupid shoots you! God of Cookery bites you!")
	Text( 3, "Confirm to broadcast this blessing",  GetChaName_0, 1)
	Text( 3, "Next Line",JumpPage, 6  )

	Talk( 6, "Due to consideration of the upcoming world event��")
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

----------------------------------------����˹-------------------------
--------------------------------��į֮��6��(51300,26900)
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

	Talk( 20, "Huckinson: Please be steady��" )
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
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˹



----------------------------------------����˹��ͼͼ-------------------------
--------------------------------ħ���������(26600,25900)
--------------------------------------eleven------------------------------------------

function el_talk08 ()


	Talk( 1, "Tomas Tutu: Organising tour! 3 days 2 night at Icy Devil Cave! Discount for members!" )
	 
	AddNpcMission	(6010)
	AddNpcMission	(6011)
	AddNpcMission	(6012)
	AddNpcMission	(6013)
	AddNpcMission	(6014)

	end
	-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˹��ͼͼ
	
	--��ʹ
	
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
----		ɳᰳ�[������Ů.÷����]			--
----							--
----		82271,353453				--
------------------------------------------------------------
-------------------------------------------------------------���￪ʼP������
--function el_talk09 ()
--	
--	Talk( 1, "÷����:�����ˣ�������������������ȥʥ��." )
--	Text( 1, "���þ���", ListAuction)
--	Text( 1, "������òι���Ʊ", JumpPage,2 )
--	Text( 1, "�������", JumpPage, 5)
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
--	Talk(2, "÷����:��ʥ���ŵĽ������Ҹ���ʼ�ĵط�,�ǰ���ׯ�ϵļ�֤.��ӭ��Ʊ�ι�,ÿ�Ųι���Ʊֻ��5000������")
--	Text( 2, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk(3, "÷����:��ӭ׼ʱ�ι�")
--	Talk(4, "÷����:�������ƺ�û���㹻�Ľ�Ǯ��!�������ı������������뱣֤����������һ���ո�")
--	
--	Talk( 5, "÷����:�ý���ʹ��֤��Ϳ��Թ����Ӧ���õ����,ÿ10�����Ϊ1��,ÿ��5�򺣵���.�����������ѲμӾۻ��!" )
--	Text( 5, "ȷ������", ChangeItem, 1  )
--	
--	
--end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<÷����
	
-----------------------------Թ���
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
	Talk( 2, "Ϊʲô...Ϊʲô����Ҫ��ɱ���Ǿ����һ��...��֪�����������һ���ж��ٸ�ɱ���Ǿ���ݺ�������������Ʒ��������")
	Text( 2, "11��",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "12��",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "13��",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1407 )
	Text( 2, "�ҹ��������",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "I have to get my revenge! You stay away.")

	AddNpcMission ( 6072 )
	AddNpcMission ( 6073 )
	AddNpcMission ( 6074 )
	AddNpcMission ( 6075 )
	AddNpcMission ( 6076 )
	AddNpcMission ( 6077 )

end

--------------------------------------���˵�����սʿ

function Zs_Soldier ()
	Talk( 1, "С�����ѣ�������ֻ�����档")


	AddNpcMission ( 6098 )
	AddNpcMission ( 6099 )
end
---------------------------------------------------------
--							--
--							--
--		����7��[����]			--
--							--
--		190, 181				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
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


-----------------------------------------------------------���￪ʼP������
function el_talk12 ()
	
	Talk( 1, "ϣ����:����15�����������������¶���,ֻ��������ǿ�߲��ܻ������." )
--	Text( 1, "��������һ��", JumpPage,2 )
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
--	Talk( 2, "ϣ����:����,������15����ս���˵��˶����ʸ����ҵ�����.ֻ��һ�λ���Ŷ!")
--	Text( 2, "�ҽ���",  MultiTrigger, GetMultiTrigger(), 1)
--	Text( 2,"л��,��ֻ��·��.",CloseTalk)
--
--	Talk(3, "ϣ����:����,��̽�������ĵ�·��û��ʧ����,ǰ����������Ӣ�۵�����.")
--	Talk(4, "ϣ����:��ȷ�����ı���δ����,����֤����������һ���ո�.����ֻ����ȡһ��Ŷ!")
	
end 


---------------------------------------------------------
--							--
--							--
--		������[����]			--
--							--
--		3228,2508				--
----------------------------------------------------------
function amon_talk1 ()
	Talk( 1, "����: һ������,������Ե.�������˼�����.")


	--AddNpcMission ( 5736 )
	--AddNpcMission ( 5737 )
end

---------------------------------------------------------
--							--
--							--
--		�ĵ�[ţ��]			--
--							--
--		3670,2636			--
----------------------------------------------------------
function amon_talk2 ()
	Talk( 1, "ţ��: ��۶�,���ӳ�.����ȵ��·,����·,����·.")


	--AddNpcMission ( 5738 )
	--AddNpcMission ( 5739 )
end

---------------------------------------------------------
--							--
--							--
--		����[֯Ů]			--
--							--
--		1599,909			--
----------------------------------------------------------
function amon_talk3 ()
	Talk( 1, "֯Ů: ��۶�,˼�.����ȵ��·,����·,����·.")


	--AddNpcMission ( 5740 )
	
end
---------------------------------------------------------
--							--
--							--
--		����[У����ŵ]			--
--							--
--		2232,2781			--
----------------------------------------------------------
function dina_talk01 ()
	Talk( 1, "У����ŵ: ����Ѿ���ȥ�������µĳ���֮��ӭ�����µ�ѧ�ڡ�")

	AddNpcMission ( 6127 )
	AddNpcMission ( 6128 )
	AddNpcMission ( 6129 )
	AddNpcMission ( 6130 )
	AddNpcMission ( 6131 )

		
end
-----------------------------------------------------------
----							--
----							--
----		ɳ�[��������ʦ]			--
----							--
----		871,3581			--
------------------------------------------------------------
function dina_talk02 ()
	Talk( 1, "��������ʦ: ��ѧ�ڣ��¿�ʼ��ѧ��ֹ��~")
	
	InitTrigger()
	TriggerCondition( 1, HasMission, 1458)
	TriggerCondition( 1, NoRecord, 1458)
	TriggerCondition( 1, NoRecord, 1461)
	TriggerCondition( 1, HasItem, 579, 1)
	TriggerAction( 1, JumpPage, 2)
	TriggerAction( 1, SetTestTime )
	TriggerFailure( 1, JumpPage, 20)
	Text( 1, "�μ���ѧ����",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 2, "����һ:���ڻ�����־�Ƿ�ɽ���?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "�ɽ���",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "���ɽ���",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�����:NPC��������ʦ���Ǹ�����վ?")

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	TriggerAction( 1, RenewTestTime2)
	Text( 3, "��������վ",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 4)
	Text( 3, "��������վ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 4, "������:�ױ��������ܲ���ͬʱװ��?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "����",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "������",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 5, "������:��Ӱ����ÿ�쿪�ż���?")
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "2��",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "4��",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 6, "������:ʥ��ʯ������Ƕ��Ь������?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "����",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "������",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 7, "������:100������ӥ�������ĺ����Ƕ���?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "623",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "632",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 8, "������:��������ְҵ�������м��ּ�������Ҫ���ĵ��߲���ʩչ��?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "3��",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "4��",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "�����:���Ǳ�һ���м�ֻ�������?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "9ֻ",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "10ֻ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 12, "��ȷ����������ش���Щ������?")

	TriggerAction( 1, SetRecord, 1461)
	TriggerAction( 1, JumpPage, 13)
	Text( 12, "��ȷ��",MultiTrigger, GetMultiTrigger(), 1  )

	Text( 12, "����������", CloseTalk )
	
	Talk( 13, "�ش����˾Ϳ������һ�������Ŷ,������.")
	Text( 13, "�õ�", CloseTalk )

	Talk( 20, "��μ���ѧ������?������ѧ֤����?û�Ļ��Լ�ȥ����ŵУ����һ�Ű�")

	AddNpcMission ( 6132 )
	AddNpcMission ( 6133 )
	AddNpcMission ( 6134 )
	AddNpcMission ( 6135 )
	AddNpcMission ( 6136 )


end
-----------------------------------------------------------
----							--
----							--
--		����[������˹1]			--
--							--
--		2646,671			--
----------------------------------------------------------
function dina_talk03 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 1)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "����������", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")

	AddNpcMission ( 6137 )

end

---------------------------------------------------------
--							--
--							--
--		����[������˹2]			--
--							--
--		2718,586			--
----------------------------------------------------------
function dina_talk04 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 2)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "����������", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")

	AddNpcMission ( 6137 )

end

---------------------------------------------------------
--							--
--							--
--		����[������˹3]			--
--							--
--		2714,699			--
----------------------------------------------------------
function dina_talk05 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 3)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "����������", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")

	AddNpcMission ( 6137 )
end

---------------------------------------------------------
--							--
--							--
--		����[������˹4]			--
--							--
--		2609,607			--
----------------------------------------------------------
function dina_talk06 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 0)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "����������", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")
	AddNpcMission ( 6137 )

end

-----------------------����ϵͳ
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
--		ɳᰳ�[������Ů.÷����]			--
--							--
--		82271,353453				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function el_talk09 ()
	
	Talk( 1, "÷����:������,������������������ȥʥ��." )
	Text( 1, "���ڽ���", JumpPage, 17)	

	Talk( 17, "÷����:��Ҫ�������𣿽��������д��ۻŶ." )

	Text( 17, "���ý��ü��", JumpPage, 6)
	Text( 17, "���þ���", ListAuction)
	Text( 17, "������òι���Ʊ", JumpPage,2 )
	Text( 17, "�������", JumpPage, 5)




	InitTrigger()
	TriggerCondition( 1, HasMoney,5000 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction(1, GiveItem, 3024, 1 , 4)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4 )
	Talk(2, "÷����:��ʥ���ŵĽ������Ҹ���ʼ�ĵط�,�ǰ���ׯ�ϵļ�֤.ÿ��һ��17:00~17:10��ӭ��Ʊ�ι�,ÿ�Ųι���Ʊֻ��5000��Ϸ��")
	Text( 2, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "÷����:��ӭ׼ʱ�ι�")
	Talk(4, "÷����:�������ƺ�û���㹻�Ľ�Ұ�!�������ı���������,�뱣֤����������һ���ո�")
	
	Talk( 5, "÷����:�ý���ʹ��֤��Ϳ��Թ����Ӧ���õ����,ÿ10ö���Ϊ1��,ÿ��5����Ϸ��.�����������ѲμӾۻ��!" )
	Text( 5, "ȷ������", ChangeItem, 1  )
	
	Talk( 6, "÷����:�����˽���һ����?" )
	Text( 6, "���ڲι�", JumpPage, 7)
	Text( 6, "���ڽ��þ���", JumpPage, 8)
	Text( 6, "���ڽ���ʹ��Ȩ", JumpPage, 9)
	Text( 6, "���ڽ���ʹ��֤��", JumpPage, 10)

	Talk( 7, "÷����:����ι���Ʊ��������ÿ��һ��17:00~17:10�ι۽���.")
	Text( 7, "ȷ��", CloseTalk)
	Text( 7, "����", JumpPage, 6)

	Talk( 8, "÷����:����ʱ��:��ÿ��һ����18:00~20:30֮������������н��þ���.��������:Я�����þ��꿨1��.���ĳ���:����ÿ���ڳ�������,�ɳа��ĳ�����.����������,���������.ÿ��2��Сʱ,�����ɾ���ʱ�ξ���.")
	Text( 8, "ȷ��", CloseTalk)
	Text( 8, "����", JumpPage, 6)

	Talk( 9, "÷����:����4��ʱ�ξ���,��Ӧʱ���ڳ�����ߵ����ѽ���ý���ʹ��Ȩ,Ϊ����ɹ��߰䷢����ʹ��֤��,��������10ö���.")
	Text( 9, "ȷ��", CloseTalk)
	Text( 9, "����", JumpPage, 6)

	Talk( 10, "÷����:֤������:ƾ��֤�鷽�ɹ������;����ʱ����˫����֤��������.�ڽ���ʹ��֤���ϱ�ʾ��ʱ�����Сʱ,�Զ��������ڳ���Ա���ͻ�ɳᰳ�.")
	Text( 10, "ȷ��", CloseTalk)
	Text( 10, "����", JumpPage, 6)
end 

----------------------------------------------------------
--							--
--							--
--		ħ��1��һ�Ա[���»�]			--
--							--
--		26600,23000			--
----------------------------------------------------------
function el_talk13 ()
	Talk( 1, "���»�:ǧ�����ʷ�����³���������,�����Ž�����ĵļ��ɴ�½�Ѳ�������.˭���ǵÿ���Ů������ǰΪ�����������µĵ�����!")
	Text( 1, "�һ���������", JumpPage, 2)
	
	Talk( 2, "���»�:ǧ��������������˵Ĵ����˼,����!���������Ŀ�̽Ů��ḻ�ľ�������,�����1����֮���1���ɿ���ʯ���һ�����ʧ���������ذ�!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3827, 1)              -------------��֮��
	TriggerCondition( 1, HasItem, 3457, 1)              --------------�ɿ���ʯ
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 3827, 1)
	TriggerAction(1, TakeItem, 3457, 1)
	TriggerAction(1, GiveItem, 0145, 1, 4)              ----------��������
	TriggerFailure(1, JumpPage, 3)
	Text(2,"ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "����,���鲻������,���������ϻ�δ����֮����ɿ���ʯ������ı���������,�밲�����뿪.")

end

----------------------------------------------------------
--							--
--							--
--		ħ��2��һ�Ա[��³��]			--
--							--
--		26600,23000			--
----------------------------------------------------------
function el_talk14 ()
	Talk( 1, "��³��:�ٺ�,����̽Ѱ�󺣵�����ɭ�������ص�����֮����,ȴ��֪ħ������������һ�����������!����ľ�����������������Ħ�������˵�ѪҺ,��ЩҰ���ļһ��ڷ�������ʱ,��֪����������˶���ϡ���챦!")
	
	Text( 1, "�һ���������", JumpPage, 2)

	Talk( 2, "��³��:����,����!���͵�ħ������û�����Ż���?ʲô?��˵�������İ���ɱ��?!����������!���������������һ����������,������ͷ�������ϵ�1����������������1���ɿ���ʯ��ԭ��!������ܰ���������������,�ҽ�������:���������ִ����İ�������,�ٺ�,��ߵı����������ñ�����¼�ľ���!!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3826, 1)             ------------������������
	TriggerCondition( 1, HasItem, 3457, 1)             ------------�ɿ���ʯ
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 3826, 1)
	TriggerAction(1, TakeItem, 3457, 1)
	TriggerAction(1, GiveItem, 0146, 1, 4)              ----------��������
	TriggerFailure(1, JumpPage, 3)
	Text(2,"ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "��ѽ��ѽ,�㾹Ȼ��û�ռ������������������ɿ���ʯ�����㱳��̫����!�ǸϽ��Ӱ�!!!Ħ��������˷����������ʮ���׺��!")

end


---------------------------------------------------------
--							--
--							--
--		����[ħ��ʦ����]			--
--							--
--		2229,2782			--
----------------------------------------------------------
function el_talk15 ()
	Talk( 1, "ħ��ʦ����: �ҵ��������α�ħ����˲��̵�ɱ���ˡ��¸ҵ�սʿ,������ܹ�Ϊ���һش��������������߸���ĸP-E-I-M-E-N-G���ҽ�������ղض����ħ�����͸��㡣")
	
	Text( 1, "������ҵĽ�ָ����ħ��", JumpPage, 2)

	AddNpcMission ( 6139 )
	AddNpcMission ( 6161 )
	AddNpcMission ( 6166 )
		
	Talk( 2, "ħ��ʦ˵��:���ҵ�������ˣ�����ö��飬Ȼ������質���Ҹ����˾ͼ��˰ɡ���")
	InitTrigger()                                        
	TriggerCondition(1, HasItem, 2521, 1)               ---------�̳�������˽ڽ�ָ 
	TriggerCondition(1, ValentinesRingJudge)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, ValentinesRing)
	TriggerFailure(1, JumpPage, 3)
	Text(2,"�Ҹ����˾ͼ��˰�,��Ȼ���������ﻰ����", MultiTrigger, GetMultiTrigger(), 1) 	
	Talk( 3, "����������ˣ����һ�������Ƿ������")
	Text(3, "�ص���һҳ", JumpPage, 2)
end


---------------------------------------------------------
--							--
--							--
--		����ʥ��[��˼ҵ�������]			--
--							--
--		271��1775			--
----------------------------------------------------------
function el_talk16 ()
	
	Talk( 1, "��˼ҵ�������: ������˴��˵���ʵ����,��Ȼ���ܲ���,�����Ⲣ�������������������������.")
	Text( 1, "��Ҫȥ��į֮��1�㣡", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMission,1213 )
	TriggerAction( 1, GoTo, 352, 378, "lonetower")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "��˼ҵ�������:��į֮��֮���Լ�į����Ϊû�м�������" )
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 )


	Talk( 3, "��˼ҵ�������:�����㻹û�� ������͸¶����Ϣ ��������?" )
	AddNpcMission ( 6140 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��1��[��˼ҵ���Ӷ]			--
--							--
--		260,257			--
----------------------------------------------------------
function el_talk17 ()
	Talk( 1, " ��˼ҵ���Ӷ: ������֪,һĿ��Ȼ,�ұ����˧,Ϊʲô���������ǲ�������......")
	Text( 1, "��Ҫȥʥ�֣�", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, 275, 1775, "garner")
	Talk( 2, "��˼ҵ���Ӷ:�пճ�����,�¶���ʱ�򡢿��ֵ�ʱ��Ͳ�֪���Ƿ���ֵ�ʱ��..." )
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 )

	AddNpcMission ( 6141 )
	AddNpcMission ( 6142 )
	AddNpcMission ( 6143 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��2��[��˼ҵ�ŮӶ]			--
--							--
--		151��134			--
----------------------------------------------------------
function el_talk18 ()
	Talk( 1, "��˼ҵ�ŮӶ: ��Ϊһ��ŮӶ���ܲ���ע�Լ����˵�˽����,�������ӻ��������.")


	AddNpcMission ( 6144 )
	AddNpcMission ( 6145 )
	AddNpcMission ( 6146 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��3��[��˼ҵ�С��]			--
--							--
--		63��311			--
----------------------------------------------------------
function el_talk19 ()
	Talk( 1, " ��˼ҵ�С��: ��֪����Ư��,��Ҫ������.")


	AddNpcMission ( 6147 )
	AddNpcMission ( 6148 )
	AddNpcMission ( 6149 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��4��[��˼ҵ��ػ���]			--
--							--
--		261��70			--
----------------------------------------------------------
function el_talk20 ()
	Talk( 1, "��˼ҵ��ػ���: �ػ����������𾴵�.���ʲôʱ������������������")


	AddNpcMission ( 6150 )
	AddNpcMission ( 6151 )
	AddNpcMission ( 6152 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��5��[��˼ҵĹܼ�]			--
--							--
--		542��54			--
----------------------------------------------------------
function el_talk21 ()
	Talk( 1, "��˼ҵĹܼ�: �ܼҹܼ�,���˲��ܾ����ҵļ�.")


	AddNpcMission ( 6153 )
	AddNpcMission ( 6154 )
	AddNpcMission ( 6155 )
end

---------------------------------------------------------
--							--
--							--
--		��į֮��6��[ħ����˵�����]			--
--							--
--		541��268			--
----------------------------------------------------------
function el_talk22 ()
	Talk( 1, "ħ����˵�����: �ҿ��ܲ���Rock������������,��һ������ĵ�һ��.")


	AddNpcMission ( 6156 )
	AddNpcMission ( 6157 )
	AddNpcMission ( 6158 )
	
end

---------------------------------------------------------
--							--
--							--
--		����4��[��˼ҵ�����]			--
--							--
--		154,912			--
----------------------------------------------------------
function el_talk23 ()
	Talk( 1, "��˼ҵ�����: ��������������...����,����,�����!")


	AddNpcMission ( 6159 )
	AddNpcMission ( 6160 )

end

---------------------------------------------------------
--							--
--							--
--		�ﵺ[�ﵺ����С��]			--
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
--		����[��Ʒ����רԱ]			--
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
-- ������-----����С�⵶�š�ɺ���š��޾��ţ���ϳ����޸ĵĴ��շǷ��������⣩
-----------------------------------------------------------------------------

function k_talk001()

	Talk( 1, "... ..." )

end


---------------------------------------------------------
--							--
--							--
--		�ĵ�[������]			--
--							--
--		3734��2661			--
----------------------------------------------------------
function el_talk25 ()
	Talk( 1, "������: ��������ʵ�Ǹ�������,��һ������ʲô��?���������,��ϣ������������֮ǰ������.")

---------------------�ﵺ����
	AddNpcMission ( 6176 )
	AddNpcMission ( 6178 )
	AddNpcMission ( 6181 )
	AddNpcMission ( 6183 )
	
end

---------------------------------------------------------
--							--
--							--
--		�ĵ�����ʹ������			--
--							--
--		3714��2664			--
----------------------------------------------------------
function el_talk26 ()
	Talk( 1, " �ĵ�����ʹ������: ��Ϊ�Ұ�������,���������˴���ʹ,�ͱ���ȥ����.")
	Text( 1, "��Ҫȥ�ﵺ!", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, 2414,3174, "darkblue")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "�ĵ�����ʹ������:ʱ����������������..." )
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�ĵ�����ʹ������:����,��ô�Ҳ��500����Ű�!������˻���Ϊ��û����" )
end

----------------------------------------------------------

	--ʥ����[�л��]		

--		221150,278125				
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function el_talk29 ()
	
	
	Talk( 1, "�л��:ʥ������!������ܰ��ʥ������ô����û����ζ��ʥ������?" )		

	
	Text(1, "�����ζ�Ļ���", JumpPage, 2)
	Text(1, "���ʥ�����", JumpPage, 5)
	
	
---------------------�����ζ�Ļ���
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
	Talk( 2, "�л��:����Ҫԭ����10������,��Ȼ�㻹Ҫ֧������10000�����ҵ������")
	Text(2, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "�л��:�����Ҿ����������ζ����,�Ͽ쳢��,ζ����ô��?" )

	Talk( 5, "�л��:��ʥ������,ÿ��ֻ������Ŷ!")
	Text(5, "��һ������ʥ�����",  JumpPage, 6)
	Text(5, "�ڶ�������ʥ�����",  JumpPage, 7)
	Text(5, "����������ʥ�����", JumpPage, 8)
	---------------------���ʥ�����
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
	Talk( 6, "Ҫ��ʥ����Ϳɲ�����,����Ҫԭ����10����ζ�Ļ����1��ʥ��õ������,ʥ��õ�����Ϻ������̳��ܹ��ҵ�,��Ȼ�������ϼ����㻹Ҫ֧������10000�����ҵ������,����ֻ��Ϊÿ����3��")
	Text( 6, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------���ʥ�����
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
	Talk(7, "������ʥ�����?����Ҫԭ����10����ζ�Ļ����1��ʥ��õ������,ʥ��õ�����Ϻ������̳��ܹ��ҵ�,��Ȼ�������ϼ����㻹Ҫ֧������1���򺣵��ҵ������,����ֻ��Ϊÿ����3��")
	Text( 7, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------���ʥ�����
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
	Talk(8, "������ʥ�����?����Ҫԭ����10����ζ�Ļ����1��ʥ��õ������,ʥ��õ�����Ϻ������̳��ܹ��ҵ�,��Ȼ�������ϼ����㻹Ҫ֧������1ǧ�򺣵��ҵ������,����ֻ��Ϊÿ����3��")
	Text( 8, "ȷ������",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 9, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵ�һ����ʥ�������?ֻ����3��.")
	Talk( 10, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵڶ�����ʥ�������?ֻ����3��Ŷ.")
	Talk( 11, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵ�������ʥ�������?ֻ����3��Ŷ.")
	Talk( 4, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!��ȷ�����ı���δ����,��������Ҫ��һ���ո�Ŷ.")
	Talk(12, "�л��:�����Ҿ��������ʥ�����,�Ͽ쳢��,ζ����ô��?" )
	AddNpcMission ( 6191 )
end 

------------------------------------------------------------
-- ʥ����-----ʥ�����˵�ϴ�»�
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
	Talk( 1, "ʥ������!����һ̨���ϵ���ϴ��,���������ϴ�����һ��,����Ҫ��ϴô?ÿ��200G." )
	Text( 1, "��ϴ����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "��ϴʥ������", JumpPage, 3)

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
	Talk( 3, "��!����ĺ���!��ϴ��ô��ĺ��ӱ���֧��10000������" )
	Text( 3, "ȷ����ϴ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "��Ư���ĺ���!�򿪻��о�ϲ��" )
	Talk( 2, "��ϴʧ��,û��֧���㹻�Ľ�Ǯ����û����Ҫ��ϴ����Ʒ" )
	AddNpcMission ( 6195 )
end


---------------------------------------------------------
--							--
--							--
--		���Ǳ�[ʥ����������]			--
--							--
--		��1216��550��			--
----------------------------------------------------------
function el_talk27 ()
	Talk( 1, "����: ʥ������!Ը��õ���������ֿ���õ�ף��.��Ҫ�õ������˵�ʥ��������?ȥ�̳���һ��ʥ�������ʸ�֤��Ϳ������������ȡ����ʥ�����˵�������.")
	--------------����ʥ������
	AddNpcMission	(6185)
end


---------------------------------------------------------
--							--
--							--
--		��������վ[ʥ�����˿���˹Ī˹]		--
--							--
--		��2111��557��			--
----------------------------------------------------------
function el_talk28 ()
	Talk( 1, "����˹Ī˹: ʥ������!����˵��ʥ������?����һ���������ֵ�����.")
	--------------����ʥ������
	AddNpcMission	(6186)

end

---------------------------------ʥ�������л�᳤
function Xmas_talk01 ()
	Talk( 1, "ʥ�������л�᳤:Merry Christmas~��Ϊ���������ʥ����׼���˺ܶ�Ļ���Ŷ,������Ȥ�뿴һ����?")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "����,��û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "��֮��", JumpPage , 3)
	Text( 2, "��֮��", JumpPage , 4)
	Text( 2, "��֮��", JumpPage , 5)
	Text( 2, "��֮��", JumpPage , 6)
	Text( 2, "��ʨҩ��", JumpPage , 7)
	Text( 2, "ӥ��ҩ��", JumpPage , 8)
	Text( 2, "���ҩ��", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "��ţҩ��", JumpPage, 11)
	Text( 10, "ʥ��ҩ��", JumpPage, 12)
	Text( 10, "28�񱳰�", JumpPage, 13)
	Text( 10, "Ħ��С��", JumpPage, 14)
	Text( 10, "��Ӿ����", JumpPage, 15)
	Text( 10, "������", JumpPage, 16)
	Text( 10, "��һҳ", JumpPage , 17)

	Talk( 17, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 17, "��һҳ", JumpPage , 10)
	Text( 17, "���������Ա�", JumpPage, 18)
	Text( 17, "���ٳɳ���", JumpPage, 19)
	Text( 17, "ʥ�����˵�����", JumpPage, 20)

	Talk( 3, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 4, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ���ʨҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 897, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ�ӥ��ҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 894, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ����ҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 893, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ���ţҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 895, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�ʥ��ҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 896, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�28�񱳰��Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 3088, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ�Ħ��С�ӵĻ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 680, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ���Ӿ�����Ļ��ܹ���Ҫ���80W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ��������Ļ��ܹ���Ҫ���55W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "�һ����������Ա��Ļ��ܹ���Ҫ���500W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 500 )
	TriggerAction( 1, GiveItem, 610, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 19, "�һ����ٳɳ����Ļ��ܹ���Ҫ���20W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 578, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "�һ�ʥ�����˵������Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 2877, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end

-------------------------------------------------------------------ʥ���ӻ���A
function Xmas_talk02 ()
	Talk( 1, "ʥ���ӻ���:ʥ���ڵ���~��Ϊ�����ܰ��ʥ��׼���˺ܶ����,����Ȥ��һ����?��϶���ϲ����!")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "���ˣ���û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "�߼���ľ��", JumpPage , 3)
	Text( 2, "�߼����", JumpPage , 4)
	Text( 2, "�߼������һ�ȯ", JumpPage , 5)
	Text( 2, "�߼����Ƕһ�ȯ", JumpPage , 6)
	Text( 2, "��֮��", JumpPage , 7)
	Text( 2, "�߼������", JumpPage , 8)
	Text( 2, "������Ϸȯ", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "������", JumpPage, 11)
	Text( 10, "������", JumpPage, 12)
	Text( 10, "����", JumpPage, 13)
	Text( 10, "��ƻ��", JumpPage, 14)
	Text( 10, "�ǻ۹�", JumpPage, 15)
	Text( 10, "�����", JumpPage, 16)
	Text( 10, "а�����������ٻ�ȯ", JumpPage , 17)

	Talk( 3, "�һ��߼���ľ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 207, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ��߼����Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 208, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ��߼������һ�ȯ�Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 581, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ��߼����Ƕһ�ȯ�Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 582, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ���֮���Ļ��ܹ���Ҫ���15W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 2440, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ��߼�����صĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1024, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�������Ϸȯ�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3083, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ������񻨵Ļ��ܹ���Ҫ���9W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3082, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ������񻨵Ļ��ܹ���Ҫ���9W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3081, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�����Ļ��ܹ���Ҫ���15W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 3080, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ���ƻ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 3291, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ��ǻ۹��Ļ��ܹ���Ҫ���20W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3290, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ�����ݵĻ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3336, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "�һ�а������������ٻ�ȯ�Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3013, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
	AddNpcMission ( 6197 )
end

-------------------------------------------------------------------ʥ���ӻ���B
function Xmas_talk03 ()
	Talk( 1, "ʥ����Ʒ��:Merry Christmas~��Ϊ���������ʥ����׼���˺ܶ�Ļ���Ŷ,������Ȥ�뿴һ����?")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "����,��û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "�����������㷢�ٻ�ȯ", JumpPage , 3)
	Text( 2, "����սʿͳ���ٻ�ȯ", JumpPage , 4)
	Text( 2, "��Ӿ����", JumpPage , 5)
	Text( 2, "������", JumpPage , 6)
	Text( 2, "�߼�������Լ", JumpPage , 7)
	Text( 2, "�м�������Լ", JumpPage , 8)
	Text( 2, "����������Լ", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "ʯ�Ĵ߻���", JumpPage, 11)
	Text( 10, "Һ��߻���", JumpPage, 12)
	Text( 10, "ʳ�Ĵ߻���", JumpPage, 13)
	Text( 10, "����߻���", JumpPage, 14)
	Text( 10, "��ͷ�߻���", JumpPage, 15)
	Text( 10, "ֲ��߻���", JumpPage, 16)
	Text( 10, "ëƤ�߻���", JumpPage , 17)

	Talk( 3, "�һ������������㷢�ٻ�ȯ�Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3014, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ�����սʿͳ���ٻ�ȯ�Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3012, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ���Ӿ�����Ļ��ܹ���Ҫ���80W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ��������Ļ��ܹ���Ҫ���55W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ��߼�������Լ�Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 2607, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ��м�������Լ�Ļ��ܹ���Ҫ���200W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 200 )
	TriggerAction( 1, GiveItem, 2606, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�����������Լ�Ļ��ܹ���Ҫ���60W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 60 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 60 )
	TriggerAction( 1, GiveItem, 2605, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ�ʯ�Ĵ߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2625, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�Һ��߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2638, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�ʳ�Ĵ߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2630, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ�����߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2634, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ���ͷ�߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2635, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ�ֲ��߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2636, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "�һ�ëƤ�߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2637, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end
-------------------------------------------------------------------ʥ�����ˡ������ҿ�
function Xmas_talk04 ()
	Talk( 1, "ʥ�����ˡ������ҿ�:������,�����ҵĶ��������ʥ�����㽫�ޱ��Ҹ�,��Ҫ��ԥ��,�����°�~")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "����,��û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "ʥ�������̻�", JumpPage , 3)
	Text( 2, "ʥ�����̻�", JumpPage , 4)
	Text( 2, "����I", JumpPage , 5)
	Text( 2, "����LOVE", JumpPage , 6)
	Text( 2, "����U", JumpPage , 7)
	Text( 2, "������", JumpPage , 8)
	Text( 2, "���Ͱ�", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "������", JumpPage, 11)
	Text( 10, "õ�廨", JumpPage, 12)
	Text( 10, "��ħ���", JumpPage, 13)
	Text( 10, "�����ɿ���", JumpPage, 14)

	Talk( 3, "�һ�ʥ�������̻��Ļ��ܹ���Ҫ���180W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 180 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 180 )
	TriggerAction( 1, GiveItem, 2870, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ�ʥ�����̻��Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 2871, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ�����I�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3354, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ�����LOVE�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3355, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ�����U�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3356, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ������ҵĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3359, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ����Ͱ��Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3357, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ�������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3358, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�õ�廨�Ļ��ܹ���Ҫ���20W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3343, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ���ħ���Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 906, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ������ɿ����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3077, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
	AddNpcMission ( 6199 )
end

-------------------------------------------------------------------ʥ�����ˡ��ҿ�����
function Xmas_talk05 ()
	Talk( 1, "ʥ�����ˡ��ҿ�����:���ѽ,ʥ������!�Һܿ��ǰ�,�ҵĶ������Ҹ���,�����°�~")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "����,��û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "������", JumpPage , 3)
	Text( 2, "����֮��", JumpPage , 4)
	Text( 2, "�������", JumpPage , 5)
	Text( 2, "<�����׳�>������", JumpPage , 6)
	Text( 2, "<��������>������", JumpPage , 7)
	Text( 2, "<�������>������", JumpPage , 8)
	Text( 2, "<������Ǯ��>������", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "<�����ڿ�>������", JumpPage, 11)
	Text( 10, "<����ƭ��>������", JumpPage, 12)
	Text( 10, "<����ɵ��>������", JumpPage, 13)
	Text( 10, "<��������>������", JumpPage, 14)

	Talk( 3, "�һ�������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 904, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ�����֮��Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 935, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ��������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 905, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ�<�����׳�>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1130, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ�<��������>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1131, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ�<�������>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1037, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�<������Ǯ��>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1129, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ�<�����ڿ�>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1038, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�<����ƭ��>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1132, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�<����ɵ��>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1133, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ�<��������>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1039, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end

-------------------------------------------------------------------ʥ�����ˡ�ѧ��
function Xmas_talk06 ()
	Talk( 1, "ʥ�����ˡ�ѧ��:Merry Christmas~��Ϊ���������ʥ����׼���˺ܶ�Ļ���Ŷ,������Ȥ�뿴һ����?")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "����,��û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "����ʿ�߼�����", JumpPage , 3)
	Text( 2, "��ӡʦ�߼�����", JumpPage , 4)
	Text( 2, "ʥְ�߸߼�����", JumpPage , 5)
	Text( 2, "�ѻ��ָ߼�����", JumpPage , 6)
	Text( 2, "�޽�ʿ�߼�����", JumpPage , 7)
	Text( 2, "˫��ʿ�߼�����", JumpPage , 8)
	Text( 2, "����ʿ�м�����", JumpPage , 9)
	Text( 2, "��һҳ", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "��һҳ", JumpPage , 2)
	Text( 10, "��ӡʦ�м�����", JumpPage, 11)
	Text( 10, "ʥְ���м�����", JumpPage, 12)
	Text( 10, "�ѻ����м�����", JumpPage, 13)
	Text( 10, "�޽�ʿ�м�����", JumpPage, 14)
	Text( 10, "˫��ʿ�м�����", JumpPage, 15)
	Text( 10, "ħ���߻�", JumpPage, 16)
	Text( 10, "��һҳ", JumpPage , 17)

	Talk( 17, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 17, "��һҳ", JumpPage , 10)
	Text( 17, "���������", JumpPage, 18)
	Text( 17, "����ˮ��", JumpPage, 19)
	Text( 17, "������", JumpPage, 20)
	Text( 17, "���黤��", JumpPage, 21)
	Text( 17, "ħ����", JumpPage, 22)

	Talk( 3, "�һ�����ʿ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3272, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ���ӡʦ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3271, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ�ʥְ�߸߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ��ѻ��ָ߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ��޽�ʿ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ�˫��ʿ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�����ʿ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3266, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ���ӡʦ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3265, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�ʥְ���м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3264, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ��ѻ����м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3263, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ��޽�ʿ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3262, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ�˫��ʿ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3261, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ�ħ���߻��Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3300, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "�һ�����������Ļ��ܹ���Ҫ���25W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 25 )
	TriggerAction( 1, GiveItem, 3114, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 19, "�һ�����ˮ���Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3463, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "�һ��������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3046, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 21, "�һ����黤�ӵĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3301, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 22, "�һ�ħ���ݵĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3462, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 22, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end

----------------------------------------------------ʥ����ƶ�
function Xmas_talk07 ()
	Talk ( 1, "��������ʥ��ѩ�׵Ķ���.���ѣ�Ϊʲô��������Щ���ĵ���ף���ȥɱ¾һ����?����,���Ǻ�ɳᰳ��������Ļ�,��¹��ѩ��,ȥ�ɵ�����,Ȼ���֤�ݴ��������Ҳ���������.")
--	Text ( 1, "�Ҵ�����һ�ٸ��𼦵���ë", JumpPage, 2)
--	Text ( 1, "�Ҵ�����һ�ٸ���¹�ļ��", JumpPage, 3)
--	Text ( 1, "�Ҵ�����һ�ٸ�ѩ�˵�����", JumpPage, 4)
	Text ( 1, "����ȥʥ��������", JumpPage, 5)
	Text ( 1, "Ϊʲô����Ҫɱ¾��Щ�����Ĺ�����?", JumpPage, 10)

--	Talk ( 2, "��ȷ��Ҫ����һ�ٸ��𼦵���ë���һ�һ��ʥ�������?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2879, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2879, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpHuojiNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 2, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 3, "��ȷ��Ҫ����һ�ٸ���¹�ļ�Ǹ��һ�һ��ʥ�������?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2881, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2881, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpMiluNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 3, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 4, "��ȷ��Ҫ����һ�ٸ�ѩ�˵������һ�һ��ʥ�������?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2880, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2880, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpXuerenNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 4, "ȷ���һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "����һ����5��������,����ȥ��һ����?")
	Text ( 5, "ʥ��������A", GoTosdBoss, 1 )
	Text ( 5, "ʥ��������B", GoTosdBoss, 2 )
	Text ( 5, "ʥ��������C", GoTosdBoss, 3 )
	Text ( 5, "ʥ��������D", GoTosdBoss, 4 )
	Text ( 5, "ʥ��������E", GoTosdBoss, 5 )

	Talk ( 6, "ף���и����ֵ�ʥ��")

	Talk ( 7, "�㱳���ں���û���㹻�ĵ���Ŷ,Ҳ�п�����ı����������߱�����û�пո�.")

	Talk ( 10, "�����������,����������Ͻ��㹻�����Ĺ�Ʒ����,��ô�Ҿ�����ʥ�����������ٻ�������ǿ��ĺڰ�BOSS,������ô���ܻ������Ǿ������Ǹÿ��ǵ�����!")

	AddNpcMission ( 6187 )
	AddNpcMission ( 6188 )
	AddNpcMission ( 6189 )
	AddNpcMission ( 6193 )
	AddNpcMission ( 6204 )
end

----------------------------------------------------ʥ����ʥ������
function Xmas_talk08 ()
	Talk ( 1, "ʥ������:�Ǻ�~ʥ������~~���������Ϊ��Ҷһ�ʥ����ר�õĹ���Ӳ��,������������ʥ������Shopping�Ļ��Ǿ����Һ���.")

	Text ( 1, "����һ�ʥ����ԪӲ��", JumpPage, 2)
	Text ( 1, "����һ�ʥ������ԪӲ��", JumpPage, 3)
	Text ( 1, "�����ʥ����ԪӲ�Ҷһ��غ�����", JumpPage, 4)
	Text ( 1, "�����ʥ������ԪӲ�Ҷһ��غ�����", JumpPage, 5)
	Text ( 1, "����ر��Ǳ�", JumpPage, 6)

	Talk ( 2, "�һ�һ��ʥ����ԪӲ����Ҫ10000�ĺ�����,��ȷ��Ҫ�һ���?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2962, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 2, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 3, "�һ�һ��ʥ������ԪӲ����Ҫ100W�ĺ�����,��ȷ��Ҫ�һ���?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, GiveItem, 2963, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 3, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 4, "��ȷ��Ҫ��ʥ����ԪӲ�һ���10000��������?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2962, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2962,1 )
	TriggerAction( 1, AddMoney, 10000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 4, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "��ȷ��Ҫ��ʥ������ԪӲ�һ���100W��������?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2963, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2963,1 )
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 5, "ȷ�϶һ�", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerAction( 1, GoTo, 1318,510, "darkblue")
	Talk( 6, "��ȷ��Ҫ�뿪����ص����Ǳ���?")
	Text( 6, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 )

	Talk ( 9, "ף���и����ֵ�ʥ����~")
	Talk ( 10, "���Ǯ����Ŷ,Ҳ�п�����ı�������������û���㹻�Ŀո�.")
	Talk ( 11, "��û�д˵���,Ҳ�п�����ı���������.")
	AddNpcMission ( 6201 )
	AddNpcMission ( 6202 )
end

-----------------------------------------���Ǳ�ʥ���崫��ʹ
function movexmas_talk()
	Talk ( 1, "ʥ���崫��ʹ:Merry Christmas~��ȥʥ��������ȥ���˵��,�㲻˵����ô֪����?������˵�㲻��ȥ��ƫƫ����ȥ,Ҳ����������ȥ��ƫƫ�������!")
	Text ( 1, "����ȥʥ����", JumpPage, 2)
	Text ( 1, "���˺�����,�һ�������", CloseTalk)


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, 144,136, "07xmas" )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, 144,136, "07xmas")
	TriggerFailure( 2, JumpPage, 3 )
	Talk( 2, "������ʥ�����������ڿ����ڼ�,ֻҪ֧������500�������ҾͿ��������ȥ,�������10�����µ����ֵĻ��ҿ������Ϊ�����Ŷ.")
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 2 )

	Talk( 3, "ʥ���崫��ʹ:ûǮ��?�Ǻܱ�Ǹ����Ϊ�������Ŷ.")
	AddNpcMission ( 6190 )
	AddNpcMission ( 6192 )
	AddNpcMission ( 6194 )
	AddNpcMission ( 6196 )
	AddNpcMission ( 6198 )
	AddNpcMission ( 6200 )
end

---------------------------------------ʥ������������ʹ
function movexmas_talk01 ()
	Talk ( 1, "ʥ������~����ص�ʥ������?���ٶ��������?�Ǻ�,������ķ������ȫ��ѵ�Ŷ!")
	Text ( 1, "�����ʥ����", JumpPage, 2)


	InitTrigger()
	TriggerAction( 1, GoTo, 144,136, "07xmas")
	Talk( 2, "׼��������?.")
	Text( 2, "��ʼ����",MultiTrigger, GetMultiTrigger(), 1 )
end

-------------------------------------����Ϊ��������--------bragi
function Xmas_talk09 ()
	Talk ( 1, "ʥ�������ڻ����������~")
	AddNpcMission ( 6203 )
end

function Xmas_talk10 ()
	Talk ( 1, "��������:Ϊ�����������ֵĽ���,��������һ��Χ�����������!")
end

function Xmas_talk11 ()
	Talk ( 1, "��������:ѩ��...�赸...����...��...ѩ��...ʥ����...����...���б����������ʥ������?")
end

function Xmas_talk12 ()
	Talk ( 1, "��������:����Χ������Ƚ�ů�Ͱ�!���ѣ�Ҫ��Ҫ��һ�𿾻��,��������?")
end

function Xmas_talk13 ()
	Talk ( 1, "��������:�һ��Ǿ����ҵ����˲�������ģ��㲻������Ϊ��?")
end

function Xmas_talk14 ()
	Talk ( 1, "��������:����������ʲô��?����������Ļ���?��������������հ�.")
end

function Xmas_talk15 ()
	Talk ( 1, "��������:��Ȼ��̫ϲ���⺮�������,����ʥ���ڵķ�Χ��ð�!�ÿ��İ�!")
end

-------------------------------------����ΪС����Ⱥ------bragi
function Xmas_talk16 ()
	Talk ( 1, "С¹�߱�:û����ʥ����ô?��������,�������,ʥ�����м��пúܴ��ʥ����,��˵����ʥ������Ը�Ǻ������.��ȥ���԰�~~~!����,ף��ʥ������!")
end

function Xmas_talk17 ()
	Talk ( 1, "����������:���Ұ�!С���ҷ���������Ŷ!")
end

function Xmas_talk18 ()
	Talk ( 1, "С����:ιι,��ס����,��Ҳ��Ҫһ������!��һ��,������?")
end

function Xmas_talk19 ()
	Talk ( 1, "���ֵ�ѩ����:��������!��Ŀڴ��ﶼװ��Щʲô��?��������ǹ���?��Ư���������?")
end

function Xmas_talk20 ()
	Talk ( 1, "Сè��˿:������,������,����춣��~~~!����.����һ���Ǹ����ֵ�ʥ����,�����������Ŷ.��˵ʥ���ڵ�����ҹ12���ʱ��,���ص���תʥ������ڻ�����ڴ���.������ȥ����Ŷ~~�ǵöഩ��.")
end

function Xmas_talk21 ()
	Talk ( 1, "����è�ɴ�:���ɿ���ζ����������?����һЩ!!")
end

function Xmas_talk22 ()
	Talk ( 1, "С·��˿:ʥ���ڿ�!!���ǿ�,�����������������ĺ���ñ��,��Ư����!")
end

function Xmas_talk23 ()
	Talk ( 1, "��������:�õĺõĺ�����,����׼���˺ܶ�����,ÿ���˶����е�,��Ҫ��Ŷ!")
end

function Xmas_talk24 ()
	Talk ( 1, "С��ķ:��˭Ը�����һ��ȥ��ѩ�̵���?������˵��,��Ҫ������!!!����һ���һᳬ���ƶ���,���Ż���ëȥ����֤���ҵ�ʵ��,������ʥ�������·���Ȫ������Ǹ��һ�.")
	AddNpcMission ( 6205 )
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�����Ĵ���]			--
--							--
--		3901, 4301			--
----------------------------------------------------------
function peter_talk01 ()
	Talk( 1, "�����Ĵ���: ���ҽд�������ʵ��һ��Ҳ�������ҵ����̿��Ǹߴ�180Ŷ��")

end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ο͡�����]			--
--							--
--		10802, 5602             		--
----------------------------------------------------------
function peter_talk02 ()
	Talk( 1, "�ο͡�����:���ڵ�ʱ��,�������еķ���,������ʹ��һ���ʥ��,����һ���������ɵ���,��,��Ҫ���߱�������˭,һ���һ�Ҫȥ���ʥ�����˷���Ʒ��,��ʱ�����ܲ����ϳ�����,��������")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[���ֵİְ�]		--
--							--
--		11803, 6103			        --
----------------------------------------------------------
function peter_talk03 ()
	Talk( 1, "���ֵİְ�:������İְ�,��˵��˵��,ʥ���ڸø��������㻨Ǯ,��Ϊ������ȫ�������ǰ��Ե��ǹ�,��Ȼ,����һ��,�����Լ��ĺ���,��,�ҵ����־͸����ˡ�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ο͡���Ŭ]			--
--							--
--		5904, 4704			--
----------------------------------------------------------
function peter_talk04 ()
	Talk( 1, "�ο͡���Ŭ: ��!ʥ������,��һ������һ�����������ʥ���İ�?����,��ȥ��ʥ������,�����кö���ŵĶ�����!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��������]			--
--							--
--		3001 ��11701			--
----------------------------------------------------------
function peter_talk05 ()
	Talk( 1, "��������: ����!����!ʥ���ڰ�������,��һ���ľ�ֻ��`����`��������")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����С��]			--
--							--
--		7031, 4902			--
----------------------------------------------------------
function peter_talk06 ()
	Talk( 1, "����С��: come on!ʥ�������ô��?����ī����װ��?������,���Ҹ�����,��һ��ʥ�����˵��·��ſᡣ")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�����״���]			--
--							--
--		3101, 11901			--
----------------------------------------------------------
function peter_talk07 ()
	Talk( 1, "�����״���: �㻳�ɺ��ϵĺ������ղ���ʥ������?����,ʥ�����˻��ú��Ӷ������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��Ա����]			--
--							--
--		4401, 8401			--
----------------------------------------------------------
function peter_talk08 ()
	Talk( 1, "��Ա����: �������Ǵ󷢴ȱ���,�����ʥ������ֻ��Ư��Ư��,������ڴ���������μ�ʥ���ۻ���!̫�����ˡ�")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[��ξ����]			--
--							--
--		25801, 23101			--
----------------------------------------------------------
function peter_talk09 ()
	Talk( 1, "��ξ����: ����Ľ������ջ����������˶���Ĵ���,����ͺ�����һ���氡,������Ϊ����,�����Լ���ְ��,ף����ÿ���!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����ʿ��]			--
--							--
--		19401, 3901			--
----------------------------------------------------------
function peter_talk10 ()
	Talk( 1, "����ʿ��: �Ҹұ�֤,��������ﶼ���Ծ��������ʥ���Ŀ���,���Բ����в����ĵ��·���,����Ϊʲô?û����������ľ���ô!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ο͡�����˹]			--
--							--
--		7301, 23601			        --
----------------------------------------------------------
function peter_talk11 ()
	Talk( 1, "�ο͡�����˹: ��ϲ��ʥ����,��ϲ����������,�ö�ɰ��Ķ����,������һ��ʥ�������͸���ô?")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[С̯�����]			--
--							--
--		13901, 6101			--
----------------------------------------------------------
function peter_talk12 ()
	Talk( 1, "С̯�����: ��������ܹ�׬��Ǯ,��Ҳ���ð�̯��,�Ǻ�,�����Ұڿ����˿��򵽳��ĵĶ���ʱ���ĵ�����,�Ҿ;���ֵ��")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[С̯���ж�]			--
--							--
--		3301, 21601			        --
----------------------------------------------------------
function peter_talk13 ()
	Talk( 1, "С̯���ж�:��ȥ���氮��ô?�����ûȥ��,��һ��Ҫ�����������Ʒ,��˵��ȥ����?�Ǿ͸����������ʥ������Ʒ�˰�!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����С̯������			--
--							--
--		8701, 20401			         --
----------------------------------------------------------
function peter_talk14 ()
	Talk( 1, "ʥ����С̯������: �����ʱ��,ֻ�н�����Ʒ�������˿ϻ�Ǯ�ġ�")
end
 
--------------------------------------------------------
--							--
--							--
--		ʥ����С̯��Ү��			--
--							--
--		25501, 12401    			--
----------------------------------------------------------
function peter_talk15 ()
	Talk( 1, "ʥ����С̯��Ү��: ��!ʥ������!���Ҵ��������·��ÿ�ô?")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[��������]			--
--							--
--		24801, 9801			        --
----------------------------------------------------------
function peter_talk16 ()
	Talk( 1, "��������: ���Ǻ��Ļ����,����ʥ����ҹ�ս���������,ÿ����ʱ���Ҿ�����������ʱΧ������������龰��Ҫ��ϧ���ڰ���")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�׺���³��]			--
--							--
--		13001,23601			--
----------------------------------------------------------
function peter_talk17 ()
	Talk( 1, "�׺���³��:��������ж��?��ʥ��������ǰ���Ƕ��Ǻ�����,�ҿ����Ǻ���Ŷ,������������ѩ�̡�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��̫̫����]			--
--							--
--		23901, 22701	         		--
----------------------------------------------------------
function peter_talk18 ()
	Talk( 1, "��̫̫����: ��!��!�û����İ�������ʥ���ڵ����ǰ�!�ҿ��Ǹ����ĳ�,�����·��Ҫ�ǲ�֪��������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[������׶�]			--
--							--
--		24601, 19701			--
----------------------------------------------------------
function peter_talk19 ()
	Talk( 1, "������׶�: ��?��Ҫ����˵��?��,�Һܾ�û���˽�̸��,�ϴκ���˵����ʲôʱ��?������?����˭?��Ҫ����˵��?��������������ʲô���š�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[С̯���ȿ���]			--
--							--
--		23201, 20001			--
----------------------------------------------------------
function peter_talk20 ()
	Talk( 1, "С̯���ȿ���: HOoooo,ʥ���ڿ���!������ôϲ��ʥ����,Ϊʲô���ø�������?��˵ʥ�������ȸ�������ĺ��ӷ�����Ŷ!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[С��������]			--
--							--
--		22801, 5401			--
----------------------------------------------------------
function peter_talk21 ()
	Talk( 1, "С��������:�ء���Ҫ�ְ֡����쵽��ʥ�����˵ĵ���,����ȴ�Ҳ����ְ��ˡ�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��β�Ϳ�˹]			--
--							--
--		25601, 4301			--
----------------------------------------------------------
function peter_talk22 ()
	Talk( 1, "��β�Ϳ�˹:��ǰʥ���ھ���������,�����Ҫ�Լ�ȥ������,ʥ�������͵��������ǺͰְ�ǰ����͵͵��ؼҵ�һ��,�Ҷ�֪��,������?")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[СŮ��������]			--
--							--
--		21501, 4101			--
----------------------------------------------------------
function peter_talk23 ()
	Talk( 1, "СŮ��������:Ӵ~~ʥ������!һ���ĵĹ��ڰ�!ʲô?��û�̻�?�ٺ�,������Ŷ,����ȥʥ���������·����г�ȥ����~~~���кܶ�����������Ʒ.�ǵ�ȥ����Ŷ.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[ŷ��]			--
--							--
--		20601, 7601			--
----------------------------------------------------------
function peter_talk24 ()
	Talk( 1, "ŷ��:�ڹ��ϵĶ�����һ������,�������лƽ���,��������������.���ȥѧ�����鼼�����԰�!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��ķ]			--
--							--
--		19401, 23501			--
----------------------------------------------------------
function peter_talk25 ()
	Talk( 1, "��ķ: �����������,��ȥ�Ǳ�,��,һ������ĵط�,�Ǳ��кܶ�ö�������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[���]			--
--							--
--		19401, 20101			--
----------------------------------------------------------
function peter_talk26 ()
	Talk( 1, "���:�����ο��Ҿͻ�����������˵~��~~�������~��")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ֿ�]			        --
--							--
--		17301, 23501		         	--
----------------------------------------------------------
function peter_talk27 ()
	Talk( 1, "�ֿ�: ����˵�Ҳ��ôӳ������ܳ�������������ʥ�����˵ĵ���,���Ŵ��������ΧЦ�Ķ���ʹ,��ҲЦ��ֱ��������,ʥ������!��ס��,�����ʥ��,�㿴�����������ֿ��ڽ���!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--							--
--		15701, 23401			--
----------------------------------------------------------
function peter_talk28 ()
	Talk( 1, "����: �ҳ��İ�ô?����ʥ��������õ�������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[ʥ��ѩ���׸���]			--
--							--
--		15101, 25901			        --
----------------------------------------------------------
function peter_talk29 ()
	Talk( 1, "ʥ��ѩ���׸���: �Ҳ���˵��,����,����ף��ʥ������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[ʥ��ѩ�˿�����]			--
--						 	--
--		6601, 8301			        --
----------------------------------------------------------
function peter_talk30 ()
	Talk( 1, "ʥ��ѩ�˿�����: HELLO!!ʥ������,��֪�������и�������ʯͷ���ٵĹ���ô?����,��û������?�ǽ������Ҫץ��ʥ�����˸��㽲,�������Ц�ѵ�!!")
end




--------------------------------------------------------
--							--
--							--
--		ʥ����[ʥ����ָ��Ա]		--
--						 	--
--		                         	        --
----------------------------------------------------------
function Xmas_talk25 ()
	Talk( 1, "ʥ������!��ӭ����������ʥ����,�ҿ������������ͨ,��ʲô��֪���ľ������Ұ�")
	Text( 1, "ʥ����Ļ",JumpPage, 2  )
	Text( 1, "ʥ���������ʲô",JumpPage, 3  )
	Text( 1, "ʥ��������",JumpPage, 4 )

	Talk( 2, "���ʥ�����������?����ϴ��(83,39)��......����Ի𼦴����?���л��(220,40)��......����㲥ף����?����ʥ����(144,158)��......���˽�����?��㷵�ذ�....")
	Text( 2, "����",JumpPage, 1  )

	Talk( 3, "����Ե�(132,246)����,������һ���ܴ�ļ���,�����򵽺ܶഫ˵�еĶ���Ŷ����������Ҫ��ʥ������(146,171)�Ѻ����һ���ʥ��Ӳ�ң����ǵ�ӪҵԱ���ǲ���ֱ����Ǯ�ġ�����ȥ������")
	Text( 3, "����",JumpPage, 1  )

	Talk( 4, "��˵ʥ�����������м���ֲ���BOSS,��������û���㹻�Ĺ�Ʒ���ٻ�����,����Ե�(146,252)�ҿƶ�����!")
	Text( 4, "����",JumpPage, 1  )
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[С����]			--
--						 	--
--		9801, 23501			        --
----------------------------------------------------------
function peter_talk31 ()
	Talk( 1, "С����:�������������ʥ�������������ʱ�����ץס���ڼ���ô?�Ҿ��Թ�,��ϧʧ����,������������İ취������ץס��,��֪��ʲô�취?����������ܸ�����! ")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����С��]			--
--						 	--
--		14501, 26802			        --
----------------------------------------------------------
function peter_talk32 ()
	Talk( 1, "����С��:Ŷ��~ʥ�����˸��Ҵ�����һ��Ͱ���������,���������Ҷ������Ҹ�����!ʥ��������~")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����Լ��]			--
--						 	--
--		18101, 23903			        --
----------------------------------------------------------
function peter_talk33 ()
	Talk( 1, "����Լ��:��~ʥ������~���˶�����Լ��,�����Ҳ֪���ҵ����,�����Ҳ�����,�Ҷ�֪��С��������а취ץסʥ�����˵�����!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[˵Ц������¹]			--
--						 	--
--		22201, 22804			        --
----------------------------------------------------------
function peter_talk34 ()
	Talk( 1, "˵Ц������¹:����˵����?����һ��ͬ��,��ʮ���ó�����,��һ����Խ��Խ��,����ͱ���˸��ٹ�·!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����������]			--
--						 	--
--		24801, 8105			        --
----------------------------------------------------------
function peter_talk35 ()
	Talk( 1, "����������:ʥ���ڵ�����,���һ��Ҫ�ǵð����ӹ���ʥ������Ŷ,ʥ�����˻�������������.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��³ɭ��ʿ]			--
--						 	--
--		5501, 19506			        --
----------------------------------------------------------
function peter_talk36 ()
	Talk( 1, "��³ɭ��ʿ:��һ���������Ѿ��㹻��,��ʮ������������,��������޵�.Ү�ֱ�����,�ҵ�����.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��³]			--
--						 	--
--		11301, 23907			        --
----------------------------------------------------------
function peter_talk37 ()
	Talk( 1, "��³: ÿ�����ϱ��ŵ�����ĥʱ����~�����㻨��,��������һ��ۻ��!һ���˵�ʥ���������ֲ�����,�Ҿ��ڳ����Ÿı���.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--						 	--
--		26301, 17308			        --
----------------------------------------------------------
function peter_talk38 ()
	Talk( 1, "����: ��֪����?��˵��һ�ֽ������ܱ�ʯ�Ķ���,��˵������ʹ���߱�ĸ�ǿ��,��������������ұ��ǵ���������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[���ɶ�]			--
--						 	--
--		17401, 6009			        --
----------------------------------------------------------
function peter_talk39 ()
	Talk( 1, "���ɶ�:�������Ƕ��ڵ㲥ף��,��Ҳ����㲥һ�����ﻰ����Ҫ�ӹ���!��Ҫ��н�ż�!��Ҫ�ý���!������,�����ϰ�֪������˵��.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[������]			--
--						 	--
--		3401, 20011			        --
----------------------------------------------------------
function peter_talk40 ()
	Talk( 1, "������: ������Ȼ����~����ҲҪע�ⰲȫŶ!�ҿɲ���һ�������ҽԺ�￴���в�����! ")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�Ͽ�˹]			--
--						 	--
--		7401, 20511			        --
----------------------------------------------------------
function peter_talk41 ()
	Talk( 1, "�Ͽ�˹:�ö��ѩ��,�ѵ���ô��ĵط���Ҫ����ɨ��?��ϣ�����ʥ�������ܵõ���������һ̨��ѩ��!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--						 	--
--		20901, 21912			        --
----------------------------------------------------------
function peter_talk42 ()
	Talk( 1, "����: �Ӻ����޾���Ư��������վ�������ǰ,�Ҷ���������Ҫ��ϧ����,��վ��½���Ϲ�ʥ����,ʵ���Ǽ�ֵ����ף����,�һ��ÿ���˴�����ף��!�������ڵ������!ʥ������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[������]			--
--						 	--
--		26401, 13813			        --
----------------------------------------------------------
function peter_talk43 ()
	Talk( 1, "������: ��һֱ�뵱һ��������!��Ҫ���ҵĴ����ı�ʥ�����˷�������Ҫ��!����ʥ�����˻�Ҫ�����Ұ�������������.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ӷ�]			--
--						 	--
--		24801, 8114			        --
----------------------------------------------------------
function peter_talk44 ()
	Talk( 1, "�ӷ�: ֪��ʥ���ڸ���ô����?�Ҿ������������ɳ����,������,�������ǧ������������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����С���]			--
--						 	--
--		26101, 8915			        --
----------------------------------------------------------
function peter_talk45 ()
	Talk( 1, "����С���: �Ҵ���������?�����õ�廨��ô����?Сѩ�˺�С��¹��������ô����?��,��Щ�Ҷ�֪��,��ֻ����������֪��֪��.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��˹��]			--
--						 	--
--		19301, 4016			        --
----------------------------------------------------------
function peter_talk46 ()
	Talk( 1, "��˹��: ʥ���ڵ���,��������Ϊ��ΰ���ð�ռҵ���ҲӦ��ͣ�����ͺ����Ǵ��ѩ��,�ú�����һ����ζ�Ļ��˰�.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--						 	--
--		19101, 8417			        --
----------------------------------------------------------
function peter_talk47 ()
	Talk( 1, "����: �����ʥ������?�һ��ǵ�һ�ι����������~�����Ǹ�ʥ�������ֺ�������ɰ�,�����ǿô���ʥ����Ҳ��Ư��Ŷ,��ȥ������?")
end

------------------------------------------------------------
-- ���صĿ���ѧ��
------------------------------------------------------------
function dina_talk07()
	
	Talk( 1, "���صĿ���ѧ��:��Ȼ���㷢�����˵Ĵ���!����ʵ��һ��רְ�о���ѩ��ӡ�Ŀ���ѧ�ҡ����ˣ�������б���ѩ��ӡ���������������Ұ��⣬��Ȼ����������ѵģ�" )
	Text( 1, "��Ҫ���ѩ��ӡ", JumpPage, 2)

	Talk( 2, "���صĿ���ѧ��:��,��Ȼ���ҵ���,���ҾͲ��ƴ���,�ҿ��Խ����Щ��ӡ,ֻҪ������ҵ��������Ķ����Ϳ�����." )
	Text( 2, "�����ὣ", JumpPage, 4)
	Text( 2, "�����ؽ�", JumpPage, 5)
	Text( 2, "��ѩ��", JumpPage, 6)
	Text( 2, "ʥѩ��", JumpPage, 7)
	Text( 2, "ѩ�´�", JumpPage, 8)
	Text( 2, "ѩħǹ", JumpPage, 9)
	Text( 2, "���ȹ�", JumpPage, 10)
	Text( 2, "��һҳ", JumpPage, 3)
	
	Talk( 3, "���صĿ���ѧ��:��,��Ȼ���ҵ���,���ҾͲ��ƴ���,�ҿ��Խ����Щ��ӡ,ֻҪ������ҵ��������Ķ����Ϳ�����." )
	Text( 3, "����֮��", JumpPage, 11)
	Text( 3, "��˪֮��", JumpPage, 12)
	

	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4274, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4274, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 4, "���صĿ���ѧ��:Ҫ��������ὣ�ķ�ӡ��������������Ʒ:��ѩ��ӡ�������ὣ����ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 4, "��������ὣ�ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4275, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4275, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 5, "���صĿ���ѧ��:Ҫ��������ؽ��ķ�ӡ��������������Ʒ:��ѩ��ӡ�������ؽ�����ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 5, "��������ؽ��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)
	
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4281, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4281, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 6, "���صĿ���ѧ��:Ҫ�����ѩ���ķ�ӡ��������������Ʒ:��ѩ��ӡ�Ŀ�ѩ������ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 6, "�����ѩ���ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)
	

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4282, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4282, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 7, "���صĿ���ѧ��:Ҫ���ʥѩ�ܵķ�ӡ��������������Ʒ:��ѩ��ӡ��ʥѩ�ܡ���ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 7, "���ʥѩ�ܵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4276, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4276, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 8, "���صĿ���ѧ��:Ҫ���ѩ�´̵ķ�ӡ��������������Ʒ:��ѩ��ӡ��ѩ�´̡���ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 8, "���ѩ�´̵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4277, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4277, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 9, "���صĿ���ѧ��:Ҫ���ѩħǹ�ķ�ӡ��������������Ʒ:��ѩ��ӡ��ѩħǹ����ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 9, "���ѩħǹ�ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4278, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4278, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 10, "���صĿ���ѧ��:Ҫ������ȹ��ķ�ӡ��������������Ʒ:��ѩ��ӡ�ĺ��ȹ�����ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 10, "������ȹ��ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4279, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4279, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 11, "���صĿ���ѧ��:Ҫ�������֮�̵ķ�ӡ��������������Ʒ:��ѩ��ӡ�ĺ���֮�̡���ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 11, "�������֮�̵ķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2525, 1 )
	TriggerCondition( 1, HasItem, 4280, 1 )
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2525, 1 )
	TriggerAction( 1, TakeItem, 4280, 1 )
	TriggerAction( 1, GiveItem, 2526, 1, 4 )
	TriggerFailure( 1, JumpPage, 13 )
	Talk( 12, "���صĿ���ѧ��:Ҫ�����˪֮�ȵķ�ӡ��������������Ʒ:��ѩ��ӡ�Ĺ�˪֮�ȡ���ѩŮ�ʵ�����x1,Ϊ���о������ӡ�Ҹ����˼���Ĵ���,��֧������100�򺣵�����Ϊ������" )
	Text( 12, "�����˪֮�ȵķ�ӡ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "���صĿ���ѧ��:�ܱ�Ǹ,����ҵ���Ʒ����,���޷�Ϊ������ӡ." )

end

-------------------------------------------------------------------------------------------------------
----BOSS��ս�Ǽ�Ա
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
-- ����֮��:����ñ��
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
-- ����5��:��
------------------------------------------------------------

function dina_talk12()

	Talk( 1, "��:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6215)
	
end

------------------------------------------------------------
-- ����6��:��³�Ұ�
------------------------------------------------------------

function dina_talk13()

	Talk( 1, "��³�Ұ�:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6216)
	
end

------------------------------------------------------------
-- ����7��:����
------------------------------------------------------------

function dina_talk14()

	Talk( 1, "����:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6217)
	
end

------------------------------------------------------------
-- ����8��:����˹
------------------------------------------------------------

function dina_talk15()

	Talk( 1, "����˹:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6218)
	
end

------------------------------------------------------------
-- ����10��:��������
------------------------------------------------------------

function dina_talk16()

	Talk( 1, "��������:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6219)
	
end

------------------------------------------------------------
-- ����11��:ɳ��
------------------------------------------------------------

function dina_talk17()

	Talk( 1, "ɳ��:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6220)
	
end

------------------------------------------------------------
-- ����12��:ͯ��
------------------------------------------------------------

function dina_talk18()

	Talk( 1, "ͯ��:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6221)
	
end

------------------------------------------------------------
-- ����13��:����
------------------------------------------------------------

function dina_talk19()

	Talk( 1, "����:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6222)
	
end

------------------------------------------------------------
-- ����14��:������˹
------------------------------------------------------------

function dina_talk20()

	Talk( 1, "������˹:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6223)
	
end

------------------------------------------------------------
-- ����15��:����
------------------------------------------------------------

function dina_talk21()

	Talk( 1, "����:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6224)
	
end

------------------------------------------------------------
-- ����16��:����
------------------------------------------------------------

function dina_talk22()

	Talk( 1, "����:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6225)
	
end

------------------------------------------------------------
-- ����17��:�����޵�
------------------------------------------------------------

function dina_talk23()

	Talk( 1, "�����޵�:���磬�����ص���ô�ö����㷢�֣�" )
	AddNpcMission	(6226)
	
end

-------------------����
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

--------------------������
function prison_talk02 ()
	Talk ( 1, "Shoot. You are in my area. I make my rules here and you listen to me. Got it?")

	InitTrigger()
	TriggerCondition( 1, NoItem, 5724, 1 ) --������¼��
	TriggerCondition( 1, HasRecord, 1280 ) --��ɼ���ָ������
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, GiveItem, 5724, 1, 4) --������¼��
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 5)
	Text ( 1, "I want to get a Prison Discharge Certificate", MultiTrigger, GetMultiTrigger(), 1)

	Text ( 1, "I want to leave here...", JumpPage, 4)

	Talk ( 2, "Remember to put the Prison Log Card in the 3rd inventory slot to make it work properly.")

	Talk ( 4, "If you have a Prison Discharge Certificate in your inventory or no time is left on your Prison Log Card, you will be released. Now are you sure that you want to leave?")
	
	InitTrigger()
	TriggerCondition( 1, Checkjlktime ) --��������¼����ʣ��ʱ���Ƿ�Ϊ0
	TriggerAction( 1, TakeItem, 5724, 1) --��ȡ������¼��
	TriggerAction( 1, Leaveprison ) --�뿪������
	TriggerCondition( 2, HasItem, 5723, 1) --����֤��
	TriggerAction( 2, TakeItem, 5723, 1) --��ȡ����֤��
	TriggerAction( 2, Leaveprison ) --�뿪������
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
--		����[���ɡ�����]			--
--							--
--		2235,2785		--
----------------------------------------------------------
function dean_talk01 ()

	Talk( 1, "���ɡ�����: Ŷ�����װ������ѣ���ӭ�������ս,�¸ҵ��㽫��÷����ջ��Լ�ʥ�����е��������㽫�õ�������������Ĺ�ע��")
	Text( 1, "1��ʥ������", JumpPage, 2)
	Text( 1, "2��ʥ������Կ��", JumpPage, 7)
	Text( 1, "3��ʥ������Կ��", JumpPage, 9)
	Text( 1, "4��ʥ������Կ��", JumpPage, 11)
	Text( 1, "5��ʥ������Կ��", JumpPage, 13)
	
	Talk( 2, "���ɡ�����: 1��ʥ��������ʥ������ʱ�ھ����µĲƸ����������к�������������ģ���Ը�������ս��")
	Text( 2, "�ҽ���", JumpPage, 3)
	Text( 2, "�Ҳ�����", CloseTalk)
	
	Talk( 3, "���ɡ�����: �ǾͿ�ʼ�ɣ�ѡ��һ���ʺ�����Թ������ɣ�")
	
	Text( 3, "��ս�����Թ�", JumpPage, 4)
	Text( 3, "��ս�����Թ�", JumpPage, 5)
	Text( 3, "��սħ���Թ�", JumpPage, 6)
	
	Talk( 4, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5776, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 4, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "��֪������˵ʲô", CloseTalk)
	
	Talk( 5, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5791, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 5, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "��֪������˵ʲô", CloseTalk)
	
	Talk( 6, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5792, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 6, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "��֪������˵ʲô", CloseTalk)
	
	Talk( 7, "���ɡ�����: ��Ҫ��2��ʥ���ı��ر���Ҫʹ�����Ӧ��Կ�ײ��У����������ص�Կ�׻��������أ�")
	Text( 7, "����֪����������Ұ�", JumpPage, 8)
	Text( 7, "�ҿ�û��Ȥ֪��", CloseTalk)
	
	Talk( 8, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5793, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 8, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "��֪������˵ʲô", CloseTalk)
	
	
	Talk( 9, "���ɡ�����: ��Ҫ��3��ʥ���ı��ر���Ҫʹ�����Ӧ��Կ�ײ��У����������ص�Կ�׻��������أ�")
	Text( 9, "����֪����������Ұ�", JumpPage, 10)
	Text( 9, "�ҿ�û��Ȥ֪��", CloseTalk)
	
	Talk( 10, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5794, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 10, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 10, "��֪������˵ʲô", CloseTalk)
	
	Talk( 11, "���ɡ�����: ��Ҫ��4��ʥ���ı��ر���Ҫʹ�����Ӧ��Կ�ײ��У����������ص�Կ�׻��������أ�")
	Text( 11, "����֪����������Ұ�", JumpPage, 12)
	Text( 11, "�ҿ�û��Ȥ֪��", CloseTalk)
	
	Talk( 12, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5795, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 12, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 12, "��֪������˵ʲô", CloseTalk)
	
	Talk( 13, "���ɡ�����: ��Ҫ��5��ʥ���ı��ر���Ҫʹ�����Ӧ��Կ�ײ��У����������ص�Կ�׻��������أ�")
	Text( 13, "����֪����������Ұ�", JumpPage, 14)
	Text( 13, "�ҿ�û��Ȥ֪��", CloseTalk)
	
	Talk( 14, "���ɡ�����: �����ˣ����Ȼ���¸ң����������и���˹ͨ��(730,1508)���ˣ����������ȥ�����ɣ��������ָ���ģ�")
	InitTrigger()
	TriggerCondition( 1, NoRecord, 1281 )
	TriggerCondition( 1, NoRecord, 1282 )
	TriggerCondition( 1, NoRecord, 1283 )
	TriggerCondition( 1, NoRecord, 1284 )
	TriggerCondition( 1, NoRecord, 1285 )
	TriggerCondition( 1, NoRecord, 1286 )
	TriggerCondition( 1, NoRecord, 1287 )
	TriggerCondition( 1, NoItem, 5776, 1 )   --û�м��ɡ��������ܺ�A
	TriggerCondition( 1, NoItem, 5791, 1 )   --û�м��ɡ��������ܺ�B
	TriggerCondition( 1, NoItem, 5792, 1 )   --û�м��ɡ��������ܺ�C
    TriggerCondition( 1, NoItem, 5786, 1 )   --û�зϾɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5787, 1 )   --û�г¾ɵ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5788, 1 )   --û��ո�µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5789, 1 )   --û�о��µ��¹ⱦ��
	TriggerCondition( 1, NoItem, 5790, 1 )   --û��׿Խ���¹ⱦ��
	TriggerCondition( 1, NoItem, 5793, 1 )   --2������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5794, 1 )   --3������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5795, 1 )   --4������Կ���ܺ�
	TriggerCondition( 1, NoItem, 5796, 1 )   --5������Կ���ܺ�
	TriggerCondition( 1, HasLeaveBagGrid, 1 )          --����������һ���ո�
	TriggerCondition( 1, KitbagLock, 0 )               --����û������
	TriggerAction( 1, GiveItem, 5796, 1, 4) 
	TriggerFailure( 1, JumpPage, 22)
	Text( 14, "��֪����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 14, "��֪������˵ʲô", CloseTalk)
	
	
	
	
	
	Talk( 22, "���ɡ�����: ��ȷ��������û���Ҹ�����ܺ��Լ��¹ⱦ�У�����Ҳ���������������ģ�")
	Text( 22, "�뿪", CloseTalk)
	
end	
	
	
	
----------------------------------------------------------
--							--
--							--
--		������[˹ͨ��]			--
--							--
--		730,1508		                     --
----------------------------------------------------------
function dean_talk03 ()

	Talk( 1, "˹ͨ��: ��ã�����������")
	Text( 1, "�һ�һ��ʥ������", JumpPage, 10 )
	Text( 1, "�һ�����ʥ������Կ��", JumpPage, 3 )
	Text( 1, "�һ�����ʥ������Կ��", JumpPage, 4 )
	Text( 1, "�һ��ļ�ʥ������Կ��", JumpPage, 5 )
	Text( 1, "�һ��弶ʥ������Կ��", JumpPage, 6 )
	
	
	Talk( 10,"���������ս���Թ���ѡ��һ�����Ҫѡ��Ŷ��")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------�Ͼɵ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1281)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1281)       --���record 1281
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1��ʥ������
	TriggerFailure(1, JumpPage, 9)	
	Text( 10, "����ս���Ƿ����Թ�", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------�Ͼɵ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1282)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1282)   	--���record 1282
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1��ʥ������
	TriggerFailure(1, JumpPage, 9)
	Text( 10, "����ս���������Թ�", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5786, 1)               ---------�Ͼɵ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1283)
	TriggerCondition(1, ItemAttrNum,5786,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5786, 1)
	TriggerAction(1, ClearRecord, 1283)     --���record 1283
	TriggerAction(1, GiveItem, 5777, 1, 4)              ----------1��ʥ������
	TriggerFailure(1, JumpPage, 9)
	Text( 10, "����ս����ħ���Թ�", MultiTrigger, GetMultiTrigger(), 1)
	
	Text( 10, "ȡ��", CloseTalk)	
	
	
	Talk( 3,"�һ�����ʥ������Կ����Ҫһ������Ϊ0�ĳ¾ɵ��¹ⱦ�У���ȷ���һ���")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5787, 1)               ---------�¾ɵ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1284)
	TriggerCondition(1, ItemAttrNum,5787,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5787, 1)
	TriggerAction(1, ClearRecord, 1284)    --���record 1284
	TriggerAction(1, GiveItem, 5782, 1, 4)              ----------2��ʥ������Կ��
	TriggerFailure(1, JumpPage, 9)
	Text( 3, "��ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "�Ҳ���", CloseTalk)
	
	Talk( 4,"�һ�����ʥ������Կ����Ҫһ������Ϊ0��ո�µ��¹ⱦ�У���ȷ���һ���")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5788, 1)               ---------ո�µ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1285)
	TriggerCondition(1, ItemAttrNum,5788,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5788, 1)
	TriggerAction(1, ClearRecord, 1285)   --���record 1285
	TriggerAction(1, GiveItem, 5783, 1, 4)              ----------3��ʥ������Կ��
	TriggerFailure(1, JumpPage, 9)
	Text( 4, "��ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "�Ҳ���", CloseTalk)
	
	Talk( 5,"�һ��ļ�ʥ������Կ����Ҫһ������Ϊ0�ľ��µ��¹ⱦ�У���ȷ���һ���")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5789, 1)               ---------���µ��¹ⱦ��
	TriggerCondition(1, HasRecord, 1286)
	TriggerCondition(1, ItemAttrNum,5789,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5789, 1)
	TriggerAction(1, ClearRecord, 1286)    --���record 1286
	TriggerAction(1, GiveItem, 5784, 1, 4)              ----------4��ʥ������Կ��
	TriggerFailure(1, JumpPage, 9)
	Text( 5, "��ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "�Ҳ���", CloseTalk)
	
	Talk( 6,"�һ��弶ʥ������Կ����Ҫһ������Ϊ0��׿Խ���¹ⱦ�У���ȷ���һ���")
	InitTrigger()                                                  
	TriggerCondition(1, HasItem, 5790, 1)               ---------׿Խ���¹ⱦ��
	TriggerCondition(1, HasRecord, 1287)
	TriggerCondition(1, ItemAttrNum,5790,6,0,0)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 5790, 1)
	TriggerAction(1, ClearRecord, 1287)     --���record 1287
	TriggerAction(1, GiveItem, 5785, 1, 4)              ----------5��ʥ������Կ��
	TriggerFailure(1, JumpPage, 9)
	Text( 6, "��ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "�Ҳ���", CloseTalk)
	
	
	Talk( 9, "��ȷ����ѡ������ȷ���Թ���������ֻ��һ������������Ϊ0���¹ⱦ����Ŷ")
	
	
	
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
--		������[�ǻ�ɳ֯]			--
--							--
--		2279,2757		                     --
----------------------------------------------------------
function sds_talk01 ()
	Talk( 1, "�ǻ�ɳ֯: �����İ�,�����ٿ�һ��ʥ��ʿ��")
	AddNpcMission	(6239)
	AddNpcMission	(6249)

end



----------------------------------------------------------
--							--
--							--
--		������[��ʸ]			--
--							--
--		2167,2511		                     --
----------------------------------------------------------
function sds_talk02 ()
	Talk( 1, "��ʸ: ȼ�հɣ��ҵ�С���棡Ϊ��Ů��ս���ɣ�")
	AddNpcMission	(6240)
	AddNpcMission	(6241)

end



----------------------------------------------------------
--							--
--							--
--		ɳ�[����]			--
--							--
--		1126,3416		                     --
----------------------------------------------------------
function sds_talk03 ()
	Talk( 1, "����: Ϊ���ŵ���,ȼ���ҵ�С���档")
	Text( 1, "��Ҫ�ش�����", JumpPage, 2 )
	
	
	Talk( 2, "����Ҫ��ʼ�ش�")
	InitTrigger() 	
	TriggerCondition(1, HasRecord, 1294)
	TriggerAction(1, JumpPage, 4)
	TriggerFailure(1, JumpPage, 3)
	Text( 2, "ȷ��", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "ȡ��", CloseTalk )
	
	Talk( 3, "������˼�����ƺ���û��ȡ����")
	
	
	Talk( 4, "1��	����������������ʱ����ס�����׶���ԭ���ĸ��ޣ�")
	Text( 4, "����", JumpPage, 5 )
	Text( 4, "ŷ��", JumpPage, 9 )
	Text( 4, "������", JumpPage, 9 )
	
	Talk( 5, "2��	������ʥ��ʿ���棬�����Ǹ�ʲô�ģ�")
	Text( 5, "�����", JumpPage, 9 )
	Text( 5, "������", JumpPage, 6 )
	Text( 5, "�㺣�������", JumpPage, 9 )
	
	Talk( 6, "3��	�������¼��������У��ĸ��ں�����npc��û���ֹ�")
	Text( 6, "����", JumpPage, 9 )
	Text( 6, "��������", JumpPage, 9 )
	Text( 6, "����", JumpPage, 7 )
	
	
	Talk( 7, "4��	���ʺ�������ʥ��ʿ12����ʼnpc���������У�")
	Text( 7, "������", JumpPage, 9 )
	Text( 7, "������", JumpPage, 8 )
	Text( 7, "���Ǳ�", JumpPage, 9 )


	InitTrigger() 
	TriggerCondition(1, HasRecord, 1294)               
	TriggerAction(1, SetRecord, 1293)
	Talk( 8, "5��	�����ĸ�����û�ٰ������ƥ���˶���")
	Text( 8, "����", JumpPage, 9 )
	Text( 8, "������", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 8, "���ô�", JumpPage, 9 )

	Talk( 9, "������ˣ����ͷ��ʼ�ش�")



	AddNpcMission	(6242)
	AddNpcMission	(6243)

end

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����]			--
--							--
--		1533,699		                     --
----------------------------------------------------------
function sds_talk04 ()

	
	
	Talk( 1, "����: �߹����,������,���Űװ����ľ�ɫ,�����߹����,����,������......")
	Text( 1,"���ҷ�������ٻ�ȯ��!", JumpPage, 2)
	
	
	InitTrigger() 
	TriggerCondition(1, HasRecord, 1297)               
	TriggerCondition(1, HasItem, 3152, 99)               
	TriggerCondition(1, HasMoney, 100000) 
    TriggerAction(1, GiveItem, 5805,1,31) 	
	TriggerAction(1, TakeItem, 3152, 99)               
	TriggerAction(1, TakeMoney, 100000)               
	TriggerAction(1, SetRecord, 1298)               
	TriggerFailure(1, JumpPage, 3)

	
	Talk( 2, "����: Ҫ��������ٻ�ȯҪ100000��99����������Ŷ��")
	Text( 2, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 3, "����: ��Ķ�����������")
	
	AddNpcMission	(6244)
	AddNpcMission	(6245)

end
----------------------------------------------------------
--							--
--							--
--		���ձ�[˲]			--
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
--		����һ��[һ��]			--
--							--
--		336,174		                     --
----------------------------------------------------------
function sds_talk06 ()
	Talk( 1, "һ��: ˲......��һ��Ҫ��ǿ......")
	Text( 1,"����а��̻��ٻ�ȯ��!", JumpPage, 2)
	
	
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


	Talk( 2, "һ��: Ҫ��а��̻ʣ�������cosplay֤�鶼�ռ�����û�������û���㹻ǿ��ʵ���Ļ����޷���ս�̻ʵ�,ʵ������ﵽ55������")
	Text( 2, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )


	Talk( 3, "һ��: ��Ķ�����������")
	
	AddNpcMission	(6247)
	AddNpcMission	(6248)

end
----------------------------------------------------------
--		������[������]			--
--		741,1505		                  --
----------------------------------------------------------
function aimina_talk01 ()
	Talk( 1, "��ð�������ϲ���ռ��;�Ϊ0���¹ⱦ���ˣ�������еĻ���Ը����һЩ�������㽻����")
	Text( 1,"����һ�", JumpPage, 2)
	Text( 1,"�뿪", CloseTalk)
	
	Talk( 2, "��ͬƷ�ʵ��¹ⱦ�еļ�ֵҲ�ǲ�һ����Ŷ�����ҿ�����Ҫ�����һ����������أ�")
	Text( 2,"�Ͼɵ��¹ⱦ��", JumpPage, 3)
	Text( 2,"�¾ɵ��¹ⱦ��", JumpPage, 4)
	Text( 2,"ո�µ��¹ⱦ��", JumpPage, 5)
	Text( 2,"���µ��¹ⱦ��", JumpPage, 6)
	Text( 2,"׿Խ���¹ⱦ��", JumpPage, 7)
	
	Talk( 3, "�Ͼɵ��¹ⱦ�У�����Ի��15��������ʿ����,10�����鹭���ֺ��Ǻ�15��������ʿ����")
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
	Text( 3, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "�뿪", CloseTalk)
	
	
	
	Talk( 4, "�¾ɵ��¹ⱦ�У�����Ի��10�������ӡ��99������Ӳ��")
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
	Text( 4, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, "�뿪", CloseTalk)
	
	
	Talk( 5, "ո�µ��¹ⱦ�У�����Ի��30��ճ����ˮ�ݺ�99������Ӳ��")
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
	Text( 5, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, "�뿪", CloseTalk)
	
	
	
	Talk( 6, "���µ��¹ⱦ�У�����Ի��1��������̳,1����������ӡ��1��������Կ")
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
	Text( 6, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "�뿪", CloseTalk)
	
	
	Talk( 7, "׿Խ���¹ⱦ�У�����Ի��5����������ӡ,2������Կ��,1��������Կ��5�������֭")
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
	Text( 7, "ȷ��", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, "�뿪", CloseTalk)
	
	Talk( 15, "��ȷ��������������Ϊ0�ķϾɵ��¹ⱦ�У��ǵñ�����Ҫ������������3����λŶ��")
	Text( 15, "�뿪", CloseTalk)
	Talk( 16, "��ȷ��������������Ϊ0�ĳ¾ɵ��¹ⱦ�У��ǵñ�����Ҫ������������2����λŶ��")
	Text( 16, "�뿪", CloseTalk)
	Talk( 14, "��ȷ��������������Ϊ0��ո�µ��¹ⱦ�У��ǵñ�����Ҫ������������2����λŶ��")
	Text( 14, "�뿪", CloseTalk)
	Talk( 13, "��ȷ��������������Ϊ0�ľ��µ��¹ⱦ�У��ǵñ�����Ҫ������������3����λŶ��")
	Text( 13, "�뿪", CloseTalk)
	Talk( 12, "��ȷ��������������Ϊ0��׿Խ���¹ⱦ�У��ǵñ�����Ҫ������������4����λŶ��")
	Text( 12, "�뿪", CloseTalk)
end
----------------------------------------------------------
--							--
--							--
--		ɳᰳ� ʥ�𴫵ݴ�ʹ		--
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
--		ɳᰳ� ʥ��̨		          --
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
	TriggerAction(1, GiveItem, 5825, 1, 26)   --��ȼ�Ļ��
	TriggerAction(1, GiveItem, 5827, 1, 26)	  --���е�����
	TriggerFailure(1, JumpPage, 2)
	Text( 1, "Ignite Sacred Torch", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Only the one who complete the Five Tests can kindle the torch! Remember to unlock your inventory and reserve 2 slots before going to kindle the torch.")
	Text( 2, "Close",CloseTalk)
	AddNpcMission (6280)
end

----------------------------------------------------------
--							--
--							--
--		������[��Ʊ����Ա�˵�]				--Peter
--							--
--		2315,2836				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function peter_talk001 ()



	
	Talk( 1, "��Ʊ����Ա�˵�:��!�ӽ���������Ǹ�ְҵ������!����ϸ�Ķ�һ�����ǵĲ�Ʊ�й�,Ȼ�����Ǿ�������������~ף��һע��Ǭ��!" )
	Text( 1, "��Ʊ������֪", JumpPage, 2)
	Text( 1, "��Ը�⻨20����һ�ſհײ�Ʊ", JumpPage, 3)
	Text( 1, "��Ը�⻨99������Ӳ����һ��������", JumpPage, 4)
	Text( 1, "��Ҫ��д��Ʊ,�������д�!", OpenLottery)
	Text( 1, "�ҳ�����һֻ��Ǯ���������", JumpPage, 5)	
        Text( 1, "�뿪", CloseTalk)
	
	
	Talk( 2, "��Ʊ������֪:�빺��һ�ſղ�Ʊ,��ӵ��6��������,Ȼ�����дѡ����������Ҫ�ĺ���,�����ȷ���Ϳ�������һ����Ч�Ĳ�Ʊ��,���ǵĲ�Ʊ����ʱ����ÿ��1���ٳ�0�㿪ʼ������ÿ��6������8��ֹͣ,��д�Ĳ�Ʊ�粻�����ܽ��жҽ����Զ�����,�ղ�Ʊ����д��һֱ��Ч�ġ�����ע��0-3��������Դ�������ֱ�ӹ���,����������Ļ����Ҫ�����İ취��Ŷ" )
	Text( 2, "�뿪", CloseTalk)

	Talk( 3, "�����ҵ�20���!��Ҫ�ղ�Ʊ!��Ҫ�н�!")
	
        InitTrigger()                                                   --------�һ��ղ�Ʊ
        TriggerCondition(1, HasLeaveBagGrid,1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )            --����δ��	
        TriggerCondition( 1, HasMoney, 200000)    ---��20��
        TriggerAction(1, TakeMoney, 200000)
	TriggerAction(1, GiveItem, 5828,1,4)              ----------�ղ�Ʊ
	TriggerFailure(1, JumpPage, 8)
	Text(3,"ȷ���һ�",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "��һ�龫��Ӳ�ҿ��Զһ��±ߵ��κ�һ��������,�������ѡ��!")
	InitTrigger()                                                   --------�һ�������0
        TriggerCondition( 1, HasItem, 0855, 99)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��		
        TriggerAction(1, TakeItem, 0855, 99)                 ----һ�龫��Ӳ��
	TriggerAction(1, GiveItem, 5829,1,4)              ----------������0
	TriggerFailure(1, JumpPage, 8)
	Text(4,"ȷ���һ�������0",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()                                                   --------�һ�������0
        TriggerCondition( 1, HasItem, 0855, 99)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��	
        TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5830, 1,4)              ----------������0
	TriggerFailure(1, JumpPage, 8)
	Text(4,"ȷ���һ�������1",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()      --------�һ�������1
        TriggerCondition( 1, HasItem, 0855, 99)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��                                                 
	TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5831, 1,4)              ----------������1
	TriggerFailure(1, JumpPage, 8)
	Text(4,"ȷ���һ�������2",  MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger()                             --------�һ�������2
        TriggerCondition( 1, HasItem, 0855, 99)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��   
	TriggerAction(1, TakeItem, 0855, 99)           
	TriggerAction(1, GiveItem, 5832, 1,4)              ----------������2
	TriggerFailure(1, JumpPage, 8)
	Text(4,"ȷ���һ�������3",  MultiTrigger, GetMultiTrigger(), 1)
        InitTrigger()                                                   --------�һ�������3
        TriggerCondition( 1, HasItem, 0855, 99)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��   
	TriggerAction(1, TakeItem, 0855, 99)
	TriggerAction(1, GiveItem, 5833, 1,4)              ----------������3
	TriggerFailure(1, JumpPage, 8)
	Text( 4, "�뿪", CloseTalk)

	Talk(5, "����Ǳ��λ�������泬�����Ŷ!������ô���꺣������,����˵ķ����!!�����ǵ��̳���,���б��λ�Ŀ��ų���ͼ��ܹ���ѡ��!")   ---����С�����
        InitTrigger()                                                   --------�һ��ղ�Ʊ
        TriggerCondition(1, HasLeaveBagGrid,1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )            --����δ��	
        TriggerCondition( 1, HasMoney, 100000)    ---��10��
        TriggerAction(1, TakeMoney,100000)
	TriggerAction(1, GiveItem, 5840,1,4)              ----------С�����
	TriggerFailure(1, JumpPage, 8)
	Text(5,"��Ҫ��һֻ������!10���ɽ�!",  MultiTrigger, GetMultiTrigger(), 1)
        Text( 5, "лл����,�´�����!", CloseTalk)

	Talk(8, "��!����,�����ϲ���Ҫ���㹻��Ǯ,��Ҫ���㹻�İ�����!")
        Text( 8, "�뿪", CloseTalk)

end 

-----��Ʊ����Ա�˵½���



----------------------------------------------------------
--							--
--							--
--		������[��Ʊ�һ�Ա������]				--Peter
--							--
--		231888,283688				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function peter_talk002 ()

	Talk( 1, "��Ʊ�һ�Ա������:���ǵĽ�Ʒ���Ƿǳ������ۺ����!ֻ��Ҫһ�������,�����ӵ��!" )
	Text( 1, "��Ʊ�ҽ���֪", JumpPage, 2)
	Text( 1, "��Ʒ��ѯ", JumpPage, 3)
	Text( 1, "��Ʊһ��,��Ʒ����,�����ҽ�,��ҹ���!", JumpPage, 4)     
	Text( 1, "�н������ѯ",JumpPage, 5)
        Text( 1, "�뿪", CloseTalk)
	
	
	Talk( 2, "��Ʊ�һ���֪�������Ҳ�ѯ���ڵ��н�����,����Ҫ�ҽ��Ĳ�Ʊ���ڰ����ĵ�һ�������Ʊ����ȫ����ȷΪһ�Ƚ�,������λ���н�������ͬΪ���Ƚ�,������λ���н�������ͬΪ���Ƚ�,������λ���н�������ͬΪ�ĵȽ�,������λ���н�������ͬΪ��Ƚ�." )
	Text( 2, "�뿪", CloseTalk)

	Talk( 3, "���ǵĽ�Ʒ������ʷ���������!�����Ǵӽ�������Բ��ó����ʹ�ٵ��ö�����!�����뿴��Ʒ:��Ƚ���ƷΪ�ܿ�Ĵ�Ǯ�������ٻ�ȯ,�ĵȽ���ƷΪ���ڻ�����־,���Ƚ�Ϊ����Կ��,���Ƚ���ƷΪ�����ߵ�����,һ�Ƚ���ƷΪ�����ʬ��!")
	Text( 3, "�뿪", CloseTalk)
	
	Talk( 4, "ȷ���һ��Ĳ�Ʊ���ڰ����ĵ�һ��,Ȼ��һ���Ӧ�Ľ�Ʒ��!��׼��,�����ṩ����һ��͵Ƚ���Ȩ��,���ǻ��˿ɱ���Ŷ!!" )

	InitTrigger()
        TriggerCondition( 1, HasItem, 5828, 1)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��		
	TriggerCondition(1, DuiHhuan1)	               ---�һ�2�Ƚ�
  	TriggerAction(1, GiveItem, 2842,1,4)              ---------2�Ƚ���Ʒ
	TriggerFailure(1, JumpPage, 8)--------�һ���Ʒʧ��
	Text(4,"ȷ���һ�һ�Ƚ�", MultiTrigger, GetMultiTrigger(), 1)       
	 
	InitTrigger()                                                   --------�һ�2�Ƚ�
        TriggerCondition( 1, HasItem, 5828, 1)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��		
	TriggerCondition(1, DuiHhuan2)	               ---�һ�2�Ƚ�
  	TriggerAction(1, GiveItem, 2835,1,4)              ---------2�Ƚ���Ʒ
	TriggerFailure(1, JumpPage, 8)--------�һ���Ʒʧ��
  	Text(4,"ȷ���һ����Ƚ�", MultiTrigger, GetMultiTrigger(), 1)

        InitTrigger()                                                   --------�һ�3�Ƚ�
        TriggerCondition( 1, HasItem, 5828, 1)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��
        TriggerCondition(1, DuiHhuan3)                ---�һ�3�Ƚ�
	TriggerAction(1, GiveItem, 5704,1,4)              ---------3�Ƚ���Ʒ
	TriggerFailure(1, JumpPage, 8)--------�һ���Ʒʧ��
	Text(4,"ȷ���һ����Ƚ�", MultiTrigger, GetMultiTrigger(),  1)

        InitTrigger()                                                   --------�һ�4�Ƚ�
        TriggerCondition( 1, HasItem, 5828, 1)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��	
	TriggerCondition(1, DuiHhuan4)                   ---�һ�4�Ƚ�
	TriggerAction(1, GiveItem, 0853,1,4)              ---------4�Ƚ���Ʒ
	TriggerFailure(1, JumpPage, 8)--------�һ���Ʒʧ��
	Text(4,"ȷ���һ��ĵȽ�", MultiTrigger, GetMultiTrigger(),  1)

        InitTrigger()                                                   --------�һ�5�Ƚ�
        TriggerCondition( 1, HasItem, 5828, 1)       ---�ж��Ƿ��е���,����     
        TriggerCondition(1, HasLeaveBagGrid, 1)       --������һ
	TriggerCondition(1, KitbagLock, 0 )           --����δ��	
	TriggerCondition(1, DuiHhuan5)                     ---�һ�5�Ƚ�
	TriggerAction(1, GiveItem, 5840,1,4)              ---------5�Ƚ���Ʒ
	TriggerFailure(1, JumpPage, 8)--------�һ���Ʒʧ��
	Text(4,"ȷ���һ���Ƚ�", MultiTrigger, GetMultiTrigger(), 1)
        Text( 4, "�뿪", CloseTalk)
	
        Talk(5, "ÿ�������8����9������ѭ������ÿһλ�н����룬9��빫������ȫ�����н����룬�ǵ�����ϵͳ����Ŷ!")            --------�һ���ѯ
        Text( 5, "�뿪", CloseTalk)


	Talk(8, "���ѯ�н�����,Ȼ���ڿ����ڼ�����Ч�Ĳ�Ʊ�����Ҷҽ�")            --------�һ�ʧ��
	Text(8, "�뿪", CloseTalk)
end

	-----��Ʊ�һ�Ա���������

		----------------------------------------------------------
--							--
--							--
--		������[��Ǯ������]				--Peter
--							--
--		231888,283688				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function peter_talk003 ()
	Talk( 1, "�ߺ�~�����й���Ĵ�Ǯ���������ż!�̳��ﻹ��һֻ�ҵ��ֵ�!��֪����������ô?" )
        Text( 1, "�뿪", CloseTalk)
end
		----��Ǯ���������


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




	