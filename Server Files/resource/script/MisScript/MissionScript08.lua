--------------------------------------------------------------------------
--									--
--									--
--		NPCScript08.lua Created by knight.gong 2005.7.12.	--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading MissionScript08.lua" )


DefineMission(7890, "The Rebirth I", 1580)

MisBeginTalk( "During the thousand of years people have fight each other for the legendary rebirth stone. Today it still exist. Fortunately I have located it...but, I need a plenty of items to get it.Would you help me? ") 


MisBeginCondition(NoMission, 1580)
MisBeginCondition(NoRecord, 1580)
MisBeginCondition( LvCheck, ">", 74)
MisBeginAction(AddMission, 1580)
MisBeginAction(AddTrigger, 15801, TE_GETITEM, 4787, 5 )
MisBeginAction(AddTrigger, 15802, TE_GETITEM, 163, 20 )
MisBeginAction(AddTrigger, 15803, TE_GETITEM, 4764, 20 )
MisBeginAction(AddTrigger, 15804, TE_GETITEM, 170, 10 )


MisNeed(MIS_NEED_DESP, "Help me collect the items from the beast in summer to be able to create the stone")
MisNeed(MIS_NEED_ITEM, 4787, 5, 10, 5)
MisNeed(MIS_NEED_ITEM, 163, 20, 20, 20)
MisNeed(MIS_NEED_ITEM, 4764, 20, 30, 20)
MisNeed(MIS_NEED_ITEM, 170, 10, 40, 10)


MisHelpTalk("Items are possesed by beasts in Summer Island and in Black Dragon Lair.Bring them to me and you will be rewarded!")
MisResultTalk("You have served me well...You shall recieve you reward now") 
MisResultCondition(HasMission, 1580) 
MisResultCondition(HasItem, 4787, 5)
MisResultCondition(HasItem, 163, 20)
MisResultCondition(HasItem, 4764, 20)
MisResultCondition(HasItem, 170, 10)
MisResultAction(TakeItem, 4787, 5)
MisResultAction(TakeItem, 163, 20)
MisResultAction(TakeItem, 4764, 20)
MisResultAction(TakeItem, 170, 10)
MisResultAction(GiveItem, 2235, 1, 1)
MisResultAction(ClearMission, 1580)
MisResultAction(SetRecord, 1580)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 4787 )
TriggerAction( 1, AddNextFlag, 1580, 10, 5 )
RegCurTrigger(15801)

InitTrigger()
TriggerCondition( 1, IsItem, 163 )
TriggerAction( 1, AddNextFlag, 1580, 20, 20 )
RegCurTrigger(15802)

InitTrigger()
TriggerCondition( 1, IsItem, 4764 )
TriggerAction( 1, AddNextFlag, 1580, 30, 20 )
RegCurTrigger(15803)

InitTrigger()
TriggerCondition( 1, IsItem, 170 )
TriggerAction( 1, AddNextFlag, 1580, 40, 10 )
RegCurTrigger(15804)

------------------------------------------------------------------------------------------------------



DefineMission(7891, "The Rebirth II", 1581)

MisBeginTalk( "Since you have found the first rebirth stone, I have continued my explorations. A few days ago, I have undrestood that there exists another rebirth stone or better say second rebirth stone. Finding of this stone wont be easySo...would you help me? ") 


MisBeginCondition(NoMission, 1581)
MisBeginCondition(HasRecord, 1580)
MisBeginCondition(NoRecord, 1581)
MisBeginCondition( LvCheck, ">", 74)
MisBeginAction(AddMission, 1581)
MisBeginAction(AddTrigger, 15811, TE_KILL, 74, 2 )
MisBeginAction(AddTrigger, 15812, TE_KILL, 764, 20 )
MisBeginAction(AddTrigger, 15813, TE_KILL, 765, 20 )
MisBeginAction(AddTrigger, 15814, TE_KILL, 766, 20 )
MisBeginAction(AddTrigger, 15815, TE_KILL, 788, 3 )




MisNeed(MIS_NEED_DESP, "In order to get it...you shall defeat the protectors of the stone!")
MisNeed(MIS_NEED_KILL, 74, 2, 10, 2)
MisNeed(MIS_NEED_KILL, 764, 20, 20, 20)
MisNeed(MIS_NEED_KILL, 765, 20, 30, 20)
MisNeed(MIS_NEED_KILL, 766, 20, 40, 20)
MisNeed(MIS_NEED_KILL, 788, 3, 50, 30)



MisHelpTalk("To be more clear, bosses of the diffrent places posses the stone's pieces. Hunt them down!")
MisResultTalk("The pieces are all together...the stone shall remain yours!") 
MisResultCondition(HasMission, 1581) 
MisResultCondition(HasFlag, 1581, 10)
MisResultCondition(HasFlag, 1581, 20)
MisResultCondition(HasFlag, 1581, 30)
MisResultCondition(HasFlag, 1581, 40)
MisResultCondition(HasFlag, 1581, 50)
MisResultAction(GiveItem, 5765, 1, 1)
MisResultAction(ClearMission, 1581)
MisResultAction(SetRecord, 1581)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsMonster, 74 )
TriggerAction( 1, AddNextFlag, 1581, 10, 2 )
RegCurTrigger(15811)

InitTrigger()
TriggerCondition( 1, IsMonster, 764 )
TriggerAction( 1, AddNextFlag, 1581, 20, 20 )
RegCurTrigger(15812)

InitTrigger()
TriggerCondition( 1, IsMonster, 765 )
TriggerAction( 1, AddNextFlag, 1581, 30, 20 )
RegCurTrigger(15813)

InitTrigger()
TriggerCondition( 1, IsMonster, 766 )
TriggerAction( 1, AddNextFlag, 1581, 40, 20 )
RegCurTrigger(15814)

InitTrigger()
TriggerCondition( 1, IsMonster, 788 )
TriggerAction( 1, AddNextFlag, 1581, 50, 3 )
RegCurTrigger(15815)


---------------------------------------------------------------------------------------------------------


DefineMission(7892, "The Rebirth III(1)", 1582)

MisBeginTalk( "Great news my friend.Seems that the second rebirth stone is not the last.There exist the third rebirth stone.The bad part is that it's beed broken in 3 pieces.Pieces are guarded by strong monsters.So...what do you think?") 


MisBeginCondition(NoMission, 1582)
MisBeginCondition(HasRecord, 1581)
MisBeginCondition(NoRecord, 1582)
MisBeginCondition( LvCheck, ">", 74)
MisBeginAction(AddMission, 1582)
MisBeginAction(AddTrigger, 15821, TE_KILL, 678, 1 )
MisBeginAction(AddTrigger, 15822, TE_KILL, 679, 1 )
MisBeginAction(AddTrigger, 15823, TE_KILL, 1305, 1 )
MisCancelAction(ClearMission, 1582)


MisNeed(MIS_NEED_DESP, "My dear friend. You'll have to work in mazes for a bit. The pieces are located there!")
MisNeed(MIS_NEED_KILL, 678, 1, 10, 1)
MisNeed(MIS_NEED_KILL, 679, 1, 20, 1)
MisNeed(MIS_NEED_KILL, 1305, 1, 30, 1)


MisHelpTalk("Pieces can be found by killing the bosses in Forsaken City, Dark Swamp and Demonic World 1!")
MisResultTalk("Dont be happy so fast. We still haven't finished. Do you think that we'll have to get the pieces together? ") 
MisResultCondition(HasMission, 1582) 
MisResultCondition(HasFlag, 1582, 10)
MisResultCondition(HasFlag, 1582, 20)
MisResultCondition(HasFlag, 1582, 30)
MisResultAction(GiveItem, 3695, 1, 1)
MisResultAction(GiveItem, 3696, 1, 1)
MisResultAction(GiveItem, 3697, 1, 1)
MisResultAction(ClearMission, 1582)
MisResultAction(SetRecord, 1582)
MisResultBagNeed(3)

InitTrigger()
TriggerCondition( 1, IsMonster, 678 )
TriggerAction( 1, AddNextFlag, 1582, 10, 1 )
RegCurTrigger(15821)

InitTrigger()
TriggerCondition( 1, IsMonster, 679 )
TriggerAction( 1, AddNextFlag, 1582, 20, 1 )
RegCurTrigger(15822)

InitTrigger()
TriggerCondition( 1, IsMonster, 1305 )
TriggerAction( 1, AddNextFlag, 1582, 30, 1 )
RegCurTrigger(15823)

--------------------------------------------------------------------------------------------------------------

DefineMission(7893, "The Rebirth III(2)", 1583)

MisBeginTalk( "Now that you got the parts, the last thing is to get the magical glue which gets the pieces together.It's owned by a strong beast. You're almost at the end now...so you wont quit now right?") 


MisBeginCondition(NoMission, 1583)
MisBeginCondition(HasRecord, 1582)
MisBeginCondition(NoRecord, 1583)
MisBeginCondition( LvCheck, ">", 74)
MisBeginAction(AddMission, 1583)
MisBeginAction(AddTrigger, 15831, TE_KILL, 789, 1 )



MisNeed(MIS_NEED_DESP, "Get ready my friend. You're going to meet the Black Dragon!")
MisNeed(MIS_NEED_KILL, 789, 1, 10, 1)



MisHelpTalk("Black Dragon is located at Black Dragon Lair2. What are you waiting for?")
MisResultTalk("Great job, my fried. But...as you know I can't get the pieces together! ") 
MisResultCondition(HasMission, 1583) 
MisResultCondition(HasFlag, 1583, 10)
MisResultAction(GiveItem, 3706, 1, 1)
MisResultAction(ClearMission, 1583)
MisResultAction(SetRecord, 1583)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsMonster, 789 )
TriggerAction( 1, AddNextFlag, 1583, 10, 1 )
RegCurTrigger(15831)


------------------------------------------------------------------------------------------------------------

DefineMission(7894, "The Rebirth III(3)", 1584)

MisBeginTalk( "I never thought that I would have the honor to get together the pieces of the last rebirth stone!") 

MisBeginCondition(NoMission, 1584)
MisBeginCondition(HasRecord, 1583)
MisBeginCondition(NoRecord, 1584)
MisBeginCondition( LvCheck, ">", 74)
MisBeginAction(AddMission, 1584)
MisBeginAction(AddTrigger, 15841, TE_GETITEM, 4543, 10 )



MisNeed(MIS_NEED_DESP, "Bring me 10 woods so I may be able to do get the pieces together!")
MisNeed(MIS_NEED_ITEM, 4543, 10, 10, 10)



MisHelpTalk("Wood can be found at the forests. Just keep your eyes open!")
MisResultTalk("You finished what others couldn't. One thousand times Congratulations! ") 
MisResultCondition(HasMission, 1584) 
MisResultCondition(HasItem, 3695, 1)
MisResultCondition(HasItem, 3696, 1)
MisResultCondition(HasItem, 3697, 1)
MisResultCondition(HasItem, 3706, 1)
MisResultCondition(HasItem, 4543, 10)
MisResultAction(TakeItem, 3695, 1)
MisResultAction(TakeItem, 3696, 1)
MisResultAction(TakeItem, 3697, 1)
MisResultAction(TakeItem, 3706, 1)
MisResultAction(TakeItem, 4543, 10)
MisResultAction(GiveItem, 6204, 1, 1)
MisResultAction(ClearMission, 1584)
MisResultAction(SetRecord, 1584)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 3695 )
TriggerAction( 1, AddNextFlag, 1584, 10, 1 )
RegCurTrigger(15841)


InitTrigger()
TriggerCondition( 1, IsItem, 3696 )
TriggerAction( 1, AddNextFlag, 1584, 20, 1 )
RegCurTrigger(15842)


InitTrigger()
TriggerCondition( 1, IsItem, 3697 )
TriggerAction( 1, AddNextFlag, 1584, 30, 1 )
RegCurTrigger(15843)


InitTrigger()
TriggerCondition( 1, IsItem, 3706 )
TriggerAction( 1, AddNextFlag, 1584, 40, 1 )
RegCurTrigger(15844)


InitTrigger()
TriggerCondition( 1, IsItem, 4543 )
TriggerAction( 1, AddNextFlag, 1584, 50, 10 )
RegCurTrigger(15845)


-------------------------------------------------------------------------------------------------------------

DefineMission(7895, "Start of The Journey", 1585)

MisBeginTalk( "Welcome. You're about entering a world fulled with dangerous monsters and priceless treasures. Since you are new you'll have to do everything from start. Do you agree?") 

MisBeginCondition(NoMission, 1585)
MisBeginCondition(NoRecord, 1585)
MisBeginAction(AddMission, 1585)
MisBeginAction(AddTrigger, 15851, TE_GETITEM, 3116, 10 )
MisCancelAction(ClearMission, 1585)

MisNeed(MIS_NEED_ITEM, 3116, 10, 10, 10)

MisHelpTalk("Elven fruits are dropped by shrubs. Go now!")
MisResultTalk("Great job for a newbie. Here's your reward! ") 
MisResultCondition(NoRecord, 1585)
MisResultCondition(HasMission, 1585) 
MisResultCondition(HasItem, 3116, 10)
MisResultAction(TakeItem, 3116, 10)
MisResultAction(AddMoney, 50000)
MisResultAction(ClearMission, 1585)
MisResultAction(SetRecord, 1585)

InitTrigger()
TriggerCondition( 1, IsItem, 3116 )
TriggerAction( 1, AddNextFlag, 1585, 10, 10 )
RegCurTrigger(15851)


----------------------------------------------------------------------------------------------------------------


DefineMission(7896, "Guide's Apperentice", 1586)

MisBeginTalk( "The first mission was just a warm up. Are you ready for a tougher one?") 


MisBeginCondition(NoMission, 1586)
MisBeginCondition(HasRecord, 1585)
MisBeginCondition(NoRecord, 1586)
MisBeginAction(AddMission, 1586)
MisBeginAction(AddTrigger, 15861, TE_KILL, 206, 10 )
MisBeginAction(AddTrigger, 15862, TE_KILL, 125, 10 )
MisBeginAction(AddTrigger, 15863, TE_KILL, 126, 10 )
MisCancelAction(ClearMission, 1586)

MisNeed(MIS_NEED_DESP, "Hunt the animals cause they're causing many damages in our lands.")
MisNeed(MIS_NEED_KILL, 206, 10, 10, 10)
MisNeed(MIS_NEED_KILL, 125, 10, 20, 10)
MisNeed(MIS_NEED_KILL, 126, 10, 30, 10)


MisHelpTalk("You'll be able to find the animals in west of Argent City.")
MisResultTalk("Nice job. Much faster than I thought!") 
MisResultCondition(HasMission, 1586) 
MisResultCondition(HasFlag, 1586, 19)
MisResultCondition(HasFlag, 1586, 29)
MisResultCondition(HasFlag, 1586, 39)
MisResultAction(AddMoney, 100000)
MisResultAction(ClearMission, 1586)
MisResultAction(SetRecord, 1586)


InitTrigger()
TriggerCondition( 1, IsMonster, 206 )
TriggerAction( 1, AddNextFlag, 1586, 10, 10 )
RegCurTrigger(15861)

InitTrigger()
TriggerCondition( 1, IsMonster, 125 )
TriggerAction( 1, AddNextFlag, 1586, 20, 10 )
RegCurTrigger(15862)

InitTrigger()
TriggerCondition( 1, IsMonster, 126 )
TriggerAction( 1, AddNextFlag, 1586, 30, 10 )
RegCurTrigger(15863)




------------------------------------------------------------------------------------------------------------


DefineMission(7897, "First Boss", 1587)

MisBeginTalk( "Are you ready to hunt the first boss?") 


MisBeginCondition(NoMission, 1587)
MisBeginCondition(HasRecord, 1586)
MisBeginCondition(NoRecord, 1587)
MisBeginAction(AddMission, 1587)
MisBeginAction(AddTrigger, 15871, TE_KILL, 229, 1 )
MisCancelAction(ClearMission, 1587)

MisNeed(MIS_NEED_DESP, "This boss is scaring our tourists that come for summer holidays. In fact, here is always summer!")
MisNeed(MIS_NEED_KILL, 229, 1, 10, 1)



