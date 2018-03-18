--------------------------------------------------------------------------
--									--
--									--
--		NPCScript03.lua Created by zureXC--			--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading NPCScript08.lua" )
print( "----------------------------------------" )

bgtalk1_1 = "I am Event NPC - Pappa. You can check out available events here. If you are interested, select the event for more detail or visit our website at: http://www.piratekingonline.com/"
bganswer1_13 = "Tales of Pirates New Year Race"
bganswer1_14 = "Pirate's Day"
bganswer1_15 = "Distinguished family of the pirates"
bganswer1_16 = "Survey of Tales of Pirates. To see which group of player you belong to"
bganswer1_17 = "4 Slots, Black Dragon"

bgtalk13 = "0"
bgtalk14 = "Event is not released. Please check out the website for more details."
bgtalk15 = "Starting from 1st January, accumulate reputation points and you stand a chance to win Gem of Soul, Blacksmith Pliers, Refining Gems and other items from Argent's bar."
bgtalk16 = "http: //vote.hdwonline.moliyo.com/vote1/ Check for more details,"
bgtalk17 = "0"

function Silver_01 () -- Rebirth NPC Made by AzureXC

	Talk( 1, "I AM THE ALMIGHTY GODDESS KARA!!! PROVE YOU ARE WORTHY & YOU SHALL BE REBORN ! ----- After you get stone go use Heaven Gate in Icicle and talk with REBIRTH ANGEL." )
	AddNpcMission(8500)

	Talk( 3, "Somebody told me that you are looking for the 2nd Rebirth Runestone! I have one but you'll have to finish the quest!")
	AddNpcMission(8501)

	Talk( 4, "Somebody told me that you are looking for the 3nd Rebirth Runestone! I have one but you'll have to finish the quest!")
	AddNpcMission(9991)

end



