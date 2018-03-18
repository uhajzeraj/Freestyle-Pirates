--------------------------------------------------------------------------
--									--
--									--
--				AddHelpNPC.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading AddHelpNPC.lua" )
print( "Loading Ticket & Portal delay" )
print( "Loading DONE!" )
print( "------------------------------------" )

 original_MoveCity = MoveCity 
 MoveCity = function ( role , destination , copy_id) 
        _G[GetChaDefaultName(role).."_move"] = { city = destination,copy = copy_id} 
 end 

ClearHelpNPC()
AddHelpNPC("Drunkyard - Anthony")