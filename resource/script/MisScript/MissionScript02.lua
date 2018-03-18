--------------------------------------------------------------------------
--									--
--									--
--		MissionScript02.lua Created by Robin 2005.03.31.	--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading MissionScript02.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		��ʷ����	 				--
--							--
--		227725,276925				--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>��ʷ����ʼ
function HistoryMission001()

----------------------------
	DefineMission( 200, "Secretary Message", 200 )
	
	MisBeginTalk( "<t>Hey there, right on time. I have received a request from Argent's Secretary, <bSalvier>. He wishes to meet you after hearing of the deeds you have accomplished. Go quickly and good luck." )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 200)
	MisCancelAction(ClearMission, 200)
		
	MisNeed(MIS_NEED_DESP, "Look for Secretary Salvier in Argent City at (2219, 2749)")
	
	MisHelpTalk("<t>Why haven't you met up with Secretary Salvier? Please hurry up and go immediately!")
	MisResultCondition(AlwaysFailure )

----------------------------
	DefineMission( 201, "Secretary Message", 201 )
	
	MisBeginTalk( "<t>Hey there, right on time. I have received a request from Argent's Secretary, <bSalvier>. He wishes to meet you after hearing of the deeds you have accomplished. Go quickly and good luck." )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 201)
	MisCancelAction(ClearMission, 201)
		
	MisNeed(MIS_NEED_DESP, "Look for Secretary Salvier in Argent City at (2219, 2749)")
	
	MisHelpTalk("<t>Why haven't you met up with Secretary Salvier? Please hurry up and go immediately!")
	MisResultCondition(AlwaysFailure )


----------------------------
	DefineMission( 202, "Secretary Message", 202 )
	
	MisBeginTalk( "<t>Hey there, right on time. I have received a request from Argent's Secretary, <bSalvier>. He wishes to meet you after hearing of the deeds you have accomplished. Go quickly and good luck." )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 202)
	MisCancelAction(ClearMission, 202)
		
	MisNeed(MIS_NEED_DESP, "Look for Secretary Salvier in Argent City at (2219, 2749)")
	
	MisHelpTalk("<t>Why haven't you met up with Secretary Salvier? Please hurry up and go immediately!")
	MisResultCondition(AlwaysFailure )

----------------------------
	DefineMission( 203, "Secretary Message", 200, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Welcome, I am pleased to meet you. Your reputation has spread far and wide. I am in need of an adventurer, you look like the right person for the job.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 200)
	MisResultAction(ClearMission, 200 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)

----------------------------
	DefineMission( 204, "Secretary Message", 201, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Welcome, I am pleased to meet you. Your reputation has spread far and wide. I am in need of a adventurer, you look like the right person for the job.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 201)
	MisResultAction(ClearMission, 201 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)

----------------------------
	DefineMission( 205, "Secretary Message", 202, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Welcome, I am pleased to meet you. Your reputation has spread far and wide. I am in need of a adventurer, you look like the right person for the job.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 202)
	MisResultAction(ClearMission, 202 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)

----------------------------
	DefineMission( 206, "A Small Task", 203 )
	
	MisBeginTalk( "<t>Actually, I wanted to ask you to investigate certain strange happenings in Shepherd Plains.<n><t>However, before that, I still have to test you.<n><t>Go to <pArgent City Harbor> at (2277, 2831) and look for <bGeneral - William>. He will give you the next task." )
	MisBeginCondition(NoRecord, 203)
	MisBeginCondition(NoMission, 203)
	MisBeginCondition(HasRecord, 200)
	MisBeginAction(AddMission, 203)
	MisCancelAction(ClearMission, 203)
		
	MisNeed(MIS_NEED_DESP, "Look for <bGeneral - William> in <pArgent City Harbor> at (2277, 2831)")
	
	MisHelpTalk("<t>Is there anymore questions? If not, please go and see <bGeneral William>, he has a task for you.")
	MisResultCondition(AlwaysFailure )

----------------------------
	DefineMission( 207, "A Small Task", 203, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ah, Salvier is a weird fella, sending us an unknown adventurer. Doesn't he trust the Navy?<n><t>Come back when you're ready. I have a job for you")
	MisResultCondition(NoRecord, 203)
	MisResultCondition(HasMission, 203)
	MisResultAction(ClearMission, 203 )
	MisResultAction(SetRecord, 203 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)
	MisResultAction(AddExpAndType,2,875,875)

----------------------------
	DefineMission( 208, "Food for the Navy", 204 )

	MisBeginTalk( "<t>I don't think you are capable to carry out these difficult tasks. Perhaps you could help out by collecting ingredients for our food.<n><t>I need 5 <yBubble Clam Meat>, 10 <ySea Snail Meat> and 10 <yElven Fruits>." )
	MisBeginCondition(NoRecord, 204)
	MisBeginCondition(HasRecord, 203)
	MisBeginCondition(NoMission, 204)
	MisBeginAction(AddMission, 204)
	MisBeginAction(AddTrigger, 2041, TE_GETITEM, 3963, 5 )		--��ˮ����
	MisBeginAction(AddTrigger, 2042, TE_GETITEM, 3964, 10 )		--������
	MisBeginAction(AddTrigger, 2043, TE_GETITEM, 3116, 10 )
	MisCancelAction(ClearMission, 204)

	MisNeed(MIS_NEED_ITEM, 3963, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3964, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3116, 10, 30, 10)

	MisResultTalk("<t>Even though you are considerably quite capable, you are still not up to our standard yet.")
	MisHelpTalk("<t>Such a simple task and you have yet to complete it?<n><t>Remember! I needs 5 <yBubble Clam Meat>, 10 <ySea Snail Meat> and 10 <yElven Fruits>.")
	MisResultCondition(HasMission, 204)
	MisResultCondition(HasItem, 3963, 5 )
	MisResultCondition(HasItem, 3964, 10 )
	MisResultCondition(HasItem, 3116, 10 )
	MisResultAction(TakeItem, 3963, 5 )
	MisResultAction(TakeItem, 3964, 10 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(ClearMission, 204)
	MisResultAction(SetRecord, 204 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3963)	
	TriggerAction( 1, AddNextFlag, 204, 10, 5 )
	RegCurTrigger( 2041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3964)	
	TriggerAction( 1, AddNextFlag, 204, 20, 10 )
	RegCurTrigger( 2042 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 204, 30, 10 )
	RegCurTrigger( 2043 )

----------------------------
	DefineMission( 209, "Missing Tommy", 205 )
	
	MisBeginTalk( "<t>Since your're here, why dont you help us find a missing child. His name is <bTommy>.  He was last seen playing near the <pSilver Mine>. Bring him back home safely please!" )
	MisBeginCondition(NoRecord, 205)
	MisBeginCondition(HasRecord, 204)
	MisBeginCondition(NoMission, 205)
	MisBeginAction(AddMission, 205)
	MisCancelAction(ClearMission, 205)
		
	MisNeed(MIS_NEED_DESP, "Look for Tommy at (1962, 2694)")
	
	MisHelpTalk("<t>Some people seen <bTommy> headed towards the direction of <pSilver Mine>. Look for him there.")
	MisResultCondition(AlwaysFailure )

----------------------------
	DefineMission( 210, "Missing Tommy", 205, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Have you been looking for me? I came here to watch the sheeps fight.")
	MisResultCondition(NoRecord, 205)
	MisResultCondition(HasMission, 205)
	MisResultAction(ClearMission, 205 )
	MisResultAction(SetRecord, 205 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------
	DefineMission( 211, "Report to General", 206 )
	
	MisBeginTalk( "<t>I am surprised that the Navy General is worried about me. I would like to thank him for his concerns. Take this letter to him so that he knows I am safe. I am going to stay here for a little while more before returning home." )
	MisBeginCondition(NoRecord, 206)
	MisBeginCondition(HasRecord, 205)
	MisBeginCondition(NoMission, 206)
	MisBeginAction(AddMission, 206)
	MisBeginAction(GiveItem, 3965, 1, 4)		--�Ƶµ���
	MisCancelAction(ClearMission, 206)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Hand the letter to General William at (2277, 2831)")
	
	MisHelpTalk("<t>Is there anything else? I will be going back soon.")
	MisResultCondition(AlwaysFailure )

----------------------------
	DefineMission( 212, "Report to General", 206, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Oh��You found��Tommy?...Good��good��I��I��")
	MisResultCondition(NoRecord, 206)
	MisResultCondition(HasMission, 206)
	MisResultCondition(HasItem, 3965, 1)		--�Ƶµ���
	MisResultAction(TakeItem, 3965, 1 ) 
	MisResultAction(ClearMission, 206 )
	MisResultAction(SetRecord, 206 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)	
	MisResultAction(AddExpAndType,2,875,875)


----------------------------
	DefineMission( 213, "Food Poisoning", 207 )

	MisBeginTalk( "<t>Ah��Ah��I am sorry��After lunch��Everyone started vomiting��Food��Poisoned�� Please take this <yLunch Sample>��to��<bPhysician Ditto>��for the Antidote��Hurry!" )
	MisBeginCondition(NoRecord, 207)
	MisBeginCondition(HasRecord, 206)
	MisBeginCondition(NoMission, 207)
	MisBeginAction(AddMission, 207)
	MisBeginAction(GiveItem, 3966, 1, 4)			--�������
	MisBeginAction(AddTrigger, 2071, TE_GETITEM, 3967, 1 )		--��ˮ����
	MisCancelAction(ClearMission, 207)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_ITEM, 3967, 1, 10, 1)

	MisResultTalk("<t>Ah�� You're a good person�� Thank you.")
	MisHelpTalk("<t>Antidote�� hurry�� dying��")
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3967, 1 )
	MisResultAction(TakeItem, 3967, 1 )
	MisResultAction(ClearMission, 207)
	MisResultAction(SetRecord, 207 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3967)	
	TriggerAction( 1, AddNextFlag, 207, 10, 1 )
	RegCurTrigger( 2071 )

----------------------------
	DefineMission( 214, "Food Poisoning", 207, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Everyone has been Poisoned?! <n><t>Let me take a look�� Wow, it looks too yummy to be poisonous doesn't it?")
	MisResultCondition(NoRecord, 207)
	MisResultCondition(NoFlag, 207, 1 )
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3966, 1)		--�Ƶµ���
	MisResultAction(TakeItem, 3966, 1 ) 
	MisResultAction(SetFlag, 207, 1 )
	
----------------------------
	DefineMission( 215, "Quest for Antidote", 208 )

	MisBeginTalk( "<t>I have analyzed the food, the problem lies with the Bubble Clam Meat. I am short of only 3 ingrediants to make the antidote.<n><t>3 <yCashmeres>, 3 <yPiglet Tails> and 3 <yHard Shells>. Could you help me gather them?" )
	MisBeginCondition(NoRecord, 208)
	MisBeginCondition(HasMission, 207)
	MisBeginCondition(NoMission, 208)
	MisBeginCondition(HasFlag, 207, 1)
	MisBeginAction(AddMission, 208)
	MisBeginAction(AddTrigger, 2081, TE_GETITEM, 1678, 3 )		--����
	MisBeginAction(AddTrigger, 2082, TE_GETITEM, 3968, 3 )		--С��β��
	MisBeginAction(AddTrigger, 2083, TE_GETITEM, 1614, 3 )		--��Ӳ�Ŀ�
	MisCancelAction(ClearMission, 208)

	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 3968, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1614, 3, 30, 3)

	MisPrize(MIS_PRIZE_ITEM, 3967, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>Excellent! Please give me a moment to prepare the antidote.<n><t>This is it! Take it...")
	MisHelpTalk("<t>I need 3 <yCashmere>, 3 <yPiglet Tail> and 3 <yHard Shell>. Found them?")
	MisResultCondition(HasMission, 208)
	MisResultCondition(HasItem, 1678, 3 )
	MisResultCondition(HasItem, 3968, 3 )
	MisResultCondition(HasItem, 1614, 3 )
	MisResultAction(TakeItem, 1678, 3 )
	MisResultAction(TakeItem, 3968, 3 )
	MisResultAction(TakeItem, 1614, 3 )
	MisResultAction(ClearMission, 208)
	MisResultAction(SetRecord, 208 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 208, 10, 3 )
	RegCurTrigger( 2081 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3968)	
	TriggerAction( 1, AddNextFlag, 208, 20, 3 )
	RegCurTrigger( 2082 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1614)	
	TriggerAction( 1, AddNextFlag, 208, 30, 3 )
	RegCurTrigger( 2083 )

----------------------------
	DefineMission( 216, "Tommy's Request", 209 )
	
	MisBeginTalk( "<t><bTommy>'s letter has confirmed that the sheeps that he saw were getting crazy and out of control more often than usual. We decided to call these changed creatures \"Feral\".<n><t>This is also happens to be one of the case that Salvier wanted you to investigate. I suggest you to talk to <bPhysician Ditto> at (2250, 2770) for more information." )
	MisBeginCondition(NoRecord, 209)
	MisBeginCondition(HasRecord, 207)
	MisBeginCondition(NoMission, 209)
	MisBeginAction(AddMission, 209)
	MisCancelAction(ClearMission, 209)
		
	MisNeed(MIS_NEED_DESP, "Ask Ditto at (2250, 2770) about the Whacky Lamb incident")
	
	MisHelpTalk("<t>Have you spoken to Ditto regarding the Feral situation?")
	MisResultCondition(AlwaysFailure )

----------------------------
	DefineMission( 217, "Tommy's Request", 209, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Like the posionous Bubble Clam, the Whacky Lamb syndrome, is just one of the biological mutations that are happening around us. Could it be Evolution? I need to investigate more on this issue.")
	MisResultCondition(NoRecord, 209)
	MisResultCondition(HasMission, 209)
	MisResultAction(ClearMission, 209 )
	MisResultAction(SetRecord, 209 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------����ԭ��
	DefineMission( 218, "A Crazy Reason", 210 )

	MisBeginTalk( "<t>Ok, after some considerations,  we should check on the <Whacky Lambs>.<n><t>Obtain 5 vials of <Whacky Lamb Saliva> from the <Whacky Lambs> found at (1968, 2697) so I can take a look what they have been eating." )
	MisBeginCondition(NoRecord, 210)
	MisBeginCondition(HasRecord, 209)
	MisBeginCondition(NoMission, 210)
	MisBeginAction(AddMission, 210)
	MisBeginAction(AddTrigger, 2101, TE_GETITEM, 3969, 5 )		--�б�ɽ��Ŀ�ˮ
	MisCancelAction(ClearMission, 210)

	MisNeed(MIS_NEED_ITEM, 3969, 5, 10, 5)

	MisResultTalk("<t>These saliva should do the trick. I'll carry out more research on them to find out the cause of the Feral creatures.")
	MisHelpTalk("<t>What's the matter? Why have you not collected 5 <ySaliva> yet?")
	MisResultCondition(HasMission, 210)
	MisResultCondition(HasItem, 3969, 5 )
	MisResultAction(TakeItem, 3969, 5 )
	MisResultAction(ClearMission, 210)
	MisResultAction(SetRecord, 210 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3969)	
	TriggerAction( 1, AddNextFlag, 210, 10, 5 )
	RegCurTrigger( 2101 )

-------------------------------------------------�������
	DefineMission( 219, "Thorough Investigation", 211 )

	MisBeginTalk( "<t>After an indepth investigation, there is a certain strange element that exist in the sheep's diet.<n><t>I am not absolutely certain until you can bring me a strange <rGreat King Clam>'s Pearl. It resides in the north of <pArgent City> at (2048, 2514).<n><t>Make haste." )
	MisBeginCondition(NoRecord, 211)
	MisBeginCondition(HasRecord, 210)
	MisBeginCondition(NoMission, 211)
	MisBeginAction(AddMission, 211)
	MisBeginAction(AddTrigger, 2111, TE_GETITEM, 3970, 1 )		--�б�ɽ��Ŀ�ˮ
	MisCancelAction(ClearMission, 211)

	MisNeed(MIS_NEED_ITEM, 3970, 1, 10, 1)

	MisResultTalk("<t> Good job! You've obtained the <yGreat King Clam's Pearl>. It's definitely a lot different from the other pearls, I might observe it carefully!")
	MisHelpTalk("<t>Why? Afraid of <rGreat King Clam>? Bring some friends along then.")
	MisResultCondition(HasMission, 211)
	MisResultCondition(HasItem, 3970, 1 )
	MisResultAction(TakeItem, 3970, 1 )
	MisResultAction(ClearMission, 211)
	MisResultAction(SetRecord, 211 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3970)	
	TriggerAction( 1, AddNextFlag, 211, 10, 1 )
	RegCurTrigger( 2111 )

----------------------------��ķ�ı�����
	DefineMission( 220, "Ditto's Report", 212 )
	
	MisBeginTalk( "<t>This investigation will take me some time, I have written a preliminary <yReport>.<n><t>Please deliver it to Secretary <bSalvier> at (2219, 2749) to update him on our current situation." )
	MisBeginCondition(NoRecord, 212)
	MisBeginCondition(HasRecord, 211)
	MisBeginCondition(NoMission, 212)
	MisBeginAction(AddMission, 212)
	MisBeginAction(GiveItem, 3971, 1, 4)
	MisCancelAction(ClearMission, 212)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Send the report to Argent Secretary at (2219, 2749)")
	
	MisHelpTalk("<t>What is wrong? Go now!")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ķ�ı�����
	DefineMission( 221, "Ditto's Report", 212, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<tThe report from Physician Ditto has informed me of your progress. I am delighted with your good work.")
	MisResultCondition(NoRecord, 212)
	MisResultCondition(HasMission, 212)
	MisResultCondition(HasItem, 3971, 1)
	MisResultAction(TakeItem, 3971, 1 )
	MisResultAction(ClearMission, 212 )
	MisResultAction(SetRecord, 212 )
	MisResultAction(AddExp,350,350)
	MisResultAction(AddMoney,1500,1500)
	MisResultAction(AddExpAndType,2,3400,3400)


----------------------------������
	DefineMission( 222, "A New Task", 213 )
	
	MisBeginTalk( "<t>Rumor has it that there are endless troubles at <pAbandoned Mine Haven>. Here, take this recommendation letter. Go to (1909, 2820) and report to <bSecurity Guard - Kal>. New task awaits you over there." )
	MisBeginCondition(NoRecord, 213)
	MisBeginCondition(HasRecord, 212)
	MisBeginCondition(NoMission, 213)
	MisBeginAction(AddMission, 213)
	MisBeginAction(GiveItem, 3972, 1, 4)
	MisCancelAction(ClearMission, 213)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Hand the letter to Security - Kal at (1909, 2820)")
	
	MisHelpTalk("<t>Go to the <pAbandoned Mine> immediately without delay!")
	MisResultCondition(AlwaysFailure )

-----------------------------------������
	DefineMission( 223, "A New Task", 213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>You're sent by Secretary Salvier? Pleased to meet you.")
	MisResultCondition(NoRecord, 213)
	MisResultCondition(HasMission, 213)
	MisResultCondition(HasItem , 3972, 1)
	MisResultAction(TakeItem , 3972, 1 )
	MisResultAction(ClearMission, 213 )
	MisResultAction(SetRecord, 213 )
	MisResultAction(AddExp,400,400)
	MisResultAction(AddMoney,1500,1500)	
	MisResultAction(AddExpAndType,2,3401,3401)


-------------------------------------------------Ѱ�Ҷ�ʧ�Ĺ���
	DefineMission( 224, "The Lost Tool", 214 )

	MisBeginTalk( "<t>Recently, our mining tools have gone missing.  Could you look around the Abandoned Mine area for a tool chest? Our tools should be inside." )
	MisBeginCondition(NoRecord, 214)
	MisBeginCondition(HasRecord, 213)
	MisBeginCondition(NoMission, 214)
	MisBeginAction(AddMission, 214)
	MisBeginAction(AddTrigger, 2141, TE_GETITEM, 3973, 5 )		--����������
	MisBeginAction(AddTrigger, 2142, TE_GETITEM, 3974, 3 )		--�����İ�ȫñ
	MisBeginAction(AddTrigger, 2143, TE_GETITEM, 3975, 5 )		--�����Ŀ��
	MisCancelAction(ClearMission, 214)

	MisNeed(MIS_NEED_ITEM, 3973, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3974, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 3975, 5, 30, 5)

	MisResultTalk("<t>This is great! With our tools returned, we can start work immediately!")
	MisHelpTalk("<t>You haven't found our tools? Without them we are unable to carry on working. Please help us to retrieve them.")
	MisResultCondition(HasMission, 214)
	MisResultCondition(HasItem, 3973, 5 )
	MisResultCondition(HasItem, 3974, 3 )
	MisResultCondition(HasItem, 3975, 5 )
	MisResultAction(TakeItem, 3973, 5 )
	MisResultAction(TakeItem, 3974, 3 )
	MisResultAction(TakeItem, 3975, 5 )
	MisResultAction(ClearMission, 214)
	MisResultAction(SetRecord, 214 )
	MisResultAction(AddExp,450,450)
	MisResultAction(AddMoney,1600,1600)	
	MisResultAction(AddExpAndType,2,3402,3402)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3973)	
	TriggerAction( 1, AddNextFlag, 214, 10, 5 )
	RegCurTrigger( 2141 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3974)	
	TriggerAction( 1, AddNextFlag, 214, 20, 3 )
	RegCurTrigger( 2142 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3975)	
	TriggerAction( 1, AddNextFlag, 214, 30, 5 )
	RegCurTrigger( 2143 )

-------------------------------------------------�������ݹ�
	DefineMission( 225, "Kill the Shrooms", 215 )

	MisBeginTalk( "<t>My main priority is to get rid of Bandits, but the <rKiller Shrooms> are currently the biggest nuisance in the area.<n><t>Please go and exterminate the nearby <rKiller Shrooms> at (1594, 2689)!" )
	MisBeginCondition(NoRecord, 215)
	MisBeginCondition(HasRecord, 214)
	MisBeginCondition(NoMission, 215)
	MisBeginAction(AddMission, 215)
	MisBeginAction(AddTrigger, 2151, TE_KILL, 252, 10 )		--���ݹ�
	MisCancelAction(ClearMission, 215)

	MisNeed(MIS_NEED_KILL, 252, 10, 10, 10)

	MisResultTalk("<t>Good job! With the Killer Shrooms out of the way, we'll be able to focus our attention on the Bandits!")
	MisHelpTalk("<t>You must beware! <rKiller Shroom> will bite!")
	MisResultCondition(HasMission, 215)
	MisResultCondition(HasFlag, 215, 19 )
	MisResultAction(ClearMission, 215)
	MisResultAction(SetRecord, 215 )
	MisResultAction(AddExp,500,500)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,3403,3403)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 252)	
	TriggerAction( 1, AddNextFlag, 215, 10, 10 )
	RegCurTrigger( 2151 )

-------------------------------------------------��ķ��ί��
	DefineMission( 226, "Ditto's Request", 216 )

	MisBeginTalk( "<t>I just received a letter from Ditto, it seems that he has encountered some difficulty in his research so now he needs you to find a <yCrab King Stomach Stone> to continue his research.<n><t>I know where this <rArmored King Crab> is, it is north of the Abandoned Mine just before the beach at (1783, 2507)." )
	MisBeginCondition(NoRecord, 216)
	MisBeginCondition(HasRecord, 215)
	MisBeginCondition(NoMission, 216)
	MisBeginAction(AddMission, 216)
	MisBeginAction(AddTrigger, 2161, TE_GETITEM, 3976, 1 )		--з����θ��ʯ
	MisCancelAction(ClearMission, 216)

	MisNeed(MIS_NEED_ITEM, 3976, 1, 10, 1)

	MisResultTalk("<t>Wow! You've found it! I'll send it to Ditto immediately!")
	MisHelpTalk("<t>Have you found <r Armored King Crab>? Go north out of the mine and look along the beach.")
	MisResultCondition(HasMission, 216)
	MisResultCondition(HasItem, 3976, 1 )
	MisResultAction(TakeItem, 3976, 1)
	MisResultAction(ClearMission, 216)
	MisResultAction(SetRecord, 216 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,9000,9000)	
	MisResultAction(AddExpAndType,2,3404,3404)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3976 )	
	TriggerAction( 1, AddNextFlag, 216, 10, 1 )
	RegCurTrigger( 2161 )

-------------------------------------------------ɽ������ͼ
	DefineMission( 227, "Bandit Hideout Map", 217 )

	MisBeginTalk( "<t>Rumor has it that a mysterious person is selling a map containing locations of bandit's activity. This information is invaluable to us, you must try to get it! Try to search for him at (2217, 2547)." )
	MisBeginCondition(NoRecord, 217)
	MisBeginCondition(HasRecord, 216)
	MisBeginCondition(NoMission, 217)
	MisBeginAction(AddMission, 217)
	MisBeginAction(AddTrigger, 2171, TE_GETITEM, 3977, 1 )		--ɽ������ͼ
	MisCancelAction(ClearMission, 217)

	MisNeed(MIS_NEED_ITEM, 3977, 1, 10, 1)

	MisResultTalk("<t>You really managed to get it! Fantastic! We'll have those Bandits on the run in no time!")
	MisHelpTalk("<t>No idea where to start looking? Me too! Maybe asking around might help.")
	MisResultCondition(HasMission, 217)
	MisResultCondition(HasItem, 3977, 1 )
	MisResultAction(TakeItem, 3977, 1)
	MisResultAction(ClearMission, 217)
	MisResultAction(SetRecord, 217 )
	MisResultAction(AddExp,750,750)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,11833,11833)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3977 )	
	TriggerAction( 1, AddNextFlag, 217, 10, 1 )
	RegCurTrigger( 2171 )

-------------------------------------------------ͻϮɽ����
	DefineMission( 228, "Ambush Bandit", 218 )

	MisBeginTalk( "<t>From the map, the Bandits are gathering near the west of <pRockery Haven>. I need you to infiltrate their camp and slay a few of them. Bring me 3 <yBandit Necklaces> while you're at it." )
	MisBeginCondition(NoRecord, 218)
	MisBeginCondition(HasRecord, 217)
	MisBeginCondition(NoMission, 218)
	MisBeginAction(AddMission, 218)
	MisBeginAction(AddTrigger, 2181, TE_GETITEM, 1841, 3 )		--ɽ��������
	MisCancelAction(ClearMission, 218)

	MisNeed(MIS_NEED_ITEM, 1841, 3, 10, 3)

	MisResultTalk("<t>Woohoo! This is the first time we've managed to gain an upperhand over those pesky Bandits!")
	MisHelpTalk("<t>Why? Have you collected those <yBandit Necklace>?")
	MisResultCondition(HasMission, 218)
	MisResultCondition(HasItem, 1841, 3 )
	MisResultAction(TakeItem, 1841, 3 )
	MisResultAction(ClearMission, 218)
	MisResultAction(SetRecord, 218 )
	MisResultAction(AddExp,1000,1000)
	MisResultAction(AddMoney,2200,2200)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1841 )	
	TriggerAction( 1, AddNextFlag, 218, 10, 3 )
	RegCurTrigger( 2181 )

-------------------------------------------------������
	DefineMission( 229, "Bounty", 219 )

	MisBeginTalk( "<t>According to my knowledge, the leader of the sand bandits is called <rAdder>. He is a very cruel and cunning person, always hiding amongst the shadows.<n><t>Locate the sand bandit main camp at (1052, 3037) and wreck havoc among the the bandits. This should be enough to lure him out for you to defeat him!" )
	MisBeginCondition(NoRecord, 219)
	MisBeginCondition(HasRecord, 218)
	MisBeginCondition(NoMission, 219)
	MisBeginAction(AddMission, 219)
	MisBeginAction(AddTrigger, 2191, TE_KILL, 211, 1 )		--ɽ�����졤����
	MisCancelAction(ClearMission, 219)

	MisNeed(MIS_NEED_KILL, 211, 1, 10, 1)

	MisResultTalk("<t>You've defeated Adder? Well done! Thanks to your courageous deed, the Bandits are no longer a threat.")
	MisHelpTalk("<t>Are you afraid to go alone? Why don't you try getting a few of your friends to help out?")
	MisResultCondition(HasMission, 219)
	MisResultCondition(HasFlag, 219, 10 )
	MisResultAction(ClearMission, 219)
	MisResultAction(SetRecord, 219 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,10000,10000)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 211 )	
	TriggerAction( 1, AddNextFlag, 219, 10, 1 )
	RegCurTrigger( 2191 )

----------------------------ȥɳĮ
	DefineMission( 230, "Desert Visit", 220 )
	
	MisBeginTalk( "<t>A <ySecretary Letter> from <bSecretary Salvier> has asked me to inform you to head towards Shaitan City in the Magical Ocean region. Look for <bClan Chief Albuda> at (898, 3640) as he has more information about the unusual cases revolving around feral and poisonous animals." )
	MisBeginCondition(NoRecord, 220)
	MisBeginCondition(HasRecord, 219)
	MisBeginCondition(NoMission, 220)
	MisBeginAction(AddMission, 220)
	MisBeginAction(GiveItem, 3978, 1, 4)
	MisCancelAction(ClearMission, 220)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Look for Shaitan Clan Chieftain at (898, 3640)")
	
	MisHelpTalk("<t>Although I wish for you to stay, you are much needed elsewhere. Make haste and go!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ȥɳĮ
	DefineMission( 231, "Desert Visit", 220, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Welcome stranger.  Secretary Salvier has informed me about your mission to understand why the animals are behaving in such an unusual manner. We believe that is the decree of Kara the Goddess. I will help you as much as I can in your task.")
	MisResultCondition(NoRecord, 220)
	MisResultCondition(HasMission, 220)
	MisResultCondition(HasItem, 3978, 1)
	MisResultAction(TakeItem, 3978, 1 )
	MisResultAction(ClearMission, 220 )
	MisResultAction(SetRecord, 220 )
	MisResultAction(AddExp,1100,1100)
	MisResultAction(AddMoney,2300,2300)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------�����ԭ��
	DefineMission( 232, "Changes", 221 )
	
	MisBeginTalk( "<t>There is a talking lamb last seen near the city harbor at (898, 3683). It nearly scared the life out of the first person who spotted him. Maybe it can help you in your investigations.<n><t>Let me know after you find it." )
	MisBeginCondition(NoRecord, 221)
	MisBeginCondition(HasRecord, 220)
	MisBeginCondition(NoMission, 221)
	MisBeginAction(AddMission, 221)
	MisCancelAction(ClearMission, 221)
		
	MisNeed(MIS_NEED_DESP, "Look for Lamb Welly at (898, 3683) and return to Clan Chief Albuda at (898, 3640)")
	
	MisResultTalk("<t>Oh! You've spoken to Welly? Haha, he's definitely one of the main attractions in Shaitan City.")
	MisHelpTalk("<t>Have you talk to <bLamb - Welly> before? He can talk!")
	MisResultCondition(HasMission, 221 )
	MisResultCondition(NoRecord, 221 )
	MisResultCondition(HasFlag, 221, 1 )
	MisResultAction(ClearMission, 221 )
	MisResultAction(SetRecord, 221 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)	
	MisResultAction(AddExpAndType,2,5000,5000)

-----------------------------------�����ԭ��
	DefineMission( 233, "Changes", 221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Baa...I'm Welly the Sheep!<n><t>Wondering how did I start talking?<n><t>Not too long ago, I was taking a nice evening stroll. Baa...Don't you know? Even sheeps need to relax every now and then.<n><t>Anyway, I remember seeing a round egg shaped fruit washed up on shore, it looked good enough to eat.<n><t>Baa...Next thing I knew, I could speak to humans!<n><t>The <bClan Chief> was nice enough to let me stay in town. Baa...tell him I said \"Hello\" when you meet him.")
	MisResultCondition(NoRecord, 221)
	MisResultCondition(HasMission, 221)
	MisResultCondition(NoFlag, 221, 1)
	MisResultAction(SetFlag, 221, 1 )
	


----------------------------��ɭ�ıʼǱ�
	DefineMission( 234, "Roland's Notebook", 222 )
	
	MisBeginTalk( "<t>Hmm...A <yStrange Fruit> which floated ashore? I remember I read about something like that, but where? Let me think...<n><t>Oh right! Its the <bPirate King Roland>'s <yJournal Log>! Our Shaitan library once had the Pirate King's log, it was a long long time ago...<n><t>Its a pity that our library was broken into before you came. Many navigation related books were stolen, even our Lee family genealogy book! The person in charge of investigating is Patroller <bMicheal> at (958, 3549). I think that it might be a good idea for you get more details from him." )
	MisBeginCondition(NoRecord, 222)
	MisBeginCondition(HasRecord, 221)
	MisBeginCondition(NoMission, 222)
	MisBeginAction(AddMission, 222)
	MisCancelAction(ClearMission, 222)
		
	MisNeed(MIS_NEED_DESP, "Ask Michael at (958, 3549) about the progress of the investigation")
	
	MisHelpTalk("<t><bMichael> is patrolling somewhere outside the city gates. Hurry up and go to him! Don't forget to look for my Lee family genealogy book too!")
	MisResultCondition(AlwaysFailure )

-----------------------------------��ɭ�ıʼǱ�
	DefineMission( 235, "Roland's Notebook", 222, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Hi! I am Michael.<n><t>The culprit who broke into the library did not leave any evidence behind at all! If he were to steal from the bank he would probably succeed as well! It's as if a ghost came in and took them.<n><t>What's even more unusual is that the thief only stole a few worthless books. Eerie Indeed...")
	MisResultCondition(NoRecord, 222)
	MisResultCondition(HasMission, 222)
	MisResultAction(ClearMission, 222 )
	MisResultAction(SetRecord, 222 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------����
	DefineMission( 236, "Clues", 223 )
	
	MisBeginTalk( "<t>Based on my investigations on the clues, the <rSand Bandit> are definitely responsible for this incident!<n><t>They are the most organised outlaws in this desert!<n><t>How about this, I do know of a weird sand bandit named <bSupermun>, it seems that he is unhappy with the bandit current leadership. He can be found at <pChaotic Oasis> at (1080,3086), west of <pBabul Haven>. Find out about the current situation from him." )
	MisBeginCondition(NoRecord, 223)
	MisBeginCondition(HasRecord, 222)
	MisBeginCondition(NoMission, 223)
	MisBeginAction(AddMission, 223)
	MisCancelAction(ClearMission, 223)
		
	MisNeed(MIS_NEED_DESP, "Find Supermun at (1080, 3086) for more info")
	
	MisHelpTalk("<t>Don't worry. <bSupermun> isn't like the other Sand Bandits. He usually prefers to avoid fighting.")
	MisResultCondition(AlwaysFailure )

-----------------------------------����
	DefineMission( 237, "Clues", 223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>How did you find me? You want to know more about the theft that happened at the Shaitan library?<n><t>It has nothing to do with me. Haha! Seriously. Take my advice, don't delve into it any further. It won't do you any good. I'm a Sand Bandit too.<n><t>Aren't you afraid that I'll kill you?")
	MisResultCondition(NoRecord, 223)
	MisResultCondition(HasMission, 223)
	MisResultAction(ClearMission, 223 )
	MisResultAction(SetRecord, 223 )
	MisResultAction(AddExp,600,600)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------�ڼ�
	DefineMission( 238, "The Traitor Within", 224 )

	MisBeginTalk( "<t>Okay okay, since you are so sincere. I'll let you in on a little secret. But nothing in this world is free. First, I'll need you to help me run an errand.<n><t>I have been wanting to teach the other Sand Bandits a lesson, it could help me to build up my reputation so that one day, I might become their leader.<n><t>Show me your strength and defeat 10 <rSand Bandits> and 5 <rSand Raiders>. Report back when you are done." )
	MisBeginCondition(NoRecord, 224)
	MisBeginCondition(HasRecord, 223)
	MisBeginCondition(NoMission, 224)
	MisBeginAction(AddMission, 224)
	MisBeginAction(AddTrigger, 2241, TE_KILL, 45, 10 )		--ɳ��
	MisBeginAction(AddTrigger, 2242, TE_KILL, 49, 5 )		--ɳ��ʿ
	MisCancelAction(ClearMission, 224)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 49, 5, 20, 5)

	MisResultTalk("<t>Yo! I knew I could count on you. Taking care of those Bandits and Raiders should have been a walk in the park.")
	MisHelpTalk("<t>It looks like you are unable to carry out the task. I would have really liked to let you in on this secret of mine but you have yet to prove your worth.")
	MisResultCondition(HasMission, 224)
	MisResultCondition(HasFlag, 224, 19 )
	MisResultCondition(HasFlag, 224, 24 )
	MisResultAction(ClearMission, 224)
	MisResultAction(SetRecord, 224 )
	MisResultAction(AddExp,1400,1400)
	MisResultAction(AddMoney,2550,2550)	
	MisResultAction(AddExpAndType,2,5000,5000)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 45 )	
	TriggerAction( 1, AddNextFlag, 224, 10, 10 )
	RegCurTrigger( 2241 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 49 )	
	TriggerAction( 1, AddNextFlag, 224, 20, 5 )
	RegCurTrigger( 2242 )

-------------------------------------------------ս����ɳĮ
	DefineMission( 239, "Desert Battle", 225 )

	MisBeginTalk( "<t>The leader of the Sand Bandits goes by the name of <rGaret>. He is also well known for being a violent person but not a very smart one.<n><t>I used to advise him on matters but he usually just ignores them and tries to solve everything by brute force. Sadly with those biceps the size of tree trunk I have no hope of beating him.<n><t>So, you'll have to kill him for me.Go north of here to locate his group and bring me the <yMark of Desert Overlord> which he keeps with him.<n><t>I'll tell you everything you need to know once it's done!" )
	MisBeginCondition(NoRecord, 225)
	MisBeginCondition(HasRecord, 224)
	MisBeginCondition(NoMission, 225)
	MisBeginAction(AddMission, 225)
	MisBeginAction(AddTrigger, 2251, TE_GETITEM, 3979, 1 )		--ɳĮ����֤֮
	MisCancelAction(ClearMission, 225)

	MisNeed(MIS_NEED_ITEM, 3979, 1, 10, 1)

	MisResultTalk("<t>WoooOOhHHOOOO! Thanks to you I am now the new leader of the Sand Bandits! MWAHAHAHAHAHA!")
	MisHelpTalk("<t>Why have you not make a move? I will be waiting for you here!")
	MisResultCondition(HasMission, 225 )
	MisResultCondition(HasItem, 3979, 1 )
	MisResultAction(TakeItem, 3979, 1 )
	MisResultAction(ClearMission, 225 )
	MisResultAction(SetRecord, 225 )
	MisResultAction(AddExp,669,669)
	MisResultAction(AddMoney,1275,1275)	
	MisResultAction(AddExpAndType,2,5000,5000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3979 )	
	TriggerAction( 1, AddNextFlag, 225, 10, 1 )
	RegCurTrigger( 2251 )

----------------------------����
	DefineMission( 240, "The Truth", 226 )
	
	MisBeginTalk( "<t>Since you have helped me to become the new leader of the Sand Bandits, I shall tell you the truth. <n><t>We, the Sand Bandits have an alliance with a group of pirates so I helped them steal the logbook. <n><t>The infamous, \"Jack's Pirates\", has been trying to find the lost treasure of the <bPirate King Roland>. The secret is believed to be hidden inside the Pirate King's log. Now go and report back to Michael!" )
	MisBeginCondition(NoRecord, 226)
	MisBeginCondition(HasRecord, 225)
	MisBeginCondition(NoMission, 226)
	MisBeginAction(AddMission, 226)
	MisCancelAction(ClearMission, 226)
		
	MisNeed(MIS_NEED_DESP, "Tell the truth to Michael at (958, 3549)")
	
	MisHelpTalk("<t>I have already told you all that I know. There's nothing more for me to say.")
	MisResultCondition(AlwaysFailure )

-----------------------------------����
	DefineMission( 241, "The Truth", 226, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>So <bSupermun> stole the book huh?<n><t>I should have known, but as he is now the leader of the Sand Bandits, I don't think we can arrest him so easily. Thank you for your assistance thus far.")
	MisResultCondition(NoRecord, 226)
	MisResultCondition(HasMission, 226)
	MisResultAction(ClearMission, 226 )
	MisResultAction(SetRecord, 226 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,2650,2650)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------��������Ϣ
	DefineMission( 242, "Buccaneer's News", 227 )
	
	MisBeginTalk( "<t>Although we cannot arrest <bSupermun>, we can investigate on the pirates.<n><t>First, I'll need to report to the Clan Chief on the progress of the investigation. Hmm...Could you please go to Shaitan Harbor and look for <bFranco> at (867, 3660)? He will provide further information on the pirates." )
	MisBeginCondition(NoRecord, 227)
	MisBeginCondition(HasRecord, 226)
	MisBeginCondition(NoMission, 227)
	MisBeginAction(AddMission, 227)
	MisCancelAction(ClearMission, 227)
		
	MisNeed(MIS_NEED_DESP, "Look for Franco at (867, 3660)")
	
	MisHelpTalk("<t>If you are looking for <bFranco>, try searching for him at the harbor.")
	MisResultCondition(AlwaysFailure )

-----------------------------------��������Ϣ
	DefineMission( 243, "Buccaneer's News", 227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>You need information on the pirates? You've found the right person!<n><t>What do you wish to know more about? The Legend of the <bPirate King Roland>? The war between Thundoria and the <bSakura Pirates>? Or perhaps, about <rJack's Pirate>? What about some information on the <bNorthens Sea Pirates>? Just ask away!")
	MisResultCondition(NoRecord, 227 )
	MisResultCondition(HasMission, 227 )
	MisResultAction(ClearMission, 227 )
	MisResultAction(SetRecord, 227 )
	MisResultAction(AddExp,749,749)
	MisResultAction(AddMoney,1333,1333)	
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------�ܿ˺�����
	DefineMission( 244, "Jack's Pirates", 228 )
	
	MisBeginTalk( "<t>Oh, so you wish to know about <rJack's Pirate Crew>. At the beginning, this group of pirates started to turn up in large numbers within the city. However as they did not create any trouble, we the city guards didn't take any action. Lately, they started to appear in the southern desert which is weird.<n><t>The desert belongs to the sand bandits.<n><t>Can it be that they are changing to becoming bandits? Haha...<n><t>For things happening in the desert, you can look for the mysterious <bMerrix> at (1118, 3611). For some reason, she always know the secrets. Rumor has it that she is the secret agent between Thundoria Castle and Shaitan City. After you exit the city, follow along the coast eastwards and you will find her near a sunken ship." )
	MisBeginCondition(NoRecord, 228)
	MisBeginCondition(HasRecord, 227)
	MisBeginCondition(NoMission, 228)
	MisBeginAction(AddMission, 228)
	MisCancelAction(ClearMission, 228)
		
	MisNeed(MIS_NEED_DESP, "Look for Merrix at (1118, 3611)")
	
	MisHelpTalk("After you exit the city, follow along the coast eastwards and you will find <bMerrix> at (1118, 3611) near a sunken ship.")
	MisResultCondition(AlwaysFailure )

-----------------------------------�ڽܿ˺�����
	DefineMission( 245, "Jack's Pirates", 228, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Unusual activities from <rJack's Pirates> has come to my attention. I sense that we are headed towards dark times.")
	MisResultCondition(NoRecord, 228 )
	MisResultCondition(HasMission, 228 )
	MisResultAction(ClearMission, 228 )
	MisResultAction(SetRecord, 228 )
	MisResultAction(AddExp,1700,1700)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------�ѿ˴���
	DefineMission( 246, "Captain Fickle", 229 )

	MisBeginTalk( "<t>I can help you, but <rCaptain Fickle> and his pirate henchmen are very dangerous people. I have met them before and I can tell you that Fickle is a uneducated egomaniac who is developing a sinister plot.<n><t>There is something unusual about the <yFickle Pouch> that he always carries, it seems to be the most important thing to him. Perhaps his quick rise to power has something to do with it.<n><t>If you can somehow bring the bag to me, i could figure out his whole plan.<n><t>Follow the shoreline eastwards and you will find him. Good Luck." )
	MisBeginCondition(NoRecord, 229)
	MisBeginCondition(HasRecord, 228)
	MisBeginCondition(NoMission, 229)
	MisBeginAction(AddMission, 229)
	MisBeginAction(AddTrigger, 2291, TE_GETITEM, 3980, 1 )		--�ѿ˵�С��
	MisCancelAction(ClearMission, 229)

	MisNeed(MIS_NEED_ITEM, 3980, 1, 10, 1)

	MisResultTalk("<t>So this is msyterious bag of <rCaptain Jack>? <n><t>Great! Now I can see what is it that he keeps so close guarded.")
	MisHelpTalk("<t>Hmm? Can't find <rJack the Pirate>? Walk along the shoreline and you will see him.")
	MisResultCondition(HasMission, 229 )
	MisResultCondition(HasItem, 3980, 1 )
	MisResultAction(TakeItem, 3980, 1 )
	MisResultAction(ClearMission, 229 )
	MisResultAction(SetRecord, 229 )
	MisResultAction(AddExp,4680,4680)
	MisResultAction(AddMoney,7075,7075)	
	MisResultAction(AddExpAndType,2,5000,5000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3980 )	
	TriggerAction( 1, AddNextFlag, 229, 10, 1 )
	RegCurTrigger( 2291 )

----------------------------Ѱ��������
	DefineMission( 247, "To Whom It May Concern", 230 )
	
	MisBeginTalk( "<t>I have inspected the bag, it seems to contain letters from a mysterious \"J\" person. It seems to be that <rJack's Pirates> is just working on direct orders from \"J\". I wonder who this <r\"J\"> is.<n><t>I have an idea! Let me forge this letter and you take it around town pretending to have \"picked\" it up from nowhere, perhaps you may find this mysterious \"J\"" )
	MisBeginCondition(NoRecord, 230)
	MisBeginCondition(HasRecord, 229)
	MisBeginCondition(NoMission, 230)
	MisBeginAction(AddMission, 230)
	MisBeginAction(GiveItem, 3981, 1, 4 )
	MisCancelAction(ClearMission, 230)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Look for the guy codenamed \"J\"")
	
	MisHelpTalk("<t>I know it's abit unresonable, but you have to trust me. I have a hunch that you can find this mysterious person.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ѱ��������
	DefineMission( 248, "To Whom It May Concern", 230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>How did you get this letter? Give it to me!!!<n><t>I'm the \"J\" they mentioned. Why am I called \"J\"?<n><t>You shall die without ever knowing the answer. Now move along before I ask my Sand Bandits to give you a proper lesson on etiquette.")
	MisResultCondition(NoRecord, 230 )
	MisResultCondition(HasMission, 230 )
	MisResultCondition(HasItem, 3981, 1 )
	MisResultAction(TakeItem, 3981, 1 )
	MisResultAction(ClearMission, 230 )
	MisResultAction(SetRecord, 230 )
	MisResultAction(ObligeAcceptMission, 5 )
	MisResultAction(AddExp,936,936)
	MisResultAction(AddMoney,1415,1415)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------�㱨������
	DefineMission( 249, "For Whom It May Concern", 5, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>I never suspected that <bSupermun> could be the mysterious \"J\". I heard that he is quite reknowned in many ways but he seemed quite harmless. I may have underestimated him I guess.")
	MisResultCondition(HasMission, 5 )
	MisResultCondition(NoRecord, 5 )
	MisResultAction(ClearMission, 5 )
	MisResultAction(SetRecord, 5 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------ȥ����
	DefineMission( 250, "Journey to the North", 232 )
	
	MisBeginTalk( "<t>It seems that I must go alone to investigate the pirates. I know that Secretary Salvier originally sent you here to investigate the feral animals situation.<n><t>Have you been to the Icicle Castle? It snows there all year round. Recently, it has been overrun by undead. The place is in ruins.<n><t>If you are undaunted by danger, please go and assist <bRay> the Icicle Swordsman at (1365, 570), perhaps he may return the favor." )
	MisBeginCondition(NoRecord, 232)
	MisBeginCondition(HasRecord, 5 )
	MisBeginCondition(NoMission, 232)
	MisBeginAction(AddMission, 232)
	MisCancelAction(ClearMission, 232)
		
	MisNeed(MIS_NEED_DESP, "Look for Ray at (1365, 570)")
	
	MisHelpTalk("<t>Hurry up! Time does not wait for anybody.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ȥ����
	DefineMission( 251, "Journey to the North", 232, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Sorry, I can't help you much. Since the Icicle City mishap, reconstruction of the city is our biggest concern, I do not have the free time to come with you to discuss about what happened to the creatures! <n><t> I did not think that investigation into these matters will be able to help our current crisis.")
	MisResultCondition(NoRecord, 232 )
	MisResultCondition(HasMission, 232 )
	MisResultAction(ClearMission, 232 )
	MisResultAction(SetRecord, 232 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------���Ǳ���Σ��
	DefineMission( 252, "Danger in Icicle", 233 )
	
	MisBeginTalk( "<t>My apologies for my manners earlier. We have been pushed to the brink of sanity due to the recent troubles.<n><t>I'll take a good holiday in the desert once all these is over.<n><t>Talk to Lord <bMas> the Icicle Royal. He should be able to help you. He is at (1346, 451)." )
	MisBeginCondition(NoRecord, 233)
	MisBeginCondition(HasRecord, 232)
	MisBeginCondition(NoMission, 233)
	MisBeginAction(AddMission, 233)
	MisCancelAction(ClearMission, 233)
		
	MisNeed(MIS_NEED_DESP, "Look for Icicle Royal - Mas at (1346, 451) and enquire about the crisis")
	
	MisHelpTalk("<t><bMas> does not see anybody easily. Go and try your luck.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ȥ����
	DefineMission( 253, "Danger in Icicle", 233, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Welcome traveller from a faraway land, forgive my lack of hospilatity. The Icicle Castle tatters on the brink of life and death as we speak. We were once a great and beautiful city if not for those undead horrors which has appeared.<n><t>We can only hope to recapture the area to restore the honor of our once proud homeland.")
	MisResultCondition(NoRecord, 233 )
	MisResultCondition(HasMission, 233 )
	MisResultAction(ClearMission, 233 )
	MisResultAction(SetRecord, 233 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------����
	DefineMission( 254, "Replenishment", 234 )
	
	MisBeginTalk( "<t>The present troubles has caused our situation to change greatly for the worst. The reinforcements from Thundoria Castle has been ambushed on their way here, our supplies from Argent City seems to be waylaid by the enemy. Now our only hope of surviving is the supplies from Shaitan City. <n><t>Could I implore you to help me check with <bLittle Mo> about the situation? He should be on the outskirts of the city." )
	MisBeginCondition(NoRecord, 234)
	MisBeginCondition(HasRecord, 233)
	MisBeginCondition(NoMission, 234)
	MisBeginAction(AddMission, 234)
	MisCancelAction(ClearMission, 234)
		
	MisNeed(MIS_NEED_DESP, "Ask Little Mo at (1237, 613) about the incident")
	
	MisHelpTalk("<t>Have you asked <bPatrol - Little Mo>?")
	MisResultCondition(AlwaysFailure )

-----------------------------------����
	DefineMission( 255, "Replenishment", 234, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><bMas> sent you? I'm really sorry. It seems that the supplies has not arrived. My greatest fear is that they got attacked by the enemy!")
	MisResultCondition(NoRecord, 234 )
	MisResultCondition(HasMission, 234 )
	MisResultAction(ClearMission, 234 )
	MisResultAction(SetRecord, 234 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------Ѱ�Ҳ�����
	DefineMission( 256, "Search for Supplies", 235 )
	
	MisBeginTalk( "<t>I am certain that the reinforcements has met some trouble, they should arrive by the path to <pAtlantis Haven> at (1028, 649).<n><t>Could you help me check? If you do see them, tell Captain <bGasardis> that we are expecting him." )
	MisBeginCondition(NoRecord, 235)
	MisBeginCondition(HasRecord, 234)
	MisBeginCondition(NoMission, 235)
	MisBeginAction(AddMission, 235)
	MisCancelAction(ClearMission, 235)
		
	MisNeed(MIS_NEED_DESP, "Look for Gasardis at (1028, 649)")
	
	MisHelpTalk("<t>I hope you found <pCaptain Gladis>, head west, then a little south. He should be standing there.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ѱ�Ҳ�����
	DefineMission( 257, "Search for Supplies", 235, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Gone��Missing ��I have failed in my duty. The supplies are missing.")
	MisResultCondition(NoRecord, 235 )
	MisResultCondition(HasMission, 235 )
	MisResultAction(ClearMission, 235 )
	MisResultAction(SetRecord, 235 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)	
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------����Ʒ���
	DefineMission( 258, "Recapture the Supplies", 236 )

	MisBeginTalk( "<t>When we are nearing the Atlantis Haven. We were surrounded by mass of Yetis. They formed a rank in front of my troops preparing to attack. We fought them head on, then suddenly a small group of Yeti stole the supplies from our backs.<n><t>What unusual display of intelligence from them. We pursued them to the south till we hit the coastline, then a huge Yeti appeared. We scattered in fear and regrouped here.<n><t>Could you help us retrieve the <yStolen Supplies>?" )
	MisBeginCondition(NoRecord, 236)
	MisBeginCondition(HasRecord, 235)
	MisBeginCondition(NoMission, 236)
	MisBeginAction(AddMission, 236)
	MisBeginAction(AddTrigger, 2361, TE_GETITEM, 3982, 15 )		--�����Ĳ���Ʒ
	MisCancelAction(ClearMission, 236)

	MisNeed(MIS_NEED_ITEM, 3982, 15, 10, 15)

	MisResultTalk("<t>How did you do it? You brought the supplies back! Hip Hip Hooray!")
	MisHelpTalk("<t>If you head south, you should find the <rYeti>. If you cant fight it, just run!")
	MisResultCondition(HasMission, 236 )
	MisResultCondition(HasItem, 3982, 15 )
	MisResultAction(TakeItem, 3982, 15 )
	MisResultAction(ClearMission, 236 )
	MisResultAction(SetRecord, 236 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3982 )	
	TriggerAction( 1, AddNextFlag, 236, 10, 15 )
	RegCurTrigger( 2361 )


----------------------------���Ͳ���Ʒ
	DefineMission( 259, "Escort the Supplies", 237 )
	
	MisBeginTalk( "<t> Since you brought back the supplies, could you help me bring it to Icicle Castle and pass these <yRecovered Supplies> to <bIcicle Swordsman - Ray> at (1365, 570). I am in debt to your kindness." )
	MisBeginCondition(NoRecord, 237)
	MisBeginCondition(HasRecord, 236)
	MisBeginCondition(NoMission, 237)
	MisBeginAction(AddMission, 237)
	MisBeginAction(GiveItem, 3983, 15, 4)
	MisCancelAction(ClearMission, 237)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Escort the Supplies back to Swordsman Ray in Icicle City at (1365, 570)")
	
	MisHelpTalk("<t>Quick! People of Icicle Castle are dying of hunger!")
	MisResultCondition(AlwaysFailure )

-----------------------------------���Ͳ���Ʒ
	DefineMission( 260, "Escort the Supplies", 237, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Great Gods!! We are saved, the supplies has arrived.<n><t>It's the only thing we looked forward to these past few days. I don't know how to thank you")
	MisResultCondition(NoRecord, 237 )
	MisResultCondition(HasMission, 237)
	MisResultCondition(HasItem, 3983, 15 )
	MisResultAction(TakeItem, 3983, 15 )
	MisResultAction(ClearMission, 237 )
	MisResultAction(SetRecord, 237 )
	MisResultAction(AddExp,2300,2300)
	MisResultAction(AddMoney,2900,2900)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------�¼�����
	DefineMission( 261, "Further Investigation", 238 )
	
	MisBeginTalk( "<t>From the information you provided, it seems that the recent incidents and the creatures turning feral is no conicidence.<n><t>I do remember a researcher, <bEluna> near (1141, 575) who was doing research on the snow creatures. Head towards Alantis Haven and walk towards the main road. You should find her nearby." )
	MisBeginCondition(NoRecord, 238)
	MisBeginCondition(HasRecord, 237)
	MisBeginCondition(NoMission, 238)
	MisBeginAction(AddMission, 238)
	MisCancelAction(ClearMission, 238)
		
	MisNeed(MIS_NEED_DESP, "Look for Eluna at (1141, 575) and ask about the Snowfield Organism")
	
	MisHelpTalk("<bEluna> can be found on the path to Atlantis Haven")
	MisResultCondition(AlwaysFailure )

-----------------------------------�¼�����
	DefineMission( 262, "Further Investigation", 238, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>In regards to snow creatures, I noticed a great increase in their intelligence, the more intelligent they are they more aggressive they get. If you are willing to help me we can attain a new level of understanding what is happening.")
	MisResultCondition(NoRecord, 238 )
	MisResultCondition(HasMission, 238)
	MisResultAction(ClearMission, 238 )
	MisResultAction(SetRecord, 238 )
	MisResultAction(AddExp,2600,2600)
	MisResultAction(AddMoney,3000,3000)
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------ѩԭ����
	DefineMission( 263, "Snowfield Organism", 239 )

	MisBeginTalk( "<t>Other than the <bYeti> at (1495, 667), there are several kinds of lifeforms such as the <bPlayful Snow Doll> at (1746, 530) and the <bSnow Lady> at (873, 646). They don't appear to be friendly anymore, perhaps it was due to several influences that affected them.<n><t>I need you to go aquire several materials essential for my research, namely 5 <ySnow Doll Memo Stone>, <ySnow Lady Memo Stone> and <yYeti Memo Stone> each.<n><t>Studying these memory stones will allow me to understand any unusual occurences that have happened." )
	MisBeginCondition(NoRecord, 239)
	MisBeginCondition(HasRecord, 238)
	MisBeginCondition(NoMission, 239)
	MisBeginAction(AddMission, 239)
	MisBeginAction(AddTrigger, 2391, TE_GETITEM, 3984, 5 )		--ѩ���޵ļ���ʯ
	MisBeginAction(AddTrigger, 2392, TE_GETITEM, 4069, 5 )		--ѩŮ�ļ���ʯ
	MisBeginAction(AddTrigger, 2393, TE_GETITEM, 4070, 5 )		--ѩ�˵ļ���ʯ
	MisCancelAction(ClearMission, 239)

	MisNeed(MIS_NEED_ITEM, 3984, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4069, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4070, 5, 30, 5)

	MisResultTalk("<t>This is what I need.<n><t>These memo stones seems...abnormal...Hmm...")
	MisHelpTalk("<t>Just go and collect the Memo Stones.")
	MisResultCondition(HasMission, 239 )
	MisResultCondition(HasItem, 3984, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultAction(TakeItem, 3984, 5 )
	MisResultAction(TakeItem, 4069, 5 )
	MisResultAction(TakeItem, 4070, 5 )
	MisResultAction(ClearMission, 239 )
	MisResultAction(SetRecord, 239 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,3000,3000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3984 )	
	TriggerAction( 1, AddNextFlag, 239, 10, 5 )
	RegCurTrigger( 2391 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4069 )	
	TriggerAction( 1, AddNextFlag, 239, 20, 5 )
	RegCurTrigger( 2392 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4070 )	
	TriggerAction( 1, AddNextFlag, 239, 30, 5 )
	RegCurTrigger( 2393 )

-------------------------------------------------Ѱ��ѩ����
	DefineMission( 264, "Search for Yeti King", 240 )

	MisBeginTalk( "<t>Judging by what I have gathered from the memo stones, the Yeti seems to be under a great influnce by a alpha male, perhaps a <rYeti King>. If this <rYeti King> does exist then it would be stronger and more dangerous then your normal Yeti. If you could bring me his <yMemo Stone> then I can look into it." )
	MisBeginCondition(NoRecord, 240)
	MisBeginCondition(HasRecord, 239)
	MisBeginCondition(NoMission, 240)
	MisBeginAction(AddMission, 240)
	MisBeginAction(AddTrigger, 2401, TE_GETITEM, 4071, 1 )		--ѩ���޵ļ���ʯ
	MisCancelAction(ClearMission, 240)

	MisNeed(MIS_NEED_ITEM, 4071, 1, 10, 1)

	MisResultTalk("<t>The Yeti King's Memo Stone is really different from normal Yeti's Memo stone. I can't wait to take a look at it.")
	MisHelpTalk("<t>I am sure the <rYeti King> is dangerous but I have faith in you.")
	MisResultCondition(HasMission, 240 )
	MisResultCondition(HasItem, 4071, 1 )
	MisResultAction(TakeItem, 4071, 1 )
	MisResultAction(ClearMission, 240 )
	MisResultAction(SetRecord, 240 )
	MisResultAction(AddExp,16000,16000)
	MisResultAction(AddMoney,16000,16000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4071 )	
	TriggerAction( 1, AddNextFlag, 240, 10, 1 )
	RegCurTrigger( 2401 )

----------------------------�����ǵ�����
	DefineMission( 265, "Wisdom of Argent", 241 )
	
	MisBeginTalk( "<t>After my careful research of the <yYeti King Memo Stone>, I can conclude that it was a extremely ordinary Yeti. It seems to have eaten something unusual that changed both it's physique and intelligence. It became superior to the normal Yeti thus he became their king. From your investigations these seems to be a event occuring in the whole of Ascaron.<n><t>Long ago, my old teacher <bBlurry> told me a legend about a sunken treasure that holds myterious egg or food that can boost ones power when consumed.Now i am certain that the fable is true and such a wonderous item exist.<n><t>If you want to find out more about the legend, you can find Old Man <bBlurry> in <pArgent City> at (2272, 2700)." )
	MisBeginCondition(NoRecord, 241 )
	MisBeginCondition(HasRecord, 240 )
	MisBeginCondition(NoMission, 241 )
	MisBeginAction(AddMission, 241 )
	MisCancelAction(ClearMission, 241 )
		
	MisNeed(MIS_NEED_DESP, "Ask Oldman Blurry at (2272, 2700) about the Yeti")
	
	MisHelpTalk("<t>My teacher, <bOld Man Blurry> lives in Argent City.")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����ǵ�����
	DefineMission( 266, "Wisdom of Argent", 241, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Huh? Old Man Blurry? I don't really know him. I heard he is very handsome old man.")
	MisResultCondition(NoRecord, 241 )
	MisResultCondition(HasMission, 241)
	MisResultAction(ClearMission, 241 )
	MisResultAction(SetRecord, 241 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)



-------------------------------------------------��Ϳɽ��
	DefineMission( 267, "Blurry", 242 )

	MisBeginTalk( "<t>What Mysterious food? Are you sure I talked about it? Hmm...I don't remember anything about it.<n><t>How about if you bring a bottle of <yEight Treasures Wine> from <bBarmaid Donna>. I might remember a little better." )
	MisBeginCondition(NoRecord, 242)
	MisBeginCondition(HasRecord, 241)
	MisBeginCondition(NoMission, 242)
	MisBeginAction(AddMission, 242)
	MisBeginAction(AddTrigger, 2421, TE_GETITEM, 4072, 1 )		--ѩ���޵ļ���ʯ
	MisCancelAction(ClearMission, 242)

	MisNeed(MIS_NEED_ITEM, 4072, 1, 10, 1)

	MisResultTalk("<t>What an aromatic wine, can I find any better in the world?")
	MisHelpTalk("<t>You brought me Wine? It's <yEight Treasures Wine> I wanted!")
	MisResultCondition(HasMission, 242 )
	MisResultCondition(HasItem, 4072, 1 )
	MisResultAction(TakeItem, 4072, 1 )
	MisResultAction(ClearMission, 242 )
	MisResultAction(SetRecord, 242 )
	MisResultAction(AddExp,7000,7000)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,9035,9035)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4072 )	
	TriggerAction( 1, AddNextFlag, 242, 10, 1 )
	RegCurTrigger( 2421 )

-----------------------------------��Ϳɽ��
	DefineMission( 268, "Blurry", 242, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>You're looking for the Eight Treasures Wine? We're sold out at the moment, it's pretty popular. However, I can brew you a fresh batch if you can help me find the ingrediants.")
	MisResultCondition(NoRecord, 242 )
	MisResultCondition(HasMission, 242)
	MisResultCondition(NoFlag, 242, 1 )
	MisResultAction(SetFlag, 242, 1 )


-------------------------------------------------ɽ��˱���
	DefineMission( 269, "Eight Treasures Wine", 243 )

	MisBeginTalk( "<t>To make the <yEight Treasures Wine> requires 8 ingredients. The first 4 are: 2 <yFearsome Tortoise Egg> from the <rFearsome Tortoises> at (969, 2587); 2 <yBoar Tendon> from <rBoars> at (910, 2971); 2 <yCirrus> from <rStramonium> at (1414, 2896); 2 <yOre Crystal> from <rVampire bats> at  (1900, 2643). It's really simple, just bring it to me when it's done." )
	MisBeginCondition(NoRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(HasFlag, 242, 1)
	MisBeginCondition(NoMission, 243)
	MisBeginAction(AddMission, 243)
	MisBeginAction(AddTrigger, 2431, TE_GETITEM, 4073, 2 )		--�ֹ군
	MisBeginAction(AddTrigger, 2432, TE_GETITEM, 4074, 2 )		--Ұ���������
	MisBeginAction(AddTrigger, 2433, TE_GETITEM, 4075, 2 )		--�����޵�����
	MisBeginAction(AddTrigger, 2434, TE_GETITEM, 4076, 2 )		--����Ľᾧ��ĩ
	MisCancelAction(ClearMission, 243)

	MisNeed(MIS_NEED_ITEM, 4073, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 4074, 2, 12, 2)
	MisNeed(MIS_NEED_ITEM, 4075, 2, 14, 2)
	MisNeed(MIS_NEED_ITEM, 4076, 2, 16, 2)


	MisResultTalk("<t>Wow! You brought the ingredients.<n><t>I have to start the hard brewing process now.")
	MisHelpTalk("<t>What's wrong? I cannot help you if you cannot get me those items.")
	MisResultCondition(HasMission, 243 )
	MisResultCondition(HasItem, 4073, 2 )
	MisResultCondition(HasItem, 4074, 2 )
	MisResultCondition(HasItem, 4075, 2 )
	MisResultCondition(HasItem, 4076, 2 )
	MisResultAction(TakeItem, 4073, 2 )
	MisResultAction(TakeItem, 4074, 2 )
	MisResultAction(TakeItem, 4075, 2 )
	MisResultAction(TakeItem, 4076, 2 )
	MisResultAction(ClearMission, 243 )
	MisResultAction(SetRecord, 243 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)
	MisResultAction(AddExpAndType,2,9035,9035)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4073 )	
	TriggerAction( 1, AddNextFlag, 243, 10, 2 )
	RegCurTrigger( 2431 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4074 )	
	TriggerAction( 1, AddNextFlag, 243, 12, 2 )
	RegCurTrigger( 2432 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4075 )	
	TriggerAction( 1, AddNextFlag, 243, 14, 2 )
	RegCurTrigger( 2433 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4076 )	
	TriggerAction( 1, AddNextFlag, 243, 16, 2 )
	RegCurTrigger( 2434 )


----------------------------�������
	DefineMission( 270, "A Long Long Time Ago", 244 )
	
	MisBeginTalk( "<t>Since you are so nice to me, I shall disclose a secret.<n><t>The Argent City's Chairman <bRonnie> has one of those legend fruit that you are talking about.<n><t>You don't believe me? Go ask him at (2241, 2748)." )
	MisBeginCondition(NoRecord, 244 )
	MisBeginCondition(HasRecord, 242 )
	MisBeginCondition(NoMission, 244 )
	MisBeginAction(AddMission, 244 )
	MisCancelAction(ClearMission, 244 )
		
	MisNeed(MIS_NEED_DESP, "Look for Chairman at (2241, 2748) to find out more")
	
	MisHelpTalk("<t>Good Wine! Good Wine!")
	MisResultCondition(AlwaysFailure )

-----------------------------------�������
	DefineMission( 271, "A Long Long Time Ago", 244, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>What? How dare that old geezer spread rumours about me. Tell him that if he has anything to say, come and talk to me.")
	MisResultCondition(NoRecord, 244 )
	MisResultCondition(HasMission, 244)
	MisResultAction(ClearMission, 244 )
	MisResultAction(SetRecord, 244 )
	MisResultAction(ObligeAcceptMission, 6 )
	MisResultAction(SystemNotice, "Obtain quest \"Unripe Fruit\"" )
	MisResultAction(AddExp,3500,3500)
	MisResultAction(AddMoney,3150,3150)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------ѯ��δ��
	DefineMission( 272, "Wrong Question", 6 )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Ha ha ha, I almost forgot. He rather lose everything then to talk about it. I think we can devise a plan to get him to talk.")
	MisResultCondition(HasMission, 6 )
	MisResultAction(ClearMission, 6 )
	MisResultAction(SetRecord, 6 )
	MisResultAction(AddExp,1768,1768)
	MisResultAction(AddMoney,1565,1565)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------�᳤�İѱ�
	DefineMission( 273, "Chairman's Dark Secret", 246 )
	
	MisBeginTalk( "<t>If you want the cooperation of <bChairman Ronnie>, we must blackmail him.<n><t>We need the help of Admiral William. Go have a chat with him at (2277, 2831)." )
	MisBeginCondition(NoRecord, 246 )
	MisBeginCondition(HasRecord, 6 )
	MisBeginCondition(NoMission, 246 )
	MisBeginAction(AddMission, 246 )
	MisCancelAction(ClearMission, 246 )
		
	MisNeed(MIS_NEED_DESP, "Look for the Navy General at (2277, 2831)")
	
	MisHelpTalk("<t>Go��Go! Leave me alone with my wine.")
	MisResultCondition(AlwaysFailure )

-----------------------------------�᳤�İѱ�
	DefineMission( 274, "Chairman's Dark Secret", 246, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Haha��Haha! Oh that sneaky old man, he will only look for me when he plot something bad. <n><t>Okay! In regards to this matter, since you have been such a big help so far, count me in!")
	MisResultCondition(NoRecord, 246 )
	MisResultCondition(HasMission, 246)
	MisResultAction(ClearMission, 246 )
	MisResultAction(SetRecord, 246 )
	MisResultAction(AddExp,3600,3600)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------�Ͽ�̽��
	DefineMission( 275, "Mine Investigation", 247 )

	MisBeginTalk( "<t>Exit by the west gate and head west. Once you reach the Silver Mine, head further to get to the abandoned cavern.<n><t>There is a special creature called a <rMud Monster>. It eats everything given to it but digest extremely slow. We use it as a rubbish bin. You unfortunately have to kill it to find old documents that will help us. Bring the <yOld Paper> back to me, surely we can start blackmailing Chairman Ronnie to reveal the truth to us. " )
	MisBeginCondition(NoRecord, 247)
	MisBeginCondition(HasRecord, 246)
	MisBeginCondition(NoMission, 247)
	MisBeginAction(AddMission, 247)
	MisBeginAction(AddTrigger, 2471, TE_GETITEM, 4081, 10 )		--�ƾɵ�ֽƬ
	MisCancelAction(ClearMission, 247)

	MisNeed(MIS_NEED_ITEM, 4081, 10, 10, 10)

	MisResultTalk("<t>Let's see if I can put all these old paper together and figure out what is written on it.")
	MisHelpTalk("<t>Remember it's hidden inside the belly of the Mud Monstery")
	MisResultCondition(HasMission, 247 )
	MisResultCondition(HasItem, 4081, 10 )
	MisResultAction(TakeItem, 4081, 10 )
	MisResultAction(ClearMission, 247 )
	MisResultAction(SetRecord, 247 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4081 )	
	TriggerAction( 1, AddNextFlag, 247, 10, 10 )
	RegCurTrigger( 2471 )

----------------------------ֽƬ������
	DefineMission( 276, "Secret of the Slip", 248 )
	
	MisBeginTalk( "<t>Look at this <yAncient Bounty Token>, its an official wanted list, and guess who issued it, its none other the Chairman <bRonnie>.<n><t>I will love to follow you to see the look on his face when you ask him about it. Hehe��" )
	MisBeginCondition(NoRecord, 248 )
	MisBeginCondition(HasRecord, 247 )
	MisBeginCondition(NoMission, 248 )
	MisBeginAction(AddMission, 248 )
	MisBeginAction(GiveItem, 4082, 1, 4 )
	MisCancelAction(ClearMission, 248 )
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Bring the Ancient Bounty Token to the Chairman at (2241, 2748)")
	
	MisHelpTalk("<t>Go now! I can imagine his expression. Haha!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ֽƬ������
	DefineMission( 277, "Secret of the Slip", 248, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Why do you return? Gasp! Where did you get that? Hmm��I will talk. What do you wish to know?")
	MisResultCondition(NoRecord, 248 )
	MisResultCondition(HasMission, 248)
	MisResultCondition(HasItem, 4082, 1)
	MisResultAction(ClearMission, 248 )
	MisResultAction(SetRecord, 248 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------���ܵľ���
	DefineMission( 278, "Behemoth's Escape", 249 )
	
	MisBeginTalk( "<t>Sometime ago, I travelled to the faraway land of Autumm Island. I stumbled upon a <rBehemoth>, which could be sold for a handsome price. I also purchased a magical legendary fruit from a mysterious trader.<n><t>On the way back, I hid the fruit near the Behemoth's cage. I guess it must have eaten the priceless fruit and became strong enough to break its prison.<n><t>It escaped to the west silver mine and terrorising the miners there. I had to issue a reward for the capture of the beast but alas, no one succeeded. The <bCastle Guard - Peter> at (2192, 2767) has also given a try but failed, perhaps he can help you with more details." )
	MisBeginCondition(NoRecord, 249 )
	MisBeginCondition(HasRecord, 248 )
	MisBeginCondition(NoMission, 249 )
	MisBeginAction(AddMission, 249 )
	MisCancelAction(ClearMission, 249 )
		
	MisNeed(MIS_NEED_DESP, "Look for Peter at (2192, 2767) regarding the situation of the Behemoth")
	
	MisHelpTalk("<t><bPeter> is near the Argent City's west gate. His big head is easy to notice.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���ܵľ���
	DefineMission( 279, "Behemoth's Escape", 249, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t> Behemoth? It's really a dangerous beast. <n><t>I tried all sort of traps to capture it but it was too intelligent to take the bait. It even played tricks on me too!")
	MisResultCondition(NoRecord, 249 )
	MisResultCondition(HasMission, 249)
	MisResultAction(ClearMission, 249 )
	MisResultAction(SetRecord, 249 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,9035,9035)




-------------------------------------------------���ϵ�������
	DefineMission( 280, "Ancient Bounty Token", 250 )

	MisBeginTalk( "<t>Its been a long time that any adventurers accept the hunting request for the <rBehemoth>. I almost forgot about it. The reward is still valid now. All you have to do is to slay the <rBehemoth> and take their <yIron Cuffs> here to claim the reward��.. I don't think that you are strong enough to handle it though." )
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(HasRecord, 248)
	MisBeginCondition(NoMission, 250)
	MisBeginCondition(HasItem, 4082, 1)
	MisBeginAction(AddMission, 250)
	MisBeginAction(AddTrigger, 2501, TE_GETITEM, 4083, 1 )		--����x1
	MisCancelAction(ClearMission, 250)

	MisNeed(MIS_NEED_ITEM, 4083, 1, 10, 1)

	MisPrize(MIS_PRIZE_MONEY, 34464, 1)
	MisPrizeSelAll()

	MisResultTalk("<t>You really killed the Beast?!<n><t>Here is your reward, spend it wisely.")
	MisHelpTalk("<t>You don't want the reward already? Perhaps you are a chicken.")
	MisResultCondition(HasMission, 250 )
	MisResultCondition(HasItem, 4083, 1 )
	MisResultCondition(HasItem, 4082, 1 )
	MisResultAction(TakeItem, 4083, 1 )
	MisResultAction(TakeItem, 4082, 1 )
	MisResultAction(ClearMission, 250 )
	MisResultAction(SetRecord, 250 )
	MisResultAction(AddExp,13245,13245)
	MisResultAction(AddExpAndType,2,9035,9035)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4083 )	
	TriggerAction( 1, AddNextFlag, 250, 10, 1 )
	RegCurTrigger( 2501 )

----------------------------���µĹ���
	DefineMission( 281, "Scary Monsters", 251 )
	
	MisBeginTalk( "<t>Strangely, this monster likes to eat <bGranny - Beldi>'s pasteries. Back then when we were having tea break, it suddenly attacked. We were lucky to escape with minor injuries, but the cakes were all gone." )
	MisBeginCondition(NoRecord, 251 )
	MisBeginCondition(HasRecord, 249 )
	MisBeginCondition(NoMission, 251 )
	MisBeginAction(AddMission, 251 )
	MisCancelAction(ClearMission, 251 )
		
	MisNeed(MIS_NEED_DESP, "Find Granny Beldi at (2277, 2769)")
	
	MisHelpTalk("<t>Talking about Granny Beldi's pastries has made me drool��")
	MisResultCondition(AlwaysFailure )

-----------------------------------���µĹ���
	DefineMission( 282, "Scary Monsters", 251, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>I love it when my pasteries brighten up people's day. So I keep baking them and it makes me, this old granny happy too.<n><t>I do heard of a poor old monster that is hiding in a cavern. Do let it know that it can have pasteries if it behaves better will you?")
	MisResultCondition(NoRecord, 251 )
	MisResultCondition(HasMission, 251)
	MisResultAction(ClearMission, 251 )
	MisResultAction(SetRecord, 251 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------�����̵ĸ��
	DefineMission( 283, "Granny's Pastries", 252 )
	
	MisBeginTalk( "<t><bMiner Drunky> loves the pasteries so much that he bought the whole batch today. So you can't have any sample of it.<n><t>But old granny don't think he can finish it all. You could find him at the Silver Mine, guess he won't mind to share some." )
	MisBeginCondition(NoRecord, 252 )
	MisBeginCondition(HasRecord, 251 )
	MisBeginCondition(NoMission, 252 )
	MisBeginAction(AddMission, 252 )
	MisCancelAction(ClearMission, 252 )
		
	MisNeed(MIS_NEED_DESP, "Look for Miner Drunky at (296, 57)")
	
	MisHelpTalk("<t>Hurry before <bDrunky> finishes it all for dinner.")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����̵ĸ��
	DefineMission( 284, "Granny's Pastries", 252, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You came for Granny Beldi's cake? I'm sorry but I don't have any left. Not that I even had a chance to eat any of it����.")
	MisResultCondition(NoRecord, 252 )
	MisResultCondition(HasMission, 252)
	MisResultAction(ClearMission, 252 )
	MisResultAction(SetRecord, 252 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------�����ߵı㵱
	DefineMission( 285, "Stolen Lunchbox", 253 )

	MisBeginTalk( "<t>It was supposed to be a happy day today as Granny - Beldi has made me so many pastries. I happily packed them into my lunchbox and brought them to work but it was stolen the moment I turned away!<n><t>It was a <rNinja Mole>! I saw it too late, for it has already escaped into the Abandoned Mine. I dare not enter that scary place.<n><t>Can you please help me get my lunchbox back? Otherwise...I will not have enough energy to work...These creatures often appear at (229, 28). " )
	MisBeginCondition(HasRecord, 252)
	MisBeginCondition(NoMission, 253)
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(NoRecord, 253)  --��ʱ�����ظ���
	MisBeginCondition(NoMission, 4)
	MisBeginAction(AddMission, 253)
	MisBeginAction(AddTrigger, 2531, TE_GETITEM, 4084, 1 )		--�㵱x1
	MisCancelAction(ClearMission, 253)

	MisNeed(MIS_NEED_ITEM, 4084, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 3917, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t> You are my saviour! Hohoho! Its my lunchbox! Thank you so much! This is great!<n><t>Come! This <yStrawberry Biscuit> is for you! Remember! Do not ever go to <pAbandoned Mine 2> to eat the biscuit! There is a monster residing at a corner who loves to attack anybody with tasty biscuit!!!")
	MisHelpTalk("<t>Can't work��Too hungry��")
	MisResultCondition(HasMission, 253 )
	MisResultCondition(HasItem, 4084, 1 )
	MisResultAction(TakeItem, 4084, 1 )
	MisResultAction(ClearMission, 253 )
	MisResultAction(SetRecord, 253 )
	MisResultAction(ObligeAcceptMission, 4 )
	MisResultAction(AddTrigger, 109, TE_KILL, 99, 1 )
	MisResultAction(AddTrigger, 108, TE_GAMETIME, TT_MULTITIME, 60, 1 )
	MisResultAction(AddExp,4500,4500)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4084 )	
	TriggerAction( 1, AddNextFlag, 253, 10, 1 )
	RegCurTrigger( 2531 )
	InitTrigger()
	TriggerCondition( 1, NoMisssionFailure, 4 )
	TriggerCondition( 1, IsMonster, 99 )
	TriggerAction( 1, AddNextFlag, 4, 10, 1 )
	RegCurTrigger( 109 )
	InitTrigger()
	TriggerCondition( 1, NoFlag, 4, 10 )
	TriggerAction( 1, SystemNotice, "Quest countdown is over. Lure Behemoth failed!" )
	TriggerAction( 1, SetMissionFailure, 4 )
	RegCurTrigger( 108 )

-------------------------------------------------���ϲ���վ
	DefineMission( 286, "Sea Haven", 254 )

	MisBeginTalk( "<t> When I was the captain of a powerful merchant fleet a long time ago. my travels brought me to Autumm Island. The Behemoth we captured from there would bring me a fortune. <n><t>On the way back, I stopped by <pNine Havan>, a person called <bAndrew> sold me rare magical items, claiming that the magical fruit is part of Pirate King <bRoland>'s treasures. Eating the Fruit will give you magical powers. I did not believe him but at the point of time, I had a spare 100000G so I bought it as a souvenir.<n><t>The rest as you know is history. You should look for Andrew to solve the mystery of the feral animals. Go to <pArgent Harbor> and look for Shirley at (2243, 2826) for directions." )
	MisBeginCondition(NoRecord, 254)
	MisBeginCondition(HasRecord, 250)
	MisBeginCondition(NoMission, 254)
	MisBeginAction(AddMission, 254)
	MisCancelAction(ClearMission, 254)

	MisNeed(MIS_NEED_DESP, "Ask Harbor Operator Shirley at (2243, 2826) about the coordinates of the <pNine Haven>")

	MisHelpTalk("<t>I told you before, but I am not certain that <bAndrew> is still at <pNine Haven>.")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ɽ��˱���
	DefineMission( 288, "Eight Treasures Wine", 255 )

	MisBeginTalk( "<t>To brew <yEight Treasures Wine> requires 4 more ingredients: 2 <yBamboo Dew> from <rAngelic Panda> at (1655, 2563), 2 <yNutritious Pearl Powder> from <rOyster> at (1817, 2472), 2 <ySmuggled Spice> from <rSmuggler> at (1624, 3017) and 3 <yKangaroo Brew> from <rBerserk Boxeroo> at (1161, 2639)." )
	MisBeginCondition(NoRecord, 255)
	MisBeginCondition(HasRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(NoMission, 255)
	MisBeginAction(AddMission, 255)
	MisBeginAction(AddTrigger, 2551, TE_GETITEM, 4077, 2 )		--��Ҷ�ϵ�¶��
	MisBeginAction(AddTrigger, 2552, TE_GETITEM, 4078, 2 )		--���յ������
	MisBeginAction(AddTrigger, 2553, TE_GETITEM, 4079, 2 )		--��˽����
	MisBeginAction(AddTrigger, 2554, TE_GETITEM, 4080, 3 )		--�����˽��
	MisCancelAction(ClearMission, 255)

	MisNeed(MIS_NEED_ITEM, 4077, 2, 18, 2)
	MisNeed(MIS_NEED_ITEM, 4078, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 4079, 2, 22, 2)
	MisNeed(MIS_NEED_ITEM, 4080, 3, 24, 3)

	MisPrize(MIS_PRIZE_ITEM, 4072, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>Wow! You brought the ingredients.<n><t>I have to start the hard brewing process now.")
	MisHelpTalk("<t>What's wrong? I cannot help you if you cannot get me those items.")
	MisResultCondition(HasMission, 255 )
	MisResultCondition(HasItem, 4077, 2 )
	MisResultCondition(HasItem, 4078, 2 )
	MisResultCondition(HasItem, 4079, 2 )
	MisResultCondition(HasItem, 4080, 3 )
	MisResultAction(TakeItem, 4077, 2 )
	MisResultAction(TakeItem, 4078, 2 )
	MisResultAction(TakeItem, 4079, 2 )
	MisResultAction(TakeItem, 4080, 3 )
	MisResultAction(ClearMission, 255 )
	MisResultAction(SetRecord, 255 )
	MisResultAction(AddExp,1595,1595)
	MisResultAction(AddMoney,1538,1538)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4077 )	
	TriggerAction( 1, AddNextFlag, 255, 18, 2 )
	RegCurTrigger( 2551 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4078 )	
	TriggerAction( 1, AddNextFlag, 255, 20, 2 )
	RegCurTrigger( 2552 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4079 )	
	TriggerAction( 1, AddNextFlag, 255, 22, 2 )
	RegCurTrigger( 2553 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4080 )	
	TriggerAction( 1, AddNextFlag, 255, 24, 3 )
	RegCurTrigger( 2554 )

-----------------------------------���ϲ���վ
	DefineMission( 289, "Sea Haven", 254, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Nine Haven? I have been sailing for years and haven't heard of the place. I'm sorry, I cannot help you there.")
	MisResultCondition(NoRecord, 254 )
	MisResultCondition(HasMission, 254)
	MisResultAction(ClearMission, 254 )
	MisResultAction(SetRecord, 254 )
	MisResultAction(AddExp,5000,5000)	
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------���߻��ͼ
	DefineMission( 290, "Navigation Map", 256 )

	MisBeginTalk( "<t>Although I have no knowledge of it, there are others that may know.<n><t>The Haven in the sea was attacked several times by pirates until it was destroyed. Usually during the reconstruction of the Haven, there will be a change in its name.<n><t>I remember when I was studying at Argent City Maritime school, I once heard my teacher mentioned a place called <pWoody Heaven> where a harbor operator who was called the \"<rLiving Map of the sea>\". His name is.....<bBaros>!  Maybe you can try to look for him and question him. However, there are great dangers in the open sea so be prepared.<n><t>Oh right, the location of the Haven is at (2024, 2752), other than this I can't help you anymore. Good luck!" )
	MisBeginCondition(NoRecord, 256)
	MisBeginCondition(HasRecord, 254)
	MisBeginCondition(NoMission, 256)
	MisBeginAction(AddMission, 256)
	MisCancelAction(ClearMission, 256)

	MisNeed(MIS_NEED_DESP, "Ask <bHarbor Operator - Baros> in <pWoody Haven> at (2024, 2752) about the coordinate of the <pNine Haven>")

	MisHelpTalk("<t>The ocean is a huge place,you must be ready.<n><t>Get your bearings right or else it's no laughing matter when you are lost. The radar would be extremely helpful.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���߻��ͼ
	DefineMission( 291, "Navigation Map", 256, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Huh? Who are you? How did you know about Nine Haven? I am not a person who easily gives away information. *cough*")
	MisResultCondition(NoRecord, 256 )
	MisResultCondition(HasMission, 256)
	MisResultAction(ClearMission, 256 )
	MisResultAction(SetRecord, 256 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------��սˮĸ
	DefineMission( 292, "Challenge Sea Jelly", 257 )

	MisBeginTalk( "<t>*Cough* If you want to know so badly, you have to help me run an errand.<n><t>Back in my younger days I was termed the one and only \"Walking Map\", I travelled and traded between many places.<n><t>In my greed, I did not take care of my health and contracted this persistent cough.<n><t>*Cough* The only thing to sooth it is to drink a soup brewed by <yTempest Sea Jelly Crystal>. I will need 15 to last me for some time.<n><t>*Cough* Those Sea Jellies are nearby. Come back to me when you have 15 and I may give you some information." )
	MisBeginCondition(NoRecord, 257)
	MisBeginCondition(HasRecord, 256)
	MisBeginCondition(NoMission, 257)
	MisBeginAction(AddMission, 257)
	MisBeginAction(AddTrigger, 2571, TE_GETITEM, 4140, 15 )		--��Ҷ�ϵ�¶��
	MisCancelAction(ClearMission, 257)

	MisNeed(MIS_NEED_DESP, "Bring 15 <yTempest Sea Jelly Crystals> to Baros in <pWoody Haven> at (2024, 2752)")
	MisNeed(MIS_NEED_ITEM, 4140, 15, 10, 15)

	MisResultTalk("<t>*cough* Not bad��Let me brew the medicine.")
	MisHelpTalk("<t>*Cough* *gasp* *Cough*!")
	MisResultCondition(HasMission, 257 )
	MisResultCondition(HasItem, 4140, 15 )
	MisResultAction(TakeItem, 4140, 15 )
	MisResultAction(ClearMission, 257 )
	MisResultAction(SetRecord, 257 )
	MisResultAction(AddExp,5848,5848)
	MisResultAction(AddMoney,3422,3422)	
	MisResultAction(AddExpAndType,2,26625,26625)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4140 )	
	TriggerAction( 1, AddNextFlag, 257, 10, 15 )
	RegCurTrigger( 2571 )

-------------------------------------------------�ܴ�
	DefineMission( 293, "Sailing", 258 )

	MisBeginTalk( "<t>That wasn't so hard wasn't it? Since you are a young and energetic person, help me with one more errand. <n><t>I won't take advantage of you, I'll give you an easy errand.<n><t>Here's some goods I need to transport to Icicle Harbor. It's not that far." )
	MisBeginCondition(NoRecord, 258)
	MisBeginCondition(HasRecord, 257)
	MisBeginCondition(NoMission, 258)
	MisBeginAction(AddMission, 258)
	MisBeginAction(GiveItem, 4141, 1, 4)
	MisCancelAction(ClearMission, 258)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Send the <yParcel of Baros> to <bHarbor Operator - Silion> in Icicle Harbor at (1214, 681)")

	MisHelpTalk("<t>Hey! Why are you still around?")
	MisResultCondition(AlwaysFailure )

-----------------------------------�ܴ�
	DefineMission( 294, "Sailing", 258, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You are the postman sent by Baros? You're very late! Baros sent a courier to tell me about your arrival.<n><t>I waited very long, did you met with a lot of troubles on your way here? <n><t>By the way, Baros has this <yLetter of Baros> for you.")
	MisResultCondition(NoRecord, 258 )
	MisResultCondition(HasMission, 258)
	MisResultCondition(HasItem, 4141, 1)
	MisResultAction(TakeItem, 4141, 1 )
	MisResultAction(ClearMission, 258 )
	MisResultAction(SetRecord, 258 )
	MisResultAction(AddExp,2924,2924)	
	MisResultAction(AddMoney,1711,1711)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------�����ֵ�
	DefineMission( 295, "The Li Brothers", 259 )

	MisBeginTalk( "<t>*Muak*<n><t>When you get this letter, I know that you have succesfully delivered the goods. Before you read on��. Take a deep breath��. <n><t>I am really sorry for lying to you, I am actually not the \"Walking Map\" that you are looking for, but do not get angry. <n><t>I do know who the \"Walking Map\" is as he is my twin brother. As you are so sincere, for your information, he lives in <bIcicle Castle>. His name is <bLuke>, bring my letter along and show it to him at (1320, 585). <n><t>P.S He is my twin brother so he will look like me!" )
	MisBeginCondition(NoRecord, 259)
	MisBeginCondition(HasRecord, 258)
	MisBeginCondition(NoMission, 259)
	MisBeginAction(AddMission, 259)
	MisBeginAction(GiveItem, 4142, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(ClearMission, 259)

	MisNeed(MIS_NEED_DESP, "Bring the <yLetter of Baros> to <bLuke> in Icicle City at (1320, 585)")

	MisHelpTalk("<t>The goods are here, you have taken your letter, anything else?")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����ֵ�
	DefineMission( 296, "The Li Brothers", 259, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Hmm...This letter is from my brother, seems like you are another victim of him.<n><t>He always pretends to be me in jest, I hope you are not angry, it's just a prank he plays all the time, he is a nice person actually.")
	MisResultCondition(NoRecord, 259 )
	MisResultCondition(HasMission, 259)
	MisResultCondition(HasItem, 4142, 1)
	MisResultAction(TakeItem, 4142, 1 )
	MisResultAction(ClearMission, 259 )
	MisResultAction(SetRecord, 259 )
	MisResultAction(AddExp,3225,3225)	
	MisResultAction(AddMoney,1742,1742)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------׼���
	DefineMission( 297, "Activity Preparation", 260 )

	MisBeginTalk( "<t>Although I do know where \"Nine Haven\" is, I must warn you in advance.<n><t>The place is fraught with danger and peril. I do hope you are strong enough to face the trials ahead.<n><t>I do not wish to send a person to their death so I propose a trial.<n><t>Head east by ship from Icicle Harbor till you reach an area full of Feral Skeleton Fish. Bring back 12 <ySkeleton Fish Scales> and I will present you with a reward.")
	MisBeginCondition(NoRecord, 260)
	MisBeginCondition(HasRecord, 259)
	MisBeginCondition(NoMission, 260)
	MisBeginAction(AddMission, 260)
	MisBeginAction(AddTrigger, 2601, TE_GETITEM, 4143, 12)		
	MisCancelAction(ClearMission, 260)

	MisNeed(MIS_NEED_DESP, "Bring 12 <ySkeleton Fish Scales> to Luke in Icicle City at (1320, 585)")
	MisNeed(MIS_NEED_ITEM, 4143, 12, 10, 12)

	MisResultTalk("<t>Looks like you have succeeded!<n><t>Let me use the scale you brought back to make <rRing of Fish Scale>. You will be powerful out in the sea if you wear this ring.")
	MisHelpTalk("<t>If you are not prepare, then do not set sail yet. The seas are dangerous. Take precaution.")
	MisResultCondition(HasMission, 260 )
	MisResultCondition(HasItem, 4143, 12 )
	MisResultAction(TakeItem, 4143, 12 )
	MisResultAction(GiveItem, 4144, 1, 4 )
	MisResultAction(ClearMission, 260 )
	MisResultAction(SetRecord, 260 )
	MisResultAction(AddExp,7110,7110)	
	MisResultAction(AddMoney,3548,3548)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4143 )	
	TriggerAction( 1, AddNextFlag, 260, 10, 12 )
	RegCurTrigger( 2601 )

-------------------------------------------------ף��֮��
	DefineMission( 298, "Blessing Hand", 261 )

	MisBeginTalk( "<t>Hmm�� This Ring of Sea gives you the strength of the sea, but it requires a experienced soul to use it. Thus you cannot use it yet.<n><t>From Icicle Castle, head east. You will need to cross a narrow path to reach <bIcespire Haven>. There you will meet <bMaster Kerra>. His touch is rumored to be able to bring anything to life. Obtain blessing from him and return to me." )
	MisBeginCondition(NoRecord, 261)
	MisBeginCondition(NoMission, 261)
	MisBeginCondition(HasRecord, 260)
	MisBeginAction(AddMission, 261)
	MisCancelAction(ClearMission, 261)

	MisNeed(MIS_NEED_DESP, "Bring the <yRing of Fish Scale> to <bIcespire Haven> and request for <bMaster Kerra>'s blessing at (2664, 654)")

	MisHelpTalk("<t>Go look for Master Kerra now! He can help you unlock the power of the ring!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ף��֮��
	DefineMission( 299, "Blessing Hand", 261, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Young Adventurer, are you here for directions? Or perhaps a ring? Anyway, you have found me.")
	MisResultCondition(NoRecord, 261)
	MisResultCondition(HasMission, 261)
	MisResultAction(ClearMission, 261 )
	MisResultAction(SetRecord, 261 )
	MisResultAction(AddExp,3916,3916)
	MisResultAction(AddMoney,1807,1807)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------��������
	DefineMission( 300, "Spiritual Strength", 262 )

	MisBeginTalk( "<t> Countless people have requested my blessings. In fact, only a selected few has their wish granted, that is because I am only a guide. I have a strong mental power thus I can guide them successfully. Only those pure of heart can obtain the blessings. I do not wish to give you false hopes. Prove to me by heading eastwards towards the Icespire Haven, from there head north. You will find a group of Undead Archers at (2746, 450). Among them hides a Master Archer, he was resurrected by an unknown force. Kill him and bring his \"Radiant Soul\" so I can put him to rest.")
	MisBeginCondition(NoRecord, 262)
	MisBeginCondition(HasRecord, 261)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 262)
	MisBeginAction(AddTrigger, 2621, TE_GETITEM, 4145, 1)		
	MisCancelAction(ClearMission, 262)

	MisNeed(MIS_NEED_DESP, "Bring back a Radiant Soul to Master Kerra in Icespire Haven at (2664, 654)")
	MisNeed(MIS_NEED_ITEM, 4145, 1, 10, 1)

	MisResultTalk("<t>You have done it, now I am convinced that you are the destined one.<n><t>I shall bless you on you journey and activate the power of your ring, let evil tremble at the land's new champion.")
	MisHelpTalk("<t>If you have any hesitation, you can head back to Icicle Castle.")
	MisResultCondition(HasMission, 262 )
	MisResultCondition(HasItem, 4144, 1 )
	MisResultCondition(HasItem, 4145, 1 )
	MisResultAction(TakeItem, 4145, 1 )
	MisResultAction(TakeItem, 4144, 1 )
	MisResultAction(GiveItem, 4146, 1 , 4)
	MisResultAction(ClearMission, 262 )
	MisResultAction(SetRecord, 262 )
	MisResultAction(SystemNotice, "Obtained quest: \"Return to Icicle\"" )
	MisResultAction(ObligeAcceptMission, 7 )
	MisResultAction(AddExp,8620,8620)	
	MisResultAction(AddMoney,3682,3682)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4145 )	
	TriggerAction( 1, AddNextFlag, 262, 10, 1 )
	RegCurTrigger( 2621 )

-----------------------------------���ر���
	DefineMission( 302, "Return to Icicle", 7, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Dear Friend, I know you are successful.<n><t>Prepare for what lies ahead.")
	MisResultCondition(NoRecord, 7 )
	MisResultCondition(HasMission, 7)
	MisResultAction(ClearMission, 7 )
	MisResultAction(SetRecord, 7 )
	MisResultAction(AddExp,5211,5211)	
	MisResultAction(AddMoney,1910,1910)	
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------ǰ��t9
	DefineMission( 303, "Go Forth to Ninth Haven", 264 )

	MisBeginTalk( "<t>The Nine Haven you are talking about, existed 10 years ago.<n><t>Back then it was a mercantile trading port protected by the royal navy. They were raided by pirates and razed to ruins.<n><t>When it was rebuilt it was renamed <y Aerase Haven>. Due to the victory the pirates had over the navy, it is considered pirate domain.<n><t>Not many people remember the area \"Nine Haven\" as new about it's sacking were surpressed.The coordinates are (2042, 635) in the Magical Ocean. Look for <b Harbor Operator - Burni>, he will help you." )
	MisBeginCondition(NoRecord, 264)
	MisBeginCondition(HasRecord, 7)
	MisBeginCondition(NoMission, 264)
	MisBeginAction(AddMission, 264)
	MisCancelAction(ClearMission, 264)

	MisNeed(MIS_NEED_DESP, "Head out to <yAerase Haven> in Magical Ocean and look for <bHarbor Operator Buni> at (2042, 635)")

	MisHelpTalk("<t>I feel that you should enlist some friends to help.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ǰ��t9
	DefineMission( 304, "Go Forth to Ninth Haven", 264, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>What? You're looking for Nine Haven?! Haha, you're standing on it.")
	MisResultCondition(NoRecord, 264 )
	MisResultCondition(HasMission, 264)
	MisResultAction(ClearMission, 264 )
	MisResultAction(SetRecord, 264 )
	MisResultAction(AddExp,12572,12572)
	MisResultAction(AddMoney,3966,3966)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------ǰ��t9
	DefineMission( 305, "Who is Andrew?", 265 )

	MisBeginTalk( "<t>This is the what Nine Haven was 10 years ago.  We now mingle freely here with the pirates. They are not too bad after all. Just a random bar fight here and there, that's about it.<n><t>I came here after the reconstruction, I have never heard of an Andrew or anyone who has similar sounding names.<n><t>You should visit that old goat <rPirate Jeremy>.Head east towards the Isle of Chill at (2362, 657), you should find him" )
	MisBeginCondition(NoRecord, 265)
	MisBeginCondition(HasRecord, 264)
	MisBeginCondition(NoMission, 265)
	MisBeginAction(AddMission, 265)
	MisCancelAction(ClearMission, 265)

	MisNeed(MIS_NEED_DESP, "Enquire about Andrew from Pirate Jeremy at (2362, 657)")

	MisHelpTalk("<t>I feel that you should enlist some friends to help.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ǰ��t9
	DefineMission( 306, "Who is Andrew?", 265, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Who is Andrew? I don't recall! I don't even know you, leave me alone!!!")
	MisResultCondition(NoRecord, 265 )
	MisResultCondition(HasMission, 265)
	MisResultAction(ClearMission, 265 )
	MisResultAction(SetRecord, 265 )
	MisResultAction(AddExp,8292,8292)	
	MisResultAction(AddMoney,2097,2097)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------�����𶯶�
	DefineMission( 307, "Navy Don't Move!", 266 )

	MisBeginTalk( "<t>You are such a bother! If you wish to get some information from me then first, you'll have to help me out on this task.<n><t>On the northern most side of this island, you will find a detachment of <rNavy Rifleman>.Or at least that is what they claim to be...<n><t>In my opinion, they seem to be even more heartless and cruel compared to us pirates because they go about blackmailing helpless old men and throwing them onto another island as exile! Help me teach them a lesson by defeating 5 <rNavy Riflemen>.")
	MisBeginCondition(NoRecord, 266)
	MisBeginCondition(HasRecord, 265)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 266)
	MisBeginAction(AddTrigger, 2661, TE_KILL, 667, 5)		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Defeat 5 <rNavy Rifleman> and return to Pirate Jeremy at (2362, 657)")
	MisNeed(MIS_NEED_KILL, 667, 5, 10, 5)

	MisResultTalk("<t>If looks like you are a skilled person who does not cower in fear at the sight of the Navy. Very good!")
	MisHelpTalk("<t>What? Are you afraid? Get lost you useless bum!")
	MisResultCondition(HasMission, 266 )
	MisResultCondition(HasFlag, 266 , 14)
	MisResultAction(ClearMission, 266 )
	MisResultAction(SetRecord, 266 )
	MisResultAction(AddExp,21776,21776)	
	MisResultAction(AddMoney,4436,4436)	
	MisResultAction(AddExpAndType,2,26625,26625)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 266, 10, 5 )
	RegCurTrigger( 2661 )

-------------------------------------------------�ּ��ܿ�
	DefineMission( 308, "Jack Again", 267 )

	MisBeginTalk( "<t>Young one, I like your bravery. Andrew has been living on this island for years but he changed his name to Darwen and led a secluded life. Nobody knows that he is Andrew. <n><t>A year ago, a group of pirates figured out that <rDarwen> and Andrew was the same person, they persuaded him to go with them. I vaguely remember that they were men from Jack the Pirate's group. I think you might wanna go to Jack the Pirate's Headquaters at <yCanary Isle>." )
	MisBeginCondition(NoRecord, 267)
	MisBeginCondition(HasRecord, 266)
	MisBeginCondition(NoMission, 267)
	MisBeginAction(AddMission, 267)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Sneak into the remote part of <yCanary Isle> and look for Captain Jack at (1672, 3777)")

	MisHelpTalk("<t>Look for me if you want to be a pirate. I guess we will get along well.")
	MisResultCondition(AlwaysFailure )

-----------------------------------�ּ��ܿ�
	DefineMission( 309, "Jack Again", 267, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Well Well, we meet again. I believe that you already guessed that I am the infamous Jack the Pirate.<n><t>I do hope you don't go around telling everyone who I am��")
	MisResultCondition(NoRecord, 267 )
	MisResultCondition(HasMission, 267)
	MisResultAction(ClearMission, 267 )
	MisResultAction(SetRecord, 267 )
	MisResultAction(AddExp,13026,13026)
	MisResultAction(AddMoney,2303,2303)
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------�Ժ�����
	DefineMission( 310, "I'll be Back!", 268 )

	MisBeginTalk( "Hmm��No��I mean that��Oh��I have nothing for you now. Maybe next time. Go back now." )
	MisBeginCondition(NoRecord, 268)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 268)
	MisBeginAction(AddMission, 268)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for Captain Jack at (1672, 3777)")

	MisHelpTalk("Hmm��Looks like I need to complete my investigation.")
	MisResultCondition(AlwaysFailure )


-----------------------------------���վ���
	DefineMission( 311, "Lure Behemoth", 4, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>I cannot believe it! You managed to kill the Behemoth! I am so happy! Now I can enjoy biscuit made by Beldi in peace! Thank you!")
	MisResultCondition(HasMission, 4 )
	MisResultCondition(NoRecord, 4 )
	MisResultCondition(NoMisssionFailure, 4 )
	MisResultCondition(HasFlag, 4, 10 )
	MisResultAction(ClearMission, 4 )
	MisResultAction(SetRecord, 4 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultAction(ClearTrigger, 108)


-------------------------------------------------�����顱
	DefineMission( 312, "\"Investigation\"", 269 )

	MisBeginTalk( "<t>Who sent you?  Davy? Jones? Sparrow?<n><t>Forget it, like it matters. Andrew? Hmm that name seems to ring a bell. Guess he went fishing a few days ago. Look, I have 8000 crew members, I cannot possibly remember all their names. Everyone of my crew mates has a <rEmblem> of his own name. Why don't you go it look yourself.")
	MisBeginCondition(NoRecord, 269)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 269)
	MisBeginCondition(HasMission, 268)
	MisBeginAction(AddMission, 269)
	MisBeginAction(ClearMission, 268 )
	MisBeginAction(SetRecord, 268 )
	MisBeginAction(AddTrigger, 2691, TE_GETITEM, 3790, 1)
	MisBeginAction(AddTrigger, 2692, TE_GETITEM, 3791, 1)
	MisBeginAction(AddTrigger, 2693, TE_GETITEM, 3792, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_ITEM, 3790, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3791, 1, 11, 1)
	MisNeed(MIS_NEED_ITEM, 3792, 1, 12, 1)
	MisNeed(MIS_NEED_DESP, "Obtain some <rEmblem> from Jack's henchmen to prove that you are carrying out an \"Investigation\".")


	MisResultTalk("<t>The emblem in you hand belongs to my crew, how did the thing goes?<n><t>Wait! Wait! Why is there blood on the emblem? Don't tell me that��I think forget it. Do not investigate any further.<n><t>Darn Andrew...He would not let me have a peaceful day when after he is dead. Look for me again at a later time. I will tell you the whole story.")
	MisHelpTalk("<t>So how was it? If you do it slowly, you will find the person you are looking for.")
	MisResultCondition(HasMission, 269 )
	MisResultCondition(HasItem, 3790 , 1)
	MisResultCondition(HasItem, 3791 , 1)
	MisResultCondition(HasItem, 3792 , 1)
	MisResultAction(TakeItem, 3790, 1 )
	MisResultAction(TakeItem, 3791, 1 )
	MisResultAction(TakeItem, 3792, 1 )
	MisResultAction(ClearMission, 269 )
	MisResultAction(SetRecord, 269 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3790 )
	TriggerAction( 1, AddNextFlag, 269, 10, 1 )
	RegCurTrigger( 2691 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3791 )
	TriggerAction( 1, AddNextFlag, 269, 11, 1 )
	RegCurTrigger( 2692 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3792)
	TriggerAction( 1, AddNextFlag, 269, 12, 1 )
	RegCurTrigger( 2693 )

-------------------------------------------------³�°�������
	DefineMission( 313, "Memento of Andrew", 270 )

	MisBeginTalk( "<t> As you know Andrew changed his name to Darwen. But he cannot fool me with such an anagram. There has been multiple warrants for his arrest.<n><t>When I eventually found him, I offered him the chance of either being brought to trial or joining my crew, he choose the latter. Six months later, he contracted a strange disease. We had no choice but to put him on a raft and send him away. The tradition of pirates states that when a crew member is no longer with us, his treasure and belongings are shared by those still alive, you have to ask permission from me mates to be able collect his belongings.")
	MisBeginCondition(NoRecord, 270)
	MisBeginCondition(HasRecord, 269)
	MisBeginCondition(NoMission, 270)
	MisBeginAction(AddMission, 270)
	MisBeginAction(AddTrigger, 2701, TE_GETITEM, 4219, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Find Jack's underling and get back <rMemento of Andrew>")
	MisNeed(MIS_NEED_ITEM, 4219, 1, 10, 1)

	MisResultTalk("<t>Yes, this is the <r belongings of Andrew>. I have not taken a look into it yet.")
	MisHelpTalk("<t>Found the <rMemento of Andrew>? Did you mistreat my henchmen? Continue looking then")
	MisResultCondition(HasMission, 270 )
	MisResultCondition(HasItem, 4219 , 1)
	MisResultAction(TakeItem, 4219, 1 )
	MisResultAction(GiveItem, 4220, 1, 4 )
	MisResultAction(ClearMission, 270 )
	MisResultAction(SetRecord, 270 )
	MisResultAction(AddExp,30000,30000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	MisResultAction(GiveItem,1815,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4219 )
	TriggerAction( 1, AddNextFlag, 270, 10, 1 )
	RegCurTrigger( 2701 )


-----------------------------------����֮Ѫ1
	DefineMission( 314, "Blood of Pirate", 8, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Oh. Its something by the name of Heart of Sailor. It can reflect the inner self of anyone. If your mind is pure, you will be able to access whatever is hidden by the Heart. However, it is rumored to be lost for centuries. You mean you have Andrew's memento?<n><t>Looks like you will need some help. Approach <bIcicle Royal Mas> at (1346, 451). He will have some answer for you.")
	MisResultCondition(NoRecord, 8 )
	MisResultCondition(HasMission, 8)
	MisResultAction(ClearMission, 8 )
	MisResultAction(SetRecord, 8 )
	MisResultAction(ObligeAcceptMission, 11 )

-----------------------------------����֮��1
	DefineMission( 315, "Soul of Navy", 9, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Oh. Its something by the name of Heart of Sailor. It can reflect the inner self of anyone. If your mind is pure, you will be able to access whatever is hidden by the Heart. However, it is rumored to be lost for centuries. You mean you have Andrew's memento?<n><t>Looks like you will need some help. Approach <bGeneral William> at (2277, 2831). He will have some answer for you.")
	MisResultCondition(NoRecord, 9 )
	MisResultCondition(HasMission, 9)
	MisResultAction(ClearMission, 9)
	MisResultAction(SetRecord, 9 )
	MisResultAction(ObligeAcceptMission, 12 )

-----------------------------------����֮��1
	DefineMission( 316, "Nameless One", 10, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Oh. Its something by the name of Heart of Sailor. It can reflect the inner self of anyone. If your mind is pure, you will be able to access whatever is hidden by the Heart. However, it is rumored to be lost for centuries. You mean you have Andrew's memento?<n><t>Looks like you will need some help. Approach <bArgent Secretary - Salvier> at (2219, 2749). He will have some answer for you.")
	MisResultCondition(NoRecord, 10 )
	MisResultCondition(HasMission, 10)
	MisResultAction(ClearMission, 10)
	MisResultAction(SetRecord, 10 )
	MisResultAction(ObligeAcceptMission, 13 )

-------------------------------------------------����֮Ѫ2
	DefineMission( 317, "Blood of Pirate", 271 )

	MisBeginTalk( "<t>Blood of a Pirate? It been long since somebody asked. Looks like you have gotten hold of the Heart of Sailor. Blood of a Pirate refers to the blood of an enemy.<n><t>Mix the blood and tear of your enemy and pour it over the Heart to gain access to its secret.<n><t><yNavy Rifleman> at (2389, 575) are too arrogant. Use them as experiment.")
	MisBeginCondition(NoRecord, 271)
	MisBeginCondition(NoMission, 271)
	MisBeginCondition(HasMission, 11)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 11)
	MisBeginAction(SetRecord, 11)
	MisBeginAction(AddMission, 271)
	MisBeginAction(AddTrigger, 2711, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 30 <yNavy Riflemen> and return to <bIcicle Royal - Mas> at (1346, 451)")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>Have you killed enough <bNavy Riflemen>? Then the Heart of Sailor should have accepted your soul. <n><t> ( I put my hands into my bag and found out that the Heart is opened. A key lies in it)")
	MisHelpTalk("<t>How does it go? Did those <bNavy Rifleman> give you any trouble?")
	MisResultCondition(HasMission, 271 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasFlag, 271, 39)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 271 )
	MisResultAction(SetRecord, 271 )
	MisResultAction(AddExp,50000,50000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 271, 10, 30 )
	RegCurTrigger( 2711 )

-------------------------------------------------����֮��2
	DefineMission( 318, "Soul of Navy", 272 )

	MisBeginTalk( "<tThe Soul of the Navy? I haven't heard anyone mention this name for ages! Ah the great memories we had during those days when we flew that flag. Now, that flag hasn't been used in over 30 years and the only place you can still find it is in the exhibition hall of our headquarters. <n><t>If you are willing to contribute <r2 millions>, I might consider loaning it to you. Come on, didn't you want to open the Heart of the Sailor?")
	MisBeginCondition(NoRecord, 272)
	MisBeginCondition(NoMission, 272)
	MisBeginCondition(HasMission, 12)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 12)
	MisBeginAction(SetRecord, 12)
	MisBeginAction(AddMission, 272)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring <r2000000G> to General William at (2277, 2831)")

	MisResultTalk("<t>Good. You have really brought <r2 millions>? It looks like you have put your faith in the Navy. Actually, The Soul of the Navy does not exist, it is only a test of your faith. Take our the Heart now and have a look.")
	MisHelpTalk("<t>Look��its only <r2000000G> for the flag.")
	MisResultCondition(HasMission, 272 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasMoney, 2000000 )
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 272 )
	MisResultAction(SetRecord, 272 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

-------------------------------------------------����֮��3
	DefineMission( 319, "Nameless One", 273 )

	MisBeginTalk( "<t>Nameless one? You have gotten the Heart of Sailor?<n><t>Let me have a look! What a beauty�� An unknown person seeking to make a name for himself overnight��However, a lack of courage deter him from his aimbition.<n><t>To prove your courage, take this Heart to the sea near Argent at <p(77,3971)> and use it. Let your courage flow through the Heart.")
	MisBeginCondition(NoRecord, 273)
	MisBeginCondition(NoMission, 273)
	MisBeginCondition(HasMission, 13)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 13)
	MisBeginAction(SetRecord, 13)
	MisBeginAction(AddMission, 273)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Go to <pAscaron sea region at (77, 3971)> and use <rMemento of Andrew>. Return to Argent Secretary Salvier at (2219, 2749) after that.")

	MisResultTalk("<t>You say the Heart rejuvenated you and restore your ship? Looks like it has accepted your courage.<n><t>As for the key, you have to look for more clues.")
	MisHelpTalk("<t>Why are you still here. You will have to go to the sea outside of <pArgent City> at (77, 3971).")
	MisResultCondition(HasMission, 273 )
	MisResultCondition(HasMission, 14 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 273 )
	MisResultAction(SetRecord, 14 )
	MisResultAction(ClearMission, 14 )
	MisResultAction(SetRecord, 273 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultBagNeed(1)

-------------------------------------------------³�°�������
	DefineMission( 320, "Thundoria Bank", 274 )

	MisBeginTalk( "<t>This is...Please wait a moment. Allow me to check...Sorry, we cannot pass you the item just yet.<n><t>According to our regulation, you will have to obtain the signatures of the Great Four. Bye bye...Next please...")
	MisBeginCondition(NoRecord, 274)
	MisBeginCondition(NoMission, 274)
	MisBeginCondition(HasMission, 15)
	MisBeginCondition(HasItem, 4222, 1)
	MisBeginAction(AddMission, 274)
	MisBeginAction(ClearMission, 15)
	MisBeginAction(SetRecord, 15)
	MisBeginAction(AddTrigger, 2741, TE_GETITEM, 4223, 1)
	MisBeginAction(AddTrigger, 2742, TE_GETITEM, 4224, 1)
	MisBeginAction(AddTrigger, 2743, TE_GETITEM, 4225, 1)
	MisBeginAction(AddTrigger, 2744, TE_GETITEM, 4226, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring the signatures of the 4 Great Ones to the Banker of Thundoria at (743, 1534)")
	MisNeed(MIS_NEED_ITEM, 4223, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4224, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 4225, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 4226, 1, 40, 1)

	MisResultTalk("<t>You bought the signature? Let me check whether if it is fake. Hmm...Well done. Can you tell me how you manage to convince that old fool?<n><t>Ok...Ok...This is the sheepskin that you want. Don't have to be so worry.")
	MisHelpTalk("<t>Do not disturb me if you do not have the signatures. I have lots of customer to entertain.")
	MisResultCondition(HasMission, 274 )
	MisResultCondition(HasItem, 4223 , 1)
	MisResultCondition(HasItem, 4224 , 1)
	MisResultCondition(HasItem, 4225 , 1)
	MisResultCondition(HasItem, 4226 , 1)
	MisResultCondition(HasItem, 4222 , 1)
	MisResultAction(TakeItem, 4222, 1 )
	MisResultAction(TakeItem, 4223, 1 )
	MisResultAction(TakeItem, 4224, 1 )
	MisResultAction(TakeItem, 4225, 1 )
	MisResultAction(TakeItem, 4226, 1 )
	MisResultAction(GiveItem, 4227, 1, 4 )
	MisResultAction(ClearMission, 274 )
	MisResultAction(SetRecord, 274 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4223 )
	TriggerAction( 1, AddNextFlag, 274, 10, 1 )
	RegCurTrigger( 2741 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4224 )
	TriggerAction( 1, AddNextFlag, 274, 20, 1 )
	RegCurTrigger( 2742 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4225 )
	TriggerAction( 1, AddNextFlag, 274, 30, 1 )
	RegCurTrigger( 2743 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4226 )
	TriggerAction( 1, AddNextFlag, 274, 40, 1 )
	RegCurTrigger( 2744 )

-------------------------------------------------����������
	DefineMission( 321, "Friend of the Pirates", 275 )

	MisBeginTalk( "<t>Dear friend, the emblem on your shoulder already reveal your identity. We do not welcome anybody from the Navy. Please go before I��<n><t> What? You say you are a friend of the pirates? <n><t> Don't tell me you are that person��Show me a proof then. If you kill enough <yNavy Rifleman>, I might consider giving you my signature.")
	MisBeginCondition(NoRecord, 275)
	MisBeginCondition(NoRecord, 276)
	MisBeginCondition(NoMission, 275)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasNavyGuild)
	MisBeginAction(AddMission, 275)
	MisBeginAction(AddTrigger, 2751, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 30 <yNavy Riflemen> and return to <bIcicle Royal - Mas> at (1346, 451)")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>You have proved your loyalty with the blood of the enemy. From now on, you are a friend to us. Take out a piece of paper, I will sign for you.")
	MisHelpTalk("<t>Why are you still here. Do not return empty handed.")
	MisResultCondition(HasMission, 275 )
	MisResultCondition(HasFlag, 275, 39)
	MisResultAction(GiveItem, 4223, 1, 4 )
	MisResultAction(ClearMission, 275 )
	MisResultAction(SetRecord, 275 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 275, 10, 30 )
	RegCurTrigger( 2751 )

-----------------------------------�Ҳ��Ǻ���
	DefineMission( 322, "I'm not a NAVY!", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You want my signature? Only if you are not from the Navy.")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 275 )
	MisResultCondition(NoFlag, 274, 1 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoNavyGuild)
	MisResultAction(GiveItem, 4223, 1, 4)
	MisResultAction(SetFlag, 274, 1 )
	MisResultBagNeed(1)

-------------------------------------------------�����ϵ
	DefineMission( 323, "Sever Relationship", 277 )

	MisBeginTalk( "<t>You want my signature? Only LeChuck the pirate would be so thick skinned to want my signature.<n><t>Unless...Impossible, you are not that person. That person will be part of our Navy. If you wish to consider, leave the pirates and join us.")
	MisBeginCondition(NoRecord, 277)
	MisBeginCondition(NoRecord, 278 )
	MisBeginCondition(NoMission, 277)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasPirateGuild)
	MisBeginAction(AddMission, 277)
	MisBeginAction(AddTrigger, 2771, TE_KILL, 145, 10)
	MisBeginAction(AddTrigger, 2772, TE_KILL, 146, 10)
	MisBeginAction(AddTrigger, 2773, TE_KILL, 291, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill <rmembers of Jack's Pirate> to sever your ties with the pirates")
	MisNeed(MIS_NEED_KILL, 145, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 146, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 291, 10, 30, 10)

	MisResultTalk("<t>Good. I see a promising future lies ahead of you. Here, my signature. I doubt that you will obtain the signature of the other three.")
	MisHelpTalk("<t>Useless bum will always remained so. If you are unable to do it then don't return.")
	MisResultCondition(HasMission, 277 )
	MisResultCondition(HasFlag, 277, 19)
	MisResultCondition(HasFlag, 277, 29)
	MisResultCondition(HasFlag, 277, 39)
	MisResultAction(GiveItem, 4224, 1, 4 )
	MisResultAction(ClearMission, 277 )
	MisResultAction(SetRecord, 277 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 277, 10, 10 )
	RegCurTrigger( 2771 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 277, 20, 10 )
	RegCurTrigger( 2772 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 277, 30, 10 )
	RegCurTrigger( 2773 )

-----------------------------------�Ҳ��Ǻ���
	DefineMission( 324, "I'm not a PIRATE!", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You want my signature? I didn't expect to have fans. Take it! Isn't it beautiful?")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 277 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoFlag, 274, 2 )
	MisResultCondition(NoPirateGuild)
	MisResultAction(GiveItem, 4224, 1, 4)
	MisResultAction(SetFlag, 274, 2 )
	MisResultBagNeed(1)

-------------------------------------------------�¶���սʿ
	DefineMission( 325, "Lone Warrior", 279 )

	MisBeginTalk( "<t>Being a lone wanderer, you must have brave a lot of dangers. I was exploring the world on my own when I was your age.<n><t>Only a person of greatness will experience loneliness. Go forth and prove your worth. If you are the person we are waiting for, I will not hesitate to give you my signature.")
	MisBeginCondition(NoRecord, 279)
	MisBeginCondition(NoRecord, 280 )
	MisBeginCondition(NoMission, 279)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(NoGuild)
	MisBeginAction(AddMission, 279)
	MisBeginAction(AddTrigger, 2791, TE_KILL, 145, 5)
	MisBeginAction(AddTrigger, 2792, TE_KILL, 146, 5)
	MisBeginAction(AddTrigger, 2793, TE_KILL, 291, 5)
	MisBeginAction(AddTrigger, 2794, TE_KILL, 667, 5)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill all from the Navy and Pirates! Prove that you are a lone warrior who fears no one!")
	MisNeed(MIS_NEED_KILL, 145, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 146, 5, 20, 5)
	MisNeed(MIS_NEED_KILL, 291, 5, 30, 5)
	MisNeed(MIS_NEED_KILL, 667, 5, 40, 5)

	MisResultTalk("<t>I can see that you are still hesitating. You will need advance training to bring you to a higher level. Since you have fulfilled my request, I will give you my signature.")
	MisHelpTalk("<t>Do not hesitate anymore! It will make you lost.")
	MisResultCondition(HasMission, 279 )
	MisResultCondition(HasFlag, 279, 14)
	MisResultCondition(HasFlag, 279, 24)
	MisResultCondition(HasFlag, 279, 34)
	MisResultCondition(HasFlag, 279, 44)
	MisResultAction(GiveItem, 4225, 1, 4 )
	MisResultAction(ClearMission, 279 )
	MisResultAction(SetRecord, 279 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 279, 10, 5 )
	RegCurTrigger( 2791 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 279, 20, 5 )
	RegCurTrigger( 2792 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 279, 30, 5 )
	RegCurTrigger( 2793 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 279, 40, 5 )
	RegCurTrigger( 2794 )

-----------------------------------ǿ��ĺ��
	DefineMission( 326, "Powerful Backing", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Since you have the backing of a great guild, I will fulfill my promise and pass you my signature.")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 279 )
	MisResultCondition(NoFlag, 274, 3 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(HasGuild)
	MisResultAction(GiveItem, 4225, 1, 4)
	MisResultAction(SetFlag, 274, 3 )
	MisResultBagNeed(1)

-------------------------------------------------ϴˢ���
	DefineMission( 327, "Repentant", 281 )

	MisBeginTalk( "<t>Everybody is equal in the eyes of our Goddess. It does not matter whether you are a pirate or from the navy. She will bless u nevertheless. What you need to do now is to cleanse away your sins. When it is done, I will pass you my signature.")
	MisBeginCondition(NoRecord, 281)
	MisBeginCondition(NoMission, 281)
	MisBeginCondition(HasMission, 274)
	MisBeginAction(AddMission, 281)
	MisBeginAction(AddTrigger, 2811, TE_KILL, 620, 30)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Use blood of the <yShadow Mermaid> to cleanse away your sins and report back to \"Clan Chief - Albuda\" at (898, 3640).")
	MisNeed(MIS_NEED_KILL, 620, 30, 10, 30)

	MisResultTalk("<t>May the goddess bless you. Take my signature and blessing with you. Stay pure and remain true.")
	MisHelpTalk("<t>Your sins are not cleanse yet. Work harder and may the Goddess be with you")
	MisResultCondition(HasMission, 281 )
	MisResultCondition(HasFlag, 281, 39)
	MisResultAction(GiveItem, 4226, 1, 4 )
	MisResultAction(ClearMission, 281 )
	MisResultAction(SetRecord, 281 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3885,1,4)
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 620 )
	TriggerAction( 1, AddNextFlag, 281, 10, 30 )
	RegCurTrigger( 2811 )

-----------------------------------³�°�������
	DefineMission( 328, "Will of Andrew", 16, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Why have you return? My guys have nothing more for you! Leave them alone! <n><t>What? You have gotten hold of Andrew's Will? Only the signature of the Great Four will grant you access to this! Let me have a look!")
	MisResultCondition(NoRecord, 16 )
	MisResultCondition(HasMission, 16)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 16)
	MisResultAction(SetRecord, 16 )

----------------------------���������
	DefineMission( 329, "Secret of the Will", 282 )
	
	MisBeginTalk( "<t>Haha��Andrew is always so��weird. You must be wondering why his scibbling makes no sense. It is because this sheepskin has been treated before. Don't look at me, I don't know how to solve this.<n><t>Actually <bLittle Daniel> at (2193, 2730) can do it but don't ever tell him that I send u." )
	MisBeginCondition(NoRecord, 282)
	MisBeginCondition(HasRecord, 16)
	MisBeginCondition(NoMission, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 282)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Look for <bLittle Daniel> at (2193, 2730) to find out the secret of the Will")
	
	MisHelpTalk("<t>Remember! Do not ever tell Little Daniel that I sent you.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���������
	DefineMission( 330, "Secret of the Will", 282, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Let me have a look. Hmm��this smells like an Invisible Ink. I am surprise that there are people who know how to make Invisible Ink. I can help you concoct a negator. However, you must tell me who told you that I knew how to make a negator.")
	MisResultCondition(NoRecord, 282 )
	MisResultCondition(HasMission, 282)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 282)
	MisResultAction(SetRecord, 282 )

----------------------------�ܿ˽���
	DefineMission( 331, "Jack Introduction", 283 )
	
	MisBeginTalk( "<t>What! So the despicable <bJack> told you? Tell him to kill himself, I will not help you. How I wish to forget the formula to concoct the negator. Stay away from me! I will not see you again!" )
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 283)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Go to (1672, 3777) and look for Jack regarding what has happened today")
	
	MisHelpTalk("<t>Why are you still here? Do I have to throw acid to chase you away?")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------�ƹݴ���
	DefineMission( 332, "Rumour of the Bar", 284 )

	MisBeginTalk( "<t>So you heard it from the tavern? I must be really drunk for it to slip my mouth.<n><t>Forget it, since you are able to find me, it seems that we are fated in some ways. Now, I will tell you the recipe. You are required to find these ingredients, then I will help you create the antidote.<n><t>Listen carefully, I requires 3 <rBloody Polliwog Taisl>, 5 <rHearts of Temptest Sea Jelly>, 7 <rDangerous Shark Cartilages> and 9 <rTopaz Dolphin Dorsal Fins>. Go and locate them. Hurry up before I change my mind.")
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 284)
	MisBeginAction(AddTrigger, 2841, TE_GETITEM, 1255, 3)
	MisBeginAction(AddTrigger, 2842, TE_GETITEM, 1291, 5)
	MisBeginAction(AddTrigger, 2843, TE_GETITEM, 1365, 7)
	MisBeginAction(AddTrigger, 2844, TE_GETITEM, 1292, 9)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Get the ingredients of the antidote for Little Daniel at (2193, 2730)")
	MisNeed(MIS_NEED_ITEM, 1255, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 1291, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 1365, 7, 30, 7)
	MisNeed(MIS_NEED_ITEM, 1292, 9, 40, 9)

	MisResultTalk("<t>Good. I will let you see what the writing on the sheepskin. Hmm��This is it. Take it. I have not done it in a long while. Don't blame me if anything goes wrong.")
	MisHelpTalk("<t>You have not found the ingredient? Then how you expect me to concoct the negator?")
	MisResultCondition(HasMission, 284 )
	MisResultCondition(HasItem, 1255, 3)
	MisResultCondition(HasItem, 1291, 5)
	MisResultCondition(HasItem, 1365, 7)
	MisResultCondition(HasItem, 1292, 9)
	MisResultAction(TakeItem, 1255, 3)
	MisResultAction(TakeItem, 1291, 5)
	MisResultAction(TakeItem, 1365, 7)
	MisResultAction(TakeItem, 1292, 9)
	MisResultAction(GiveItem, 4228, 1, 4)
	MisResultAction(SetRecord, 284 )
	MisResultAction(ClearMission, 284 )
	MisResultBagNeed(1)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1255 )
	TriggerAction( 1, AddNextFlag, 284, 10, 3 )
	RegCurTrigger( 2841 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1291 )
	TriggerAction( 1, AddNextFlag, 284, 20, 5 )
	RegCurTrigger( 2842 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1365 )
	TriggerAction( 1, AddNextFlag, 284, 30, 7 )
	RegCurTrigger( 2843 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1292 )
	TriggerAction( 1, AddNextFlag, 284, 40, 9 )
	RegCurTrigger( 2844 )

----------------------------�������
	DefineMission( 333, "Love Entanglement", 285 )
	
	MisBeginTalk( "<t>Oh my god! You actually ignored my warning! Didn't I ask you not to mention my name?<n><t>Forget it, since Little Daniel is furious, the only person who is able to pacify him is <pBargirl - Donna>. Only she can help you. She can be found at (2224, 2887).<n><t>As to why..., you can ask <pBargirl - Donna> for the answers." )
	MisBeginCondition(NoRecord, 285)
	MisBeginCondition(HasMission, 283)
	MisBeginCondition(NoMission, 285)
	MisBeginAction(AddMission, 285)
	MisBeginAction(SetRecord, 283)
	MisBeginAction(ClearMission, 283)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Seek help from <bBarmaid Donna> at (2224, 2887)")
	
	MisHelpTalk("<t>Do not linger around here anymore. Little Daniel might forget the formula anytime.")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------�������
	DefineMission( 334, "Love Entanglement", 286 )

	MisBeginTalk( "<t>What? Little Daniel is still angry with Jack after so many years��Both of them were fighting over me years ago and Jack broke Little Daniel's leg. He took it badly and bear a grudge on Jack. <n><t>Its all my fault. Let me resolve their enmity. I found out that Little Daniel is doing a research on pumpkin recently. Bring me one <rFrightful Pumpkin Head> from <yVicious Pumpkin Knight>.")
	MisBeginCondition(NoRecord, 286)
	MisBeginCondition(NoMission, 286)
	MisBeginCondition(HasRecord, 283)
	MisBeginCondition(HasMission, 285)
	MisBeginAction(AddMission, 286)
	MisBeginAction(AddTrigger, 2861, TE_GETITEM, 4735, 1)
	MisBeginAction(SetRecord, 285)
	MisBeginAction(ClearMission, 285)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring 1 <rFrightful Pumpkin Head> to <pBarmaid Donna> at (2224, 2887)")
	MisNeed(MIS_NEED_ITEM, 4735, 1, 10, 1)

	MisResultTalk("<t>Hehe! This is a beautiful Pumpkin Head. I'm sure he will like this. Hmm��If I crave my signature on it he will surely take it in exchange for the Invisible Ink Negator.")
	MisHelpTalk("<t>You have not gotten any Frightful Pumpkin Head? I cannot help you then.")
	MisResultCondition(HasMission, 286 )
	MisResultCondition(HasItem, 4735, 1)
	MisResultAction(TakeItem, 4735, 1)
	MisResultAction(GiveItem, 4229, 1, 4)
	MisResultAction(SetRecord, 286 )
	MisResultAction(ClearMission, 286 )
	MisResultAction(ObligeAcceptMission, 17 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4735 )
	TriggerAction( 1, AddNextFlag, 286, 10, 1 )
	RegCurTrigger( 2861 )

-----------------------------------�������
	DefineMission( 335, "Love Entanglement", 17, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Didn't I ask you to stay clear from me? Wait��What is that you are holding? A pumpkin head with Donna's signature! Can you give it to me? I will use the Invisible Ink Negator as a trade.")
	MisResultCondition(NoRecord, 17 )
	MisResultCondition(HasMission, 17 )
	MisResultCondition(HasItem, 4229, 1)
	MisResultAction(TakeItem, 4229, 1 )
	MisResultAction(SetRecord, 17 )
	MisResultAction(ClearMission, 17 )
	MisResultAction(GiveItem, 4228, 1, 4 )
	MisResultBagNeed(1)

-------------------------------------------------��������
	DefineMission( 336, "Language of the Pirates", 287 )

	MisBeginTalk( "<t>Oh you found an ancient verse? Nobody believes in this legend anymore but if you insist I'll tell you about it. In the legend, a beautiful mermaid protects a mysterious carcass. The carcass's eye is always looking towards the direction of the hidden treasure. According to the legend, if you drench fresh blood onto the skeleton, it will summon forth a buried treasure. However no one has ever seen or taken such a treasure before. Are you willing to give it a try? <n><t>(Mermaids? There are so many mermaids out there, how do I find the right one? Could it be the <yMermaid Queen>? I don't think Jack would play such a trick would he? Here I come <rMermaid Carcass>, wait for me!)")
	MisBeginCondition(NoRecord, 287)
	MisBeginCondition(NoRecord, 18)
	MisBeginCondition(HasMission, 18)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(TakeItem, 4227, 1)
	MisBeginAction(AddMission, 287)
	MisBeginAction(AddTrigger, 2871, TE_GETITEM, 4230, 1)
	MisBeginAction(SetRecord, 18)
	MisBeginAction(ClearMission, 18)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Follow Jack's intruction and look for <yMermaid Queen> at (3385, 1985) to obtain the <rMermaid Carcass>. Return to Jack after that.")
	MisNeed(MIS_NEED_ITEM, 4230, 1, 10, 1)

	MisResultTalk("<t>I knew you'd definitely be able to find out where the Mermaid Carcass is. Have you seen it yet?")
	MisHelpTalk("<t>Have you found the Mermaid Carcass yet ? If you find it, please let me take a look at it.")
	MisResultCondition(HasMission, 287 )
	MisResultCondition(HasItem, 4230, 1)
	MisResultAction(SetRecord, 287 )
	MisResultAction(ClearMission, 287 )
	MisResultAction(ObligeAcceptMission, 19 )
	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3463,10,4)
	MisResultAction(GiveItem,1092,5,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4230 )
	TriggerAction( 1, AddNextFlag, 287, 10, 1 )
	RegCurTrigger( 2871 )

-----------------------------------�Ե��ռ�
	DefineMission( 337, "Mystic Diary", 20, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Oh! I haven't seen this kind of writings in a long time. Why are you here yet again? I had thought that I would never see this kind of writings again young man. Unfortunately for you, I have sworn never to translate this sort of language again for anyone. Please leave, it is a cursed language and anyone who gets involved with it will end up with a bad fate.<n><t>Perhaps only the so called goddess followers will be able to instigate others into taking this kind of risk.")
	MisResultCondition(NoRecord, 20 )
	MisResultCondition(HasMission, 20 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 20 )
	MisResultAction(ClearMission, 20 )
	
----------------------------Ů���׷����
	DefineMission( 338, "Goddess's Follower", 288 )
	
	MisBeginTalk( "<t>Of all the goddess followers, the most famous should be <bClan Chief - Albuda>��" )
	MisBeginCondition(NoRecord, 288)
	MisBeginCondition(HasRecord, 20)
	MisBeginCondition(NoMission, 288)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 288)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Ask <bClan Chief Albuda> at (898, 3640) about the journal")
	
	MisHelpTalk("<t>I believe I have already told you what you want. Look for other people now.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ů���׷����
	DefineMission( 339, "Goddess's Follower", 288, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Quickly get the diary away from me! Get that demonic writings out of my sight! Do not corrupt my eyes.<n><t>I had thought that besides <bHoly Priestess Ada> at (862, 3303), no one else would be concerned over such devilish writings! Those who study these kinds of languages will never have a good outcome. May the Goddess punish you!")
	MisResultCondition(NoRecord, 288)
	MisResultCondition(HasMission, 288 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 288 )
	MisResultAction(ClearMission, 288 )

----------------------------ʥŮ
	DefineMission( 340, "Holy Priestess", 289 )
	
	MisBeginTalk( "<t>I should warn you not to get involved with whatever <bHoly Priestess Ada> is doing otherwise you'll become an unwelcome person around here. <n><t> (What's wrong with all these old men? Why does the sight of this writings scare them? Maybe I should take up Albuda's suggestion and head towards where Ada is at (862, 3303). She seems to be quite knowledgeable in this field, maybe I should try my luck.)." )
	MisBeginCondition(NoRecord, 289)
	MisBeginCondition(HasRecord, 288)
	MisBeginCondition(NoMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 289)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Ask <bHoly Priestess - Ada> at (862, 3303) about the journal")
	
	MisHelpTalk("<t>I say again! Do not look for Ada! She is a jinx!")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------�ϵ�֤��
	DefineMission( 341, "Testament of the Piety", 290 )

	MisBeginTalk( "<t>Ever since that incident happened, Clan Chief Albuda stopped the entire research related to this kind of language.<n><t>As you can see, I can only continue my research here and not anywhere else. I can translate the contents for you, but you'll have to prove your loyalty towards the Goddess, only those who are kind at heart yet determined can know the contents of the writings. Otherwise, the historical tragedy will once again come forth.<n><t>As for the method, you can ask High Priest <bGannon> at (862, 3500)  he will know what to do.")
	MisBeginCondition(NoRecord, 290)
	MisBeginCondition(HasMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 290)
	MisBeginAction(AddTrigger, 2901, TE_GETITEM, 3954, 1)
	MisBeginAction(SetRecord, 289)
	MisBeginAction(ClearMission, 289)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Show your determination and kindness to <bHigh Priest - Gannon> at (862, 3500)")
	MisNeed(MIS_NEED_ITEM, 3954, 1, 15, 1)

	MisResultTalk("<t>Great, this book is something which anyone who joins the healer group must possess, if you can obtain it, High Priest Gannon will definitely approve your loyalty towards the goddess. As for me, I'll fulfill my promise, here, take it, I've already translated it, I hope you will make good use of the contents in it.")
	MisHelpTalk("<t>You still have doubts in your heart. When you can really understand the purpose of the Goddess, look for me again")
	MisResultCondition(HasMission, 290 )
	MisResultCondition(HasItem, 3954, 1)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(TakeItem, 4231, 1)
	MisResultAction(TakeItem, 3954, 1)
	MisResultAction(GiveItem, 4232, 1, 4)
	MisResultAction(SetRecord, 290 )
	MisResultAction(ClearMission, 290 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3954 )
	TriggerAction( 1, AddNextFlag, 290, 15, 1 )
	RegCurTrigger( 2901 )


-----------------------------------�ϵ�֤��
	DefineMission( 342, "Testament of the Piety", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Child, ever since you decided to become a Herbalist, I forsaw that you would come to me one day. Your innermost feelings already proves your loyalty towards the goddess. Take this Righteous Document as your proof and use it to do good!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 5)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------�ϵ�֤��
	DefineMission( 343, "Testament of the Piety", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Child, ever since you decided to become a Herbalist, I forsaw that you would come to me one day. Your innermost feelings already proves your loyalty towards the goddess. Take this Righteous Document as your proof and use it to do good!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 13)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------�ϵ�֤��
	DefineMission( 344, "Testament of the Piety", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Child, ever since you decided to become a Herbalist, I forsaw that you would come to me one day. Your innermost feelings already proves your loyalty towards the goddess. Take this Righteous Document as your proof and use it to do good!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------�ϵ�֤��
	DefineMission( 345, "Testament of the Piety", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Regardless of what class you are, you're still a child of the goddess and she once told me that you would eventually come to me one day to clear whatever doubt that is plaguing your heart. She has set 10 tests for you.<n><t>Come back to me when you're ready as there will be no turning back once you've begun.")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoFlag, 290, 1)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetFlag, 290, 1 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 346, "Goddess Test", 291 )

	MisBeginTalk( "<t>Are you ready? We are about to commence the first test! Lets see how well you do against these <ySteel Mummies> at (440, 1440). ")
	MisBeginCondition(NoRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginCondition(HasFlag, 290, 1)
	MisBeginAction(AddMission, 291)
	MisBeginAction(AddTrigger, 2911, TE_KILL, 42, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "The First Test")
	MisNeed(MIS_NEED_KILL, 42, 10, 10, 10)

	MisResultTalk("<t>Congratulations! You have passed the first round. May the Goddess be with you.")
	MisHelpTalk("<t>Try hard, my child! The Goddess will be with you.")
	MisResultCondition(HasMission, 291 )
	MisResultCondition(HasFlag, 291, 19)
	MisResultAction(SetRecord, 291 )
	MisResultAction(ClearMission, 291 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )
	TriggerAction( 1, AddNextFlag, 291, 10, 10 )
	RegCurTrigger( 2911 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 347, "Goddess Test", 292 )

	MisBeginTalk( "<t>Congratulations for passing the first test! Next, proceed to (511, 1721) and send those <yUndead Warriors> back into their graves to rest in peace.")
	MisBeginCondition(NoRecord, 292)
	MisBeginCondition(HasRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 292)
	MisBeginAction(AddTrigger, 2921, TE_KILL, 267, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Stage 2 Test")
	MisNeed(MIS_NEED_KILL, 267, 10, 10, 10)

	MisResultTalk("<t>Congratulations! You have passed stage 2. May the Goddess be with you.")
	MisHelpTalk("<t>Try hard, my child! The Goddess will be with you.")
	MisResultCondition(HasMission, 292 )
	MisResultCondition(HasFlag, 292, 19)
	MisResultAction(SetRecord, 292 )
	MisResultAction(ClearMission, 292 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 267 )
	TriggerAction( 1, AddNextFlag, 292, 10, 10 )
	RegCurTrigger( 2921 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 348, "Goddess Test", 293 )

	MisBeginTalk( "<t>The third test is the <ySkeletal Archer> at (919, 1581). Look out for their arrows.")
	MisBeginCondition(NoRecord, 293)
	MisBeginCondition(HasRecord, 292)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 293)
	MisBeginAction(AddTrigger, 2931, TE_KILL, 541, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Third Test")
	MisNeed(MIS_NEED_KILL, 541, 10, 10, 10)

	MisResultTalk("<t>Congratulations, you have completed stage 3. May the Goddess bless you.")
	MisHelpTalk("<t>Try hard, my child! The Goddess will be with you.")
	MisResultCondition(HasMission, 293 )
	MisResultCondition(HasFlag, 293, 19)
	MisResultAction(SetRecord, 293 )
	MisResultAction(ClearMission, 293 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )
	TriggerAction( 1, AddNextFlag, 293, 10, 10 )
	RegCurTrigger( 2931 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 349, "Goddess Test", 294 )

	MisBeginTalk( "<t>Round four, <ySkeletal Warrior Leaders>! If you are killed by them, you will suffer eternal damnation and burn in hell for all eternity!")
	MisBeginCondition(NoRecord, 294)
	MisBeginCondition(HasRecord, 293)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 294)
	MisBeginAction(AddTrigger, 2941, TE_KILL, 565, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Stage 4 Test")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)

	MisResultTalk("<t>Congratulations, you have completed stage four. May the Goddess bless you.")
	MisHelpTalk("<t>Try hard, my child! The Goddess will be with you.")
	MisResultCondition(HasMission, 294 )
	MisResultCondition(HasFlag, 294, 19)
	MisResultAction(SetRecord, 294 )
	MisResultAction(ClearMission, 294 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )
	TriggerAction( 1, AddNextFlag, 294, 10, 10 )
	RegCurTrigger( 2941 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 350, "Goddess Test", 295 )

	MisBeginTalk( "<t>Round five, <yCursed Corpses>! Defeat them so that they may finally be put to rest.")
	MisBeginCondition(NoRecord, 295)
	MisBeginCondition(HasRecord, 294)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 295)
	MisBeginAction(AddTrigger, 2951, TE_KILL, 52, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 5 Test")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisResultTalk("<t>Congratulations, you have completed fifth round. May the Goddess bless you.")
	MisHelpTalk("<t>Try hard, my child! The Goddess will be with you.")
	MisResultCondition(HasMission, 295 )
	MisResultCondition(HasFlag, 295, 19)
	MisResultAction(SetRecord, 295 )
	MisResultAction(ClearMission, 295 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )
	TriggerAction( 1, AddNextFlag, 295, 10, 10 )
	RegCurTrigger( 2951 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 351, "Goddess Test", 296 )

	MisBeginTalk( "<t>The sixth test is the <yBloodthirsty Hunter> at (445, 1571). They have brought much disturbance to the peace of the forest.")
	MisBeginCondition(NoRecord, 296)
	MisBeginCondition(HasRecord, 295)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 296)
	MisBeginAction(AddTrigger, 2961, TE_KILL, 666, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 6 Test")
	MisNeed(MIS_NEED_KILL, 666, 10, 10, 10)

	MisResultTalk("<t>Congratulations, you have completed stage six. May the Goddess bless you.")
	MisHelpTalk("<t>Try hard, my child! The Goddess will be with you.")
	MisResultCondition(HasMission, 296 )
	MisResultCondition(HasFlag, 296, 19)
	MisResultAction(SetRecord, 296 )
	MisResultAction(ClearMission, 296 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )
	TriggerAction( 1, AddNextFlag, 296, 10, 10 )
	RegCurTrigger( 2961 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 352, "Goddess Test", 297 )

	MisBeginTalk( "<t>The seventh mission is the <yHorrific Cursed Corpse> at (360, 1340). Do not compare them with the normal cursed corpse, the difference is enormous.")
	MisBeginCondition(NoRecord, 297)
	MisBeginCondition(HasRecord, 296)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 297)
	MisBeginAction(AddTrigger, 2971, TE_KILL, 508, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 7")
	MisNeed(MIS_NEED_KILL, 508, 10, 10, 10)

	MisResultTalk("<t>Congratulations! You have completed Stage 7. May the Goddess bless you.")
	MisHelpTalk("<t>Try hard, my child! The Goddess will be with you.")
	MisResultCondition(HasMission, 297 )
	MisResultCondition(HasFlag, 297, 19)
	MisResultAction(SetRecord, 297 )
	MisResultAction(ClearMission, 297 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 508 )
	TriggerAction( 1, AddNextFlag, 297, 10, 10 )
	RegCurTrigger( 2971 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 353, "Goddess Test", 298 )

	MisBeginTalk( "<t>The eighth test is <yVicious Pumpkin Knight> at (622, 3518). Drive these evil beings away.")
	MisBeginCondition(NoRecord, 298)
	MisBeginCondition(HasRecord, 297)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 298)
	MisBeginAction(AddTrigger, 2981, TE_KILL, 518, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 8 Test")
	MisNeed(MIS_NEED_KILL, 518, 10, 10, 10)

	MisResultTalk("<t>Congratulations! You have completed stage eight. May the Goddess be with you.")
	MisHelpTalk("<t>Try hard, my child! The Goddess will be with you.")
	MisResultCondition(HasMission, 298 )
	MisResultCondition(HasFlag, 298, 19)
	MisResultAction(SetRecord, 298 )
	MisResultAction(ClearMission, 298 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 518 )
	TriggerAction( 1, AddNextFlag, 298, 10, 10 )
	RegCurTrigger( 2981 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 354, "Goddess Test", 299 )

	MisBeginTalk( "<t>The second last test is <yTreant Terror> at (662, 2460). They are an abomination of nature.")
	MisBeginCondition(NoRecord, 299)
	MisBeginCondition(HasRecord, 298)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 299)
	MisBeginAction(AddTrigger, 2991, TE_KILL, 547, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 9 Test")
	MisNeed(MIS_NEED_KILL, 547, 10, 10, 10)

	MisResultTalk("<t>Congratulations, you have completed the second last stage. May the Goddess bless you.")
	MisHelpTalk("<t>Try hard, my child! The Goddess will be with you.")
	MisResultCondition(HasMission, 299 )
	MisResultCondition(HasFlag, 299, 19)
	MisResultAction(SetRecord, 299 )
	MisResultAction(ClearMission, 299 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 547 )
	TriggerAction( 1, AddNextFlag, 299, 10, 10 )
	RegCurTrigger( 2991 )

-------------------------------------------------Ů��Ŀ���
	DefineMission( 355, "Goddess Test", 300 )

	MisBeginTalk( "<t>Last round is <yAnubis>. Punish him on the behalf of the Goddess")
	MisBeginCondition(NoRecord, 300)
	MisBeginCondition(HasRecord, 299)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 300)
	MisBeginAction(AddTrigger, 3001, TE_KILL, 190, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Stage 10 Test")
	MisNeed(MIS_NEED_KILL, 190, 1, 10, 1)

	MisResultTalk("<t>Well done, your actions have proven your loyalty. Please accept this, you've earned it. May the Goddess be with you wherever you go!")
	MisHelpTalk("<t>Try hard, my child! The Goddess will be with you.")
	MisResultCondition(HasMission, 300 )
	MisResultCondition(HasFlag, 300, 10)
	MisResultAction(SetRecord, 300 )
	MisResultAction(ClearMission, 300 )
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultAction(AddExp,350000,350000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3844,15,4)
	MisResultBagNeed(2)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 190 )
	TriggerAction( 1, AddNextFlag, 300, 10, 1 )
	RegCurTrigger( 3001 )


-----------------------------------����С��
	DefineMission( 356, "Mystery Town", 21, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Are you seeking the exact location?<n><t>The original text did not mention anything about it. Not even the name of Spring Town. If I hadn't overheard the Drunkard Anthony at (2222, 2889) mentioning it, I would not have been able to make head or tail out of this at all.")
	MisResultCondition(NoRecord, 21)
	MisResultCondition(HasMission, 21 )
	MisResultAction(SetRecord, 21 )
	MisResultAction(ClearMission, 21 )

----------------------------����С��
	DefineMission( 357, "Spring Town", 301 )
	
	MisBeginTalk( "<t>However, that drunkard talks nonsense most of the time and nobody knows if his words are true or false. <n><t>(Holy Priestess meant to say that the drunkard seems to know about Spring Town but I remembered having asked him about a location to hunt some shark in which he gave me the location of the North Pole instead. I almost died under the ice as a result of his misdirection. Now, it seems that I have to place my life in his words once again?! Sigh... I really don't know whether to laugh or cry.) " )
	MisBeginCondition(NoRecord, 301)
	MisBeginCondition(HasRecord, 21)
	MisBeginCondition(NoMission, 301)
	MisBeginAction(AddMission, 301)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Look for <bDrunkyard Anthony> at (2222, 2889) and ask about Spring Town")
	
	MisHelpTalk("<t><bDrunkyard - Anthony> seems to be in Argent City bar")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ð�վ���
	DefineMission( 358, "Exploration Spirit", 302 )

	MisBeginTalk( "<t>Spring town! How did you know of this name? No, you will never be able to reach the destination! I'll never tell anyone anything about spring town! I do not wish to see the tragedy happen again, unless...I am saying unless...You can prove your strength and ability and that your spirit for exploration can overcome anything that happens on the sea.<n><t>Until you can prove yourself, don't bother looking for me. You are still young with many years to live, I don't know why you would go in search of such a perilous journey.")
	MisBeginCondition(NoRecord, 302)
	MisBeginCondition(HasMission, 301)
	MisBeginCondition(HasItem, 4232, 1)
	MisBeginAction(AddMission, 302)
	MisBeginAction(SetRecord, 301)
	MisBeginAction(ClearMission, 301)
	MisBeginAction(AddTrigger, 3021, TE_GETITEM, 3962, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for <bLittle Daniel> at (2193, 2730) to obtain the proof and hand to Drunkyard Anthony at (2222, 2889)")
	MisNeed(MIS_NEED_ITEM, 3962, 1, 10, 1)

	MisResultTalk("<t>You've proven yourself. Coughs, actually, I've only heard about Spring Town from others. Whatever happen there, I have got no idea. <n><t>Hold on! What are you doing, be nice now... put down that bottle and we'll talk about things... Sigh young lad, why are you so harsh? You should seek out Granny Beldi about Spring Town, all the tales about Sprint Town came from her, I believe she knows something about Sprint Town that others do not.")
	MisHelpTalk("<t>If you can't even prove your worth to me, don't bother asking me for more information. Don't waste my time!")
	MisResultCondition(HasMission, 302 )
	MisResultCondition(HasItem, 3962, 1 )
	MisResultCondition(HasItem, 4232, 1 )
	MisResultAction(TakeItem, 4232, 1 )
	MisResultAction(TakeItem, 3962, 1 )
	MisResultAction(SetRecord, 302 )
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 302 )
			
	InitTrigger()
	TriggerCondition( 1, IsItem, 3962 )
	TriggerAction( 1, AddNextFlag, 302, 10, 1 )
	RegCurTrigger( 3021 )

-----------------------------------ð�վ���
	DefineMission( 359, "Exploration Spirit", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>I haven't see you in a long time, you wish to attain proof of your spirit of exploration? You once possessed it, but you gave it for fame, now you wish to regain it?<n><t>Anyway, here, take it and rekindle the passion when you first started on this path. May you possess the passion of the spirit of exploration forever!")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 4)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------ð�վ���
	DefineMission( 360, "Exploration Spirit", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>I haven't see you in a long time, you wish to attain proof of your spirit of exploration? You once possessed it, but you gave it for fame, now you wish to regain it?<n><t>Anyway, here, take it and rekindle the passion when you first started on this path. May you possess the passion of the spirit of exploration forever!")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 16)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------ð�վ���
	DefineMission( 361, "Exploration Spirit", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>What? You wish to have a proof of exploration? That is an extremely difficult procedure, if you have the confidence and are willing to take the risk, please let me know.")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoFlag, 302, 5)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(SetFlag, 302, 5 )

-------------------------------------------------ð�տ���
	DefineMission( 362, "Exploration Test", 303 )

	MisBeginTalk( "<t>Let me see what you have done for this test...Hmm...Ok...Hmm...Alright! I have already thought of the test in accordance with your performance, so sharpen your weapons and of course, prepare your ship for the test of the great sea.<n><t>Your first target is the <ySakura 13 Warship> found at (1950, 1286), destroy 10 of them. Oh...And remember that all of the future tests require you to destroy 10 of each. I shall remind you no more.")
	MisBeginCondition(NoRecord, 303)
	MisBeginCondition(HasFlag, 302, 5)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 303)
	MisBeginAction(AddTrigger, 3031, TE_KILL, 574, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 1")
	MisNeed(MIS_NEED_KILL, 574, 10, 10, 10)

	MisResultTalk("<t>You have completed the first task, if you are ready, let us proceed with the next.")
	MisHelpTalk("<t>Such an easy task and yet you failed to complete it? Are you sure you want to take up the risk of proving yourself?")
	MisResultCondition(HasMission, 303 )
	MisResultCondition(HasFlag, 303, 19)
	MisResultAction(SetRecord, 303 )
	MisResultAction(ClearMission, 303 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 574 )
	TriggerAction( 1, AddNextFlag, 303, 10, 10 )
	RegCurTrigger( 3031 )

-------------------------------------------------ð�տ���
	DefineMission( 363, "Exploration Test", 304 )

	MisBeginTalk( "<t>The next target is <yVampiric Polliwog> at (370, 2317). The only thing big about them is their heads, it shouldn't be a difficult task.")
	MisBeginCondition(NoRecord, 304)
	MisBeginCondition(HasRecord, 303)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 304)
	MisBeginAction(AddTrigger, 3041, TE_KILL, 638, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Second Cycle")
	MisNeed(MIS_NEED_KILL, 638, 10, 10, 10)

	MisResultTalk("<t>You have completed the second task, if you are ready, let us proceed with the next.")
	MisHelpTalk("<t>Such an easy task and yet you failed to complete it? Are you sure you want to take up the risk of proving yourself?")
	MisResultCondition(HasMission, 304 )
	MisResultCondition(HasFlag, 304, 19)
	MisResultAction(SetRecord, 304 )
	MisResultAction(ClearMission, 304 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 638 )
	TriggerAction( 1, AddNextFlag, 304, 10, 10 )
	RegCurTrigger( 3041 )



-------------------------------------------------ð�տ���
	DefineMission( 364, "Exploration Test", 305 )

	MisBeginTalk( "<t>Next��the <yTempest Sea Jellys>! Just like its name, they are soft and squishy.")
	MisBeginCondition(NoRecord, 305)
	MisBeginCondition(HasRecord, 304)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 305)
	MisBeginAction(AddTrigger, 3051, TE_KILL, 583, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Stage 3 Test")
	MisNeed(MIS_NEED_KILL, 583, 10, 10, 10)

	MisResultTalk("<t>You have completed the third task, if you are ready, let us proceed with the next.")
	MisHelpTalk("<t>Such an easy task and yet you failed to complete it? Are you sure you want to take up the risk of proving yourself?")
	MisResultCondition(HasMission, 305 )
	MisResultCondition(HasFlag, 305, 19)
	MisResultAction(SetRecord, 305 )
	MisResultAction(ClearMission, 305 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 583 )
	TriggerAction( 1, AddNextFlag, 305, 10, 10 )
	RegCurTrigger( 3051 )

-------------------------------------------------ð�տ���
	DefineMission( 365, "Exploration Test", 306 )

	MisBeginTalk( "<t>Now, the next target is the crazy <ySilk Shark> found off Ascaron coast at (3149, 3836). I wonder who gave it that name, no one has even seen them spitting silk!")
	MisBeginCondition(NoRecord, 306)
	MisBeginCondition(HasRecord, 305)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 306)
	MisBeginAction(AddTrigger, 3061, TE_KILL, 660, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 4")
	MisNeed(MIS_NEED_KILL, 660, 10, 10, 10)

	MisResultTalk("<t>You have completed the fourth task. If you are ready, let us proceed with the next.")
	MisHelpTalk("<t>Such an easy task and yet you failed to complete it? Are you sure you want to take up the risk of proving yourself?")
	MisResultCondition(HasMission, 306 )
	MisResultCondition(HasFlag, 306, 19)
	MisResultAction(SetRecord, 306 )
	MisResultAction(ClearMission, 306 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 660 )
	TriggerAction( 1, AddNextFlag, 306, 10, 10 )
	RegCurTrigger( 3061 )




-------------------------------------------------ð�տ���
	DefineMission( 366, "Exploration Test", 307 )

	MisBeginTalk( "<t>This can be a little cruel, your next target is cute little <yTopaz Dolphin> at (2631, 2048). I wonder if the topaz on their body is real.")
	MisBeginCondition(NoRecord, 307)
	MisBeginCondition(HasRecord, 306)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 307)
	MisBeginAction(AddTrigger, 3071, TE_KILL, 584, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 5")
	MisNeed(MIS_NEED_KILL, 584, 10, 10, 10)

	MisResultTalk("<t>You have completed the fifth task, if you are ready, let us proceed with the next.")
	MisHelpTalk("<t>Such an easy task and yet you failed to complete it? Are you sure you want to take up the risk of proving yourself?")
	MisResultCondition(HasMission, 307 )
	MisResultCondition(HasFlag, 307, 19)
	MisResultAction(SetRecord, 307 )
	MisResultAction(ClearMission, 307 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 584 )
	TriggerAction( 1, AddNextFlag, 307, 10, 10 )
	RegCurTrigger( 3071 )

-------------------------------------------------ð�տ���
	DefineMission( 367, "Exploration Test", 308 )

	MisBeginTalk( "<t>Next, the brother of the Tempest Sea Jellys, eradicate the <yHurricane Sea Jellys> at (1275, 3634)!")
	MisBeginCondition(NoRecord, 308)
	MisBeginCondition(HasRecord, 307)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 308)
	MisBeginAction(AddTrigger, 3081, TE_KILL, 603, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round Six")
	MisNeed(MIS_NEED_KILL, 603, 10, 10, 10)

	MisResultTalk("<t>Ok, you passed round 6. I will continue again")
	MisHelpTalk("<t>Such an easy task and yet you failed to complete it? Are you sure you want to take up the risk of proving yourself?")
	MisResultCondition(HasMission, 308 )
	MisResultCondition(HasFlag, 308, 19)
	MisResultAction(SetRecord, 308 )
	MisResultAction(ClearMission, 308 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 603 )
	TriggerAction( 1, AddNextFlag, 308, 10, 10 )
	RegCurTrigger( 3081 )


-------------------------------------------------ð�տ���
	DefineMission( 368, "Exploration Test", 309 )

	MisBeginTalk( "<t>The next target is <yMature Ruby Dolphin> which can be found at (3785, 1975). Its another pitiful monster.  May the gods forgive me.")
	MisBeginCondition(NoRecord, 309)
	MisBeginCondition(HasRecord, 308)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 309)
	MisBeginAction(AddTrigger, 3091, TE_KILL, 622, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 7")
	MisNeed(MIS_NEED_KILL, 622, 10, 10, 10)

	MisResultTalk("<t>You have completed the seventh task, if you are ready, let us proceed with the next.")
	MisHelpTalk("<t>Such an easy task and yet you failed to complete it? Are you sure you want to take up the risk of proving yourself?")
	MisResultCondition(HasMission, 309 )
	MisResultCondition(HasFlag, 309, 19)
	MisResultAction(SetRecord, 309 )
	MisResultAction(ClearMission, 309 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 622 )
	TriggerAction( 1, AddNextFlag, 309, 10, 10 )
	RegCurTrigger( 3091 )




-------------------------------------------------ð�տ���
	DefineMission( 369, "Exploration Test", 310 )

	MisBeginTalk( "<t>Next target is <ySakura 13 Pirate Command Ship> found at (2790, 1286). Its much harder this time but since you already made it so far, hang on!")
	MisBeginCondition(NoRecord, 310)
	MisBeginCondition(HasRecord, 309)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 310)
	MisBeginAction(AddTrigger, 3101, TE_KILL, 650, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 8")
	MisNeed(MIS_NEED_KILL, 650, 10, 10, 10)

	MisResultTalk("<t>Good. You have made it pass stage 8. I will continue")
	MisHelpTalk("<t>Such an easy task and yet you failed to complete it? Are you sure you want to take up the risk of proving yourself?")
	MisResultCondition(HasMission, 310 )
	MisResultCondition(HasFlag, 310, 19)
	MisResultAction(SetRecord, 310 )
	MisResultAction(ClearMission, 310 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 650 )
	TriggerAction( 1, AddNextFlag, 310, 10, 10 )
	RegCurTrigger( 3101 )


-------------------------------------------------ð�տ���
	DefineMission( 370, "Exploration Test", 311 )

	MisBeginTalk( "<t>Now for the next task, the <ySpiny Bone Fish> at (370, 2317)! They are really an eyesore, destroy them for the good of the rest of the world!")
	MisBeginCondition(NoRecord, 311)
	MisBeginCondition(HasRecord, 310)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 311)
	MisBeginAction(AddTrigger, 3111, TE_KILL, 585, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 9")
	MisNeed(MIS_NEED_KILL, 585, 10, 10, 10)

	MisResultTalk("<t>You have completed the ninth round, if you are ready, let us proceed with the next.")
	MisHelpTalk("<t>Such an easy task and yet you failed to complete it? Are you sure you want to take up the risk of proving yourself?")
	MisResultCondition(HasMission, 311 )
	MisResultCondition(HasFlag, 311, 19)
	MisResultAction(SetRecord, 311 )
	MisResultAction(ClearMission, 311 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 585 )
	TriggerAction( 1, AddNextFlag, 311, 10, 10 )
	RegCurTrigger( 3111 )

-------------------------------------------------ð�տ���
	DefineMission( 371, "Exploration Test", 312 )

	MisBeginTalk( "<t><t>Your final task concerns the government, destroy the <yNorthern Pirate Support Ship>! I hope to see them without any clothes on.")
	MisBeginCondition(NoRecord, 312)
	MisBeginCondition(HasRecord, 311)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 312)
	MisBeginAction(AddTrigger, 3121, TE_KILL, 611, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Round 10")
	MisNeed(MIS_NEED_KILL, 611, 10, 10, 10)

	MisResultTalk("<t>I never really expected you to be able to successfully complete all the tasks. You really are more adventurous than others. Take this, you deserve my Survival Compass.")
	MisHelpTalk("<t>Such an easy task and yet you failed to complete it? Are you sure you want to take up the risk of proving yourself?")
	MisResultCondition(HasMission, 312 )
	MisResultCondition(HasFlag, 312, 19)
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 312 )
        MisResultAction(GiveItem, 3962, 1, 4 )	
	MisResultAction(AddExp,250000,250000)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3845,6,4)
	MisResultBagNeed(2)

			
	InitTrigger()
	TriggerCondition( 1, IsMonster, 611 )
	TriggerAction( 1, AddNextFlag, 312, 10, 10 )
	RegCurTrigger( 3121 )

----------------------------����
	DefineMission( 372, "Beldi", 313 )
	
	MisBeginTalk( "<t>I suggest you ask <bGranny - Beldi>. She knows something." )
	MisBeginCondition(NoRecord, 313)
	MisBeginCondition(HasRecord, 302)
	MisBeginCondition(NoMission, 313)
	MisBeginAction(AddMission, 313)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Talk to <bGranny Beldi> at (2277, 2769)")
	
	MisHelpTalk("<t>Find out from <bGranny Beldo> about Spring Town")
	MisResultCondition(AlwaysFailure )


----------------------------����
	DefineMission( 373, "Beldi", 313, COMPLETE_SHOW )

	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>What did you say? Spring Town? Ah what a wonderful town name, I haven't heard that name being mentioned for at least 30 years. In the past, I used to tell the tale of this Spring town to the people but everyone said I was sprouting nonsense and they just laughed it off. Now, here you are standing in front of me, asking ask me about the story of Spring Town? Is this fate?")
	MisResultCondition(NoRecord, 313)
	MisResultCondition(HasMission, 313)
	MisResultAction(SetRecord, 313 )
	MisResultAction(ClearMission, 313 )

-----------------------------------����
	DefineMission( 374, "Hometown", 315 )

	MisBeginTalk( "<t>Maybe, I 've spoken too much rubbish. Perhaps, maybe even you won't believe me. I used to live in Spring Town, in a family of four. One day, we sailed out to the ocean to enjoy ourselves, unfortunately, we met with a huge wave and our ship sank. Although I was rescued by sailors, I have since lost contact with my family. As I was very young then and not independent enough, the sailors soon put me in an orphanage in Argent City. When I grew older, I always wanted to go back and look for my missing family but no one wanted to take the risk to go with me. Days passed by and now I'm an old man. I'm too old to travel now but if you are willing to risk your life, maybe you could help me to deliver something. The thing which I speak about is located at Icicle Castle, in a bank. If you promise to do this, I'll tell you where the exact location of Spring Town.")
	MisBeginCondition(NoRecord, 315)
	MisBeginCondition(HasRecord, 313)
	MisBeginCondition(NoMission, 315)
	MisBeginAction(AddMission, 315)
	MisBeginAction(AddTrigger, 3151, TE_GETITEM, 4235, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring back the items <bBeldi> deposited in Thundoria Bank")
	MisNeed(MIS_NEED_ITEM, 4235, 1, 1, 1)

	MisResultTalk("<t>I knew you would definitely get my earring back for me, my child. This ear ring is very important to me, it protected me when I was in danger. My sister has a similar one, seeing it reminds me of her. Please bring this back and hand it personally to my sister if she is still alive.<n><t>Take this Water Wheel, if you lose your way, you can use it to find your way out.<n><t>If I can recall correctly, the general location of Spring Town is in the Dark Blue Archipelago towards the south-eastern region. Surrounding this island are Autumn and Summer island. When you see an anchor shaped island, you won't be far off from Spring Town.")
	MisHelpTalk("<t>Go to the bank in Thundoria Castle and retrieve my stuff. Go and come back quickly!")
	MisResultCondition(HasMission, 315 )
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(GiveItem, 4237, 1 , 4)
	MisResultAction(SetRecord, 315 )
	MisResultAction(ClearMission, 315 )
	MisResultBagNeed(1)
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4235 )
	TriggerAction( 1, AddNextFlag, 315, 1, 1 )
	RegCurTrigger( 3151 )


-----------------------------------���ٵĶ���
	DefineMission( 375, "Earring of Beldi", 316 )

	MisBeginTalk( "<t>Beldi has told me about your situation. This object is her last hope, I really don't know how someone as weak as you have the confidence to deliver her stuff over safely.<n><t>No matter. Anyway, unless you are able to break Ray's record of killing 100 <yGreat Polar Bears> to prove your ability, otherwise forget about taking Beldi's stuff back.<n><t>These big animals mostly live at (3101, 666).")
	MisBeginCondition(NoRecord, 316)
	MisBeginCondition(HasMission, 315)
	MisBeginCondition(NoMission, 316)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 316)
	MisBeginAction(AddTrigger, 3161, TE_KILL, 504, 100)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Break the record set by Ray")
	MisNeed(MIS_NEED_KILL, 504, 100, 1, 100)

	MisResultTalk("<t>I really didn't expect that you will come back with positive results. Haha, there you go. These are Granny Beldi's stuff. Make sure you keep it with you. I won't let you off if you lose it!<n><t>By the way, there's a girl by the name of Mona over at the Bar, she seems to have a similar flower brooch. If you have the time, please drop by and speak to her.")
	MisHelpTalk("<t>Killing 100 <yGreat Polar Bear> seems too easy a task for you. I am currently reconsidering giving you a harder task.")
	MisResultCondition(HasMission, 316 )
	MisResultCondition(HasFlag, 316, 100)
	MisResultAction(SetRecord, 316 )
	MisResultAction(ClearMission, 316 )
        MisResultAction(GiveItem, 4235, 1, 4 )	
	MisResultBagNeed(1)
 		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 504 )
	TriggerAction( 1, AddNextFlag, 316, 1, 100 )
	RegCurTrigger( 3161 )


-------------------------------------------------����
	DefineMission( 376, "Hometown", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Granny Beldi has told me what you've been through. After so many years, there is finally someone courageous enough and willing to help her. The injuries on your body proves your courage. Here, take it, its her last hope, please protect it with all your heart and fulfill granny's wish.<n><t>Also, there's a girl named Mona over at Thundoria Bar, she seems to have a similar flower brooch, if you have the time please drop by to see her.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 10)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 1)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 10 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 377, "Hometown", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Granny Beldi has told me what you've been through. After so many years, there is finally someone courageous enough and willing to help her. The injuries on your body proves your courage. Here, take it, its her last hope, please protect it with all your heart and fulfill granny's wish.<n><t>Also, there's a girl named Mona over at Thundoria Bar, she seems to have a similar flower brooch, if you have the time please drop by to see her.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 20)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 8)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 20 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 560, "Hometown", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Granny Beldi has told me what you've been through. After so many years, there is finally someone courageous enough and willing to help her. The injuries on your body proves your courage. Here, take it, its her last hope, please protect it with all your heart and fulfill granny's wish.<n><t>Also, there's a girl named Mona over at Thundoria Bar, she seems to have a similar flower brooch, if you have the time please drop by to see her.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 30)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 9)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 30 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 561, "Hometown", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Granny Beldi has told me what you've been through. After so many years, there is finally someone courageous enough and willing to help her. The injuries on your body proves your courage. Here, take it, its her last hope, please protect it with all your heart and fulfill granny's wish.<n><t>Also, there's a girl named Mona over at Thundoria Bar, she seems to have a similar flower brooch, if you have the time please drop by to see her.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 40)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 2)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 40 )
	MisResultBagNeed(1)

-------------------------------------------------����
	DefineMission( 562, "Hometown", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Granny Beldi has told me what you've been through. After so many years, there is finally someone courageous enough and willing to help her. The injuries on your body proves your courage. Here, take it, its her last hope, please protect it with all your heart and fulfill granny's wish.<n><t>Also, there's a girl named Mona over at Thundoria Bar, she seems to have a similar flower brooch, if you have the time please drop by to see her.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 50)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 12)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 50 )
	MisResultBagNeed(1)



-----------------------------------���ϵ�����
	DefineMission( 378, "Ancient Brooch", 317 )

	MisBeginTalk( "<t>An ancient brooch? Yes, I do have one that has a similar flower pattern like this ear ring. My boyfriend and I picked it up while we were strolling on the beach.<n><t>What? You want it? No way! I like it very much. There are others that have offered 5000G for it and yet I would not sell it. What? You want to offer 10000G?  No, this is a love symbol between my boyfriend and I. No matter how much you are offering, I will not sell it to you. 50000G? Let me think about it... Make it 100000G, not a single cent less, deal? I'll give you the item once you've made payment.")
	MisBeginCondition(NoRecord, 317)
	MisBeginCondition(HasRecord, 316)
	MisBeginCondition(HasItem, 4235, 1)
	MisBeginCondition(NoMission, 317)
	MisBeginAction(AddMission, 317)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Spend 100000G to buy the brooch of <bBar Waitress - Mona> at (990, 1263)")
	
	MisResultTalk("<t> Haha, 100000G for this is probably too cheap a price but since I said agreed, so be it. Please safekeep it properly!")
	MisHelpTalk("<t>Not enough money? Too bad! It's not as though I wish to sell it to you.")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 317 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(GiveItem, 4236, 1, 4 )
	MisResultAction(SetRecord, 317 )
	MisResultAction(ClearMission, 317 )
	MisResultAction(AddExp,180000,180000)
	MisResultAction(AddMoney,15000,15000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3848,30,4)
	MisResultBagNeed(2)
	

-----------------------------------����֮��
	DefineMission( 379, "Wheel of Fate", 318 )

	MisBeginTalk( "<t>Due to the remoteness of this location, this place has been deserted for quite some time.You said a voice led you here? Then count yourself lucky to be able to be standing here alive.<n><t>Lots of dangerous creatures often appear nearby and the Sakura 13 Pirates would be the worst. They often pretend to be drowning to attract the attentions of the passing ships for help. After which, they will ambush the ship. I think you must have been misled by them earlier on. Our transport ship was ambushed a few days ago! Since you have the ability to get here, why don't you help us recover the <rSupplies> and we will reward you accordingly.")
	MisBeginCondition(NoRecord, 318)
	MisBeginCondition(HasMission, 22)
	MisBeginCondition(NoMission, 318)
	MisBeginAction(SetRecord, 22)
	MisBeginAction(ClearMission, 22)
	MisBeginAction(AddMission, 318)
	MisBeginAction(AddTrigger, 3181, TE_GETITEM, 4238, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring the <rSupplies> back to the Haven")
	MisNeed(MIS_NEED_ITEM, 4238, 1, 1, 1)

	MisResultTalk("<t>This is great! Although its not replenished fully, it can last me till the next stop. Thank you! This is your reward.")
	MisHelpTalk("<t>Help me! Without those supplies I will die of hunger on the island! I still have a family of 10 to feed! You have the heart to let me die here?")
	MisResultCondition(HasMission, 318 )
	MisResultCondition(HasItem, 4238, 1 )
	MisResultAction(TakeItem, 4238, 1 )
	MisResultAction(SetRecord, 318 )
	MisResultAction(ClearMission, 318 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4238 )
	TriggerAction( 1, AddNextFlag, 318, 1, 1 )
	RegCurTrigger( 3181 )


----------------------------����֮��
	DefineMission( 380, "Wheel of Fate", 319 )
	
	MisBeginTalk( "<t>I understand that you have gone through a lot of hell to help us recover our supplies. We really shouldn't trouble you anymore. However, you know our situation here, the line of supply has been overtaken by pirates and we do not know when the next supply will arrive. Please inform our fellow comrades from the supply depot to prepare for starvation." )
	MisBeginCondition(NoRecord, 319)
	MisBeginCondition(HasRecord, 318)
	MisBeginCondition(NoMission, 319)
	MisBeginAction(AddMission, 319)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Talk to Harbor Operator Whitcombe at (2041, 1355)")
	
	MisHelpTalk("Relate the Stolen Supplies incident to <bHarbor Operator - Whitcombe> in <bHafta Haven>.")
	MisResultCondition(AlwaysFailure )



-----------------------------------����֮��
	DefineMission( 381, "Wheel of Fate", 320 )

	MisBeginTalk( "<t>What? What are you talking about? No food again? I'm thinking of quitting! Not only is the pay low, we often get attacked by pirates! I haven't eaten in three days! Is such suffering worth it?<n><t>Oh man, since you've already been so helpful why don't you help us this one last time?<n><t>There are a fish farm nearby but its guarded by ferocious creatures...Can you get some fishes back for me?")
	MisBeginCondition(NoRecord, 320)
	MisBeginCondition(HasMission, 319)
	MisBeginCondition(NoMission, 320)
	MisBeginAction(ClearMission, 319)
	MisBeginAction(SetRecord, 319)
	MisBeginAction(AddMission, 320)
	MisBeginAction(AddTrigger, 3201, TE_GETITEM, 1478, 20)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring 20 <rSashimi> to Harbor Operator - Whitcombe at (2041, 1355)")
	MisNeed(MIS_NEED_ITEM, 1478, 20, 1, 20)

	MisResultTalk("<t>See? I knew you'd definitely be able to do it! I don't have anything to reward you with, only a piece of news which you might be interested in.")
	MisHelpTalk("<t>What? Do you know how to fish?")
	MisResultCondition(HasMission, 320)
	MisResultCondition(HasItem, 1478, 20 )
        MisResultAction(TakeItem, 1478, 20 )
	MisResultAction(SetRecord, 320 )
	MisResultAction(ClearMission, 320 )
  	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )
	TriggerAction( 1, AddNextFlag, 320, 1, 20 )
	RegCurTrigger( 3201 )



-----------------------------------����֮��
	DefineMission( 382, "Wheel of Fate", 321 )
	MisBeginCondition(NoMission, 321)
	MisBeginCondition(HasRecord, 320)
	MisBeginCondition(NoMission, 321)
	MisBeginAction(AddMission, 321)	

	MisBeginTalk("<t>Have you heard about it? You can a create a special potion using the oils from various creatures of the sea, those who consumed the potion can converse in various languages and even communicate with the monsters.<n><t>Don't look at me that way, actually, in truth i have no idea what to do either. Hey don't go yet, I know of someone who knows the recipe, he is the habour operator of the next Haven at (3153, 674). You can ask him about it, just say that I recommended you. Don't look down on me! I once saved his life.")
	
	MisNeed(MIS_NEED_DESP, "Go to <bReagen Haven> and look for <bHarbor Operator - Fardell> at (3153, 674)")
	
	MisResultCondition(AlwaysFailure )


-----------------------------------����֮��
	DefineMission( 383, "Wheel of Fate", 321, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Damn! He's going around talking nonsense again! If he hadn't saved me once I wouldn't be bothered about him.<n><t>As for the Potion of Omni-Relevation...Yes I do know how to make it, but its very difficult to get the ingredients for the potion. If you can find the ingredients I could help you to make it.")
	MisResultCondition(NoRecord, 321)
	MisResultCondition(HasMission, 321)
	MisResultAction(ClearMission, 321)
	MisResultAction(SetRecord, 321)

-----------------------------------����֮��
	DefineMission( 384, "Wheel of Fate", 323 )

	MisBeginTalk( "<t>In order to make the special pill, you'll need a Fascia Fish Bone, a Thick Fish Bone, 30 Rotten Fish Bones, what's with that look of yours? You think it's poisonous? You think I'm lying to you?")
	MisBeginCondition(NoRecord, 323)
	MisBeginCondition(HasRecord, 321)
	MisBeginCondition(NoMission, 323)
	MisBeginAction(AddMission, 323)
	MisBeginAction(AddTrigger, 3231, TE_GETITEM, 4938, 30)
	MisBeginAction(AddTrigger, 3232, TE_GETITEM, 4957, 30)
	MisBeginAction(AddTrigger, 3233, TE_GETITEM, 4976, 30)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring back the ingredient to Harbor Operator - Fardell at (3153, 674)")
	MisNeed(MIS_NEED_ITEM, 4938, 30, 1, 30)
	MisNeed(MIS_NEED_ITEM, 4957, 30, 31, 30)
	MisNeed(MIS_NEED_ITEM, 4976, 30, 61, 30)

	MisResultTalk("<t> Yes, yes, these are all the ingredients I needed! Please hold on while I make it the potion for you immediately. (Hehe, now you'll be able to hear what the mermaids are talking about)")
	MisHelpTalk("<t>What?!?! You do not know what monsters drop those items? Its Spiny Fish Bone, Hungry Fish Bone and Decaying Fish Bone! You want me to tell you their coordinates? Why can't you go to the website and check out the game content?")
	MisResultCondition(HasMission, 323 )
	MisResultCondition(HasItem, 4938, 30)
	MisResultCondition(HasItem, 4957, 30)
	MisResultCondition(HasItem, 4976, 30)
	MisResultAction(TakeItem, 4938, 30 )
	MisResultAction(TakeItem, 4957, 30 )
	MisResultAction(TakeItem, 4976, 30 )
	MisResultAction(SetRecord, 323 )
	MisResultAction(ClearMission, 323 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4938 )
	TriggerAction( 1, AddNextFlag, 323, 1, 30 )
	RegCurTrigger( 3231 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4957 )
	TriggerAction( 1, AddNextFlag, 323, 31, 30 )
	RegCurTrigger( 3232 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4976 )
	TriggerAction( 1, AddNextFlag, 323, 61, 30 )
	RegCurTrigger( 3233 )



-----------------------------------����֮��
	DefineMission( 385, "Wheel of Fate", 324 )

	MisBeginTalk( "<t>Ah��. I'm not going to make it�� looks like this is my retribution... I shouldn't have stolen your pill. Help me, I'm suffering, please just let me die.<n><t>No... wait wait! You're really going to leave me here alone? Please don't go! Save me! I stole the formula off the <bHarbor Operator - Buni> from <bAerase Haven> at (2042, 635). There, I've already told you all that I know, please help me!")
	MisBeginCondition(NoRecord, 324)
	MisBeginCondition(HasRecord, 323)
	MisBeginCondition(NoMission, 324)
	MisBeginAction(AddMission, 324)
	MisBeginAction(AddTrigger, 3241, TE_GETITEM, 4254, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Obtain <rOmni-Antidote> from <bHarbor Operator - Buni> in <pAerase Haven> at (2042, 635)")
	MisNeed(MIS_NEED_ITEM, 4254, 1, 1, 1)

	MisResultTalk("<t> Ah! The medicine is so bitter! If not for it being able to save my life I would never eat it! Don't mind me, I just escaped death, it's not my fault for muttering stuff that has no logic.<n><t>What? What return you your money? I don't understand! I'm a little busy, see you later!")
	MisHelpTalk("<t>��I have got no more strength to talk�� my life is in your hands��")
	MisResultCondition(HasMission, 324 )
	MisResultCondition(HasMission, 325 )
	MisResultCondition(HasItem, 4254, 1)
	MisResultAction(TakeItem, 4254, 1)
	MisResultAction(SetRecord, 324 )
	MisResultAction(ClearMission, 324 )

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4254 )
	TriggerAction( 1, AddNextFlag, 324, 1, 1 )
	RegCurTrigger( 3241 )

-----------------------------------����֮��
	DefineMission( 386, "Wheel of Fate", 325 )

	MisBeginTalk( "<t>What? Harbor Operator Fardell already knows how to make the potion of Omni-Relevation himself, yet he stole the one I made for you?<n><t>He deserves it, let him die! He always comes in here and steals the formulas and he doesn't pay when he gets the medicine. Oh, and he still owes me 100000G! Before he dies please ask him to tell me his password to the bank!<n><t>Okay okay! I'm actually quite soft hearted, here is the antidote. Give it to him fast and also tells him that I am waiting for him to repay me the money! Oh, and if you treasure your life, don't trust him anymore and about the potion of...Forget it, I'll wait till you get back.")
	MisBeginCondition(NoRecord, 325)
	MisBeginCondition(HasMission, 324)
	MisBeginCondition(NoMission, 325)
	MisBeginAction(AddMission, 325)
	MisBeginAction(GiveItem, 4254, 1, 4 )	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Bring the Omni-Antidote to <bHarbor Operator Fardell> at (3153, 674) in exchange for 100000G")

	MisResultTalk("<t>What? That fellow pretended to be ignorant and doesn't want to admit that he owes me money? Next time I'll poison him and make him mute.<n><t>Let's not talk about him already. About the Potion of Omni-Relevation...")
	MisHelpTalk("<t>Move it! Before I change my mind��")
	MisResultCondition(HasMission, 325)
	MisResultCondition(HasRecord, 324)
	MisResultAction(SetRecord, 325 )
	MisResultAction(ClearMission, 325 )	

-----------------------------------����֮��
	DefineMission( 387, "Wheel of Fate", 326 )

	MisBeginTalk( "<t>I got the formula from a chest that I fished out of the ocean. I didn't believe that it would work out at first until I made the medicine and fed it to a sheep, the sheep ended up being able to understand our language and it ran away the night that I was going to slaughter it. Unfortunately, the formula also got bitten into pieces and thrown into the ocean by the talking sheep. I've only 1/3 of it left with me; this is why Fardell got poisoned after following the formula, it isn't complete. <n><t>If you could help me retrieve the lost formula, I could try helping you to make the potion of omni-relevation.")
	MisBeginCondition(NoRecord, 326)
	MisBeginCondition(HasRecord, 325)
	MisBeginCondition(NoMission, 326)
	MisBeginAction(AddMission, 326)
	MisBeginAction(AddTrigger, 3261, TE_GETITEM, 4255, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Found <rPrescription Fragment> of the Omni Relevation Potion")
	MisNeed(MIS_NEED_ITEM, 4255, 10, 1, 10)

	MisResultTalk("<t> Yes, yes, these are all the ingredients I need!, Please hold on while I make it the potion for you immediately. <n><t>Hehe! Now you'll be able to understand all language.")
	MisHelpTalk("<t>You have not collect all of the lost formula? It must have been hard on you.<n><t>If my guess is correct, the remaining portion of the formula can be found on Ancient Siren and Shadow Siren.")
	MisResultCondition(HasMission, 326 )
	MisResultCondition(HasItem, 4255, 10)
	MisResultAction(TakeItem, 4255, 10 )
	MisResultAction(SetRecord, 326 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 326 )
	MisResultAction(AddExp,320000,320000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3846,1,4)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4255 )
	TriggerAction( 1, AddNextFlag, 326, 1, 10)
	RegCurTrigger( 3261 )

----------------------------��������
	DefineMission( 559, "Language Barrier", 387 )
	
	MisBeginTalk( "<t>What are these people talking about, I cannot understand a single word...<n><t>I think I should get some help from <bGranny - Beldi> at (2277, 2769)." )
	MisBeginCondition(NoRecord, 387)
	MisBeginCondition(NoMission, 387)
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(NoRecord, 330)
	MisBeginAction( AddMission, 387 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned" )
		
	MisNeed(MIS_NEED_DESP, "Talk to <bGranny Beldi> at (2277, 2769)")
	
	MisHelpTalk( "Find <bGranny Beldi> and talk to her" )
	MisResultCondition( AlwaysFailure )

----------------------------��������
	DefineMission( 388, "Language Barrier", 327)
	
	MisBeginTalk( "<t> Ah, young fellow, have you been to Spring Town yet?<n><t>WHAT?! You say that you can't understand what are they talking? Didn't you drink a potion of Omni-Revelation?<n><t>Nowadays young people don't pay attention to what old people are talking. Let me tell you one more time! Now listen properly, look for the Bar Waitress <bBabara> at (1310, 530). She may know something. A long time ago, when I was a young and beautiful woman, a stranger gave me the potion of Omni-Revelation. Do you think I'm still beautiful?" )
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(HasMission, 387)
	MisBeginCondition(NoMission, 327)
	MisBeginAction(SetRecord, 387)
	MisBeginAction(ClearMission, 387)
	MisBeginAction(AddMission, 327)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Ask <bBar Waitress - Babara> at (1310, 530) about the potion")
	
	MisHelpTalk("Talk to <bBar Waitress - Babara>")
	MisResultCondition(AlwaysFailure )



-----------------------------------��������
	DefineMission( 389, "Language Barrier", 328 )

	MisBeginTalk( "<t>You want a Potion of Omni-Relevation? You have found the correct person! I specially sell the formula for making the potion, suitable for both young and old.<n><t>The price is reasonable, it's a multipurpose translation potion. It can even translate coded messages into an understandable form. You only need one pill to do all of that! What!? You don't believe me? Do you not believe this lovable and innocent girl?<n><t>What? Are you trying to give me 100,000 to buy the formula and to make me not talk anymore about it? Okay, where's the money?")
	MisBeginCondition(NoRecord, 328)
	MisBeginCondition(HasMission, 327)
	MisBeginCondition(NoMission, 328)
	MisBeginAction(SetRecord, 327)
	MisBeginAction(ClearMission, 327)
	MisBeginAction(AddMission, 328)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<r100000G>")
	
	MisResultTalk("<t>You really know how to spot treasures. Potion of Omni Relevation is yours.")
	MisHelpTalk("<t>You do not have 100000G? How did you become a pirate��")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 328 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(SetRecord, 328 )
	MisResultAction(ClearMission, 328 )
        MisResultAction(GiveItem, 4256, 1, 4 )
	MisResultBagNeed(1)


-----------------------------------��������
	DefineMission( 391, "Language Barrier", 330 )

	MisBeginTalk( "<t> Is that Ai Wen? Long time no see... I'm not not speaking to you, I'm speaking to the Omni-Relevation prescription. Yes, its name is Ai Wen, 500 years ago, a person with a soul was sealed inside this formula that is why it talks!<n><t>Anyway, I'll give you a discount, you only need to pay me <r50000G> for me to complete the potion for you.")
	MisBeginCondition(NoRecord, 30)
	MisBeginCondition(NoRecord, 330)
	MisBeginCondition(HasMission, 30)
	MisBeginAction(AddMission, 330)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Collect all ingredient and also <r50000G>")

	MisResultTalk("<t>Why the hurry? I'm not done yet! I need another 50000G to complete it. Why...Are you taking out your weapon? Okay okay��. I was only joking.<n><t>The potion has already been completed. Here! Take it!<n><t>(You glup down the potion without thinking...)")
	MisHelpTalk("<t>No money, no potion. It's only 5000!")
	MisResultCondition(HasMission, 330 )
	MisResultCondition(HasItem, 4938, 30)
	MisResultCondition(HasItem, 4957, 30)
	MisResultCondition(HasItem, 4976, 30)
	MisResultCondition(HasItem, 4974, 10)
	MisResultCondition(HasMoney, 50000 )
	MisResultAction(SetRecord, 30)
	MisResultAction(ClearMission, 30)
	MisResultAction(TakeItem, 4938, 30)
	MisResultAction(TakeItem, 4957, 30)
	MisResultAction(TakeItem, 4976, 30)
	MisResultAction(TakeItem, 4974, 10)
	MisResultAction(TakeMoney, 50000 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 330 )
      	MisResultAction(AddExp,550000,550000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3908,1,4)	
	MisResultAction(GiveItem,4708,1,4)
	MisResultBagNeed(3)

----------------------------Զ���ǿ�
	DefineMission( 392, "Rare Visitor from Afar", 331)
	
	MisBeginTalk( "<t>Hi, how are you? Is this your first time here? Relax, we treat everyone like a friend. As our custom goes, always treat people from afar as our friends!<n><t>Now, this guide will bring you around the village. Once again, a warm welcome to you!" )
	MisBeginCondition(NoRecord, 331)
	MisBeginCondition(HasRecord, 315)
	MisBeginCondition(NoMission, 331)
	MisBeginAction(AddTrigger, 3311, TE_GETITEM, 4242, 7 )
	MisBeginAction(AddMission, 331)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Talk to the people in the town and familiarize with the surrounding")
	MisNeed(MIS_NEED_ITEM, 4242, 7, 10, 7)	

	MisResultTalk("<t>Oh my god, do you have information regarding my son? Oh my, the way you looked at me, I thought that Guard Zhou sent you regarding the recent matters.<n><t>How is everyone treating you so far?")
	MisHelpTalk("<t>Have you meet up with all the people in town? Go now! Many people are anxious to meet you.")
	MisResultCondition(HasMission, 331)
	MisResultCondition(HasItem, 4242, 7)
	MisResultAction(TakeItem, 4242, 7 )
	MisResultAction(SetRecord, 331 )
	MisResultAction(ClearMission, 331 )
	MisResultAction(AddExp,100000,100000)
	MisResultAction(AddMoney,30000,30000)
	MisResultAction(AddExpAndType,2,50000,50000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4242 )
	TriggerAction( 1, AddNextFlag, 331, 10, 7)
	RegCurTrigger( 3311 )

----------------------------Զ���ǿ�
	DefineMission( 393, "Rare Visitor from Afar", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Young fellow, you're not bad! To be able to reach this place has proven that you certainly have the ability! If there is something wrong with your weapon, please look for me. I'll definitely help you the best I can.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 1)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 1)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------Զ���ǿ�
	DefineMission( 394, "Rare Visitor from Afar", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Hey you! Your clothings look terrible! Quickly let me see. You must have been on a long dangerous task. Before you continoue, why not have some of my meat dumpling? It will certainly satisfy you.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 2)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 2)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------Զ���ǿ�
	DefineMission( 395, "Rare Visitor from Afar", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Hi there, distant visitor. My name is Luna, I sell herbs, if you need help, feel free to look me up. Since you come from afar, I shall give you a 20% discount.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 3)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 3)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
---------------------------Զ���ǿ�
	DefineMission( 396, "Rare Visitor from Afar", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Hi friend! If you want to buy some shark fin and bird nest, I'll give you a 20 percent discount, if you want to get other stuff please let me know.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 4)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 4)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------Զ���ǿ�
	DefineMission( 397, "Rare Visitor from Afar", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Leaving Spring Town? Remember to look for me, nowadays, no one ever sets sail out of town besides me.<n><t>Don't leave without me! Remember to look me up if you want to leave Spring Town.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 5)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 5)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	

----------------------------Զ���ǿ�
	DefineMission( 398, "Rare Visitor from Afar", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>We meet again. Want to go sailing?")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 6)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 6)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------Զ���ǿ�
	DefineMission( 399, "Rare Visitor from Afar", 331, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t>IC, IP, IQ card, tell me your secret code, this isn't robbery but if you wish to withdraw your stuff, you'll need to provide us with your secret code.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 7)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 7)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

-----------------------------------�����㾦
	DefineMission( 510, "Make the Finishing Point", 339 )

	MisBeginTalk( "<t>I am in need of a beautiful <bAncient Brooch>. If you willing to get one for me, I shall reveal a secret to you.")
	MisBeginCondition(NoRecord, 339)
	MisBeginCondition(HasRecord, 338)
	MisBeginCondition(NoMission, 339)
        MisBeginCondition(HasItem, 4236,1)
	MisBeginAction(AddMission, 339)
	MisBeginAction(AddTrigger, 3391, TE_GETITEM, 4236, 1 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Pass the <bAncient Brooch> to <bBanker Wang Mo> at (3290, 2512)")
	MisNeed(MIS_NEED_ITEM, 4236, 1, 1, 1)

	MisResultTalk("<t>Since you are willing to give such a precious thing to me, I tell you my secret.")
	MisHelpTalk("<t>What? You do not have a brooch? I saw it a moment ago! Maybe I am getting blind.")
	MisResultCondition(HasMission, 339 )
	MisResultCondition(HasItem, 4236, 1 )
	MisResultAction(TakeItem, 4236, 1 )	
	MisResultAction(SetRecord, 339 )
	MisResultAction(ClearMission, 339 )
    


-----------------------------------�����㾦
	DefineMission( 511, "Make the Finishing Point", 340 )

	MisBeginTalk( "<t> Okay the secret is��Haha! I've tricked you. I only needed this brooch to serve as the eye of dragon painting! Ah! I run out of dye again! Why don't you help me obtain 5 of each different colored dye so that I can finish up the painting? I might even reward you for your help.")
	MisBeginCondition(NoRecord, 340)
	MisBeginCondition(HasRecord, 339)
	MisBeginCondition(NoMission, 340)
	MisBeginAction(AddMission, 340)
	MisBeginAction(AddTrigger, 3401, TE_GETITEM, 1787, 5)
	MisBeginAction(AddTrigger, 3402, TE_GETITEM, 1788, 5)
	MisBeginAction(AddTrigger, 3403, TE_GETITEM, 1789, 5)
	MisBeginAction(AddTrigger, 3404, TE_GETITEM, 1790, 5)
	MisBeginAction(AddTrigger, 3405, TE_GETITEM, 1791, 5)
	MisBeginAction(AddTrigger, 3406, TE_GETITEM, 1792, 5)
	MisBeginAction(AddTrigger, 3407, TE_GETITEM, 1793, 5)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<rRed Dye>*5 <rOrange Dye>*5 <rYellow Dye>*5 <rGreen Dye>*5 <rCyan Dye>*5 <rBlue Dye>*5 <rPurple Dye>*5")
	MisNeed(MIS_NEED_ITEM, 1787, 5, 1, 5)
	MisNeed(MIS_NEED_ITEM, 1788, 5, 6, 5)
	MisNeed(MIS_NEED_ITEM, 1789, 5, 11, 5)
	MisNeed(MIS_NEED_ITEM, 1790, 5, 16, 5)
	MisNeed(MIS_NEED_ITEM, 1791, 5, 21, 5)
	MisNeed(MIS_NEED_ITEM, 1792, 5, 26, 5)
	MisNeed(MIS_NEED_ITEM, 1793, 5, 31, 5)

	MisResultTalk("<t>What took you so long? My brush has dried up! Now coloring the painting is not going to be easy!")
	MisHelpTalk("<t>Hurry back, don't take too long or my brush will dry up. Get me 5 of each colored dye!")
	MisResultCondition(HasMission, 340)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1788, 5)
	MisResultCondition(HasItem, 1789, 5)
	MisResultCondition(HasItem, 1790, 5)
	MisResultCondition(HasItem, 1791, 5)
	MisResultCondition(HasItem, 1792, 5)
	MisResultCondition(HasItem, 1793, 5)
	MisResultAction(TakeItem, 1787, 5 )	
	MisResultAction(TakeItem, 1788, 5 )	
	MisResultAction(TakeItem, 1789, 5 )	
	MisResultAction(TakeItem, 1790, 5 )	
	MisResultAction(TakeItem, 1791, 5 )	
	MisResultAction(TakeItem, 1792, 5 )	
	MisResultAction(TakeItem, 1793, 5 )	
	MisResultAction(SetRecord, 340 )
	MisResultAction(ClearMission, 340 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1787 )
	TriggerAction( 1, AddNextFlag, 340, 1, 5 )
	RegCurTrigger( 3401 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1788 )
	TriggerAction( 1, AddNextFlag, 340, 6, 5 )
	RegCurTrigger( 3402 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1789 )
	TriggerAction( 1, AddNextFlag, 340, 11, 5 )
	RegCurTrigger( 3403 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1790 )
	TriggerAction( 1, AddNextFlag, 340, 16, 5 )
	RegCurTrigger( 3404 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1791 )
	TriggerAction( 1, AddNextFlag, 340, 21, 5 )
	RegCurTrigger( 3405 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1792 )
	TriggerAction( 1, AddNextFlag, 340, 26, 5 )
	RegCurTrigger( 3406 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1793 )
	TriggerAction( 1, AddNextFlag, 340, 31, 5 )
	RegCurTrigger( 3407 )

-----------------------------------�����㾦
	DefineMission( 512, "Make the Finishing Point", 341 )

	MisBeginTalk( "<t>You know the most important thing about the dragon's eye, is its eyeball. Now that my brush has dried up, it is no longer able to draw a realistic looking eyeball. In order to soften up the brush, I'll have to soak it at least 30 times in <rPure Water>. Hurry up and get me 30 bottles of <rPure Water> or else I'll use my brush and color your face black!")
	MisBeginCondition(NoRecord, 341)
	MisBeginCondition(HasRecord, 340)
	MisBeginCondition(NoMission, 341)
	MisBeginAction(AddMission, 341)
	MisBeginAction(AddTrigger, 3411, TE_GETITEM, 1649, 30)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring back 30 vials of <rPure Water> to <bBanker Wang Mo> at (3290, 2512)")
	MisNeed(MIS_NEED_ITEM, 1649, 30, 1, 30)

	MisResultTalk("<t>Why were you so slow? The brush has been damaged! I'll need another one!")
	MisHelpTalk("<t>You dare to come back empty handed!? Get going before I really decide to color your face black!")
	MisResultCondition(HasMission, 341)
	MisResultCondition(HasItem, 1649, 30)
	MisResultAction(TakeItem, 1649, 30 )
	MisResultAction(SetRecord, 341 )
	MisResultAction(ClearMission, 341 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649 )
	TriggerAction( 1, AddNextFlag, 341, 1, 30 )
	RegCurTrigger( 3411 )
	

-----------------------------------�����㾦
	DefineMission( 513, "Make the Finishing Point", 342 )

	MisBeginTalk( "<t>This paint bush was made out of the finest grade of Fox Tails. Now that the brush is damaged, the special properties has been lost. To repair it, you will need to bring me 10 <rFox Tails>. If you fail, you better be able to compensate me for it in another way or I'll make a new brush out of your hair!<n><t>Get it from the Fox Taoists at (3322, 2460).")
	MisBeginCondition(NoMission, 342)
	MisBeginCondition(NoRecord, 342)
	MisBeginCondition(HasRecord, 341)
	MisBeginAction(AddMission, 342)
	MisBeginAction(AddTrigger, 3421, TE_GETITEM, 165, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring back <r10 Fox Tails> to <bBanker Wang Mo> at (3290, 2512)")
	MisNeed(MIS_NEED_ITEM, 165, 10, 1, 10)

	MisResultTalk("<t>What a beautiful fox tails! Now I can make a fox tail brush, thanks to you.<n><t>I'm sorry, I didn't mean to lie to you but this brush of mine has actually already been damaged a long time ago. To reward you for your efforts, take this. I hope that it will be useful to you in future.")
	MisHelpTalk("<t>Once again, you returned empty handed! The next time, I'll make use of your hair to make a brush instead!")
	MisResultCondition(HasMission, 342)
	MisResultCondition(HasItem, 165, 10)
	MisResultAction(TakeItem, 165, 10 )
	MisResultAction(SetRecord, 342 )
	MisResultAction(ClearMission, 342 )
	MisResultAction(AddExp,700000,700000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(GiveItem,3885,1,4)	
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 165 )
	TriggerAction( 1, AddNextFlag, 342, 1, 10 )
	RegCurTrigger( 3421 )


-----------------------------------ʧ��
	DefineMission( 514, "Lost", 343 )

	MisBeginTalk( "<t>Since you asked, I'm not going to hide it from you any longer.<n><t>Below this town, lies an <pUnderwater Tunnel>. It used to be a water plant but after an earthquake destroyed it, all that's left is rubble. Everyone who worked below it also perished as a result of the quake.<n><t>My son and a group of pirates went down to look for treasure in that hellhole but never made it back. I myself, tried searching for them below, but had no choice but to turn back because of a fire blocking my way. If you wish to risk your life by going down there, please help me find out what happened to my son!")
	MisBeginCondition(NoRecord, 343)
	MisBeginCondition(NoMission, 343)
	MisBeginCondition(HasRecord, 331)
   	MisBeginAction(AddMission, 343)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Go to <pUnderwater Tunnel> and search for the son of <Barkeeper - Sang Di>")

	MisResultTalk("<t>Did a zombie asked you to pass a message to me? It must be my poor son! Speak no more, I already know what he wants you to say to me. Sigh... I knew something terrible like this would happen.")
	MisHelpTalk("<t>Young adventurer, you are my only hope of finding my son, I hope that the next time we meet, you will be able to bring me good news.")
	MisResultCondition(HasMission, 343 )
	MisResultCondition(HasFlag, 343, 2 )
	MisResultAction(SetRecord, 343 )
	MisResultAction(ClearMission, 343 )

-----------------------------------ʧ��
	DefineMission( 515, "Lost", 343 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Please wait! I'm not contagious! I still have feelings! Please listen to my last words... please tell my mum that I will always love her and tell her to take care of herself. I will be in heaven blessing her.<n><t>My mother is Sang Di at (3287, 2501).")
	MisResultCondition(NoRecord, 343)
	MisResultCondition(HasMission, 343)
	MisResultCondition(NoFlag, 343, 2)
	MisResultAction(SetFlag, 343, 2)
	
-----------------------------------ʧ��
	DefineMission( 516, "Lost", 345 )

	MisBeginTalk( "<t>From what I know, <rLuna> at (3279, 2501) has a <rTalisman> which is able to retain the souls of zombies. If you have time, please go and speak to her.<n><t>Since I broke up their relationship at that time, I am too embarassed to approach her myself. She'll definitely be able to help. I'm sure!")
	MisBeginCondition(NoRecord, 345)
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(HasRecord, 343)
	MisBeginCondition(NoMission, 345)
  	MisBeginAction(AddMission, 345)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for <bGrocer Luna> at (3279, 2501) to make the <rTalisman>")

	MisHelpTalk("<t>Is Luna willing to help? I hope there is still time.")
	MisResultCondition(AlwaysFailure )

-----------------------------------���
	DefineMission( 517, "Talisman", 346 )

	MisBeginTalk( "<t>What?! Hami is trapped inside the Underwater Tunnel? Oh my god! The method which you speak off, requires a <rSpecial Talisman> which only can be made from the combination of various <rTalisman of Ghost>.<n><t>The talismans, which I used the last time, were bought off a merchant a couple of months ago. He hasn't come by in a while so I have no materials! Unless you are able to provide me 20 <rTalismans of Ghost>, I don't think I have any other ways of saving Hami!")
	MisBeginCondition(NoRecord, 346)
	MisBeginCondition(HasMission, 345)
	MisBeginCondition(NoMission, 346)
  	MisBeginAction(AddMission, 346)
	MisBeginAction(AddTrigger, 3461, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring <r20 Talismans of Ghost> to <bGrocer Luna> at (3279, 2501)")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>Hurry! I hope there is still time�� Give this special talisman to Hami and ask him to put it upon his head. I hope it works.")
	MisHelpTalk("<t>Don't waste any more time or all hope will gone! Remember! I need 20 Tailsmans of Ghost.")
	MisResultCondition(HasMission, 346 )
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262,20 )
	MisResultAction(GiveItem, 4244, 1, 4)
	MisResultAction(SetRecord, 346 )
	MisResultAction(ClearMission, 346 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 346, 1, 20 )
	RegCurTrigger( 3461 )

-----------------------------------���
	DefineMission( 518, "Talisman", 347 )

	MisBeginTalk( "<t>What happened? I remember I was in a coma.<n><t>Why did I suddenly wake up? Is this a special talisman from Luna?<n><t>I always knew that she would be thinking of me, but I can't go back now. Even if my soul is preserved in this body of mine, I will not survive the sunlight. Please tell her to forget about me.")
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(NoMission, 347)
	MisBeginCondition(HasRecord, 346)
	MisBeginCondition(HasItem, 4244, 1)
	MisBeginAction(TakeItem, 4244, 1)
  	MisBeginAction(AddMission, 347)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Tell <bGrocer Luna> at (3279, 2501) that <bUndead - Hami> is unable to leave Underwater Tunnel")
	
	MisResultCondition(AlwaysFailure )

-----------------------------------���
	DefineMission( 519, "Talisman", 347 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>What? Hami can't leave the Under Water Tunnel? If that's the case I'll go to him. I can't live without him by my side.")
	MisResultCondition(NoRecord, 347)
	MisResultCondition(HasMission, 347)
	MisResultAction(SetRecord, 347)
	MisResultAction(ClearMission, 347)
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveItem, 3883, 5, 4)
	MisResultAction(GiveItem, 3884, 5, 4)
	MisResultBagNeed(2)

-----------------------------------�����漣
	DefineMission( 520, "Love Miracle", 349 )

	MisBeginTalk( "<t>Young man, I see the pain in your eyes.<n><t>Are you deeply touched by the love between Luna and Hami? Love possess the power to create miracles.<n><t>If you still wish to help them, you must find Tears of the Goddess , a Merman's Heart and Feathers of Paradise Bird. With these 3 items, we might be able to help them.")
	MisBeginCondition(NoRecord, 349)
	MisBeginCondition(NoRecord, 356)
	MisBeginCondition(HasRecord, 347)
	MisBeginCondition(NoMission, 349)
	MisBeginCondition(NoMission, 356)
	MisBeginAction(AddMission, 349)
	MisBeginAction(AddTrigger, 3491, TE_GETITEM, 4245, 1 )
	MisBeginAction(AddTrigger, 3492, TE_GETITEM, 4246, 1 )
	MisBeginAction(AddTrigger, 3493, TE_GETITEM, 4247, 1 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring back the <rGoddess Tear>, <rMermaid Heart> and <rFeather of Paradise>")
	MisNeed(MIS_NEED_ITEM, 4245, 1, 5, 1)
	MisNeed(MIS_NEED_ITEM, 4246, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4247, 1, 15, 1)

	MisResultTalk("<t>The Tears of the Goddess flows freely for the people of this world. It is the universal symbol of love; A Merman's Heart is a full of love for his sweetheart, it is the symbol of pure love; Feathers of Paradise Bird is a symbol of affection. When someone is able to collect these three items and place them together, a miracle occurs according to ancient legends. Fuse these together and make it into a brooch, then give it to Hami. A miracle might happen which will allow him to return to a normal person, able to walk under the sun once again.")
	MisHelpTalk("<t>With these 3 items, we might be able to locate them.")
	MisResultCondition(HasMission, 349 )
	MisResultCondition(HasItem, 4245, 1 )	
	MisResultCondition(HasItem, 4246, 1 )	
	MisResultCondition(HasItem, 4247, 1 )
	MisResultAction(TakeItem, 4245, 1 )	
	MisResultAction(TakeItem, 4246, 1 )	
	MisResultAction(TakeItem, 4247, 1 )
        MisResultAction(GiveItem, 4248, 1 ,4)	
	MisResultAction(SetRecord, 349 )
	MisResultAction(ClearMission, 349 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4245)	
	TriggerAction( 1, AddNextFlag, 349, 5, 1 )
	RegCurTrigger( 3491 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4246)	
	TriggerAction( 1, AddNextFlag, 349, 10, 1 )
	RegCurTrigger( 3492 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4247)	
	TriggerAction( 1, AddNextFlag, 349, 15, 1 )
	RegCurTrigger( 3493 )

-----------------------------------Ů�������
	DefineMission( 521, "Tear of Goddess", 350 )

	MisBeginTalk( "<t> After all these years, someone actually remembers this legend. The Tears of the Goddess to be considered literally, it is actually <rPure Clarion Sand> which only be found deep in Barren Cavern. Only the most revered can touch it and only someone who harbors compassion is able to carry it away from its resting place. So far, all the bandits and thieves who have tried getting it has died. Will you give it a try?")
	MisBeginCondition(NoRecord, 350)
	MisBeginCondition(NoMission, 350)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 350)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Go to the depths of <pBarren Cavern> and bring back <rPure Clarion Sand>")

	MisResultTalk("<t>Only one with a pure mind is able to obtain this kind of sand in its purest form. The fact that you were able to bring me this sand proves to me that you are a person of that sort.")
	MisHelpTalk("<t>Remembers, look for Pure Clarion Sand located at Barren Carvern.")
	MisResultCondition(HasMission, 350)
	MisResultCondition(HasItem, 4245, 1)
 	MisResultAction(SetRecord, 350 )
	MisResultAction(ClearMission, 350 )



-----------------------------------���������
	DefineMission( 522, "Heart of Mermaid", 351 )

	MisBeginTalk( "<t>A Merman's Heart actually refers to the <rCrown of the Queen>. I did not think that such a young person like you would be able to understand what it is.<n><t>The Merman's Heart is a diamond which William gave to his wife. Somehow, it was later inlaid on the Crown of the Queen which later on fell into the hands of the enemy along with the royal palace. All trails leading to it has since been lost and it has been rumored that it carrys a Merman's curse. All the Bandits and Thieves who have searched for it in the Royal Palace ruins have been possessed and killed. Do you dare look for it yourself?")
	MisBeginCondition(NoRecord, 351)
	MisBeginCondition(NoMission, 351)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 351)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Go to <pPalace Ruins> and bring back the <rCrown of the Queen>")

	MisResultTalk("<t>You really found Crown of the Queen? Perhaps you will be the first person to make this legend come true.")
	MisHelpTalk("<t>I am sure that the Crown of the Queen can be found in the rubbles but no one knows the exact location of it.")
	MisResultCondition(HasMission, 351)
	MisResultCondition(HasItem, 4246, 1)
 	MisResultAction(SetRecord, 351 )
	MisResultAction(ClearMission, 351 )

	-----------------------------------�������ë
	DefineMission( 523, "Feather of the Bird", 352 )

	MisBeginTalk( "<t>Feathers of Paradise Bird is a name given to the award that is presented to brave warriors. It is the highest award and title bestowed to people who are able to go into the Snowstorm Family's Labyrinth and retrieve a <rCrystalline Feather> from inside one of the valuable boxes. Many have died trying, do you wish to try?")
	MisBeginCondition(NoRecord, 352)
	MisBeginCondition(NoMission, 352)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 352)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Go to <pDemonic World> and bring back <rCrystalline Feather>")

	MisResultTalk("<t>You are the third person who has successfully brought back the Crystalline Feather, back. I cannot tell you who the other two were but you'll find out sooner or later.")
	MisHelpTalk("<t>Remembers, the labyrinth is not a place everyone can survive, few have returned.")
	MisResultCondition(HasMission, 352)
	MisResultCondition(HasItem, 4247, 1)
 	MisResultAction(SetRecord, 352 )
	MisResultAction(ClearMission, 352 )

-----------------------------------�����漣
	DefineMission( 524, "Love Miracle", 353 )

	MisBeginTalk( "<t>Are you saying that as long as this brooch with me, it is possible for me to to return to the world?<n><t>Thank you! Now I may see Luna again. Hurry and tell her the good news for me!")
	MisBeginCondition(NoRecord, 353)
	MisBeginCondition(NoMission, 353)
	MisBeginCondition(HasRecord, 349)
	MisBeginCondition(HasItem, 4248,1)
	MisBeginAction(TakeItem, 4248, 1)
  	MisBeginAction(AddMission, 353)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Send the good news to <bGrocer Luna> at (3279, 2501)")

	MisHelpTalk("<t>Really, thank you so much, I really don't know how to repay you, wish you good luck in the furture.")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����漣
	DefineMission( 525, "Love Miracle", 353 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>What? You have fulfilled the ancient legend? Now my Hami will be able to come back to see me? How will I ever repay you? Take this talisman; it will give you resistance against the poison from the walking corpses in the Underwater Tunnel. It isn't much but it's the best I can offer you as a reward.")
	MisResultCondition(NoRecord, 353)
	MisResultCondition(HasMission, 353)
	MisResultAction(SetRecord, 353)
	MisResultAction(ClearMission, 353)	
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3348,10,4)
	MisResultAction(GiveItem,3349,10,4)
	MisResultAction(GiveItem,3350,10,4)
	MisResultBagNeed(3)

-----------------------------------ʬ��
	DefineMission( 526, "Corpse Venom", 355 )

	MisBeginTalk( "<t>Are you being troubled by poison? I haven't made this kind of protective charms in a long time.<n><t>If you can bring me 20 <rTalismans of Ghost>, I can make you 1 protective charm for 5000G. The Talismans of Ghost can be found in the Under Water Tunnel.")
	MisBeginCondition(NoRecord, 355)
	MisBeginCondition(NoMission, 355)
	MisBeginCondition(HasRecord, 353)
 	MisBeginAction(AddMission, 355)
	MisBeginAction(AddTrigger, 3551, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Collect <r20 Talismans of Ghost> to make a venom ward <rAmulet>")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>Since you've collected enough Talismans of Ghost, I'll help you to make a protective charm for 5000. Now keep away while I make the charm. Don't peep, it's a secret technique, if I catch you peeping, the deal is off! <n><t>Ok, here's your protective charm. If you need another, just get me another 20 Talismans of Ghost and I'll mark another one for you for 5000.")
	MisHelpTalk("<t>Its only 20 Tailsmans of Ghost! I also have to take them one by one. I did not expect you to be so useless.")
	MisResultCondition(HasMission, 355)
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262, 20)
        MisResultAction(GiveItem, 4249, 12 ,4)	
 	MisResultAction(SetRecord, 355 )
	MisResultAction(ClearMission, 355 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 355, 1, 20 )
	RegCurTrigger( 3551 )

-----------------------------------ʧ��
	DefineMission( 527, "Lost", 345, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>What? My son is unable to return home? I guess as long as he is not dead�� I'm so sorry for troubling you on this matter. I guess I should let the matter rest, I just feel so sorry for him and Luna. <n><t>Since you've helped me, citizens of Spring Town shall remember you for your good deeds, if there is anything I can help you with, please feel free to approach me.")
	MisResultCondition(HasRecord, 347)
	MisResultCondition(NoRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(NoRecord, 349)
	MisResultCondition(HasMission, 345)
	MisResultCondition(NoMission, 353)
	MisResultCondition(NoMission, 349)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	
-----------------------------------ʧ��
	DefineMission( 528, "Lost", 345 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>What? Has a miracle occurred? Is my son saved?<n><t>Thank you! The people of Spring Town will welcome you forever! Your act of kindness has gained the entire town's approval and you will forever be our honored guest. If there is anything I can help you with, please let me know.")
	MisResultCondition(HasRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(HasMission, 345)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	MisResultAction(SetRecord, 354 )

-----------------------------------�����ʵ
	DefineMission( 529, "Miracle Fruit", 358 )

	MisBeginTalk( "<t>Have you eaten a mysterious fruit before?<n><t>I haven't tried one before, really. I haven't. I mean I haven't even heard of anything like it before! <bYuri> at (3196, 2509) must be making up stories again! I knew it! He likes to boast about things.")
	MisBeginCondition(NoRecord, 358)
	MisBeginCondition(HasRecord, 345)
	MisBeginCondition(NoMission, 358)
  	MisBeginAction(AddMission, 358)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Ask <bYuri> at (3195, 2506) about the mysterious fruit")

	MisHelpTalk("<t>I said I don't know! Why would an innocent old lady lie to you?")
	MisResultCondition(AlwaysFailure )
-----------------------------------�����ʵ
	DefineMission( 530, "Miracle Fruit", 359 )

	MisBeginTalk( "<t>I'm really irritated by that old hag calling me a big liar. Lets drop the topic! I've seen Pirate King Roland before.<n><t>If you don't believe me, take a look at these scars on my chest. These were the result of our duels a long time ago. You say you want to take a look at the mysterious fruits? The truth is...I haven't seen anything like that for over a year. The last time, Guard Zhou gave one to me to pass sell it to a stranger named \"Lu\".<n><t>Why don't you go ask <bGuard Zhou> at (3298, 2534) about it?")
	MisBeginCondition(NoRecord, 359)
	MisBeginCondition(NoMission, 359)
	MisBeginCondition(HasMission, 358)
	MisBeginAction(SetRecord, 358 )
	MisBeginAction(ClearMission, 358 )
  	MisBeginAction(AddMission, 359)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Ask <bGuard Zhou> at (3298, 2534) about the mysterious fruit")

	MisHelpTalk("<t>If you want more information on golden apples or unicorn fruits, stop by and look for me.")
	MisResultCondition(AlwaysFailure )

-----------------------------------�����ʵ
	DefineMission( 531, "Miracle Fruit", 360 )

	MisBeginTalk( "<t>Mysterious fruit? No I haven't seen it. Don't come near me! I promise I won't do it again! Please, don't kill me! I'll leave right now, I don't want anything. I only came here to have fun, I didn't steal your egg! I won't go back to the <pUnderwater Tunnel> again, it's a living hell down there! Anyone who goes down there has never come back, I'm just lucky! <n><t>There is a gap in the sewers, which leads to the <pUnderwater Tunnel>. There's a madman there, he might know a thing or two about your mysterious fruit.")
	MisBeginCondition(NoRecord, 360)
	MisBeginCondition(NoMission, 360)
	MisBeginCondition(HasMission, 359)
	MisBeginAction(ClearMission, 359 )
  	MisBeginAction(AddMission, 360)
	MisBeginAction(AddTrigger, 3601, TE_GETITEM, 4263, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Investigate <pSeabed Tunnel>")
	MisNeed(MIS_NEED_ITEM, 4263, 1, 1, 1)

	MisHelpTalk("<t>I am only an ugly duckling��quack quack��")
	MisResultCondition(AlwaysFailure )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4263 )
	TriggerAction( 1, AddNextFlag, 360, 1, 1 )
	RegCurTrigger( 3601 )

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 532, "Demonic Fruit", 361 )

	MisBeginTalk( "<t>What's that in your hands? Looks familiar, don't come near me! Stay back! Take it away! Take it away! I don't want to see it ever again! <n><t>Take it away before something bad happens!")
	MisBeginCondition(NoRecord, 361)
	MisBeginCondition(HasMission, 360)
	MisBeginCondition(NoMission, 361)
	MisBeginCondition(HasItem, 4263, 1)
	MisBeginAction(ClearMission, 360 )
 	MisBeginAction(AddMission, 361)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Destroy the <pFruit Residue> and return to <pGuard Zhou> at (3298, 2534)")

	MisResultTalk("<t>I feel much better now, I hope I did not give you a scare when I panicked earlier on. If you had gone through the same ordeal I have, you would have panicked too!")
	MisHelpTalk("<t>What's that in your hands? It looks familiar, don't come near me! Stay back! Take it away! Take it away! I don't want to see it ever again! Take it away before something bad happens!")
	MisResultCondition(HasMission, 361)
	MisResultCondition(NoItem, 4263, 1)
   	MisResultAction(SetRecord, 361 )
	MisResultAction(ClearMission, 361 )

-----------------------------------����֣����
	DefineMission( 533, "Letter of Zhou", 362 )

	MisBeginTalk( "<t>Back to the topic, you said that the Underwater Tunnel does not have anymore that�� that kind of fruit?<n><t>Strange, I need time to recall. Could I have given you the wrong information? Why don't you help pass this letter to <bWang Mo> at (3290, 2512) near the bank while I am trying to recall the whole matter? Don't peep inside it and come back once you are done, I should be ready by then.")
	MisBeginCondition(NoRecord, 362)
	MisBeginCondition(NoMission, 362)
	MisBeginCondition(HasRecord, 361)
 	MisBeginAction(AddMission, 362)
 	MisBeginAction(GiveItem, 4250,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Send the <rPink Letter> to <bWang Mo> at (3290, 2512)")

	MisResultTalk("<t>The letter has been delivered? Did she look at it? What did she said? She ......Oh, coughed, graciousness, I thought I already thought some matters, our proper business.")
	MisHelpTalk("<t>Hurry up and deliver the letter or I'll be too troubled to recall anything.")
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasFlag, 362, 10)
   	MisResultAction(SetRecord, 362 )
	MisResultAction(ClearMission, 362 )

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 534, "Demonic Fruit", 363 )

	MisBeginTalk( "<t>You should have seen the huge Icy Dragon once you entered the Underwater Tunnel but that does not matter as it is not important.<n><t>Regarding the Strange Fruit you mentioned the other time, it is actually a Demonic Fruit. Rumor has it that anybody who consume it will gain demonic powers, but will lose an entire life of happiness. I do not believe this until I met the Icy Dragon in the tunnel.<n><t>Oh, there is somebody who has experienced the power of the Demonic Fruit. Do not judge her by her appearance as she is much older than she look.<n><t>However, I don't think she will admit to having any relation to a Demonic Fruit. I have told you what I have known and it will be up to you on what to do next.<n><t>By the way, I did not mention that she is the Tavern Keeper.")
	MisBeginCondition(NoRecord, 363)
	MisBeginCondition(NoMission, 363)
	MisBeginCondition(HasRecord, 362)
  	MisBeginAction(AddMission, 363)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Ask <pBarkeeper Sang Di> at (3287, 2501) about the Demonic Fruit")

	MisHelpTalk("<t>I've already told you all that I know�� and I thought I had already forgotten about it all. I not go crazy again.")
	MisResultCondition(AlwaysFailure )
	

-----------------------------------������
	DefineMission( 535, "Preservative", 364 )

	MisBeginTalk( "<t>Interested to make a Preservative? It is very useless when you explore Seabed Tunnel. It will keep your skin from rotting for 15 minutes.<n><t>Bring me 3 Tinder, 3 Cursed Bone and 3 Arista to make 1 Preservative.")
	MisBeginCondition(NoMission, 364)
 	MisBeginAction(AddMission, 364)
	MisBeginAction(AddTrigger, 3641, TE_GETITEM, 4259, 3)
	MisBeginAction(AddTrigger, 3642, TE_GETITEM, 4260, 3)
	MisBeginAction(AddTrigger, 3643, TE_GETITEM, 4261, 3)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring <bGrocer Luna> at (3279, 2501) some ingredient for making Preservative")
	MisNeed(MIS_NEED_ITEM, 4259, 3, 1, 3)
	MisNeed(MIS_NEED_ITEM, 4260, 3, 5, 3)
	MisNeed(MIS_NEED_ITEM, 4261, 3, 10, 3)

	MisResultTalk("<t>Wow, I didn't expect you to be able to collect enough ingredients in such a short time. Very well, here is your Preservative as promised.")
	MisHelpTalk("<t>What? You forgotten? Hmm...Its 3 <rTinder>, 3 <rCursed Bones>, 3 <rAristas>.")
	MisResultCondition(HasMission, 364)
	MisResultCondition(HasItem, 4259, 3)
	MisResultCondition(HasItem, 4260, 3)
	MisResultCondition(HasItem, 4261, 3)
	MisResultAction(TakeItem, 4259, 3)
	MisResultAction(TakeItem, 4260, 3)
	MisResultAction(TakeItem, 4261, 3)
	MisResultAction(GiveItem, 4251, 1 ,4)	
 	MisResultAction(SetRecord, 364 )
 	MisResultAction(ClearMission, 364 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259 )
	TriggerAction( 1, AddNextFlag, 364, 1, 3 )
	RegCurTrigger( 3641 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4260 )
	TriggerAction( 1, AddNextFlag, 364, 5, 3 )
	RegCurTrigger( 3642 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261 )
	TriggerAction( 1, AddNextFlag, 364, 10, 3 )
	RegCurTrigger( 3643)

-----------------------------------��֮��
	DefineMission( 536, "Tear of Dragon", 24 , COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Tear of Dragon? I haven't heard of such a thing in ages! From the size of the thing you mentioned, I think you must certainly have met that child. Forget it, whatever we say or do is pointless, what's past is past.<n><t>Do you wish to know more about the Tear of Dragon? Well I have two options for you. One, you sell me the gem and pretend that nothing else has happened. Two, I'll tell you all the things I know about this gem but you'll have to promise me you'll keep me informed about it all once you've solved the mystery.")
	MisResultCondition(NoRecord, 24)
	MisResultCondition(HasMission, 24)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 24)
	MisResultAction(ClearMission, 24)

-----------------------------------������֮��
	DefineMission( 537, "Sale of Dragon's Tear", 366 )

	MisBeginTalk( "<t>Give me the gem, I'll buy it off you for <r200000G> so that you can pretend that all this never happened. Don't think about it anymore, <r200000G> is not easy to come by just like that.")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasRecord, 24)	
	MisBeginCondition(HasItem, 4252,1)	
 	MisBeginAction(AddMission, 366)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Exchange the <rDragon's Tear> for 200000G with <bTavern Keeper Long Er> at (3302, 2501)")

	MisResultTalk("<t>Have you think it through? That is right! Why would you want to lose 200000G for something unrelated to you? Right? Hehe sell the Tear of Dragon to me now!")
	MisHelpTalk("<t>Ah? Where is your Tear of Dragon? You don't want to sell me anymore?")
	MisResultCondition(HasMission, 366)
	MisResultCondition(HasItem, 4252,1)
        MisResultAction(TakeItem, 4252, 1)	
        MisResultAction(AddMoney, 200000, 200000)	
 	MisResultAction(SetRecord, 366 )
 	MisResultAction(ClearMission, 366 )

-----------------------------------��֮��Ĵ�˵
	DefineMission( 538, "Legend of Dragon's Tear", 367 )

	MisBeginTalk( "<t>So you really wish to know more about the secret to the Tear of Dragon? I only know of a legend.<n><t>However I need time to recollect all the points. Please come back again later when I'm ready.")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(HasRecord, 24)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasItem, 4252,1)
	MisBeginAction(AddMission, 367)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Talk to Long Er again in a while")

	MisResultTalk("<t> Are you willing to forgo 200000G in order to know the secret of the gem? Even if you might risk everything you have? Since you are so persistent, alright then.<n><t>According to legend, on the death of a Icy Dragon, a teardrop will flow down from its eye and solidified into a gem. This is known as the Tear of Dragon. Those who pray with all of their heart and sprinkle their own blood and tears of sorrow upon the gem will have their sadness and sorrow melted away from their heart.<n><t>However, as the Icy Dragon is a very powerful creature, almost no one could obtain the Tear of Dragon except Pirate Haysh. Unexpectedly, something tragic happened. As he sprinkled his own blood and tears onto the Tear of Dragon, the gem transformed him into an Icy Dragon! The one you met in the Underwater Tunnel could be Haysh himself.<n><t>If you kill him, it should be a form of release from his imprisonment as a Icy Dragon. There, I've told you all that I know.")
	MisHelpTalk("<t>Where the Tear of Dragon?")
	MisResultCondition(HasMission, 367)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 367 )
 	MisResultAction(ClearMission, 367 )
	MisResultAction(ObligeAcceptMission, 25 )




-----------------------------------��֮�������
	DefineMission( 539, "Secret of Dragon's Tear", 25, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>How did you manage to get hold of the Tear of Dragon? Its a good thing that you did not try to use it.<n><t>What the legend describes is real. However, there is one important point that was left out. The blood and tears that you shed must be for others!")
	MisResultCondition(NoRecord, 25)
	MisResultCondition(HasMission, 25)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 25)
	MisResultAction(ClearMission, 25)

-----------------------------------ʥˮ
	DefineMission( 540, "Holy Water", 369 )

	MisBeginTalk( "<t>Pain and suffering is also a gift by the gods. It is only through the pain and hardship that one experiences that he is able to grow unceasingly. However, when a person shoulders too much of others pain and sorrow, it will affect him severely and therefore the Icy Dragon was created to wash away a person's pain and tears. However, people started abusing this idea. And so a curse was made to turn people into Icy Dragons should they try to abuse the kindness of the gods. <n><t>Your friend probably did not know of this. If you wish to help him, travel to the Magical Ocean at <p(3800, 550)>. The sea water nearby contains the blessings of the goddess which is able to cleanse him of the curse. Bring the water back to me and I'll teach you how to use it to save your friend.")
	MisBeginCondition(NoRecord, 369)
	MisBeginCondition(NoMission, 369)
	MisBeginCondition(HasRecord, 25 )
	MisBeginAction(GiveItem, 4239,1,4)
 	MisBeginAction(AddMission, 369)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Go to <pDark Blue Island (3800, 550)> and use <rGlass Bottle> to collect the seawater")

	MisResultTalk("<t>Wow, that was quick. Let me take a look to make sure that you've collected the right sea water.")
	MisHelpTalk("<t>Have you come across a problem? Only the sea water near the island <p(3800, 550)> at the Magical Ocean contains the blessings of the goddess which will cleanse your friend. ")
	MisResultCondition(HasMission, 369 )
	MisResultCondition(HasItem, 4257,1)
        MisResultAction(TakeItem, 4257, 1)
	MisResultAction(GiveItem, 4240, 1, 4)
	MisResultAction(SetRecord, 369 )
 	MisResultAction(ClearMission, 369 )
	MisResultBagNeed(1)
 
 -----------------------------------ʥˮ
	DefineMission( 541, "Redemption", 370 )

	MisBeginTalk( "<t>Cleanse your friend with this blessed water together with the Tear of Dragon and he'll be set free.")
	MisBeginCondition(HasRecord, 369)
	MisBeginCondition(NoRecord, 370)
	MisBeginCondition(NoMission, 370)
	MisBeginAction(AddMission, 370)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Use the <rHoly Water> on the <rTear of Dragon> to release the soul trapped in it")

	MisHelpTalk("<t>Use this Holy Water to cleanse your friend.")
	MisResultCondition(AlwaysFailure )
	
 
 -----------------------------------��ɰ�Ĵ��
	DefineMission( 542, "Hassli's Deposit", 26 , COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t> This deposit has not been touched for a long time. You say the owner is transferring it to you? Okay, we will go by the normal rules and procedures, if you can tell us the safety box's password, the money is yours. <n><t>(I pondered for awhile, and entered the password, \"All that you see is not what it seems. Your own eyes are often the cause of deception.\")")
	MisResultCondition(NoRecord, 26)
	MisResultCondition(HasMission, 26)
	MisResultAction(ClearMission, 26)
	MisResultAction(SetRecord, 26)
        MisResultAction(AddMoney, 200000)	
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,250000,250000)
	MisResultAction(AddExpAndType,2,60000,60000)

-----------------------------------����֣������
	DefineMission( 543, "Love Letter of Zhou", 372 )

	MisBeginTalk( "<t>This is...Wait! Don't go! You have read this letter, haven't you?<n><t>Maintaining your silence doesn't help, you are already betrayed by the intense sweating. Actually I came to silence the witness but since I see much honesty in you, I will give you a chance to repent. I heard that there is many new goods at <rYuri>'s place at (3195,2506), help me obtain one and I shall spare your life.")
	MisBeginCondition(NoRecord, 372)
	MisBeginCondition(NoMission, 372)
	MisBeginCondition(HasMission, 27)
 	MisBeginAction(AddMission, 372)
	MisBeginAction(SetRecord, 27)
	MisBeginAction(ClearMission, 27)
	MisBeginAction(AddTrigger, 3721, TE_GETITEM, 4241, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Help <bBanker - Wang Mo> bring back 1 set of <rTrendy Clothes> from <bCommerce - Yuri> at (3196, 2509)")
	MisNeed(MIS_NEED_ITEM, 4241, 1, 1, 1)

	MisResultTalk("<t>Yes! Just what I wanted. I'll let you off on account of this piece of clothing. But if I were to catch you sprouting nonsense, I'll kill you with my bare hands.")
	MisHelpTalk("<t>What! You've not done anything yet?! I could kill you right now!")
	MisResultCondition(HasMission, 372)
	MisResultCondition(HasItem, 4241, 1)
	MisResultAction(TakeItem, 4241, 1 )
 	MisResultAction(SetRecord, 372 )
	MisResultAction(ClearMission, 372 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4241 )
	TriggerAction( 1, AddNextFlag, 372, 1, 1 )
	RegCurTrigger( 3721 )
 


 -----------------------------------����֣����
	DefineMission( 544, "Letter of Zhou", 362 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>��Again? That guy...I really don't know what to say about him.<n><t>Oh, I'm sorry! I wasn't talking about you. Please go back and tell him to give it up, he'll understand.")
	MisResultCondition(NoRecord, 362)
	MisResultCondition(NoFlag, 362, 10)
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasItem, 4250, 1)
	MisResultAction(TakeItem, 4250, 1)
	MisResultAction(SetFlag, 362, 10)
	
-----------------------------------�»�
	DefineMission( 545, "New Goods", 372 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>How did you know I've got new supplies? Looks like you're an expert too. I'm also expecting the arrival of the new supplies, but the ship which sailed out along with us have not arrived yet and I'm too worried to be happy. If you're willing to sail out to the sea to check it out, I could give a free shirt for your trouble.")
	MisResultCondition(NoRecord, 372)
	MisResultCondition(NoFlag, 372, 10)
	MisResultCondition(HasMission, 372)
	MisResultAction(SetFlag, 372, 10)
	
-----------------------------------������̽
	DefineMission( 546, "Sea Exploration", 375 )

	MisBeginTalk( "<t>So you agreed to look for my ship? Great! First go to <p(2500, 2260)> to check it out. Take this Binoculars, you should be able to see our ship with it.")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)
	MisBeginCondition(HasFlag, 372, 10)
	MisBeginAction(AddMission, 375)
	MisBeginAction(GiveItem, 4258,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Go to <p(2500, 2260)> near Spring Town and use <rBinoculars> to investigate")

	MisResultTalk("<t>You have discovered my ship? This is great! This is for you. Return me my binoculars now. Its worth a fortune.")
	MisHelpTalk("<t>Have you forgotten the coordinates? Its <p(2500, 2260). Remember, hurry hurry hurry! I will be waiting for your good news.")
       	MisResultCondition(HasMission, 28)
	MisResultCondition(HasItem, 4258, 1)
	MisResultAction(TakeItem, 4258, 1)
	MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 375 )
 	MisResultAction(ClearMission, 375 )
 	MisResultAction(ClearMission, 28 )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

 -----------------------------------��������
	DefineMission( 547, "Buy New Clothes", 376 )

	MisBeginTalk( "<t> You don't intend to go to sea for me? Very well, I shall not force you then. I'll give you a 20 percent discount for this. 100000G what do you say? I'm an honest person, does it look like I'm out to cheat you of your money?")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)	
	MisBeginAction(AddMission, 376)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisResultTalk("<t>Actually I was hoping that you would be willing to go to sea for me, but, since you are willing to part with 100000G, there's nothing much I can do..")
	MisHelpTalk("<t>100000G��No more no less.")
	MisResultCondition(HasMission, 376)
	MisResultCondition(HasMoney, 100000)
        MisResultAction(TakeMoney, 100000)	
        MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 376 )
 	MisResultAction(ClearMission, 376 )
	MisResultBagNeed(1)

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 548, "Demonic Fruit", 363 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> What Demonic Fruit? Didn't I tell you before that I know nothing of this fruit which you speak of? I'm only 100 years old, I'm not that old! <n><t>Why are you so na?ve to believe what the others are saying? If you did not risk your life to help Hami, I would have chased you out of here long ago with my broomstick. Let me say this one last time, I'm not old! I'm just 100 years old.")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(NoFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultAction(SetFlag, 363, 22)
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddExpAndType,2,50000,50000)

-----------------------------------��ħ�Ĺ�ʵ
	DefineMission( 550, "Demonic Fruit", 363, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> Grrr...If you ask me about the Demonic Fruit one more time, don't hold it against me if I lose my temper.<n><t>Wait a minute...What is the earring in your pocket. It looks like my granddaughter's earring, how can it be? She was lost years ago out at sea? What? You say she is alive and well and that she's already 150 years old? Ok ok...I admit, I have eaten of the Demonic Fruit and that is why I am still able to retain my good looks till now but I am definitely not 1000 years old. The Demonic Fruits appeared when Roland the Pirate King was around. It was during this period that I stole a fruit and ate it which is also why till today I deny all accusations of having taken one.<n><t>Mysteriously, after Roland left the island, all the Demonic Fruits disappeared! Nobody knew where those fruits came from and nobody know how they all vanished so quickly!  I guess what Roland must have taken them all away when he left.")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(HasFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(TakeItem, 4235, 1)
	MisResultAction(SetRecord, 363)
	MisResultAction(ClearMission, 363)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem,3351,15,4)
	MisResultAction(GiveItem,3352,15,4)
	MisResultAction(GiveItem,3353,15,4)
	MisResultBagNeed(3)


 -----------------------------------��ɭ
	DefineMission( 551, "Roland", 380 )

	MisBeginTalk( "<t>Are you asking about Roland? Roland is the hero of all legends. All the girls in our city idolizes him and he is the role model for all the young guys...<n><t>I will tell you more once I have <pcollected all my debts>.")
	MisBeginCondition(HasRecord, 363)
	MisBeginCondition(NoRecord, 380)
	MisBeginCondition(NoMission, 380)
	MisBeginAction(AddMission, 380)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Wait around for <bBarkeeper Sang Di> at (3287, 2501).")

	MisResultTalk("<t>Woah! All the accounts have been settled. Come listen, let me continue where we previously left off.")
	MisHelpTalk("<t>Didn't I tell you to wait till I'm done with these debt collections? Once I'm done I'll continue the story.")
	MisResultCondition(HasRecord, 386)
	MisResultCondition(HasMission, 380)
  	MisResultAction(SetRecord, 380 )
 	MisResultAction(ClearMission, 380 )
	


-----------------------------------����
	DefineMission( 552, "Tragedy", 381 )

	MisBeginTalk( "<t>Do you know why Oldman Blurry is not willing to help you with the translation? That's because, after reading an article that he translated, his beloved grandson left Argent City in search of the hidden city that was mentioned. Since then, he has never returned and that is why Oldman Blurry no longer wishes to do any more translations.<n><t>He was such a lovable young boy and he would visit me often. The last news I heard was that his grandson sailed towards the Magical Ocean (3757, 1248) before he went missing. Could you do me a favor and go investigate? Take my Underwater Detector, it'll help you with your search.")
	MisBeginCondition(NoRecord, 381)
	MisBeginCondition(NoMission, 381)
	MisBeginCondition(HasRecord, 290)
	MisBeginAction(AddMission, 381)
  	MisBeginAction(GiveItem,4253,1,4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	
	MisNeed(MIS_NEED_DESP, "Investigate around Magical Ocrean at (3757, 1248)")
	MisResultCondition(AlwaysFailure )


-----------------------------------����
	DefineMission( 553, "Tragedy", 382 )

	MisBeginTalk( "<t>Hmm, I understand this writing. It looks like our friend has run into some pirates. <n><t>Take this to <bOldman Blurry>, it may come as a shock to him but I guess we all have to face the hard fact.")
	MisBeginCondition(NoMission, 382)
	MisBeginCondition(HasMission, 29)
	MisBeginCondition(HasItem, 4233,1)
	MisBeginAction(ClearMission, 29)
	MisBeginAction(SetRecord, 29)
	MisBeginAction(AddMission, 382)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Bring the <rLetter in a Bottle> to <bBlurry at (2272, 2700)>")
	
	MisResultCondition(AlwaysFailure )
-----------------------------------����
	DefineMission( 554, "Tragedy", 382, COMPLETE_SHOW )


	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>I knew this would happen�� However, I am somewhat comforted that you gave me this letter. At least I now know what has become of him.")
	MisResultCondition(HasMission, 382)
	MisResultCondition(HasItem, 4233, 1)
	MisResultAction(TakeItem, 4233, 1)
	MisResultAction(ClearMission, 382)
	MisResultAction(SetRecord, 382)

-----------------------------------����
	DefineMission( 555, "Tragedy", 383 )

	MisBeginTalk( "<t>Although someone of my age should not harbor such thoughts of revenge, I will be eternally grateful it if you could teach those pirates of Magical Ocean a lesson.")
	MisBeginCondition(NoRecord, 383)
 	MisBeginCondition(HasRecord, 382)
 	MisBeginCondition(NoMission, 383)
	MisBeginAction(AddMission, 383)
	MisBeginAction(AddTrigger, 3831, TE_KILL, 594, 10)
	MisBeginAction(AddTrigger, 3832, TE_KILL, 593, 5)
	MisBeginAction(AddTrigger, 3833, TE_KILL, 656, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Jack the Pirate's Warship x10 at (1950, 3515); Jack the Pirate's Support Ship x5 at (2210, 3769); Jack the Pirate's Command Ship x1 at (1966, 3769)")
	MisNeed(MIS_NEED_KILL, 594, 10, 1, 10)
	MisNeed(MIS_NEED_KILL, 593, 5, 11, 5)
	MisNeed(MIS_NEED_KILL, 656, 1, 16, 1)

	MisResultTalk("<t>Thank you! Thank you! I really don't know what to say. I hope that this item will be good enough a reward for you. I am really grateful for your help!")
	MisHelpTalk("<t>If this is too hard on you, forget it. I will die with those man-eating beasts.")
	MisResultCondition(HasMission, 383 )
	MisResultCondition(HasFlag, 383, 10)
	MisResultCondition(HasFlag, 383, 15)
	MisResultCondition(HasFlag, 383, 16)
 	MisResultAction(SetRecord, 383 )
 	MisResultAction(ClearMission, 383 )
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem,3878,1,4)
	MisResultAction(GiveItem,4715,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 594 )
	TriggerAction( 1, AddNextFlag, 383, 1, 10 )
	RegCurTrigger( 3831 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 593 )
	TriggerAction( 1, AddNextFlag, 383, 11, 5 )
	RegCurTrigger( 3832 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 656 )
	TriggerAction( 1, AddNextFlag, 383, 16, 1 )
	RegCurTrigger( 3833 )

-----------------------------------��ȥ
	DefineMission( 556, "Past", 384 )

	MisBeginTalk( "<t>Do you know why Albuda is so furious? Take a look at the rubble beneath my feet.<n><t>Many years ago, our clan managed to obtain some ancient manuscripts. After translation, the citizens came to know about the various places that exist outside of the city. With their curiosity aroused, many youngsters left the city and ventured forth into the great unknown in search of adventure.<n><t>Having forsaken their religion, this act of betrayal angered our Goddess! She summoned a sandstorm that buried this city. What remains of this city is what you see beneath my feet, a mere shadow of its past existence.<n><t>Today, there are not many who know about the history of Shaitan City with Albuda being just one of the few. The reason he banished me was because I snuck into the library chambers and tried to steal those <r manuscripts out of curiosity. Of course I got caught and that is how I got confined here.<n><t>I wonder if those <r manuscripts still exist after such a long time. If you can somehow obtain them for me, I will give you some of my treasure in exchange.<n>")
	MisBeginCondition(NoRecord, 384)
	MisBeginCondition(NoMission, 384)
	MisBeginCondition(HasRecord, 290)
 	MisBeginAction(AddMission, 384)
	MisBeginAction(AddTrigger, 3841, TE_GETITEM, 4234, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Find <rAncient Note> for <bHoly Priestess - Ada> at (862, 3303)")
	MisNeed(MIS_NEED_ITEM, 4234, 1, 1, 1)

	MisResultTalk("<t>Hey! I didn't expect you to find it so quickly. I always thought that you were somehow involved in the theft. No matter... as long as I possess it now, everything else doesn't matter! Oh yes, here's the reward I promised you.")
	MisHelpTalk("<t>Its not as if the library was broken into a few days ago. It has been months! If you are stumped, that is okay. There is no need to come up with a replica to cheat me into believing you.")
	MisResultCondition(HasMission, 384)
	MisResultCondition(HasItem,4234,1)
	MisResultAction(TakeItem, 4234,1 )
 	MisResultAction(SetRecord, 384 )
	MisResultAction(ClearMission, 384 )
	MisResultAction(AddExpAndType,2,60000,60000)
	
	MisResultAction(GiveItem,3878,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4234 )
	TriggerAction( 1, AddNextFlag, 384, 1, 1 )
	RegCurTrigger( 3841 )

-----------------------------------��ȥ
	DefineMission( 557, "Past", 384, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>An ancient logbook? I think I might have seen it somewhere before. However, since it wasn't worth anything, it was distributed out among everyone. You can try asking them for it. ")
	MisResultCondition(NoRecord, 384)
	MisResultCondition(HasMission, 384)
	MisResultCondition(NoItem, 4234, 1)
	MisResultCondition(NoFlag, 384, 10)
	MisResultAction(SetFlag, 384, 10)

	
-----------------------------------------��ծ
      DefineMission(558,"Demand for Payment",386)

      MisBeginCondition(HasMission,380)
      MisBeginCondition(NoRecord,386)
      MisBeginCondition(NoMission,386)
 
      MisBeginTalk("<t>What? You're interested in helping me to collect my debts? That's wonderful! It isn't much actually, just 2000000G. Everything is recorded in this book. If you can collect it all, I'll give you the information you need.")
      MisBeginAction(AddMission,386)
      MisBeginAction(GiveItem,0948,1,4)
      MisBeginBagNeed(1)
      MisCancelAction(SystemNotice, "This quest cannot be abandoned") 

      MisNeed(MIS_NEED_DESP, "Help Sang Di collect the debt from <r Long Er, Luna, Yuri, Wu Xin, Cloud, Bill and Shuang>") 
      
      MisHelpTalk("<t>You don't look too well, having a hard time? I'm just a lonely old woman without my son by my side to help me��If you cannot get it back, can you top it up with your own money? Its only 2 millions. 2 millions!")
      
      MisResultTalk("<t>I must thank you. Its really 2 millions. Did they cause you any trouble?<n><t>This gift is for you. Keep it well.")
    
      MisResultCondition(NoRecord,386)
      MisResultCondition(HasFlag,386, 100)
      MisResultCondition(HasFlag ,386, 101)
      MisResultCondition(HasFlag,386, 102)
      MisResultCondition(HasRecord,389)
      MisResultCondition(HasRecord,391)
      MisResultCondition(HasRecord,400)
      MisResultCondition(HasRecord,393)
	  MisResultCondition(HasItem,0948,1)
      MisResultCondition(HasMoney,2000000)
      MisResultAction(TakeMoney,2000000)
      MisResultAction(TakeItem,0948,1)
      MisResultAction(GiveItem,0189,1,4)
      MisResultBagNeed(1)
      MisResultAction(ClearMission,380)
      MisResultAction(ClearMission, 386 )
      MisResultAction(SetRecord, 380 )
      MisResultAction(SetRecord,386)

      ----------------------------------��ծ      �����Σ�
      DefineMission(567,"Demand for Payment",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>Oh, are you here to collect the debt on behalf of Sang Di? You're just on time, here's 100000 as capital and here's 100000G as interest.<n><t>(*Sweat* 100000G interest? What kind of business is Sang Di running?")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 100)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 100)
     


      ------------------------------------��ծ
       DefineMission(568,"Demand for Payment",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>Oh, look at me. I'm just a poor old man. Do you think I have enough to repay her? If it weren't for my wive falling gravely ill I wouldn't have run into such a huge debt with her. How about this? Could you take this 100000G and help me pay the interest? It's not that much, 100000G will do.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag,386,101)
      MisResultAction(AddMoney,100000)
      MisResultAction(SetFlag,386,101)
    


      ----------------------------------------��Ů��ծ��
      DefineMission(569,"Long Er's Debt",389)

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,389 )
      MisBeginCondition(NoMission,389 )
      MisBeginAction(AddMission,389)
      MisCancelAction(SystemNotice, "This quest cannot be abandoned")

      MisBeginTalk("<t>Oh darn�� my memory must be failing me. I've been busy recently with my work. Could you do me a favor and run over to the bank? I'll inform Wang Mo for you? If I remember correctly, the total amount inclusive of interest is 200000G.")
      
      MisNeed(MIS_NEED_DESP, "Go to Banker Wang Mo at (3290, 2512) to take 200000G")

      MisHelpTalk("<t>I have already spoken to Wang Mo. You only need to go and take it")
       
     MisResultCondition(AlwaysFailure)

-------------------------------------------��Ů��ծ��
     DefineMission(570,"Long Er's Debt",389, COMPLETE_SHOW)

     MisBeginCondition(AlwaysFailure)

     MisResultTalk("<t>Are you here to collect money on behalf of Long Er? HERE! A total of 200000G to be exact. However, I'll need you to pay 200G as administration fees.")

     MisResultCondition(HasMission,389)
     MisResultCondition(NoRecord,389)
     MisResultCondition(HasMoney,200)
     MisResultAction(TakeMoney,200)
     MisResultAction(AddMoney,200000)
     MisResultAction(ClearMission, 389 )
     MisResultAction(SetRecord, 389 )
     


---------------------------------------------��ծ
     DefineMission(563,"Demand for Payment",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>What? You want it now? Didn't we have a 3-month agreement on this? I was supposed to use this money for my wedding arrangement. Could you leave some behind? What? An interest of 300000G? Ah forget it. Problem is I've already spent some of the money and the wedding ceremony has yet to commence. Since, I have yet to receive any valuable gifts from my relatives, can you make do with the current amount I have?")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 102)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 102)



     ---------------------------------------------�ӻ����˵�ծ��
      DefineMission(564,"Grocer's Debt",391)

      MisBeginTalk("<t>Lately, there is a demand for Teleport Tickets. However I am out of materials to capitalize on this opportunity. If you can head down to the Underwater Tunnel and get me some materials, I will be able to return your money from the sales.")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,391)
      MisBeginCondition(NoMission,391)
      MisBeginAction(AddMission,391)
   
      MisBeginAction(AddTrigger, 3911, TE_GETITEM, 0176, 3 )		--��ȱ�Ĺ�ʬ��
      MisBeginAction(AddTrigger, 3912, TE_GETITEM, 0177, 3 )		--����Ĺ�ʬ��
      MisBeginAction(AddTrigger, 3913, TE_GETITEM, 0178, 3 )		--�����Ĺ�ʬ��
      MisCancelAction(SystemNotice, "This quest cannot be abandoned")
      
      MisNeed(MIS_NEED_DESP, "Go to Underwater Tunnel and collect 3 Torn Corpse Wrap, 3 Damaged Corpse Wrap and 3 Intact Corpse Wrap from the zombies")
      MisNeed(MIS_NEED_ITEM, 0176, 3, 10, 3)
      MisNeed(MIS_NEED_ITEM, 0177, 3, 20, 3)
      MisNeed(MIS_NEED_ITEM, 0178, 3, 30, 3)
      
      MisHelpTalk("<t>If you take your time, I'll miss this golden opportunity to make some big bucks. That also means that I will not have enough money to repay you. Please hurry, I'm at my wits end, this is my only way out!")  
      MisResultTalk("<t>Haha! With these I'll be able to make more tickets! Here, I've borrowed 400000G  from the bank as I'm very confident that I'll make be able to make a huge profit from the ticket sales alone.<n><t>Oh yes! Here's another 20000G. It's my gratitude to you for doing me this favor.")
      MisResultCondition(HasMission, 391 )
      MisResultCondition(HasItem, 0176, 3 )
      MisResultCondition(HasItem, 0177, 3 )
      MisResultCondition(HasItem, 0178, 3 )
      MisResultAction(TakeItem, 0176, 3 )
      MisResultAction(TakeItem, 0177, 3 )
      MisResultAction(TakeItem, 0178, 3 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 391 )
      MisResultAction(SetRecord, 391 )
      
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0176 )	
   TriggerAction( 1, AddNextFlag, 391, 10, 3 )
    RegCurTrigger(3911)
    
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0177 )	
   TriggerAction( 1, AddNextFlag, 391, 20, 3 )
    RegCurTrigger(3912) 
     
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0178 )	
   TriggerAction( 1, AddNextFlag, 391, 30, 3 )
    RegCurTrigger(3913)

--------------------------------------------------------�ۿ�ָ�ӡ�˪���ծ��
     DefineMission(565,"Shuang's Debt",392)

      MisBeginTalk("<t>Can you wait just a few more days? I just need to get this batch of goods transported over to the Navy Commander in Thundoria. It's all good to go, I'm just waiting for someone to deliver them for me and I'll be able to receive 400000G as payment.<n><t>If you are willing to run this errand for me, I will be able to repay you quickly.")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,392)
      MisBeginCondition(NoMission,392)
      MisBeginAction(AddMission,392)
      MisBeginAction(GiveItem,0949,1,4)
      MisCancelAction(SystemNotice, "This quest cannot be abandoned")
      MisBeginBagNeed(1)

      MisNeed(MIS_NEED_DESP, "Help the Physican send the herbs to Navy Commander in Thundoria Castle at (713, 1416)")
      MisHelpTalk("<t>How is it? Have you sent the items? Is he satisfied?")
       
      MisResultTalk("<t>Has the goods been delivered? That's good. The money should be credited to my account any time now, let me have a look.<n><t>Oh here, payment has been made. Here's the 400000G I owe and on top of that, here's an extra 20000G as a way of thanking you for your effort." )
      MisResultCondition(HasRecord,392) 
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission,392 )
      MisResultAction(SetRecord,400)

  -------------------------------------------------------�ۿ�ָ�ӡ�˪���ծ��

  DefineMission(566,"Shuang's Debt",392, COMPLETE_SHOW )

      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>Oh? I haven't seen you before, I was expecting the same person from the previous shipment. But nonetheless, if all the goods are accounted for I will be able send payment immediately. You may leave now, don't worry I will send payment as soon as I am done inspecting these goods.")
      MisResultCondition(HasMission,392)
      MisResultCondition(NoRecord,392)
      MisResultCondition(HasItem,0949,1)
      MisResultAction(TakeItem,0949,1)
      MisResultAction(SetRecord,392)
      
       

   -----------------------------------------------------ó�����ˡ������ծ��

      DefineMission(572,"Yuri's Debt",393)

      MisBeginTalk("<t> I would be able to return the money by now if the 5 Crystal Balls that I was looking after did not go missing. Now I have to use all my money to pay as compensation because of my negligence. Could you help me to look for the missing Crystal Balls? If you find them, I'll be able to repay you immediately.<n><t>My suspicion is that a Fox Spirit stole the Crystal Balls.")

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,393)
      MisBeginCondition(NoMission,393)
      MisBeginAction(AddMission,393)
   
      MisBeginAction(AddTrigger, 3931, TE_GETITEM, 1864, 5 )		 
      MisCancelAction(SystemNotice, "This quest cannot be abandoned")
      
      MisNeed(MIS_NEED_DESP, "Get 5 Crystal Balls from Fox Spirit")
      MisNeed(MIS_NEED_ITEM, 1864, 5, 10, 5)
      
      
      MisHelpTalk("<t>If I cannot hand out the Crystal Ball, I will be dead.")  
      MisResultTalk("<t>Oh my! How did you manage to find it? You're my hero! Here's the 400000G which I owe the old lady. To thank you, here's an extra 20000G.")
      MisResultCondition(HasMission, 393 )
      MisResultCondition(HasItem, 1864, 5 )
      MisResultAction(TakeItem, 1864, 5 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 393 )
      MisResultAction(SetRecord, 393)

	  InitTrigger() 
   TriggerCondition( 1, IsItem, 1864 )	
   TriggerAction( 1, AddNextFlag, 393, 10, 5 )
    RegCurTrigger(3931)

--------------------------------------------��ɭ
     DefineMission(571,"Roland",394)
     MisBeginTalk("<t>I have 2 million gold to deposit into the bank.<n><t>Talk to you later.")
     MisBeginCondition(HasRecord,386)
      MisBeginCondition(NoMission, 394)
     MisBeginCondition(NoRecord, 394)
     MisBeginAction(AddMission, 394)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "Wait for <bBarkeeper - Sang Di> at (3287, 2501) to deposit the gold")
     MisHelpTalk("<t>The gold is not yet deposited. Please be patient.")
      MisResultTalk("<t>Its easy to save when you are old��")
     MisResultCondition(NoRecord, 394)
     MisResultCondition(HasMission, 394)
     MisResultAction(SetRecord, 394 )
     MisResultAction(ClearMission, 394 )

----------------------------------------׷��
	 DefineMission(592,"Retrospection",395)
	
	MisBeginTalk( "<t>That was an incident that happened a long time ago, an unpleasant memory that I would rather not think about. Roland was the greatest pirate at that time, his charming smile always full of mystery...Ahh! I have a headache just thinking about it. Here! Take this necklace and continue on your adventure. You will gradually unravel the mystery. Go to Icicle City and find a young man named Daisha. Who knows there might be some shocking surprises in store for you." )
	MisBeginCondition(NoRecord, 395)
	MisBeginCondition(NoMission, 395)
	MisBeginCondition(HasRecord,394)
	MisBeginAction(AddMission,395)
	MisBeginAction(GiveItem, 1051, 1, 4)	----------------Īа����	
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Talk to Physician Daisha")
	
	MisHelpTalk("<t>You haven't looked for Daisha yet? Hurry and go look for him!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------׷��
	DefineMission(593, "Retrospection", 395, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Oh god,I have insomnia everynight!")
	MisResultCondition(NoRecord, 395)
	MisResultCondition(HasMission,395)
	MisResultAction(ClearMission,395)
	MisResultAction(SetRecord, 395)
       -----------------------------------------------------��յĶ���
	DefineMission(594,"Daisha's Nightmare",396)
	
	MisBeginTalk( "<t>I can't get to sleep everynight. I have been having nightmares recently. I really can't fathom the meaning of these nightmares. I need to get some advice on this, but unfortunately, I'm pretty tied up this few days. Can you help me ask <bHocus Pocus> at (3262, 2502) about this?" )
	MisBeginCondition(NoRecord, 396)
	MisBeginCondition(NoMission, 396)
	MisBeginCondition(HasRecord,395)
	MisBeginAction(AddMission,396)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Look for Hocus Pocus")
	
	MisHelpTalk("<t>You haven't looked for the fortune teller yet? Be on your way then!")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------��յĶ���
	DefineMission(5065,"Daisha's Nightmare",396)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>You come to obtain a divination for Daisha? I already foretold that you will come today!")
	MisResultCondition(NoRecord, 396)
	MisResultCondition(HasMission,396)
	MisResultAction(ClearMission,396)
	MisResultAction(SetRecord, 396)
	

---------------------------------------------------------------����ʿ����
	DefineMission(595,"Mischief of Fox Taoist",397)

      MisBeginTalk("<t>Usually, I don't help others in divination, but you have the necklace as proof and you look sincere. So.. I'm going to make you an exception just this once.<n><t>###..**##%! It's the <yFox Taoist>. Go kill 10 Fox Taoist at (3322, 2460).")

      MisBeginCondition(HasRecord,396)
      MisBeginCondition(NoRecord,397)
      MisBeginCondition(NoMission,397)
      MisBeginCondition(HasItem,1051,1)----------Īа����
      MisBeginAction(TakeItem,1051,1)
      MisBeginAction(AddMission,397)
      MisBeginAction(AddTrigger, 3971, TE_KILL, 748, 10)
   
      MisCancelAction(SystemNotice, "This quest cannot be abandoned")
      MisNeed(MIS_NEED_DESP, "Kill 10 Fox Taoists")
      MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)

      MisHelpTalk("<t>Kill 10 Fox Taoists on Spring Island.")  
      MisResultTalk("<t>You have quite a good performance. I feel like making you my disciple.")
      MisResultCondition(HasMission, 397 )
      MisResultCondition(HasFlag, 397, 19)
      MisResultAction(AddMoney,100000)
      MisResultAction(ClearMission, 397 )
      MisResultAction(SetRecord, 397)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 748 )
      TriggerAction( 1, AddNextFlag, 397, 10, 10 )
      RegCurTrigger( 3971 )
-------------------------------------------------------Ϊ��ս���
	DefineMission(5066,"Unravel the dream of Daisha",992)
	
	MisBeginTalk( "<t>There is no need to thank me. Its always a pleasure to help someone in need. Go to Icicle City and look for <bDaisha> at (1352, 499)." )
	
	MisBeginCondition(HasRecord,397)
	MisBeginCondition(NoRecord, 992)
	MisBeginCondition(NoMission, 992)
	MisBeginAction(AddMission,992)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Find Daisha to help him unravel the meaning of his dreams")
	
	MisHelpTalk("<t>I never annouce my name when I do good things,  because I am Hocus Pocus!")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------Ϊ��ս���
	DefineMission(5067,"Unravel the dream of Daisha",992)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Really? I finally can have a good sleep tonight! Take these money as a reward. You are talented.")

	MisResultCondition(HasMission,992)
	MisResultCondition(NoRecord, 992)
	MisResultAction(ClearMission,992)
	MisResultAction(SetRecord, 992)
	MisResultAction(AddMoney,20000)

	------------------------------------------------------------�����ȵĶ���
       DefineMission(596,"Belinda's nightmare",398)
	
	MisBeginTalk( "<t>Would you mind helping me again? My pretty neighbour, <bBelinda> at (1360, 519) seems to be having some problems lately." )
	MisBeginCondition(NoRecord, 398)
	MisBeginCondition(NoMission, 398)
	MisBeginCondition(HasRecord,992)
	MisBeginAction(AddMission,398)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Look for Banker Belinda at (1360, 519)")
	
	MisHelpTalk("<t>Please find Belinda?")
	MisResultCondition(AlwaysFailure)
	----------------------------------------------�����ȵĶ���
	 DefineMission(597,"Belinda's nightmare",398)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Was it Daisha who told you? I'm so touched. There's actually someone who cares for me.")
	MisResultCondition(NoRecord, 398)
	MisResultCondition(HasMission,398)
	MisResultAction(ClearMission,398)
	MisResultAction(SetRecord, 398)	
	------------------------------------------------��Ȳ�����
	 DefineMission(598,"Rescue Belinda",399)
	
	MisBeginTalk( "<t>I didn't sleep well last night, now I'm too tired to do anything. Can you help me get a divination from the fortune teller at (3262, 2502)? <bRemember to come back and tell me the outcome>." )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 399)
	MisBeginCondition(HasRecord,398)
	MisBeginAction(AddMission,399)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Look for Hocus Pocus")
	
	MisHelpTalk("<t>You haven't looked for the fortune teller yet? Be on your way then!")

	MisResultTalk("<t>Thank you for being so kind. This is something to show my appreciation. I happened to hear that the fortune teller at (3262, 2502) is looking for you. He might have something important.")
	MisResultCondition(NoRecord, 399)
	MisResultCondition(HasMission,399)
	MisResultCondition(HasRecord,950)
	MisResultAction(ClearMission,399)
	MisResultAction(SetRecord, 399)

	--------------------------------------------------------����ˮ����
	DefineMission( 599, "Mytho Crystal Ball", 996 )

	MisBeginTalk( "<t>I give divinations only when my conditions are met. I'm making the most powerful Crystal Ball ever to be depicted in the legends, but I'm still lacking of 2 <yAzure Crystals>that can be found on <bFeral Blood Polliwog> at  (2705, 366) in Ascaron, and 3 <yPerfect Crystals> that can be found on <bHorrific Cursed Corpse> at (360, 1340) in Ascaron. You wouldn't reject me now, would you?" )------------++++++
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoRecord, 996)
	MisBeginCondition(NoMission, 996)
	MisBeginCondition(HasMission,399)
	MisBeginAction(AddMission, 996)
	MisBeginAction(AddTrigger, 9961, TE_GETITEM, 3366,2 )		--��ɫˮ��
	MisBeginAction(AddTrigger, 9962, TE_GETITEM, 1635, 3 )		--ˮ����ʯ
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

        MisNeed(MIS_NEED_DESP, "Remember! Bring back 2 <yAzure Crystals> and 3 <yPerfect Crystals>!")
	MisNeed(MIS_NEED_ITEM, 3366,2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1635, 3, 20, 3)


	MisResultTalk("<t>I predicted that you would be back, but I didn't know that you would be so fast.")
	MisHelpTalk("<t>What happen? The task is so simple yet you cannot complete?")
	MisResultCondition(HasMission, 996)
	MisResultCondition(HasItem, 3366, 2 )
	MisResultCondition(HasItem, 1635, 3 )
	
	MisResultAction(TakeItem, 3366, 2 )
	MisResultAction(TakeItem, 1635, 3 )
	
	MisResultAction(ClearMission, 996)
	MisResultAction(SetRecord, 996 )---------------------set996
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	


	InitTrigger()
	TriggerCondition( 1, IsItem,3366)	
	TriggerAction( 1, AddNextFlag, 996, 10, 2 )
	RegCurTrigger( 9961 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1635)	
	TriggerAction( 1, AddNextFlag, 996, 20, 3 )
	RegCurTrigger(9962 )

	----------------------------------------------------------------------------��������
	DefineMission( 5000, "Mischief of Fox Spirit", 950 )

	MisBeginTalk( "<t>###...**##%! This time, its the <yFox Spirit> at (3306, 2444) on Spring Island causing trouble. Do not let them off, kill 5 of them!" )
	MisBeginCondition(NoRecord, 950 )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 950 )
	MisBeginCondition(HasRecord,996)-----------------
	MisBeginAction(AddMission,  950 )
	MisBeginAction(AddTrigger,  9501, TE_KILL,761, 5 )	----------����
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Kill 5 Fox Spirit and return!")
	MisNeed(MIS_NEED_KILL,761,5, 10, 5)

	MisResultTalk("<t>Go back and let Belinda at (1360, 519) know about this piece of good news.")
	MisHelpTalk("<t>Hmm...Are you afraid? Is killing 5 of it too tough for you to handle?")
	MisResultCondition(HasMission,  950 )
	MisResultCondition(NoRecord,  950)
	MisResultCondition(HasFlag,  950, 14 )
	MisResultAction(ClearMission, 950 )
	MisResultAction(SetRecord,  950  )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 761)	
	TriggerAction( 1, AddNextFlag,   950 , 10,5)
	RegCurTrigger(   9501 )

---------------------------------------------------------------------��������

	DefineMission( 5001, "Mischief of Fox Sage", 951 )

	MisBeginTalk( "<t>It's not a coincidence that they are banding together to cause havoc. There must be a mastermind behind all these. I have divined that it is a <yFox Sage> at (3135, 2469). Go kill it, and you will be duly rewarded for your efforts. You only need to kill 1." )--------++++++0
	MisBeginCondition(NoRecord, 951 )
	MisBeginCondition(HasRecord, 399)
	MisBeginCondition(NoMission, 951 )
	MisBeginAction(AddMission,  951)
	MisBeginAction(AddTrigger,  9511, TE_KILL, 776, 1 )----------------����
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 1 Fox Sage")
	MisNeed(MIS_NEED_KILL,776,1, 10, 1)

	MisResultTalk("<t>Even the Fox Sage is of no match for you. Your improvement is tremendous. I shall give you this reward on behalf of all those who was troubled by the nightmares.")
	MisHelpTalk("<t>Beware! The Fox spirit in Spring town will seduce you!")
	MisResultCondition(HasMission,  951)
	MisResultCondition(NoRecord,  951)
	MisResultCondition(HasFlag,  951, 10 )
	MisResultAction(ClearMission,  951 )
	MisResultAction(SetRecord,  951  )
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 776)	
	TriggerAction( 1, AddNextFlag,  951 , 10,1)
	RegCurTrigger(   9511 )

-----------------------------------------------------------------------�ش�����

	DefineMission( 5002, "big secret",952 )

	MisBeginTalk( "Young man, I can see that you hold a great mystery within you. I would like to help you, but I have have met with an interruption. Help me eliminate the source of this interruption by killing 1 <ySwift Cyclonic Sea Jelly> at (3750, 1275) that can be found at the shore of the Magical Ocean." )
	MisBeginCondition(NoRecord,952 )
	MisBeginCondition(HasRecord, 951)
	MisBeginCondition(NoMission,952 )
	MisBeginAction(AddMission, 952)
	MisBeginAction(AddTrigger,9521, TE_KILL, 621, 1 )		----Ѹ�ݵı���ˮĸ
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	 MisNeed(MIS_NEED_DESP, "Kill 1 Swift Cyclonic Sea Jelly of the shore of Magical Ocean!")----------++++1
	MisNeed(MIS_NEED_KILL,621,1, 10, 1)

	MisResultTalk("<t>Hold on for a while, I'll cast a divination for you.")
	MisHelpTalk("<t>The peaceful sea region at (3750,  1275) have been greatly disturb by Tempest Sea Jellies.")
	MisResultCondition(HasMission,952 )
	MisResultCondition(HasFlag, 952, 10 )
	MisResultAction(ClearMission, 952 )
	MisResultAction(SetRecord,952 )
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 621)	
	TriggerAction( 1, AddNextFlag,  952 , 10,1)
	RegCurTrigger( 9521 )
------------------------------------------------------------------��ɭ����

	DefineMission( 5003, "Spirit of Roland", 953)
	
	MisBeginTalk( "<t>I admire people who are kind and brave like you. I have looked into your soul, and can see that you are defintely a man of substance. You carry within you, the will of the great Roland. If you want to know more, I suggest that you ask <bSang Di> at (3287, 2501) of Spring Town.")
	MisBeginCondition(NoRecord, 953 )
	MisBeginCondition(HasRecord, 952)
	MisBeginCondition(NoMission, 953 )
	MisBeginAction(AddMission, 953 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Find Sang Di to enquire about Spirit of Roland")
	MisHelpTalk("<t>She will help you.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------��ɭ����

	DefineMission(5004,"Spirit of Roland",953,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Why is there always someone mentioning about the pirate king Roland in front of me? Its such a headache!")
	MisResultCondition(HasMission, 953)
	MisResultCondition(NoRecord, 953)
	MisResultAction(ClearMission, 953)
	MisResultAction(SetRecord, 953)

-----------------------------------------------------�������

	DefineMission( 5005, "Heal Sang Di", 954 )

	MisBeginTalk( "<t>I seemed to have fallen sick lately. I have simply no strength left in me. Will you take pity on me and help me find a <yHealer Robe>, as I can no longer move around without aching all over. I have heard that wearing it will cure me of my sickness. If not I won't be able to do anything." )
	MisBeginCondition(NoRecord, 954)
	MisBeginCondition(HasRecord,  953)
	MisBeginCondition(NoMission, 954)
	MisBeginAction(AddMission,  954)
	MisBeginAction(AddTrigger,  9541, TE_GETITEM,  0376,1 )		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	 MisNeed(MIS_NEED_DESP, "Bring 1 Healer Robe from Terra Soldier Leader")
	MisNeed(MIS_NEED_ITEM,  0376,1, 10, 1)
	
	MisResultTalk("<t>Thank you for helping an old granny like me!")
	MisHelpTalk("<t>Terra Soldier found in Ascaron at (546,  2726) has them.")-------------------+++++2
	MisResultCondition(HasMission,  954)
	MisResultCondition(NoRecord, 954)
	MisResultCondition(HasItem, 0376, 1 )
	MisResultAction(TakeItem,  0376, 1 )
	MisResultAction(ClearMission,  954)
	MisResultAction(SetRecord,  954 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,0376)	
	TriggerAction( 1, AddNextFlag,954, 10, 1 )
	RegCurTrigger( 9541 )

------------------------------------------------------------------ħ����ͷ��

	DefineMission( 5006, "Sorcerer's bone powder.", 955 )

	MisBeginTalk( "<t>Wearing this robe doesn't seem to have help me much at all. Could it have lost it's effectiveness because you took so long? You are too inefficient. Now I'll have to take the trouble to repair this. Bring me 3 pieces of <yMagical Bone> that can be found on <bDeadly Skeletal Archer> at (919, 1581). I need to grind them into powder and sprinkle it onto the robe." )
	MisBeginCondition(NoRecord,  955)
	MisBeginCondition(HasRecord,  954)
	MisBeginCondition(NoMission, 955)
	MisBeginAction(AddMission,  955)
	MisBeginAction(AddTrigger,  9551, TE_GETITEM,  1626,3 )		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	 MisNeed(MIS_NEED_DESP, "Kill Deadly Skeletal Archer and look for 3 pieces of Magical Bone")
	MisNeed(MIS_NEED_ITEM,  1626,3, 10, 3)
	
	MisResultTalk("<t>You are much faster this time!")
	MisHelpTalk("<t>Magical Bone can be found on Deadly Skeletal Archer in Ascaron at (919,  1581).")--------------------++++++3
	MisResultCondition(HasMission,  955)
	MisResultCondition(NoRecord, 955)
	MisResultCondition(HasItem, 1626, 3 )
	MisResultAction(TakeItem,  1626, 3 )
	MisResultAction(ClearMission,  955)
	MisResultAction(SetRecord,  955 )
	MisResultAction(AddExp,200000,200000)
	MisResultAction(AddMoney,700000,700000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1626)	
	TriggerAction( 1, AddNextFlag, 955, 10, 3 )
	RegCurTrigger( 9551 )
------------------------------------------------------------------------�߼�Ӫ��Ʒ

	DefineMission( 5007, "Highly Nutritious Product", 956)

	MisBeginTalk( "<t>Do I look better now? If someone can help me find 1 highly nutritious <yChimera Horn> from Chimera at (662, 2460) in Ascaron, I should be able to recover and remember some things.. Won't you be this someone...?" )
	MisBeginCondition(NoRecord,  956)
	MisBeginCondition(HasRecord,  955)
	MisBeginCondition(NoMission, 956)
	MisBeginAction(AddMission,  956)
	MisBeginAction(AddTrigger,  9561, TE_GETITEM,  4783,1 )		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Hunt Chimera and bring back 1 Chimera Horn")
	MisNeed(MIS_NEED_ITEM,  4783,1, 10, 1)
	
	MisResultTalk("<t>That's more like it, way to go!")
	MisHelpTalk("<t>No festive gift for this season unless its Chimera Horn.")
	MisResultCondition(HasMission,  956)
	MisResultCondition(NoRecord, 956)
	MisResultCondition(HasItem, 4783, 1)
	MisResultAction(TakeItem,  4783, 1 )
	MisResultAction(ClearMission,  956)
	MisResultAction(SetRecord,  956)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,4783)	
	TriggerAction( 1, AddNextFlag, 956, 10, 1 )
	RegCurTrigger( 9561 )
---------------------------------------------------------------------------�����Ĺ�ȥ
	 DefineMission(5008,"Forgotten Past",957)
	
	MisBeginTalk( "<t>I guess I should tell you the things which I have tried to forget, since it is the fortune teller who have ask you to come and find me. Everyone have forgotten some of their past at one time or another, and you are no exception. Oh, don't look at me like that. I can't give you back your memories. Its something that you have to find back yourself. The High Priest Gannon at (862, 3500) of Shaitan City should be able to give you some clues. <bCome back and find me once you have gotten results>!" )
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(NoMission, 957)
	MisBeginCondition(HasRecord,956)
	MisBeginAction(AddMission,957)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Find Shaitan City's High Priest Gannon (862, 3500) for instructions.")
	
	MisHelpTalk("<t>Gannon at (862, 3500) will have a good piece of advice for you. ")
		
	MisResultTalk("<t>Finding your memories doesn't seem to make you happy. I can see that you are still lost. Its actually very easy to solve, but you have to help me to do something before I can tell you.")
	MisResultCondition(NoRecord, 957)
	MisResultCondition(HasMission, 957)
	MisResultCondition(HasRecord, 999)---
	MisResultAction(ClearMission, 957)
	MisResultAction(SetRecord,  957 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)


------------------------------------------------------------------------��¡֮�ػ�����1��

	DefineMission(5009,"Memory Soup",958)
	
	MisBeginTalk( "<t>You want to recover your past? Your past is actually laying asleep in your brain. You need to drink the <bMemory Soup> to awaken your memories. The recipe of the Memory Soup is very strange. And what's even stranger is that only the <bMerman Prince> at (1254, 3491) knows the recipe. <bCome back to me once you have gotten the recipe>." )
	MisBeginCondition(NoRecord, 958)
	MisBeginCondition(NoMission, 958)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,1)
	MisBeginAction(AddMission,958)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Look for the  Merman Prince to obtain the recipe of the Memory Soup.")
	
	MisHelpTalk("<t>The charming Merman Prince can be found near coastal area at (1254, 3491)")
	MisResultTalk("<t>Close your eyes and drink it down.<n><t>You were born the perfect clone of God Xoebe on the Isle of Demon. Life Generator No.1 created you out of loneliness. Out of self-preservation, you were killed by the Demon clan that had brought you up. That was when your true powers awaken. Your newly awaken self force your way into inner part of the island, ignoring all attempts to stop you. Finally, you went into the Gate of Truth. There, you learnt of the truth and was at a loss. Falling into a deep sleep, you awaken 100 years later when Sorceress Lemon came. Together, the both of you went on a journey to look for treasure. 2 years later, you each went your separate ways; she continuing on her journey for treasure and you to find your dreams.<n><t>Go back and find the<bBar owner, Sang Di> at (3287, 2501) in Spring Town. May God bless you.")
	
	MisResultCondition(NoRecord, 958)
	MisResultCondition(HasRecord, 962)
	MisResultCondition(HasMission, 958)
	MisResultCondition(HasItem, 1043, 1 )--------�ػ���
	MisResultAction(TakeItem,  1043, 1 )
	MisResultAction(ClearMission, 958)
	MisResultAction(SetRecord,  958 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	
---------------------------------------------------------------------------Ѫʯ��1��

	DefineMission(5010,"Bloodstone",959)
	
	MisBeginTalk( "<t>The recipe of the Memory Soup is a family secret. It cannot be passed on to outsiders so easily. Unless you help me find what I have been looking for for a very long time, the Bloodstone. A few days ago, I received news that the Bloodstone is with <bSupermun> at (1080, 3086). <bCome and find me once you have the Bloodstone>!" )
	MisBeginCondition(NoRecord, 959)
	MisBeginCondition(NoMission, 959)
	MisBeginCondition(HasMission, 958)
	MisBeginCondition(NoRecord,958)
	MisBeginAction(AddMission,959)

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Find Supermun for Bloodstone")
	
	MisHelpTalk("<t>Supermun is the craftiest bandit of Magical Ocean")
	

	MisResultTalk("<t>Supermun is an idiot. He doesn't know what is a Gem at all, and he dares to hold a fair? This stone has a very high value. It is one of the highest grade among Jit Bloodstone...Oh forget it, its useless to tell you all these anyway.")
	MisResultCondition(NoRecord, 959)
	MisResultCondition(HasMission, 959)
	MisResultCondition(HasRecord, 960)
	MisResultCondition(HasItem, 1040, 1)
	MisResultAction(TakeItem, 1040, 1 )
	MisResultAction(ClearMission, 959)
	MisResultAction(SetRecord,  959 )

	
---------------------------------------------------------------------------���뺯��1��

	DefineMission( 5011, "Invitation Letter", 960 )
	
	MisBeginTalk( "<t>I have to show my respect to the Merman Prince, but I wasn't interested in that stone and have given it to Judis at (906, 3539). Coincidently, I have a Gem Fair coming up and would like to invite him. Help me send the Invitation Letter to him. I'll mention about this in the Invitation Letter. I'm sure he'll help you...If he is please with you." )
	MisBeginCondition(NoRecord, 960)
	MisBeginCondition(HasMission, 959)
	MisBeginCondition(NoMission,960)
	MisBeginCondition(NoRecord,959)
	MisBeginAction(AddMission, 960)
	MisBeginAction(GiveItem, 1041, 1, 4)	----------���뺯	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Send the Invitation Letter to Magical Ocean's Banker Judis.")
	
	MisHelpTalk("<t>Have not make a move?")
	MisResultCondition(AlwaysFailure)
	
-----------------------------------------------------------------------���뺯��1��

	DefineMission(5012,"Invitation Letter",960,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>How can you take back something that you have given away? Its atrocious! As if I care! But since you are not as good-looking as I am, I guess I can help you��")
	MisResultCondition(NoRecord, 960)
	MisResultCondition(HasMission, 960)
	MisResultCondition(HasItem, 1041, 1)
	MisResultAction(TakeItem, 1041, 1 )
	MisResultAction(GiveItem, 1040, 1,4)--------------Ѫʯ
	MisResultAction(ClearMission, 960 )
	MisResultAction(SetRecord,  960 )
	MisResultBagNeed(1)

	-----------------------------------------------------------------�ػ���ҩ��(1) 
	DefineMission(5014, "Memory Soup Recipe", 961 )

	MisBeginTalk( "<t>The ingredients of Memory Soup is very simple: 10 <yArabic Dark Pearl Fragments> from Midnight Water Dancer at (3289, 1746) at Deep Blue, 1 <yThick Transparent Polliwog Tail> from Great Prowling Polliwog at (900, 1308) in Magical Ocean. Its the making that requires special technique. Go gather the ingredients while I prepare. " )
	MisBeginCondition(NoRecord, 961)
	MisBeginCondition(HasRecord, 959)
	MisBeginCondition(NoMission, 961)
	MisBeginAction(AddMission, 961)
	MisBeginAction(AddTrigger, 9611, TE_GETITEM, 1234,10)		
	MisBeginAction(AddTrigger, 9612, TE_GETITEM, 1260, 1 )
	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	 MisNeed(MIS_NEED_DESP, "Look for 1 Thick Transparent Polliwog Tail and 10 Arabic Dark Pearl Fragments")
	MisNeed(MIS_NEED_ITEM, 1234,10, 10,10)
	MisNeed(MIS_NEED_ITEM, 1260, 1, 20, 1)
	
	MisResultTalk("<t>The recipe must never be revealed to others, or you shall pay for it with your life! Now go back to the High Priest and give this to him.")
	MisHelpTalk("<t>Its a piece of cake, now that you are so strong!")
	MisResultCondition(HasMission,961)
	MisResultCondition(NoRecord, 961)
	MisResultCondition(HasItem, 1234, 10 )
	MisResultCondition(HasItem, 1260, 1 )
	
	MisResultAction(TakeItem, 1234, 10 )
	MisResultAction(TakeItem, 1260, 1 )
	
	MisResultAction(ClearMission, 961)
	MisResultAction(SetRecord, 961 )
	MisResultAction(GiveItem, 1043, 1, 4)-------�ػ���
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1234)	
	TriggerAction( 1, AddNextFlag, 961, 10, 10 )
	RegCurTrigger(9611 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1260)	
	TriggerAction( 1, AddNextFlag, 961, 20, 1 )
	RegCurTrigger(9612 )
	
	
------------------------------------------------------���º�����(1) 

	DefineMission( 5015, "Cooling Black Pearl", 962 )

	MisBeginTalk( "<t>I never thought that the Merman Prince would give you the Memory Soup so easily. Oh! I almost forgot something very important. The Memory Soup is extremely hot. It can only be drunk after it has cooled down considerably. You will need to get 1 <yBlack Pearl> that can help to lower the temperature of the soup." )
	MisBeginCondition(NoRecord,  962)
	MisBeginCondition(HasRecord,  961)
	MisBeginCondition(NoMission,962)
	MisBeginAction(AddMission,  962)
	MisBeginAction(AddTrigger,  9621, TE_GETITEM,  3362,1)--------������		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Obtained 1 Black Pearl with trememdous cooling powers")
	MisNeed(MIS_NEED_ITEM,  3362,1, 10, 1)
	
	MisResultTalk("<t>The use of the Black Pearl is very important. Your sense of adventure is most respectable!")
	MisHelpTalk("<t>Seem that you can find the things that u want from Fox spirit and Fox Taoist at (3322, 2460).")-------------------++++++++4
	MisResultCondition(HasMission,  962)
	MisResultCondition(NoRecord,962)
	MisResultCondition(HasItem, 3362, 1 )
	MisResultAction(TakeItem,  3362, 1 )
	MisResultAction(ClearMission,  962)
	MisResultAction(SetRecord,  962)
	MisResultAction(AddExp,500000,500000)
	MisResultAction(AddMoney,200000,200000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3362)	
	TriggerAction( 1, AddNextFlag, 962, 10, 1 )
	RegCurTrigger( 9621 )



------------------------------------------------------------------Ů��Ļ���֮���佺�ң�2��
	DefineMission(5017,"Memory Capsule",963)
	
	MisBeginTalk( "<t>You want to recover your past? Your past is actually laying asleep in your brain. You need to drink the <bMemory Soup> to awaken your memories. The recipe of the Memory Soup is very strange. And what's even stranger is that only the <bMerman Prince> at (1254, 3491) knows the recipe. <bCome back to me once you have gotten the recipe>." )
	MisBeginCondition(NoRecord, 963)
	MisBeginCondition(NoMission, 963)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,3)----������
	MisBeginAction(AddMission,963)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Find Mysterious Granny to receive Memory Capsule.")
	
	MisHelpTalk("<t>Mysterious Granny is in Argent at (2159, 2792).")
	MisResultTalk("<t>This is it! You got it so easily. I have already prayed for you. Close your eyes and drink it down. <n><t>You were a talented sailor born of royalty. Receiving the best sea-faring education and plus the fact that you possesses divine geneology, you won a sailing competition held at Thundoria Castle when you were 10 years old. However, usage of forbidden cannon results a disqualification. All your antics, laziness, and doing things without any regards for the consequences was because of the fact that you only can live to the age of 30. However, on the Isle of Demon, the words of a wise sage awakened you: Because you do not have long to live, you should make full use of your remaining time in this world to do what you really want.  And its exactly what pushes me to go on.<n><t>Go back and find the <bBar owner, Sang Di> at (3287, 2501) in Spring Town. May God bless you.") 
	MisResultCondition(NoRecord, 963)
	MisResultCondition(HasMission, 963)
	MisResultCondition(HasRecord, 967)
	MisResultCondition(HasItem,  1050, 1 )-------���佺��
	MisResultAction(TakeItem,  1050,1 )
	MisResultAction(ClearMission, 963)
	MisResultAction(SetRecord,  963 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

--------------------------------------------------------------------��֮���꣨2��
	DefineMission(5018,"Amber Tear",964)
	
	MisBeginTalk( "<t>Young man, Memory Capsule has a very important message. Only those that are really kind and good have the right to know.<n><t>Although I'm old now, I was actually very pretty when I was young. I even had a prince interested in me. But I only have <bLanga> of Shaitan City in my heart. Come to think of it, I have not seen him for a very long time. Can you help me give this Amber Tear to him?" )
	MisBeginCondition(NoRecord, 964)
	MisBeginCondition(NoMission, 964)
	MisBeginCondition(HasMission, 963)
	MisBeginCondition(NoRecord,963)
	MisBeginAction(AddMission,964)
	MisBeginAction(GiveItem, 2303, 1, 4)---------+++++????
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)	
	MisNeed(MIS_NEED_DESP, "Help Mysterious Granny deliver the Amber Tear to Langa in Shaitan City at (852, 3549).")
	
	MisHelpTalk("<t>Why seek for old memories if you can be happier in your current state.")
	
	MisResultCondition(AlwaysFailure)
	----------------------------------------------------------------------��֮���꣨2��
	DefineMission(5019,"Amber Tear",964,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Thank you. I know how she feels too but unfortunately, things don't always go according to what the heart desires. Even if she continues to wait for me, I'm still unable to be with her. <bSend word> to her to let things be as they are.")
	MisResultCondition(NoRecord, 964)
	MisResultCondition(HasMission, 964)
	MisResultCondition(HasItem,2303, 1)-------------++++++???
	MisResultAction(TakeItem, 2303, 1 )-------------++++++????
	MisResultAction(ClearMission,964)
	MisResultAction(SetRecord,  964)
	MisResultAction(AddMoney,80000,80000)	
		
	

---------------------------------------------------------------���ƣ�����


	DefineMission( 5020, "Calcium Replenishment", 965)

	MisBeginTalk( "<t>Its ok even if he said that, some people are worth the wait. I wonder if it's because I'm feeling low, my lack of calcium seems to be getting worse, and I can't straighten my back. If you would help me get 1 <yAmethyst Dolphin Dorsal Fin> from <bAmethyst Dolphin> at (900, 2000) found at Magical Ocean, I think I would be able to help you." )--------------+++++5
	MisBeginCondition(NoRecord,  965)
	MisBeginCondition(HasRecord,  964)
	MisBeginCondition(NoMission,965)
	MisBeginAction(AddMission,  965)
	MisBeginAction(AddTrigger,  9651, TE_GETITEM,  1296,1)	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Obtain the Dorsal Fin from Amethyst Dolphin for Mysterious Granny to replenish calcium")
	MisNeed(MIS_NEED_ITEM,  1296,1, 10, 1)
	
	MisResultTalk("<t>You are such a courageous boy!")
	MisHelpTalk("<t>My back is aching and the legs are cramped. Sigh..")
	MisResultCondition(HasMission,965)
	MisResultCondition(NoRecord, 965)
	MisResultCondition(HasItem, 1296, 1 )
	MisResultAction(TakeItem,  1296, 1)
	MisResultAction(ClearMission,  965)
	MisResultAction(SetRecord,  965)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1296)	
	TriggerAction( 1, AddNextFlag,965, 10, 1 )
	RegCurTrigger( 9651 )

--------------------------------------------------����Ҷ������
	DefineMission(5021, "Revival Clover", 966 )

	MisBeginTalk( "<t>Although you have helped me before, but I do not wish for anyone to know my stuff, and only the DEAD won't reveal secrets!<n><t>Don't be afraid. You have helped me before, so I'll give you another chance. Bring me 1 <yRevival Clover>. Terra Elder at (1381, 3134) seems to have it. If you can survive, not only will I not kill you, but I'll also tell you the whereabouts of Memory Capsule."  )
	MisBeginCondition(NoRecord,  966 )
	MisBeginCondition(HasRecord,  965)
	MisBeginCondition(NoMission, 966 )
	MisBeginAction(AddMission,  966 )
	MisBeginAction(AddTrigger,  9661, TE_GETITEM,  3143,1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

        MisNeed(MIS_NEED_DESP, "Bring back Revival Clover to save your own life!")
	MisNeed(MIS_NEED_ITEM,  3143,1, 10, 1)
	
	MisResultTalk("<t>Seems like its not your time to die!")
	MisHelpTalk("<t>Go get 1 Revival Clover from Terra Elder at (1381, 3134) in Magical Ocean.")-----------------------++++++++6
	MisResultCondition(HasMission,  966 )
	MisResultCondition(NoRecord, 966 )
	MisResultCondition(HasItem, 3143, 1 )
	MisResultAction(TakeItem,  3143,1 )
	MisResultAction(ClearMission,  966 )
	MisResultAction(SetRecord, 966 )
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3143)	
	TriggerAction( 1, AddNextFlag, 966 , 10, 1 )
	RegCurTrigger( 9661 )

--------------------------------------------------------------------------------------������(2)
	DefineMission( 5022, "Side effect", 967 )

	MisBeginTalk( "<t>Since you seize the opportunity, I'll tell you the truth. I have the Memory Capsule with me all along. Eating it will let you remember the Past, but the side effect is that you will forget the present. To prevent this from happening, I suggest that you find 1 <yMurky Polliwog Blood> from <bGreat Prowling Polliwog> at (900, 1308) at Magical Ocean to soak in." )------------------++++++++7
	MisBeginCondition(NoRecord,  967)
	MisBeginCondition(HasRecord,  966 )
	MisBeginCondition(NoMission, 967)
	MisBeginAction(AddMission,  967)
	MisBeginAction(AddTrigger,  9671, TE_GETITEM,  1351,1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Use Murky Polliwog Blood to remove the side effect of Memory Capsule")
	MisNeed(MIS_NEED_ITEM,  1351,1, 10, 1)
	
	MisResultTalk("<t>Its done. Bring it back to the High Priest. I like to keep a low profile, so don't tell anyone about me!")
	MisHelpTalk("<t>Look for 1 bottle of Murky Polliwog Blood")
	MisResultCondition(HasMission, 967)
	MisResultCondition(NoRecord, 967)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultAction(TakeItem,  1351,1 )
	MisResultAction(ClearMission, 967)
	MisResultAction(SetRecord,  967)
	MisResultAction(GiveItem, 1050, 1, 4)-------���佺��
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 967, 10, 1 )
	RegCurTrigger( 9671 )


		
	
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------��Ѫ��֮��������(3) 
	DefineMission(5024,"Beautiful Past",968)
	
	MisBeginTalk( "<t>You want to find your forgotten Past? Your Past is sleeping dormant within your brain. To awaken your memories, you need to start from love. Do you still remember <bMinelli> at (1244, 3186)? She has the memories that you want. <bCome back to me when you find the thing that can restore your memories>." )
	MisBeginCondition(NoRecord, 968)
	MisBeginCondition(NoMission, 968)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,2)
	MisBeginAction(AddMission,968)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Find Minelli to recover sweet memories.")
	
	MisHelpTalk("<t>Minelli can be found at Magical Ocean")
	MisResultTalk("<t>Hope Minelli has recovered from her heartache. Drink this half of it and close your eyes to re-cap.<n><t>You were born from human and demon. Your father was a survivor of the demon tribe, while your mother was a girl living in a fishing village. When you were 12, your father's identity was discovered and was burnt to death by the villagers. Your mother went to be with him shortly after. With your father's letter asking you not to hate humans, you went on your journey. However, your mixed blood heritage was despised and no ships would hire you. All you had was your passion for the sea and your adventurous spirit. After your father's death, you swore to love Minelli forever. You forgot such an important thing, no wonder she is so heart-broken.<n><t>Go back and look for <bBar owner, Sang Di> at (3287, 2501) in Spring Town. May God bless you.") 
	MisResultCondition(NoRecord, 968)
	MisResultCondition(HasMission, 968)
	MisResultCondition(HasRecord, 972)
	MisResultCondition(HasItem, 1042, 1 )
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 968)
	MisResultAction(SetRecord,  968 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
---------------------------------------------------�չ�������(3)
	DefineMission(5025, "Used Candle", 969 )

	MisBeginTalk( "<t>You are here to enquire about your Past? I'm sorry, my memory has deminished along with the <yUsed Candle>. If you are capable of retriveing the candle from the <bDark Mud Monster> from Ghana, there could be a way." )------------------++++++8
	MisBeginCondition(NoRecord,  969)
	MisBeginCondition(HasMission, 968)
	MisBeginCondition(NoRecord,  968)
	MisBeginCondition(NoMission, 969)
	MisBeginAction(AddMission,  969)
	MisBeginAction(AddTrigger,  9691, TE_GETITEM,  4823,1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Obtain Used Candle from Dark Mud Monster for Minelli")
	MisNeed(MIS_NEED_ITEM,  4823,1, 10, 1)
	
	MisResultTalk("<t>Looks like you have got some skills!")
	MisHelpTalk("<t>Look for 1 Used Candle")
	MisResultCondition(HasMission, 969)
	MisResultCondition(NoRecord, 969)
	MisResultCondition(HasItem, 4823, 1 )
	MisResultAction(TakeItem,  4823,1)
	MisResultAction(ClearMission,  969)
	MisResultAction(SetRecord,  969)
	MisResultAction(AddExp,80000,80000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4823)	
	TriggerAction( 1, AddNextFlag, 969, 10, 1 )
	RegCurTrigger( 9691 )

---------------------------------------------------------��ԭ����(3)
	DefineMission(5026,"Restore Past",970)
	
	MisBeginTalk( "<t>Unfortunately, the past is gone. Even though the candle has been found, the enchantations on it is gone. If you really want to know, ask for a <yRestoration Potion> from <bDitto>. <bCome back to me when you have gotten the Restoration Potion>" )
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 970)
	MisBeginCondition(HasRecord, 969)
	MisBeginAction(AddMission,970)
	MisBeginAction(AddTrigger,  9701, TE_GETITEM,  1042,1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Obtain Restoration Potion from Ditto")
	
	MisHelpTalk("<t>Of course, Ditto is in Argent City at (2250, 2770).")
	MisResultTalk("<t>I poured half on the candle, chanting: May love be everlasting.<n><t>Do you have any impression? I was once the person you love...Its all in the past now. I don't wish to say anymore. Bring the other half back to <bGannon>.")
	MisResultCondition(HasMission,970)
	MisResultCondition(NoRecord, 970)
	MisResultCondition(HasRecord, 971)
	MisResultCondition(HasItem,1042, 1 )----------��ԭ��
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 970)
	MisResultAction(SetRecord, 970)
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1042)	
	TriggerAction( 1, AddNextFlag, 970, 10, 1 )
	RegCurTrigger(9701 )

	--------------------------------------------------��ԭ��ԭ��(3)

	DefineMission( 5027, "Ingredient of Restoration Potion", 971 )

	MisBeginTalk( "<t>I do not have anymore Restoration Potion. Furthermore, I have been too busy to gather the necessary herbs...Unless you can get 3 <yIncitant> from Meadow Deer at (1503, 2698) in Ascaron, 3 <yEnergetic Tea> from Undead Warrior at (511, 1721) in Ascaron and 1<yMurky Polliwog Blood> from Great Prowling Polliwog at (900, 1308) at Magical Ocean as ingredients." )-------------++++++9
	MisBeginCondition(NoRecord, 971 )
	MisBeginCondition(HasMission, 970)
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 971)
	MisBeginAction(AddMission, 971 )
	MisBeginAction(AddTrigger, 9711, TE_GETITEM, 1351,1)		
	MisBeginAction(AddTrigger, 9712, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9713, TE_GETITEM, 3147, 3 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Find 1 Murky Polliwog Blood, 3 Incitant and 3 Energetic Tea for Ditto")
	MisNeed(MIS_NEED_ITEM, 1351,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM,  3147,3, 30, 3)

	MisResultTalk("<t>You got together everything so fast. Looks like you really need it in a hurry. I'll work overtime to make the Restoration Potion for you. This will only take a while!")
	MisHelpTalk("<t>Overtime got no overtime pay")
	MisResultCondition(HasMission, 971)
	MisResultCondition(NoRecord, 971)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,  3147, 3)
	
	MisResultAction(TakeItem, 1351, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,  3147, 3 )
	
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultAction(ClearMission, 971)
	MisResultAction(SetRecord, 971 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 971, 10, 1 )
	RegCurTrigger(9711 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 971, 20, 3 )
	RegCurTrigger(9712 )
	InitTrigger()
	TriggerCondition( 1, IsItem,  3147)	
	TriggerAction( 1, AddNextFlag, 971, 30, 3 )
	RegCurTrigger(9713 )
	--------------------------------------------------------------�ͷŰ���(3)
	DefineMission( 5028, "Let go off love", 972)
	
	MisBeginTalk( "<t><bMinelli> must be very sad. You are really very cruel. If your happiness is based on her pain, then I won't help you. If theres really no helping it, it will be best to let her completely forget it...Here's a Lotus Clover." )
	MisBeginCondition(NoRecord, 972)
	MisBeginCondition(HasRecord, 971)
	MisBeginCondition(NoMission, 972)
	MisBeginCondition(HasItem, 1042, 1 )
	MisBeginAction(AddMission, 972)
	MisBeginAction(GiveItem, 1054, 1, 4)		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Give the Lotus Clover to Minelli")
	
	MisHelpTalk("<t>Minelli is in Magical Ocean at (1244, 3186)")
	MisResultCondition(AlwaysFailure)
------------------------------------------------------------------�ͷŰ���(3)
	DefineMission(5029, "Let go off love", 972 ,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>By releasing me to save you, I agreed.") 
	MisResultCondition(NoRecord, 972)
	MisResultCondition(HasMission, 972)
	MisResultCondition(HasItem, 1054, 1 )
	MisResultAction(TakeItem, 1054, 1 )
	MisResultAction(ClearMission, 972)
	MisResultAction(SetRecord,  972)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------����̫֮��ʯ(4)

	DefineMission(5031,"Brimstone",973)
	
	MisBeginTalk( "<t>You want to recover your Past? The Past is in fact laying dormant in your brain. You need to find <y2 Brimstones>. Putting the 2 Brimstone together can create a human magnetic field, stimulating the brain to awaken the memories that it hold. I suggest that you ask <bLanga> of Shaitan City for the whereabouts of the Brimstone. Its believed that he has seen it before. <bCome and find me when you have gotten the Brimstone>." )----------------++++++10
	MisBeginCondition(NoRecord, 973)
	MisBeginCondition(NoMission, 973)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,4)
	MisBeginAction(AddMission,973)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Look for Langa in Shaitan City and inquire about the Brimstone.")
	
	MisHelpTalk("<t>Langa is at (852, 3549)")
	MisResultTalk("<t>You are the offspring of a sea king. You have the looks of a small child and you will never grow old nor grow up. Because you possess special genes, you are able to commute with nature, giving you the ability to speak to animals and even monsters. You have the power to heal and the ability to create tools unknown to anyone else. But because of such genes, you became highly sought after by all human race. When you were 12, you finally couldn't stand being chase around all day and created a tsunami, destroying the fleet that was chasing you. Since then, nobody dares to try and capture you anymore and you were listed as a wanted criminal. Lastly you joined Phyllis Pirate Crew and went on sea adventures together.<n><t>Go back and look for <bBar owner, Sang Di> at (3287, 2501) at Spring Town. May God bless you.") 
	MisResultCondition(NoRecord, 973)
	MisResultCondition(HasMission, 973)
	MisResultCondition(HasRecord,  977)
	MisResultCondition(HasItem, 1045, 1)----------��ʯ
	MisResultCondition(HasItem, 1048, 1)-----------��ʯ
	MisResultAction(TakeItem,  1045, 1 )
	MisResultAction(TakeItem,  1048, 1 )
	MisResultAction(ClearMission, 973)
	MisResultAction(SetRecord,  973 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
------------------------------------------------------���Ųر�ͼ
	DefineMission(5032,"Piety Treasure Map",974)
	
	MisBeginTalk( "<t>You are here to ask me about Brimstone? That was a long time ago. It was kept a secret because of the catastrophe that it may cause. Therefore it will not be easy for you to learn the whereabouts of the Brimstone.. Unless you can swiftly deliver this <yTreasure Map> to <bMerman Prince> at (1254, 3491) of Magical Ocean." )
	MisBeginCondition(NoRecord, 974)
	MisBeginCondition(NoMission,974)
	MisBeginCondition(HasMission, 973)
	MisBeginCondition(NoRecord,973)
	MisBeginAction(GiveItem, 1053, 1, 4)------���Ųر�ͼ
	MisBeginAction(AddMission,974)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	--MisBeginAction(AddTrigger, 9741, TE_GETITEM, 1044,1)
	MisBeginBagNeed(1)	
		
	MisNeed(MIS_NEED_DESP, "Give the Treasure Map to the Merman Prince")
	
	MisHelpTalk("<t>It is rumoured that the Prince of Merman is once a frog!")
	
	MisResultCondition(AlwaysFailure)

	------------------------------------------���Ųر�ͼ

	DefineMission(5033,"Piety Treasure Map",974,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Actually, what he have given you is just a normal piece of marked paper, not a treasure map. You never try to open it, which means that you are a very trustworthy person. I'll reveal the secret to you: Brimstone consist of <yMoonstone> and <ySunstone>. Theres only 3 person who knows the secret of the Brimstone in the whole world. I have a piece of <yMoonstone>. Here take it.")
	MisResultCondition(NoRecord, 974)
	MisResultCondition(HasMission,974)
	MisResultCondition(HasItem,1053, 1)
	MisResultAction(TakeItem, 1053, 1 )
	MisResultAction(ClearMission, 974)
	MisResultAction(SetRecord, 974)
	MisResultAction(GiveItem, 1045, 1, 4)--------��ʯ
	MisResultBagNeed(1)
	--------------------------------------------------��ʯ������
	DefineMission(5034,"Whereabouts of Sunstone",975)
	
	MisBeginTalk( "<t>Shouldn't you be on your way? Alright, since you are so determined, I'll reveal a clue to you.. You can enquire about the Sunstone from <bDitto>. Here, take this <yRecommendation Letter> as proof." )
	MisBeginCondition(NoRecord, 975)
	MisBeginCondition(NoMission, 975)
	MisBeginCondition(HasRecord, 974)
	MisBeginAction(GiveItem, 1046, 1, 4)-------�Ƽ���
	MisBeginAction(AddMission,975)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Find out more from Physician Ditto.")
	
	MisHelpTalk("<t>Look for Ditto in Argent City at (2250, 2770)��")
	MisResultCondition(AlwaysFailure)

--------------------------------------------------��ʯ������
	DefineMission(5035,"Whereabouts of Sunstone",975,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Only a few people in the world knows the secret of the Brimstone. The two of them don't trust anyone easily. Congratulations on passing their test.")
	MisResultCondition(NoRecord, 975)
	MisResultCondition(HasMission,975)
	MisResultCondition(HasItem,1046, 1)
	MisResultAction(TakeItem, 1046, 1 )
	MisResultAction(ClearMission, 975 )
	MisResultAction(SetRecord, 975)
	----------------------------------------------����ˮ

	DefineMission( 5036, "Eyedrop", 976 )

	MisBeginTalk( "<t>Since they are willing to believe in you, I won't be difficult with you anymore. <rIts hidden in Argent City, in the secret room of Salvier>. However, the Sunstone is a stone which gives off an extremely bright light and its very harmful to the naked eye. I'll need to make you a protection liquid called Eyedrop. You'll need to bring me 3 <yEnergetic Tea> from Undead Warrior at (511, 1721) in Ascaron, 1 <yStrong Dorsal Fin> from Deep Blue's fierce Crystal Dolphin at (2140, 3787) and 10 vials of <yPure Water> from Magical Ocean's Sandy Tortoise at (1197, 3270)." )
	MisBeginCondition(NoRecord, 976 )
	MisBeginCondition(HasRecord, 975)
	MisBeginCondition(NoMission, 976)
	MisBeginAction(AddMission, 976 )
	MisBeginAction(AddTrigger, 9761, TE_GETITEM, 1362,1)		
	MisBeginAction(AddTrigger, 9762, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9763, TE_GETITEM, 1649, 10 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for 3 cups of Energetic Tea, 1 Strong Dorsal Fin and 10 vials of Pure Water to make Eyedrop")
	MisNeed(MIS_NEED_ITEM, 1362,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1649,10, 30, 10)

	MisResultTalk("<t>The potion is done. You can now go to Argent City and find <rSecretary Salvier> for the Sunstone. Let him help you apply the potion.")
	MisHelpTalk("<t>Please find the ingredients of Eyedrop. In return, I shall give you a ticket to Argent City and look for Salvier to seek the Sunstone.")
	MisResultCondition(HasMission, 976 )
	MisResultCondition(NoRecord, 976)
	MisResultCondition(HasItem, 1362, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,1649, 10)
	
	MisResultAction(TakeItem, 1362, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,1649, 10 )
	
	MisResultAction(GiveItem, 1047, 1, 4)------------- ����ˮ
	MisResultAction(ClearMission, 976 )
	MisResultAction(SetRecord, 976  )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1362)	
	TriggerAction( 1, AddNextFlag, 976, 10, 1 )
	RegCurTrigger(9761 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 976 , 20, 3 )
	RegCurTrigger(9762 )
	InitTrigger()
	TriggerCondition( 1, IsItem,1649)	
	TriggerAction( 1, AddNextFlag, 976 , 30, 10 )
	RegCurTrigger(9763 )

--------------------------------------------------------------------------����֮��
	DefineMission(5037, "Dust of the Century", 977)

	MisBeginTalk( "<t>Its been many years since someone came looking for the Sunstone. It is covered in Dust of the Century, a special chemical substance, rendering it useless. I'll need a <yShroud> that can be found on <bHell Mummy B at Abaddon 2> to remove the chemical content." )
	MisBeginCondition(NoRecord,  977)
	MisBeginCondition(HasRecord,  976)
	MisBeginCondition(NoMission, 977)
	MisBeginCondition(HasItem, 1047, 1 )
	MisBeginAction(TakeItem, 1047, 1 )
	MisBeginAction(AddMission,  977)
	MisBeginAction(AddTrigger,  9771, TE_GETITEM,  4782,1 )		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for the Shroud on Hell Mummy B at Abaddon 2")
	MisNeed(MIS_NEED_ITEM,  4782,1, 10, 1)
	
	MisResultTalk("<t>The Sunstone look so beautiful after it has been polished. I really can't bear to give it to you. I shouldn't have agreed to giving it to you. Here, take it to <bGannon>.")
	MisHelpTalk("<t>You can find it on Hell Mummy B in Abaddon 2.")
	MisResultCondition(HasMission,  977)
	MisResultCondition(HasItem, 4782, 1)
	MisResultAction(TakeItem,  4782, 1 )
	MisResultAction(GiveItem, 1048, 1, 4)------------- ��ʯ
	MisResultAction(ClearMission,  977)
	MisResultAction(SetRecord,  977 )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,4782)	
	TriggerAction( 1, AddNextFlag, 977, 10, 1 )
	RegCurTrigger( 9771 )


	--------------------------------------------------ħ��

	DefineMission( 5043, "Magical Curse", 978)

	MisBeginTalk( "<t>I have a useless brother who came under an unknown curse.Everything he does is the opposite of the normal person. Using his legs to eat and walking with his hands. I heard that a close aide of <bMas> at (1346, 451) in Icicle has suffered the same curse too. Can you help me get the remedy from them? <bCome find me when you have gotten the remedy>" )
	MisBeginCondition(NoRecord,  978)
	MisBeginCondition(HasRecord, 957)
	MisBeginCondition(NoMission, 978)
	MisBeginAction(AddMission, 978)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisNeed(MIS_NEED_DESP, "Talk to Mas")

	MisResultTalk("<t>Ah...Great! Now my brother can be cured. Thank you!")
	MisHelpTalk("<t>Not done yet?")
	MisResultCondition(HasMission, 978)
	MisResultCondition(NoRecord,  978)
	MisResultCondition(HasItem, 1052, 1 )--------ʥ�黤��
	MisResultAction(TakeItem, 1052, 1 )
	MisResultAction(ClearMission, 978)
	MisResultAction(SetRecord, 978 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)	
	

-------------------------------------------------������ì
	DefineMission( 5045, "Tribal Long Spear", 979 )

	MisBeginTalk( "<t>I rememeber a close aide priest of mine was afflicted with the curse. Instead of praying, he started to hurl abuse at God. After the curse was broken, he was so ashamed that he switched faith. Haha what a joke... The remedy for the curse is very strange, and I promise Kentaro that I would not reveal his ability to cure the curse...<n><t>Oh! I think I just did...<n><t>I need to discuss this with Kentaro for a while. In the meantime, help me find 1 <yPointed Tribal Long Spear> from Mad Tribal Witchdoctor who is hiding in Lone Tower 1." )
	MisBeginCondition(NoRecord, 979 )
	MisBeginCondition(HasMission, 978)
	MisBeginCondition(NoRecord, 978 )
	MisBeginCondition(NoMission, 979 )
	MisBeginAction(AddMission, 979)

	MisBeginAction(AddTrigger, 9791, TE_GETITEM, 4739, 1 )		--��ì
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "Obtain Pointed Tribal Long Spear from Mad Tribal Witchdoctor")
	MisNeed(MIS_NEED_ITEM, 4739,1, 10, 1)
	
	MisResultTalk("<t>Kentaro scolded me severely, with total disregard to the honor of the clan.")
	MisHelpTalk("<t>Collect 1 Pointed Tribal Long Spear of a Mad Tribal Witchdoctor.")
	MisResultCondition(HasMission, 979)
	MisResultCondition(NoRecord, 979 )
	MisResultCondition(HasItem, 4739, 1 )
	MisResultAction(TakeItem, 4739, 1 )

	MisResultAction(ClearMission, 979)
	MisResultAction(SetRecord, 979)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 979, 10, 1)
	RegCurTrigger( 9791 )
----------------------------------------------------�ַ��ֲ��������ʬ

	DefineMission(5046, "Kill Mummy", 980 )

	MisBeginTalk( "<t>Kentaro needs you to kill 1 <yHorrific Cursed Corpse>. Come and find me when you have succeeded.")
	MisBeginCondition(NoRecord,   980)
	MisBeginCondition(HasRecord,  979)
	MisBeginCondition(NoMission,  980)
	MisBeginAction(AddMission,   980)
	MisBeginAction(AddTrigger,   9801, TE_KILL, 508,1 )		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_KILL,  508,1, 10, 1)
	
	MisResultTalk("<t>Welcome back! Brave warrior!")
	MisHelpTalk("<t>Horrific Cursed Corpses are found near Ascaron region at (360, 1340).")----------------+++++11
	MisResultCondition(HasMission,  980)
	MisResultCondition(HasFlag, 980, 10 )
	MisResultAction(ClearMission,   980)
	MisResultAction(SetRecord,   980 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster,508)	
	TriggerAction( 1, AddNextFlag,  980, 10, 1 )
	RegCurTrigger(  9801 )

----------------------------------------------------�������

	DefineMission(5047,"Mask of Zorro",981)
	
	MisBeginTalk( "<t><bKentaro> ask for you to go and find him at (1894, 2798) when you have killed the Horrific Cursed Corpse. Here is a Mask of Zorro to prove that you have successfully completed the task. This item will be very useful in the future." )
	MisBeginCondition(NoRecord, 981)
	MisBeginCondition(NoMission, 981)
	MisBeginCondition(HasRecord, 980)
	MisBeginAction(GiveItem, 1025, 1, 4)----------�������
	MisBeginAction(AddMission,981)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Look for Kentaro.")
	
	MisHelpTalk("<t>Kentaro is at Ascaron")-----------------------++++++12
	MisResultCondition(AlwaysFailure)
	------------------------------------------------�������
	DefineMission(5048,"Mask of Zorro",981,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Our meeting was an accident brought by an idiot...I hope you won't disappoint me.")
	MisResultCondition(NoRecord, 981)
	MisResultCondition(HasMission,981)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission, 981 )
	MisResultAction(SetRecord, 981 )
-----------------------------------------------------�ռ�����
	DefineMission( 5049, "Final Password", 982 )

	MisBeginTalk( "<t>After Zorro died, the mask was also lost. Legend has it that you can gain special powers if you know how to use it. Now a bunch of evil pirates are also looking for the mask. For the safety and peace of the sea, we must find the mask first. First we need to find a secret code in order to proceed with the next step. It is said that the code is written on a <yArista>." )
	MisBeginCondition(NoRecord, 982  )
	MisBeginCondition(HasRecord,981)
	MisBeginCondition(NoMission, 982  )
	MisBeginAction(AddMission, 982 )
	MisBeginAction(AddTrigger, 9821, TE_GETITEM, 4261, 1 )		--ˮâ
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Obtained Cursed Water Fairy's Arista.")
	MisNeed(MIS_NEED_ITEM,4261,1, 10, 1)
	
	MisResultTalk("<t>You are the pride of the pirates!")
	MisHelpTalk("<t>It on the Cursed Water Fairy at (486, 327) in Underwater Tunnel.")
	MisResultCondition(HasMission, 982 )
	MisResultCondition(NoRecord,982 )
	MisResultCondition(HasItem, 4261,1 )
	MisResultAction(TakeItem, 4261,1 )
	
	MisResultAction(ClearMission, 982 )
	MisResultAction(SetRecord, 982 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261)	
	TriggerAction( 1, AddNextFlag,  982 , 10,1)
	RegCurTrigger( 9821 )
-------------------------------------------------����֮ʯ

	DefineMission( 5050, "Stone of Destiny", 983 )

	MisBeginTalk( "<t>Words appeared on the mask: With Beastie Borestone, comes my destiny. What is the meaning of those words? Lets try and find <yBeastie Borestone> first." )
	MisBeginCondition(NoRecord, 983)
	MisBeginCondition(HasRecord,  982 )
	MisBeginCondition(NoMission, 983 )
	MisBeginAction(AddMission, 983)
	MisBeginAction(AddTrigger, 9831, TE_GETITEM, 2487, 1 )		--�޵�ʯ
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for the Beastie Borestone to understand the meaning of the mask")
	MisNeed(MIS_NEED_ITEM,2487,1, 10, 1)
	
	MisResultTalk("<t>You smell of death from your trip to Abaddon!")
	MisHelpTalk("<t>You can find it on Hell Mummy A in Abaddon 2.")
	MisResultCondition(HasMission, 983)
	MisResultCondition(NoRecord, 983)
	MisResultCondition(HasItem, 2487,1 )
	MisResultAction(TakeItem, 2487,1 )
	MisResultAction(ClearMission,983)
	MisResultAction(SetRecord, 983)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2487)	
	TriggerAction( 1, AddNextFlag,  983, 10,1)
	RegCurTrigger(  9831 )

----------------------------------------------------------�������

	DefineMission( 5051, "Destroy the mask", 984 )

	MisBeginTalk( "<t>This mask has fallen into the hands of a dark magician before, and now the mask has been cursed...To destroy! Whoever wears this mask will have the ambition and power to destroy the world. Its too dangerous! we must destroy the mask. It is said that <yBroken Angel Halo> from <bCorrupted Guardian Angel> at (335, 2121) has the ability to destroy evil." )
	MisBeginCondition(NoRecord,  984)
	MisBeginCondition(HasRecord,  983)
	MisBeginCondition(NoMission,  984 )
	MisBeginAction(AddMission,  984)
	MisBeginAction(AddTrigger,  9841, TE_GETITEM,4738, 1 )		--�������ʹ�⻷
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Obtain Broken Angel Halo from Corrupted Guardian Angel")
	MisNeed(MIS_NEED_ITEM,4738,1, 10, 1)
	
	MisResultTalk("<t>I thought I could get the power of the mystcial mask. In the end, it was just an empty dream.")
	MisHelpTalk("<t>Corrupted Guardian Angel is in Ascaron at (335, 2121).")
	MisResultCondition(HasMission, 984)
	MisResultCondition(NoRecord,  984)
	MisResultCondition(HasItem, 4738,1 )
	MisResultAction(TakeItem, 4738,1 )
	
	MisResultAction(ClearMission,  984)
	MisResultAction(SetRecord,  984)
	MisResultAction(AddMoney,300000,300000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4738)	
	TriggerAction( 1, AddNextFlag,   984, 10,1)
	RegCurTrigger(   9841 )

-------------------------------------------------------ħ���ڴ�
	DefineMission( 5052, "Enchanted Pouch", 985 )

	MisBeginTalk( "<t>Although the evil has been removed, the Mask of Zorro is still too stained with evil to be trusted. Its dark powers must not be allowed to awaken. The only way is to use a <yEnchanted Pouch> on it. General William at (2277, 2831) will help. I have already sent a letter to him. Bring the mask to him." )
	MisBeginCondition(NoRecord,   985)
	MisBeginCondition(HasRecord, 984)
	MisBeginCondition(NoMission,  985)
	MisBeginAction(AddMission,  985)
	MisBeginAction(GiveItem, 1025, 1, 4)----------�������
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "Look for General William in Argent City to safekeep the Mask of Zorro")----------------++++13
	MisHelpTalk("<t>Addiction, Weary, Greed, Misery...Making a joke of our life. I need to do some self reflection.")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------ħ���ڴ�
	DefineMission( 5053, "Enchanted Pouch", 985, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Looks like you are not greedy enough to want to possess the mask. Good for you! This <ySacred Amulet> is what Kentaro wants me to give to you to cure the curse. Bring it to <bSang Di> at (3287, 2501) at Spring Town to fulfil your quest.")
	MisResultCondition(NoRecord,  985)
	MisResultCondition(HasMission,  985)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission,  985)
	MisResultAction(SetRecord,  985)
	MisResultAction(GiveItem, 1052, 1,4)
	MisResultAction(AddMoney,80000,80000)
	MisResultBagNeed(1)
	
------------------------------------------------------����ϵĽ��

	DefineMission( 5054, "Gold powder on the Sacred Amulet", 986 )

	MisBeginTalk( "<t>The gold markings on the sacred Amulet has diminished! Maybe its because it hasn't been used for a very long time? I need 10 <yGold Coins> to ground into powder for it to restore its power. Do you mind helping me? Its ok if you mind...but I'll also forget the answer that you sought." )
	MisBeginCondition(NoRecord, 986)
	MisBeginCondition(HasRecord, 978)
	MisBeginCondition(NoMission,986 )
	MisBeginAction(AddMission, 986)
	MisBeginAction(AddTrigger, 9861, TE_GETITEM, 2438, 10 )		--���
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for the Gold Coin found on Skeletar Pirate Ship for Sang Di")
	MisNeed(MIS_NEED_ITEM,2438,10, 10, 10)
	
	MisResultTalk("<t>You really are a person that can be relied on!")
	MisHelpTalk("<t>Gold Coin can be found on Pirate Skeletal Ship found in the region of Treasure Gulf.")
	MisResultCondition(HasMission, 986)
	MisResultCondition(NoRecord,986)
	MisResultCondition(HasItem,2438,10 )
	MisResultAction(TakeItem, 2438,10 )
	MisResultAction(ClearMission, 986)
	MisResultAction(SetRecord,986)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2438)	
	TriggerAction( 1, AddNextFlag,  986, 10,10)
	RegCurTrigger( 9861 )
-------------------------------------------------------��ٵ�ָ��
	DefineMission(5055,"Sang Di's guidance",987)
	
	MisBeginTalk( "<t>The Truth is for you to sought yourself. I can tell you an important news: Sought <bthe one who can show you the road to your Class>." )
	MisBeginCondition(NoRecord, 987)
	MisBeginCondition(NoMission,987)
	MisBeginCondition(HasRecord,986)
	MisBeginAction(AddMission,987)	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "Talk to someone who can tell you about the various classes.")
	
	MisHelpTalk("<t>Why are you still here? Hurry!")
	MisResultCondition(AlwaysFailure)
-----------------------------------------------------��ٵ�ָ�㣨���أ�
	DefineMission(5056, "Sang Di's guidance", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Sang Di is always giving me trouble!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

-----------------------------------------------------��ٵ�ָ�㣨��ŷ��
	DefineMission(5057, "Sang Di's guidance", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Sang Di is always giving me trouble!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------��ٵ�ָ�㣨Сɽ����
	DefineMission(5058, "Sang Di's guidance", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Sang Di is always giving me trouble!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------��ٵ�ָ��(�ʵ�ά��)
	DefineMission(5059, "Sang Di's guidance", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Sang Di is always giving me trouble!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)


-----------------------------------------------------ְҵ�����˵Ľ��飨if��ʿ��
	DefineMission( 5060, "Peter's suggestion",988 )

	MisBeginTalk( "<t>Happiness always gets taken over by loneliness. Even at this age of mankind, there are times when we don't know what to do.<n><t>At times like this, I will go for some training. Why don't you give it a try?<n><t>Kill 1 Frenzied Lizardman at Lone Tower 1." )
	MisBeginCondition(NoRecord, 988)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 988 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 988 )
	MisBeginAction(AddTrigger, 9881, TE_KILL, 524, 1 )		--��ŭ��������
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_KILL,524,1, 10, 1)
	
	MisResultTalk("<t>You really are outstanding. Don't you feel stronger after your training? Congratulations!")
	MisHelpTalk("<t>These Lizardman are very fierce. You must be extremely careful.")
	MisResultCondition(HasMission, 988 )
	MisResultCondition(HasFlag, 988, 10 )
	MisResultAction(ClearMission, 988 )
	MisResultAction(SetRecord, 988 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 524)	
	TriggerAction( 1, AddNextFlag,  988 , 10,1)
	RegCurTrigger(  9881 )

-----------------------------------------------------��ŷ�Ľ��飨if���ˣ�
	DefineMission( 5061, "Ray's suggestion", 989 )

	MisBeginTalk( "<t>Laughter always gets covered over by thoughts. Even if you have all the riches in the world, there will be times when you don't know what to do. At times like this, I'll go on a journey. Why don't you give it a try?<n><t>Collect 1 <yRoyal Bodyguard Emblem> from Palace Guard at (435, 1690) in Ascaron and 1 <yNimble Heart of Nature> from Lone Tower 1 Nimble Forest Hunter." )
	MisBeginCondition(NoRecord, 989)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 989 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 989 )
	MisBeginAction(AddTrigger, 9891, TE_GETITEM, 4789, 1 )		
	MisBeginAction(AddTrigger, 9892, TE_GETITEM, 4741, 1 )	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Collect 1 Royal Bodyguard Emblem and 1 Nimble Heart of Nature")
	MisNeed(MIS_NEED_ITEM, 4789,1, 10, 1)
	MisNeed(MIS_NEED_ITEM,4741,1, 20, 1)
	
	MisResultTalk("<t>You are an outstanding warrior. Don't you feel better after your journey?")
	MisHelpTalk("<t>You need some polishing on your thinking .")
	MisResultCondition(HasMission,989 )
	MisResultCondition(HasItem, 4789,1 )
	MisResultCondition(HasItem,4741,1 )
	MisResultAction(TakeItem,  4789,1 )
	MisResultAction(TakeItem, 4741,1 )
	MisResultAction(ClearMission, 989 )
	MisResultAction(SetRecord, 989 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster,  4789)	
	TriggerAction( 1, AddNextFlag,  989 , 10,1)
	RegCurTrigger(  9891 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,4741)	
	TriggerAction( 1, AddNextFlag,  989 , 20,1)
	RegCurTrigger(  9892 )

---------------------------------------------------------------Сɽ���Ľ��飨ifð���ߣ�
	DefineMission( 5062, "Daniel's Suggestion", 990 )

	MisBeginTalk( "<t>Happiness always gets blown away. Even if you have experienced a lot in life, there are still times when you don't know what to do. At times like this, I'll go on a sea voyage. Why don't you give it a try? <n><t>Go on a journey to Salva Haven at (194, 1718) in Deep Blue. Find and talk to Harbor Operator - Gregory." )
	MisBeginCondition(NoRecord, 990)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 990 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 990 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>Go to Deep Blue Archipelago's Salva Haven��194, 1718��for a journey. Talk to Harbor Operator Gregory.")
	MisNeed(MIS_NEED_DESP, "Talk to Harbor Operator Gregory")

	MisResultCondition(AlwaysFailure)
---------------------------------------------------------------ְҵ�����˵Ľ���
	DefineMission( 5063, "Daniel's Suggestion", 990,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>You are a talented adventurer. Life is a long journey akin to the voyage you have to endure. Hope that this journey will be meaningful to your life.")
	MisHelpTalk("<t>Being a Voyager is for the fearless.")
	MisResultCondition(NoRecord, 990)
	MisResultCondition(HasMission,990)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission, 990 )
	MisResultAction(SetRecord, 990 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	-------------------------------------------------------�ʵ�ά���Ľ��飨ifҩʦ��
	DefineMission( 5064, "Gannon's Suggestion", 991 )

	MisBeginTalk( "<t>Hope is always easily crushed.<n><t>Minelli at (1244, 3186) will tell you what to do." )
	MisBeginCondition(NoRecord, 991)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 991 )
	MisBeginCondition(NoPfEqual,1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 991 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Talk to Minelli")
	MisHelpTalk("<t>Minelli is in Magical Ocean at (1244, 3186)")
	MisResultCondition(AlwaysFailure)

-------------------------------�ʵ�ά���Ľ���
	DefineMission( 5072, "Gannon's Suggestion", 991,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>I will soon be the secretary of the High Priest.")
	MisHelpTalk("<t>You are brave.")
	MisResultCondition(NoRecord, 991)
	MisResultCondition(HasMission,991)
	MisResultAction(ClearMission, 991 )
	MisResultAction(SetRecord, 991 )

	
	-------------------------------------------------------ʯ������־
	DefineMission( 5073, "Harden Will", 998 )

	MisBeginTalk( "<t>Try using Harden on yourself." )
	MisBeginCondition(NoRecord, 998)
	MisBeginCondition(HasRecord, 991)
	MisBeginCondition(NoMission, 998 )
	MisBeginAction(AddMission, 998 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Cast Harden on yourself.")
	MisHelpTalk("<t>To have a strong will is the basic requirement to becoming a pirate.")
	MisResultTalk("<t>Everyone is their own hero, don't you feel that you have grown stronger!")

	MisResultCondition(HasMission, 998 )
	MisResultCondition(HasState, 92 )
	MisResultAction(ClearMission, 998 )
	MisResultAction(SetRecord, 998 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
		
	----------------------------------------���ߵ���
     DefineMission(5068,"Story of the Enlightened One",993)
     MisBeginTalk("<t>Your capabilities have been proven.<n><t>I'm in the midst of doing a Statistics table. I'll tell you a story about the Enlightened One later.")
     MisBeginCondition(HasRecord,988)
     MisBeginCondition(NoMission, 993)
     MisBeginCondition(NoRecord, 993)
     MisBeginAction(AddMission, 993)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "Wait for Peter of Argent City to finish the Statistics Table")
     MisHelpTalk("<t>Statistics table is not done yet. Do not fret.")
     MisResultTalk("<t>Statistics table is not an easy thing to do.")
     MisResultCondition(NoRecord, 993)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 993)
     MisResultAction(SetRecord, 993 )
     MisResultAction(ClearMission, 993 )
----------------------------------------���ߵ���
      DefineMission(5069,"Story of the Enlightened One",994)
     MisBeginTalk("<t>Your capabilities have been proven.<n><t>I'm in the midst of doing a Statistics table. I'll tell you a story about the Enlightened One later.")
     MisBeginCondition(HasRecord,989)
      MisBeginCondition(NoMission, 994)
     MisBeginCondition(NoRecord, 994)
     MisBeginAction(AddMission, 994)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "Wait for Ray of Icicle to finish the Statistics Table")
     MisHelpTalk("<t>Statistics table is not done yet. Do not fret.")
      MisResultTalk("<t>Statistics table is not an easy thing to do.")
     MisResultCondition(NoRecord, 994)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 994)
     MisResultAction(SetRecord, 994 )
     MisResultAction(ClearMission, 994 )

     ----------------------------------------���ߵ���
      DefineMission(5070,"Story of the Enlightened One",995)
     MisBeginTalk("<t>Your capability has been sufficiently proved.<n><t>I'm doing a very important Statistics Table, I'll tell you about the Enlightened One later.")
     MisBeginCondition(HasRecord,998)
      MisBeginCondition(NoMission, 995)
     MisBeginCondition(NoRecord, 995)
     MisBeginAction(AddMission, 995)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "Wait for Magical Ocean's Minelli to finish the chart.")
     MisHelpTalk("<t>Statistics table is not done yet. Do not fret.")
      MisResultTalk("<t>Making a statistics table is not an easy task.")
     MisResultCondition(NoRecord, 995)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 995)
     MisResultAction(SetRecord, 995 )
     MisResultAction(ClearMission, 995 )
	----------------------------------------���ߵ���
      DefineMission(5071,"Story of the Enlightened One",997)
     MisBeginTalk("<t>Your capability has been sufficiently proved.<n><t>I'm doing a very important Statistics Table, I'll tell you about the Enlightened One later.")
     MisBeginCondition(HasRecord,990)
      MisBeginCondition(NoMission, 997)
     MisBeginCondition(NoRecord, 997)
     MisBeginAction(AddMission, 997)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "Wait for the Harbor Operator to finish the Statistics Table")
     MisHelpTalk("<t>Statistics table is not done yet. Do not fret.")
      MisResultTalk("<t>Statistics table is not an easy thing to do.")
     MisResultCondition(NoRecord, 997)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 997)
     MisResultAction(SetRecord, 997 )
     MisResultAction(ClearMission, 997 )

-------------------------------------------------------˭������-------------�������̻�᳤�����׵���˹
	DefineMission( 5167, "Who is the Enlightened One", 1500 )

	MisBeginTalk( "<t>The Enlightened One's identity is shrouded in mystery. I'm not very sure of it myself. You can ask Langa of Shaitan, Argent City's Chairman Ronnie and Icicle's Reyno. But time is the essence. You can only ask one of them." )
	MisBeginCondition(NoRecord,1500)
	MisBeginCondition(HasRecord, 993)
	MisBeginCondition(NoMission, 1500 )
	MisBeginAction(AddMission, 1500 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for either Langa of Shaitan, Argent City's Ronnie or Icicle City's Reyno for a chat")
	MisHelpTalk("<t>Langa is at (853, 3549) while Argent Chairman Ronnie is at (2242, 2748) and Reyno can be found at (1294, 498)")
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------˭������---------��ŷ
	DefineMission( 5168, "Who is the Enlightened One", 1501 )

	MisBeginTalk( "<t>The Enlightened One's identity is shrouded in mystery. I'm not very sure of it myself. You can ask Langa of Shaitan, Argent City's Chairman Ronnie and Icicle's Reyno. But time is the essence. You can only ask one of them." )
	MisBeginCondition(NoRecord,1501)
	MisBeginCondition(HasRecord, 994)
	MisBeginCondition(NoMission, 1501 )
	MisBeginAction(AddMission, 1501 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for either Langa of Shaitan, Argent City's Ronnie or Icicle City's Reyno for a chat")
	MisHelpTalk("<t>Langa is at (853, 3549) while Argent Chairman Ronnie is at (2242, 2748) and Reyno can be found at (1294, 498)")
	MisResultCondition(AlwaysFailure)



	-------------------------------------------------------˭������------------�׶�����
	DefineMission( 5074, "Who is the Enlightened One", 1502 )

	MisBeginTalk( "<t>The Enlightened One's identity is shrouded in mystery. I'm not very sure of it myself. You can ask Langa of Shaitan, Argent City's Chairman Ronnie and Icicle's Reyno. But time is the essence. You can only ask one of them." )
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 995)
	MisBeginCondition(NoMission, 1502 )
	MisBeginAction(AddMission, 1502 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for either Langa of Shaitan, Argent City's Ronnie or Icicle City's Reyno for a chat")
	MisHelpTalk("<t>Langa is at (853, 3549) while Argent Chairman Ronnie is at (2242, 2748) and Reyno can be found at (1294, 498)")
	MisResultCondition(AlwaysFailure)

	


-------------------------------------------------------˭������------------�Ƕ�����
	DefineMission( 5075, "Who is the Enlightened One", 1503 )

	MisBeginTalk( "<t>The Enlightened One's identity is shrouded in mystery. I'm not very sure of it myself. You can ask Langa of Shaitan, Argent City's Chairman Ronnie and Icicle's Reyno. But time is the essence. You can only ask one of them." )
	MisBeginCondition(NoRecord,1503)
	MisBeginCondition(HasRecord, 997)
	MisBeginCondition(NoMission, 1503 )
	MisBeginAction(AddMission, 1503 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for either Langa of Shaitan, Argent City's Ronnie or Icicle City's Reyno for a chat")
	MisHelpTalk("<t>Langa is at (853, 3549) while Argent Chairman Ronnie is at (2242, 2748) and Reyno can be found at (1294, 498)")
	MisResultCondition(AlwaysFailure)

	


	
-------------------------------˭������
	DefineMission( 5076, "Who is the Enlightened One", 1500,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Every aspiring youngster would want to seek enlightenment, myself is no exception is the past. The path ahead is challenging and tough...Be prepared��")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------˭������
	DefineMission( 5077, "Who is the Enlightened One", 1501,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Every aspiring youngster would want to seek enlightenment, myself is no exception is the past. The path ahead is challenging and tough...Be prepared��")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------˭������
	DefineMission( 5078, "Who is the Enlightened One", 1502,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Every aspiring youngster would want to seek enlightenment, myself is no exception is the past. The path ahead is challenging and tough...Be prepared��")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------˭������
	DefineMission( 5079, "Who is the Enlightened One", 1503,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Every aspiring youngster would want to seek enlightenment, myself is no exception is the past. The path ahead is challenging and tough...Be prepared��")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1504 )
-------------------------------˭������
	DefineMission( 5080, "Who is the Enlightened One", 1500,COMPLETE_SHOW )----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>You're looking for the enlightened one? Let me get this right: people with low IQ have no rights to see him...Muahahah��")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1505 )


-------------------------------˭������
	DefineMission( 5081, "Who is the Enlightened One", 1501,COMPLETE_SHOW )-----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>You're looking for the enlightened one? Let me get this right: people with low IQ have no rights to see him...Muahahah��")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1505 )

-------------------------------˭������
	DefineMission( 5082, "Who is the Enlightened One", 1502,COMPLETE_SHOW )-----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>You're looking for the enlightened one? Let me get this right: people with low IQ have no rights to see him...Muahahah��")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1505 )

-------------------------------˭������
	DefineMission( 5083, "Who is the Enlightened One", 1503,COMPLETE_SHOW )-----------���ö�
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>You're looking for the enlightened one? Let me get this right: people with low IQ have no rights to see him...Muahahah��")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1505 )


	-------------------------------˭������
	DefineMission( 5084, "Who is the Enlightened One", 1500,COMPLETE_SHOW )----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>My friend, I'm an intelligent person too. I once found out the reasons behind High Priest's balding and why Langa has smelly foot��")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1506 )


-------------------------------˭������
	DefineMission( 5085, "Who is the Enlightened One", 1501,COMPLETE_SHOW )-----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>My friend, I'm an intelligent person too. I once found out the reasons behind High Priest's balding and why Langa has smelly foot��")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1506 )

-------------------------------˭������
	DefineMission( 5086, "Who is the Enlightened One", 1502,COMPLETE_SHOW )-----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>My friend, I'm an intelligent person too. I once found out the reasons behind High Priest's balding and why Langa has smelly foot��")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1506 )

-------------------------------˭������
	DefineMission( 5087, "Who is the Enlightened One", 1503,COMPLETE_SHOW )-----------������
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>My friend, I'm an intelligent person too. I once found out the reasons behind High Priest's balding and why Langa has smelly foot��")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1506 )

-------------------------------------------------------������ͽ-------------�������̻�᳤�����׵���˹
	DefineMission( 5088, "Top Disciple", 1507 )

	MisBeginTalk( "<t>The Enlightened One is very eccentric. He only address those whose soul and skills are strong. Find the one who told you about him. He will conduct a few tests for you in my stead." )
	MisBeginCondition(NoRecord,1507)
	MisBeginCondition(HasRecord, 1504)
	MisBeginCondition(NoMission, 1507 )
	MisBeginAction(AddMission, 1507 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Find the one who told you about the Enlightened One. Hint: Gregory, Minelli, Ray or Peter.")
	MisHelpTalk("<t>Minelli can be found in Magical Ocean at (1244, 3186).")
	MisResultCondition(AlwaysFailure)
--------------------------------------------------------������ͽ
	DefineMission( 5089, "Top Disciple", 1507,COMPLETE_SHOW )--------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Argent City Chairman Ronnie says he's not familiar with your class. Allow me to test if you are suitable to be his disciple in his stead.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1514)

	


	--------------------------------------------------------������ͽ
	DefineMission( 5090, "Top Disciple", 1507,COMPLETE_SHOW )---------��ŷ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Argent City Chairman Ronnie says he's not familiar with your class. Allow me to test if you are suitable to be his disciple in his stead.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1515)

--------------------------------------------------------������ͽ
	DefineMission( 5091, "Top Disciple", 1507,COMPLETE_SHOW )---------�Ƕ�����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Little Daniel is very busy. He has requested that I test if you are capable of being his disciple.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1516)

	--------------------------------------------------------������ͽ
	DefineMission( 5092, "Top Disciple", 1507,COMPLETE_SHOW )---------�׶�����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>I'm currently the High Priest's secretary. I'm here to test if you are suitable to be his student in his stead.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1517)

---------------------------------------------------------------------���س�����ͽ

	DefineMission( 5093, "Initial Disciple", 1508 )

	MisBeginTalk( "<t>The fulfilment of dreams need realistic training. First kill 5 <bTerra Warrior> at (314, 2641) in Ascaron." )
	MisBeginCondition(NoRecord, 1508 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1514 )
	MisBeginCondition(NoMission, 1508 )
	MisBeginAction(AddMission,  1508)
	MisBeginAction(AddTrigger,  15081, TE_KILL, 67, 5 )----------------�ؾ�սʿ
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 5 Terra Captain at Ascaron for Peter")
	MisNeed(MIS_NEED_KILL,67,5, 10, 5)

	MisResultTalk("<t>You are now a qualified beginner disciple. Keep it up!")
	MisHelpTalk("<t>You need not be nervous when facing Terra.")
	MisResultCondition(HasMission,  1508)
	MisResultCondition(NoRecord,  1508)
	MisResultCondition(HasFlag,  1508, 14 )
	MisResultAction(ClearMission,  1508 )
	MisResultAction(SetRecord,  1508  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 67)	
	TriggerAction( 1, AddNextFlag,  1508 , 10,5)
	RegCurTrigger(   15081 )

	---------------------------------------------------------------------���ض�����ͽ

	DefineMission( 5094, "Lv2 Disciple", 1509 )

	MisBeginTalk( "<t>I once taught some disciples. They can't even kill 5 Evil Undead Warrior at (580, 2121). I had them thrown out. Do you want to try?" )
	MisBeginCondition(NoRecord, 1509 )
	MisBeginCondition(HasRecord, 1508 )
	MisBeginCondition(NoMission, 1509 )
	MisBeginAction(AddMission,  1509)
	MisBeginAction(AddTrigger,  15091, TE_KILL, 549, 5 )----------------а��Ĳ�����
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 5 Evil Undead Warrior in Ascaron for Peter")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>Your performance is still acceptable. At least, you won't be expelled!")
	MisHelpTalk("<t>Be careful, you might get expelled if you fail your task.")
	MisResultCondition(HasMission,  1509)
	MisResultCondition(NoRecord,  1509)
	MisResultCondition(HasFlag,  1509, 14 )
	MisResultAction(ClearMission,  1509 )
	MisResultAction(SetRecord,  1509  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1509 , 10,5)
	RegCurTrigger(   15091 )

	---------------------------------------------------------------------����������ͽ

	DefineMission( 5095, "3rd Grade Disciple", 1510 )

	MisBeginTalk( "<t>For your next challenge, kill 6 Evil Pumpkin Knights at (340, 1581) in Ascaron." )
	MisBeginCondition(NoRecord, 1510 )
	MisBeginCondition(HasRecord, 1509 )
	MisBeginCondition(NoMission, 1510 )
	MisBeginAction(AddMission,  1510)
	MisBeginAction(AddTrigger,  15101, TE_KILL, 546, 6 )----------------а����Ϲ���ʿ
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 6 Evil Pumpkin Knights in Ascaron for Peter.")
	MisNeed(MIS_NEED_KILL,546,6, 10, 6)

	MisResultTalk("<t>You are getting closer and closer to your dream!")
	MisHelpTalk("<t>Fasten up your pace if you want to find Enlightened One.")
	MisResultCondition(HasMission,  1510)
	MisResultCondition(NoRecord,  1510)
	MisResultCondition(HasFlag,  1510, 15 )
	MisResultAction(ClearMission,  1510 )
	MisResultAction(SetRecord,  1510  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1510 , 10,6)
	RegCurTrigger(   15101 )



---------------------------------------------------------------------���ظ߼���ͽ

	DefineMission( 5096, "Advance Disciple", 1511 )

	MisBeginTalk( "<t>To become my number 1 disciple, you must kill another 8 <bShadow Hunters> at (450, 2121) in Ascaron." )
	MisBeginCondition(NoRecord, 1511 )
	MisBeginCondition(HasRecord, 1510 )
	MisBeginCondition(NoMission, 1511 )
	MisBeginAction(AddMission,  1511)
	MisBeginAction(AddTrigger,  15111, TE_KILL, 201, 8 )----------------��Ӱ����
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 8 Shadow Hunter at Ascaron for Peter")
	MisNeed(MIS_NEED_KILL,201,8, 10, 8)

	MisResultTalk("<t>Your soul and skills have passed the test!")
	MisHelpTalk("<t> Its the last test to being a disciple! Do not give up!")
	MisResultCondition(HasMission,  1511)
	MisResultCondition(NoRecord,  1511)
	MisResultCondition(HasFlag,  1511, 17 )
	MisResultAction(ClearMission,  1511 )
	MisResultAction(SetRecord,  1511  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 201)	
	TriggerAction( 1, AddNextFlag,  1511 , 10,8)
	RegCurTrigger(   15111 )


	
	---------------------------------------------------------------------��ŷ������ͽ

	DefineMission( 5097, "Initial Disciple", 1512 )

	MisBeginTalk( "<t>Icicle City is getting colder. Why don't you go kill 5 <bBaby Icy Dragons> at (348, 436) in Underwater  Tunnel to warm up." )
	MisBeginCondition(NoRecord, 1512 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1515 )
	MisBeginCondition(NoMission, 1512 )
	MisBeginAction(AddMission,  1512)
	MisBeginAction(AddTrigger,  15121, TE_KILL, 187, 5 )----------------С����
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 5 Seabed Tunnel's Baby Icy Dragon for Ray")
	MisNeed(MIS_NEED_KILL,187,5, 10, 5)

	MisResultTalk("<t>I can feel your temperature getting warm.")
	MisHelpTalk("<t>Monster slaying is always our family's secret of safety measure.")
	MisResultCondition(HasMission,  1512)
	MisResultCondition(NoRecord,  1512)
	MisResultCondition(HasFlag,  1512, 14 )
	MisResultAction(ClearMission,  1512 )
	MisResultAction(SetRecord,  1512  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 187)	
	TriggerAction( 1, AddNextFlag,  1512 , 10,5)
	RegCurTrigger(   15121 )


	---------------------------------------------------------------------��ŷ������ͽ

	DefineMission( 5098, "Lv2 Disciple", 1513 )

	MisBeginTalk( "<t>You are getting warm! Kill 5 Mad Tribal Villagers at (561, 2334) in Ascaron." )
	MisBeginCondition(NoRecord, 1513 )
	MisBeginCondition(HasRecord, 1512 )
	MisBeginCondition(NoMission, 1513 )
	MisBeginAction(AddMission,  1513)
	MisBeginAction(AddTrigger,  15131, TE_KILL, 543, 5 )----------------����������
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Hunt 5 Mad Tribal Villager in Ascaron and return to Ray")
	MisNeed(MIS_NEED_KILL,543,5, 10, 5)

	MisResultTalk("<t>Your temperature is getting warmer..")
	MisHelpTalk("<t>Monster slaying is always our family's secret of safety measure.")
	MisResultCondition(HasMission,  1513)
	MisResultCondition(NoRecord,  1513)
	MisResultCondition(HasFlag,  1513, 14 )
	MisResultAction(ClearMission,  1513 )
	MisResultAction(SetRecord,  1513  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 543)	
	TriggerAction( 1, AddNextFlag,  1513 , 10,5)
	RegCurTrigger(   15131 )


	---------------------------------------------------------------------��ŷ������ͽ

	DefineMission( 5099, "3rd Grade Disciple", 1518 )

	MisBeginTalk( "<t>Still need to get warmer! Kill 6 Werewolf Warrior Leaders at (472, 2484) in Ascaron." )
	MisBeginCondition(NoRecord, 1518 )
	MisBeginCondition(HasRecord, 1513 )
	MisBeginCondition(NoMission, 1518 )
	MisBeginAction(AddMission,  1518)
	MisBeginAction(AddTrigger,  15181, TE_KILL, 566, 6 )----------------����սʿ�ӳ�
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 6 Werewolf Warrior Leader in Ascaron for Ray")
	MisNeed(MIS_NEED_KILL,566,6, 10, 6)

	MisResultTalk("<t>Your temperature is continuing to rise")
	MisHelpTalk("<t>Monster slaying is always our family's secret of safety measure.")
	MisResultCondition(HasMission,  1518)
	MisResultCondition(NoRecord,  1518)
	MisResultCondition(HasFlag,  1518, 15 )
	MisResultAction(ClearMission,  1518 )
	MisResultAction(SetRecord,  1518  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 566)	
	TriggerAction( 1, AddNextFlag,  1518 , 10,6)
	RegCurTrigger(   15181 )


	---------------------------------------------------------------------��ŷ�߼���ͽ

	DefineMission( 5100, "Advance Disciple", 1519 )

	MisBeginTalk( "<t>Last chance to get warm! Kill 8 <bLumbering Treants> at (450, 2121) in Ascaron." )
	MisBeginCondition(NoRecord, 1519 )
	MisBeginCondition(HasRecord, 1518 )
	MisBeginCondition(NoMission, 1519 )
	MisBeginAction(AddMission,  1519)
	MisBeginAction(AddTrigger,  15191, TE_KILL, 511, 8)----------------��������
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 8 Lumbering Treant in Ascaron and return to Ray")
	MisNeed(MIS_NEED_KILL,511,8, 10, 8)

	MisResultTalk("<t>Congratulations! You are guaranteed immunization from flu for some period of time, haha! And you are now my student!")
	MisHelpTalk("<t>Don't forget our family's secret of safety measure.")
	MisResultCondition(HasMission,  1519)
	MisResultCondition(NoRecord,  1519)
	MisResultCondition(HasFlag,  1519, 17 )
	MisResultAction(ClearMission,  1519 )
	MisResultAction(SetRecord,  1519  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 511)	
	TriggerAction( 1, AddNextFlag,  1519 , 10,8)
	RegCurTrigger(   15191 )

	---------------------------------------------------------------------�׶�������ͽ

	DefineMission( 5101, "Initial Disciple", 1520 )

	MisBeginTalk( "<t>Recently, there have been complaints of <bEvil Undead Warrior> at (580, 2121) in Ascaron being too ugly and scaring the city. In place of the High Priest, I now bestow upon you, the title of Environmental Warrior. Go eliminate them." )
	MisBeginCondition(NoRecord, 1520 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1517)
	MisBeginCondition(NoMission, 1520 )
	MisBeginAction(AddMission,  1520)
	MisBeginAction(AddTrigger,  15201, TE_KILL, 549, 5 )----------------а��Ĳ�����ʿ
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 5 Evil Undead Warrior in Ascaron for Minelli")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>Although its not their fault for being ugly, but they shouldn't scare people like that!")
	MisHelpTalk("<t>Please be careful when killing monsters out there.")
	MisResultCondition(HasMission,  1520)
	MisResultCondition(NoRecord,  1520)
	MisResultCondition(HasFlag,  1520, 14 )
	MisResultAction(ClearMission,  1520 )
	MisResultAction(SetRecord,  1520  )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1520 , 10,5)
	RegCurTrigger(   15201 )



---------------------------------------------------------------------�׶�������ͽ

	DefineMission( 5102, "Lv2 Disciple", 1521 )

	MisBeginTalk( "<t>I can't stand the <bBewitching Siren> at (1014, 2550) in Magical Ocean. They think they are so beautiful. Humph! think they are more beautiful than me? Humble them by killing 2." )
	MisBeginCondition(NoRecord, 1521 )
	MisBeginCondition(HasRecord, 1520 )
	MisBeginCondition(NoMission, 1521 )
	MisBeginAction(AddMission,  1521)
	MisBeginAction(AddTrigger,  15211, TE_KILL, 587, 2 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Hunt 2 Bewitching Siren in Magical Ocean and return to Minelli")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>Way to go!")
	MisHelpTalk("<t>Oh��")
	MisResultCondition(HasMission,  1521)
	MisResultCondition(NoRecord,  1521)
	MisResultCondition(HasFlag,  1521, 11 )
	MisResultAction(ClearMission,  1521 )
	MisResultAction(SetRecord,  1521  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1521 , 10,2)
	RegCurTrigger(   15211 )



	---------------------------------------------------------------------�׶�������ͽ

	DefineMission( 5103, "3rd Grade Disciple", 1522 )

	MisBeginTalk( "<t>Bewitching Siren's cousins <bDark Blue Siren> at (1038, 2317) from Deep Blue has announced that they want to exact revenge for their cousins. Its imperative that they do not harbor such thoughts. Eliminate them! " )
	MisBeginCondition(NoRecord, 1522 )
	MisBeginCondition(HasRecord, 1521 )
	MisBeginCondition(NoMission, 1522 )
	MisBeginAction(AddMission,  1522)
	MisBeginAction(AddTrigger,  15221, TE_KILL, 606, 3 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 3 Dark Blue Siren at Deep Blue for Minelli")
	MisNeed(MIS_NEED_KILL,606,3, 10, 3)

	MisResultTalk("<t>Lets see who still dares to show off in front of me!")
	MisHelpTalk("<t>Do not come back if you failed.")
	MisResultCondition(HasMission,  1522)
	MisResultCondition(NoRecord,  1522)
	MisResultCondition(HasFlag,  1522, 12 )
	MisResultAction(ClearMission,  1522 )
	MisResultAction(SetRecord,  1522  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1522 , 10,3)
	RegCurTrigger(   15221 )

---------------------------------------------------------------------�׶��߼���ͽ

	DefineMission( 5104, "Advance Disciple", 1523 )

	MisBeginTalk( "<t>The way that you rise to the occasion and fulfil your task is so beautiful. I have decided to reward you: kill 8 Pirate 007 and I'll promote your impressive skills to others, and in a exaggerated way too. It will be very good for your future." )
	MisBeginCondition(NoRecord, 1523 )
	MisBeginCondition(HasRecord, 1522 )
	MisBeginCondition(NoMission, 1523 )
	MisBeginAction(AddMission,  1523)
	MisBeginAction(AddTrigger,  15231, TE_KILL, 735, 8 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 8 Autumn Island's Pirate 007 at (2799, 3010) for Minelli ")
	MisNeed(MIS_NEED_KILL,735,8, 10,8)

	MisResultTalk("<t>Congratulations on becoming the High Priest's student!")
	MisHelpTalk("<t>It is not exaggerating when people says that I'm pretty.")
	MisResultCondition(HasMission,  1523)
	MisResultCondition(NoRecord,  1523)
	MisResultCondition(HasFlag,  1523, 17 )
	MisResultAction(ClearMission,  1523 )
	MisResultAction(SetRecord,  1523  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 735)	
	TriggerAction( 1, AddNextFlag,  1523 , 10,8)
	RegCurTrigger(   15231 )


---------------------------------------------------------------------�Ƕ�������ͽ

	DefineMission( 5105, "Initial Disciple", 1524 )

	MisBeginTalk( "<t>I want to build 2 light houses at the harbor, but its too far for eletricity to be connected. Rumor has it that Shining Fish Bone Rack can give off organic rays. Help me acquire 2 from Feral Fish Bone at (900, 1308) found in Magical Ocean." )
	MisBeginCondition(NoRecord, 1524 )
	MisBeginCondition(HasRecord, 1516 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(NoMission, 1524 )
	MisBeginAction(AddMission,  1524)
	MisBeginAction(AddTrigger,  15241, TE_GETITEM, 1350, 2 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Collect 2 Shining Fish Bone Rack for Gregory ")
	MisNeed(MIS_NEED_ITEM,1350,2, 10, 2)

	MisResultTalk("<t>All the sea travellers will be grateful to you!")
	MisHelpTalk("<t>I could make a necklace for Donna if there is any remaining fish bones, hehe! ")
	MisResultCondition(HasMission,  1524)
	MisResultCondition(NoRecord,  1524)
	MisResultCondition(HasItem, 1350, 2)
	MisResultAction(TakeItem,  1350, 2 )
	MisResultAction(ClearMission,  1524 )
	MisResultAction(SetRecord,  1524  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1350)	
	TriggerAction( 1, AddNextFlag, 1524, 10, 2 )
	RegCurTrigger( 15241 )

	---------------------------------------------------------------------�Ƕ�������ͽ

	DefineMission( 5106, "Lv2 Disciple", 1525 )

	MisBeginTalk( "<t>Theres another problem. I don't wish for the monsters in the ocean to be able to see the rays too. They will follow the rays and hide near to light house to attack Ships. Can you block off part of the ray by getting some <bBewitching Siren Crystals>." )
	MisBeginCondition(NoRecord, 1525 )
	MisBeginCondition(HasRecord, 1524 )
	MisBeginCondition(NoMission, 1525 )
	MisBeginAction(AddMission,  1525)
	MisBeginAction(AddTrigger,  15251, TE_GETITEM, 1295, 2 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Obtain 2 Bewitching Siren Crystals from Bewitching Siren at (1014, 2550) in Magical Ocean and bring to Gregory")
	MisNeed(MIS_NEED_ITEM,1295,2, 10, 2)

	MisResultTalk("<t>To kill a monster require stuff from the monster. This is called...called...Cough...cough��Lets not talk about these...Thank you.")
	MisHelpTalk("<t>We should not be going around killing monster as they are living being too. They are also born by parent too, just like we us, the human beings. ")
	MisResultCondition(HasMission,  1525)
	MisResultCondition(NoRecord,  1525)
	MisResultCondition(HasItem, 1295, 2)
	MisResultAction(TakeItem,  1295, 2 )
	MisResultAction(ClearMission,  1525 )
	MisResultAction(SetRecord,  1525  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1295)	
	TriggerAction( 1, AddNextFlag, 1525, 10, 2 )
	RegCurTrigger( 15251 )



---------------------------------------------------------------------�Ƕ�������ͽ

	DefineMission( 5107, "3rd Grade Disciple", 1526 )

	MisBeginTalk( "<t>For your help, I have decided to make your test easier. Find 99 Elven Fruit. I want to make Fruit Juice. " )
	MisBeginCondition(NoRecord, 1526 )
	MisBeginCondition(HasRecord, 1525 )
	MisBeginCondition(NoMission, 1526 )
	MisBeginAction(AddMission,  1526)
	MisBeginAction(AddTrigger,  15261, TE_GETITEM, 3116, 99 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Look for 99 Elven Fruits from Mystic Shrub and give to Gregory")
	MisNeed(MIS_NEED_ITEM,3116,99, 10, 99)

	MisResultTalk("<t>It is said that drinking this fruit juice grants immortality. Remember to keep this a secret!")
	MisHelpTalk("<t>Do not underestimate this task!")
	MisResultCondition(HasMission,  1526)
	MisResultCondition(NoRecord,  1526)
	MisResultCondition(HasItem, 3116, 99)
	MisResultAction(TakeItem,  3116, 99 )
	MisResultAction(ClearMission,  1526 )
	MisResultAction(SetRecord,  1526  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,3116)	
	TriggerAction( 1, AddNextFlag, 1526, 10, 99 )
	RegCurTrigger( 15261 )


	---------------------------------------------------------------------�Ƕ��߼���ͽ

	DefineMission( 5108, "Advance Disciple", 1527 )

	MisBeginTalk( "<t>You patience and courage has been proven. Now is time to prove your Strength. <bBeardy Pirate Militia> is  stronger. Find him for some practice. Defeat him and bring back <rBeardy Militia's Emblem>." )
	MisBeginCondition(NoRecord, 1527 )
	MisBeginCondition(HasRecord, 1526 )
	MisBeginCondition(NoMission, 1527 )
	MisBeginAction(AddMission,  1527)
	MisBeginAction(AddTrigger,  15271, TE_GETITEM, 4802, 1 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Obtained 1 Beardy Militia's Emblem from Beardy Pirate Militia for Gregory")
	MisNeed(MIS_NEED_ITEM,4802,1, 10, 1)

	MisResultTalk("<t>Congratulations on becoming disciple of Little Daniel!")
	MisHelpTalk("<t>You have to take opponent's item as a evident of defeating them.")
	MisResultCondition(HasMission,  1527)
	MisResultCondition(NoRecord,  1527)
	MisResultCondition(HasItem, 4802, 1)
	MisResultAction(TakeItem,  4802, 1 )
	MisResultAction(ClearMission,  1527 )
	MisResultAction(SetRecord,  1527  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4802)	
	TriggerAction( 1, AddNextFlag, 1527, 10, 1 )
	RegCurTrigger( 15271 )

-------------------------------------------------------�ϸ����ͽ--------����
	DefineMission( 5109, "Qualified Disciple", 1528 )

	MisBeginTalk( "<t>You have reached my expected qualifications. Now go and find Argent Chairman Ronnie." )
	MisBeginCondition(NoRecord,1528)
	MisBeginCondition(HasRecord, 1511)
	MisBeginCondition(NoMission, 1528 )
	MisBeginAction(AddMission, 1528 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Talk to Argent City's Ronnie")
	MisHelpTalk("<t>Argent Chairman Ronnie is at (2242, 2748)")
	MisResultCondition(AlwaysFailure)



--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5110, "Qualified Disciple", 1528,COMPLETE_SHOW )----------�������̻�᳤�����׵���˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>The swiftness in which you accomplish your tasks will be the envy of all pirates!")
	MisResultCondition(NoRecord, 1528)
	MisResultCondition(HasMission, 1528)
	MisResultAction(ClearMission,1528)
	MisResultAction(SetRecord, 1528)
	MisResultAction(SetRecord, 1577)-------------
	

-------------------------------------------------------�ϸ����ͽ--------��ŷ
	DefineMission( 5111, "Qualified Disciple", 1529 )

	MisBeginTalk( "<t>You have reached my expected qualifications. Now go and find Argent Chairman Ronnie." )
	MisBeginCondition(NoRecord,1529)
	MisBeginCondition(HasRecord, 1519)
	MisBeginCondition(NoMission, 1529 )
	MisBeginAction(AddMission, 1529 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Talk to Argent City's Ronnie")
	MisHelpTalk("<t>Argent Chairman Ronnie is at (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5112, "Qualified Disciple", 1529,COMPLETE_SHOW )------�������̻�᳤�����׵���˹(2242,2748)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>The swiftness in which you accomplish your tasks will be the envy of all pirates!")
	MisResultCondition(NoRecord, 1529)
	MisResultCondition(HasMission, 1529)
	MisResultAction(ClearMission,1529)
	MisResultAction(SetRecord, 1529)
	MisResultAction(SetRecord, 1577)-------------


	-------------------------------------------------------�ϸ����ͽ--------�׶�
	DefineMission( 5113, "Qualified Disciple", 1530 )

	MisBeginTalk( "<t>You are now a qualified disciple of the High Priest. Look for Ronnie in Argent City now." )
	MisBeginCondition(NoRecord,1530)
	MisBeginCondition(HasRecord, 1523)
	MisBeginCondition(NoMission, 1530 )
	MisBeginAction(AddMission, 1530 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Talk to Argent City's Ronnie")
	MisHelpTalk("<t>Argent Chairman Ronnie is at (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5114, "Qualified Disciple", 1530,COMPLETE_SHOW )------���׵���˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>The swiftness in which you accomplish your tasks will be the envy of all pirates!")
	MisResultCondition(NoRecord, 1530)
	MisResultCondition(HasMission, 1530)
	MisResultAction(ClearMission,1530)
	MisResultAction(SetRecord, 1530)
	MisResultAction(SetRecord, 1577)-------------

	-------------------------------------------------------�ϸ����ͽ--------�Ƕ�
	DefineMission( 5115, "Qualified Disciple", 1531 )

	MisBeginTalk( "<t>You are already Little Daniel's qualified disciple, got find Ronnie." )
	MisBeginCondition(NoRecord,1531)
	MisBeginCondition(HasRecord, 1527)
	MisBeginCondition(NoMission, 1531 )
	MisBeginAction(AddMission, 1531 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Talk to Argent City's Ronnie")
	MisHelpTalk("<t>Argent Chairman Ronnie is at (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ϸ����ͽ
	DefineMission( 5116, "Qualified Disciple", 1531,COMPLETE_SHOW )------���׵���˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>The swiftness in which you accomplish your tasks will be the envy of all pirates!")
	MisResultCondition(NoRecord, 1531)
	MisResultCondition(HasMission, 1531)
	MisResultAction(ClearMission,1531)
	MisResultAction(SetRecord, 1531)
	MisResultAction(SetRecord, 1577)-------------

-------------------------------------------------------ΰ�������----------���ö�
	DefineMission( 5117, "Grandeur Oracle", 1532 )

	MisBeginTalk( "<t>Find the 8 servants of God to get some ominous revelation and return to me." )
	MisBeginCondition(NoRecord,1532)
	MisBeginCondition(HasRecord, 1505)
	MisBeginCondition(NoMission, 1532 )
	MisBeginAction(AddMission, 1532 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Look for <rTailor Bebe> in Argent City at (2265, 2704)")
	MisHelpTalk("<t>Show some respect to those slaves or else something bad might happen. ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ΰ�������
	DefineMission( 5118, "Grandeur Oracle", 1532,COMPLETE_SHOW )-------------��װ����������
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>My true identity is the servant of <bWater Deity>��")
	MisResultCondition(NoRecord, 1532)
	MisResultCondition(HasMission, 1532)
	MisResultAction(ClearMission,1532)
	MisResultAction(SetRecord, 1532)



---------------------------------------------------------------------һ����

	DefineMission( 5119, "First Gate", 1533 )

	MisBeginTalk( "<t>Water Deity's instruction is at the faraway 8th Gate. First accept my first test of God." )------��װ����������
	MisBeginCondition(NoRecord, 1533 )
	MisBeginCondition(HasRecord, 1532 )
	MisBeginCondition(NoMission, 1533 )
	MisBeginAction(AddMission,  1533)
	MisBeginAction(AddTrigger,  15331, TE_KILL, 642, 2 )----------------���͵Ĺ���
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Hunt 2 Feral Fish Bone at (900, 1308) in Magical Ocean and return to Tailor - Bebe")
	MisNeed(MIS_NEED_KILL,642,2, 10, 2)

	MisResultTalk("<t>You can receive the blessing of Water Deity wherever there is water.")
	MisHelpTalk("<t>Keep the secret about my identity.")
	MisResultCondition(HasMission,  1533)
	MisResultCondition(NoRecord,  1533)
	MisResultCondition(HasFlag,  1533, 11 )
	MisResultAction(ClearMission,  1533 )
	MisResultAction(SetRecord,  1533  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 642)	
	TriggerAction( 1, AddNextFlag,  1533 , 10,2)
	RegCurTrigger(   15331 )


-------------------------------------------------------���һ����------------��װ����������
	DefineMission( 5120, "Goodbye to First Gate", 1534 )

	MisBeginTalk( "<t>Find <bMaster Kerra> at (2664, 654) in Icespire Haven." )
	MisBeginCondition(NoRecord,1534)
	MisBeginCondition(HasRecord, 1533)
	MisBeginCondition(NoMission, 1534 )
	MisBeginAction(AddMission, 1534 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Go to Icespire Haven and look for Master Kerra at (2664, 654)")
	MisHelpTalk("<t>His test for you will not be as easy as mine")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���һ����
	DefineMission( 5121, "Goodbye to First Gate", 1534,COMPLETE_SHOW )-------------��������ʦ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You have unknowingly went on the path to getting close to God.")
	MisResultCondition(NoRecord, 1534)
	MisResultCondition(HasMission, 1534)
	MisResultAction(ClearMission,1534)
	MisResultAction(SetRecord, 1534)

---------------------------------------------------------------------������

	DefineMission( 5122, "2nd Gate", 1535 )

	MisBeginTalk( "<t>First Gate is only a small warm-up. Do not be conceited. Come and pass the 2nd Gate: Challenge of the servants of <rFire Deity>." )------��������ʦ
	MisBeginCondition(NoRecord, 1535 )
	MisBeginCondition(HasRecord, 1534 )
	MisBeginCondition(NoMission, 1535 )
	MisBeginAction(AddMission,  1535)
	MisBeginAction(AddTrigger,  15351, TE_KILL, 652, 2 )----------------���͵ı�ʯ����
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 2 Magical Ocean's Feral Ruby Dolphins at (866, 2171) for Master Kerra")
	MisNeed(MIS_NEED_KILL,652,2, 10, 2)

	MisResultTalk("<t>You can receive the protection of Fire Deity wherever theres fire.")
	MisHelpTalk("<t>Keep the secret about my identity.")
	MisResultCondition(HasMission,  1535)
	MisResultCondition(NoRecord,  1535)
	MisResultCondition(HasFlag,  1535, 11 )
	MisResultAction(ClearMission,  1535 )
	MisResultAction(SetRecord,  1535  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 652)	
	TriggerAction( 1, AddNextFlag,  1535 , 10,2)
	RegCurTrigger(   15351 )


-------------------------------------------------------��������------------��������ʦ
	DefineMission( 5123, "Goodbye to 2nd Gate", 1536 )

	MisBeginTalk( "<t>Find <bMarcus (789, 3112)> at Oasis Haven." )
	MisBeginCondition(NoRecord,1536)
	MisBeginCondition(HasRecord, 1535)
	MisBeginCondition(NoMission, 1536 )
	MisBeginAction(AddMission, 1536 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Look for <bMarcus at (789, 3112)> in Oasis Haven")
	MisHelpTalk("<t>I wish that you could pass the 3rd Gate.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------��������
	DefineMission( 5124, "Goodbye to 2nd Gate", 1536,COMPLETE_SHOW )-------------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You are still a normal human after passing through 2 doors.")
	MisResultCondition(NoRecord, 1536)
	MisResultCondition(HasMission, 1536)
	MisResultAction(ClearMission,1536)
	MisResultAction(SetRecord, 1536)

---------------------------------------------------------------------������

	DefineMission( 5125, "3rd Gate", 1537 )

	MisBeginTalk( "<t>I am the servant of <bWind Deity>. I wonder if you are afraid of meeting the challenge." )------����
	MisBeginCondition(NoRecord, 1537 )
	MisBeginCondition(HasRecord, 1536 )
	MisBeginCondition(NoMission, 1537 )
	MisBeginAction(AddMission,  1537)
	MisBeginAction(AddTrigger,  15371, TE_KILL, 587, 2 )----------------���͵ı�ʯ����
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 2 Magical Ocean's Bewitching Siren at (1014, 2550) on behalf of Marcus")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>Fret not when your hair gets blown messy by the wind, because its the loving caress of the Wind Deity.")
	MisHelpTalk("<t>Keep the secret about my identity.")
	MisResultCondition(HasMission,  1537)
	MisResultCondition(NoRecord,  1537)
	MisResultCondition(HasFlag,  1537, 11 )
	MisResultAction(ClearMission,  1537 )
	MisResultAction(SetRecord,  1537  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1537 , 10,2)
	RegCurTrigger(   15371 )


-------------------------------------------------------���������------------����
	DefineMission( 5126, "Goodbye to 3rd Gate", 1538 )

	MisBeginTalk( "<t>Find <bXeus at (2138, 545)> in Skeleton Haven" )
	MisBeginCondition(NoRecord,1538)
	MisBeginCondition(HasRecord, 1537)
	MisBeginCondition(NoMission, 1538 )
	MisBeginAction(AddMission, 1538 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Go to Skeleton Haven and look for <bXeus at (2138, 545)>")
	MisHelpTalk("<t>Face the 4th Gate with bravery!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5127, "Goodbye to 3rd Gate", 1538,COMPLETE_SHOW )-------------��˾
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Warrior, the 4th Gate is not as simple as you think.")
	MisResultCondition(NoRecord, 1538)
	MisResultCondition(HasMission, 1538)
	MisResultAction(ClearMission,1538)
	MisResultAction(SetRecord, 1538)



---------------------------------------------------------------------������

	DefineMission( 5128, "4th Gate", 1539 )

	MisBeginTalk( "<t>My secret identity is the close aide of <bEarth Deity>. Ssssh! Congratulation on passing the 3rd Gate. It will be easy to pass mine." )------��˾
	MisBeginCondition(NoRecord, 1539 )
	MisBeginCondition(HasRecord, 1538 )
	MisBeginCondition(NoMission, 1539 )
	MisBeginAction(AddMission,  1539)
	MisBeginAction(AddTrigger,  15391, TE_KILL, 570, 5 )----------------����Ӻ�����ս��Ա
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 5 Beardy Pirate Fighter at (1588, 1708) in Deep Blue for Xeus")
	MisNeed(MIS_NEED_KILL,570,5, 10, 5)

	MisResultTalk("<t>Praises of you can be heard throughout the whole land. You are a real powerful Hero!")
	MisHelpTalk("<t>Keep the secret about my identity.")
	MisResultCondition(HasMission,  1539)
	MisResultCondition(NoRecord,  1539)
	MisResultCondition(HasFlag,  1539, 14 )
	MisResultAction(ClearMission,  1539 )
	MisResultAction(SetRecord,  1539  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 570)	
	TriggerAction( 1, AddNextFlag,  1539 , 10,5)
	RegCurTrigger(   15391 )


-------------------------------------------------------���������------------��˾
	DefineMission( 5129, "Goodbye to 4th Gate", 1540 )

	MisBeginTalk( "<t>Find <bDoctor Masa at (773, 1549)> in Thundoria Castle." )
	MisBeginCondition(NoRecord,1540)
	MisBeginCondition(HasRecord, 1539)
	MisBeginCondition(NoMission, 1540 )
	MisBeginAction(AddMission, 1540 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Go to Thundoria Castle and look for <bDoctor Masa at (773, 1549)>")
	MisHelpTalk("<t>Go now, I have already promised somebody to eat Hotpot.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5130, "Goodbye to 4th Gate", 1540,COMPLETE_SHOW )-------------��ҽ����ɳ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Welcome to the 5th Gate!")
	MisResultCondition(NoRecord, 1540)
	MisResultCondition(HasMission, 1540)
	MisResultAction(ClearMission,1540)
	MisResultAction(SetRecord, 1540)


---------------------------------------------------------------------������

	DefineMission( 5131, "5th Gate", 1541 )

	MisBeginTalk( "<t>The first snowflake of 2088 will come later than expected. This is what I, servant of the <bSnow Deity> predicts." )------��ҽ����ɳ
	MisBeginCondition(NoRecord, 1541 )
	MisBeginCondition(HasRecord, 1540 )
	MisBeginCondition(NoMission, 1541 )
	MisBeginAction(AddMission,  1541)
	MisBeginAction(AddTrigger,  15411, TE_KILL, 589, 2 )----------------��������
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 2 Siren Archer in Deep Blue at (3634, 3808) and return to Doctor Masa")
	MisNeed(MIS_NEED_KILL,589,2, 10, 2)

	MisResultTalk("<t>What...You got through 5th Gate?!")
	MisHelpTalk("<t>Keep the secret about my identity.")
	MisResultCondition(HasMission,  1541)
	MisResultCondition(NoRecord,  1541)
	MisResultCondition(HasFlag,  1541, 11 )
	MisResultAction(ClearMission,  1541 )
	MisResultAction(SetRecord,  1541  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1541 , 10,2)
	RegCurTrigger(   15411 )


-------------------------------------------------------���������------------��ҽ����ɳ
	DefineMission( 5132, "Goodbye to 5th Gate", 1542 )

	MisBeginTalk( "<t><bDannis> at (136, 3432)> of Hubble Haven is waiting for you." )
	MisBeginCondition(NoRecord,1542)
	MisBeginCondition(HasRecord, 1541)
	MisBeginCondition(NoMission, 1542 )
	MisBeginAction(AddMission, 1542 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Go to Hubble Haven and look for <bDannis at (136, 3432)>")
	MisHelpTalk("<t>Dannis is very busy. You might miss him if you are not fast enough.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5133, "Goodbye to 5th Gate", 1542,COMPLETE_SHOW )-------------����˹
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Youngster, take my word. Never do anything wrong, or retribution will catch up with you one day. I remembered plucking all the chest fur off a Bear Cub when I was young, and yesterday I was caught by a monster and burned of all my chest hair...Sob...")
	MisResultCondition(NoRecord, 1542)
	MisResultCondition(HasMission, 1542)
	MisResultAction(ClearMission,1542)
	MisResultAction(SetRecord, 1542)

---------------------------------------------------------------------������

	DefineMission( 5134, "6th Gate", 1543 )

	MisBeginTalk( "<t><rThunder Deity> is my master. Here is the 6th Gate. Your mission is to kill 6 White Bobcats at Lone Tower  1." )------����˹
	MisBeginCondition(NoRecord, 1543 )
	MisBeginCondition(HasRecord, 1542 )
	MisBeginCondition(NoMission, 1543 )
	MisBeginAction(AddMission,  1543)
	MisBeginAction(AddTrigger,  15431, TE_KILL, 36, 6 )----------------����è
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 6 White Bobcats in Lone Tower 1 and return to Dannis")
	MisNeed(MIS_NEED_KILL,36,6, 10, 6)

	MisResultTalk("<t>I guarantee that when the Thunder Deity gets angry and strikes everyone, he will be a little off target so as to avoid you.")
	MisHelpTalk("<t>Keep the secret about my identity.")
	MisResultCondition(HasMission,  1543)
	MisResultCondition(NoRecord,  1543)
	MisResultCondition(HasFlag,  1543, 15 )
	MisResultAction(ClearMission,  1543 )
	MisResultAction(SetRecord,  1543  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 36)	
	TriggerAction( 1, AddNextFlag,  1543 , 10,6)
	RegCurTrigger(   15431 )

-------------------------------------------------------���������------------����˹
	DefineMission( 5135, "Goodbye to 6th Gate", 1544 )

	MisBeginTalk( "<t>Bring along my blessings and find <bZurbi at (1037, 671)> in Atlantis Haven." )
	MisBeginCondition(NoRecord,1544)
	MisBeginCondition(HasRecord, 1543)
	MisBeginCondition(NoMission, 1544 )
	MisBeginAction(AddMission, 1544 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Look for <bZurbi at (1037, 671)> in Atlantis Haven")
	MisHelpTalk("<t>Let your passion burn!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5136, "Goodbye to 6th Gate", 1544,COMPLETE_SHOW )-------------���
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>After the 6th gate...you are still a normal human!")
	MisResultCondition(NoRecord, 1544)
	MisResultCondition(HasMission, 1544)
	MisResultAction(ClearMission,1544)
	MisResultAction(SetRecord, 1544)

---------------------------------------------------------------------������

	DefineMission( 5137, "7th Gate", 1545 )

	MisBeginTalk( "<t>My Lord, <yLightning Deity>, is forgiving. 7th Gate is where the game starts." )------���
	MisBeginCondition(NoRecord, 1545 )
	MisBeginCondition(HasRecord, 1544 )
	MisBeginCondition(NoMission, 1545 )
	MisBeginAction(AddMission,  1545)
	MisBeginAction(AddTrigger,  15451, TE_KILL, 263, 7 )----------------�ؾ�սʿ��
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 7 Barren Cavern's Terra Captain at (1392, 3066) and return to Zurbi")
	MisNeed(MIS_NEED_KILL,263,7, 10, 7)

	MisResultTalk("<t>Looks like you are not so ordinary after all.")
	MisHelpTalk("<t>Keep the secret about my identity.")
	MisResultCondition(HasMission,  1545)
	MisResultCondition(NoRecord,  1545)
	MisResultCondition(HasFlag,  1545, 16 )
	MisResultAction(ClearMission,  1545 )
	MisResultAction(SetRecord,  1545  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 263)	
	TriggerAction( 1, AddNextFlag,  1545 , 10,7)
	RegCurTrigger(   15451 )

-------------------------------------------------------���������------------���
	DefineMission( 5138, "Goodbye to 7th Gate", 1546 )

	MisBeginTalk( "<t>Find <bLinda at (515, 2437)> in Solace Haven." )
	MisBeginCondition(NoRecord,1546)
	MisBeginCondition(HasRecord, 1545)
	MisBeginCondition(NoMission, 1546 )
	MisBeginAction(AddMission, 1546 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Find Solace Haven's <bLinda at (515, 2437)>")
	MisHelpTalk("<t>Young man,  I have feeling you would definitely pass the 8th Gate.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------���������
	DefineMission( 5139, "Goodbye to 7th Gate", 1546,COMPLETE_SHOW )-------------�մ�
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Forgiveness and love is the weapon to conquer the world!")
	MisResultCondition(NoRecord, 1546)
	MisResultCondition(HasMission, 1546)
	MisResultAction(ClearMission,1546)
	MisResultAction(SetRecord, 1546)

---------------------------------------------------------------------������

	DefineMission( 5140, "8th Gate", 1547 )

	MisBeginTalk( "<t>Here lies the 8th Gate of <bLove Deity>. You can only be called an expert if you can pass through here." )------�մ�
	MisBeginCondition(NoRecord, 1547 )
	MisBeginCondition(HasRecord, 1546 )
	MisBeginCondition(NoMission, 1547 )
	MisBeginAction(AddMission,  1547)
	MisBeginAction(AddTrigger,  15471, TE_KILL, 808, 8 )----------------����ʿ��
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 8 Deathsoul Soldiers and return to Linda")
	MisNeed(MIS_NEED_KILL,808,8, 10,8)

	MisResultTalk("<t>Your hard work has earned my respect. Love is the most purest thing. The most powerful warrior is one who can embrace the world with love!")
	MisHelpTalk("<t>They should be near the Naval Base or Underground Dock.")
	MisResultCondition(HasMission,  1547)
	MisResultCondition(NoRecord,  1547)
	MisResultCondition(HasFlag,  1547, 17 )
	MisResultAction(ClearMission,  1547 )
	MisResultAction(SetRecord,  1547  )
	MisResultAction(AddExp,3000000,3000000)
	MisResultAction(AddMoney,1000000,1000000)	
	MisResultAction(AddExpAndType,2,120000,120000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 808)	
	TriggerAction( 1, AddNextFlag,  1547 , 10,8)
	RegCurTrigger(   15471 )

-------------------------------------------------------�ս��ŵ�ָʾ------------�մ�
	DefineMission( 5141, "Instructions for last Gate", 1548 )

	MisBeginTalk( "<t>Here is the <rOracle>. Bring it to Langa for your answer." )
	MisBeginCondition(NoRecord,1548)
	MisBeginCondition(HasRecord, 1547)
	MisBeginCondition(NoMission, 1548 )
	MisBeginAction(AddMission, 1548 )
	MisBeginAction(GiveItem, 2917,1,4)----------------------------------------------------����
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Bring the Oracle to Langa")
	MisHelpTalk("<t>Go look for the answers with Goddess's Favor.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�ս��ŵ�ָʾ
	DefineMission( 5142, "Instructions for last Gate", 1548,COMPLETE_SHOW )-------------���ö�
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>To be able to get the Oracle shows that you have put in more effort than a normal man could.")
	MisResultCondition(NoRecord, 1548)
	MisResultCondition(HasMission, 1548)
	MisResultCondition(HasItem,2917,1)--------------����
	MisResultAction(TakeItem, 2917,1)-------------����
	MisResultAction(ClearMission,1548)
	MisResultAction(SetRecord, 1548)

	---------------------------------------------------------------------������������

	DefineMission( 5143, "Perfect Pirate Mission", 1549 )

	MisBeginTalk( "<t>Every well-known pirates have looks and brains. They also symbolises Courage and Strength. Find the mission that I have for you to prove that you are a perfect pirate." )------������
	MisBeginCondition(NoRecord, 1549 )
	MisBeginCondition(HasRecord, 1506 )
	MisBeginCondition(NoMission, 1549 )
	MisBeginAction(AddMission,  1549)
	MisBeginAction(AddTrigger,  15491, TE_KILL, 546, 10 )----------------а����Ϲ���ʿ
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 10 Evil Pumpkin Knight at (340, 1581) in Ascaron for Reyno")
	MisNeed(MIS_NEED_KILL,546,10, 10,10)

	MisResultTalk("<t>Good.")
	MisHelpTalk("<t>Don't breaks their pumpkin head��")
	MisResultCondition(HasMission,  1549)
	MisResultCondition(NoRecord,  1549)
	MisResultCondition(HasFlag,  1549, 19 )
	MisResultAction(ClearMission,  1549 )
	MisResultAction(SetRecord,  1549  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1549 , 10,10)
	RegCurTrigger(   15491 )



---------------------------------------------------------------------������������

	DefineMission( 5144, "Perfect Pirate Mission", 1550 )

	MisBeginTalk( "<t>Although I'm a trader, I have always wish to be a courageous knight and uphold peace for royalty and beauty. Errm can you help me get 2 legendary <bRoyal Swords>." )------������
	MisBeginCondition(NoRecord, 1550 )
	MisBeginCondition(HasRecord, 1549 )
	MisBeginCondition(NoMission, 1550 )
	MisBeginAction(AddMission,  1550)
	MisBeginAction(AddTrigger,  15501, TE_GETITEM, 4893, 2 )----------------�����彣
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Obtain 2 <bRoyal Swords> from Ascaron's Palace Guard at (435, 1690) for Reyno.")
	MisNeed(MIS_NEED_ITEM, 4893, 2, 10, 2)

	MisResultTalk("<t>Strong.")
	MisHelpTalk("<t>Do not disappoint me... I've been eyeing for treasured sword for a long time already.")
	MisResultCondition(HasMission,  1550)
	MisResultCondition(NoRecord,  1550)
	MisResultCondition(HasItem, 4893, 2)
	MisResultAction(TakeItem, 4893, 2 )
	MisResultAction(ClearMission,  1550 )
	MisResultAction(SetRecord,  1550  )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 4893)	
	TriggerAction( 1, AddNextFlag,  1550 , 10,2)
	RegCurTrigger(   15501 )


---------------------------------------------------------------------������������

	DefineMission( 5145, "Perfect Pirate Mission", 1551 )

	MisBeginTalk( "<t>I heard that because Dannis did something wrong when he was young, his chest hair was recently burnt. It's frightening just to think about it because i too did a lot of wrong things when I was that age. Come to think of it, I once removed the tail scales of a Little Siren. Although it was wrong of me, but it was a case of whoever strikes first." )------������
	MisBeginCondition(NoRecord, 1551 )
	MisBeginCondition(HasRecord, 1550 )
	MisBeginCondition(NoMission, 1551 )
	MisBeginAction(AddMission,  1551)
	MisBeginAction(AddTrigger,  15511, TE_KILL, 606, 3 )----------------��������
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 3 Dark Blue Siren at (1038, 2317) in Deep Blue for Reyno")
	MisNeed(MIS_NEED_KILL,606,3, 10,3)

	MisResultTalk("<t>Never do anything wrong. Do not lie to me especially.")
	MisHelpTalk("<t>Don't bother me!  I'm thinking what have I done...which shouldn't be done��")
	MisResultCondition(HasMission,  1551)
	MisResultCondition(NoRecord,  1551)
	MisResultCondition(HasFlag,  1551, 12 )
	MisResultAction(ClearMission,  1551 )
	MisResultAction(SetRecord,  1551  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1551 , 10,3)
	RegCurTrigger(   15511 )

---------------------------------------------------------------------������������

	DefineMission( 5146, "Perfect Pirate Mission", 1552 )

	MisBeginTalk( "<t>At another time, many years ago, I went to the beach. Out of curiosity, I stole a Bewitching Crystal from a  <bSiren Archer>. It so embarrassing. I wouldn't have reveal such things that would defile my reputation if not for  Dannis's incident." )------������
	MisBeginCondition(NoRecord, 1552 )
	MisBeginCondition(HasRecord, 1551 )
	MisBeginCondition(NoMission, 1552 )
	MisBeginAction(AddMission,  1552)
	MisBeginAction(AddTrigger,  15521, TE_KILL, 589, 3 )----------------��������
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Kill 3 Siren Archer in Deep Blue at (3634, 3808) and return to Reyno")
	MisNeed(MIS_NEED_KILL,589,3, 10,3)

	MisResultTalk("<t>Thank you for taking care of it for me, but I hope that you will help me maintain my reputation.")
	MisHelpTalk("<t>You have to eradicate them!")
	MisResultCondition(HasMission,  1552)
	MisResultCondition(NoRecord,  1552)
	MisResultCondition(HasFlag,  1552, 12 )
	MisResultAction(ClearMission,  1552 )
	MisResultAction(SetRecord,  1552  )
	MisResultAction(AddExp1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1552 , 10,3)
	RegCurTrigger(   15521 )

-------------------------------------------------------�յ׽���------------���׵���˹
	DefineMission( 5147, "The mystery has been solved", 1553 )

	MisBeginTalk( "<t>Very good! You have fulfil the requirements to meet with the Enlightened One. He is actually <bWeird Grampa>. This <bStone of Meng> was a gift from him. Show it to him and he will oblige you on my account." )
	MisBeginCondition(NoRecord,1553)
	MisBeginCondition(HasRecord, 1577)
	MisBeginCondition(NoMission, 1553 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------�ɵ�ʯ
	MisBeginAction(AddMission, 1553 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Bring the Stone of Meng to Icicle Haven's Weird Grampa at (808, 373)")
	MisHelpTalk("<t>I'm warning you, its not easy to handle Weird Grampa as rumored.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�յ׽���
	DefineMission( 5148, "The mystery has been solved", 1553,COMPLETE_SHOW )-------------����үү
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Don't bother me, I'm having some problems. I won't give face to anyone!")
	MisResultCondition(NoRecord, 1553)
	MisResultCondition(HasMission, 1553)
	MisResultCondition(HasItem, 2918, 1)------------�ɵ�ʯ
	MisResultAction(TakeItem, 2918, 1 )-----�ɵ�ʯ
	MisResultAction(ClearMission,1553)
	MisResultAction(SetRecord, 1553)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------�յ׽���------------���ö�
	DefineMission( 5149, "The mystery has been solved", 1554 )

	MisBeginTalk( "<t>Very good! You have fulfil the requirements to meet with the Enlightened One. He is actually <bWeird Grampa>. This <bStone of Meng> was a gift from him. Show it to him and he will oblige you on my account." )
	MisBeginCondition(NoRecord,1554)
	MisBeginCondition(HasRecord, 1548)
	MisBeginCondition(NoMission, 1554 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------�ɵ�ʯ
	MisBeginAction(AddMission, 1554 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Bring the Stone of Meng to Icicle Haven's Weird Grampa at (808, 373)")
	MisHelpTalk("<t>I'm warning you, its not easy to handle Weird Grampa as rumored.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�յ׽���
	DefineMission( 5150, "The mystery has been solved", 1554,COMPLETE_SHOW )-------------����үү
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Don't bother me, I'm having some problems. I won't give face to anyone!")
	MisResultCondition(NoRecord, 1554)
	MisResultCondition(HasMission, 1554)
	MisResultCondition(HasItem, 2918, 1)------------�ɵ�ʯ
	MisResultAction(TakeItem, 2918, 1 )-----�ɵ�ʯ
	MisResultAction(ClearMission,1554)
	MisResultAction(SetRecord, 1554)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------�յ׽���------------������
	DefineMission( 5151, "The mystery has been solved", 1555 )

	MisBeginTalk( "<t>With your intelligence now, you have earned the right to see the Enlightened One. He is actually <bWeird Grampa>. This <bStone of Meng> was a gift from him. Show it to him and he will oblige you on my account." )
	MisBeginCondition(NoRecord,1555)
	MisBeginCondition(HasRecord, 1552)
	MisBeginCondition(NoMission, 1555 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------�ɵ�ʯ
	MisBeginAction(AddMission, 1555 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Bring the Stone of Meng to Icicle Haven's Weird Grampa at (808, 373)")
	MisHelpTalk("<t>I'm warning you, its not easy to handle Weird Grampa as rumored.")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------�յ׽���
	DefineMission( 5152, "The mystery has been solved", 1555,COMPLETE_SHOW )-------------����үү
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Don't bother me, I'm having some problems. I won't give face to anyone!")
	MisResultCondition(NoRecord, 1555)
	MisResultCondition(HasMission, 1555)
	MisResultCondition(HasItem, 2918, 1)------------�ɵ�ʯ
	MisResultAction(TakeItem, 2918, 1 )-----�ɵ�ʯ
	MisResultAction(ClearMission,1555)
	MisResultAction(SetRecord, 1555)
	MisResultAction(SetRecord, 1556)

------------------------------------------------------�����ǵľ���------------����үү
	DefineMission( 5169, "Dispute of the Old", 1557 )

	MisBeginTalk( "<t>You are asking who annoyed me? Ask Granny Dong at (795, 363) in Icicle Haven and you will know the answer." )
	MisBeginCondition(NoRecord,1557)
	MisBeginCondition(HasRecord, 1556)
	MisBeginCondition(NoMission, 1557 )
	MisBeginAction(AddMission, 1557 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>Look for Granny Dong")
	MisHelpTalk("<t>Granny Dong is a stubborn and troublesome old lady.")
	MisResultCondition(AlwaysFailure)


	--------------------------------------------------------�����ǵľ���
	DefineMission( 5153, "Dispute of the Old", 1557,COMPLETE_SHOW )-------------����������
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Why did I quarrel with him? Does it mean that I'm old, I can no longer uphold the truth? After choosing <rHello>, answer my question.")
	MisResultCondition(NoRecord, 1557)
	MisResultCondition(HasMission, 1557)
	MisResultAction(ClearMission,1557)
	MisResultAction(SetRecord, 1557)
	
---------------------------------------------------------------------��̫�ŵ��ǻ�

	DefineMission( 5154, "Granny's Intellect", 1561 )

	MisBeginTalk( "<t>Since you are a person of talent, I'll ask you another question." )------����������
	MisBeginCondition(NoRecord,1561)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1559)
	MisBeginCondition(NoMission, 1561 )
	MisBeginAction(AddMission, 1561 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Click on <rHello Again!> and answer question from Granny Dong")
	
	MisResultTalk("<t>Solve more intellectual questions and you can be as clever as me.")
	MisHelpTalk("<t>Thinking deep is a hobby of an Enlightened One. Of course I do have this hobby.")
	MisResultCondition(NoRecord, 1561)
	MisResultCondition(HasMission, 1561)
	MisResultCondition(HasRecord, 1562)
	MisResultCondition(HasRecord, 1564)
	MisResultAction(ClearMission,1561)
	MisResultAction(SetRecord, 1561)
	

---------------------------------------------------------------------���ƴ�Ⱦ��

	DefineMission( 5155, "Cure infectious disease", 1566 )-----����������

	MisBeginTalk( "<t>You actually answered such a simple question wrongly. You must have been infected with Weird Grampa's senile disease. You need to undergo surgery to recover. Go learn how to make Grenade now." )------����������
	MisBeginCondition(NoRecord,1566)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1560)
	MisBeginCondition(NoMission, 1566 )
	MisBeginAction(AddMission, 1566 )
	MisBeginAction(AddTrigger,  15661, TE_GETITEM, 2743, 1 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Make 1 Lv3 Grenade for Granny Dong")
	MisNeed(MIS_NEED_ITEM,2743,1, 10, 1)

	MisResultTalk("<t>Not bad, it might be a misunderstanding that you have been infected.")
	MisHelpTalk("<t>This is the punishment towards you!")
	MisResultCondition(NoRecord, 1566)
	MisResultCondition(HasMission, 1566)
	MisResultCondition(HasItem, 2743, 1)
	MisResultAction(TakeItem,  2743, 1 )
	MisResultAction(ClearMission,1566)
	MisResultAction(SetRecord, 1566)
	MisResultAction(SetRecord, 1559)


	InitTrigger()
	TriggerCondition( 1, IsItem,2743)	
	TriggerAction( 1, AddNextFlag, 1566, 10, 1 )
	RegCurTrigger( 15661 )
---------------------------------------------------------------------�ֶ����Ʒ�

	DefineMission( 5156, "Manual Healing", 1567 )-----����������

	
	MisBeginTalk( "<t>You actually answered such a simple question wrongly. You must have been infected with Weird Grampa's senile disease. You need to undergo surgery to recover. Go learn how to make Flash Bomb now." )------����������
	MisBeginCondition(NoRecord,1567)
	MisBeginCondition(HasRecord, 1562)
	MisBeginCondition(HasRecord, 1565)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(NoMission, 1567 )
	MisBeginAction(AddMission, 1567 )
	MisBeginAction(AddTrigger,  15671, TE_GETITEM, 2744, 1 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Make 1 Lv3 Flash Bomb for Granny Dong")
	MisNeed(MIS_NEED_ITEM,2744,1, 10, 1)

	MisResultTalk("<t>Not bad, it might be a misunderstanding that you have been infected.")
	MisHelpTalk("<t>This is the punishment towards you!")
	MisResultCondition(NoRecord, 1567)
	MisResultCondition(HasMission, 1567)
	MisResultCondition(HasItem, 2744, 1)
	MisResultAction(TakeItem,  2744, 1 )
	MisResultAction(ClearMission,1567)
	MisResultAction(SetRecord, 1567)
	


	InitTrigger()
	TriggerCondition( 1, IsItem,2744)	
	TriggerAction( 1, AddNextFlag, 1567, 10, 1 )
	RegCurTrigger( 15671 )



-------------------------------------------------------�����ػ���-----------------����������
	DefineMission( 5157, "Guardian of Truth", 1568 )

	MisBeginTalk( "<t>You have been appointed Guardian of Truth by the great Granny Dong. Go and talk to Weird Grampa and let him think it over." )
	MisBeginCondition(NoRecord,1568)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(HasRecord, 1564)
	MisBeginCondition(NoMission, 1568 )
	MisBeginAction(AddMission, 1568 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "<t>Look for Weird Grampa")
	MisHelpTalk("<t>Get going now! The world's future depend on you youngster.")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------------�����ػ���
	DefineMission( 5158, "Guardian of Truth", 1568,COMPLETE_SHOW )-------------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You mean Granny Dong has admitted failure? You aren't joking with me, are you? Wahaha looks like the truth is in the hands of wise men like me, though we are far and few. You are hereby appointed Guardian of Truth by the great Weird Grampa!")
	MisResultCondition(NoRecord, 1568)
	MisResultCondition(HasMission, 1568)
	MisResultAction(ClearMission,1568)
	MisResultAction(SetRecord, 1568)
	MisResultAction(SetRecord, 1571)


	-------------------------------------------------------�����ػ���-----------------����������
	DefineMission( 5159, "Guardian of Truth", 1569 )

	MisBeginTalk( "<t>You have been appointed Guardian of Truth by the great Granny Dong. Go and talk to Weird Grampa and let him think it over." )
	MisBeginCondition(NoRecord,1569)
	MisBeginCondition(HasRecord, 1567)
	MisBeginCondition(NoMission, 1569 )
	MisBeginAction(AddMission, 1569 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "<t>Look for Weird Grampa")
	MisHelpTalk("<t>Get going now! The world's future depend on you youngster.")
	
	MisResultCondition(AlwaysFailure)


--------------------------------------------------------�����ػ���

	DefineMission( 5160, "Guardian of Truth", 1569,COMPLETE_SHOW )-------------����
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>You mean Granny Dong has admitted failure? You aren't joking with me, are you? Wahaha looks like the truth is in the hands of wise men like me, though we are far and few. You are hereby appointed Guardian of Truth by the great Weird Grampa!")
	MisResultCondition(NoRecord, 1569)
	MisResultCondition(HasMission, 1569)
	MisResultAction(ClearMission,1569)
	MisResultAction(SetRecord, 1569)
	MisResultAction(SetRecord, 1571)

	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,20000,20000)
-----------------------------------------------------���ص�����

	DefineMission( 5161, "Mysterious Curse",1570 )

	MisBeginTalk( "<t>You seems to be idling. Why don't you give me a hand? I have always wanted to research on the remedy for ancient curses. According to sources, there is a card with ancient curse incantations on Deathsoul Gunboat at the Caribean. I would like very much to research on it." )
	MisBeginCondition(NoRecord, 1570)
	MisBeginCondition(HasRecord, 1571)
	MisBeginCondition(NoMission,1570 )
	MisBeginAction(AddMission, 1570)
	MisBeginAction(AddTrigger, 15701, TE_GETITEM, 2408, 1 )		--����AB
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Get Password AB from Deathsoul Gunboat for Weird Grampa")
	MisNeed(MIS_NEED_ITEM,2408,1, 10, 1)
	
	MisResultTalk("<t>Hurry and take a look! There's like nothing on it...Could it be the Heavenly Book?")
	MisHelpTalk("<t>Deathsoul Gunboat often appears at Naval Base.")
	MisResultCondition(HasMission, 1570)
	MisResultCondition(NoRecord,1570)
	MisResultCondition(HasItem,2408,1 )
	MisResultAction(TakeItem, 2408,1 )
	MisResultAction(ClearMission, 1570)
	MisResultAction(SetRecord,1570)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2408)	
	TriggerAction( 1, AddNextFlag,  1570, 10,1)
	RegCurTrigger( 15701 )

----------------------------------------------------���ص�����

	DefineMission( 5162, "Mysterious Curse",1572 )

	MisBeginTalk( "<t>Theres nothing special about this curse. But since there is Password AB, then there must be Password BC. Find it for me so that I can make something out of this." )
	MisBeginCondition(NoRecord, 1572)
	MisBeginCondition(HasRecord, 1570)
	MisBeginCondition(NoMission,1572 )
	MisBeginAction(AddMission, 1572)
	MisBeginAction(AddTrigger, 15721, TE_GETITEM, 2409, 1 )		--����BC
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Defeat Deathsoul Speed Boat and obtain Password BC for Weird Grampa")
	MisNeed(MIS_NEED_ITEM,2409,1, 10, 1)
	
	MisResultTalk("<t>Hurry and give it to me, I have a feeling that I may be on to something.")
	MisHelpTalk("<t>Deathsoul Speed Boat can be found at Naval Base.")
	MisResultCondition(HasMission, 1572)
	MisResultCondition(NoRecord,1572)
	MisResultCondition(HasItem,2409,1 )
	MisResultAction(TakeItem, 2409,1 )
	MisResultAction(ClearMission, 1572)
	MisResultAction(SetRecord,1572)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2409)	
	TriggerAction( 1, AddNextFlag,  1572, 10,1)
	RegCurTrigger( 15721 )


	----------------------------------------------------���ص�����

	DefineMission( 5163, "Mysterious Curse",1573 )

	MisBeginTalk( "<t>My research shows that I still need something called Password CD." )
	MisBeginCondition(NoRecord, 1573)
	MisBeginCondition(HasRecord, 1572)
	MisBeginCondition(NoMission,1573 )
	MisBeginAction(AddMission, 1573)
	MisBeginAction(AddTrigger, 15731, TE_GETITEM, 2410, 1 )		--����CD
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Obtain Password CD from Deathsoul Soldier and give to Weird Grampa")
	MisNeed(MIS_NEED_ITEM,2410,1, 10, 1)
	
	MisResultTalk("<t>Don't give me that look.. I really do have a feeling that I'm going to discover something this time.")
	MisHelpTalk("<t>Deathsoul Soldier often appears at Naval Base")
	MisResultCondition(HasMission, 1573)
	MisResultCondition(NoRecord,1573)
	MisResultCondition(HasItem,2410,1 )
	MisResultAction(TakeItem, 2410,1 )
	MisResultAction(ClearMission, 1573)
	MisResultAction(SetRecord,1573)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2410)	
	TriggerAction( 1, AddNextFlag,  1573, 10,1)
	RegCurTrigger( 15731 )


----------------------------------------------------���ص�����

	DefineMission( 5164, "Mysterious Curse",1574 )

	MisBeginTalk( "<t>You don't look stupid, why didn't you bring back Password DE as well? Now I can't continue with my research." )
	MisBeginCondition(NoRecord, 1574)
	MisBeginCondition(HasRecord, 1573)
	MisBeginCondition(NoMission,1574 )
	MisBeginAction(AddMission, 1574)
	MisBeginAction(AddTrigger, 15741, TE_GETITEM, 2411, 1 )		--����DE
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Get Password DE from Deathsoul Soldier for Weird Grampa")
	MisNeed(MIS_NEED_ITEM,2411,1, 10, 1)
	
	MisResultTalk("<t>I can feel your discontentment..")
	MisHelpTalk("<t>Deathsoul Soldier often appears at Naval Base")
	MisResultCondition(HasMission, 1574)
	MisResultCondition(NoRecord,1574)
	MisResultCondition(HasItem,2411,1 )
	MisResultAction(TakeItem, 2411,1 )
	MisResultAction(ClearMission, 1574)
	MisResultAction(SetRecord,1574)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2411)	
	TriggerAction( 1, AddNextFlag,  1574, 10,1)
	RegCurTrigger( 15741 )


----------------------------------------------------���ص�����

	DefineMission( 5165, "Mysterious Curse",1575 )

	MisBeginTalk( "<t>By now you should know what's the next thing you need to obtain. Those are actually the main research content for the curse!" )
	MisBeginCondition(NoRecord, 1575)
	MisBeginCondition(HasRecord, 1574)
	MisBeginCondition(NoMission,1575 )
	MisBeginAction(AddMission, 1575)
	MisBeginAction(AddTrigger, 15751, TE_GETITEM, 2412, 1 )		--����EF
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Get Password EF from Deathsoul Officer for Weird Grampa")
	MisNeed(MIS_NEED_ITEM,2412,1, 10, 1)
	
	MisResultTalk("<t>I'll let you know the results later��")
	MisHelpTalk("<t>Deathsoul Officer often appears at Underground Docks, Armory or Research Shelter. ")
	MisResultCondition(HasMission, 1575)
	MisResultCondition(NoRecord,1575)
	MisResultCondition(HasItem,2412,1 )
	MisResultAction(TakeItem, 2412,1 )
	MisResultAction(ClearMission, 1575)
	MisResultAction(SetRecord,1575)
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,400000,400000)	
	MisResultAction(AddExpAndType,2,80000,80000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2412)	
	TriggerAction( 1, AddNextFlag,  1575, 10,1)
	RegCurTrigger( 15751 )


----------------------------------------������о����
     DefineMission(5166,"Seal Research Outcome",1576)
     MisBeginTalk("<t>I'll let you know the results later��")
     MisBeginCondition(NoRecord,1576)
      MisBeginCondition(NoMission, 1576)
     MisBeginCondition(HasRecord, 1575)
     MisBeginAction(AddMission, 1576)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "Wait for Weird Grampa to tell you his research results.")
     MisHelpTalk("<t>Please be patient��")
      MisResultTalk("<t>These cards have actually nothing to do with the curse. I have been tricked! Don't worry, I'll still give you something.")
     MisResultCondition(HasRecord, 1576)---------Ӧ��ΪNoRecord
     MisResultCondition(HasMission, 1576)
     MisResultAction(ClearMission, 1576 )
     MisResultAction(SetRecord, 1576 )



end
HistoryMission001()