MisHelpTalk("The conch king is located at the west of north beach of Argent City!")
MisResultTalk("Really nice job, Animal Tamer...if i may say so!") 
MisResultCondition(HasMission, 1587) 
MisResultCondition(HasFlag, 1587, 10)
MisResultAction(AddMoney, 150000)
MisResultAction(GiveItem, 679, 1, 1)
MisResultAction(ClearMission, 1587)
MisResultAction(SetRecord, 1587)
MisResultBagNeed(1)


InitTrigger()
TriggerCondition( 1, IsMonster, 229 )
TriggerAction( 1, AddNextFlag, 1587, 10, 1 )
RegCurTrigger(15871)


------------------------------------------------------------------------------------------------------------


	DefineMission(7898, "Mine Investigation", 1588)

	MisBeginTalk( "I have recieved some informations that in Silver Mine the monsters are causing a real chaos. Since you were sucessful in your quests, you should be able to help them. So...what do you say?") 
	MisBeginCondition(NoMission, 1588)
	MisBeginCondition(HasRecord, 1587)
	MisBeginCondition(NoRecord, 1588)
	MisBeginAction(AddMission, 1588)
	MisCancelAction(ClearMission, 1588)

	MisNeed(MIS_NEED_DESP, "The mine is in the back of the hill which is located in west of Argent City.")

	MisHelpTalk("Talk to Security-Kal in Mine Heaven. He will inform you for the further missions!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7899, "Mine Investigation", 1588, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Huh...you camed at last. You should be the hunter which Job Agency sent, aren't you?") 
	MisResultCondition(NoRecord, 1588)
	MisResultCondition(HasMission, 1588) 
	MisResultAction(AddMoney, 50000)
	MisResultAction(ClearMission, 1588)
	MisResultAction(SetRecord, 1588)


-------------------------------------------------------------------------------------------------------------


	DefineMission(7900, "Swep Away", 1589)

	MisBeginTalk( "Inside this mine we're having trouble to continue our work. Will you have the kindness to help us?") 


	MisBeginCondition(NoMission, 1589)
	MisBeginCondition(HasRecord, 1588)
	MisBeginCondition(NoRecord, 1589)
	MisBeginAction(AddMission, 1589)
	MisBeginAction(AddTrigger, 15891, TE_KILL, 253, 20 )
	MisBeginAction(AddTrigger, 15892, TE_KILL, 88, 20 )
	MisBeginAction(AddTrigger, 15893, TE_KILL, 82, 20 )
	MisBeginAction(AddTrigger, 15894, TE_KILL, 243, 20 )
	MisBeginAction(AddTrigger, 15895, TE_KILL, 37, 20 )
	MisCancelAction(ClearMission, 1589)

	MisNeed(MIS_NEED_DESP, "This boss is scaring our tourists that come for summer holidays. In fact, here is always summer!")
	MisNeed(MIS_NEED_KILL, 253, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 88, 20, 20, 20)
	MisNeed(MIS_NEED_KILL, 82, 20, 30, 20)
	MisNeed(MIS_NEED_KILL, 243, 20, 40, 20)
	MisNeed(MIS_NEED_KILL, 37, 20, 50, 20)


	MisHelpTalk("The conch king is located at the west of north beach of Argent City!")
	MisResultTalk("Really nice job, Animal Tamer...if i may say so!") 
	MisResultCondition(HasMission, 1589) 
	MisResultCondition(HasFlag, 1589, 19)
	MisResultCondition(HasFlag, 1589, 29)
	MisResultCondition(HasFlag, 1589, 39)
	MisResultCondition(HasFlag, 1589, 49)
	MisResultCondition(HasFlag, 1589, 59)
	MisResultAction(AddMoney, 500000)
	MisResultAction(GiveItem, 2312, 99, 1)
	MisResultAction(ClearMission, 1589)
	MisResultAction(SetRecord, 1589)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 253 )
	TriggerAction( 1, AddNextFlag, 1589, 10, 20 )
	RegCurTrigger(15891)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 88 )
	TriggerAction( 1, AddNextFlag, 1589, 20, 20 )
	RegCurTrigger(15892)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 82 )
	TriggerAction( 1, AddNextFlag, 1589, 30, 20 )
	RegCurTrigger(15893)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 243 )
	TriggerAction( 1, AddNextFlag, 1589, 40, 20 )
	RegCurTrigger(15894)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 37 )
	TriggerAction( 1, AddNextFlag, 1589, 50, 20 )
	RegCurTrigger(15895)


-------------------------------------------------------------------------------------------------------------


DefineMission(7901, "Another Boss", 1590)

MisBeginTalk( "We are having trouble with the carbs.The rails that we order for our ores aren't coming because of them. If you take down their leader, we should be able to get the rails to their place!") 

MisBeginCondition(NoMission, 1590)
MisBeginCondition(HasRecord, 1589)
MisBeginCondition(NoRecord, 1590)
MisBeginAction(AddMission, 1590)
MisBeginAction(AddTrigger, 15901, TE_KILL, 274, 1 )
MisCancelAction(ClearMission, 1590)

MisNeed(MIS_NEED_DESP, "The leader of crabs is Armored King Crab. Do as I said before!")
MisNeed(MIS_NEED_KILL, 274, 1, 10, 1)



MisHelpTalk("We have informations that he is located in 1467,2497. Go take him down!")
MisResultTalk("Thanks alot. Your help will always be remembered!") 
MisResultCondition(HasMission, 1590) 
MisResultCondition(HasFlag, 1590, 10)
MisResultAction(AddMoney, 500000)
MisResultAction(ClearMission, 1590)
MisResultAction(SetRecord, 1590)
MisResultAction(AddExp, 116688304, 116688304 )



InitTrigger()
TriggerCondition( 1, IsMonster, 274 )
TriggerAction( 1, AddNextFlag, 1590, 10, 1 )
RegCurTrigger(15901)


----------------------------------------------------------------------------------------------------------------



	DefineMission(7902, "Work Reporting", 1591)

	MisBeginTalk( "There's nothing left to do here right now.You can report your great job in Job Agency!") 
	MisBeginCondition(NoMission, 1591)
	MisBeginCondition(HasRecord, 1590)
	MisBeginCondition(NoRecord, 1591)
	MisBeginAction(AddMission, 1591)
	MisCancelAction(ClearMission, 1591)

	MisNeed(MIS_NEED_DESP, "You shall get back now before it gets too dark!")

	MisHelpTalk("Go to Job Agency in Argent City and report you job back!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7903, "Work Reporting", 1591, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Don't tell me...you were sucessful there, weren't you?") 
	MisResultCondition(NoRecord, 1591)
	MisResultCondition(HasMission, 1591) 
	MisResultAction(AddMoney, 300000)
	MisResultAction(GiveItem, 3877, 2, 1)
	MisResultAction(ClearMission, 1591)
	MisResultAction(SetRecord, 1591)
	MisResultBagNeed(1)

-----------------------------------------------------------------------------------------------------------------



	DefineMission(7904, "Watching the Canary", 1592)

	MisBeginTalk( "We had an request from somebody in Canary Isle for eleminating the pirates there. So...I though that you should complete that quest!") 
	MisBeginCondition(NoMission, 1592)
	MisBeginCondition(HasRecord, 1591)
	MisBeginCondition(NoRecord, 1592)
	MisBeginAction(AddMission, 1592)
	MisCancelAction(ClearMission, 1592)

	MisNeed(MIS_NEED_DESP, "Talk to Captain Jack(1672,3777) in Canary Isle for further informations!")

	MisHelpTalk("In Canary Isle must be someone to inform you more!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7905, "Watching the Canary", 1592, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("At last. You must be from Job Agency in Argent City!") 
	MisResultCondition(NoRecord, 1592)
	MisResultCondition(HasMission, 1592) 
	MisResultAction(AddMoney, 100000)
	MisResultAction(ClearMission, 1592)
	MisResultAction(SetRecord, 1592)

-----------------------------------------------------------------------------------------------------------------



	DefineMission(7906, "Pirates Eliminating", 1593)

	MisBeginTalk( "The Jack's Pirates are terrorising our island. If you can defeat them we will be free!") 


	MisBeginCondition(NoMission, 1593)
	MisBeginCondition(HasRecord, 1592)
	MisBeginCondition(NoRecord, 1593)
	MisBeginAction(AddMission, 1593)
	MisBeginAction(AddTrigger, 15931, TE_KILL, 145, 20 )
	MisBeginAction(AddTrigger, 15932, TE_KILL, 146, 20 )
	MisBeginAction(AddTrigger, 15933, TE_KILL, 291, 20 )
	MisCancelAction(ClearMission, 1593)

	MisNeed(MIS_NEED_DESP, "Here are 3 kind of pirates, hunt most of them and come back to me then.")
	MisNeed(MIS_NEED_KILL, 145, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 146, 20, 20, 20)
	MisNeed(MIS_NEED_KILL, 291, 20, 30, 20)


	MisHelpTalk("Defeat 20 kind of each Jack the Pirate's and then we shall see what to do!")
	MisResultTalk("Good job. I realized what to do next.") 
	MisResultCondition(HasMission, 1593) 
	MisResultCondition(HasFlag, 1593, 19)
	MisResultCondition(HasFlag, 1593, 29)
	MisResultCondition(HasFlag, 1593, 39)
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1593)
	MisResultAction(SetRecord, 1593)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 1593, 10, 20 )
	RegCurTrigger(15931)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 1593, 20, 20 )
	RegCurTrigger(15932)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 1593, 30, 20 )
	RegCurTrigger(15933)



-----------------------------------------------------------------------------------------------------------------



DefineMission(7907, "The Black Sail", 1594)

MisBeginTalk( "Since the pirates number in this isle have been reduced...the Captain of them, Jack - Black Sail has bee spoted in Canary Isle. Since the beggining, the reason why I asked for help was to assassinate the captain. So...I hope that you will help me!") 

MisBeginCondition(NoMission, 1594)
MisBeginCondition(HasRecord, 1593)
MisBeginCondition(NoRecord, 1594)
MisBeginAction(AddMission, 1594)
MisBeginAction(AddTrigger, 15941, TE_KILL, 668, 1 )
MisCancelAction(ClearMission, 1594)

MisNeed(MIS_NEED_DESP, "Kill Jack - Black Sail and return back to me!")
MisNeed(MIS_NEED_KILL, 668, 1, 10, 1)



MisHelpTalk("If I'm not wrong he has been spotted at the west part of the Canary Isle!")
MisResultTalk("Great Job. Thank you for letting me rebecome the Captain of the island!") 
MisResultCondition(HasMission, 1594) 
MisResultCondition(HasFlag, 1594, 10)
MisResultAction(AddMoney, 2000000)
MisResultAction(GiveItem, 681, 1, 1)
MisResultAction(ClearMission, 1594)
MisResultAction(SetRecord, 1594)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsMonster, 668 )
TriggerAction( 1, AddNextFlag, 1594, 10, 1 )
RegCurTrigger(15941)


-----------------------------------------------------------------------------------------------------------------



	DefineMission(7908, "Another Sucessful Report", 1595)

	MisBeginTalk( "I am really thankful for your servce. You're free to go now!") 
	MisBeginCondition(NoMission, 1595)
	MisBeginCondition(HasRecord, 1594)
	MisBeginCondition(NoRecord, 1595)
	MisBeginAction(AddMission, 1595)
	MisCancelAction(ClearMission, 1595)

	MisNeed(MIS_NEED_DESP, "Get Back To Job Agency in Argent City.")

	MisHelpTalk("You're free to go now. Argent City is your home right?")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7909, "Another Sucessful Report", 1595, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Great job. You really killed a captain?") 
	MisResultCondition(NoRecord, 1595)
	MisResultCondition(HasMission, 1595) 
	MisResultAction(AddMoney, 100000)
	MisResultAction(GiveItem, 3878, 1, 1)
	MisResultAction(GiveItem, 333, 1, 1)
	MisResultAction(ClearMission, 1595)
	MisResultAction(SetRecord, 1595)
	MisResultBagNeed(2)


-----------------------------------------------------------------------------------------------------------------


	
	DefineMission(7910, "After getting better", 1596)

	MisBeginTalk( "Now that you have been leveled up to 70. You may continue your journey with better monsters!") 
	MisBeginCondition(NoMission, 1596)
	MisBeginCondition( LvCheck, ">", 69)
	MisBeginCondition(HasRecord, 1605)
	MisBeginCondition(NoRecord, 1596)
	MisBeginAction(AddMission, 1596)
	MisCancelAction(ClearMission, 1596)

	MisNeed(MIS_NEED_DESP, "First go to Spring Town and talk to Teleporter!")

	MisHelpTalk("Your next destination is......................Spring Town!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7911, "After getting better", 1596, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Hai. I cent understend ju veri vell. How abovt lle.arning a nev llanguge befor continung?") 
	MisResultCondition(NoRecord, 1596)
	MisResultCondition(HasMission, 1596) 
	MisResultAction(AddMoney, 200000)
	MisResultAction(ClearMission, 1596)
	MisResultAction(SetRecord, 1596)

	
---------------------------------------------------------------------------------------------------------------


	DefineMission(7912, "First Blood In Spring", 1597)

	MisBeginTalk( "The terrorising in Spring Town happens very often. People here are scared and thats why I required help. You seem very helpful...") 


	MisBeginCondition(NoMission, 1597)
	MisBeginCondition(HasRecord, 1596)
	MisBeginCondition(HasRecord, 330)
	MisBeginCondition(NoRecord, 1597)
	MisBeginAction(AddMission, 1597)
	MisBeginAction(AddTrigger, 15971, TE_KILL, 748, 20 )
	MisCancelAction(ClearMission, 1597)

	MisNeed(MIS_NEED_DESP, "For the first task, hunt 20 Fox Taoist.")
	MisNeed(MIS_NEED_KILL, 748, 20, 10, 20)



	MisHelpTalk("Get ready and get out of spring. You will have battles with foxes!")
	MisResultTalk("Really good. I think that we can sleep peaceful for 1 week now!") 
	MisResultCondition(HasMission, 1597) 
	MisResultCondition(HasFlag, 1597, 19)
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1597)
	MisResultAction(SetRecord, 1597)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 748 )
	TriggerAction( 1, AddNextFlag, 1597, 10, 20 )
	RegCurTrigger(15971)

---------------------------------------------------------------------------------------------------------------


	DefineMission(7913, "Second Blood In Spring", 1598)

	MisBeginTalk( "Except the Fox Taoist. In Spring Isle exist another kind of terrorists...Fox Spirit. They're quite more poerwful, but ,they shouldn't bee a problem for you.") 


	MisBeginCondition(NoMission, 1598)
	MisBeginCondition(HasRecord, 1597)
	MisBeginCondition(NoRecord, 1598)
	MisBeginAction(AddMission, 1598)
	MisBeginAction(AddTrigger, 15981, TE_KILL, 761, 20 )
	MisCancelAction(ClearMission, 1598)

	MisNeed(MIS_NEED_DESP, "For the second task, hunt 20 Fox Spirit.")
	MisNeed(MIS_NEED_KILL, 761, 20, 10, 20)



	MisHelpTalk("You will have to fight with foxes again...but this time with stronger ones!")
	MisResultTalk("Great job! We're almost free!") 
	MisResultCondition(HasMission, 1598) 
	MisResultCondition(HasFlag, 1598, 19)
	MisResultAction(AddMoney, 750000)
	MisResultAction(ClearMission, 1598)
	MisResultAction(SetRecord, 1598)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 761 )
	TriggerAction( 1, AddNextFlag, 1598, 10, 20 )
	RegCurTrigger(15981)

