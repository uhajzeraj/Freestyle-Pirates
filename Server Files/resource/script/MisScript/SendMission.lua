--------------------------------------------------------------------------
--									--
--									--
--		SendMission.lua Created by knight 2005.3.9.		--
--									--
--�ű���Ϣ����								--
--------------------------------------------------------------------------
print( "Loading SendMission.lua" )


--����NPC��������еģ����Ž������������Ϣ��
function TestDefMission( id, name, misid, npcid, areaid )
	DefineMission( id, name, misid, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisReultTalk("лл����ҵİ����͹�����")
	
	MisResultCondition( HasRandMissionNpc, misid, npcid, areaid )
	MisResultCondition( NoRandNpcItemFlag, misid, npcid )
	
	MisResultAction( TakeRandNpcItem, misid, npcid )
end

--����
--TestDefMission( 1, "���صİ���", 8, 3, 1 )
--TestDefMission( 2, "ɳᰴ���ʹ�İ���", 8, 4, 1 )
