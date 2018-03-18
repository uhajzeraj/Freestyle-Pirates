--------------------------------------------------------------------------
--									--
--									--
--		NPCScript07.lua Created by knight.gong 2005.7.12.	--
--									--
--									--
--------------------------------------------------------------------------

function BT_NewUser001()

	Talk( 1, "Senna: Hi, I am the image consultant for Argent City. I am responsible for all newcomers and visitors. Look for me if there is something you do not understand." )
	Text( 1, "Star of Unity", JumpPage, 31 )
	Text( 1, "Regarding Argent City", JumpPage, 4 )
	Text( 1, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 1, "Regarding Monster Coordinates", JumpPage, 30 )
	Text( 1, "I have understood all",  CloseTalk)

	Talk( 4, "Argent City is a place for merchant to sell their products. Have a look around." )
	Text( 4, "Regarding Weapon Shop", JumpPage, 5 )
	Text( 4, "Regarding Armor Shop", JumpPage, 7 )
	Text( 4, "Regarding Item Shop", JumpPage, 8 )
	Text( 4, "Regarding Teleporter", JumpPage, 9 )
	Text( 4, "Regarding the Nurse", JumpPage, 10 )

	Talk( 5, "Argent City's Blacksmith Goldie deals in the sale of weapons. His weapons are of excellent quality. Go take a look. Blacksmith's shop is at Argent City's top left corner." )
	Text( 5, "Regarding other shops", JumpPage, 4 )
	Text( 5, "I have understood all",  CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "Armors made in Argent City are very durable. You can have a look at them at the top right corner of the city." )
	Text( 7, "Regarding other shops", JumpPage, 4 )
	Text( 7, "I have understood all",  CloseTalk )

	Talk( 8, "We have a lot of items here that are important to an Explorer. Check it out on the right side of the pond." )
	Text( 8, "Regarding other shops", JumpPage, 4 )
	Text( 8, "I have understood all",  CloseTalk )

	Talk( 9, "Teleporter can send you to any city in this land. They can also record the spawn point for you. She is beside the western gate." )
	Text( 9, "Regarding other shops", JumpPage, 4 )
	Text( 9, "I have understood all",  CloseTalk )

	Talk( 10, "The nurse is just slightly below the fountain. She is a gentle and caring lady that is well loved by all." )
	Text( 10, "Regarding other shops", JumpPage, 4 )
	Text( 10, "I have understood all", CloseTalk)

	
	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "Senna: Being a new player, you must understand the basic of each class and attributes. What you wish to know?" )
	Text( 11, "Regarding Classes", JumpPage, 12)
	Text( 11, "Regarding Attributes", JumpPage, 13)
	Text( 11, "I have understood all", JumpPage, 6 )
	--Text( 11, "Regarding Classes", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "Regarding Attributes", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Senna: There are 7 basic classes in this game. Each has its unique ways and serves a special purpose in the game. Which would you like to become?" )
	Text( 12, "Regarding Swordsman", JumpPage, 14 )
	Text( 12, "Regarding Hunter", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "Regarding Explorer", JumpPage, 17 )
	Text( 12, "Regarding Herbalist", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )
	Text( 12, "Understood. Let me check out others.", JumpPage, 11 )

	Talk( 13, "Senna: Each character will have 5 base attributes. Players can increase them accordingly to raise certain aspect of their ability. Each level will reward players with 1 stat point and 1 skill point. Beginner will have 5 stat points to distribute." )
	Text( 13, "Regarding Strength", JumpPage, 21 )
	Text( 13, "Regarding Agility", JumpPage, 22 )
	Text( 13, "Regarding Constitution", JumpPage, 23 )
	Text( 13, "Regarding Spirit", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "Regarding Accuracy", JumpPage, 26 )
	Text( 13, "Understood. Let me check out others.", JumpPage, 11 )

	Talk( 14, "Senna: Swordsman has the highest physical resistance in this game. Male character may choose to become one when they reach Lv 10. Look for Peter in Argent City to select the Swordsman class." )
	Text( 14, "Regarding other Classes", JumpPage, 12)
	Text( 14, "Regarding Attributes", JumpPage, 13)
	Text( 14, "I have understood all", JumpPage, 27)

	Talk( 15, "Senna: Hunters is the only long range class in this game. After further advancement, they can learn to use fireguns which have higher damage. Only Lance and Phyllis may become a Hunter. Players Lv 10 and above can look for Ray in Icicle to become a Hunter." )
	Text( 15, "Regarding other Classes", JumpPage, 12)
	Text( 15, "Regarding Attributes", JumpPage, 13)
	Text( 15, "I have understood all", JumpPage, 27)

	Talk( 16, "Senna: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "Regarding other Classes", JumpPage, 12)
	Text( 16, "Regarding Attributes", JumpPage, 13)
	Text( 16, "I have understood all", JumpPage, 27)
	
	Talk( 17, "Senna: Senna: Explorer are the best support class in the sea. Beside Carsise, all other 3 character can apply for this class. Players Lv 10 and above can talk to Little Daniel in Argent City to become an Explorer." )
	Text( 17, "Regarding other Classes", JumpPage, 12)
	Text( 17, "Regarding Attributes", JumpPage, 13)
	Text( 17, "I have understood all", JumpPage, 27)

	Talk( 18, "Resline: Herbalist are loyal followers of Goddess Kara. They possess mystical healing ability. Only Phyllis and Ami can select to become a Herbalist. Lv 10 players can look for High Priest - Gannon in Shaitan City to become a Herbalist." )
	Text( 18, "Regarding other Classes", JumpPage, 12)
	Text( 18, "Regarding Attributes", JumpPage, 13)
	Text( 18, "I have understood all", JumpPage, 27)

	Talk( 19, "Senna: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "Regarding other Classes", JumpPage, 12)
	Text( 19, "Regarding Attributes", JumpPage, 13)
	Text( 19, "I have understood all", JumpPage, 27)

	Talk( 20, "Senna: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "Regarding other Classes", JumpPage, 12)
	Text( 20, "Regarding Attributes", JumpPage, 13)
	Text( 20, "I have understood all", JumpPage, 27)

	Talk( 21, "Senna: Strength increases Melee Attack power" )
	Text( 21, "Enquire about other Attributes", JumpPage, 13)
	Text( 21, "Enquire about other Classes", JumpPage, 12)
	Text( 21, "I have understood all", JumpPage, 27)

	Talk( 22, "Senna: Agility increases Attack Speed and Dodge Rate" )
	Text( 22, "Enquire about other Attributes", JumpPage, 13)
	Text( 22, "Enquire about other Classes", JumpPage, 12)
	Text( 22, "I have understood all", JumpPage, 27)

	Talk( 23, "Senna: Constitution increases Max HP and Physical Resist" )
	Text( 23, "Enquire about other Attributes", JumpPage, 13)
	Text( 23, "Enquire about other Classes", JumpPage, 12)
	Text( 23, "I have understood all", JumpPage, 27)

	Talk( 24, "Senna: Spirit increases Max SP and certain skill effect" )
	Text( 24, "Enquire about other Attributes", JumpPage, 13)
	Text( 24, "Enquire about other Classes", JumpPage, 12)
	Text( 24, "I have understood all", JumpPage, 27)

	Talk( 25, "Senna: Luck increases Critical Rate and Combining Rate" )
	Text( 25, "Enquire about other Attributes", JumpPage, 13)
	Text( 25, "Enquire about other Classes", JumpPage, 12)
	Text( 25, "I have understood all", JumpPage, 27)

	Talk( 26, "Senna: Accuracy increases Hit Rate and Range Attack power" )
	Text( 26, "Enquire about other Attributes", JumpPage, 13)
	Text( 26, "Enquire about other Classes", JumpPage, 12)
	Text( 26, "I have understood all", JumpPage, 27)

	Talk( 27, "Senna: Ok, look for me again if you have something that you do not understand.")
	
	Talk( 28, "Well done, it looks like you now have a good grasp at basic combat and also a good idea on how item drops work. Since there is nothing much left to learn from me, why don't you go and look for my friends? If fighting is your cup of tea, seek out Marcusa. He's a patroller and is often seen patrolling about the outskirts of this city. He was last seen at (2085, 2742). Another person you may like to meet would be Ditto (2250, 2770), Argent City's famous physician. Lately, he has been looking for helpers to help him collect more ingredients for his medicine. If you are interested, you can look for him on the right side of the city fountain (2250, 2770)." )
	Text( 28, "Regarding Argent City", JumpPage, 4 )
	Text( 28, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 28, "I have understood all",  CloseTalk)

	Talk( 29, "Senna: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). Explorer look for Little Daniel at (2193, 2730). You can reach Argent or Shaitan by using the teleporter." )
	Text( 29, "I would like to ask about something", JumpPage, 4 )
	Text( 29, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 29, "I have understood all",  CloseTalk )

	Talk( 30, "Senna: To check the coordinates of monsters in game, all you have to do is look for a Drunkyard in Argent City Bar at (2222, 288). He can tell you the coordinates for a fee." )
	
	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 31, "Senna: Star of Unity is a mysterious accessory from another world. When you equip it, you might be able to activate the power of unity and something unexpected might happen. We are running a trial event \"Hoard Exchange\". All players below Lv 41 can redeem a Star of Unity to exchange for a suitable piece of equipment. Are you interested?" )
	Text( 31, "Redeem Star of Unity",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "Hoard Exchange",JumpPage, 32 )

	Talk( 32,"Thank you for using our products. If you have a \"Star of Unity\", you can redeem a Lv 50 weapon for your class. Interesting isn't it?")
	Text( 32, "Redeem class weapon", Transfer_TeamStar, 1)

	Talk( 6, "Senna: I'm sorry, you are not qualified to receive the prize" )

	--InitTrigger()
	---------------------俙模閉徹6撰俇傖徹阞假腔桵須捄褶�恄�
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 8 )
	--TriggerCondition( 1, HasRecord, 704)
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 701 )

end


function r_talk77 ()
	
	
        Talk( 1, "Angela: \"Hi, everyone calls me Angela. I will teach you the way of living in Icicle city. Enjoy all year round of winter! \"" )
	Text( 1, "Star of Unity", JumpPage, 31 )
	Text( 1, "I would like to ask about something", JumpPage, 4 )
	Text( 1, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 1, "Regarding Monsters Coordinates", JumpPage, 30 )
	Text( 1, "I have understood all", CloseTalk )
--	Text( 1, "I have understood all", CloseTalk )


	Talk( 4, "Just like what you have seen, Icicle City is a place covered in snow. To stay here in comfort, you must learn how to get the necessary items and equipments." )
	Text( 4, "Regarding Weapon Shop", JumpPage, 5 )
	Text( 4, "Regarding Armor Shop", JumpPage, 7 )
	Text( 4, "Regarding Item Shop", JumpPage, 8 )
	Text( 4, "Regarding Teleporter", JumpPage, 9 )
	Text( 4, "Regarding Healing", JumpPage, 10 )

	Talk( 5, "Walk south from here and turn right at the crossroad. From there, you should be able to see the Blacksmith. He sell all sort of weapons. See if you can find anything you like." )
	Text( 5, "Regarding other shops", JumpPage, 4 )
	Text( 5, "I have understood all", CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "To buy armors, look for the Tailor. He is a friendly and kind man. Find him at the bottom right corner of town." )
	Text( 7, "Regarding other shops", JumpPage, 4 )
	Text( 7, "I have understood all", CloseTalk )

	Talk( 8, "Buying items? The grocery is not far from here. It is at the western corner of this city. It will have all you need to start your adventure." )
	Text( 8, "Regarding other shops", JumpPage, 4 )
	Text( 8, "I have understood all", CloseTalk )

	Talk( 9, "Walk along the path and you will find a beautiful lady near the gate. She is the Teleporter who can send you to other cities. You can also record your Spawn point there." )
	Text( 9, "Regarding other shops", JumpPage, 4 )
	Text( 9, "I have understood all", CloseTalk )

	Talk( 10, "The nurse is the lady at the other side of the fountain. Remember to look for her when you are sick or injuired." )
	Text( 10, "Regarding other shops", JumpPage, 4 )
	Text( 10, "I have understood all", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "Angela: Being a new player, you should understand more about the different class and attributes. What you wish to know?" )
	Text( 11, "Regarding Classes", JumpPage, 12)
	Text( 11, "Regarding Attributes", JumpPage, 13)

	--Text( 11, "Regarding Classes", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "Regarding Attributes", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Angela: There are 7 basic classes in Tales of Pirates. Each have their unique attributes and roles. Which interests you most?" )
	Text( 12, "Regarding Swordsman", JumpPage, 14 )
	Text( 12, "Regarding Hunter", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "Regarding Explorer", JumpPage, 17 )
	Text( 12, "Regarding Herbalist", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )
	Text( 12, "Understood. Let me check out others.", JumpPage, 11 )

	Talk( 13, "Angela: Each character will have 5 base attributes. Players can increase them accordingly to raise certain aspect of their ability. Each level will reward players with 1 stat point and 1 skill point. Beginner will have 5 stat points to distribute." )
	Text( 13, "Regarding Strength", JumpPage, 21 )
	Text( 13, "Regarding Agility", JumpPage, 22 )
	Text( 13, "Regarding Constitution", JumpPage, 23 )
	Text( 13, "Regarding Spirit", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "Regarding Accuracy", JumpPage, 26 )
	Text( 13, "Understood. Let me check out others.", JumpPage, 11 )

	Talk( 14, "Angela: Swordsman is the highest physical defence Class in Pirate King. Male Newbies can look for Argent City's Guard Peter to become one when they reach Lv 10." )
	Text( 14, "Regarding other Classes", JumpPage, 12)
	Text( 14, "Regarding Attributes", JumpPage, 13)
	Text( 14, "I have understood all", JumpPage, 27)

	Talk( 15, "Angela: Hunter is the only long ranged attacking class in this game. In the second advancement, they can adopt using firegun to boost the attacking power. Only Lance and Phyllis may apply to be a Hunter. Players who are Lv 10 can look for Swordsman Ray in Icicle City to become one." )
	Text( 15, "Regarding other Classes", JumpPage, 12)
	Text( 15, "Regarding Attributes", JumpPage, 13)
	Text( 15, "I have understood all", JumpPage, 27)

	Talk( 16, "Angela: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "Regarding other Classes", JumpPage, 12)
	Text( 16, "Regarding Attributes", JumpPage, 13)
	Text( 16, "I have understood all", JumpPage, 27)
	
	Talk( 17, "Angela: Explorer is the strongest support Class on the sea. Everyone can become one except for Carsise. You can look for Little Daniel at Argent City to become one when you reach Lv10." )
	Text( 17, "Regarding other Classes", JumpPage, 12)
	Text( 17, "Regarding Attributes", JumpPage, 13)
	Text( 17, "I have understood all", JumpPage, 27)

	Talk( 18, "Angela: Herbalist are loyal followers of Goddess Kara. They possess mystical healing ability. Only Phyllis and Ami can select to become a Herbalist. Lv 10 players can look for High Priest - Gannon in Shaitan City to become a Herbalist." )
	Text( 18, "Regarding other Classes", JumpPage, 12)
	Text( 18, "Regarding Attributes", JumpPage, 13)
	Text( 18, "I have understood all", JumpPage, 27)

	Talk( 19, "Angela: Angela: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "Regarding other Classes", JumpPage, 12)
	Text( 19, "Regarding Attributes", JumpPage, 13)
	Text( 19, "I have understood all", JumpPage, 27)

	Talk( 20, "Angela: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "Regarding other Classes", JumpPage, 12)
	Text( 20, "Regarding Attributes", JumpPage, 13)
	Text( 20, "I have understood all", JumpPage, 27)

	Talk( 21, "Angela: Strength increases Melee Attack power" )
	Text( 21, "Enquire about other Attributes", JumpPage, 13)
	Text( 21, "Enquire about other Classes", JumpPage, 12)
	Text( 21, "I have understood all", JumpPage, 27)

	Talk( 22, "Angela: Agility increases Attack Speed and Dodge Rate" )
	Text( 22, "Enquire about other Attributes", JumpPage, 13)
	Text( 22, "Enquire about other Classes", JumpPage, 12)
	Text( 22, "I have understood all", JumpPage, 27)

	Talk( 23, "Angela: Constitution increases Max HP and Physical Resistance" )
	Text( 23, "Enquire about other Attributes", JumpPage, 13)
	Text( 23, "Enquire about other Classes", JumpPage, 12)
	Text( 23, "I have understood all", JumpPage, 27)

	Talk( 24, "Angela: Spirit increases Max SP and Skill effect" )
	Text( 24, "Enquire about other Attributes", JumpPage, 13)
	Text( 24, "Enquire about other Classes", JumpPage, 12)
	Text( 24, "I have understood all", JumpPage, 27)

	Talk( 25, "Angela: Luck increases Critical strike and Combine success rate" )
	Text( 25, "Enquire about other Attributes", JumpPage, 13)
	Text( 25, "Enquire about other Classes", JumpPage, 12)
	Text( 25, "I have understood all", JumpPage, 27)

	Talk( 26, "Angela: Accuracy increases Hit Rate and Range Attack power" )
	Text( 26, "Enquire about other Attributes", JumpPage, 13)
	Text( 26, "Enquire about other Classes", JumpPage, 12)
	Text( 26, "I have understood all", JumpPage, 27)

	Talk( 27, "Angela: Good. Look for me if there is anything you are unsure of!")

	Talk( 28, "Angela: Well done, it looks like you now have a good grasp at basic combat and also a good idea on how item drops work. Since there is nothing much left to learn from me, why don't you go and look for my friends? If fighting is your cup of tea, seek out Little Mo. He's a patroller and is often seen patrolling about the outskirts of this city. He was last seen at (1237, 613). Another person you may like to meet would be Physican - Daisha (1352, 499), he likes collecting all sorts of stuff. I'm sure you will like to meet them." )
	Text( 28, "I would like to ask about something", JumpPage, 4 )
	Text( 28, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 28, "I have understood all",  CloseTalk )

	Talk( 29, "Angela: Very good! Now it is time for you to select your class. To become a Swordsman, go to Peter in Argent City (2192, 2767), Herbalist go to Shaitan City look for High Priest - Gannon at (862, 3500), Hunter look for Swordsman - Ray in Icicle City at (1365, 570). The path is long…Choose well." )
	Text( 29, "I would like to ask about something", JumpPage, 4 )
	Text( 29, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 29, "I have understood all",  CloseTalk)

	Talk( 30, "Angela: To check the coordinates of monsters in game, all you have to do is look for a Drunkyard in Argent City Bar at (2222, 288). He can tell you the coordinates for a fee." )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "Angela: Star of Unity is a mysterious accessory from another world. When you equip it, you might be able to activate the power of unity and something unexpected might happen. We are running a trial event \"Hoard Exchange\". All players below Lv 41 can redeem a Star of Unity to exchange for a suitable piece of equipment. Are you interested?" )
	Text( 31, "Redeem Star of Unity",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "Hoard Exchange",JumpPage, 32 )

	Talk( 32, "Thank you for using our products. If you have a \"Star of Unity\", you can redeem a Lv 50 weapon for your class. Interesting isn't it?")
	Text( 32, "Redeem class weapon", Transfer_TeamStar, 1)

	Talk( 6, "Angela: Sorry, you do not meet the requirements to redeem." )

	--InitTrigger()
	---------------------玩家超過6級完成過瑟安的戰鬥訓練任務
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	--TriggerCondition( 1, HasRecord, 716 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	
	AddNpcMission ( 721 )


end 


function r_talk59 ()
	Talk( 1, "Resline: \"Hi, I am Resline. I love to chat and poke my nose into all troubles. Look for me if you have any troubles.\"" )
	Text( 1, "Star of Unity", JumpPage, 31 )
	Text( 1, "I would like to ask about something", JumpPage, 4 )
	Text( 1, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 1, "Check Monster Coordinate", JumpPage, 30 )

	Talk( 4, "Shaitan City focus on handicraft and arts of magic. Most of the best weapons are made here. Why don't you talk a walk around and see our magnificient city." )
	Text( 4, "Regarding Weapon Shop", JumpPage, 5 )
	Text( 4, "Regarding Armor Shop", JumpPage, 7 )
	Text( 4, "Regarding Item Shop", JumpPage, 8 )
	Text( 4, "Regarding Teleporter", JumpPage, 9 )
	Text( 4, "Not feeling well, need to go see a doctor", JumpPage, 10 )

	Talk( 5, "Shaitan Blacksmith Smithy sells all sorts of top quality weapon. Look for him at his shop at the right corner of the city." )
	Text( 5, "Regarding other shops", JumpPage, 4 )
	Text( 5, "I have understood all", CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "To buy armors for yourself, look for Tailor Moya. His prices are reasonable. Moya can be found just below the fountain on the right." )
	Text( 7, "Regarding other shops", JumpPage, 4 )
	Text( 7, "I have understood all", CloseTalk )

	Talk( 8, "Buying item? Tools seller Ouya is at the west corner of this city. Look for him there." )
	Text( 8, "Regarding other shops", JumpPage, 4 )
	Text( 8, "I have understood all",  CloseTalk )

	Talk( 9, "To get elsewhere, Shaitan Teleporter - May can teleports you to any main city in the world. She can also registered a new Spawn point for you here. Look for her near the entrance to this city." )
	Text( 9, "Regarding other shops", JumpPage, 4 )
	Text( 9, "I have understood all",  CloseTalk )

	Talk( 10, "Are you ill? The nurse is just beside the small pond. Go and look for her now!" )
	Text( 10, "Regarding other shops", JumpPage, 4 )
	Text( 10, "I have understood all",  CloseTalk)


	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 10 )
	TriggerAction( 1, SetFlag, 706, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "Resline: To be a good player, you will need to understand the basic of different classes and attributes. Would you like to find out more?" )
	Text( 11, "Regarding Classes", JumpPage, 12)
	Text( 11, "Regarding Attributes", JumpPage, 13)
	--Text( 11, "Regarding Classes", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 20 )
	TriggerAction( 1, SetFlag, 706, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "Regarding Attributes", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Resline: There are 7 basic classes in this game. Each has its unique ways and serve a special purpose in the game. Which would you like to become?" )
	Text( 12, "Regarding Swordsman", JumpPage, 14 )
	Text( 12, "Regarding Hunter", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "Regarding Explorer", JumpPage, 17 )
	Text( 12, "Regarding Herbalist", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )

	Talk( 13, "Resline: Each character will have 5 base attributes. Players can increase them accordingly to raise certain aspect of their ability. Each level will reward players with 1 stat point and 1 skill point. Beginner will have 5 stat points to distribute." )
	Text( 13, "Regarding Strength", JumpPage, 21 )
	Text( 13, "Regarding Agility", JumpPage, 22 )
	Text( 13, "Regarding Constitution", JumpPage, 23 )
	Text( 13, "Regarding Spirit", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "Regarding Accuracy", JumpPage, 26 )

	Talk( 14, "Resline: Swordsman has the highest physical resistance in this game. Male character may chose to become one when they reach Lv 10. Look for Peter in Argent City to select the Swordsman class." )
	Text( 14, "Regarding other Classes", JumpPage, 12)
	Text( 14, "Regarding Attributes", JumpPage, 13)
	Text( 14, "I have understood all", JumpPage, 27)

	Talk( 15, "Resline: Hunters is the only long range class in this game. After further advancement, they can learn to use fireguns which have higher damage. Only Lance and Phyllis may become a Hunter. Players Lv 10 and above can look for Ray in Icicle to become a Hunter." )
	Text( 15, "Regarding other Classes", JumpPage, 12)
	Text( 15, "Regarding Attributes", JumpPage, 13)
	Text( 15, "I have understood all", JumpPage, 27)

	Talk( 16, "Resline: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "Regarding other Classes", JumpPage, 12)
	Text( 16, "Regarding Attributes", JumpPage, 13)
	Text( 16, "I have understood all", JumpPage, 27)
	
	Talk( 17, "Resline: Explorers are the support class for sea battle. Beside Carsise, all other three characters can apply to become an Explorer. Players Lv 10 and above can look for Little Daniel in Argent City to an Explorer." )
	Text( 17, "Regarding other Classes", JumpPage, 12)
	Text( 17, "Regarding Attributes", JumpPage, 13)
	Text( 17, "I have understood all", JumpPage, 27)

	Talk( 18, "Resline: Herbalist are loyal followers of Goddess Kara. They possess mystical healing ability. Only Phyllis and Ami can select to become a Herbalist. Lv 10 players can look for High Priest - Gannon in Shaitan City to become a Herbalist." )
	Text( 18, "Regarding other Classes", JumpPage, 12)
	Text( 18, "Regarding Attributes", JumpPage, 13)
	Text( 18, "I have understood all", JumpPage, 27)

	Talk( 19, "Resline: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "Regarding other Classes", JumpPage, 12)
	Text( 19, "Regarding Attributes", JumpPage, 13)
	Text( 19, "I have understood all", JumpPage, 27)

	Talk( 20, "Resline: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "Regarding other Classes", JumpPage, 12)
	Text( 20, "Regarding Attributes", JumpPage, 13)
	Text( 20, "I have understood all", JumpPage, 27)

	Talk( 21, "Resline: Strength increases Melee Attack Power" )
	Text( 21, "Enquire about other Attributes", JumpPage, 13)
	Text( 21, "Enquire about other Classes", JumpPage, 12)
	Text( 21, "I have understood all", JumpPage, 27)

	Talk( 22, "Resline: Agility increases Attack Speed and Dodge Rate" )
	Text( 22, "Enquire about other Attributes", JumpPage, 13)
	Text( 22, "Enquire about other Classes", JumpPage, 12)
	Text( 22, "I have understood all", JumpPage, 27)

	Talk( 23, "Resline: Constitution increases Max HP and Physical Resist" )
	Text( 23, "Enquire about other Attributes", JumpPage, 13)
	Text( 23, "Enquire about other Classes", JumpPage, 12)
	Text( 23, "I have understood all", JumpPage, 27)

	Talk( 24, "Resline: Spirit increases Max SP and affect some skill effect" )
	Text( 24, "Enquire about other Attributes", JumpPage, 13)
	Text( 24, "Enquire about other Classes", JumpPage, 12)
	Text( 24, "I have understood all", JumpPage, 27)

	Talk( 25, "Resline:  Luck increases Critical Rate and Combining Success Rate" )
	Text( 25, "Enquire about other Attributes", JumpPage, 13)
	Text( 25, "Enquire about other Classes", JumpPage, 12)
	Text( 25, "I have understood all", JumpPage, 27)

	Talk( 26, "Resline: Accuracy increases Hit Rate and Range attack power" )
	Text( 26, "Enquire about other Attributes", JumpPage, 13)
	Text( 26, "Enquire about other Classes", JumpPage, 12)
	Text( 26, "I have understood all", JumpPage, 27)

	Talk( 27, "Resline: Good. Look for me again if you have any question!")

	Talk( 28, "Resline: Well done, it looks like you now have a good grasp at basic combat and also a good idea on how item drops work. Since there is nothing much left to learn from me, why don't you go and look for my friends? If fighting is your cup of tea, seek out Michael. He was last seen at (958, 3549). Another person you may like to meet would be Shala (903, 3646), Shaitan City's famous physician. Lately, she has been looking for helpers to help her collect more ingredients. If you are interested, you can look for her near the city fountain." )
	Text( 28, "I would like to ask about something", JumpPage, 4 )
	Text( 28, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 28, "I have understood all",  CloseTalk)

	Talk( 29, "Resline: Very well! You have progressed to Lv 9. You can choose your class at Lv 10. Go now to the related NPC to start your trial for the class you wish to become. Swordsman look for Peter in Argent City at (2192, 2767). Herbalist look for High Priest - Gannon in Shaitan City at (862, 3500). Hunter look for Swordsman - Ray in Icicle Castle at (1365, 570). You can reach Icicle or Argent by using the teleporter." )
	Text( 29, "I would like to ask about something", JumpPage, 4 )
	Text( 29, "Regarding Classes and Attributes", JumpPage, 11 )
	Text( 29, "I have understood all",  CloseTalk )

	Talk( 30, "Resline: To check the coordinates of monsters in game, all you have to do is look for a Drunkyard in Argent City Bar at (2222, 288). He can tell you the coordinates for a fee." )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )

	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "Resline: Star of Unity is a mysterious accessory from another world. When you equip it, you might be able to activate the power of unity and something unexpected might happen. We are running a trial event \"Hoard Exchange\". All players below Lv 41 can redeem a Star of Unity to exchange for a suitable piece of equipment. Are you interested?" )
	Text( 31, "Redeem Star of Unity",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "Hoard Exchange",JumpPage, 32 )

	Talk( 32, "Thank you for using our products. If you have a \"Star of Unity\", you can redeem a Lv 50 weapon for your class. Interesting isn't it?")
	Text( 32, "Redeem class weapon", Transfer_TeamStar, 1)

	Talk( 6, "Resline: Sorry, you do not meet the requirements to redeem." )
	
	--InitTrigger()
	---------------------玩家超過6級完成過瑟安的戰鬥訓練任務
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	---TriggerCondition( 1, HasRecord, 710 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )


	--Start( GetMultiTrigger(), 2 )

	AddNpcMission ( 711 )


end 



print( "Loading NPCScript07.lua" )