---------------------------------------------------------------------------------------------------------------


	DefineMission(7914, "Taking the Boss Down", 1599)

	MisBeginTalk( "Except 2 kind of foxes, there seems to be another kind of fox. It is much stronger, I mean really much stronger and I don't think you can handle it alone...maybe you should get some help!") 


	MisBeginCondition(NoMission, 1599)
	MisBeginCondition(HasRecord, 1606)
	MisBeginCondition(NoRecord, 1599)
	MisBeginAction(AddMission, 1599)
	MisBeginAction(AddTrigger, 15991, TE_KILL, 776, 1 )
	MisCancelAction(ClearMission, 1599)

	MisNeed(MIS_NEED_DESP, "Take down Fox Sage(3135,2469) in Spring Island.")
	MisNeed(MIS_NEED_KILL, 776, 1, 10, 1)



	MisHelpTalk("Go and take down the strongest Fox- Fox Sage.!")
	MisResultTalk("Amazing. We are free now. Thanks alot friend!") 
	MisResultCondition(HasMission, 1599) 
	MisResultCondition(HasFlag, 1599, 10)
	MisResultAction(AddMoney, 5000000)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultAction(ClearMission, 1599)
	MisResultAction(SetRecord, 1599)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 776 )
	TriggerAction( 1, AddNextFlag, 1599, 10, 1 )
	RegCurTrigger(15991)


----------------------------------------------------------------------------------------------------------------


	DefineMission(7915, "Chilling", 1666)

	MisBeginTalk( "I noticed that you had sucess in islands, so I thought that you must continue in islands.") 
	MisBeginCondition(NoMission, 1666)
	MisBeginCondition( LvCheck, ">", 59)
	MisBeginCondition(HasRecord, 1595)
	MisBeginCondition(NoRecord, 1666)
	MisBeginAction(AddMission, 1666)
	MisCancelAction(ClearMission, 1666)

	MisNeed(MIS_NEED_DESP, "Talk to Trader - Sibun  in Isle of Chill!")

	MisHelpTalk("We got an ask for help from Isle of Chill. You should go there now!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7916, "Chilling", 1666, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Thank God...you camed. I really need help!") 
	MisResultCondition(NoRecord, 1666)
	MisResultCondition(HasMission, 1666) 
	MisResultAction(AddMoney, 200000)
	MisResultAction(ClearMission, 1666)
	MisResultAction(SetRecord, 1666)

----------------------------------------------------------------------------------------------------------------

	DefineMission(7987, "The Confortation", 1601)

	MisBeginTalk( "Our problem is that Pirate-Navy confortation is causing us many problems in sea commerce. Thats why I required help!") 


	MisBeginCondition(NoMission, 1601)
	MisBeginCondition(HasRecord, 1666)
	MisBeginCondition(NoRecord, 1601)
	MisBeginAction(AddMission, 1601)
	MisBeginAction(AddTrigger, 16011, TE_KILL, 562, 20 )
	MisBeginAction(AddTrigger, 16012, TE_KILL, 563, 20 )
	MisBeginAction(AddTrigger, 16013, TE_KILL, 564, 20 )
	MisCancelAction(ClearMission, 1601)

	MisNeed(MIS_NEED_DESP, "Hunt Nothern Pirates!.")
	MisNeed(MIS_NEED_KILL, 562, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 563, 20, 20, 20)
	MisNeed(MIS_NEED_KILL, 564, 20, 30, 20)


	MisHelpTalk("First continue with Nothern Pirates. Hunt many of them down!")
	MisResultTalk("Nice. But we haven't done yet!") 
	MisResultCondition(HasMission, 1601) 
	MisResultCondition(HasFlag, 1601, 10)
	MisResultCondition(HasFlag, 1601, 20)
	MisResultCondition(HasFlag, 1601, 30)
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1601)
	MisResultAction(SetRecord, 1601)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 562 )
	TriggerAction( 1, AddNextFlag, 1601, 10, 20 )
	RegCurTrigger(16011)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 563 )
	TriggerAction( 1, AddNextFlag, 1601, 20, 20 )
	RegCurTrigger(16012)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 564 )
	TriggerAction( 1, AddNextFlag, 1601, 30, 20 )
	RegCurTrigger(16013)

-----------------------------------------------------------------------------------------------------------------



	DefineMission(7917, "Riflemans", 1602)

	MisBeginTalk( "Now that you eleminated many of the pirates, the Navys are celebrating. Don't let them get too happy!") 


	MisBeginCondition(NoMission, 1602)
	MisBeginCondition(HasRecord, 1601)
	MisBeginCondition(NoRecord, 1602)
	MisBeginAction(AddMission, 1602)
	MisBeginAction(AddTrigger, 16021, TE_KILL, 667, 30 )
	MisCancelAction(ClearMission, 1602)

	MisNeed(MIS_NEED_DESP, "Defeat 30 Navy Rifleman in Isle of Chill.")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)



	MisHelpTalk("You should probably continue with Navy soldiers now!")
	MisResultTalk("Great job! Sea commerce is very thankful!") 
	MisResultCondition(HasMission, 1602) 
	MisResultCondition(HasFlag, 1602, 19)
	MisResultAction(AddMoney, 2000000)
	MisResultAction(ClearMission, 1602)
	MisResultAction(SetRecord, 1602)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 1602, 10, 30 )
	RegCurTrigger(16021)

----------------------------------------------------------------------------------------------------------------


	DefineMission(7918, "From Chill to Furtune", 1603)

	MisBeginTalk( "I got a request from Job Agency that brought you here! They wanted you to go to Isle Of Furtune and help them with sea commerce too!") 
	MisBeginCondition(NoMission, 1603)
	MisBeginCondition(HasRecord, 1602)
	MisBeginCondition(NoRecord, 1603)
	MisBeginAction(AddMission, 1603)
	MisCancelAction(ClearMission, 1603)

	MisNeed(MIS_NEED_DESP, "Talk to Trader - Bowey  in Isle of Furtune!")

	MisHelpTalk("We got an ask for help from Isle of Fortune. You should go there now!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7919, "From Chill to Furtune", 1603, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Thank God...you camed. The sea commerce is in total chaos!") 
	MisResultCondition(NoRecord, 1603)
	MisResultCondition(HasMission, 1603) 
	MisResultAction(AddMoney, 200000)
	MisResultAction(ClearMission, 1603)
	MisResultAction(SetRecord, 1603)

-----------------------------------------------------------------------------------------------------------------



	DefineMission(7920, "Fortune Pirates", 1604)

	MisBeginTalk( "This island is surrounded by strong pirates which have killed all the Navys. Our life is on danger and we need help!") 


	MisBeginCondition(NoMission, 1604)
	MisBeginCondition(HasRecord, 1603)
	MisBeginCondition(NoRecord, 1604)
	MisBeginAction(AddMission, 1604)
	MisBeginAction(AddTrigger, 16041, TE_KILL, 569, 20 )
	MisBeginAction(AddTrigger, 16042, TE_KILL, 570, 20 )
	MisBeginAction(AddTrigger, 16043, TE_KILL, 571, 20 )
	MisCancelAction(ClearMission, 1604)

	MisNeed(MIS_NEED_DESP, "Hunt down Beardy Pirates!.")
	MisNeed(MIS_NEED_KILL, 569, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 570, 20, 20, 20)
	MisNeed(MIS_NEED_KILL, 571, 20, 30, 20)


	MisHelpTalk("Hunt down all the Beardy Pirates!")
	MisResultTalk("We are free!") 
	MisResultCondition(HasMission, 1604) 
	MisResultCondition(HasFlag, 1604, 19)
	MisResultCondition(HasFlag, 1604, 29)
	MisResultCondition(HasFlag, 1604, 39)
	MisResultAction(AddMoney, 2000000)
	MisResultAction(ClearMission, 1604)
	MisResultAction(SetRecord, 1604)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 569 )
	TriggerAction( 1, AddNextFlag, 1604, 10, 20 )
	RegCurTrigger(16041)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 570 )
	TriggerAction( 1, AddNextFlag, 1604, 20, 20 )
	RegCurTrigger(16042)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 571 )
	TriggerAction( 1, AddNextFlag, 1604, 30, 20 )
	RegCurTrigger(16043)

----------------------------------------------------------------------------------------------------------------



	DefineMission(7921, "Islands Reporting", 1605)

	MisBeginTalk( "You should get back to job agency! I'm sure that they're intrested to hear your story.") 
	MisBeginCondition(NoMission, 1605)
	MisBeginCondition(HasRecord, 1604)
	MisBeginCondition(NoRecord, 1605)
	MisBeginAction(AddMission, 1605)
	MisCancelAction(ClearMission, 1605)

	MisNeed(MIS_NEED_DESP, "Talk to Job Agency in Argent City.")

	MisHelpTalk("You should get back jo Job Agency and report your sucessful job!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7922, "Islands Reporting", 1605, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Great job. I never thought that you would be able to hunt down the Beardy Pirates!") 
	MisResultCondition(NoRecord, 1605)
	MisResultCondition(HasMission, 1605) 
	MisResultAction(AddMoney, 2000000)
	MisResultAction(GiveItem, 333, 2, 1)
	MisResultAction(GiveItem, 3878, 2, 1)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultAction(ClearMission, 1605)
	MisResultAction(SetRecord, 1605)
	MisResultBagNeed(3)

-----------------------------------------------------------------------------------------------------------------



	DefineMission(7923, "Booooooo", 1606)

	MisBeginTalk( "The other part of Spring Island is still unexplored. There is a tunnel which connects them both, but it seems that it's fulled with zombies. Yes zombies I'm not kidding. If you don't mind. Take them out of game!") 


	MisBeginCondition(NoMission, 1606)
	MisBeginCondition(HasRecord, 1598)
	MisBeginCondition(NoRecord, 1606)
	MisBeginAction(AddMission, 1606)
	MisBeginAction(AddTrigger, 16061, TE_KILL, 764, 20 )
	MisBeginAction(AddTrigger, 16062, TE_KILL, 765, 20 )
	MisBeginAction(AddTrigger, 16063, TE_KILL, 766, 20 )
	MisCancelAction(ClearMission, 1606)

	MisNeed(MIS_NEED_DESP, "Hunt down the zombies!.")
	MisNeed(MIS_NEED_KILL, 764, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 765, 20, 20, 20)
	MisNeed(MIS_NEED_KILL, 766, 20, 30, 20)


	MisHelpTalk("Look in underwater tunnel and get the zombies out of game!")
	MisResultTalk("Great job! We shall see what's located in other site of Spring Island.") 
	MisResultCondition(HasMission, 1606) 
	MisResultCondition(HasFlag, 1606, 19)
	MisResultCondition(HasFlag, 1606, 29)
	MisResultCondition(HasFlag, 1606, 39)
	MisResultAction(AddMoney, 2000000)
	MisResultAction(ClearMission, 1606)
	MisResultAction(SetRecord, 1606)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 764 )
	TriggerAction( 1, AddNextFlag, 1606, 10, 20 )
	RegCurTrigger(16061)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 765 )
	TriggerAction( 1, AddNextFlag, 1606, 20, 20 )
	RegCurTrigger(16062)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 766 )
	TriggerAction( 1, AddNextFlag, 1606, 30, 20 )
	RegCurTrigger(16063)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7924, "The Lost Friend", 1607)

	MisBeginTalk( "During her expeditions, my friend has lost somewhere in Autumn Island. Nobody has seen here since a month. Can you go and look for her?") 
	MisBeginCondition(NoMission, 1607)
	MisBeginCondition(HasRecord, 1599)
	MisBeginCondition(NoRecord, 1607)
	MisBeginAction(AddMission, 1607)
	MisCancelAction(ClearMission, 1607)

	MisNeed(MIS_NEED_DESP, "Look for a girl around 2423,3185 in Autumn Island!")

	MisHelpTalk("If I am not wrong...she was trying to find a medicine there!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7925, "The Lost Friend", 1607, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Thank God...somebody camed for me. At last!") 
	MisResultCondition(NoRecord, 1607)
	MisResultCondition(HasMission, 1607) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1607)
	MisResultAction(SetRecord, 1607)


------------------------------------------------------------------------------------------------------------------

	DefineMission(7926, "Lost of Sight", 1608)

	MisBeginTalk( "Help me please! I need to get out of here.") 


	MisBeginCondition(NoMission, 1608)
	MisBeginCondition(HasRecord, 1607)
	MisBeginCondition(NoRecord, 1608)
	MisBeginAction(AddMission, 1608)
	MisBeginAction(AddTrigger, 16081, TE_KILL, 734, 30 )
	MisCancelAction(ClearMission, 1608)

	MisNeed(MIS_NEED_DESP, "Defeat 30 Pirate 006 in Autumn Isle.")
	MisNeed(MIS_NEED_KILL, 734, 30, 10, 30)



	MisHelpTalk("The Pirate 006 are after me! Help me please.")
	MisResultTalk("Oh...were saved for now!") 
	MisResultCondition(HasMission, 1608) 
	MisResultCondition(HasFlag, 1608, 19)
	MisResultAction(AddMoney, 2000000)
	MisResultAction(ClearMission, 1608)
	MisResultAction(SetRecord, 1608)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 734 )
	TriggerAction( 1, AddNextFlag, 1608, 10, 30 )
	RegCurTrigger(16081)

------------------------------------------------------------------------------------------------------------------

	DefineMission(7927, "Pirates are back", 1609)

	MisBeginTalk( "Loook. Another wave of pirates is coming. Keep your hands steady!") 


	MisBeginCondition(NoMission, 1609)
	MisBeginCondition(HasRecord, 1608)
	MisBeginCondition(NoRecord, 1609)
	MisBeginAction(AddMission, 1609)
	MisBeginAction(AddTrigger, 16091, TE_KILL, 735, 30 )
	MisCancelAction(ClearMission, 1609)

	MisNeed(MIS_NEED_DESP, "Defeat 30 Pirate 007 in Autumn Isle.")
	MisNeed(MIS_NEED_KILL, 735, 30, 10, 30)



	MisHelpTalk("The Pirate 007 are after me! Help me please.")
	MisResultTalk("Great job. One again we are saved!") 
	MisResultCondition(HasMission, 1609) 
	MisResultCondition(HasFlag, 1609, 19)
	MisResultAction(AddMoney, 3000000)
	MisResultAction(ClearMission, 1609)
	MisResultAction(SetRecord, 1609)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 735 )
	TriggerAction( 1, AddNextFlag, 1609, 10, 30 )
	RegCurTrigger(16091)


------------------------------------------------------------------------------------------------------------------

	DefineMission(7928, "The Last Wave", 1610)

	MisBeginTalk( "Stranger. I think that these are the last pirates which are chasing us. I'f I am not wrong, they're stronger!") 


	MisBeginCondition(NoMission, 1610)
	MisBeginCondition(HasRecord, 1609)
	MisBeginCondition(NoRecord, 1610)
	MisBeginAction(AddMission, 1610)
	MisBeginAction(AddTrigger, 16101, TE_KILL, 736, 30 )
	MisCancelAction(ClearMission, 1610)

	MisNeed(MIS_NEED_DESP, "Defeat 30 Pirate 008 in Autumn Isle.")
	MisNeed(MIS_NEED_KILL, 736, 30, 10, 30)



	MisHelpTalk("The Pirate 008 are chasing us. Destroy them!")
	MisResultTalk("We are free from pirates, only the captain is left!") 
	MisResultCondition(HasMission, 1610) 
	MisResultCondition(HasFlag, 1610, 19)
	MisResultAction(AddMoney, 4000000)
	MisResultAction(ClearMission, 1610)
	MisResultAction(SetRecord, 1610)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 736 )
	TriggerAction( 1, AddNextFlag, 1610, 10, 30 )
	RegCurTrigger(16101)


------------------------------------------------------------------------------------------------------------------

	DefineMission(7929, "Different Pirate 008", 1612)

	MisBeginTalk( "Look over there! There's a giant panda. If I am not wrong he must be the leader of the pirates. You know what to do with him!")

	MisBeginCondition(NoMission, 1612)
	MisBeginCondition(HasRecord, 1610)
	MisBeginCondition(NoRecord, 1612)
	MisBeginAction(AddMission, 1612)
	MisBeginAction(AddTrigger, 16121, TE_KILL, 757, 1 )
	MisCancelAction(ClearMission, 1612)

	MisNeed(MIS_NEED_DESP, "Defeat Pirate Captain 008 in Autumn Isle.")
	MisNeed(MIS_NEED_KILL, 757, 1, 10, 1)



	MisHelpTalk("Take down the pirate's leader!")
	MisResultTalk("The pirates are finished! They took what they deserved!") 
	MisResultCondition(HasMission, 1612)
	MisResultCondition(HasFlag, 1612, 10)
	MisResultAction(AddMoney, 5000000)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultAction(ClearMission, 1612)
	MisResultAction(SetRecord, 1612)
	MisResultBagNeed(1)



	InitTrigger()
	TriggerCondition( 1, IsMonster, 757 )
	TriggerAction( 1, AddNextFlag, 1612, 10, 1 )
	RegCurTrigger(16121)