function chaosbuyer_01 ()

   Talk( 1, "chaos argent Buyer: Hello I am the Npc for chaos argent  , I'm buying chaos argent drops its too dificult for me collect all i need" )
   Text( 1, "I want to sell my King of the Ring Emblem 2m", JumpPage, 3)
   Text( 1, "I want to sell my saint of the ring emblems for 1m", JumpPage, 4)
   Text( 1, "I want to sell my Novice chaos voucher chaos voucher for 200k", JumpPage, 7)
   Text( 1, "I want to sell my Standard chaos voucher for 500k", JumpPage, 8) 
   Text( 1, "I want to sell my Expert chaos voucher for 1m", JumpPage, 9)
   Text( 1, "see more items for sell", JumpPage, 2)

   Talk( 2, "here more items that you can sell me")
   Text( 2, "I want to sell my Novice monster covenant 200k", JumpPage, 10)
   Text( 2, "I want to sell my Standard monster covenant for 500k", JumpPage, 11)
   Text( 2, "I want to sell my Expert monster covenant monster covenant for 1m", JumpPage, 12)
   Text( 2, "I want to sell Power of Flame for 500k", JumpPage, 13)
   Text( 2, "I want to sell Power of Wind for 500k", JumpPage, 14)
   Text( 2, "I want to sell Power of Thunder for 500k", JumpPage, 15)
   Text( 2, "I want to sell Power of Frost for 500k", JumpPage, 16)
   Text( 2, "I want to sell my Angelic Dice for 2m", JumpPage, 17)
   Text( 2, "No Thanks", JumpPage, 18)

   InitTrigger()
   TriggerCondition( 1, HasItem, 1032,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 1, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 1032,1 )
   TriggerAction( 1, AddMoney, 2000000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 3,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 1031,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 1031,1 )
   TriggerAction( 1, AddMoney, 1000000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 4,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 2608,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 2608,1 )
   TriggerAction( 1, AddMoney, 200000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 7,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 2609,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 2609,1 )
   TriggerAction( 1, AddMoney, 500000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 8,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 2610,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 2610,1 )
   TriggerAction( 1, AddMoney, 1000000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 9,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 2605,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 2605,1 )
   TriggerAction( 1, AddMoney, 200000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 10,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 2606,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 2606,1 )
   TriggerAction( 1, AddMoney, 500000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 11,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 2607,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 2607,1 )
   TriggerAction( 1, AddMoney, 1000000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 12,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 267,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 267,1 )
   TriggerAction( 1, AddMoney, 500000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 13,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 268,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 268,1 )
   TriggerAction( 1, AddMoney, 500000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 14,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 269,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 269,1 )
   TriggerAction( 1, AddMoney, 500000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 15,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 270,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 270,1 )
   TriggerAction( 1, AddMoney, 500000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 16,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   InitTrigger()
   TriggerCondition( 1, HasItem, 271,1 )
   TriggerCondition( 1, HasLeaveBagGrid, 1 )
   TriggerCondition( 2, KitbagLock, 0 )
   TriggerAction( 1, TakeItem, 271,1 )
   TriggerAction( 1, AddMoney, 2000000 )
   TriggerFailure( 1, JumpPage, 18 )
   Text( 17,"get please." ,MultiTrigger,GetMultiTrigger(),1)

   Talk( 18, "Come when u will have the required items" )

end

function alex_tp1 ()

	local ReSelectTalk = "I need to reconsider"
	local ReSelectPage = 1

	--cancel talk
	local CancelSelectTalk = "Forget it, I will stay here"
	local CancelSelectPage = 2

	--maps
	local CurMapName1 = "winterland"
	local CurMapName2 = "mjing1"
	local CurMapName3 = "mjing2"
	local CurMapName4 = "mjing3"
	local CurMapName5 = "mjing4"


	--Winter
	local GoTo01X = 249
	local GoTo01Y = 866
	local GoTo01M = CurMapName1

	--1st aurora
	local GoTo02X = 175
	local GoTo02Y = 206
	local GoTo02M = CurMapName2

	--2nd aurora
	local GoTo03X = 134
	local GoTo03Y = 67
	local GoTo03M = CurMapName3

	--1st dark area
	local GoTo04X = 88
	local GoTo04Y = 87
	local GoTo04M = CurMapName4

	--2nd dark area
	local GoTo05X = 88
	local GoTo05Y = 87
	local GoTo05M = CurMapName5
	

	--2nd dark area
	local GoTo06X = 74
	local GoTo06Y = 78
	local GoTo06M = CurMapName6


	        Talk( 1, "Hi, Plz Choose a Destination:" )
                --Text( 1, "Winter Island", JumpPage, 2 )
                Text( 1, "1st Aurora Area", JumpPage, 3 )
	        Text( 1, "2nd Aurora Area", JumpPage, 4 )
                Text( 1, "1st Dark Area", JumpPage, 5 )
                Text( 1, "2nd Dark Area", JumpPage, 6 )

	        InitTrigger()
	        TriggerAction( 2,  GoTo, GoTo01X, GoTo01Y, GoTo01M )
	        Talk( 2, "Winter Island?" )
	        Text( 2, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
                Text( 2, "I Have Changed My Mind", JumpPage, 1 )

	        InitTrigger()
	        TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	        Talk( 3, "1st Aurora Area?" )
                Text( 3, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	        Text( 3, "I Have Changed My Mind", JumpPage, 1 )


	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	Talk( 4, "2nd Aurora Area?" )
	Text( 4, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 4, "I Have Changed My Mind", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, "1st Dark Area" )
	Text( 5, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 5, "I Have Changed My Mind", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo5X, GoTo5Y, GoTo5M )
	Talk( 6, "1st Dark Area" )
	Text( 6, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 6, "I Have Changed My Mind", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	Talk( 8, "Thundoria Mirrage?" )
	Text( 8, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "I Have Changed My Mind", JumpPage, 1 )

end

----------------------------------------------------------WINTER ISLAND NPC----------------------------------------------
-----Blacksmith - Ben
----------------------
function d_talk1()

        Talk(1,"Ben: Hi, I sell all sorts of weapons! Take a look!")

	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Weapon(	4197	)
	Weapon(	4199	)
	Weapon(	4201	)
	Weapon(	4207	)
	Weapon(	4211	)
	Weapon(	4213	)
	Weapon(	4214	)
	Weapon(	4215	)
	Weapon(	4218	)




end

--------------------
------Grocer - Eddie
-------------------
function d_talk2()

        Talk(1,"Eddie: Hi, what can I do for you?")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )
	
	InitTrade()
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

	
end 
---------------------
-------Physician - Vegito
----------------------
function d_talk3()

        Talk(1,"Vegito: Hi! The herbs I have are all gathered by meself. Have a look!")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Other(	6203	)
	Other(	6204	)
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


end
---------------------
------Tailor Dar
---------------------
function d_talk4()

        Talk(1,"Dar: I am owner of this fashion shop. what can I do for you ?")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Defence(	4147	)
	Defence(	4149	)
	Defence(	4151	)
	Defence(	4153	)
	Defence(	4154	)
	Defence(	4157	)
	Defence(	4158	)
	Defence(	4161	)
	Defence(	4162	)
	Defence(	4165	)
	Defence(	4167	)
	Defence(	4169	)
	Defence(	4170	)
	Defence(	4173	)
	Defence(	4174	)
	Defence(	4177	)
	Defence(	4178	)
	Defence(	4181	)
	Defence(	4183	)
	Defence(	4185	)
	Defence(	4186	)
	Defence(	4189	)
	Defence(	4190	)
	Defence(	4193	)
	Defence(	4194	)
	-- Defence(	0396	)
	-- Defence(	0398	)
	-- Defence(	0400	)
	-- Defence(	0402	)
	-- Defence(	0404	)
	-- Defence(	0406	)
	-- Defence(	0408	)
	-- Defence(	0411	)
	-- Defence(	0413	)
	-- Defence(	0588	)
	-- Defence(	0590	)
	-- Defence(	0592	)
	-- Defence(	0594	)
	-- Defence(	0596	)
	-- Defence(	0598	)
	-- Defence(	0600	)
	-- Defence(	0602	)
	-- Defence(	0604	)
	-- Defence(	0748	)
	-- Defence(	0750	)
	-- Defence(	0752	)
	-- Defence(	0754	)
	-- Defence(	0756	)
	-- Defence(	0758	)
	-- Defence(	0760	)
	-- Defence(	0824	)
	-- Defence(	0830	)
	-- Defence(	2219	)
	-- Defence(	2221	)
	-- Defence(	2223	)

	
end
-------------------
--------Unknown
----------------------
function d_talk5()

        Talk(1,"Unknown Talk")
	Text( 1, "Unknown", JumpPage, 2)
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	Talk( 2, "Unknown Talk" )
	Text( 2, "Unknown", JumpPage, 3)
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1908 )
	TriggerCondition( 1, HasItem, 5828, 1 )
	TriggerAction( 1, TakeItem, 5828, 1 )
	TriggerAction( 1, GiveItem, 6294, 1, 4 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 3, "Unknown Talk" )
	Text( 3, "Unknown", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Unknown Talk" )


end



-------------------
--------Teleporter - Mary
--------------------

function d_talk6 ()
	Talk( 1, "Mary: Hi! I am the Teleporter! How may I help you?")
	Text( 1, "Trade", BuyPage)
	Text( 1, "Nothing...",CloseTalk )

	InitTrade()
	Other(4602)
	Other(4603)
	Other(4604)
	Other(6205)
	Other(3735)
	Other(3736)
	Other(3737)
	Other(3738)



end


-------------------
--------Harbor Operatro-Sunny
--------------------
function d_talk7()

        Talk(1,"Hi! I am the Harbor Operator for Winter Land. I am in charge of all ships that is docked in this harbor. Look for me if you want to set sail.")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 337,965, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair ship", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )

end



---------------------------------------------------2.0Missions----------------------------
--------Researcher Yee
-------------------
function d_talk8()

	Talk( 1, "Hello there. Have you gotten any item...Required one? Otherwise you won't get anything!")
	Text( 1, "Crusader Equipments", JumpPage, 2)
	Text( 1, "Champion Equipments", JumpPage, 3)
	Text( 1, "Voyager Equipments", JumpPage, 4)
	Text( 1, "Sharpshooter Equipments", JumpPage, 5)
	Text( 1, "Cleric Equipments", JumpPage, 6)
	Text( 1, "Sealmaster Equipments", JumpPage, 7)
	Text( 1, "Nothing...", CloseTalk)

	Talk( 2, "Chest requires Goddess Approachment, 25 Kal Runestone, 80 Pirate Gold and 70m while Sword requires Goddess Approachment, 20 Kal Runestone, 70 Pirate Gold and 50m!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,25 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,80 )
	TriggerCondition( 1, HasMoney, 70000000 )
	TriggerAction( 1, TakeItem, 3457,25 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,80 )
	TriggerAction( 1, TakeMoney, 70000000 )
	TriggerAction( 1, GiveItem, 3739, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Honor Chest!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,20 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,40 )
	TriggerCondition( 1, HasMoney, 50000000 )
	TriggerAction( 1, TakeItem, 3457,20 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,40 )
	TriggerAction( 1, TakeMoney, 50000000 )
	TriggerAction( 1, GiveItem, 3485, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Heaven Sword!", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 2, "Other Profession!", JumpPage, 1)

	Talk( 3, "Chest requires Goddess Approachment, 25 Kal Runestone, 80 Pirate Gold and 70m while Hammer requires Goddess Approachment, 20 Kal Runestone, 70 Pirate Gold and 50m!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,25 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,80 )
	TriggerCondition( 1, HasMoney, 70000000 )
	TriggerAction( 1, TakeItem, 3457,25 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,80 )
	TriggerAction( 1, TakeMoney, 70000000 )
	TriggerAction( 1, GiveItem, 3740, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Sacrifice Chest!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,20 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,40 )
	TriggerCondition( 1, HasMoney, 50000000 )
	TriggerAction( 1, TakeItem, 3457,20 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,40 )
	TriggerAction( 1, TakeMoney, 50000000 )
	TriggerAction( 1, GiveItem, 3490, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Stateliness Sword!", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "Other Profession!", JumpPage, 1)

	Talk( 4, "Chest requires Goddess Approachment, 25 Kal Runestone, 80 Pirate Gold and 70m while Dagger requires Goddess Approachment, 20 Kal Runestone, 70 Pirate Gold and 50m!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,25 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,80 )
	TriggerCondition( 1, HasMoney, 70000000 )
	TriggerAction( 1, TakeItem, 3457,25 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,80 )
	TriggerAction( 1, TakeMoney, 70000000 )
	TriggerAction( 1, GiveItem, 3742, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Justice Chest!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,20 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,40 )
	TriggerCondition( 1, HasMoney, 50000000 )
	TriggerAction( 1, TakeItem, 3457,20 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,40 )
	TriggerAction( 1, TakeMoney, 50000000 )
	TriggerAction( 1, GiveItem, 3489, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Quietness Knife!", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 4, "Other Profession!", JumpPage, 1)

	Talk( 5, "Chest requires Goddess Approachment, 25 Kal Runestone, 80 Pirate Gold and 70m while Bow or Gun requires Goddess Approachment, 20 Kal Runestone, 70 Pirate Gold and 50m!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,25 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,80 )
	TriggerCondition( 1, HasMoney, 70000000 )
	TriggerAction( 1, TakeItem, 3457,25 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,80 )
	TriggerAction( 1, TakeMoney, 70000000 )
	TriggerAction( 1, GiveItem, 3741, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Prowess Chest!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,20 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,40 )
	TriggerCondition( 1, HasMoney, 50000000 )
	TriggerAction( 1, TakeItem, 3457,20 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,40 )
	TriggerAction( 1, TakeMoney, 50000000 )
	TriggerAction( 1, GiveItem, 3487, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Punishment Bow!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,20 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,40 )
	TriggerCondition( 1, HasMoney, 50000000 )
	TriggerAction( 1, TakeItem, 3457,20 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,40 )
	TriggerAction( 1, TakeMoney, 50000000 )
	TriggerAction( 1, GiveItem, 3488, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Justice Gun!", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 5, "Other Profession!", JumpPage, 1)

	Talk( 6, "Chest requires Goddess Approachment, 25 Kal Runestone, 80 Pirate Gold and 70m while Staff requires Goddess Approachment, 20 Kal Runestone, 70 Pirate Gold and 50m!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,25 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,80 )
	TriggerCondition( 1, HasMoney, 70000000 )
	TriggerAction( 1, TakeItem, 3457,25 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,80 )
	TriggerAction( 1, TakeMoney, 70000000 )
	TriggerAction( 1, GiveItem, 3743, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Empathy Chest!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,20 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,40 )
	TriggerCondition( 1, HasMoney, 50000000 )
	TriggerAction( 1, TakeItem, 3457,20 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,40 )
	TriggerAction( 1, TakeMoney, 50000000 )
	TriggerAction( 1, GiveItem, 3492, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Life Staff!", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "Other Profession!", JumpPage, 1)

	Talk( 7, "Chest requires Goddess Approachment, 25 Kal Runestone, 80 Pirate Gold and 70m while Staff requires Goddess Approachment, 20 Kal Runestone, 70 Pirate Gold and 50m!")
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,25 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,80 )
	TriggerCondition( 1, HasMoney, 70000000 )
	TriggerAction( 1, TakeItem, 3457,25 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,80 )
	TriggerAction( 1, TakeMoney, 70000000 )
	TriggerAction( 1, GiveItem, 3744, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Inspiration Chest!", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457,20 )
	TriggerCondition( 1, HasItem, 3692,1 )
	TriggerCondition( 1, HasItem, 3734,40 )
	TriggerCondition( 1, HasMoney, 50000000 )
	TriggerAction( 1, TakeItem, 3457,20 )
	TriggerAction( 1, TakeItem, 3692,1 )
	TriggerAction( 1, TakeItem, 3734,40 )
	TriggerAction( 1, TakeMoney, 50000000 )
	TriggerAction( 1, GiveItem, 3491, 1, 1 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Sacrifice Staff!", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 7, "Other Profession!", JumpPage, 1)


	Talk( 8, "Don't play jokes with me if you don't possess the required items!")



end

-------------------
---Harbor Operator Luna
-------------------

function d_talk9()
      
       Talk(1,"Luna: Hi! I am the Harbor Operator for Winter Island. I am in charge of all ships that is docked in this harbor. Look for me if you want to set sail.")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 702,720, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry! I only repair ships docked in this harbor. Please pay 1000G." )
	Talk( 5, "Sorry, you need to dock your ship in our harbor in order to refuel. Please pay 200G" )
	Talk( 6, "Sorry! We only salvage ships docked in our harbor. You have to pay a fee of 1000G." )



end
-------------------
------Explorer - Winston
--------------------

function d_talk10()
      
       Talk(1,"Winston: My teacher likes adventures. Last time he ran into zombies while hanging a round outside Thundoria Castle and rorally freekend out.")


	AddNpcMission	(7974)
	AddNpcMission	(7975)
	AddNpcMission	(7976)

-----------2.0Missions-----------


end
-----------------
---Snow Cara Guardianyes
-------------------


function d_talk11()
      
       Talk(1,"Snow Cara Guardin: Hello, All I an a Guardian.")


end
------------------
---Unknown
-----------------


function d_talk12()
      
       Talk(1,"Unknown Talk")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 1043, 629, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Unknown Talk" )
	Talk( 4, "Unknown Talk" )
	Talk( 5, "Unknown Talk" )
	Talk( 6, "Unknown Talk" )




end
-------------------
--Explorer - Chris
----------------


function d_talk13()
      
       Talk(1,"What Are You Looking For?")

	AddNpcMission	(7977)
	AddNpcMission	(7978)
	AddNpcMission	(7979)
	AddNpcMission	(7980)


-----------2.0Missions-----------


end
---------------
--Unknown
---------------


function d_talk14()
      
       Talk(1,"Unknown Talk")



end
---------------
--Unknown
-------------------


function d_talk15()
      
       Talk(1,"Unknown Talk")

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 246,1185, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Unknown", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Unknown Talk" )
	Talk( 4, "Unknown Talk" )
	Talk( 5, "Unknown Talk" )
	Talk( 6, "Unknown Talk" )



end
--------------------
---North Ville
-------------------


function d_talk16()
      
	Talk(1,"Ville: Kara, why, why, why you do this to me? Haven't you forgotten our promise? You have no heart!")
	Text ( 1, "Teleport To Ice-Covered Island", JumpPage, 2)
	Text ( 1, "Teleport To Aurora Area", JumpPage, 3)
	Text ( 1, "Teleport To Dark Area", JumpPage, 4)
	Text ( 1, "Redeem Level 95 Weapon Seals Box", JumpPage, 5)
	Text ( 1, "Nothing, Im Just Looking Around",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1648 )
	TriggerAction( 1, GoTo, 1970,950, "winterland" )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "Are you ready to get teleported to Ice-Covered Island?")
	Text( 2, "Yes, Im Ready",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1664 )
	TriggerCondition( 1, goto_mj1_time )
	TriggerAction( 1, GoTo, 366,395, "mjing1")
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 3, "Are you ready to get teleported to Aurora Area?")
	Text( 3, "Yes, Im Ready",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1664 )
	TriggerCondition( 1, goto_mj2_time )
	TriggerAction( 1, mj3sjc )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 4, "Are you ready to get teleported to Dark Area?")
	Text( 4, "Yes, Im Ready",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "Unknown Talk" )
	Talk( 7, "Unknown Talk")
	Talk( 8, "Check if you have got enough empty inventory slots, complete your second rebirth or all quests in your quest log. remember you have only one chance to reclaim it." )

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasRecord, 1671 )
	TriggerCondition( 1, NoRecord, 1891 )
	TriggerAction( 1, GiveItem, 6251, 1, 4 )
	TriggerAction( 1, SetRecord, 1891 )
	TriggerCondition( 2, PfEqual, 9 )
	TriggerCondition( 2, HasRecord, 1671 )
	TriggerCondition( 2, NoRecord, 1891 )
	TriggerAction( 2, GiveItem, 6250, 1, 4 )
	TriggerAction( 2, SetRecord, 1891 )
	TriggerCondition( 3, PfEqual, 12 )
	TriggerCondition( 3, HasRecord, 1671 )
	TriggerCondition( 3, NoRecord, 1891 )
	TriggerAction( 3, GiveItem, 6252, 1, 4 )
	TriggerAction( 3, SetRecord, 1891 )
	TriggerCondition( 4, PfEqual, 13 )
	TriggerCondition( 4, HasRecord, 1671 )
	TriggerCondition( 4, NoRecord, 1891 )
	TriggerAction( 4, GiveItem, 6255, 1, 4 )
	TriggerAction( 4, SetRecord, 1891 )
	TriggerCondition( 5, PfEqual, 14 )
	TriggerCondition( 5, HasRecord, 1671 )
	TriggerCondition( 5, NoRecord, 1891 )
	TriggerAction( 5, GiveItem, 6254, 1, 4 )
	TriggerAction( 5, SetRecord, 1891 )
	TriggerCondition( 6, PfEqual, 16 )
	TriggerCondition( 6, HasRecord, 1671 )
	TriggerCondition( 6, NoRecord, 1891 )
	TriggerAction( 6, GiveItem, 6253, 1, 4 )
	TriggerAction( 6, SetRecord, 1891 )
	TriggerFailure( 6, JumpPage, 8 )
	Talk( 5, "If you complete the quest of Relic image, you will recive one level 95 weapon seal box" )
	Text( 5, "Confirm", MultiTrigger, GetMultiTrigger(), 6)


end


------------------
----Explorer - Lion
------------------


function d_talk17()
      
       Talk(1,"Lion: What are you doing here?")

	AddNpcMission	(7970)
	AddNpcMission	(7971)
	AddNpcMission	(7972)
	AddNpcMission	(7973)


end
----------------
----Explorer - Jill
------------------


function d_talk18()
      
       Talk(1,"Jill: What are you doing here?")

	AddNpcMission	(7967)
	AddNpcMission	(7968)
	AddNpcMission	(7969)





end
-----------------
--Unknown
-----------------


function d_talk19()
      
       Talk(1,"Unknown Talk")


end
------------------
--Ancient Relic rotector
--------------------


function d_talk20()
      
       Talk(1,"What are you doing here?")



end
-------------------
--Kara's Statue
------------------


function d_talk21()
      
       Talk(1,"I recomand you to leave...it's too dangerous!")

	AddNpcMission	(7981)
	AddNpcMission	(7982)
	AddNpcMission	(7983)
	AddNpcMission	(7984)



end
-------------------
--Ville's Statue
---------------------


function d_talk22()
      
       Talk(1,"Unknown Talk")


end
--------------------
---秋岛　维尔分身
--------------------


function d_talk23()
     -- Talk(1,"Nothing") 
	Talk(1,"维尔分身：你好，请问你找我有什么事吗？")
	Text ( 1, "前往冬岛", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1636 )
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 2583,3235, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "你准备好了去冬岛群岛了吗？")
	Text( 2, "准备好了", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "你现在还不能去冬岛群岛，那里对你太危险了；如果你觉得你实力足够的话，那么请你把船停靠在春岛或者夏岛，我好方便把你传到湖面上的传动点。" )



end
---------------------
--光明秘境第一境界　光明秘境守护者
-----------------------


function d_talk24()
      
       Talk(1,"光明秘境守护者：你好，我是光明秘境的守护者。")


end
--------------------
--Unknown
----------------------


function d_talk25()
      
       Talk(1,"Unknown Talk")

end
---------------------
--Unknown
----------------------


function d_talk26()
      
       Talk(1,"Unknown Talk")


end
-----------------------
--Unknown
-----------------------


function d_talk27()
      
       Talk(1,"Unknown Talk")



end

----------------Nurse - Tsukino
function d_talk28 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )
	
	Talk( 1, "Tsukino: Hello! I am Nurse Tsukino. Look for me if you are sick or injured!" )
	Text( 1, "Greater Heal", MultiTrigger,GetMultiTrigger(),2)
	 
	Talk( 2, "Gina: Sorry, healing requires 200G. You do not have enough.")



end

-----------------------
--Builder-Endymion
-----------------------

function d_talk29()
	
	Talk( 1, "Endymion: Yo! Want to get out to the sea? How can you do so without a good ship? I offer the best ship around here. Come have a look!" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Ships limit reached. Unable to build more ship" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Build Ship", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 34 )
	TriggerAction( 1, BoatLevelBerthList, 34 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Upgrade ship", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Endymion: What type of ships you wish to build? I have a few varieties. Please have a look." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerAction( 1, CreateBoat, 1, 34 )
	Text( 2, "Build Guppy", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerAction( 1, CreateBoat, 5, 34 )
	Text( 2, "Build Windseeker", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerAction( 1, CreateBoat, 6, 34 )
	Text( 2, "Build Swordfish", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerAction( 1, CreateBoat, 4, 34 )
	Text( 2, "Build Trutle", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerAction( 1, CreateBoat, 14, 34 )
	Text( 2, "Build Torrent", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerAction( 1, CreateBoat, 15, 34 )
	Text( 2, "Build Goddess", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Endymion: I guess your ship is not docked here. You need to dock here to upgrade the level when it has gained enough experience from sailing or killing monsters out in the sea." )


end

-----------------------
--暗黑秘境第二境界　神秘人·冬仔
-----------------------


function d_talk30()
      
       Talk(1,"冬仔：你没事找我干嘛，你太假了！")



end

function d_talk31()
      
       	Talk(1,"Winter Island...A mysterious place, still not discovered. How can I help you?")

	AddNpcMission(	7966)
	AddNpcMission(	7985)

	
end

function alex_tp2 ()

	local ReSelectTalk = "I need to reconsider"
	local ReSelectPage = 1

	--cancel talk
	local CancelSelectTalk = "Forget it, I will stay here"
	local CancelSelectPage = 2

	--maps
	local CurMapName1 = "winterland"
	local CurMapName2 = "mjing1"
	local CurMapName3 = "mjing2"
	local CurMapName4 = "mjing3"
	local CurMapName5 = "mjing4"


	--Winter
	local GoTo01X = 249
	local GoTo01Y = 866
	local GoTo01M = CurMapName1

	--1st aurora
	local GoTo02X = 175
	local GoTo02Y = 206
	local GoTo02M = CurMapName2

	--2nd aurora
	local GoTo03X = 134
	local GoTo03Y = 67
	local GoTo03M = CurMapName3

	--1st dark area
	local GoTo04X = 88
	local GoTo04Y = 87
	local GoTo04M = CurMapName4

	--2nd dark area
	local GoTo05X = 88
	local GoTo05Y = 87
	local GoTo05M = CurMapName5


	        Talk( 1, "Hi, Plz Choose a Destination:" )
--              Text( 1, "Winter Island", JumpPage, 2 )
                Text( 1, "1st Aurora Area", JumpPage, 3 )
	        Text( 1, "2nd Aurora Area", JumpPage, 4 )
--                Text( 1, "1st Dark Area", JumpPage, 5 )
--                Text( 1, "2nd Dark Area", JumpPage, 6 )

	        InitTrigger()
	        TriggerAction( 2,  GoTo, GoTo01X, GoTo01Y, GoTo01M )
	        Talk( 2, "Winter Island?" )
	        Text( 2, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
                Text( 2, "I Have Changed My Mind", JumpPage, 1 )

	        InitTrigger()
	        TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	        Talk( 3, "1st Aurora Area?" )
                Text( 3, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	        Text( 3, "I Have Changed My Mind", JumpPage, 1 )


	InitTrigger()
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	Talk( 4, "2nd Aurora Area?" )
	Text( 4, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 4, "I Have Changed My Mind", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	Talk( 5, "1st Dark Area" )
	Text( 5, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 5, "I Have Changed My Mind", JumpPage, 1 )

	InitTrigger()
	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	Talk( 6, "1st Dark Area" )
	Text( 6, "Teleport Me Now",MultiTrigger, GetMultiTrigger(), 2)
	Text( 6, "I Have Changed My Mind", JumpPage, 1 )

end

function unseal_45 ()
Talk( 1, "Hi, I sell Lv45 Unseals here, take a look." )
	Text( 1, "Buy Unseals", BuyPage)
InitTrade()
	Weapon(  0763	)
	Weapon(  0764	)
	Weapon(  0767	)
	Weapon(  0770	)
	Weapon(  0771	)
	Weapon(  0774	)
	Weapon(  0777  	)
	Weapon(  0778  	)
	Weapon(  0781  	) 
	Weapon(  0782  	)
	Weapon(  0785  	)
	Weapon(  0786  	)
	Weapon(  0789  	)
	Weapon(  0790  	)
	Weapon(  0793  	)
	Weapon(  0796  	)
	Weapon(  0799  	)
	Weapon(  0800  	)
	Weapon(  0803  	)
	Weapon(  0804  	)
	
end

function lbsetexchange () --LB set exchanger NPC in Argent City
Talk(1, "Hello, I can sell you my Language Barrier Items set for a fixed price of 20 Million Gold")
Text( 1, "I'm Intrested!", JumpPage, 2)
Text(1, "No Thanks", CloseTalk)

InitTrigger()
	TriggerCondition( 1, HasMoney, 20000000 )
	TriggerAction( 1, TakeMoney, 20000000 )
	TriggerAction( 1, GiveItem, 4974, 10,4 )
	TriggerAction( 1, GiveItem, 4976, 30,4 )
	TriggerAction( 1, GiveItem, 4938, 30,4 )
	TriggerAction( 1, GiveItem, 4957, 30,4 )

	Talk( 2, "I hope you have enough Gold.")
	Text( 2, "Exchange" ,MultiTrigger,GetMultiTrigger(),1)

end

  function maze_tele ()

	Talk( 1, "Maze Teleporter: Hi! I can teleport you to Fc,Ds,Dw,Dw2" )
	Text( 1, "fc", JumpPage, 2 )


	Talk( 2, "Fc......" )

	InitTrigger()
	TriggerAction( 1,  GoTo, 308, 312,abandonedcity )
	Text( 2, "Sure" , MultiTrigger, GetMultiTrigger (), 1 )
	Text( 2, "No, Back" , JumpPage, 1 )
	
	Text( 1, "ds", JumpPage, 3 )


	Talk( 2, "ds......" )

	InitTrigger()
	TriggerAction( 1,  GoTo,  55, 65,darkswamp )
	Text( 2, "Sure" , MultiTrigger, GetMultiTrigger (), 1 )
	Text( 2, "No, Back" , JumpPage, 1 )

	Text( 1, "dw", JumpPage, 4 )


	Talk( 2, "dw......" )

	InitTrigger()
	TriggerAction( 1,  GoTo,  36, 20,puzzleworld )
	Text( 2, "Sure" , MultiTrigger, GetMultiTrigger (), 1 )
	Text( 2, "No, Back" , JumpPage, 1 )

	Text( 1, "dw2", JumpPage, 5 )


	Talk( 2, "dw2......" )

	InitTrigger()
	TriggerAction( 1,  GoTo,   26, 23,puzzleworld2)
	Text( 2, "Sure" , MultiTrigger, GetMultiTrigger (), 1 )
	Text( 2, "No, Back" , JumpPage, 1 )

end

function r_talkMall ()

	Talk( 1, "Vitorian: Hi! I am Item Mall, Vitorian. I Just opened this store, i hope you enjoy. Remember to check all the 3 tabs!" )
	Text( 1, "Trade", BuyPage)
	Text( 1, "Exchange Unique Necklace Voucher", JumpPage, 2 )
	Text( 1, "Exchange Unique Ring Voucher", JumpPage, 3 )
	Text( 1, "Exchange Unique Coral Voucher", JumpPage, 4 )
	Text( 1, "Nothing...",  CloseTalk)

	Talk( 2, "Vitorian: To exchange the Unique Necklace Voucher, you need 30 Pink Pearls." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3363, 30 )
	TriggerAction( 1, TakeItem, 3363, 30 )
	TriggerAction( 1, GiveItem, 581, 1, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Exchange now", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Go back", JumpPage, 1 )

	Talk( 3, "Vitorian: To exchange the Unique Ring Voucher, you need 20 Black Pearls." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3362, 20 )
	TriggerAction( 1, TakeItem, 3362, 20 )
	TriggerAction( 1, GiveItem, 580, 1, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Exchange now", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "Go back", JumpPage, 1 )

	Talk( 4, "Vitorian: To exchange the Unique Coral Voucher, you need 15 Fish Spike." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 4537, 15 )
	TriggerAction( 1, TakeItem, 4537, 15 )
	TriggerAction( 1, GiveItem, 582, 1, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 4, "Exchange now", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "Go back", JumpPage, 1 )


	Talk( 5, "Vitorian: You don't have enought itens to exchange!" )
	Text( 5, "Go back", JumpPage, 1 )


	InitTrade()
	Weapon(	1087	)--Mao Wine
	Weapon(	1088	)--Dukan Wine
	Weapon(	1089	)--Ginseng Wine
	Weapon(	1024	)--Super Rechargeable Battery
	Weapon(	3844	)--Heaven's Berry
	Weapon(	1128	)--Mini Amplifier of Strive
	Weapon(	3094	)--Amplifier of Strive
	Weapon(	3095	)--Hi-Amplifier of Strive
	Weapon(	3845	)--Charmed Berry
	Weapon(	3096	)--Amplifier of Luck
	Weapon(	3097	)--Hi-Amplifier of Luck
	Weapon(	0849	)--Party EXP Fruit
	Weapon(	3105	)--Skating Potion
	Weapon(	3104	)--Elixir of Soul
	Weapon(	3102	)--Elixir of Bull
	Weapon(	3101	)--Elixir of Monkey
	Weapon(	3103	)--Elixir of Eagle
	Weapon(	3100	)--Elixir of Lion
	Weapon(	3342	)--Lantern
	Weapon(	3339	)--Acceleration Potion
	Weapon(	3046	)--Power Sail
	Weapon(	3099	)--SP Holy Water
	Weapon(	3047	)--Voodoo Puppet
	Weapon(	0852	)--Full Body Armor
	Weapon(	3106	)--Battleship Armor
	Weapon(	0851	)--Battle Array
	Weapon( 0850   	)--Weightless Potion
	Weapon(	3109	)
	Weapon(	3110	)
	Weapon(	3111	)
	Weapon(	3112	)
	Weapon( 3113    )
	Weapon(	2792	)--Flash Bomb Lv.5
	Weapon(	2795	)
	Weapon(	2796	)
	Weapon(	2797	)
	Weapon(	2798	)
	Weapon(	2799	)
	--Weapon(	2800	)--Evil Generator
	--Weapon(	2808	)--Carrion Bullet Lv.5
	--Weapon(	2802	)--Carrion Ball Lv.5
	--Weapon(	2803	)--Noise Polluter lv.5
	--Weapon( 2805  	)--Time Bomb
	Weapon(	2806	)
	Weapon(	2807	)
	Weapon(	2809	)
	Weapon(	2810	)
	Weapon( 2811    )
	Weapon(	2812	)
	Weapon(	2813	)
	Weapon( 2814   	)
	Weapon(	3300	)
	Weapon(	3301	)
	Weapon(	2326	)
	--Weapon(	3109	)--Vial of Str reset
	--Weapon(	3110	)
	--Weapon(	3111	)
	--Weapon(	3112	)
	--Weapon(	3113	)
	Weapon( 	)--Book Regain Ability 2216
	Weapon( 3098	)
	Weapon(	1028	)--Morph Runestone
	Other(	0141	)--Ebony Dragon Wings
	Other(	0906	)--Devil Wings
	Other(	0937	)--Angelic Wings
	Other(	0142	)--Rainbow Wings
	Other(	0905	)--Dragon Wings
	Other(	0904	)--Vampiric Wings
	Other(	0935	)--Elven Wings
	Other(	0936	)--Butterfly Wings
	Other(	3088	)--28 Slot Inventory
	Other(	3089	)--32 Slot Inventory
	Other(	3090	)--36 Slot Inventory
	Other(	3091	)--40 Slot Inventory
	Other(	3092	)--44 Slot Inventory
	Other(	3093	)--48 Slot Inventory
	Other(	0207	)--Gold Axe
	Other(	0208	)--Gold Pickaxe
	Other(	3908	)--Alloy Pickaxe
	Other(	3108	)--Gold Alloy Pickaxe
	Other(	3114	)--Sea Weed Killer
	Other(	3910	)--Super Candy Stick
	Other(	2625	)--Stone Catalyst
	Other(	2630	)--Food Catalyst 
	Other(	2634	)--Special Catalyst
	Other(	2635	)--Bone Catalyst
	Other(	2636	)--Plant Catalyst
	Other(	2637	)--Fur Catalyst
	Other(	2638	)--Liquid Catalyst
	Other(	2639	)--Wood Catalyst

end 


function ringseller_Azur()

	Talk( 1, "RingSeller Mars: I bring you great Rings from the BlackMarket!, Try to keep my location low please. I wouldnt like to get arrested.")
	Text( 1, "Purchase", BuyPage)
	
	InitTrade()
	Other(	0580	)--Unique Ring Voucher
	Other(	0581	)--Unique Neclace Voucher
	Other(	6915	)--Necklace of the Abyss Voucher
	Other(  7511	)--Lv. 75 XC Ring Voucher

--Str	
	--Other(	6638	)
	--Other(	6639	)
	--Other(	6640	)
	--Other(	6641	)
	--Other(	6642	)
--Con
	--Other(	6643	)
	--Other(	6644	)
	--Other(	6645	)
	--Other(	6646	)
	--Other(	6647	)-- edit 20 con 10 str
--Agi
	--Other(	6648	)
	--Other(	6649	)
	--Other(	6650	)
	--Other(	6651	)
	--Other(	6652	)--edit 20 Agi 10 Acc
--Spr
	--Other(	6653	)
	--Other(	6654	)
	--Other(	6655	)
	--Other(	6656	)
	--Other(	6657	)--Edit 20 Spr 10 Con
--ACC
	--Other(	6658	)
	--Other(	6659	)
	--Other(	6660	)
	--Other(	6661	)
	--Other(	6662	)--edit 20 Acc 10 con
	
end


function bsmith_d01()

        Talk(1,"Ben: Hi, I sell all sorts of weapons! Take a look!")

	Text( 1, "Trade", BuyPage )
	Text( 1, "Repair", OpenRepair )
	Text( 1, "Nothing, I am just looking around",CloseTalk )

	InitTrade()
	Weapon(	4197	)
	Weapon(	4199	)
	Weapon(	4201	)
	Weapon(	4207	)
	Weapon(	4211	)
	Weapon(	4213	)
	Weapon(	4214	)
	Weapon(	4215	)
	Weapon(	4218	)




end

function grocer_d01()

        Talk(1,"Jill: Hi, what can I do for you?")
	Text( 1, "Trade", BuyPage )
	Text( 1, "Nothing, I am just looking around",CloseTalk )
	
	InitTrade()
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

	
end 

--Cleaner
function npc_talk01()

	Talk( 1, "Cleaner: Hello! What a happy day to start a new life with the person you love!" )

end

--Monk - Lisa
function npc_talk02()

	Talk( 1, "Monk - Lisa: My name it's such artistic. Dont you think so?")

end

--Little Boy
function npc_talk03()

	Talk( 1, "Little Boy: Nobody wants to play with me. In moments like this I rather be emo.")

end

--Kidsnapper
function npc_talk04()

	Talk( 1, "Kidsnapper: To many children around, and there are not parents to care of them. This is going to be easy.")
	
end

--Luca Tony
function npc_talk05 ()

	Talk( 1, "Luca Tony: What the hell!! Means these pictures? Just wondering, What was Moliyo developer smoking when he designed this.")

end

--Richardson
function npc_talk06 ()

	Talk( 1, "Richardson: A happy couple! So cute... Now buy one of my products to celebrate!")
	Text( 1, "Trade", BuyPage)
	
	InitTrade()
	Other(	3343	)--Rose
	Other(	3344	)--Lovers Chocolate
	Other(	3345	)--Firecracker A
	Other(	3346	)--Firecracker B
	Other(	3347	)--Firecracker C
	Other(	3348	)--Firework A
	Other(	3349	)--Firework B
	Other(	3350	)--Firework C
	Other(	3351	)--Royal Salute A
	Other(	3352	)--Royal Salute B
	Other(	3353	)--Royal Salute C
	Other(	3354	)--Heart Shape I
	Other(	3355	)--Heart Shape LOVE
	Other(	3356	)--Heart Shape U
end

--Granny Mila
function npc_talk07()

	Talk( 1, "Granny Mila: Hello! I always pray here, and if you sit in the seat behind me, you will have bad luck for 3 days!")

end

--Monk - Eli
function npc_talk09()

	Talk( 1, "Monk - Eli: I am not able to give you the bless of God yet, but who cares?")

	InitTrigger()
	TriggerAction( 1, ReAll )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Bless me anyway!", MultiTrigger,GetMultiTrigger(),1)

end

 function el_talk15 () 
 	Talk( 1, "Priest: Nice to meet you. I am the marriage registration priest.")
	Text( 1, "I want to know the notice of the marriage", JumpPage, 2)
	Text( 1, "I want to register to marry.", JumpPage, 3)
	Text( 1, "Register later", CloseTalk)
	
	Talk( 2, "The notice: 1.The lovers must have Valentine's day Ring. 2. The lovers must be in a party. 3. Each one must bring 10 million cash or Marriage Copuon. 4. The lovers must have received and opened their Faerie Treasure Chest")
	Text( 2, "Ok, I understand I want to register now!", JumpPage, 1)
	Text( 2, "Let me think it over", CloseTalk)
	
	Talk( 3, "Priest: If you are ready, please press [Confirm]. After the registration, you will receive a marriage certificate. With this, you can ask Magician Chiatan to begin your wedding.")
	InitTrigger()                                        
	TriggerCondition(1, HasItem, 2521, 1)               ---------商城买的情人节戒指 
	TriggerCondition(1, ValentinesRingJudge)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, ValentinesRing)
	TriggerFailure(1, JumpPage, 4)
	Text( 3,"Confirm", MultiTrigger, GetMultiTrigger(), 1) 	
	Text( 3, "Let me think it over again", CloseTalk)
	
	Talk( 4, "Priest: Registration failed. Please make sure you have the Love Rings and enough money. Also make sure you are in a party and wearing the wedding outfits")
	Text( 4, "I want to view the notices again", JumpPage, 2)
	Text( 4, "Leave", CloseTalk)


	--AddNpcMission ( 6139 )
	--AddNpcMission ( 6161 )
	--AddNpcMission ( 6166 )
	
end