------------------------------------------------------------------------------------------------------------------

	DefineMission(7930, "Seabed Tunnel", 1611)

	MisBeginTalk( "Now that pirates aren't here...I revealed an tunnel which leads to an underground tunnel. You should check it!") 


	MisBeginCondition(NoMission, 1611)
	MisBeginCondition(HasRecord, 1612)
	MisBeginCondition(NoRecord, 1611)
	MisBeginAction(AddMission, 1611)
	MisBeginAction(AddTrigger, 16111, TE_KILL, 512, 30 )
	MisBeginAction(AddTrigger, 16112, TE_KILL, 273, 30 )
	MisBeginAction(AddTrigger, 16113, TE_KILL, 187, 30 )
	MisCancelAction(ClearMission, 1611)

	MisNeed(MIS_NEED_DESP, "Defeat the minions in Seabed Tunnel.")
	MisNeed(MIS_NEED_KILL, 512, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 273, 30, 20, 30)
	MisNeed(MIS_NEED_KILL, 187, 30, 30, 30)



	MisHelpTalk("To get further in my explorations, you should take out of game the monsters which are distracting me!")
	MisResultTalk("You cleaned the way? Yay...I can continue now!") 
	MisResultCondition(HasMission, 1611) 
	MisResultCondition(HasFlag, 1611, 19)
	MisResultCondition(HasFlag, 1611, 29)
	MisResultCondition(HasFlag, 1611, 39)
	MisResultAction(AddMoney, 6000000)
	MisResultAction(ClearMission, 1611)
	MisResultAction(SetRecord, 1611)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 512 )
	TriggerAction( 1, AddNextFlag, 1611, 10, 30 )
	RegCurTrigger(16111)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 273 )
	TriggerAction( 1, AddNextFlag, 1611, 20, 30 )
	RegCurTrigger(16112)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 187 )
	TriggerAction( 1, AddNextFlag, 1611, 30, 30 )
	RegCurTrigger(16113)

-----------------------------------------------------------------------------------------------------------------

	DefineMission(7931, "Cold dragon", 1613)

	MisBeginTalk( "Oh my god! When I continued with my explorations I saw a giant icy dragon. It terrified me! Once again I need your help!")

	MisBeginCondition(NoMission, 1613)
	MisBeginCondition(HasRecord, 1611)
	MisBeginCondition(NoRecord, 1613)
	MisBeginAction(AddMission, 1613)
	MisBeginAction(AddTrigger, 16131, TE_KILL, 74, 1 )
	MisCancelAction(ClearMission, 1613)

	MisNeed(MIS_NEED_DESP, "Defeat Icy Dragon in Seabed Tunnel.")
	MisNeed(MIS_NEED_KILL, 74, 1, 10, 1)



	MisHelpTalk("Why don't you go and tell to the icy dragon who you are?!")
	MisResultTalk("You hunt him down! You worth much more than I thought!") 
	MisResultCondition(HasMission, 1613) 
	MisResultCondition(HasFlag, 1613, 10)
	MisResultAction(AddMoney, 5000000)
	MisResultAction(ClearMission, 1613)
	MisResultAction(SetRecord, 1613)



	InitTrigger()
	TriggerCondition( 1, IsMonster, 74 )
	TriggerAction( 1, AddNextFlag, 1613, 10, 1 )
	RegCurTrigger(16131)
	
-----------------------------------------------------------------------------------------------------------------



	DefineMission(7932, "Homecoming", 1614)

	MisBeginTalk( "Your job here is done now! You should get back and report your excellent job here!") 
	MisBeginCondition(NoMission, 1614)
	MisBeginCondition(HasRecord, 1613)
	MisBeginCondition(NoRecord, 1614)
	MisBeginAction(AddMission, 1614)
	MisCancelAction(ClearMission, 1614)

	MisNeed(MIS_NEED_DESP, "Talk to Job Agency in Argent City.")

	MisHelpTalk("You camed from Argent City right? You shall go back now!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7933, "Homecoming", 1614, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Autumn Island?Panda?Seabed Tunnel?Icy Dragon? Oh my....You worth much more than I thought!") 
	MisResultCondition(NoRecord, 1614)
	MisResultCondition(HasMission, 1614) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(GiveItem, 333, 2, 1)
	MisResultAction(GiveItem, 3878, 2, 1)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultAction(ClearMission, 1614)
	MisResultAction(SetRecord, 1614)
	MisResultBagNeed(3)

-----------------------------------------------------------------------------------------------------------------



	DefineMission(7934, "From Autumn to Summer", 1615)

	MisBeginTalk( "Since you suceed in Autumn Island, I thought that you are ready for Summer Island. What do you think?") 
	MisBeginCondition(NoMission, 1615)
	MisBeginCondition(HasRecord, 1614)
	MisBeginCondition(NoRecord, 1615)
	MisBeginAction(AddMission, 1615)
	MisCancelAction(ClearMission, 1615)

	MisNeed(MIS_NEED_DESP, "Talk to Qing(3685,2652) in Summer Island.")

	MisHelpTalk("Head to Summer Island and talk to the harbor operator in the north part.")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7935, "From Autumn to Summer", 1615, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("You were sent from Job Agency in Argent City?") 
	MisResultCondition(NoRecord, 1615)
	MisResultCondition(HasMission, 1615) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1615)
	MisResultAction(SetRecord, 1615)


------------------------------------------------------------------------------------------------------------------

	DefineMission(7936, "Cleaning the North Part", 1616)

	MisBeginTalk( "Our main problem are the Lizardmans and Tribal villagers. If you can take them out of game, it would be great!") 


	MisBeginCondition(NoMission, 1616)
	MisBeginCondition(HasRecord, 1615)
	MisBeginCondition(NoRecord, 1616)
	MisBeginAction(AddMission, 1616)
	MisBeginAction(AddTrigger, 16161, TE_KILL, 528, 15 )
	MisBeginAction(AddTrigger, 16162, TE_KILL, 552, 15 )
	MisBeginAction(AddTrigger, 16163, TE_KILL, 524, 15 )
	MisBeginAction(AddTrigger, 16164, TE_KILL, 551, 15 )
	MisBeginAction(AddTrigger, 16165, TE_KILL, 787, 15 )
	MisCancelAction(ClearMission, 1616)

	MisNeed(MIS_NEED_DESP, "Defeat Lizardmans and Triball villagers in Summer Island.")
	MisNeed(MIS_NEED_KILL, 528, 15, 10, 15)
	MisNeed(MIS_NEED_KILL, 552, 15, 20, 15)
	MisNeed(MIS_NEED_KILL, 524, 15, 30, 15)
	MisNeed(MIS_NEED_KILL, 551, 15, 40, 15)
	MisNeed(MIS_NEED_KILL, 787, 15, 50, 15)


	MisHelpTalk("If you want to proceed with your missions here, defeat our stoppers!")
	MisResultTalk("You cleaned the way? Yay...we can continue now!") 
	MisResultCondition(HasMission, 1616) 
	MisResultCondition(HasFlag, 1616, 19)
	MisResultCondition(HasFlag, 1616, 29)
	MisResultCondition(HasFlag, 1616, 39)
	MisResultCondition(HasFlag, 1616, 49)
	MisResultCondition(HasFlag, 1616, 59)
	MisResultAction(AddMoney, 6000000)
	MisResultAction(ClearMission, 1616)
	MisResultAction(SetRecord, 1616)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 528 )
	TriggerAction( 1, AddNextFlag, 1616, 10, 15 )
	RegCurTrigger(16161)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 552 )
	TriggerAction( 1, AddNextFlag, 1616, 20, 15 )
	RegCurTrigger(16162)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 524 )
	TriggerAction( 1, AddNextFlag, 1616, 30, 15 )
	RegCurTrigger(16163)


	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 551 )
	TriggerAction( 1, AddNextFlag, 1616, 40, 15 )
	RegCurTrigger(16164)


	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 787 )
	TriggerAction( 1, AddNextFlag, 1616, 50, 15 )
	RegCurTrigger(16165)


-----------------------------------------------------------------------------------------------------------------

	DefineMission(7937, "Little Black Tribal Villager", 1617)

	MisBeginTalk( "Another big problem for continuing is a little tribal villager!")

	MisBeginCondition(NoMission, 1617)
	MisBeginCondition(HasRecord, 1616)
	MisBeginCondition(NoRecord, 1617)
	MisBeginAction(AddMission, 1617)
	MisBeginAction(AddTrigger, 16171, TE_KILL, 788, 1 )
	MisCancelAction(ClearMission, 1617)

	MisNeed(MIS_NEED_DESP, "Defeat Evil Tribal Chieftian in Summer Island.")
	MisNeed(MIS_NEED_KILL, 788, 1, 10, 1)



	MisHelpTalk("Why don't you go and tell to that little tribal villager who you are?!")
	MisResultTalk("You hunt him down! You worth much more than I thought!") 
	MisResultCondition(HasMission, 1617) 
	MisResultCondition(HasFlag, 1617, 10)
	MisResultAction(AddMoney, 3000000)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultAction(ClearMission, 1617)
	MisResultAction(SetRecord, 1617)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 788 )
	TriggerAction( 1, AddNextFlag, 1617, 10, 1 )
	RegCurTrigger(16171)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7938, "Two sides connection", 1618)

	MisBeginTalk( "Now that the road is free, you may get to the other side. What are you waiting for?") 
	MisBeginCondition(NoMission, 1618)
	MisBeginCondition(HasRecord, 1617)
	MisBeginCondition(NoRecord, 1618)
	MisBeginAction(AddMission, 1618)
	MisCancelAction(ClearMission, 1618)

	MisNeed(MIS_NEED_DESP, "Talk to Yun(3337,3523) in Summer Island.")

	MisHelpTalk("Another harbor operator is in the other site of island. You should visit her!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7939, "Two sides connection", 1618, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Dont tell me. Chin sent you here?") 
	MisResultCondition(NoRecord, 1618)
	MisResultCondition(HasMission, 1618) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1618)
	MisResultAction(SetRecord, 1618)


----------------------------------------------------------------------------------------------------------------


	DefineMission(7940, "Cleaning the South Part", 1619)

	MisBeginTalk( "Same as in North Part...our main problem are the Lizardmans and Tribal villagers. If you can take them out of game, it would be great!") 


	MisBeginCondition(NoMission, 1619)
	MisBeginCondition(HasRecord, 1618)
	MisBeginCondition(NoRecord, 1619)
	MisBeginAction(AddMission, 1619)
	MisBeginAction(AddTrigger, 16191, TE_KILL, 528, 15 )
	MisBeginAction(AddTrigger, 16192, TE_KILL, 552, 15 )
	MisBeginAction(AddTrigger, 16193, TE_KILL, 524, 15 )
	MisBeginAction(AddTrigger, 16194, TE_KILL, 551, 15 )
	MisBeginAction(AddTrigger, 16195, TE_KILL, 787, 15 )
	MisCancelAction(ClearMission, 1619)

	MisNeed(MIS_NEED_DESP, "Defeat Lizardmans and Triball villagers in Summer Island.")
	MisNeed(MIS_NEED_KILL, 528, 15, 10, 15)
	MisNeed(MIS_NEED_KILL, 552, 15, 20, 15)
	MisNeed(MIS_NEED_KILL, 524, 15, 30, 15)
	MisNeed(MIS_NEED_KILL, 551, 15, 40, 15)
	MisNeed(MIS_NEED_KILL, 787, 15, 50, 15)


	MisHelpTalk("If you want to proceed with your missions here, defeat our stoppers!")
	MisResultTalk("You cleaned the way? Yay...we can continue now!") 
	MisResultCondition(HasMission, 1619) 
	MisResultCondition(HasFlag, 1619, 19)
	MisResultCondition(HasFlag, 1619, 29)
	MisResultCondition(HasFlag, 1619, 39)
	MisResultCondition(HasFlag, 1619, 49)
	MisResultCondition(HasFlag, 1619, 59)
	MisResultAction(AddMoney, 6000000)
	MisResultAction(ClearMission, 1619)
	MisResultAction(SetRecord, 1619)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 528 )
	TriggerAction( 1, AddNextFlag, 1619, 10, 15 )
	RegCurTrigger(16191)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 552 )
	TriggerAction( 1, AddNextFlag, 1619, 20, 15 )
	RegCurTrigger(16192)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 524 )
	TriggerAction( 1, AddNextFlag, 1619, 30, 15 )
	RegCurTrigger(16193)


	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 551 )
	TriggerAction( 1, AddNextFlag, 1619, 40, 15 )
	RegCurTrigger(16194)


	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 787 )
	TriggerAction( 1, AddNextFlag, 1619, 50, 15 )
	RegCurTrigger(16195)


-----------------------------------------------------------------------------------------------------------------

	DefineMission(7941, "A true commander", 1620)

	MisBeginTalk( "In this part we are terrified by a giant Lizardman which actually is the Lizardman's leader. You won't do anything bad if you take him out!")

	MisBeginCondition(NoMission, 1620)
	MisBeginCondition(HasRecord, 1619)
	MisBeginCondition(NoRecord, 1620)
	MisBeginAction(AddMission, 1620)
	MisBeginAction(AddTrigger, 16201, TE_KILL, 786, 1 )
	MisCancelAction(ClearMission, 1620)

	MisNeed(MIS_NEED_DESP, "Defeat Lizardman Warrior Commander in Summer Island.")
	MisNeed(MIS_NEED_KILL, 786, 1, 10, 1)



	MisHelpTalk("Why don't you go and tell to that little tribal villager who you are?!")
	MisResultTalk("You hunt him down! You worth much more than I thought!") 
	MisResultCondition(HasMission, 1620) 
	MisResultCondition(HasFlag, 1620, 10)
	MisResultAction(AddMoney, 4000000)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultAction(ClearMission, 1620)
	MisResultAction(SetRecord, 1620)
	MisResultBagNeed(1)



	InitTrigger()
	TriggerCondition( 1, IsMonster, 786 )
	TriggerAction( 1, AddNextFlag, 1620, 10, 1 )
	RegCurTrigger(16201)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7942, "Nothing left here", 1621)

	MisBeginTalk( "For the moment there's nothing left to do here. But I am sure that we will meet soon again!") 
	MisBeginCondition(NoMission, 1621)
	MisBeginCondition(HasRecord, 1620)
	MisBeginCondition(NoRecord, 1621)
	MisBeginAction(AddMission, 1621)
	MisCancelAction(ClearMission, 1621)

	MisNeed(MIS_NEED_DESP, "Talk to Job Agency in Argent City.")

	MisHelpTalk("Why don't you go in Argent City and rest now ?!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7943, "Nothing left here", 1621, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Dont tell me. You were sucessful?") 
	MisResultCondition(NoRecord, 1621)
	MisResultCondition(HasMission, 1621) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(GiveItem, 333, 2, 1)
	MisResultAction(GiveItem, 3878, 2, 1)
	MisResultAction(ClearMission, 1621)
	MisResultAction(SetRecord, 1621)
	MisResultBagNeed(2)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7944, "Treasure Gulf", 1622)

	MisBeginTalk( "We do investigations every week. Unfortunately, one of our investigators got sick. If you can replace it...would be great!") 
	MisBeginCondition(NoMission, 1622)
	MisBeginCondition(HasRecord, 1621)
	MisBeginCondition(NoRecord, 1622)
	MisBeginAction(AddMission, 1622)
	MisCancelAction(ClearMission, 1622)

	MisNeed(MIS_NEED_DESP, "Talk to Blink(619,965) in Treasure Gulf.")

	MisHelpTalk("The first place to investigate is Treasure Gulf!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7945, "Treasure Gulf", 1622, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Hi. You should be investigator's replacer. Welcome to Treasure Gulf.") 
	MisResultCondition(NoRecord, 1622)
	MisResultCondition(HasMission, 1622) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1622)
	MisResultAction(SetRecord, 1622)


-----------------------------------------------------------------------------------------------------------------


	DefineMission(7946, "Naval Base", 1623)

	MisBeginTalk( "I have recieved some SOS signs from people in Naval Base. Seems that Deathsouls have been released from their prison. You should go look there!") 
	MisBeginCondition(NoMission, 1623)
	MisBeginCondition(HasRecord, 1622)
	MisBeginCondition(NoRecord, 1623)
	MisBeginAction(AddMission, 1623)
	MisCancelAction(ClearMission, 1623)

	MisNeed(MIS_NEED_DESP, "Talk to Wellington(1042,135) in Naval Base.")

	MisHelpTalk("Look for survivors in Naval Base!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7947, "Naval Base", 1623, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Thank God. At last somebody camed!") 
	MisResultCondition(NoRecord, 1623)
	MisResultCondition(HasMission, 1623) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1623)
	MisResultAction(SetRecord, 1623)

----------------------------------------------------------------------------------------------------------------


	DefineMission(7948, "Spooky Deathsouls", 1624)

	MisBeginTalk( "This isn't nothing! The Deathsouls inside this terrifying place are even stronger!In order to get there...defeat the one outsite here!") 


	MisBeginCondition(NoMission, 1624)
	MisBeginCondition(HasRecord, 1623)
	MisBeginCondition(NoRecord, 1624)
	MisBeginAction(AddMission, 1624)
	MisBeginAction(AddTrigger, 16241, TE_KILL, 808, 30 )
	MisBeginAction(AddTrigger, 16242, TE_KILL, 817, 15 )
	MisCancelAction(ClearMission, 1624)

	MisNeed(MIS_NEED_DESP, "Defeat Deathsouls in Naval Base.")
	MisNeed(MIS_NEED_KILL, 808, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 817, 15, 20, 15)


	MisHelpTalk("If you want to proceed with your missions here, defeat our stoppers!")
	MisResultTalk("You cleaned the way? You can continue now!") 
	MisResultCondition(HasMission, 1624) 
	MisResultCondition(HasFlag, 1624, 19)
	MisResultCondition(HasFlag, 1624, 29)
	MisResultAction(AddMoney, 6000000)
	MisResultAction(ClearMission, 1624)
	MisResultAction(SetRecord, 1624)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 808 )
	TriggerAction( 1, AddNextFlag, 1624, 10, 30 )
	RegCurTrigger(16241)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 817 )
	TriggerAction( 1, AddNextFlag, 1624, 20, 15 )
	RegCurTrigger(16242)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7949, "Getting Down", 1625)

	MisBeginTalk( "Now that the road is clear...you may proceed to underground!") 
	MisBeginCondition(NoMission, 1625)
	MisBeginCondition(HasRecord, 1624)
	MisBeginCondition(NoRecord, 1625)
	MisBeginAction(AddMission, 1625)
	MisCancelAction(ClearMission, 1625)

	MisNeed(MIS_NEED_DESP, "Talk to Dock Steward(1253,1001) in Underground Dock.")

	MisHelpTalk("Look for survivors in Underground Dock!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7950, "Getting Down", 1625, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("What? You shouldn't be here. Leave now!") 
	MisResultCondition(NoRecord, 1625)
	MisResultCondition(HasMission, 1625) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1625)
	MisResultAction(SetRecord, 1625)

------------------------------------------------------------------------------------------------------------------



	DefineMission(7951, "More Spooky Deathsouls", 1626)

	MisBeginTalk( "Now that you got here...do something. Try to proceed even more!") 


	MisBeginCondition(NoMission, 1626)
	MisBeginCondition(HasRecord, 1625)
	MisBeginCondition(NoRecord, 1626)
	MisBeginAction(AddMission, 1626)
	MisBeginAction(AddTrigger, 16261, TE_KILL, 800, 15 )
	MisBeginAction(AddTrigger, 16262, TE_KILL, 799, 15 )
	MisCancelAction(ClearMission, 1626)

	MisNeed(MIS_NEED_DESP, "Defeat Deathsouls and Automatic Weapons in Underground Dock.")
	MisNeed(MIS_NEED_KILL, 800, 15, 10, 15)
	MisNeed(MIS_NEED_KILL, 799, 15, 20, 15)


	MisHelpTalk("If you want to proceed with your missions here, defeat our stoppers!")
	MisResultTalk("You cleaned the way? You can continue now!") 
	MisResultCondition(HasMission, 1626) 
	MisResultCondition(HasFlag, 1626, 19)
	MisResultCondition(HasFlag, 1626, 29)
	MisResultAction(AddMoney, 6000000)
	MisResultAction(ClearMission, 1626)
	MisResultAction(SetRecord, 1626)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 800 )
	TriggerAction( 1, AddNextFlag, 1626, 10, 15 )
	RegCurTrigger(16261)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 799 )
	TriggerAction( 1, AddNextFlag, 1626, 20, 15 )
	RegCurTrigger(16262)

------------------------------------------------------------------------------------------------------------------



	DefineMission(7952, "The Commander", 1627)

	MisBeginTalk( "The only thing left to do here is Deathsoul Commander. You can find him down here!") 


	MisBeginCondition(NoMission, 1627)
	MisBeginCondition(HasRecord, 1626)
	MisBeginCondition(NoRecord, 1627)
	MisBeginAction(AddMission, 1627)
	MisBeginAction(AddTrigger, 16271, TE_KILL, 807, 1 )
	MisCancelAction(ClearMission, 1627)

	MisNeed(MIS_NEED_DESP, "Defeat Deathsoul Commander in Research Shelter.")
	MisNeed(MIS_NEED_KILL, 807, 1, 10, 1)


	MisHelpTalk("A strong Deathsoul...the strongest one. I don't know but...I think that you will need help!")
	MisResultTalk("Unbelieveable! Deathsoul Commander is dead?") 
	MisResultCondition(HasMission, 1627) 
	MisResultCondition(HasFlag, 1627, 10)
	MisResultAction(AddMoney, 10000000)
	MisResultAction(GiveItem, 3457, 4, 1)
	MisResultAction(GiveItem, 3691, 3, 1)
	MisResultAction(ClearMission, 1627)
	MisResultAction(SetRecord, 1627)
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 807 )
	TriggerAction( 1, AddNextFlag, 1627, 10, 1 )
	RegCurTrigger(16271)



-----------------------------------------------------------------------------------------------------------------


	DefineMission(7953, "To Lovely Pirates", 1628)

	MisBeginTalk( "I think that its time to go back now. Nothing left here!") 
	MisBeginCondition(NoMission, 1628)
	MisBeginCondition(HasRecord, 1627)
	MisBeginCondition(NoRecord, 1628)
	MisBeginAction(AddMission, 1628)
	MisCancelAction(ClearMission, 1628)

	MisNeed(MIS_NEED_DESP, "Talk to Blink(619,965) in Treasure Gulf.")

	MisHelpTalk("You camed from Treasure Gulf right? Go there...its safer!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7954, "To Lovely Pirates", 1628, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Hello back friend. What? Deathsoul Commander is dead! You killed him? Unbelieveable!") 
	MisResultCondition(NoRecord, 1628)
	MisResultCondition(HasMission, 1628) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1628)
	MisResultAction(SetRecord, 1628)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7955, "Skeletar Isle", 1629)

	MisBeginTalk( "In skeletar isle, captain Barbarosa is terrorising civilians. They need your help!") 
	MisBeginCondition(NoMission, 1629)
	MisBeginCondition(HasRecord, 1628)
	MisBeginCondition(NoRecord, 1629)
	MisBeginAction(AddMission, 1629)
	MisCancelAction(ClearMission, 1629)

	MisNeed(MIS_NEED_DESP, "Talk to Jack Arrow(230,579) in Skeletar Isle.")

	MisHelpTalk("Try to find somebody who calls himself Jack Arrow. He may tell you what to do!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7956, "Skeletar Isle", 1629, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Aghhhh! Just one person? You don't look enough. Well...lets see if you worth!") 
	MisResultCondition(NoRecord, 1629)
	MisResultCondition(HasMission, 1629) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1629)
	MisResultAction(SetRecord, 1629)

----------------------------------------------------------------------------------------------------------------


	DefineMission(7957, "Getting known with skeletars", 1630)

	MisBeginTalk( "Working here is too dangerous. In order to proceed you must take care of pirates!") 


	MisBeginCondition(NoMission, 1630)
	MisBeginCondition(HasRecord, 1629)
	MisBeginCondition(NoRecord, 1630)
	MisBeginAction(AddMission, 1630)
	MisBeginAction(AddTrigger, 16301, TE_KILL, 797, 30 )
	MisBeginAction(AddTrigger, 16302, TE_KILL, 806, 30 )
	MisBeginAction(AddTrigger, 16303, TE_KILL, 809, 30 )
	MisCancelAction(ClearMission, 1630)

	MisNeed(MIS_NEED_DESP, "Defeat the skeletar pirates in Skeletar Isle.")
	MisNeed(MIS_NEED_KILL, 797, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 806, 30, 20, 30)
	MisNeed(MIS_NEED_KILL, 809, 30, 30, 30)



	MisHelpTalk("To get further in this island...show to the pirates what you got!")
	MisResultTalk("You cleaned the way? You shall continue now!") 
	MisResultCondition(HasMission, 1630) 
	MisResultCondition(HasFlag, 1630, 19)
	MisResultCondition(HasFlag, 1630, 29)
	MisResultCondition(HasFlag, 1630, 39)
	MisResultAction(AddMoney, 6000000)
	MisResultAction(ClearMission, 1630)
	MisResultAction(SetRecord, 1630)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 797 )
	TriggerAction( 1, AddNextFlag, 1630, 10, 30 )
	RegCurTrigger(16301)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 806 )
	TriggerAction( 1, AddNextFlag, 1630, 20, 30 )
	RegCurTrigger(16302)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 809 )
	TriggerAction( 1, AddNextFlag, 1630, 30, 30 )
	RegCurTrigger(16303)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7958, "Proceeding", 1631)

	MisBeginTalk( "The road is clear now. You should probably talk to my brother. He will give you the next instructions!") 
	MisBeginCondition(NoMission, 1631)
	MisBeginCondition(HasRecord, 1630)
	MisBeginCondition(NoRecord, 1631)
	MisBeginAction(AddMission, 1631)
	MisCancelAction(ClearMission, 1631)

	MisNeed(MIS_NEED_DESP, "Talk to Mark Turner(515,408) in Skeletar Isle.")

	MisHelpTalk("Look for my brother Mark in the other site of the Island!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7959, "Proceeding", 1631, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("What? My stupid brother sent you here?!") 
	MisResultCondition(NoRecord, 1631)
	MisResultCondition(HasMission, 1631) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1631)
	MisResultAction(SetRecord, 1631)

---------------------------------------------------------------------------------------------------------------


	DefineMission(7960, "Soul keeping", 1632)

	MisBeginTalk( "In these moments Captain Barbarosa canno't be touched. He is protected by undead souls!") 

	MisBeginCondition(NoMission, 1632)
	MisBeginCondition(HasRecord, 1631)
	MisBeginCondition(NoRecord, 1632)
	MisBeginAction(AddMission, 1632)
	MisBeginAction(AddTrigger, 16321, TE_GETITEM, 2386, 20 )
	MisCancelAction(ClearMission, 1632)


	MisNeed(MIS_NEED_DESP, "Bring me 20 Soul of Undead!")
	MisNeed(MIS_NEED_ITEM, 2386, 10, 20, 10)



	MisHelpTalk("Get the souls which are protecting Captain Barbarosa! I know what to do with them!")
	MisResultTalk("You got them? Great...give them to me and I will destory them! ") 
	MisResultCondition(HasMission, 1632) 
	MisResultCondition(HasItem, 2386, 20)
	MisResultAction(TakeItem, 2386, 20)
	MisResultAction(AddMoney, 4000000)
	MisResultAction(ClearMission, 1632)
	MisResultAction(SetRecord, 1632)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2386 )
	TriggerAction( 1, AddNextFlag, 1632, 10, 10 )
	RegCurTrigger(16321)


------------------------------------------------------------------------------------------------------------------


	DefineMission(7961, "The Captain", 1633)

	MisBeginTalk( "The only thing left to do here is Barborosa. I wish you all the best!") 


	MisBeginCondition(NoMission, 1633)
	MisBeginCondition(HasRecord, 1632)
	MisBeginCondition(NoRecord, 1633)
	MisBeginAction(AddMission, 1633)
	MisBeginAction(AddTrigger, 16331, TE_KILL, 805, 1 )
	MisCancelAction(ClearMission, 1633)

	MisNeed(MIS_NEED_DESP, "Defeat Barborosa in Skeletal Pirate.")
	MisNeed(MIS_NEED_KILL, 805, 1, 10, 1)


	MisHelpTalk("A strong pirate...very strong one. Uhmmmmm...I don't have any idea....!")
	MisResultTalk("Unbelieveable! Barborosa is dead?") 
	MisResultCondition(HasMission, 1633) 
	MisResultCondition(HasFlag, 1633, 10)
	MisResultAction(AddMoney, 10000000)
	MisResultAction(GiveItem, 3457, 4, 1)
	MisResultAction(GiveItem, 3691, 3, 1)
	MisResultAction(ClearMission, 1633)
	MisResultAction(SetRecord, 1633)
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 805 )
	TriggerAction( 1, AddNextFlag, 1633, 10, 1 )
	RegCurTrigger(16331)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7962, "Sailing away", 1634)

	MisBeginTalk( "Everything has sat into it's place. The only thing to do is to sail away!") 
	MisBeginCondition(NoMission, 1634)
	MisBeginCondition(HasRecord, 1633)
	MisBeginCondition(NoRecord, 1634)
	MisBeginAction(AddMission, 1634)
	MisCancelAction(ClearMission, 1634)

	MisNeed(MIS_NEED_DESP, "Talk to Blink(619,965) in Treasure Gulf.")

	MisHelpTalk("Go and talk to the person who brought you here! Tell him for your incredible job here!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7963, "Sailing away", 1634, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Suceeed! With Barborosa? I am impressed!") 
	MisResultCondition(NoRecord, 1634)
	MisResultCondition(HasMission, 1634) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1634)
	MisResultAction(SetRecord, 1634)


-----------------------------------------------------------------------------------------------------------------


	DefineMission(7964, "Nothing left", 1635)

	MisBeginTalk( "Everything has sat into it's place. Nothing left to do now. You shall get back home!") 
	MisBeginCondition(NoMission, 1635)
	MisBeginCondition(HasRecord, 1634)
	MisBeginCondition(NoRecord, 1635)
	MisBeginAction(AddMission, 1635)
	MisCancelAction(ClearMission, 1635)

	MisNeed(MIS_NEED_DESP, "Talk to Job Agency in Argent City.")

	MisHelpTalk("Go and talk to the person who brought you here! Tell him for your incredible job here!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7965, "Nothing left", 1635, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Deathsoul Commander? Barborosa? I got nothing to say pal...I am impressed!") 
	MisResultCondition(NoRecord, 1635)
	MisResultCondition(HasMission, 1635) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultAction(GiveItem, 333, 5, 1)
	MisResultAction(GiveItem, 3878, 5, 1)
	MisResultAction(GiveItem, 3691, 2, 1)
	MisResultAction(GiveItem, 2843, 1, 1)
	MisResultAction(ClearMission, 1635)
	MisResultAction(SetRecord, 1635)
	MisResultBagNeed(5)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7966, "Ambientalising", 1636)

	MisBeginTalk( "Getting known with the Winter Island is very important in proceeding you journey in order to obtain powerful equipments!") 
	MisBeginCondition(NoMission, 1636)
	MisBeginCondition(LvCheck, ">", 89)
	MisBeginCondition(NoRecord, 1636)
	MisBeginAction(AddMission, 1636)
	MisCancelAction(ClearMission, 1636)

	MisNeed(MIS_NEED_DESP, "Talk to Jill(958,1159) in Winter Lake Island in Winter Island.")

	MisHelpTalk("Your mission is to find the Explorers in Winter Island and help them if they need!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7967, "Ambientalising", 1636, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("From the base? Ye...I need help!") 
	MisResultCondition(NoRecord, 1636)
	MisResultCondition(HasMission, 1636) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1636)
	MisResultAction(SetRecord, 1636)

------------------------------------------------------------------------------------------------------------------


	DefineMission(7968, "Kill List - 1", 1637)

	MisBeginTalk( "As in the other islands, I need help to slay the monsters which are interrupting me in my voyage!") 


	MisBeginCondition(NoMission, 1637)
	MisBeginCondition(HasRecord, 1636)
	MisBeginCondition(NoRecord, 1637)
	MisBeginAction(AddMission, 1637)
	MisBeginAction(AddTrigger, 16371, TE_KILL, 1084, 30 )
	MisBeginAction(AddTrigger, 16372, TE_KILL, 1085, 30 )
	MisBeginAction(AddTrigger, 16373, TE_KILL, 1086, 30 )
	MisCancelAction(ClearMission, 1637)

	MisNeed(MIS_NEED_DESP, "Defeat the monsters in east side of Winter Lake Island.")
	MisNeed(MIS_NEED_KILL, 1084, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 1085, 30, 20, 30)
	MisNeed(MIS_NEED_KILL, 1086, 30, 30, 30)



	MisHelpTalk("To get further in my explorations, you should take out of game the monsters which are distracting me!")
	MisResultTalk("You cleaned the way? Yay...I can continue now!") 
	MisResultCondition(HasMission, 1637) 
	MisResultCondition(HasFlag, 1637, 19)
	MisResultCondition(HasFlag, 1637, 29)
	MisResultCondition(HasFlag, 1637, 39)
	MisResultAction(AddMoney, 6000000)
	MisResultAction(ClearMission, 1637)
	MisResultAction(SetRecord, 1637)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1084 )
	TriggerAction( 1, AddNextFlag, 1637, 10, 30 )
	RegCurTrigger(16371)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1085 )
	TriggerAction( 1, AddNextFlag, 1637, 20, 30 )
	RegCurTrigger(16372)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1086 )
	TriggerAction( 1, AddNextFlag, 1637, 30, 30 )
	RegCurTrigger(16373)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7969, "East to West", 1638)

	MisBeginTalk( "Now that the East Site of this island is free ,you shall continue with the West Site!") 
	MisBeginCondition(NoMission, 1638)
	MisBeginCondition(HasRecord, 1637)
	MisBeginCondition(NoRecord, 1638)
	MisBeginAction(AddMission, 1638)
	MisCancelAction(ClearMission, 1638)

	MisNeed(MIS_NEED_DESP, "Talk to Lion(365,1526) in Winter Lake Island in Winter Island.")

	MisHelpTalk("Find my friend in the other side of Island...he is an explorer too!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7970, "East to West", 1638, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Lion sent you? Ok...just in time!") 
	MisResultCondition(NoRecord, 1638)
	MisResultCondition(HasMission, 1638) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1638)
	MisResultAction(SetRecord, 1638)

------------------------------------------------------------------------------------------------------------------


	DefineMission(7971, "Kill List - 2", 1639)

	MisBeginTalk( "As in the other islands, I need help to slay the monsters which are interrupting me in my voyage!") 


	MisBeginCondition(NoMission, 1639)
	MisBeginCondition(HasRecord, 1638)
	MisBeginCondition(NoRecord, 1639)
	MisBeginAction(AddMission, 1639)
	MisBeginAction(AddTrigger, 16391, TE_KILL, 1082, 30 )
	MisBeginAction(AddTrigger, 16392, TE_KILL, 1083, 30 )
	MisCancelAction(ClearMission, 1639)

	MisNeed(MIS_NEED_DESP, "Defeat the monsters in west side of Winter Lake Island.")
	MisNeed(MIS_NEED_KILL, 1082, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 1083, 30, 20, 30)



	MisHelpTalk("To get further in my explorations, you should take out of game the monsters which are distracting me!")
	MisResultTalk("You cleaned the way? Yay...I can continue now!") 
	MisResultCondition(HasMission, 1639) 
	MisResultCondition(HasFlag, 1639, 19)
	MisResultCondition(HasFlag, 1639, 29)
	MisResultAction(AddMoney, 5000000)
	MisResultAction(ClearMission, 1639)
	MisResultAction(SetRecord, 1639)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1082 )
	TriggerAction( 1, AddNextFlag, 1639, 10, 30 )
	RegCurTrigger(16391)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1083 )
	TriggerAction( 1, AddNextFlag, 1639, 20, 30 )
	RegCurTrigger(16392)

------------------------------------------------------------------------------------------------------------------


	DefineMission(7972, "The Dragon From Stone", 1640)

	MisBeginTalk( "The only thing left to do here is Stone Dragon Lord. I wish you all the best!") 


	MisBeginCondition(NoMission, 1640)
	MisBeginCondition(HasRecord, 1639)
	MisBeginCondition(NoRecord, 1640)
	MisBeginAction(AddMission, 1640)
	MisBeginAction(AddTrigger, 16401, TE_KILL, 1099, 1 )
	MisCancelAction(ClearMission, 1640)

	MisNeed(MIS_NEED_DESP, "Defeat Stone Dragon Lord in Winter Lake Island in Winter Island.")
	MisNeed(MIS_NEED_KILL, 1099, 1, 10, 1)


	MisHelpTalk("A strong dragon...very strong one. Uhmmmmm...I don't have any idea....!")
	MisResultTalk("Unbelieveable! Stone Dragon Lord is dead?") 
	MisResultCondition(HasMission, 1640) 
	MisResultCondition(HasFlag, 1640, 10)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultAction(AddMoney, 10000000)
	MisResultAction(ClearMission, 1640)
	MisResultAction(SetRecord, 1640)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1099 )
	TriggerAction( 1, AddNextFlag, 1640, 10, 1 )
	RegCurTrigger(16401)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7973, "Snow Kara Isle", 1641)

	MisBeginTalk( "Now that the Winter Lake Island is free ,you shall continue with the other Island!") 
	MisBeginCondition(NoMission, 1641)
	MisBeginCondition(HasRecord, 1640)
	MisBeginCondition(NoRecord, 1641)
	MisBeginAction(AddMission, 1641)
	MisCancelAction(ClearMission, 1641)

	MisNeed(MIS_NEED_DESP, "Talk to Winston(472,531) in Snow Kara Isle in Winter Island.")

	MisHelpTalk("Find my friend in the Snow Kara Isle...he is an explorer too!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7974, "Snow Kara Isle", 1641, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Somebody came at last!") 
	MisResultCondition(NoRecord, 1641)
	MisResultCondition(HasMission, 1641) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1641)
	MisResultAction(SetRecord, 1641)


------------------------------------------------------------------------------------------------------------------


	DefineMission(7975, "Kill List - 3", 1642)

	MisBeginTalk( "As in the other islands, I need help to slay the monsters which are interrupting me in my voyage!") 


	MisBeginCondition(NoMission, 1642)
	MisBeginCondition(HasRecord, 1641)
	MisBeginCondition(NoRecord, 1642)
	MisBeginAction(AddMission, 1642)
	MisBeginAction(AddTrigger, 16421, TE_KILL, 1087, 30 )
	MisBeginAction(AddTrigger, 16422, TE_KILL, 1089, 30 )
	MisBeginAction(AddTrigger, 16423, TE_KILL, 1090, 30 )
	MisBeginAction(AddTrigger, 16424, TE_KILL, 1091, 30 )
	MisCancelAction(ClearMission, 1642)

	MisNeed(MIS_NEED_DESP, "Defeat the monsters in Snow Kara Isle.")
	MisNeed(MIS_NEED_KILL, 1087, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 1089, 30, 20, 30)
	MisNeed(MIS_NEED_KILL, 1090, 30, 30, 30)
	MisNeed(MIS_NEED_KILL, 1091, 30, 40, 30)



	MisHelpTalk("To get further in my explorations, you should take out of game the monsters which are distracting me!")
	MisResultTalk("You cleaned the way? Yay...I can continue now!") 
	MisResultCondition(HasMission, 1642) 
	MisResultCondition(HasFlag, 1642, 19)
	MisResultCondition(HasFlag, 1642, 29)
	MisResultCondition(HasFlag, 1642, 39)
	MisResultCondition(HasFlag, 1642, 49)
	MisResultAction(AddMoney, 7000000)
	MisResultAction(ClearMission, 1642)
	MisResultAction(SetRecord, 1642)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1087 )
	TriggerAction( 1, AddNextFlag, 1642, 10, 30 )
	RegCurTrigger(16421)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1089 )
	TriggerAction( 1, AddNextFlag, 1642, 20, 30 )
	RegCurTrigger(16422)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1090 )
	TriggerAction( 1, AddNextFlag, 1642, 30, 30 )
	RegCurTrigger(16423)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1091 )
	TriggerAction( 1, AddNextFlag, 1642, 40, 30 )
	RegCurTrigger(16424)

-----------------------------------------------------------------------------------------------------------------


	DefineMission(7976, "Snow Ville Isle", 1643)

	MisBeginTalk( "Now that the Snow Kara Isle is free ,you shall continue with the other Island!") 
	MisBeginCondition(NoMission, 1643)
	MisBeginCondition(HasRecord, 1642)
	MisBeginCondition(NoRecord, 1643)
	MisBeginAction(AddMission, 1643)
	MisCancelAction(ClearMission, 1643)

	MisNeed(MIS_NEED_DESP, "Talk to Chris(1147,403) in Snow Ville Isle in Winter Island.")

	MisHelpTalk("Find my friend in the Snow Ville Isle...he is an explorer too!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7977, "Snow Ville Isle", 1643, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Somebody came at last!") 
	MisResultCondition(NoRecord, 1643)
	MisResultCondition(HasMission, 1643) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1643)
	MisResultAction(SetRecord, 1643)


------------------------------------------------------------------------------------------------------------------


	DefineMission(7978, "Kill List - 4", 1644)

	MisBeginTalk( "As in the other islands, I need help to slay the monsters which are interrupting me in my voyage!") 


	MisBeginCondition(NoMission, 1644)
	MisBeginCondition(HasRecord, 1643)
	MisBeginCondition(NoRecord, 1644)
	MisBeginAction(AddMission, 1644)
	MisBeginAction(AddTrigger, 16441, TE_KILL, 1088, 30 )
	MisBeginAction(AddTrigger, 16442, TE_KILL, 1092, 30 )
	MisCancelAction(ClearMission, 1644)

	MisNeed(MIS_NEED_DESP, "Defeat the monsters in Snow Ville Isle.")
	MisNeed(MIS_NEED_KILL, 1088, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 1092, 30, 20, 30)



	MisHelpTalk("To get further in my explorations, you should take out of game the monsters which are distracting me!")
	MisResultTalk("You cleaned the way? Yay...I can continue now!") 
	MisResultCondition(HasMission, 1644) 
	MisResultCondition(HasFlag, 1644, 19)
	MisResultCondition(HasFlag, 1644, 29)
	MisResultAction(AddMoney, 5000000)
	MisResultAction(ClearMission, 1644)
	MisResultAction(SetRecord, 1644)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1088 )
	TriggerAction( 1, AddNextFlag, 1644, 10, 30 )
	RegCurTrigger(16441)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1092 )
	TriggerAction( 1, AddNextFlag, 1644, 20, 30 )
	RegCurTrigger(16442)


------------------------------------------------------------------------------------------------------------------


	DefineMission(7979, "The Armored Leopard", 1645)

	MisBeginTalk( "The only thing left to do here is Evil Snow Leopard. I wish you all the best!") 


	MisBeginCondition(NoMission, 1645)
	MisBeginCondition(HasRecord, 1644)
	MisBeginCondition(NoRecord, 1645)
	MisBeginAction(AddMission, 1645)
	MisBeginAction(AddTrigger, 16451, TE_KILL, 1100, 1 )
	MisCancelAction(ClearMission, 1645)

	MisNeed(MIS_NEED_DESP, "Defeat Evil Snow Leopard in Snow Ville Isle in Winter Island.")
	MisNeed(MIS_NEED_KILL, 1100, 1, 10, 1)


	MisHelpTalk("A strong leopard...very strong one. Uhmmmmm...I don't have any idea....!")
	MisResultTalk("Unbelieveable! Evil Snow Leopard is dead?") 
	MisResultCondition(HasMission, 1645) 
	MisResultCondition(HasFlag, 1645, 10)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultAction(AddMoney, 10000000)
	MisResultAction(ClearMission, 1645)
	MisResultAction(SetRecord, 1645)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1100 )
	TriggerAction( 1, AddNextFlag, 1645, 10, 1 )
	RegCurTrigger(16451)


-----------------------------------------------------------------------------------------------------------------


	DefineMission(7980, "Ice-Covered Island", 1646)

	MisBeginTalk( "Now that the Snow Ville Isle is free ,you shall continue with the other Island!") 
	MisBeginCondition(NoMission, 1646)
	MisBeginCondition(HasRecord, 1645)
	MisBeginCondition(NoRecord, 1646)
	MisBeginAction(AddMission, 1646)
	MisCancelAction(ClearMission, 1646)

	MisNeed(MIS_NEED_DESP, "Talk to Sarcosi(1440,1268) in Ice-Covered Island in Winter Island.")

	MisHelpTalk("Find my friend in the Ice-Covered Island...he is the head explorer!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7981, "Ice-Covered Island", 1646, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("I didn't ask for help...but, now that you camed, you will help me!") 
	MisResultCondition(NoRecord, 1646)
	MisResultCondition(HasMission, 1646) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1646)
	MisResultAction(SetRecord, 1646)

------------------------------------------------------------------------------------------------------------------


	DefineMission(7982, "Kill List - 5", 1647)

	MisBeginTalk( "As in the other islands, I need help to slay the monsters which are interrupting me in my voyage!") 


	MisBeginCondition(NoMission, 1647)
	MisBeginCondition(HasRecord, 1646)
	MisBeginCondition(NoRecord, 1647)
	MisBeginAction(AddMission, 1647)
	MisBeginAction(AddTrigger, 16471, TE_KILL, 1093, 30 )
	MisBeginAction(AddTrigger, 16472, TE_KILL, 1094, 30 )
	MisBeginAction(AddTrigger, 16473, TE_KILL, 1095, 30 )
	MisBeginAction(AddTrigger, 16474, TE_KILL, 1096, 30 )
	MisBeginAction(AddTrigger, 16475, TE_KILL, 1097, 30 )
	MisBeginAction(AddTrigger, 16476, TE_KILL, 1098, 30 )
	MisCancelAction(ClearMission, 1647)

	MisNeed(MIS_NEED_DESP, "Defeat the monsters in Ice-Covered Island.")
	MisNeed(MIS_NEED_KILL, 1093, 30, 19, 30)
	MisNeed(MIS_NEED_KILL, 1094, 30, 20, 30)
	MisNeed(MIS_NEED_KILL, 1095, 30, 30, 30)
	MisNeed(MIS_NEED_KILL, 1096, 30, 40, 30)
	MisNeed(MIS_NEED_KILL, 1097, 30, 50, 30)
	MisNeed(MIS_NEED_KILL, 1098, 30, 60, 30)



	MisHelpTalk("To get further in my explorations, you should take out of game the monsters which are distracting me!")
	MisResultTalk("You cleaned the way? We shall continue now!") 
	MisResultCondition(HasMission, 1647) 
	MisResultCondition(HasFlag, 1647, 19)
	MisResultCondition(HasFlag, 1647, 29)
	MisResultCondition(HasFlag, 1647, 39)
	MisResultCondition(HasFlag, 1647, 49)
	MisResultCondition(HasFlag, 1647, 59)
	MisResultCondition(HasFlag, 1647, 69)
	MisResultAction(AddMoney, 20000000)
	MisResultAction(ClearMission, 1647)
	MisResultAction(SetRecord, 1647)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1093 )
	TriggerAction( 1, AddNextFlag, 1647, 19, 30 )
	RegCurTrigger(16471)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1094 )
	TriggerAction( 1, AddNextFlag, 1647, 29, 30 )
	RegCurTrigger(16472)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 1095 )
	TriggerAction( 1, AddNextFlag, 1647, 39, 30 )
	RegCurTrigger(16473)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1096 )
	TriggerAction( 1, AddNextFlag, 1647, 49, 30 )
	RegCurTrigger(16474)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1097 )
	TriggerAction( 1, AddNextFlag, 1647, 59, 30 )
	RegCurTrigger(16475)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1098 )
	TriggerAction( 1, AddNextFlag, 1647, 69, 30 )
	RegCurTrigger(16476)

------------------------------------------------------------------------------------------------------------------

	DefineMission(7983, "The Sword Soul", 1648)

	MisBeginTalk( "The only thing left to do here is Icy Soul Lord. I wish you all the best!") 


	MisBeginCondition(NoMission, 1648)
	MisBeginCondition(HasRecord, 1800)
	MisBeginCondition(NoRecord, 1648)
	MisBeginAction(AddMission, 1648)
	MisBeginAction(AddTrigger, 16481, TE_KILL, 1101, 1 )
	MisCancelAction(ClearMission, 1648)

	MisNeed(MIS_NEED_DESP, "Defeat Icy Soul Lord in Ice-Covered Island in Winter Island.")
	MisNeed(MIS_NEED_KILL, 1101, 1, 10, 1)


	MisHelpTalk("A strong soul...very strong one. Uhmmmmm...I don't have any idea....!")
	MisResultTalk("Unbelieveable! Icy Soul Lord is dead?") 
	MisResultCondition(HasMission, 1648) 
	MisResultCondition(HasFlag, 1648, 10)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultAction(AddMoney, 10000000)
	MisResultAction(ClearMission, 1648)
	MisResultAction(SetRecord, 1648)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 1101 )
	TriggerAction( 1, AddNextFlag, 1648, 10, 1 )
	RegCurTrigger(16481)



-----------------------------------------------------------------------------------------------------------------


	DefineMission(7984, "Base Reporting", 1649)

	MisBeginTalk( "This was the last Island, and you suceed. You shall get back and report your great job!") 
	MisBeginCondition(NoMission, 1649)
	MisBeginCondition(HasRecord, 1647)
	MisBeginCondition(NoRecord, 1649)
	MisBeginAction(AddMission, 1649)
	MisCancelAction(ClearMission, 1649)

	MisNeed(MIS_NEED_DESP, "Talk to Leyla(229,910) in Winter Moon Island in Winter Island.")

	MisHelpTalk("Report back to Winter Moon Island!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7985, "Base Reporting", 1649, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Everything done? I am impressed!") 
	MisResultCondition(NoRecord, 1649)
	MisResultCondition(HasMission, 1649) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1649)
	MisResultAction(SetRecord, 1649)


-----------------------------------------------------------------------------------------------------------------


DefineMission(7986, "Goddess Approachment", 1650)

MisBeginTalk( "In order to get one of the part from Unseal 95...you shall complete this quest! ") 


MisBeginCondition(NoMission, 1650)
MisBeginCondition(HasRecord, 1649)
MisBeginCondition(NoRecord, 1650)
MisBeginAction(AddMission, 1650)
MisBeginAction(AddTrigger, 16501, TE_GETITEM, 3688, 2 )
MisBeginAction(AddTrigger, 16502, TE_GETITEM, 3689, 50 )
MisBeginAction(AddTrigger, 16503, TE_GETITEM, 3690, 50 )
MisBeginAction(AddTrigger, 16504, TE_GETITEM, 6231, 30 )
MisBeginAction(AddTrigger, 16505, TE_GETITEM, 6232, 30 )
MisBeginAction(AddTrigger, 16506, TE_GETITEM, 6233, 30 )
MisBeginAction(AddTrigger, 16507, TE_GETITEM, 6234, 30 )
MisCancelAction(ClearMission, 1650)

MisNeed(MIS_NEED_DESP, "The items need are located in Aurora and Dark Maze...they're contained by strong and weak terrifying monsters!")
MisNeed(MIS_NEED_ITEM, 3688, 2, 10, 2)
MisNeed(MIS_NEED_ITEM, 3689, 50, 20, 50)
MisNeed(MIS_NEED_ITEM, 3690, 50, 30, 50)
MisNeed(MIS_NEED_ITEM, 6231, 30, 40, 30)
MisNeed(MIS_NEED_ITEM, 6232, 30, 50, 30)
MisNeed(MIS_NEED_ITEM, 6233, 30, 60, 30)
MisNeed(MIS_NEED_ITEM, 6234, 30, 70, 30)

MisHelpTalk("You will need to work in Aurora and Dark Maze for a while...items are located there!")
MisResultTalk("You have served me well...You shall recieve you reward now") 
MisResultCondition(HasMission, 1650) 
MisResultCondition(HasItem, 3688, 2)
MisResultCondition(HasItem, 3689, 50)
MisResultCondition(HasItem, 3690, 50)
MisResultCondition(HasItem, 6231, 30)
MisResultCondition(HasItem, 6232, 30)
MisResultCondition(HasItem, 6233, 30)
MisResultCondition(HasItem, 6234, 30)
MisResultAction(TakeItem, 3688, 2)
MisResultAction(TakeItem, 3689, 50)
MisResultAction(TakeItem, 3690, 50)
MisResultAction(TakeItem, 6231, 30)
MisResultAction(TakeItem, 6232, 30)
MisResultAction(TakeItem, 6233, 30)
MisResultAction(TakeItem, 6234, 30)
MisResultAction(GiveItem, 3692, 1, 1)
MisResultAction(ClearMission, 1650)
MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 3688 )
TriggerAction( 1, AddNextFlag, 1650, 10, 2 )
RegCurTrigger(16501)

InitTrigger()
TriggerCondition( 1, IsItem, 3689 )
TriggerAction( 1, AddNextFlag, 1650, 20, 50 )
RegCurTrigger(16502)

InitTrigger()
TriggerCondition( 1, IsItem, 3690 )
TriggerAction( 1, AddNextFlag, 1650, 30, 50 )
RegCurTrigger(16503)

InitTrigger()
TriggerCondition( 1, IsItem, 6231 )
TriggerAction( 1, AddNextFlag, 1650, 40, 30 )
RegCurTrigger(16504)

InitTrigger()
TriggerCondition( 1, IsItem, 6232 )
TriggerAction( 1, AddNextFlag, 1650, 50, 30 )
RegCurTrigger(16505)

InitTrigger()
TriggerCondition( 1, IsItem, 6233 )
TriggerAction( 1, AddNextFlag, 1650, 60, 30 )
RegCurTrigger(16506)

InitTrigger()
TriggerCondition( 1, IsItem, 6234 )
TriggerAction( 1, AddNextFlag, 1650, 70, 30 )
RegCurTrigger(16507)


------------------------------------------------------------------------------------------------------------


	DefineMission(7987, "Abaddon", 1651)

	MisBeginTalk( "The evil forces are back! Before it's too late we have to stop them!") 
	MisBeginCondition(NoMission, 1651)
	MisBeginCondition(HasRecord, 1647)
	MisBeginCondition(NoRecord, 1651)
	MisBeginAction(AddMission, 1651)
	MisCancelAction(ClearMission, 1651)

	MisNeed(MIS_NEED_DESP, "Talk to Abaddon 1 Warden(199,824) in Abaddon.")

	MisHelpTalk("Go to Abaddon and look for any human. They will lead the way!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7988, "Abaddon", 1651, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Stranger. This is the end, get ready!") 
	MisResultCondition(NoRecord, 1651)
	MisResultCondition(HasMission, 1651) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1651)
	MisResultAction(SetRecord, 1651)

------------------------------------------------------------------------------------------------------------

	DefineMission(7989, "The skeleton slayer!", 1652)

	MisBeginTalk( "These skeletons are the guards of the Hardin! Take them down!") 


	MisBeginCondition(NoMission, 1652)
	MisBeginCondition(HasRecord, 1651)
	MisBeginCondition(NoRecord, 1652)
	MisBeginAction(AddMission, 1652)
	MisBeginAction(AddTrigger, 16521, TE_KILL, 821, 30 )
	MisBeginAction(AddTrigger, 16522, TE_KILL, 822, 30 )

	MisCancelAction(ClearMission, 1652)

	MisNeed(MIS_NEED_DESP, "Defeat the skeletons in Abaddon level 1.")
	MisNeed(MIS_NEED_KILL, 821, 30, 19, 30)
	MisNeed(MIS_NEED_KILL, 822, 30, 20, 30)




	MisHelpTalk("Getting further isn't easy at all with all these skeletons around!")
	MisResultTalk("You cleaned the way? We shall continue now!") 
	MisResultCondition(HasMission, 1652) 
	MisResultCondition(HasFlag, 1652, 19)
	MisResultCondition(HasFlag, 1652, 29)
	MisResultAction(AddMoney, 10000000)
	MisResultAction(ClearMission, 1652)
	MisResultAction(SetRecord, 1652)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 821 )
	TriggerAction( 1, AddNextFlag, 1652, 19, 30 )
	RegCurTrigger(16521)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 822 )
	TriggerAction( 1, AddNextFlag, 1652, 29, 30 )
	RegCurTrigger(16522)

	
------------------------------------------------------------------------------------------------------------


	DefineMission(7990, "Level 2", 1653)

	MisBeginTalk( "The random soldiers are defeated! But that will lead us to stonger ones!") 
	MisBeginCondition(NoMission, 1653)
	MisBeginCondition(HasRecord, 1652)
	MisBeginCondition(NoRecord, 1653)
	MisBeginAction(AddMission, 1653)
	MisCancelAction(ClearMission, 1653)

	MisNeed(MIS_NEED_DESP, "Talk to Abaddon 2 Warden(90,816) in Abaddon.")

	MisHelpTalk("Move to next Abaddon level and you will find the last human there!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7991, "Level 2", 1653, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Stranger. What happened to skeletons?!") 
	MisResultCondition(NoRecord, 1653)
	MisResultCondition(HasMission, 1653) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1653)
	MisResultAction(SetRecord, 1653)


------------------------------------------------------------------------------------------------------------

	DefineMission(7992, "The mummy raper!", 1654)

	MisBeginTalk( "These mummies are the magical shamans of the Hardin! Take them down!") 


	MisBeginCondition(NoMission, 1654)
	MisBeginCondition(HasRecord, 1653)
	MisBeginCondition(NoRecord, 1654)
	MisBeginAction(AddMission, 1654)
	MisBeginAction(AddTrigger, 16541, TE_KILL, 823, 30 )
	MisBeginAction(AddTrigger, 16542, TE_KILL, 824, 30 )

	MisCancelAction(ClearMission, 1654)

	MisNeed(MIS_NEED_DESP, "Defeat the mummies in Abaddon level 2.")
	MisNeed(MIS_NEED_KILL, 823, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 824, 30, 20, 30)




	MisHelpTalk("Getting further isn't easy at all with all these mummies around!")
	MisResultTalk("You cleaned the way? We shall continue now!") 
	MisResultCondition(HasMission, 1654) 
	MisResultCondition(HasFlag, 1654, 10)
	MisResultCondition(HasFlag, 1654, 20)
	MisResultAction(AddMoney, 15000000)
	MisResultAction(ClearMission, 1654)
	MisResultAction(SetRecord, 1654)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 823 )
	TriggerAction( 1, AddNextFlag, 1654, 10, 30 )
	RegCurTrigger(16541)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 824 )
	TriggerAction( 1, AddNextFlag, 1654, 20, 30 )
	RegCurTrigger(16542)

------------------------------------------------------------------------------------------------------------


	DefineMission(7993, "Level 3", 1655)

	MisBeginTalk( "The mummies are defeated! But that will lead us to stonger ones!") 
	MisBeginCondition(NoMission, 1655)
	MisBeginCondition(HasRecord, 1654)
	MisBeginCondition(NoRecord, 1655)
	MisBeginAction(AddMission, 1655)
	MisCancelAction(ClearMission, 1655)

	MisNeed(MIS_NEED_DESP, "Talk to Abaddon 3 Warden(71,956) in Abaddon.")

	MisHelpTalk("Move to next Abaddon level and you will find the last human there!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7994, "Level 3", 1655, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Stranger. What happened to mummies?!") 
	MisResultCondition(NoRecord, 1655)
	MisResultCondition(HasMission, 1655) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1655)
	MisResultAction(SetRecord, 1655)

------------------------------------------------------------------------------------------------------------

	DefineMission(7995, "The corpse killer!", 1656)

	MisBeginTalk( "These corpses are the undead army of the Hardin! Takes them down!") 


	MisBeginCondition(NoMission, 1656)
	MisBeginCondition(HasRecord, 1655)
	MisBeginCondition(NoRecord, 1656)
	MisBeginAction(AddMission, 1656)
	MisBeginAction(AddTrigger, 16561, TE_KILL, 825, 30 )
	MisBeginAction(AddTrigger, 16562, TE_KILL, 826, 30 )

	MisCancelAction(ClearMission, 1656)

	MisNeed(MIS_NEED_DESP, "Defeat the corpses in Abaddon level 3.")
	MisNeed(MIS_NEED_KILL, 825, 30, 19, 30)
	MisNeed(MIS_NEED_KILL, 826, 30, 20, 30)




	MisHelpTalk("Getting further isn't easy at all with all these corpses around!")
	MisResultTalk("You cleaned the way? We shall continue now!") 
	MisResultCondition(HasMission, 1656) 
	MisResultCondition(HasFlag, 1656, 19)
	MisResultCondition(HasFlag, 1656, 29)
	MisResultAction(AddMoney, 20000000)
	MisResultAction(ClearMission, 1656)
	MisResultAction(SetRecord, 1656)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 825 )
	TriggerAction( 1, AddNextFlag, 1656, 19, 30 )
	RegCurTrigger(16561)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 826 )
	TriggerAction( 1, AddNextFlag, 1656, 29, 30 )
	RegCurTrigger(16562)


------------------------------------------------------------------------------------------------------------


	DefineMission(7996, "Level 4", 1657)

	MisBeginTalk( "The corpses are defeated! But that will lead us to stonger ones!") 
	MisBeginCondition(NoMission, 1657)
	MisBeginCondition(HasRecord, 1656)
	MisBeginCondition(NoRecord, 1657)
	MisBeginAction(AddMission, 1657)
	MisCancelAction(ClearMission, 1657)

	MisNeed(MIS_NEED_DESP, "Talk to Abaddon 4 Warden(90,816) in Abaddon.")

	MisHelpTalk("Move to next Abaddon level and you will find the last human there!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(7997, "Level 4", 1657, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Stranger. What happened to corpses?!") 
	MisResultCondition(NoRecord, 1657)
	MisResultCondition(HasMission, 1657) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1657)
	MisResultAction(SetRecord, 1657)

------------------------------------------------------------------------------------------------------------

	DefineMission(7998, "The paraoh destroyer!", 1658)

	MisBeginTalk( "These paraohs are the elite guards of the Hardin! Takes them down!") 


	MisBeginCondition(NoMission, 1658)
	MisBeginCondition(HasRecord, 1657)
	MisBeginCondition(NoRecord, 1658)
	MisBeginAction(AddMission, 1658)
	MisBeginAction(AddTrigger, 16581, TE_KILL, 827, 30 )
	MisBeginAction(AddTrigger, 16582, TE_KILL, 828, 30 )

	MisCancelAction(ClearMission, 1658)

	MisNeed(MIS_NEED_DESP, "Defeat the paraphs in Abaddon level 4.")
	MisNeed(MIS_NEED_KILL, 827, 30, 19, 30)
	MisNeed(MIS_NEED_KILL, 828, 30, 20, 30)




	MisHelpTalk("Getting further isn't easy at all with all these paraohs around!")
	MisResultTalk("You cleaned the way? We shall continue now!") 
	MisResultCondition(HasMission, 1658) 
	MisResultCondition(HasFlag, 1658, 19)
	MisResultCondition(HasFlag, 1658, 29)
	MisResultAction(AddMoney, 25000000)
	MisResultAction(ClearMission, 1658)
	MisResultAction(SetRecord, 1658)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 827 )
	TriggerAction( 1, AddNextFlag, 1658, 19, 30 )
	RegCurTrigger(16581)

	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 828 )
	TriggerAction( 1, AddNextFlag, 1658, 29, 30 )
	RegCurTrigger(16582)

------------------------------------------------------------------------------------------------------------


	DefineMission(7999, "Purtagory", 1659)

	MisBeginTalk( "The paraohs are defeated! The guards are dead. You must continue with Purtagory! Look for some help in there.") 
	MisBeginCondition(NoMission, 1659)
	MisBeginCondition(HasRecord, 1658)
	MisBeginCondition(NoRecord, 1659)
	MisBeginAction(AddMission, 1659)
	MisCancelAction(ClearMission, 1659)

	MisNeed(MIS_NEED_DESP, "Talk to Lurie(105,40) in Purtagory.")

	MisHelpTalk("Move to next Abaddon level and you will find the last human there!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(8000, "Purtagory", 1659, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Stranger. What happened to paraohs and others? They're dead?!") 
	MisResultCondition(NoRecord, 1659)
	MisResultCondition(HasMission, 1659) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1659)
	MisResultAction(SetRecord, 1659)

------------------------------------------------------------------------------------------------------------

	DefineMission(8001, "Despair Knight - Saro!", 1660)

	MisBeginTalk( "You see that knight over there? That horryfic one? Right...take him down!") 


	MisBeginCondition(NoMission, 1660)
	MisBeginCondition(HasRecord, 1659)
	MisBeginCondition(NoRecord, 1660)
	MisBeginAction(AddMission, 1660)
	MisBeginAction(AddTrigger, 16601, TE_KILL, 974, 1 )

	MisCancelAction(ClearMission, 1660)

	MisNeed(MIS_NEED_DESP, "Defeat Despair Knight - Saro in Purtagory.")
	MisNeed(MIS_NEED_KILL, 974, 1, 19, 1)




	MisHelpTalk("In order to proceed, that creature must die!")
	MisResultTalk("You killed the creature?!") 
	MisResultCondition(HasMission, 1660) 
	MisResultCondition(HasFlag, 1660, 19)
	MisResultAction(AddMoney, 25000000)
	MisResultAction(ClearMission, 1660)
	MisResultAction(SetRecord, 1660)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 974 )
	TriggerAction( 1, AddNextFlag, 1660, 19, 1 )
	RegCurTrigger(16601)


------------------------------------------------------------------------------------------------------------

	DefineMission(8002, "Abyss Mudmonster - Karu!", 1661)

	MisBeginTalk( "Can you smell it? Of course you do. A giant moving mud is causing the sell!") 


	MisBeginCondition(NoMission, 1661)
	MisBeginCondition(HasRecord, 1660)
	MisBeginCondition(NoRecord, 1661)
	MisBeginAction(AddMission, 1661)
	MisBeginAction(AddTrigger, 16611, TE_KILL, 975, 1 )

	MisCancelAction(ClearMission, 1661)

	MisNeed(MIS_NEED_DESP, "Defeat Abyss Mudmonster - Karu in Purtagory.")
	MisNeed(MIS_NEED_KILL, 975, 1, 19, 1)




	MisHelpTalk("In order to proceed, that creature must die!")
	MisResultTalk("You killed the creature?!") 
	MisResultCondition(HasMission, 1661) 
	MisResultCondition(HasFlag, 1661, 19)
	MisResultAction(AddMoney, 25000000)
	MisResultAction(ClearMission, 1661)
	MisResultAction(SetRecord, 1661)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 975 )
	TriggerAction( 1, AddNextFlag, 1661, 19, 1 )
	RegCurTrigger(16611)

------------------------------------------------------------------------------------------------------------

	DefineMission(8003, "Abyss Prisoner - Aruthur!", 1662)

	MisBeginTalk( "You feel the strength? Well it's coming from a prisoner who escaped from jail!") 


	MisBeginCondition(NoMission, 1662)
	MisBeginCondition(HasRecord, 1661)
	MisBeginCondition(NoRecord, 1662)
	MisBeginAction(AddMission, 1662)
	MisBeginAction(AddTrigger, 16621, TE_KILL, 976, 1 )

	MisCancelAction(ClearMission, 1662)

	MisNeed(MIS_NEED_DESP, "Defeat Abyss Prisoner - Aruthur in Purtagory.")
	MisNeed(MIS_NEED_KILL, 976, 1, 19, 1)




	MisHelpTalk("In order to proceed, that creature must die!")
	MisResultTalk("You killed the creature?!") 
	MisResultCondition(HasMission, 1662) 
	MisResultCondition(HasFlag, 1662, 19)
	MisResultAction(AddMoney, 25000000)
	MisResultAction(ClearMission, 1662)
	MisResultAction(SetRecord, 1662)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 976 )
	TriggerAction( 1, AddNextFlag, 1662, 19, 1 )
	RegCurTrigger(16621)


------------------------------------------------------------------------------------------------------------

	DefineMission(8004, "Abyss Demon - Sacrois!", 1663)

	MisBeginTalk( "The death is near! Or I should say the demon itself!") 


	MisBeginCondition(NoMission, 1663)
	MisBeginCondition(HasRecord, 1662)
	MisBeginCondition(NoRecord, 1663)
	MisBeginAction(AddMission, 1663)
	MisBeginAction(AddTrigger, 16631, TE_KILL, 977, 1 )

	MisCancelAction(ClearMission, 1663)

	MisNeed(MIS_NEED_DESP, "Defeat Abyss Demon - Sacrois in Purtagory.")
	MisNeed(MIS_NEED_KILL, 977, 1, 19, 1)




	MisHelpTalk("In order to proceed, that creature must die!")
	MisResultTalk("You killed the creature?!") 
	MisResultCondition(HasMission, 1663) 
	MisResultCondition(HasFlag, 1663, 19)
	MisResultAction(AddMoney, 25000000)
	MisResultAction(ClearMission, 1663)
	MisResultAction(SetRecord, 1663)
	MisResultAction(GiveItem, 3457, 2, 1)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 977 )
	TriggerAction( 1, AddNextFlag, 1663, 19, 1 )
	RegCurTrigger(16631)


------------------------------------------------------------------------------------------------------------

	DefineMission(8005, "Abyss Lord - Hardin!", 1664)

	MisBeginTalk( "Oh mighty God! The Hardin himself is raised! You have released the beast on it! God be with you!") 


	MisBeginCondition(NoMission, 1664)
	MisBeginCondition(HasRecord, 1663)
	MisBeginCondition(NoRecord, 1664)
	MisBeginCondition(HasItem, 3691, 8)
	MisBeginAction(TakeItem, 3691, 8)
	MisBeginAction(AddMission, 1664)
	MisBeginAction(AddTrigger, 16641, TE_KILL, 987, 1 )

	MisCancelAction(ClearMission, 1664)

	MisNeed(MIS_NEED_DESP, "Defeat Abyss Lord - Hardin in Gates of Despair.")
	MisNeed(MIS_NEED_KILL, 987, 1, 19, 1)




	MisHelpTalk("The strongest, hardest, terrifiest creature that have ever lived. The Hardin himself!")
	MisResultTalk("Whaaaaaaaaaaaat?! Abyss Lord - Hardin is dead?! Thank you God! Do you have any idea what does this means for you? You will be covered in gold!") 
	MisResultCondition(HasMission, 1664) 
	MisResultCondition(HasFlag, 1664, 19)
	MisResultAction(AddMoney, 50000000)
	MisResultAction(ClearMission, 1664)
	MisResultAction(SetRecord, 1664)
	MisResultAction(GiveItem, 3457, 4, 1)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 987 )
	TriggerAction( 1, AddNextFlag, 1664, 19, 1 )
	RegCurTrigger(16641)


------------------------------------------------------------------------------------------------------------


	DefineMission(8006, "The mighty tale of Hardin slayer!", 1665)

	MisBeginTalk( "The paraohs are defeated! The guards are dead. You must continue with Purtagory! Look for some help in there.") 
	MisBeginCondition(NoMission, 1665)
	MisBeginCondition(HasRecord, 1664)
	MisBeginCondition(NoRecord, 1665)
	MisBeginAction(AddMission, 1665)
	MisCancelAction(ClearMission, 1665)

	MisNeed(MIS_NEED_DESP, "Talk to Lurie(105,40) in Purtagory.")

	MisHelpTalk("Move to next Abaddon level and you will find the last human there!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(8007, "The mighty tale of Hardin slayer!", 1665, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Stranger. What happened to paraohs and others? They're dead?!") 
	MisResultCondition(NoRecord, 1665)
	MisResultCondition(HasMission, 1665) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 1665)
	MisResultAction(SetRecord, 1665)
	MisResultAction(GiveItem, 3767, 3, 1)
	MisResultAction(GiveItem, 3768, 2, 1)
	MisResultAction(GiveItem, 3877, 5, 1)
	MisResultBagNeed(3)

------------------------------------------------------------------------------------------------------------


	DefineMission(8500, "Another World", 2000)

	MisBeginTalk( "Hello again my favourite employee. Hope you are ready for some other adventures, because you are going to Dream Island!") 
	MisBeginCondition(NoMission, 2000)
	MisBeginCondition( LvCheck, ">", 99)
	MisBeginCondition(NoRecord, 2000)
	MisBeginAction(AddMission, 2000)
	MisCancelAction(ClearMission, 2000)

	MisNeed(MIS_NEED_DESP, "Talk to Jack(408,599) in Dream City.")

	MisHelpTalk("Go to Dream City and look for anything suspicious. Talk to any official if you can!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(8501, "Another World", 2000, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("From Argent City? Well...welcome my friend, how may I help you ?!") 
	MisResultCondition(NoRecord, 2000)
	MisResultCondition(HasMission, 2000) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 2000)
	MisResultAction(SetRecord, 2000)

------------------------------------------------------------------------------------------------------------


	DefineMission(8502, "Easy Things First", 2001)

	MisBeginTalk( "Well...our citizens are a bit conserned about the economy in our city. But, our local government have a plan how to get that fixed! Have a look around and look for any problem!") 
	MisBeginCondition(NoMission, 2001)
	MisBeginCondition(HasRecord, 2000)
	MisBeginCondition(NoRecord, 2001)
	MisBeginAction(AddMission, 2001)
	MisCancelAction(ClearMission, 2001)

	MisNeed(MIS_NEED_DESP, "Talk to Patrick(393,626) in Dream City.")

	MisHelpTalk("Look that child over there, check out what's wrong with him!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(8503, "Easy Things First", 2001, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("My...ball is gone...please help me!") 
	MisResultCondition(NoRecord, 2001)
	MisResultCondition(HasMission, 2001) 
	MisResultAction(AddMoney, 500000)
	MisResultAction(ClearMission, 2001)
	MisResultAction(SetRecord, 2001)

------------------------------------------------------------------------------------------------------------


	DefineMission(8504, "A new ball", 2002)

	MisBeginTalk( "Well...I was playing with my ball, but, accidentally I shot it away and when I looked around, I couldn't find it.") 
	MisBeginCondition(NoMission, 2002)
	MisBeginCondition(HasRecord, 2001)
	MisBeginCondition(NoRecord, 2002)
	MisBeginAction(AddMission, 2002)
	MisCancelAction(ClearMission, 2002)

	MisNeed(MIS_NEED_DESP, "Talk to Chris(406,568) in Dream City.")

	MisHelpTalk("Could you get a new ball for me please? I would be very thankful!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(8505, "A new ball", 2002, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("A ball? Of course I sell, just choose the one you like") 
	MisResultCondition(NoRecord, 2002)
	MisResultCondition(HasMission, 2002) 
	MisResultAction(AddMoney, 2000000)
	MisResultAction(ClearMission, 2002)
	MisResultAction(SetRecord, 2002)

------------------------------------------------------------------------------------------------------------


	DefineMission(8506, "Next time be careful", 2003)

	MisBeginTalk( "Well thank you a lot. You must be very generous to buy a ball for someone that you don't really know!") 
	MisBeginCondition(NoMission, 2003)
	MisBeginCondition(HasRecord, 2002)
	MisBeginCondition(NoRecord, 2003)
	MisBeginAction(AddMission, 2003)
	MisCancelAction(ClearMission, 2003)

	MisNeed(MIS_NEED_DESP, "Talk to Patrick(393,626) in Dream City.")

	MisHelpTalk("Give the ball to the little child!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(8507, "Next time be careful", 2003, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Yay, a new ball. Thank you a lot, I am very thankful!") 
	MisResultCondition(NoRecord, 2003)
	MisResultCondition(HasMission, 2003) 
	MisResultAction(AddMoney, 2000000)
	MisResultAction(ClearMission, 2003)
	MisResultAction(SetRecord, 2003)

------------------------------------------------------------------------------------------------------------


	DefineMission(8508, "Like another Era", 2004)

	MisBeginTalk( "Hey, look that old man over there, it seems that he is sick!") 
	MisBeginCondition(NoMission, 2004)
	MisBeginCondition(HasRecord, 2003)
	MisBeginCondition(NoRecord, 2004)
	MisBeginAction(AddMission, 2004)
	MisCancelAction(ClearMission, 2004)

	MisNeed(MIS_NEED_DESP, "Talk to Jeffery(368,601) in Dream City.")

	MisHelpTalk("Check out the old man who is sick!")
	MisResultCondition(AlwaysFailure )
---------------------------------
	DefineMission(8509, "Like another Era", 2004, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Sick? I am sick of this place and the people!") 
	MisResultCondition(NoRecord, 2004)
	MisResultCondition(HasMission, 2004) 
	MisResultAction(AddMoney, 2000000)
	MisResultAction(ClearMission, 2004)
	MisResultAction(SetRecord, 2004)

------------------------------------------------------------------------------------------------------------


	DefineMission(8510, "The ingredients", 2005)

	MisBeginTalk( "Well...to be honest I need a few items to make the cure for my illness. Would you be kind and collect them for me?") 
	MisBeginCondition(NoMission, 2005)
	MisBeginCondition(HasRecord, 2004)
	MisBeginCondition(NoRecord, 2005)
	MisBeginAction(AddMission, 2005)
	MisBeginAction(AddTrigger, 20051, TE_GETITEM, 6737, 20 )
	MisBeginAction(AddTrigger, 20052, TE_GETITEM, 6738, 20 )
	MisBeginAction(AddTrigger, 20053, TE_GETITEM, 6739, 20 )
	MisCancelAction(ClearMission, 2005)

	MisNeed(MIS_NEED_DESP, "Collect the required ingredients for Jeffery in Dream City.")
	MisNeed(MIS_NEED_ITEM, 6737, 20, 10, 20)
	MisNeed(MIS_NEED_ITEM, 6738, 20, 20, 20)
	MisNeed(MIS_NEED_ITEM, 6739, 20, 30, 20)

	MisHelpTalk("The items are located outside Dream City...go find them.")
	MisResultTalk("Thank you for collect the items needed. Now you should make the cure!") 
	MisResultCondition(HasMission, 2005)
	MisResultCondition(HasItem, 6737, 20)
	MisResultCondition(HasItem, 6738, 20)
	MisResultCondition(HasItem, 6739, 20)
	MisResultAction(TakeItem, 6737, 20)
	MisResultAction(TakeItem, 6738, 20)
	MisResultAction(TakeItem, 6739, 20) 
	MisResultAction(AddMoney, 5000000)
	MisResultAction(ClearMission, 2005)
	MisResultAction(SetRecord, 2005)

InitTrigger()
TriggerCondition( 1, IsItem, 6737 )
TriggerAction( 1, AddNextFlag, 2005, 10, 20 )
RegCurTrigger(20051)

InitTrigger()
TriggerCondition( 1, IsItem, 6738 )
TriggerAction( 1, AddNextFlag, 2005, 20, 20 )
RegCurTrigger(20052)

InitTrigger()
TriggerCondition( 1, IsItem, 6739 )
TriggerAction( 1, AddNextFlag, 2005, 30, 20 )
RegCurTrigger(20053)
