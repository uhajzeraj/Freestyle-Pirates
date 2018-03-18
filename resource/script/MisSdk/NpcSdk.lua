------------------------------------------------------------
--NPC
------------------------------------------------------------
print( "----------Server Files by........zureXC-- -----------" )
print( "----------GameServer Edited by...zureXC-- -----------" )
print( " " )
print( "----------------------------------------" )
print( "Loading SDK Files:" )
print( "----------------------------------------" )
print( "Loading NpcSdk.lua" )
------------------------------------------------------------

----Script Begins:

CMD_MC_BASE				= 500
CMD_MC_ROLEBASE 			= CMD_MC_BASE + 300
CMD_MC_TALKPAGE 			= CMD_MC_ROLEBASE + 1
CMD_MC_FUNCPAGE 		= CMD_MC_ROLEBASE + 2
CMD_MC_CLOSETALK 		= CMD_MC_ROLEBASE + 3
CMD_MC_HELPINFO			= CMD_MC_ROLEBASE + 4  -- 帮助信息
CMD_MC_TRADEPAGE		= CMD_MC_ROLEBASE + 5
CMD_MC_TRADERESULT	= CMD_MC_ROLEBASE + 6
CMD_MC_TRADE_DATA		= CMD_MC_ROLEBASE + 7 -- NPC交易数据信息更新
CMD_MC_TRADE_ALLDATA	= CMD_MC_ROLEBASE + 8 -- NPC交易所有数据信息更新

CMD_MC_MISSION			= CMD_MC_ROLEBASE + 22
CMD_MC_MISSIONLIST		= CMD_MC_ROLEBASE + 23
CMD_MC_MISSIONTALK		= CMD_MC_ROLEBASE + 24
CMD_MC_MISPAGE			= CMD_MC_ROLEBASE + 27 -- 任务页信息
CMD_MC_MISLOG				= CMD_MC_ROLEBASE + 28 -- 任务日志
CMD_MC_MISLOGINFO		= CMD_MC_ROLEBASE + 29 -- 单个任务详细信息
CMD_MC_BEGIN_ITEM_FORGE   = CMD_MC_ROLEBASE + 35 -- 精练道具
CMD_MC_BEGIN_ITEM_UNITE   = CMD_MC_ROLEBASE + 36 -- 道具合成

CMD_MC_CREATEBOAT		= CMD_MC_ROLEBASE + 38 -- 创建船只
CMD_MC_UPDATEBOAT		= CMD_MC_ROLEBASE + 39 -- 改造船只
CMD_MC_UPDATEBOAT_PART	= CMD_MC_ROLEBASE + 40 -- 改造船只的部件
CMD_MC_BERTH_LIST		= CMD_MC_ROLEBASE + 41 -- 船只停泊列表
CMD_MC_BOAT_LIST		= CMD_MC_ROLEBASE + 42 -- 同步角色拥有的所有船只属性
CMD_MC_BOAT_ADD			= CMD_MC_ROLEBASE + 43 -- 添加一艘船
CMD_MC_BOAT_CLEAR		= CMD_MC_ROLEBASE + 44 -- 清除一艘船
CMD_MC_BOATINFO			= CMD_MC_ROLEBASE + 45 -- 同步船只属性信息
CMD_MC_BOAT_BAGLIST	= CMD_MC_ROLEBASE + 46 -- 显示可以打包的船只列表

--客户端发送命令消息协议定义
CMD_CM_BASE				= 0
CMD_CM_ROLEBASE 			= CMD_CM_BASE + 300
CMD_CM_REQUESTTALK 	= CMD_CM_ROLEBASE + 1
CMD_CM_TALKPAGE			= CMD_CM_ROLEBASE + 2
CMD_CM_FUNCITEM 		= CMD_CM_ROLEBASE + 3
CMD_CM_REQESTTRADE    = CMD_CM_ROLEBASE + 8
CMD_CM_TRADEITEM		= CMD_CM_ROLEBASE + 9
CMD_CM_REQUESTAGENCY= CMD_CM_ROLEBASE + 10
CMD_CM_MISSION			= CMD_CM_ROLEBASE + 22
CMD_CM_MISSIONLIST		= CMD_CM_ROLEBASE + 23
CMD_CM_MISSIONTALK		= CMD_CM_ROLEBASE + 24
CMD_CM_MISLOG				= CMD_CM_ROLEBASE + 25 -- 任务日志

--黑市交易
CMD_MC_BLACKMARKET_EXCHANGEDATA	= CMD_MC_BASE + 71	-- 黑市兑换数据
CMD_MC_BLACKMARKET_EXCHANGEUPDATE = CMD_MC_BASE + 73	-- 黑市兑换更新
CMD_MC_BLACKMARKET_TRADEUPDATE = CMD_MC_BASE + 74	-- 黑市交易更新
CMD_MC_EXCHANGEDATA = CMD_MC_BASE + 75
CMD_CM_BLACKMARKET_EXCHANGE_REQ = CMD_CM_BASE + 51


--对话页命令信息
ROLE_FIRSTPAGE				= 0		-- 请求初次对话信息
ROLE_CLOSEPAGE			= -1		-- 请求关闭对话页命令

--交易宏信息定义
ROLE_MAXNUM_TRADEITEM = 60	--每个交易页最大摆放物品数量
ROLE_INVALID_ID				= -1		--无效的索引

--交易物品类型定义
WEAPON 						= 0		--武器类型
DEFENCE 						= 1 		--防具类型
OTHER    						= 2		--杂项类型
SYNTHESIS 					= 3		--合成物品类型

TRADE_SALE					= 0       --出售物品操作
TRADE_BUY						= 1       --购买物品操作
TRADE_GOODS				= 2 		--交易船舱货物

ROLE_TRADE_SALE				= 0	--请求出售物品
ROLE_TRADE_BUY				= 1	--请求购买物品
ROLE_TRADE_SALE_GOODS 	= 2	--请求出售货舱物品
ROLE_TRADE_BUY_GOODS		= 3	--请求购买货舱物品
ROLE_TRADE_SELECT_BOAT   = 4   --选择交易的船只

--船只显示列表类型
BERTH_TRADE_LIST				= 0	-- 交易船只列表
BERTH_LUANCH_LIST			= 1	-- 出海船只列表
BERTH_REPAIR_LIST				= 3	-- 船只修理列表
BERTH_SALVAGE_LIST			= 4	-- 船只打捞列表
BERTH_SUPPLY_LIST			= 5	-- 船只补给列表
BERTH_BOATLEVEL_LIST		= 6	-- 船只升级列表

--资源类型
RES_WOOD							= 0	--木材资源
RES_MINE							= 1	--矿石资源

--对话宏定义
ROLE_MAXNUM_PAGEITEM	= 9

--帮助信息类型
MIS_HELP_DESP				= 0		--文字帮助信息
MIS_HELP_IMAGE				= 1		--图形帮助信息
MIS_HELP_SOUND			= 2		--声音帮助信息
MIS_HELP_BICKER			= 3		--闪动字体信息

--发送对话页函数
function SendTalkPage( character, npc, pageid, desp )
	local packet = GetPacket();
	WriteCmd( packet, CMD_MC_TALKPAGE );
	local npcid = GetCharID( npc );
	WriteDword( packet, npcid );
	WriteByte( packet, pageid );
	WriteString( packet, desp );
	SendPacket( character, packet );
end

--向客户端发送兑换数据
function SendExchangeData( character, npc )
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_BLACKMARKET_EXCHANGEDATA )
	local npcid = GetCharID( npc )
	WriteDword( packet, npcid )
	
	if Exchange.count ~= nil then
		WriteWord( packet, Exchange.count )
		
		for n = 1, Exchange.count, 1 do
			WriteWord( packet, Exchange.srcid[n] )
			WriteWord( packet, Exchange.srcnum[n] )
			WriteWord( packet, Exchange.tarid[n] )
			WriteWord( packet, Exchange.tarnum[n] )
			WriteWord( packet, Exchange.timenum[n] )
		end
	else
		WriteWord( packet, 0 )
	end
	
	SendPacket( character, packet );
end

function SendExchangeData2( character, npc )
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_BLACKMARKET_EXCHANGEDATA )
	local npcid = GetCharID( npc )
	WriteDword( packet, npcid )
 
	if Exchange2.count ~= nil then
		WriteWord( packet, Exchange2.count )
 
		for n = 1, Exchange2.count, 1 do
			WriteWord( packet, Exchange2.srcid[n] )
			WriteWord( packet, Exchange2.srcnum[n] )
			WriteWord( packet, Exchange2.tarid[n] )
			WriteWord( packet, Exchange2.tarnum[n] )
			WriteWord( packet, Exchange2.timenum[n] )
		end
	else
		WriteWord( packet, 0 )
	end
 
	SendPacket( character, packet );
end

function SendExchangeData3( character, npc )
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_BLACKMARKET_EXCHANGEDATA )
	local npcid = GetCharID( npc )
	WriteDword( packet, npcid )
 
	if Exchange3.count ~= nil then
		WriteWord( packet, Exchange3.count )
 
		for n = 1, Exchange3.count, 1 do
			WriteWord( packet, Exchange3.srcid[n] )
			WriteWord( packet, Exchange3.srcnum[n] )
			WriteWord( packet, Exchange3.tarid[n] )
			WriteWord( packet, Exchange3.tarnum[n] )
			WriteWord( packet, Exchange3.timenum[n] )
		end
	else
		WriteWord( packet, 0 )
end
 
	SendPacket( character, packet );
end

function SendExchangeXData( character, npc, exchangeData )
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_EXCHANGEDATA )
	local npcid = GetCharID( npc )
	WriteDword( packet, npcid )
	
	if exchangeData.count ~= nil then
		WriteWord( packet, exchangeData.count )
		
		for n = 1, exchangeData.count, 1 do
			WriteWord( packet, exchangeData.srcid[n] )
			WriteWord( packet, exchangeData.srcnum[n] )
			WriteWord( packet, exchangeData.tarid[n] )
			WriteWord( packet, exchangeData.tarnum[n] )
		end
	else
		WriteWord( packet, 0 )
	end
	
	SendPacket( character, packet );
end

--向客户端发送兑换更新数据
function SendExchangeUpdateData( character, npc )
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_BLACKMARKET_EXCHANGEUPDATE )
	local npcid = GetCharID( npc )
	WriteDword( packet, npcid )
	
	if Exchange.count ~= nil then
		WriteWord( packet, Exchange.count )
		
		for n = 1, Exchange.count, 1 do
			WriteWord( packet, Exchange.srcid[n] )
			WriteWord( packet, Exchange.srcnum[n] )
			WriteWord( packet, Exchange.tarid[n] )
			WriteWord( packet, Exchange.tarnum[n] )
			WriteWord( packet, Exchange.timenum[n] )
		end
	else
		WriteWord( packet, 0 )
	end
	
	SynPacket( npc, packet )
end

function SendDebugPage( character, npc, info )
	local packet = GetPacket();
	WriteCmd( packet, CMD_MC_TALKPAGE );
	local npcid = GetCharID( npc );
	WriteDword( packet, npcid );
	WriteByte( packet, ROLE_CLOSEPAGE );
	WriteString( packet, info );
	SendPacket( character, packet );
end

--发送服务器提示帮助页信息
function HelpInfo( character, tp, info )
	PRINT( "HelpInfo" )
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_HELPINFO )
	WriteByte( packet, tp )

	if tp == MIS_HELP_SOUND then
		WriteWord( packet, info )
	else
		WriteString( packet, info )
	end

	SendPacket( character, packet );
end

--发送功能页函数
function SendFuncPage( character, npc, pageid, item, count )
	local packet = GetPacket();
	WriteCmd( packet, CMD_MC_FUNCPAGE );
	local npcid = GetCharID( npc );
	WriteDword( packet, npcid );
	WriteByte( packet, pageid );
	WriteByte( packet, count );
	--PRINT( "发送功能页函数，count = ", count )
	for i = 1, count, 1 do
		--PRINT( "发送功能页函数，i = ", i, item[i] )
		if item[i] ~= nil then
			WriteString( packet, item[i] )
		else
			WriteString( packet, "错误选项信息！" )
		end
	end
	SendPacket( character, packet );
end

--发送页信息
function SendPage( character, npc, pageid, talk, item, count )
	local packet = GetPacket();
	WriteCmd( packet, CMD_MC_FUNCPAGE );
	local npcid = GetCharID( npc );
	WriteDword( packet, npcid );
	WriteByte( packet, pageid );
	WriteString( packet, talk );
	WriteByte( packet, count );
	--PRINT( "发送功能页函数，count = ", count )
	for i = 1, count, 1 do
		--PRINT( "发送功能页函数，i = ", i, item[i] )
		if item[i] ~= nil then
			WriteString( packet, item[i] )
		else
			WriteString( packet, "错误选项信息！" )
		end
	end
	SendPacket( character, packet );
end

--发送含任务列表信息对话页
function SendMissionPage( character, npc, pageid, talk, item, count, misitem, misnum )
	PRINT( "SendMissionPage" )
	local packet = GetPacket();
	WriteCmd( packet, CMD_MC_FUNCPAGE );
	local npcid = GetCharID( npc );
	WriteDword( packet, npcid );
	WriteByte( packet, pageid );
	WriteString( packet, talk );
	WriteByte( packet, count );
	--PRINT( "发送功能页函数，count = ", count )
	for i = 1, count, 1 do
		--PRINT( "发送功能页函数，i = ", i, item[i] )
		if item[i] ~= nil then
			WriteString( packet, item[i] )
		else
			WriteString( packet, "错误选项信息！" )
		end
	end
	WriteByte( packet, misnum )
	PRINT( "发送任务列表信息，count ="..misnum )
	for n = 1, misnum, 1 do
		PRINT( "名称：状态：", misitem[n].name, misitem[n].state )
		WriteString( packet, misitem[n].name )
		WriteByte( packet, misitem[n].state )
	end
	SendPacket( character, packet );
end

--关闭对话函数
function SendClosePage( character, npc )
	local packet = GetPacket();
	WriteCmd( packet, CMD_MC_CLOSETALK );
	local npcid = GetCharID( npc );
	WriteDword( packet, npcid );
	SendPacket( character, packet );
end

--发送任务列表信息
function SendMissionList( character, npc, missionlist, itemid, optype, listtype )
	PRINT( "SendMissionList, itemid, optype, listtype", itemid, optype, listtype )
	local npcid = GetCharID( npc )
	local ret, num = GetNumMission( character, npcid, listtype )
	if ret ~= LUA_TRUE then
		PRINT( "SendMissionList:获取角色的任务列表信息数量失败！" )
		return SystemNotice( character, "SendMissionList:获取角色的任务列表信息数量失败！" )
	end
	PRINT( "itemid = %d, num = %d", itemid, num )
	if itemid >= num then
		PRINT( "SendMissionList:参数itemid错误！" )
		return SystemNotice( character, "SendMissionList:参数itemid错误！" )
	end

	PRINT( "SendMissionList:计算页索引信息！" )
	local count, previd, nextid, itemnum = 1, 0, 0, 0
	local item = {}

	--计算起始第一行索引
	if optype == MIS_NEXT then
		previd = itemid + 1
		nextid = num - itemid
	else
		if itemid <= 8 then
			previd = 1
			if num >= 8 then
				nextid = 8
			else
				nextid = num
			end
		else
			previd = itemid - 8
			nextid = itemid
		end
	end

	--计算最后一行索引
	PRINT( "SendMissionList:previd = %d, nextid = %d", previd, nextid )
	for n = previd, nextid, 1 do
		itemnum = n
		local index = n - 1
		PRINT( "index = ", index )
		local ret, id, step = GetMissionInfo( character, npcid, listtype, index )
		if ret ~= LUA_TRUE then
			break
		end
		PRINT( "SendMissionList:missionid = %d, step = %d", id, step )
		if missionlist[id] == nil or missionlist[id].name == nil then
			item[count] = "错误：任务索引或者名称不存在！"
		else
			item[count] = missionlist[id].name
		end
		count = count + 1
	end

	--发送列表信息
	PRINT( "SendMissionList:发送列表信息" )
	if count < 1 then
		PRINT( "SendMissionList:没有下一页或者上一页信息！" )
		return SystemNotice( character, "SendMissionList:没有下一页或者上一页信息！" )
	end

	previd = previd - 1
	nextid = nextid - 1
	PRINT( "SendMissionList:previd = %d, nextid = %d, count = %d", previd, nextid, count )
	PRINT( "SendMissionList:sendpacket" )
	--发送报文信息
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_MISSION )
	local npcid = GetCharID( npc )
	WriteDword( packet, npcid )
	WriteByte( packet, listtype )
	WriteByte( packet, previd )
	WriteByte( packet, nextid )

	PRINT( "SendMissionList:填写页信息！, previd, nextid ", previd, nextid )
	--设置页
	if previd == 0 then
		PRINT( "SendMissionList:填写页信息！prev = end" )
		WriteByte( packet, MIS_PREV_END )
	else
		PRINT( "SendMissionList:填写页信息！prev = prev" )
		WriteByte( packet, MIS_PREV )
	end
	local endid = num - 1
	if nextid == endid then
		PRINT( "SendMissionList:填写页信息！next = end" )
		WriteByte( packet, MIS_NEXT_END )
	else
		PRINT( "SendMissionList:填写页信息！next = next" )
		WriteByte( packet, MIS_NEXT )
	end

	WriteByte( packet, count - 1 )
	for i = 1, count - 1, 1 do
		PRINT( item[i] )
		WriteString( packet, item[i] )
	end
	PRINT( "SendMissionPage" )
	SendPacket( character, packet )
	SetMissionPage( character, npcid, previd, nextid, listtype )
	return LUA_TRUE
end

--执行页跳转命令
function JumpPage( character, npc, page, param )
	if page == nil or param == nil or page[param] == nil then
		return SystemNotice( character, "JumpPage:函数参数错误！" )
	end
	if page[param][1] == nil then
		return SystemNotice( character, "JumpPage:页信息不能为空！" )
	end
	--提取对话信息
	local talk = ""
	if page[param][1] ~= nil and page[param][1].talk ~= nil then
		talk = page[param][1].talk
	end

	--提取选择项信息
	local FuncItem = {}
	local count = 0
	PRINT( "JumpPage:page item count = ", page[param].count )
	local funcnum = 8
	if page[param].count ~= nil then
		funcnum = page[param].count
	end

	for i = 1, funcnum, 1 do
		if page[param][i] == nil then
			break
		end
		if page[param][i].talk == nil then
			count = count + 1
			FuncItem[count] = page[param][i].text
			PRINT( "JumpPage:", FuncItem[count] )
		end
	end
	PRINT( "JumpPage, ismission = ", page[param].ismission )
	if page[param].ismission == nil or GetNpcHasMission( npc ) ~= LUA_TRUE then
		PRINT( "JumpPage3:SendMissioniPage, pageid, talk, funcitem, count, misitem, misnum", param, talk, FuncItem, count, nil, 0 )
		return SendMissionPage( character, npc, param, talk, FuncItem, count, nil, 0 )
	end

	--提取任务列表信息
	local misnum = 0
	local MisItem = {}
	local ret, NpcInfoID = GetScriptID( npc )
	PRINT( "JumpPage:GetScriptID: ret =  , NpcInfoID = ", ret, NpcInfoID )
	if ret ~= LUA_TRUE or NpcInfoList[NpcInfoID] == nil or NpcInfoList[NpcInfoID].missionlist == nil then
		PRINT( "JumpPage1:SendMissioniPage, pageid, talk, funcitem, count, misitem, misnum", param, talk, FuncItem, count, MisItem, misnum )
		return SendMissionPage( character, npc, param, talk, FuncItem, count, MisItem, misnum )
	end

	local missionlist = NpcInfoList[NpcInfoID].missionlist
	local npcid = GetCharID( npc )
	ret, misnum = GetNumMission( character, npcid )

	--获取任务列表
	PRINT( "JumpPage:misnum = ", misnum )
	for n = 1, misnum, 1 do
		local ret, id, state = GetMissionInfo( character, npcid, n - 1 )
		PRINT( "JumpPage:missionid = %d, state = %d", id, state )
		if missionlist[id] == nil or missionlist[id].name == nil then
			MisItem[n] = {}
			MisItem[n].name = "错误：任务索引或者名称不存在！"
			MisItem[n].state = state
			PRINT( "JumpPage:mission name = , state = ", missionlist[id].name, state )
		else
			MisItem[n] = {}
			MisItem[n].name = missionlist[id].name
			MisItem[n].state = state
			PRINT( "JumpPage:mission name = , state = ", missionlist[id].name, state )
		end
	end

	PRINT( "JumpPage2:SendMissioniPage, pageid, talk, funcitem, count, misitem, misnum", param, talk, FuncItem, count, MisItem, misnum )
	return SendMissionPage( character, npc, param, talk, FuncItem, count, MisItem, misnum )
end

--发送功能页信息
function FuncPage( character, npc, page, param )
	if page == nil or param == nil or page[param] == nil or page[param][1] == nil then
		return SystemNotice( character, "FuncPage:函数参数错误！" )
	end

	local FuncItem = {}
	local count = 0
	for i = 1, ROLE_MAXNUM_PAGEITEM, 1 do
		if page[param][i] == nil then
			break
		end
		if page[param][i].talk == nil then
			count = count + 1
			FuncItem[count] = page[param][i].text
		end
	end

	if count == 0 then
		return SystemNotice( character, "FuncPage:没有功能项目信息！" )
	else
		return SendFuncPage( character, npc, param, FuncItem, count )
	end
end

--关闭本次对话
function CloseTalk( character, npc )
	return SendClosePage( character, npc )
end

--移动到制定地图坐标
function GoTo( character, xpos, ypos, mapname )
	if xpos == nil or ypos == nil or mapname == nil then
		return SystemNotice( character, " GoTo:xpos or ypos or mapname 等参数不能为空！" )
	end
	return MoveTo( character,  xpos, ypos,  mapname )
end

--随机跳转地图
function RandToMap( character, npc, maplist, count )
	SendClosePage( character, npc )

	if maplist == nil or count == nil then
		return SystemNotice( character, "RandToMap:maplist or count 等参数不能为空！" )
	end

	local id = Rand( count )
	id = id + 1
	if maplist[id] == nil or maplist[id].xpos == nil or maplist[id].ypos == nil or maplist[id].mapname == nil then
		return SystemNotice( character, "RandToMap:maplist中的某个参数不能为空！" )
	end

	GoTo( character, maplist[id].xpos, maplist[id].ypos, maplist[id].mapname )
end

--随机检测是否已到达地图
function IsRandInMap( character, npc, rate, mapname, x, y, w, h )
	if rate == nil or mapname == nil or x == nil or y == nil then
		PRINT( "IsRandInMap:参数错误！" )
		SystemNotice( character, "IsRandInMap:函数参数错误！rate, mapname, x, y", rate, mapname, x, y )
		return LUA_ERROR
	end
	if rate > Rand( 100 ) then
		return LUA_FALSE
	end

	return IsInMap( character, mapname, x, y, w, h )
end

function PopupWindow( character, npc, page, trigger, p2 )
	if trigger == nil or p2 == nil then
		return SystemNotice( character, "PopupWindow:参数不能为空！" )
	end
	
	trigger( character, npc, p2 )
end

--多个触发器功能执行
function MultiTrigger( character, npc, page, trigger, count )
	PRINT( "MultiTrigger" )
	if trigger == nil or count == nil then
		return SystemNotice( character, "MultiTrigger:funclist or count参数不能为空！" )
	end

	for n = 1, count, 1 do
		if trigger[n] == nil then
			break
		end
		PRINT( "MultiTrigger:ConditionsTest, n = "..n )
		local ret = ConditionsTest( character, trigger[n].conditions, nil, nil, npc )
		if ret == LUA_TRUE then
			PRINT( "MultiTrigger:success, ActionsProc, n = "..n )
			if trigger[n].actions ~= nil and trigger[n].actions.count ~= 0 then
				return ActionsProc( character, trigger[n].actions, npc, page )
			end
		else
			PRINT( "MultiTrigger:failure, ActionsProc, n = "..n )
			if trigger[n].failures ~= nil and trigger[n].failures.count ~= 0 then
				return ActionsProc( character, trigger[n].failures, npc, page )
			end
		end
	end
end
--新触发器0
function MultiTrigger_0( character, npc, page, trigger, count )
	MultiTrigger( character, npc, page, trigger, count )
	Eleven_Log_0( character )
end
--新触发器1
function MultiTrigger_1( character, npc, page, trigger, count )
	MultiTrigger( character, npc, page, trigger, count )
	Eleven_Log( character,1 )
end
--新触发器2
function MultiTrigger_2( character, npc, page, trigger, count )
	MultiTrigger( character, npc, page, trigger, count )
	Eleven_Log( character,2 )
end
--新触发器3
function MultiTrigger_3( character, npc, page, trigger, count )
	MultiTrigger( character, npc, page, trigger, count )
	Eleven_Log( character,3 )
end
--多个条件判断
function MultiConditions( character, npc, funclist, count )
	if funclist == nil or count == nil then
		return SystemNotice( character, "MultiConditions:funclist or count参数不能为空！" )
	end

	return ConditionsTest( character, funclist )
end

--多个函数功能
function MultiFunc( character, npc, page, funclist, count )
	if funclist == nil or count == nil then
		return SystemNotice( character, "MultiFunc:funclist or count参数不能为空！" )
	end

	for id = 1, count, 1 do
		PRINT( "MultiFunc n = "..id )
		if funclist[id].func == AddMoney then
			AddMoney( character, funclist[id].p1 )
		elseif funclist[id].func == AddExp then
			AddExp( character, funclist[id].p1, funclist[id].p2 )
		elseif funclist[id].func == GiveItem then
			Giveitem( character, funclist[id].p1, funclist[id].p2, funclist[id].p3 )
		elseif funclist[id].func == TakeItem then
			TakeItem( character, funclist[id].p1, funclist[id].p2 )
		elseif funclist[id].func == TakeMoney then
			TakeMoney( character, funclist[id].p1, funclist[id].p2 )
		elseif funclist[id].func == JumpPage then
			JumpPage( character, npc, page, funclist[id].p1 )
		elseif funclist[id].func == RandToMap then
			RandToMap( character, npc, funclist[id].p1, funclist[id].p2 )
		elseif funclist[id].func == GoTo then
			GoTo( character, funclist[id].p1, funclist[id].p2, funclist[id].p3 )
		elseif funclist[id].func == SetRecord then
			SetRecord( character, funclist[id].p1 )
		elseif funclist[id].func == SetFlag then
			SetFlag( character, funclist[id].p1, funclist[id].p2 )
		elseif funclist[id].func == CloseTalk then
			CloseTalk( character, npc )
		elseif funclist[id].func == RefreshMissionState then
			RefreshMissionState( character, npc )
		elseif funclist[id].func == CheckChaItem then
			CheckChaItem( character )
		elseif funclist[id].func == OpenBank then
			OpenBank( character, npc )
		elseif funclist[id].func == OpenHair then
			OpenHair( character, npc )
		elseif funclist[id].func == CreditExchange then
			CreditExchange( character, npc, funclist[id].p1 )
		elseif funclist[id].func == DuiHhuan2 then
			DuiHhuan2( character)
		elseif funclist[id].func == DuiHhuan3 then
			DuiHhuan3( character)
		elseif funclist[id].func == DuiHhuan4 then
			DuiHhuan4( character)
		elseif funclist[id].func == DuiHhuan5 then
			DuiHhuan5(  character)
		elseif funclist[id].func == DuiHhuan1 then
			DuiHhuan1( character)
		else
			return SystemNotice( character, "MultiFunc:未知的函数错误！" )
		end
	end

end

--随机功能
function RandFunction( character, npc, page, funclist, count )
	if funclist == nil or count == nil then
		return SystemNotice( character, "RandFunction:funclist or count参数不能为空！" )
	end

	local id = Rand( count )
	id = id + 1
	if funclist[id] == nil or funclist[id].func == nil then
		return SystemNotice( character, "RandFunction:funclist中的某个参数不能为空！" )
	end

	if funclist[id].func == JumpPage then
		return JumpPage( character, npc, page, funclist[id].p1 )
	elseif funclist[id].func == RandToMap then
		return RandToMap( character, npc, funclist[id].p1, funclist[id].p2 )
	elseif funclist[id].func == GoTo then
		SendClosePage( character, npc )
		return GoTo( character, funclist[id].p1, funclist[id].p2, funclist[id].p3 )
	elseif funclist[id].func == GiveItem then
		PRINT( "RandFunction:GiveItem, p1, p2, p3",  funclist[id].p1, funclist[id].p2, funclist[id].p3 )
		return GiveItem( character, npc, funclist[id].p1, funclist[id].p2, funclist[id].p3 )
	elseif funclist[id].func == MultiFunc then
		PRINT( "RandFunction:MultiFunc, p1, p2 ", funclist[id].p1, funclist[id].p2 )
		return MultiFunc( character, npc, page, funclist[id].p1, funclist[id].p2 )
	else
		return SystemNotice( character, "RandFunction:未知的函数错误！" )
	end

end

--交易
function SendTradePage( character, npc, cmd, trade, tradetype, p1 )
	if cmd == nil or trade == nil or tradetype == nil then
		return SystemNotic( character, "TradePage:函数参数错误！" )
	end

	PRINT( "SendTradePage: send start. tradetype = ", tradetype )
	local packet = GetPacket()
	WriteCmd( packet, cmd )
	local npcid = GetCharID( npc )
	WriteDword( packet, npcid )
	WriteByte( packet, tradetype )
	WriteDword( packet, p1 )

	local typecount = 0
	for i = 1, 4, 1 do
		if trade[i] ~= nil then
			typecount = typecount + 1
		else
			break
		end
	end
	WriteByte( packet, typecount )
	PRINT( "SendTradePage: typecount = ", typecount )

	for i = 1, typecount, 1 do
		if trade[i].itemtype ~= nil and trade[i].count ~= nil and trade[i].item ~= nil then
			if trade[i].count > 120 then
				trade[i].count = 120
			end
			PRINT( "SendTradePage: itemtype = ,  count = ", trade[i].itemtype, trade[i].count )
			WriteByte( packet, trade[i].itemtype )
			WriteByte( packet, trade[i].count )
			--写入物品ID数据
			for n = 1, trade[i].count, 1 do
				if trade[i].item[n] ~= nil then
					if tradetype == TRADE_GOODS then
						PRINT( "SendTradePage:writedword : id =, count =, price =, tradetp ", trade[i].item[n].id, trade[i].item[n].count, trade[i].price[n].curprice, tradetype )
						WriteWord( packet, trade[i].item[n].id )
						WriteWord( packet, trade[i].item[n].count )
						WriteDword( packet, trade[i].price[n].curprice )
						WriteByte( packet, trade[i].item[n].level )
					else
						WriteWord( packet, trade[i].item[n] )
					end
				else
					WriteWord( packet, ROLE_INVALID_ID )
					if tradetype == TRADE_GOODS then
						WriteDword( packet, 0 )
					end
				end
			end
		else
			EXLG( "NpcSdk_error", "npc 交易物品数量或者类型错误，请查询！NpcName = %s", GetCharName( npc ) )
			return SystemNotice( character, "npc 交易物品数量或者类型错误，请查询！" )
		end
	end

	PRINT( "SendTradePage: SendPacket" )
	SendPacket( character, packet )
end

--更新交易
function SendTradeUpdate( character, npc, trade, tradetype, p1 )
	if trade == nil or tradetype == nil then
		return SystemNotic( character, "SendTradeUpdate:函数参数错误！" )
	end

	PRINT( "SendTradeUpdate: send start. tradetype = ", tradetype )
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_BLACKMARKET_TRADEUPDATE )
	local npcid = GetCharID( npc )
	WriteDword( packet, npcid )
	WriteByte( packet, tradetype )
	WriteDword( packet, p1 )

	local typecount = 0
	for i = 1, 4, 1 do
		if trade[i] ~= nil then
			typecount = typecount + 1
		else
			break
		end
	end
	WriteByte( packet, typecount )
	PRINT( "SendTradeUpdate: typecount = ", typecount )

	for i = 1, typecount, 1 do
		if trade[i].itemtype ~= nil and trade[i].count ~= nil and trade[i].item ~= nil then
			if trade[i].count > 120 then
				trade[i].count = 120
			end
			PRINT( "SendTradeUpdate: itemtype = ,  count = ", trade[i].itemtype, trade[i].count )
			WriteByte( packet, trade[i].itemtype )
			WriteByte( packet, trade[i].count )
			--写入物品ID数据
			for n = 1, trade[i].count, 1 do
				if trade[i].item[n] ~= nil then
					if tradetype == TRADE_GOODS then
						PRINT( "SendTradeUpdate:writedword : id =, count =, price =, tradetp ", trade[i].item[n].id, trade[i].item[n].count, trade[i].price[n].curprice, tradetype )
						WriteWord( packet, trade[i].item[n].id )
						WriteWord( packet, trade[i].item[n].count )
						WriteDword( packet, trade[i].price[n].curprice )
						WriteByte( packet, trade[i].item[n].level )
					else
						WriteWord( packet, trade[i].item[n] )
					end
				else
					WriteWord( packet, ROLE_INVALID_ID )
					if tradetype == TRADE_GOODS then
						WriteDword( packet, 0 )
					end
				end
			end
		else
			EXLG( "NpcSdk_error", "npc 交易物品数量或者类型错误，请查询！NpcName = %s", GetCharName( npc ) )
			return SystemNotice( character, "npc 交易物品数量或者类型错误，请查询！" )
		end
	end

	PRINT( "SendTradeUpdate: SendPacket" )
	SynPacket( npc, packet )
end

--交易
function SendUpdateTradePage( character, npc, cmd, trade, tradetype, p1 )
	if cmd == nil or trade == nil or tradetype == nil then
		return SystemNotic( character, "SendUpdateTradePage:函数参数错误！" )
	end

	PRINT( "SendUpdateTradePage: send start. tradetype = ", tradetype )
	local packet = GetPacket()
	WriteCmd( packet, cmd )
	local npcid = GetCharID( npc )
	WriteDword( packet, npcid )
	WriteByte( packet, tradetype )
	WriteDword( packet, p1 )

	local typecount = 0
	for i = 1, 4, 1 do
		if trade[i] ~= nil then
			typecount = typecount + 1
		else
			break
		end
	end
	WriteByte( packet, typecount )
	PRINT( "SendUpdateTradePage: typecount = ", typecount )

	for i = 1, typecount, 1 do
		if trade[i].itemtype ~= nil and trade[i].count ~= nil and trade[i].item ~= nil then
			if trade[i].count > 120 then
				trade[i].count = 120
			end
			PRINT( "SendUpdateTradePage: itemtype = ,  count = ", trade[i].itemtype, trade[i].count )
			WriteByte( packet, trade[i].itemtype )
			WriteByte( packet, trade[i].count )
			--写入物品ID数据
			for n = 1, trade[i].count, 1 do
				if trade[i].item[n] ~= nil then
					if tradetype == TRADE_GOODS then
						PRINT( "SendUpdateTradePage:writedword : id =, count =, price =, tradetp ", trade[i].item[n].id, trade[i].item[n].count, trade[i].price[n].curprice, tradetype )
						WriteWord( packet, trade[i].item[n].id )
						WriteWord( packet, trade[i].item[n].count )
						WriteDword( packet, trade[i].price[n].curprice )
						WriteByte( packet, trade[i].item[n].level )
					else
						WriteWord( packet, trade[i].item[n] )
					end
				else
					WriteWord( packet, ROLE_INVALID_ID )
					if tradetype == TRADE_GOODS then
						WriteWord( packet, 0 )
						WriteDword( packet, 0 )
						WriteByte( packet, 0 )
					end
				end
			end
		else
			EXLG( "NpcSdk_error", "SendUpdateTradePage:npc 交易物品数量或者类型错误，请查询！NpcName = %s", GetCharName( npc ) )
			return SystemNotice( character, "SendUpdateTradePage:npc 交易物品数量或者类型错误，请查询！" )
		end
	end

	PRINT( "SendUpdateTradePage: SendPacket" )
	SynPacket( character, packet )
end

function TradePage( character, npc, trade, tradetype, p1 )
	PRINT( "TradePage" )
	SendTradePage( character, npc, CMD_MC_TRADEPAGE, trade, tradetype, p1 )
end

--出售命令函数
function SalePage( character, npc, trade )
	PRINT( "Send sale page info!" )
	TradePage( character, npc, trade, TRADE_SALE, 0 )
end

--购买命令函数
function BuyPage( character, npc, trade )
	PRINT( "Send buy page info!" )
	TradePage( character, npc, trade, TRADE_BUY, 0 )
end

--播放特效
function PlayEffect( npc, id )
	PRINT( "PlayEffect" )
	ChaPlayEffect( npc, id )
end

--交易船舱货物
function TradeGoods( character, npc, trade, index )
	PRINT( "Send TradeGoods page info, trade, index", trade, index )
	local ret, boatid = GetBoatID( character, index )
	if ret ~= LUA_TRUE then
		PRINT( "交易船只选择错误，未发现该索引船只！index = "..index )
		SystemNotice( character, "交易船只选择错误，未发现该索引船只！index = "..index )
		return
	end
	PRINT( "tradepage" )
	TradePage( character, npc, trade, TRADE_GOODS, boatid )
end

--角色交易停泊列表
function TradeBerthList( character, npc, berth )
	PRINT( "TadeBerthList:显示交易停泊船只列表！" )
	local npcid = GetCharID( npc )
	return BoatBerthList( character, npcid, BERTH_TRADE_LIST, berth, 0, 0, 0 )
end

--角色船只停泊列表
function LuanchBerthList( character, npc, berth, xpos, ypos, dir )
	PRINT( "LuanchBerthList:显示出海停泊船只列表！" )
	local npcid = GetCharID( npc )
	--local ret1 = RemoveYS( character )
	--if ret1 ~= 1 then
	--	PRINT( "LuanchBerthList:RemoveYS 失败！" )
	--	SystemNotice( character, "LuanchBerthList:RemoveYS 失败！" )
	--	return --LUA_FALSE
	--end
	return BoatBerthList( character, npcid, BERTH_LUANCH_LIST, berth, xpos, ypos, dir )
end

--修理船只列表
function RepairBerthList( character, npc, berth )
	PRINT( "RepairBerthList:显示修理停泊船只列表！" )
	local npcid = GetCharID( npc )
	return BoatBerthList( character, npcid, BERTH_REPAIR_LIST, berth, 0, 0, 0 )
end

--打捞船只列表
function SalvageBerthList( character, npc, berth )
	PRINT( "SalvageBerthList:显示打捞停泊船只列表！" )
	local npcid = GetCharID( npc )
	return BoatBerthList( character, npcid, BERTH_SALVAGE_LIST, berth, 0, 0, 0 )
end

--补给船只列表
function SupplyBerthList( character, npc, berth )
	PRINT( "SupplyBerthList:显示补给停泊船只列表！" )
	local npcid = GetCharID( npc )
	return BoatBerthList( character, npcid, BERTH_SUPPLY_LIST, berth, 0, 0, 0 )
end

--船只升级列表
function BoatLevelBerthList( character, npc, berth )
	PRINT( "BoatLevelList:显示船只升级列表！" )
	local npcid = GetCharID( npc )
	return BoatBerthList( character, npcid, BERTH_BOATLEVEL_LIST, berth, 0, 0, 0 )
end

--出售物品
function Sale( character, npc, index, count )
	PRINT( "Sale" )
	if index == nil or count == nil then
		PRINT( "Sale:函数参数错误！" )
		SystemNotice( character, "Sale:函数参数错误！" )
		return LUA_FALSE
	end

	SafeSale( character, index, count )
	return LUA_TRUE
end

--购买物品
function Buy( character, npc, trade, itemtype, index1, index2, count )
	PRINT( "Buy" )
	itemtype = itemtype + 1
	index1 = index1 + 1
	if trade[itemtype] == nil or trade[itemtype].item == nil or trade[itemtype].item[index1] == nil then
		--信息错误
		PRINT( "Buy:函数参数错误！" )
		SystemNotice( character, "Buy:函数参数错误！" )
		return LUA_FALSE
	end
	local itemid = trade[itemtype].item[index1]
	SafeBuy( character, itemid, index2, count )
	return LUA_TRUE
end

--出售货物
function SaleGoods( character, npc, trade, boatid, index, count )
	PRINT( "SaleGoods" )
	if boatid == nil or index == nil or count == nil or trade == nil then
		PRINT( "SaleGoods:函数参数错误！" )
		SystemNotice( character, "SaleGoods:函数参数错误！" )
		return LUA_FALSE
	end
	
	local ret = BoatTrade( character, trade.berth )
	if ret ~= LUA_TRUE then
		return LUA_FALSE
	end
	
	local ret, itemid = GetSaleGoodsItem( character, boatid, index )
	if ret ~= LUA_TRUE then
		PRINT( "SaleGoods:GetSaleGoodsItem,获取货物信息失败！index = "..index )
		SystemNotice( character, "SaleGoods:GetSaleGoodsItem,获取货物信息失败！index = "..index )
		return LUA_FALSE
	end
	PRINT( "SaleGoods: boatid = , index = , itemid = ", boatid, index, itemid )
	--校验是否npc收购该物品
	local price = 0
	for n = 1, trade[2].count, 1 do
		if trade[2].item[n].id == itemid then
			price = trade[2].price[n].curprice
			break
		end
	end
	PRINT( "SaleGoods: boatid = , index = , itemid = , count =, price = ", boatid, index, itemid, count, price )

	local ret, level, cess = GetTradeItemData( character )
	if ret ~= LUA_TRUE then
		cess = 1
	end
	PRINT( "SaleGoods:GetTradeItemData: level = , cess = ", level, cess )

	PRINT( "SaleGoods:3-1, cess, price = ", cess, price )
	if cess == 0 then
		cess = 1
	end
	local param = (math.max ( 0, 30-math.pow(cess,0.5) )+math.pow(cess , (-0.5) ) ) /100
	local cessdata = math.floor( price*param + 0.5 )
	PRINT( "SaleGoods:3-1, cessdata, price = ", cessdata, price )
	local cessprice = price - cessdata
	PRINT( "SaleGoods:3, cessprice = ", cessprice )

	local ret = SafeSaleGoods( character, boatid, index, count, cessprice )
	if ret ~= LUA_TRUE then
		PRINT( "SaleGoods:出售贸易物品失败！boatid, index, count, price", boatid, index, count, price )
		SystemNotice( character, "SaleGoods:出售贸易物品失败！" )
		LG( "trade_error", "SaleGoods:出售贸易物品失败！boatid, index, count, price", boatid, index, count, price )
		return LUA_FALSE
	end
	local allcessdata = cessdata*count
	SystemNotice( character, "收取贸易税，总计（"..allcessdata.."G），单计（"..cessdata.."G）" )

	return LUA_TRUE
end

--购买货物
function BuyGoods( character, npc, trade, boatid, itemtype, index1, index2, count )
	PRINT( "BuyGoods" )
	itemtype = itemtype + 1
	index1 = index1 + 1
	if boatid == nil or trade[itemtype] == nil or trade[itemtype].item == nil or trade[itemtype].item[index1] == nil or trade[itemtype].price[index1] == nil then
		--信息错误
		PRINT( "BuyGoods:函数参数错误！" )
		SystemNotice( character, "BuyGoods:函数参数错误！" )
		return LUA_FALSE
	end

	local ret = BoatTrade( character, trade.berth )
	if ret ~= LUA_TRUE then
		return LUA_FALSE
	end
	
	if trade[itemtype].item[index1].count <= 0 then
		BickerNotice( character, "货物已卖完，请等待！" )
		return LUA_TRUE
	end
	PRINT( "BuyGoods:1" )

	if trade[itemtype].item[index1].level > 0 then
		local ret, level, cess = GetTradeItemData( character )
		if ret ~= LUA_TRUE then
			SystemNotice( character, "BuyGoods:GetTradeItemData:函数调用失败！检测是否有贸易证！" )
			LG( "trade_error", "BuyGoods:GetTradeItemData:函数调用失败！检测是否有贸易证！" )
			return LUA_FALSE
		end
		PRINT( "BuyGoods:GetTradeItemData: level = , cess = ", level, cess )
		if level < trade[itemtype].item[index1].level then
			BickerNotice( character, "需要"..trade[itemtype].item[index1].level.."级贸易证，才能购买该货物!" )
			return LUA_FALSE
		end
	end

	PRINT( "BuyGoods:2" )
	--检查数量是否足够
	if trade[itemtype].item[index1].count < count then
		count = trade[itemtype].item[index1].count
	end

	local itemid = trade[itemtype].item[index1].id
	local price = trade[itemtype].price[index1].curprice
	local ret = SafeBuyGoods( character, boatid,  itemid, index2, count, price )
	if ret == LUA_TRUE then
		trade[itemtype].item[index1].count = trade[itemtype].item[index1].count - count
		PRINT( "BuyGoods:index, id, count, price", index1, itemid, trade[itemtype].item[index1].count, price )
		SendGoodsData( npc, index1 - 1, itemid, trade[itemtype].item[index1].count, price )
	end
	PRINT( "BuyGoods:4, price = ", price )
	return LUA_TRUE
end

--货物信息同步
function SendGoodsData( npc, index, id, count, price )
	if npc == nil or index == nil or id == nil or count == nil or price == nil then
		PRINT( "SendGoodsData:函数参数错误！npc, index, id, count, price", npc, index, id, count, price )
		LG( "npctrade_error", "SendGoodsData:函数参数错误！npc, index, id, count, price", npc, index, id, count, price  )
		return
	end

	PRINT( "SendGoodsData: npc, index, id, count, price", npc, index, id, count, price )
	local packet = GetPacket()
	WriteCmd( packet, CMD_MC_TRADE_DATA )
	local npcid = GetCharID( npc )
	WriteDword( packet, npcid )
	WriteByte( packet, 0 ) --第一页为销售物品页信息
	WriteByte( packet, index )
	WriteWord( packet, id )
	WriteWord( packet, count )
	WriteDword( packet, price )

	SynPacket( npc, packet )
	return LUA_TRUE
end

function SendAllGoodsData( npc, trade )
	if trade == nil or npc == nil then
		PRINT( "SendAllGoodsData: 函数参数错误！" )
		return LUA_ERROR
	end

	PRINT( "SendAllGoodsData:" )
	SendUpdateTradePage( npc, npc, CMD_MC_TRADE_ALLDATA, trade, TRADE_GOODS, 0 )
	return LUA_TRUE
end

--货物打包到船舱
function PackBagGoods( character, boat, tp, level )
	PRINT( "PackBagGoods: character, boat, tp, level ", character, boat, tp, level )
	if character == nil or boat == nil or level == nil or tp == nil then
		PRINT( "PackBagGoods:函数参数错误, character, boat, tp, level ", character, boat, tp, level )
		LG( "goods_error", "PackBagGoods:函数参数错误, character, boat, tp, level ", character, boat, tp, level )
		return LUA_FALSE
	end

	--打包各种等级资源类型
	if tp == RES_WOOD	then			-- 木材资源
		if ResourceList == nil or ResourceList.wood == nil or ResourceList.wood[level] == nil then
			PRINT( "PackBagGoods:无效的资源打包信息！" )
			return LUA_FALSE
		end
		PRINT( "PackBagGoods: 1" )
		if ResourceList.wood[level].itemid == nil or ResourceList.wood[level].count == nil or ResourceList.wood[level].pileid == nil then
			PRINT( "PackBagGoods:无效的木材资源打包信息！level, Itemid, count, pileid", level, ResourceList.wood[level].itemid, ResourceList.wood[level].count, ResourceList.wood[level].pileid )
			LG( "goods_error", "PackBagGoods:无效的木材资源打包信息！level, Itemid, count, pileid", ResourceList.wood[level].itemid, ResourceList.wood[level].count, ResourceList.wood[level].pileid )
			return LUA_FALSE
		end

		PRINT( "PackBagGoods: PackBag:RES_WOOD: itemid = , count = , pileid = ", ResourceList.wood[level].itemid, ResourceList.wood[level].count, ResourceList.wood[level].pileid )
		local ret, numpack = PackBag( character, boat, ResourceList.wood[level].itemid, ResourceList.wood[level].count, ResourceList.wood[level].pileid )
		if ret ~= LUA_TRUE then
			PRINT( "PackBagGoods:打包木材资源失败！level, itemid, count, pileid", level, ResourceList.wood[level].itemid, ResourceList.wood[level].count, ResourceList.wood[level].pileid )
			return LUA_FALSE
		end
		PRINT( "成功打包了"..numpack.."堆"..level.."级木材！" )
		if numpack > 0 then
			BickerNotice( character, "成功打包了"..numpack.."堆"..level.."级木材！" )
		end
	elseif tp == RES_MINE	then		-- 矿石资源
		if ResourceList.mine[level].itemid == nil or ResourceList.mine[level].count == nil or ResourceList.mine[level].pileid == nil then
			PRINT( "PackBagGoods:无效的矿石资源打包信息！level, Itemid, count, pileid", ResourceList.mine[level].itemid, ResourceList.mine[level].count, ResourceList.mine[level].pileid )
			LG( "goods_error", "PackBagGoods:无效的矿石资源打包信息！level, Itemid, count, pileid", ResourceList.mine[level].itemid, ResourceList.mine[level].count, ResourceList.mine[level].pileid )
			return LUA_FALSE
		end

		PRINT( "PackBagGoods: PackBag:RES_MINE: itemid = , count = , pileid = ", ResourceList.mine[level].itemid, ResourceList.mine[level].count, ResourceList.mine[level].pileid )
		local ret, numpack = PackBag( character, boat, ResourceList.mine[level].itemid, ResourceList.mine[level].count, ResourceList.mine[level].pileid )
		if ret ~= LUA_TRUE then
			PRINT( "PackBagGoods:打包木材资源失败！level, itemid, count, pileid", level, ResourceList.mine[level].itemid, ResourceList.mine[level].count, ResourceList.mine[level].pileid )
			return LUA_FALSE
		end
		PRINT( "成功打包了"..numpack.."堆"..level.."级矿石！" )
		if numpack > 0 then
			BickerNotice( character, "成功打包了"..numpack.."堆"..level.."级矿石！" )
		end
	else
		PRINT( "PackBagGoods:无效的打包资源类型, character, boat, tp, level ", character, boat, tp, level )
		LG( "goods_error", "PackBagGoods:无效的打包资源类型, character, boat, tp, level ", character, boat, tp, level )
		return LUA_FALSE
	end
	PRINT( "PackBagGoods: return true" )
	return LUA_TRUE
end

--调整贸易税率
function AdjustTradeCess( character, cess, cessrange )
	if cess == nil or cessrange == nil then
		SystemNotice( character, "AdjustTradeCess:函数参数错误！" )
		LG( "mission_error", "AdjustTradeCess:函数参数错误！" )
		return LUA_ERROR
	end

	local ret, level, cessdata = GetTradeItemData( character )
	if ret ~= LUA_TRUE then
		SystemNotice( character, "AdjustTradeCess:GetTradeItemData函数调用失败，检查是否有贸易证！" )
		LG( "mission_error", "AdjustTradeCess:GetTradeItemData函数调用失败，检查是否有贸易证！" )
		return LUA_FALSE
	end

	--检查贸易证等级
	if level == 1 then
		return AdjustTradeItemCess( character, 200, cess + Rand( cessrange ) )
	elseif level == 2 then
		return AdjustTradeItemCess( character, 500, cess + Rand( cessrange ) )
	elseif level == 3 then
		return AdjustTradeItemCess( character, 60000, cess + Rand( cessrange ) )
	else
		SystemNotice( character, "AdjustTradeCess:贸易证等级超出范围！level = "..level )
		LG( "mission_error", "AdjustTradeCess:角色《"..GetCharName( character ).."》贸易证等级超出范围！level = "..level )
		return LUA_FALSE
	end

end

--荣誉值兑换道具
function CreditExchange( character, npc, tp )
	if tp == nil then
		PRINT( "CreditExchange:函数参数错误！" )
		SystemNotice( character, "CreditExchange:函数参数错误！" )
		return LUA_ERROR	
	end
	
	PRINT( "CreditExchange, p1 = "..tp )
	CreditExchangeImpl( character, tp )
	return LUA_TRUE
end

--船只升级处理函数
function BoatLevelUp( character, boat, levelup )
	PRINT( "BoatLevelUp: levelup", levelup )
	if levelup == nil or BoatLevelList == nil  then
		PRINT( "BoatLevelUp:函数参数错误！" )
		SystemNotice( character, "BoatLevelUp:函数参数错误！" )
		return LUA_ERROR
	end

	if BoatLevelList[levelup] == nil or BoatLevelList[levelup].money == nil or BoatLevelList[levelup].exp == nil	then
		BickerNotice( character, "您的船只等级已经升到最大上限！" )
		return LUA_TRUE
	end

	PRINT( "BoatLevelUp: levelup, exp, moeny", levelup, BoatLevelList[levelup].exp, BoatLevelList[levelup].money )
	--判断经验和钱升级条件是否足够
	local ret = BoatLevelUpProc( character, boat, levelup, BoatLevelList[levelup].exp, BoatLevelList[levelup].money )
	if ret == 0 then
		PRINT( "BoatLevelUpProc:函数调用返回失败！" )
	end

	return LUA_TRUE
end

--对话命令消息处理
function MsgProc( character, npc, rpk, page, trade, missionlist, exchangeData )
	if character == nil or npc == nil or rpk == nil then
		PRINT( "MsgProc:函数参数错误！" )
		EXLG( "NpcSdk_error", "MsgProc:函数参数错误！" )
		return
	end
	PRINT( "MsgProc:Net message process." )
	local usCmd = ReadWord( rpk );
	if usCmd == CMD_CM_TALKPAGE then	--对话页命令信息处理
		local byTalkID = ReadByte( rpk ) --读取页指令索引信息

		if byTalkID == ROLE_FIRSTPAGE then	--和npc第一次交流对话
			RefreshMissionState( character, npc )
			if page.start == MultiTrigger then
				PRINT( "MsgProc:MultiTrigger, page, p1, p2", page, page.p1, page.p2 )
				return MultiTrigger( character, npc, page, page.p1, page.p2 )
			end
			if page.start == PopupWindow then
				PRINT( "MsgProc:PopupWindow, page, p1, p2", page, page.p1, page.p2 )
				return PopupWindow( character, npc, page, page.p1, page.p2 )
			end
			return JumpPage( character, npc, page, 1 ) --发送第一页对话信息
		elseif byTalkID == ROLE_CLOSEPAGE then
			return SendClosePage( character, npc ) --关闭对话
		elseif page[byTalkID] == nil or page[byTalkID][1] == nil then --错误的页数据，报警
			return SystemNotice( character, "MsgProc:请求和npc交流对话，可是这个npc没该对话页数据信息！" )
		else
			local talkpage = page[byTalkID][1]
			local funcpage = page[byTalkID][2]

			--执行页链接功能指令
			if talkpage.func == JumpPage then
				return JumpPage( character, npc, page, talkpage.p1 )
			elseif talkpage.func == FuncPage then
				return FuncPage( character, npc, page, talkpage.p1 )
			elseif talkpage.func == CloseTalk then
				return CloseTalk( character, npc )
			elseif talkpage.func == HasRecord then
			local ret = HasRecord( character, talkpage.p1 )
				if ret == LUA_TRUE then
					return JumpPage( character, npc, page, talkpage.p2 )
				else
					return JumpPage( character, npc, page, talkpage.p3 )
				end
			elseif funcpage ~= nil then	--判断是否有功能信息
				return FuncPage( character, npc, page, byTalkID )
			else --跳转到下一页
				local PageID = byTalkID + 1

				if page[PageID] == nil then
					EXLG( "NpcSdk_error", "MsgProc:页信息链接错误，没有下一页或者未知的链接函数！NpcName = %s, PageID = %d", GetCharName( npc ), PageID )
					return SystemNotice( character, "MsgProc:页信息链接错误，没有下一页或者未知的链接函数！" )
				end
				return JumpPage( character, npc, page, PageID )
			end
		end
		return
	elseif usCmd == CMD_CM_FUNCITEM then --功能页选项命令信息处理
		local byPage = ReadByte( rpk );	--读取功能页索引信息
		local byItem = ReadByte( rpk ); --读取功能选项索引信息
		PRINT( "MsgProc: pageid = , itemid = ", byPage, byItem )
		if page[byPage] == nil or page[byPage][1] == nil then
			EXLG( "NpcSdk_error", "MsgProc:未知的功能页索引信息错误或者该页信息不存在！NpcName = %s, PageID = %d, ItemID = %d", GetCharName( npc ), byPage, byItem )
			return SystemNotice( character, "MsgProc:未知的功能页索引信息错误或者该页信息不存在！" )
		end

		if page[byPage][1].talk ~= nil then --是否既有对话页信息也有功能页信息
			if page[byPage][1].func ~= nil then
				PRINT( "MultiTrigger" )
				byItem = 1                           --如果对话信息有执行函数则优先执行
			else
				byItem = byItem + 2			 --跳到选择项功能函数执行
			end
		elseif page[byPage][1].text ~= nil then
			byItem = byItem + 1
		end

		--处理功能项目选择命令
		local item = page[byPage][byItem]
		if item == nil or item.func == nil then
			EXLG( "NpcSdk_error", "MsgProc:该页没有功能项目信息，或者没有函数信息！NpcName = %s, PageID = %d, ItemID = %d", GetCharName( npc ), byPage, byItem )
			return SystemNotice( character, "MsgProc:该页没有功能项目信息，或者没有函数信息！" )
		end
		if item.func == JumpPage then
			return JumpPage( character, npc, page, item.p1 )
		elseif item.func == FuncPage then
			return FuncPage( character, npc, page, item.p1 )
		elseif item.func == CloseTalk then
			return CloseTalk( character, npc )
		elseif item.func == GoTo then
			return GoTo( character, item.p1, item.p2, item.p3 )
		elseif item.func == RandToMap then
			return RandToMap( character, npc, item.p1, item.p2 )
		elseif item.func == RandFunction then
			return RandFunction( character, npc, page, item.p1, item.p2 )
		elseif item.func == MultiFunc then
			return MultiFunc( character, npc, page, item.p1, item.p2 )
		elseif item.func == SalePage then
			return SalePage( character, npc, trade )
		elseif item.func == BuyPage then
			return BuyPage( character, npc, trade )
		elseif item.func == ListAuction then
			return ListAuction( character, npc )
		elseif item.func == ChangeItem then
			return ChangeItem(character,npc)
		elseif item.func == TradeGoods then
			return TradeGoods( character, npc, trade, item.p1 )
		elseif item.func == MultiTrigger then
			return MultiTrigger( character, npc, page, item.p1, item.p2 )
		elseif item.func == MultiTrigger_0 then
			return MultiTrigger_0( character, npc, page, item.p1, item.p2 )
		elseif item.func == MultiTrigger_1 then
			return MultiTrigger_1( character, npc, page, item.p1, item.p2 )
		elseif item.func == MultiTrigger_2 then
			return MultiTrigger_2( character, npc, page, item.p1, item.p2 )
		elseif item.func == MultiTrigger_3 then
			return MultiTrigger_3( character, npc, page, item.p1, item.p2 )
		elseif item.func == OpenForge then
			return OpenForge( character, npc )
			-- Add by lark.li 20080514 begin
		elseif item.func == OpenLottery then			
			return OpenLottery( character, npc )
			-- Eed
		elseif item.func == OpenUnite then
			return OpenUnite( character, npc )
		elseif item.func == OpenMilling then
			return OpenMilling( character, npc )
		elseif item.func == OpenHair then
			return OpenHair( character, npc )
		elseif item.func == OpenRepair then
			return OpenRepair( character, npc )
		elseif item.func == OpenFusion then
			return OpenFusion( character, npc )
		elseif item.func == OpenUpgrade then
			return OpenUpgrade( character, npc )
		elseif item.func == OpenEidolonMetempsychosis then
			return OpenEidolonMetempsychosis( character, npc )
		elseif item.func == OpenItemTiChun then
			return OpenItemTiChun( character, npc )
		elseif item.func == OpenItemEnergy then
			return OpenItemEnergy( character, npc )
		elseif item.func == OpenGMSend then
			return OpenGMSend( character, npc )
		elseif item.func == OpenGMRecv then
			return OpenGMRecv( character, npc )
		elseif item.func == OpenItemFix then
			return OpenItemFix( character, npc )
		elseif item.func == OpenGetStone then
			return OpenGetStone( character, npc )
		elseif item.func == OpenTiger then
			return OpenTiger( character, npc )
		elseif item.func == GoTosdBoss then
			return GoTosdBoss(character,item.p1)
		elseif item.func == SetSpawnPos then
			return SetSpawnPos( character, item.p1 )
		elseif item.func == TransferDiamond then
			return TransferDiamond( character, item.p1 )
		elseif item.func == ListChallenge then
			return ListChallenge( character, npc )
		--elseif item.func == ListAuction then
			--return ListAuction( character, npc )
		elseif item.func == SendExchangeData then
			return SendExchangeData( character, npc )
		elseif item.func == SendExchangeData2 then
			return SendExchangeData2( character, npc )
		elseif item.func == SendExchangeXData then
			return SendExchangeXData( character, npc, exchangeData )
		elseif item.func == Garner2GetWiner then 
			return Garner2GetWiner(character,npc)
		elseif item.func == Change_FightingBook then
			return Change_FightingBook (character,npc)
		elseif item.func == Garner2RequestReorder then
			return Garner2RequestReorder (character,npc)
		elseif item.func == Transfer_TeamStar then
			return Transfer_TeamStar( character, item.p1 )
		elseif item.func == LifeSkillBegin then
			return LifeSkillBegin(character,npc,item.p1)
		elseif item.func == Change_shanyao then
			return Change_shanyao(character,npc)
		elseif item.func == Change_rongyao then
			return Change_rongyao(character,npc)
		elseif item.func == Change_huihuang then
			return Change_huihuang(character,npc)
		elseif item.func == ItemAttrNum then
			return ItemAttrNum( character, npc,item.p1,item.p2,item.p3,item.p4)		
		elseif item.func == GetChaName_0 then
			return GetChaName_0(character,npc )
		elseif item.func == GetChaName_1 then
			return GetChaName_1(character,npc )
		elseif item.func == GetChaName_2 then
			return GetChaName_2(character,npc )
		elseif item.func == GetChaName_3 then
			return GetChaName_3(character,npc )
		elseif item.func == GetChaName_4 then
			return GetChaName_4(character,npc )
		elseif item.func == GetChaName_5 then
			return GetChaName_5(character,npc )
		elseif item.func == GetChaName_6 then
			return GetChaName_6(character,npc )
		elseif item.func == GetChaName_7 then
			return GetChaName_7(character,npc )
		elseif item.func == GetChaName_8 then
			return GetChaName_8(character,npc )
		elseif item.func == GetChaName_9 then
			return GetChaName_9(character,npc )
		elseif item.func == GetChaName_10 then
			return GetChaName_10(character,npc )
		elseif item.func == GetChaName_11 then
			return GetChaName_11(character,npc )
		elseif item.func == GetChaName_12 then
			return GetChaName_12(character,npc )
		elseif item.func == GetChaName_13 then
			return GetChaName_13(character,npc )
		elseif item.func == GetChaName_14 then
			return GetChaName_14(character,npc )
		elseif item.func == GetChaName_15 then
			return GetChaName_15(character,npc )
		elseif item.func == GetChaName_16 then
			return GetChaName_16(character,npc )
		elseif item.func == GetChaName_17 then
			return GetChaName_17(character,npc )
		elseif item.func == GetChaName_18 then
			return GetChaName_18(character,npc )
		elseif item.func == GetChaName_19 then
			return GetChaName_19(character,npc )
		elseif item.func == GetChaName_20 then
			return GetChaName_20(character,npc )
		elseif item.func == GetChaName_21 then
			return GetChaName_21(character,npc )
		elseif item.func == GetChaName_22 then
			return GetChaName_22(character,npc )
		elseif item.func == GetChaName_23 then
			return GetChaName_23(character,npc )
		elseif item.func == GetChaName_24 then
			return GetChaName_24(character,npc )
		elseif item.func == GetChaName_25 then
			return GetChaName_25(character,npc )
		---Job Changer
		elseif item.func == CH1_1 then
			return CH1_1(character,npc )
		elseif item.func == CH1_2 then
			return CH1_2(character,npc )
		elseif item.func == CH1_3 then
			return CH1_3(character,npc )
		elseif item.func == CH1_4 then
			return CH1_4(character,npc )
		elseif item.func == CH2_1 then
			return CH2_1(character,npc )
		elseif item.func == CH2_2 then
			return CH2_2(character,npc )
		elseif item.func == CH2_3 then
			return CH2_3(character,npc )
		elseif item.func == CH2_4 then
			return CH2_4(character,npc )
		elseif item.func == CH2_5 then
			return CH2_5(character,npc )
		elseif item.func == CH2_6 then
			return CH2_6(character,npc )
		elseif item.func == GetChaName_26 then
			return GetChaName_26(character,npc )
		elseif item.func == GetChaName_27 then
			return GetChaName_27(character,npc )
		elseif item.func == GetChaName_28 then
			return GetChaName_28(character,npc )
		elseif item.func == GetChaName1_born then
			return GetChaName1_born(character,npc )
		elseif item.func == GetChaName2_born then
			return GetChaName2_born(character,npc )
		elseif item.func == GetChaName3_born then
			return GetChaName3_born(character,npc )
		elseif item.func == GetChaName4_born then
			return GetChaName4_born(character,npc )
		elseif item.func == GetChaName5_born then
			return GetChaName5_born(character,npc )
		elseif item.func == GetChaName6_born then
			return GetChaName6_born(character,npc )
		elseif item.func == GetChaName1_born2 then
			return GetChaName1_born2(character,npc )
		elseif item.func == GetChaName2_born2 then
			return GetChaName2_born2(character,npc )
		elseif item.func == GetChaName3_born2 then
			return GetChaName3_born2(character,npc )
		elseif item.func == GetChaName4_born2 then
			return GetChaName4_born2(character,npc )
		elseif item.func == GetChaName5_born2 then
			return GetChaName5_born2(character,npc )
		elseif item.func == GetChaName6_born2 then
			return GetChaName6_born2(character,npc )
		elseif item.func == GetChaName1_born3 then
			return GetChaName1_born3(character,npc )
		elseif item.func == GetChaName2_born3 then
			return GetChaName2_born3(character,npc )
		elseif item.func == GetChaName3_born3 then
			return GetChaName3_born3(character,npc )
		elseif item.func == GetChaName4_born3 then
			return GetChaName4_born3(character,npc )
		elseif item.func == GetChaName5_born3 then
			return GetChaName5_born3(character,npc )
		elseif item.func == GetChaName6_born3 then
			return GetChaName6_born3(character,npc )
		elseif item.func == GiveHoe then
			return GiveHoe(character,npc)
		elseif item.func == CheckMetal then
			return CheckMetal(character,npc )
		elseif item.func == PKPointToZero then
			return PKPointToZero(character,npc)
		elseif item.func == PlayEffect then
			return PlayEffect( npc, 361 )
		elseif item.func == GetChaName1_guildwar then
			return GetChaName1_guildwar(character,npc )
		elseif item.func == GetChaName2_guildwar then
			return GetChaName2_guildwar(character,npc )
		elseif item.func == GetChaName3_guildwar then
			return GetChaName3_guildwar(character,npc )
		elseif item.func == GetChaName4_guildwar then
			return GetChaName4_guildwar(character,npc )
		elseif item.func == GetChaName5_guildwar then
			return GetChaName5_guildwar(character)
		elseif item.func == GetChaName6_guildwar then
			return GetChaName6_guildwar(character)
		elseif item.func == GetChaName7_guildwar then
			return GetChaName7_guildwar(character)
		elseif item.func == GetChaName8_guildwar then
			return GetChaName8_guildwar(character)
		elseif item.func == GetChaName9_guildwar then
			return GetChaName9_guildwar(character)
		elseif item.func == GetChaName10_guildwar then
			return GetChaName10_guildwar(character)
		elseif item.func == GetChaName11_guildwar then
			return GetChaName11_guildwar(character)
		elseif item.func == GetChaName12_guildwar then
			return GetChaName12_guildwar(character)
		elseif item.func == GetChaName13_guildwar then
			return GetChaName13_guildwar(character)
		elseif item.func == GetChaName14_guildwar then
			return GetChaName14_guildwar(character)
		elseif item.func == GetChaName15_guildwar then
			return GetChaName15_guildwar(character)
		elseif item.func == GetChaName16_guildwar then
			return GetChaName16_guildwar(character)
		elseif item.func == GetChaName17_guildwar then
			return GetChaName17_guildwar(character)
		elseif item.func == GetChaName18_guildwar then
			return GetChaName18_guildwar(character)
		elseif item.func == GetChaName19_guildwar then
			return GetChaName19_guildwar(character)
		elseif item.func == GetChaName20_guildwar then
			return GetChaName20_guildwar(character)
		elseif item.func == GetChaName21_guildwar then
			return GetChaName21_guildwar(character)
		elseif item.func == GetChaName22_guildwar then
			return GetChaName22_guildwar(character)
		elseif item.func == GetChaName23_guildwar then
			return GetChaName23_guildwar(character)
		elseif item.func == GetChaName24_guildwar then
			return GetChaName24_guildwar(character)
		elseif item.func == GetChaName25_guildwar then
			return GetChaName25_guildwar(character)
		elseif item.func == GetChaName26_guildwar then
			return GetChaName26_guildwar(character)
		elseif item.func == GetChaName27_guildwar then
			return GetChaName27_guildwar(character)
		elseif item.func == GetChaName28_guildwar then
			return GetChaName28_guildwar(character)
		elseif item.func == GetChaName29_guildwar then
			return GetChaName29_guildwar(character)
		elseif item.func == GetChaName30_guildwar then
			return GetChaName30_guildwar(character)
		elseif item.func == GetChaName31_guildwar then
			return GetChaName31_guildwar(character)
		elseif item.func == GetChaName32_guildwar then
			return GetChaName32_guildwar(character)
		elseif item.func == GetChaName33_guildwar then
			return GetChaName33_guildwar(character)
		elseif item.func == GetChaName34_guildwar then
			return GetChaName34_guildwar(character)
		elseif item.func == GetChaName35_guildwar then
			return GetChaName35_guildwar(character)
		elseif item.func == GetChaName36_guildwar then
			return GetChaName36_guildwar(character)
		elseif item.func == GetChaName37_guildwar then
			return GetChaName37_guildwar(character)
		elseif item.func == GetChaName38_guildwar then
			return GetChaName38_guildwar(character)
		elseif item.func == GetChaName39_guildwar then
			return GetChaName39_guildwar(character)
		elseif item.func == GetChaName40_guildwar then
			return GetChaName40_guildwar(character)
		elseif item.func == GetChaName41_guildwar then
			return GetChaName41_guildwar(character)
		elseif item.func == GetChaName42_guildwar then
			return GetChaName42_guildwar(character)
		elseif item.func == GetChaName43_guildwar then
			return GetChaName43_guildwar(character)
		elseif item.func == GetChaName44_guildwar then
			return GetChaName44_guildwar(character)
		elseif item.func == GetChaName45_guildwar then
			return GetChaName45_guildwar(character)
		elseif item.func == ChangeItem then
			return ChangeItem(character,npc)
		else
			return SystemNotice( character, "MsgProc:功能选项未知的功能函数！" )
		end
	elseif usCmd == CMD_CM_BLACKMARKET_EXCHANGE_REQ then --黑市兑换
		local timeNum = ReadWord( rpk )
		local srcID = ReadWord( rpk )
		local srcNum = ReadWord( rpk )
		local tarID = ReadWord( rpk )
		local tarNum = ReadWord( rpk )
		local byIndex = ReadWord( rpk )
		
		local ret = KitbagLock( character, 0 )
		if ret ~= LUA_TRUE then
			SystemNotice( character, "背包被锁定无法兑换" )
			return
		end
		
		local retbag = HasLeaveBagGrid( character, 1)
		if retbag ~= LUA_TRUE then
			SystemNotice(character,"背包空格少于1个无法兑换")
			return 
		end
		
		ExchangeReq( character, npc, srcID, srcNum, tarID, tarNum, timeNum )
	elseif usCmd == CMD_CM_TRADEITEM then --请求交易处理
		local tradetype = ReadByte( rpk )
		if tradetype == ROLE_TRADE_SALE then	--请求出售物品
			if trade.tp ~= TRADE_NOMAL then
				SystemNotice( character, "交易方式错误！tp =", trade.tp )
				PRINT( "交易方式错误！tp = , tradetype = ", trade.tp, ROLE_TRADE_SALE )
				return
			end

			local index = ReadByte( rpk )
			local count = ReadByte( rpk )
			if count == 0 then
				return
			end
			PRINT( "MsgProc:Sale index = %d, count = %d", index, count )
			Sale( character, npc, index, count )
		elseif tradetype == ROLE_TRADE_BUY then	--请求购买物品
			if trade.tp ~= TRADE_NOMAL then
				SystemNotice( character, "交易方式错误！tp =", trade.tp )
				PRINT( "交易方式错误！tp = , tradetype = ", trade.tp, ROLE_TRADE_BUY )
				return
			end

			local itemtype = ReadByte( rpk )
			local index1 = ReadByte( rpk )
			local index2 = ReadByte( rpk )
			local count = ReadByte( rpk )
			if count == 0 then
				return
			end
			PRINT( "MsgProc:Buy itemtype = %d, index1 = %d, index2 = %d, count = %d", itemtype, index1, index2, count )
			Buy( character, npc, trade, itemtype, index1, index2, count )
		elseif tradetype == ROLE_TRADE_SALE_GOODS then	--请求出售货舱物品
			if trade.tp ~= TRADE_GOODS then
				SystemNotice( character, "交易方式错误！tp =", trade.tp )
				PRINT( "交易方式错误！tp = , tradetype = ", trade.tp, ROLE_TRADE_SALE_GOODS )
				return
			end

			local boatid = ReadDword( rpk )
			local index = ReadByte( rpk )
			local count = ReadByte( rpk )
			if count == 0 then
				return
			end
			PRINT( "MsgProc:Sale boatid = ,index =, count =", boatid, index, count )
			SaleGoods( character, npc, trade, boatid, index, count )
		elseif tradetype == ROLE_TRADE_BUY_GOODS then 	--请求购买货舱物品
			if trade.tp ~= TRADE_GOODS then
				SystemNotice( character, "交易方式错误！tp =", trade.tp )
				PRINT( "交易方式错误！tp = , tradetype = ", trade.tp, ROLE_TRADE_BUY_GOODS )
				return
			end

			local boatid = ReadDword( rpk )
			local itemtype = ReadByte( rpk )
			local index1 = ReadByte( rpk )
			local index2 = ReadByte( rpk )
			local count = ReadByte( rpk )

			if count == 0 then
				return
			end
			PRINT( "MsgProc:Buy goods boatid =, itemtype = , index1 = , index2 =, count = ", boatid, itemtype, index1, index2, count )
			BuyGoods( character, npc, trade, boatid, itemtype, index1, index2, count )
		elseif tradetype == ROLE_TRADE_SELECT_BOAT then --选择交易船只
			local index = ReadByte( rpk )
			PRINT( "MsgProc:index = ", index )
			TradeGoods( character, npc, trade, index )
		else
			return SystemNotice( character, "MsgProc:交易请求命令错误！" )
		end
	elseif usCmd == CMD_CM_MISSION then --任务处理
		return MissionProc( character, npc, rpk, missionlist )
	else
		EXLG( "NpcSdk_error", "MsgProc:未知的网络命令！CMD = %d", usCmd )
		return SystemNotice( character, "MsgProc:未知的网络命令！" )
	end
end


function GiveHoe(role,npc)
	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem ( role , 3908  , 1 , 4 )		
	local Itemnew = GetChaItem ( role , 2 , r2 )
	
	SetItemAttr(Itemnew, ITEMATTR_URE, 10 )--当前存储经验
	SetItemAttr(Itemnew, ITEMATTR_MAXURE, 10 )--最高存储经验
	RefreshCha(role)
end

function CheckMetal(role,npc)
	local hoe_Count = CheckBagItem ( role , 3908 ) --检查锄头数量
	local hoe_temp = GetChaItem2 ( role , 2 , 3908 ) --取锄头对象
	local hoe_maxUre = GetItemAttr ( hoe_temp , ITEMATTR_MAXURE)
	
	if  hoe_Count ==1 then
		if hoe_maxUre <50 then
			SetItemAttr(hoe_temp,ITEMATTR_MAXURE,5000)
			SetItemAttr(hoe_temp,ITEMATTR_URE,5000)
			SystemNotice(role,"您的合金矿镐已经恢复正常")
		else
			SystemNotice(role,"对不起，您的合金矿镐是正常产品哦")
		end
	else
		SystemNotice(role,"对不起，请保证背包内有一把损坏的合金矿镐")
	end
	RefreshCha(role)
end

function PKPointToZero(role,npc)
	local PK_Count =  CheckBagItem ( role , 3849 ) --检查有没有荣誉之证
	local PK_Book = GetChaItem2 ( role , 2 , 3849 ) --取得荣誉之证对象
	
	if PK_Count >= 1 then
		SetItemAttr(PK_Book , ITEMATTR_MAXENERGY,0)
		SystemNotice(role,"您的乱斗点数已经清零")
	else
		SystemNotice(role,"对不起，您没有携带荣誉之证哦")
	end
	RefreshCha(role)
end

function GoTosdBoss ( role, value )
	local br_x = {}
	local br_y = {}
	br_x[1] = {}
	br_x[2] = {}
	br_x[3] = {}
	br_x[4] = {}
	br_x[5] = {}
	br_y[1] = {}
	br_y[2] = {}
	br_y[3] = {}
	br_y[4] = {}
	br_y[5] = {}
	br_x[1][1] = 21
	br_x[1][2] = 98
	br_x[1][3] = 98
	br_x[1][4] = 21
	br_x[2][1] = 453
	br_x[2][2] = 530
	br_x[2][3] = 530
	br_x[2][4] = 453
	br_x[3][1] = 884
	br_x[3][2] = 961
	br_x[3][3] = 961
	br_x[3][4] = 884
	br_x[4][1] = 21
	br_x[4][2] = 98
	br_x[4][3] = 98
	br_x[4][4] = 21
	br_x[5][1] = 453
	br_x[5][2] = 530
	br_x[5][3] = 530
	br_x[5][4] = 453
	br_y[1][1] = 21
	br_y[1][2] = 21
	br_y[1][3] = 93
	br_y[1][4] = 93
	br_y[2][1] = 21
	br_y[2][2] = 21
	br_y[2][3] = 93
	br_y[2][4] = 93
	br_y[3][1] = 21
	br_y[3][2] = 21
	br_y[3][3] = 93
	br_y[3][4] = 93
	br_y[4][1] = 396
	br_y[4][2] = 396
	br_y[4][3] = 468
	br_y[4][4] = 468
	br_y[5][1] = 396
	br_y[5][2] = 396
	br_y[5][3] = 468
	br_y[5][4] = 468
	local n = math.random( 1 , 4 )
	GoTo( role, br_x[value][n] , br_y[value][n] , "sdBoss")
	return LUA_TRUE
end
------------兑换彩票一等奖  by Peter
function DuiHhuan1( role )
    local ItemWei=GetSItemGrid( role,1 )
    local ItemIssue=GetTicketIssue
    local Issue=GetLotteryIssue
  if  ItemWei==5828 and ItemIssue==Issue-1  then
        local  no1 =GetWinLotteryItemno(issue, 1)         --中奖号码个位
	local  no2 =GetWinLotteryItemno(issue, 2)          --中奖号码十位
	local  no3 =GetWinLotteryItemno(issue, 3)          --中奖号码百位
	local  no4 =GetWinLotteryItemno(issue, 4)          --中奖号码千位
	local  no5 =GetWinLotteryItemno(issue, 5)          --中奖号码万位
	local  no6 =GetWinLotteryItemno(issue, 6)          --中奖号码十万位
        local  Nom1 =GetWinLotteryItemno(1, 1)         --彩票号码个位
	local  Nom2 =GetWinLotteryItemno(1, 2)          --彩票号码十位
	local  Nom3 =GetWinLotteryItemno(1, 3)          --彩票号码百位
	local  Nom4 =GetWinLotteryItemno(1, 4)          --彩票号码千位
	local  Nom5 =GetWinLotteryItemno(1, 5)          --彩票号码万位
	local  Nom6 =GetWinLotteryItemno(1, 6)          --彩票号码十万位
       if  no1==nom1 and  no2==nom2 and no3==nom3 and no4==nom4 and no5==nom5 and no6==nom6	then
        return LUA_TRUE
       else
			return LUA_FALSE
       end
 end
end
     
---------------兑换彩票二等奖 by Peter
function DuiHhuan2( role )
    local ItemWei=GetSItemGrid( role,1 )
    local ItemIssue=GetTicketIssue
    local Issue=GetLotteryIssue
if  ItemWei==5828 and ItemIssue==Issue-1  then
        local  no1 =GetWinLotteryItemno(issue, 1)         --中奖号码个位
	local  no2 =GetWinLotteryItemno(issue, 2)          --中奖号码十位
	local  no3 =GetWinLotteryItemno(issue, 3)          --中奖号码百位
	local  no4 =GetWinLotteryItemno(issue, 4)          --中奖号码千位
	local  no5 =GetWinLotteryItemno(issue, 5)          --中奖号码万位
	local  no6 =GetWinLotteryItemno(issue, 6)          --中奖号码十万位
        local  Nom1 =GetWinLotteryItemno(1, 1)         --彩票号码个位
	local  Nom2 =GetWinLotteryItemno(1, 2)          --彩票号码十位
	local  Nom3 =GetWinLotteryItemno(1, 3)          --彩票号码百位
	local  Nom4 =GetWinLotteryItemno(1, 4)          --彩票号码千位
	local  Nom5 =GetWinLotteryItemno(1, 5)          --彩票号码万位
	local  Nom6 =GetWinLotteryItemno(1, 6)          --彩票号码十万位
       if  no1==nom1 and  no2==nom2 and no3==nom3 and no4==nom4 and no5==nom5  then
               return LUA_TRUE
         elseif no2==nom2 and no3==nom3 and no4==nom4 and no5==nom5 and no6==nom6	then
	       return LUA_TRUE
       else
	      return LUA_FALSE
       end
  end
end

-------------兑换彩票三等奖 by Peter
function DuiHhuan3( role )
    local ItemWei=GetSItemGrid( role,1 )
    local ItemIssue=GetTicketIssue
    local Issue=GetLotteryIssue
  if  ItemWei==5828 and ItemIssue==Issue-1  then
        local  no1 =GetWinLotteryItemno(issue, 1)         --中奖号码个位
	local  no2 =GetWinLotteryItemno(issue, 2)          --中奖号码十位
	local  no3 =GetWinLotteryItemno(issue, 3)          --中奖号码百位
	local  no4 =GetWinLotteryItemno(issue, 4)          --中奖号码千位
	local  no5=GetWinLotteryItemno(issue, 5)          --中奖号码万位
	local  no6 =GetWinLotteryItemno(issue, 6)          --中奖号码十万位
        local  Nom1 =GetWinLotteryItemno(1, 1)         --彩票号码个位
	local  Nom2 =GetWinLotteryItemno(1, 2)          --彩票号码十位
	local  Nom3 =GetWinLotteryItemno(1, 3)          --彩票号码百位
	local  Nom4 =GetWinLotteryItemno(1, 4)          --彩票号码千位
	local  Nom5=GetWinLotteryItemno(1, 5)          --彩票号码万位
	local  Nom6 =GetWinLotteryItemno(1, 6)          --彩票号码十万位
       if  no1==nom1 and  no2==nom2 and no3==nom3 and no4==nom4   then 
               return LUA_TRUE
       elseif no2==nom2 and no3==nom3 and no4==nom4 and no5==nom5  then 
               return LUA_TRUE
       elseif no3==nom3 and no4==nom4 and no5==nom5 and no6==nom6 then
              return LUA_TRUE
       else
		return LUA_FALSE
       end
 end
end
----------兑换彩票四等奖 by Peter
function DuiHhuan4( role )
    local ItemWe i= GetSItemGrid( role,1 )
    local ItemIssue = GetTicketIssue
    local Issue = GetLotteryIssue
    if  ItemWei==5828 and ItemIssue==Issue-1  then
        local  no1 =GetWinLotteryItemno(issue, 1)         --中奖号码个位
	local  no2 =GetWinLotteryItemno(issue, 2)          --中奖号码十位
	local  no3 =GetWinLotteryItemno(issue, 3)          --中奖号码百位
	local  no4 =GetWinLotteryItemno(issue, 4)          --中奖号码千位
	local  no5=GetWinLotteryItemno(issue, 5)          --中奖号码万位
	local  no6 =GetWinLotteryItemno(issue, 6)          --中奖号码十万位
        local  Nom1 =GetWinLotteryItemno(1, 1)         --彩票号码个位
	local  Nom2 =GetWinLotteryItemno(1, 2)          --彩票号码十位
	local  Nom3 =GetWinLotteryItemno(1, 3)          --彩票号码百位
	local  Nom4 =GetWinLotteryItemno(1, 4)          --彩票号码千位
	local  Nom5=GetWinLotteryItemno(1, 5)          --彩票号码万位
	local  Nom6 =GetWinLotteryItemno(1, 6)          --彩票号码十万位
       if  no1==nom1 and  no2==nom2 and no3==nom3   then 
	        return LUA_TRUE
       elseif no2==nom2 and no3==nom3 and no4==nom4  then
	      return LUA_TRUE
       elseif no3==nom3 and no4==nom4 and no5==nom5  then
               return LUA_TRUE
       elseif no4==nom4 and no5==nom5 and no6==nom6  then
	       return LUA_TRUE
       else
		return LUA_FALSE
       end
  end
end
-------------兑换彩票五等奖 by Peter
function DuiHhuan5( role )
    local ItemWei = GetSItemGrid( role,1 )
    local ItemIssue = GetTicketIssue
    local Issue = GetLotteryIssue
    if  ItemWei==5828 and ItemIssue==Issue-1  then
        local  no1 =GetWinLotteryItemno(issue, 1)         --中奖号码个位
	local  no2 =GetWinLotteryItemno(issue, 2)          --中奖号码十位
	local  no3 =GetWinLotteryItemno(issue, 3)          --中奖号码百位
	local  no4 =GetWinLotteryItemno(issue, 4)          --中奖号码千位
	local  no5=GetWinLotteryItemno(issue, 5)          --中奖号码万位
	local  no6 =GetWinLotteryItemno(issue, 6)          --中奖号码十万位
	local  no0 =GetWinLotteryItemno(issue, 0)          --中奖号码全部
        local  Nom1 =GetWinLotteryItemno(1, 1)         --彩票号码个位
	local  Nom2 =GetWinLotteryItemno(1, 2)          --彩票号码十位
	local  Nom3 =GetWinLotteryItemno(1, 3)          --彩票号码百位
	local  Nom4 =GetWinLotteryItemno(1, 4)          --彩票号码千位
	local  Nom5=GetWinLotteryItemno(1, 5)          --彩票号码万位
	local  Nom6 =GetWinLotteryItemno(1, 6)          --彩票号码十万位
       if  no1==nom1 and  no2==nom2 then
               return LUA_TRUE
       elseif no2==nom2 and no3==nom3  then
               return LUA_TRUE
       elseif no3==nom3 and no4==nom4 then
               return LUA_TRUE
       elseif no4==nom4 and no5==nom5  then 
               return LUA_TRUE
       elseif  no5==nom5 and no6==nom6 then
               return LUA_TRUE
       else
		return LUA_FALSE
       end
  end
end
---------------------Job Changer by Azure Epix

function CH1_1 ( role,npc ) ------Swordsman
	local cha_type = GetChaTypeID ( role )	
	local cha_MY = GetChaAttr(role, ATTR_GD)
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local Lv_check = GetChaAttr(role, ATTR_LV)
	
	if cha_type ==4 or cha_MY <= 10000 or cha_job ~= 0 or Lv_check < 9 then
		SystemNotice( role ,"You need to have 10,000 gold and must be a newbie of Lance, Carsise or Phyllis to be a Swordsman")
		return
	end

	
	if cha_type ==1 or cha_type ==2 or cha_type ==3 and cha_job == 0 and cha_MY >= 10000 and Lv_check > 8 then
		TakeMoney(role,0,10000)
	end
	

	
	SetChaAttr(role, ATTR_JOB ,1 ) 
	RefreshCha ( role )
end

function CH1_2 ( role,npc )  ------Hunter 
	local cha_type = GetChaTypeID ( role )	
	local cha_MY = GetChaAttr(role, ATTR_GD)
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local Lv_check = GetChaAttr(role, ATTR_LV)
	
	if cha_type ==2 or cha_type ==4 or cha_MY <= 10000 or cha_job ~= 0 or Lv_check < 9 then
		SystemNotice( role ,"You need to have 10,000 gold and must be a newbie of Lance or Phyllis to be Hunter")
		return
	end

	
	if cha_type ==1 or cha_type ==3 and cha_job == 0 and cha_MY >= 10000 and Lv_check > 8 then
		TakeMoney(role,0,10000)
	end
	

	
	SetChaAttr(role, ATTR_JOB ,2 ) 
	RefreshCha ( role )
end

function CH1_3 ( role,npc )  ------Explorer 
	local cha_type = GetChaTypeID ( role )	
	local cha_MY = GetChaAttr(role, ATTR_GD)
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local Lv_check = GetChaAttr(role, ATTR_LV)
	
	if cha_type ==2 or cha_MY <= 10000 or cha_job ~= 0 or Lv_check < 9 then
		SystemNotice( role ,"You need to have 10,000 gold and must be a newbie of Ami, Lance or Phyllis to be an Explorer")
		return
	end

	
	if cha_type ==1 or cha_type ==3 or cha_type ==4 and cha_job == 0 and cha_MY >= 10000 and Lv_check > 8 then
		TakeMoney(role,0,10000)
	end
	
	
	SetChaAttr(role, ATTR_JOB ,4 ) 
	RefreshCha ( role )
end

function CH1_4 ( role,npc )  ------Herbalist
	local cha_type = GetChaTypeID ( role )	
	local cha_MY = GetChaAttr(role, ATTR_GD)
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local Lv_check = GetChaAttr(role, ATTR_LV)
	
	if cha_type ==2 or cha_type ==1 or cha_MY <= 10000 or cha_job ~= 0 or Lv_check < 9 then
		SystemNotice( role ,"You need to have 10,000 gold and must be a newbie of Ami or Phyllis to be Herblist")
		return
	end

	
	if cha_type ==3 or cha_type ==4 and cha_job == 0 and cha_MY >= 10000 and Lv_check > 8 then
		TakeMoney(role,0,10000)
	end
	
	SetChaAttr(role, ATTR_JOB ,5 ) 
	RefreshCha ( role )
end


function CH2_1 ( role,npc )  ------2nd class Cruz
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local cha_type = GetChaTypeID ( role )	
	local cha_MY = GetChaAttr(role, ATTR_GD)
	local Lv_check = GetChaAttr(role, ATTR_LV)
	
	if cha_type ==2 or cha_type ==4 or cha_MY <= 50000 or cha_job ~= 1 or Lv_check < 40 then
		SystemNotice( role ,"You must have 50,000g And Be a Sowrdman and be Phlliss/Lance to be Get To be Crusader")
		return
	end
	
	if cha_job == 1 then
		TakeMoney(role,0,50000)   
	end
	
	
	SetChaAttr(role, ATTR_JOB ,9 )  
	RefreshCha ( role )
end

function CH2_2 ( role,npc )  ------Voyager
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local cha_type = GetChaTypeID ( role )	
	local cha_MY = GetChaAttr(role, ATTR_GD)
	local Lv_check = GetChaAttr(role, ATTR_LV)
	
	if cha_type ==2 or cha_MY <= 50000 or cha_job ~= 4 or Lv_check < 40 then
		SystemNotice( role ,"You need to have 50,000 gold and must be an Explorer to be a Voyager")
		return
	end
	
	if cha_job == 4 then
		TakeMoney(role,0,50000)  
	end

	
	
	SetChaAttr(role, ATTR_JOB ,16 )  
	RefreshCha ( role )
end

function CH2_3 ( role,npc )  ------SharpShooter
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local cha_type = GetChaTypeID ( role )	
	local cha_MY = GetChaAttr(role, ATTR_GD)
	local Lv_check = GetChaAttr(role, ATTR_LV)
	
	if cha_type ==2 or cha_type ==4 or cha_MY <= 50000 or cha_job ~= 2 or Lv_check < 40 then
		SystemNotice( role ,"You need to have 50,000 gold and must be a Hunter to be a Sharp Shooter")
		return
	end
	
	if cha_job == 2 then 
		TakeMoney(role,0,50000)
	end
	
	
	SetChaAttr(role, ATTR_JOB ,12 ) 
	RefreshCha ( role )
end

function CH2_4 ( role,npc )  ------Champion
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local cha_type = GetChaTypeID ( role )	
	local cha_MY = GetChaAttr(role, ATTR_GD)
	local Lv_check = GetChaAttr(role, ATTR_LV)
	
	if cha_type ~=2 or cha_MY <= 50000 or cha_job ~= 1 or Lv_check < 40 then
		SystemNotice( role ,"You need to have 50,000 gold and must be Carsise Swordsman to be a Champion")
		return
	end
	
	if cha_job == 1 then
		TakeMoney(role,0,50000)  
	end
	

	
	SetChaAttr(role, ATTR_JOB ,8 )  
	RefreshCha ( role )
end

function CH2_5 ( role,npc )  ------Seal Master
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local cha_type = GetChaTypeID ( role )	
	local cha_MY = GetChaAttr(role, ATTR_GD)
	local Lv_check = GetChaAttr(role, ATTR_LV)

	if cha_type ~=3 or cha_type ~=4 or cha_MY <= 50000 or cha_job ~= 5 or Lv_check < 40 then
		SystemNotice( role ,"You need to have 50,000 gold and must be a Herblist to be a Seal Master")
		return
	end
	
	if cha_job == 5 then
		TakeMoney(role,0,50000)  
	end
	

	SetChaAttr(role, ATTR_JOB ,14 ) 
	RefreshCha ( role )
end

function CH2_6 ( role,npc )  ------Cleric
	local cha_job = GetChaAttr(role, ATTR_JOB)
	local cha_type = GetChaTypeID ( role )	
	local cha_MY = GetChaAttr(role, ATTR_GD)
	local Lv_check = GetChaAttr(role, ATTR_LV)


	if cha_type ~=3 or cha_type ~=4 or cha_MY <= 50000 or cha_job ~= 5 or Lv_check < 40 then
		SystemNotice( role ,"You need to have 50,000 gold and must be a Herblist to be a Cleric")
		return
	end
	
	if cha_job == 5 then
		TakeMoney(role,0,50000)
	end
	
	
	
	
	
	SetChaAttr(role, ATTR_JOB ,13 ) 
	RefreshCha ( role )
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------          MoMoCode         ------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function GetChaName_born ( role )

	local cha_name = GetChaDefaultName ( role )
	local cha_lv = GetChaAttr(role, ATTR_LV) 
	local cha_job = GetChaAttr(role, ATTR_JOB)

	local i = CheckBagItem( role, 2235 )
	if i < 1 then
		SystemNotice( role ,"Please show your proof of rebirth")
		return 0
	end

	local item_empty=IsEquip(role)
	if item_empty==LUA_TRUE then
		SystemNotice(role,"Please place the item from character's equipment slot into the inventory")
		return 0	
	end

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 5 then
		SystemNotice(role ,"Inventory needs to have at least 5 slots")
		UseItemFailed ( role )
		return 0
	end
	local zs1 =TakeItem( role, 0,2235, 1 )
	if zs1==0 then
		SystemNotice ( role ,"Gather Rebirth Stone failed")
		return 0
	end

	local Zs_Exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if Zs_Exp > 0 then
		SystemNotice(role ,"You've already rebirth")
		return 0
	end

	local cha_skill_num=GetChaAttr(role, ATTR_TP  )

	local clear_skill_num=ClearFightSkill(role)

	cha_skill_num=cha_skill_num+clear_skill_num
	SetChaAttr(role, ATTR_TP ,cha_skill_num ) 

	local ap = GetChaAttr( role , ATTR_AP )

	local cha_str = GetChaAttr(role, ATTR_BSTR  ) 
	local cha_dex = GetChaAttr(role, ATTR_BDEX  ) 
	local cha_agi = GetChaAttr(role, ATTR_BAGI  ) 
	local cha_con = GetChaAttr(role, ATTR_BCON ) 
	local cha_sta = GetChaAttr(role, ATTR_BSTA )
	ap=ap+cha_str+cha_dex+cha_agi+cha_con+cha_sta-25
	SetChaAttr(role, ATTR_BSTR ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BDEX ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BAGI ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BCON,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BSTA,5 ) 
	SyncChar(role,4)
	SetChaAttr(role , ATTR_AP,ap  )
	SyncChar(role,4)
	AddSailExp(role, npc , 1 , 1 )
	local sk_add = SK_ZSSL
	AddChaSkill ( role , sk_add , 1 , 1 , 0 )

	PlayEffect( npc, 361 )
	Notice("Extreme celebration "..cha_name.." Rebirth successful. Blessing from the whole server "..cha_name.." Hope you have a safe journey and everything goes your way!")
	return 1

end

function GetChaName1_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 then
		SystemNotice( role ,"Only Lance can change into Crusader")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"Rebirth requirements not met")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,9 ) 	
	GiveItem_chibang ( role  )				--3ao
	GiveItem_zsbook ( role )
	RefreshCha ( role )
end

function GetChaName2_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=2 then
		SystemNotice( role ,"Only Carsise can become Champion")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"Rebirth requirements not met")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,8 )
	GiveItem_chibang ( role  )				--3ao
	GiveItem_zsbook ( role )
	RefreshCha ( role )
end

function GetChaName3_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 and cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"Only Lance, Phyllis or Ami can be voyager")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"Rebirth requirements not met")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,16 ) 	
	GiveItem_chibang ( role  )				--3ao
	GiveItem_zsbook ( role )
	RefreshCha ( role )
end

function GetChaName4_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 and cha_type~=3 then
		SystemNotice( role ,"Only Lance, Phyllis can become SharpShooter")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"Rebirth requirements not met")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,12 ) 	
	GiveItem_chibang ( role  )				--3ao
	GiveItem_zsbook ( role )
	RefreshCha ( role )
end

function GetChaName5_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"Only Phyllis and Ami can become Cleric")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"Rebirth requirements not met")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,13 ) 	
	GiveItem_chibang ( role  )				--3ao
	GiveItem_zsbook ( role )
	RefreshCha ( role )
end

function GetChaName6_born ( role,npc )

        local cha_type = GetChaTypeID ( role )
	if cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"Only Phyllis and Ami can become SealMaster")
		return
	end
	local check=GetChaName_born ( role )
	if check==0 then
		SystemNotice( role ,"Rebirth requirements not met")
		return
	end

	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,14 ) 	
	GiveItem_chibang ( role  )				--3ao
	GiveItem_zsbook ( role )
	RefreshCha ( role )
end

function GiveItem_chibang ( role  )
        local cha_type = GetChaTypeID ( role )
	if cha_type==1 then
		GiveItem( role , 0 , 134  , 1 , 4 )
	elseif cha_type==2 then
		GiveItem( role , 0 , 138  , 1 , 4 )
	elseif cha_type==3 then
		GiveItem( role , 0 , 128  , 1 , 4 )
	elseif cha_type==4 then
		GiveItem( role , 0 , 131  , 1 , 4 )
	end
end

function GiveItem_zsbook ( role )
	local cha_job = GetChaAttr(role, ATTR_JOB)

	if cha_job == 8 then
		GiveItem( role , 0 , 2957 , 1 , 4 )
	elseif cha_job == 9 then
		GiveItem( role , 0 , 2956 , 1 , 4 )
	elseif cha_job == 12 then
		GiveItem( role , 0 , 2961 , 1 , 4 )
	elseif cha_job == 13 then
		GiveItem( role , 0 , 2959 , 1 , 4 )
	elseif cha_job == 14 then
		GiveItem( role , 0 , 2958 , 1 , 4 )
	elseif cha_job == 16 then
		GiveItem( role , 0 , 2960 , 1 , 4 )
	end
end


	
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------- END MOMO CODE --------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



------------------------------Dina Rebirth
------------------------------
function GetChaName1_born2 ( role,npc )
	-----------------Crusader Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 then
		SystemNotice( role ,"Only Lance Can Become Crusader")
		return
	end
	local check=GetChaName_born2 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------Skill Add
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,9 ) 	
	GiveItem_chibang2 ( role  )				--Wings Add
	local sk_add = SK_WYZ
	AddChaSkill ( role , sk_add , 2 , 2 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end
-------------------------------Champ
function GetChaName2_born2 ( role,npc )
	-----------------Champ Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=2 then
		SystemNotice( role ,"Only Carsise Can become Champion")
		return
	end
	local check=GetChaName_born2 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------Skill Add
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,8 )
	GiveItem_chibang2 ( role  )				--Wings Add
	local sk_add = SK_BSJ
	AddChaSkill ( role , sk_add , 2 , 2 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end
-------------------------------Voyager
function GetChaName3_born2 ( role,npc )
	-----------------?Voyager Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 and cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"Only Lance,Phyllis,Ami Can Become Voyager")
		return
	end
	local check=GetChaName_born2 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------GiveSkill
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,16 ) 	
	GiveItem_chibang2 ( role  )				--Wings Add
	local sk_add = SK_CYN
	AddChaSkill ( role , sk_add , 2 , 2 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end
-------------------------------SharpShooter
function GetChaName4_born2 ( role,npc )
	-----------------?Sharpshooter Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 and cha_type~=3 then
		SystemNotice( role ,"Only Lance,Phyllis Can Become Sharpshooter")
		return
	end
	local check=GetChaName_born2 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------Skill Add
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,12 ) 	
	GiveItem_chibang2 ( role  )				--Wings Add
	local sk_add = SK_HLP
	AddChaSkill ( role , sk_add , 2 , 2 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end
-------------------------------Cleric
function GetChaName5_born2 ( role,npc )
	-----------------Cleric Born
        local cha_type = GetChaTypeID ( role )
	if  cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"Only Phyllis,Ami Can Become Cleric")
		return
	end
	local check=GetChaName_born2 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------Skill Add
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,13 ) 	
	GiveItem_chibang2 ( role  )				--Rebirth Wings Add
	local sk_add = SK_SSSP
	AddChaSkill ( role , sk_add , 2 , 2 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end
-------------------------------Seal Master
function GetChaName6_born2 ( role,npc )
	-----------------?Seal Master Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"Only Phyllis,Ami Can Become Seal Master")
		return
	end
	local check=GetChaName_born2 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------SkillAdd
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,14 ) 	
	GiveItem_chibang2 ( role  )				--Rebirth Wings Add
	local sk_add = SK_SSSP
	AddChaSkill ( role , sk_add , 2 , 2 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end

function GiveItem_chibang2 ( role  )
        local cha_type = GetChaTypeID ( role )	
	if cha_type==1 then
		GiveItem( role , 0 , 136  , 1 , 4 )
	elseif cha_type==2 then
		GiveItem( role , 0 , 139  , 1 , 4 )
	elseif cha_type==3 then
		GiveItem( role , 0 , 129  , 1 , 4 )
	elseif cha_type==4 then
		GiveItem( role , 0 , 132  , 1 , 4 )
	end
end

-------------------------------Check Lv2 RB
function GetChaName_born2 ( role )
	-----------------??????
	local cha_name = GetChaDefaultName ( role )
	-----------------??????
	local cha_lv = GetChaAttr(role, ATTR_LV)
	-----------------??????
	local cha_job = GetChaAttr(role, ATTR_JOB)
	-----------------???????????????
	local i = CheckBagItem( role, 5765 )    
	if i < 1 then
		SystemNotice( role ,"Please Give Me Ur 2nd Rebirth Stone")
		return 0
	end

	local op1 = CheckBagItem( role, 134 )
	local op2 = CheckBagItem( role, 138 )
	local op3 = CheckBagItem( role, 128 )
	local op4 = CheckBagItem( role, 131 )
	if op1 < 1 and op2 < 1 and op3 < 1 and op4 < 1 then
		SystemNotice( role ,"Please take your first rebirth wings with you!")
		return 0
	end
	-----------------????????????
	local item_empty=IsEquip(role)
	if item_empty==LUA_TRUE then
		SystemNotice(role,"Please place the item from character's equipment slot into the inventory")
		return 0	
	end
	-----------------????????????
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory Needs Atleast 1 Free Slot")
		UseItemFailed ( role )
		return 0
	end
	local zs1 =TakeItem( role, 0,5765, 1 )
	if zs1==0 then
		SystemNotice ( role ,"Gather Lv2 Rebirth Stone Failed")
		return 0
	end
	------------------???????????
	local Zs_Exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if Zs_Exp >=10000 then
		SystemNotice(role ,"U have Already Done Lv2 Rebirth")
		return 0
	end
	local cha_skill_num=GetChaAttr(role, ATTR_TP  )

	local clear_skill_num=ClearFightSkill(role)

	cha_skill_num=cha_skill_num+clear_skill_num
	SetChaAttr(role, ATTR_TP ,cha_skill_num ) 

	local ap = GetChaAttr( role , ATTR_AP )

	local cha_str = GetChaAttr(role, ATTR_BSTR  ) 
	local cha_dex = GetChaAttr(role, ATTR_BDEX  ) 
	local cha_agi = GetChaAttr(role, ATTR_BAGI  ) 
	local cha_con = GetChaAttr(role, ATTR_BCON ) 
	local cha_sta = GetChaAttr(role, ATTR_BSTA )
	ap=ap+cha_str+cha_dex+cha_agi+cha_con+cha_sta-25
	SetChaAttr(role, ATTR_BSTR ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BDEX ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BAGI ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BCON,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BSTA,5 ) 
	SyncChar(role,4)
	SetChaAttr(role , ATTR_AP,ap  )
	SyncChar(role,4)
	AddSailExp(role, npc , 1 , 1 )
	local sk_add = SK_ZSSL
	--AddChaSkill ( role , sk_add , 2 , 2 , 0 )
	AddChaSkill ( role , sk_add , 2 , 2 , 0 )

	PlayEffect( npc, 361 )
	Notice("Extreme celebration "..cha_name.." Rebirth 2nd successful. Blessing from the whole server "..cha_name.." Hope you have a safe journey and everything goes your way!")
	return 1

end

------------------------------Dina Lv3 Rebirth
function GetChaName1_born3 ( role,npc )
	-----------------Crusader Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 then
		SystemNotice( role ,"Only Lance Can Become Crusader")
		return
	end
	local check=GetChaName_born3 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------Skill Add
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,9 ) 	
	GiveItem_chibang3 ( role  )				--Wings Add
	local sk_add = SK_WYZ
	AddChaSkill ( role , sk_add , 3 , 3 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end
-------------------------------Champ
function GetChaName2_born3 ( role,npc )
	-----------------Champ Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=2 then
		SystemNotice( role ,"Only Carsise Can become Champion")
		return
	end
	local check=GetChaName_born3 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------Skill Add
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,8 )
	GiveItem_chibang3 ( role  )				--Wings Add
	local sk_add = SK_BSJ
	AddChaSkill ( role , sk_add , 3 , 3 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end
-------------------------------Voyager
function GetChaName3_born3 ( role,npc )
	-----------------?Voyager Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 and cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"Only Lance,Phyllis,Ami Can Become Voyager")
		return
	end
	local check=GetChaName_born3 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------GiveSkill
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,16 ) 	
	GiveItem_chibang3 ( role  )				--Wings Add
	local sk_add = SK_CYN
	AddChaSkill ( role , sk_add , 3 , 3 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end
-------------------------------SharpShooter
function GetChaName4_born3 ( role,npc )
	-----------------?Sharpshooter Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=1 and cha_type~=3 then
		SystemNotice( role ,"Only Lance,Phyllis Can Become Sharpshooter")
		return
	end
	local check=GetChaName_born3 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------Skill Add
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,12 ) 	
	GiveItem_chibang3 ( role  )				--Wings Add
	local sk_add = SK_HLP
	AddChaSkill ( role , sk_add , 3 , 3 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end
-------------------------------Cleric
function GetChaName5_born3 ( role,npc )
	-----------------Cleric Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"Only Phyllis,Ami Can Become Cleric")
		return
	end
	local check=GetChaName_born3 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------Skill Add
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,13 ) 	
	GiveItem_chibang3 ( role  )				--Rebirth Wings Add
	local sk_add = SK_SSSP
	AddChaSkill ( role , sk_add , 3 , 3 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end
-------------------------------Seal Master
function GetChaName6_born3 ( role,npc )
	-----------------?Seal Master Born
        local cha_type = GetChaTypeID ( role )
	if cha_type~=3 and cha_type~=4 then
		SystemNotice( role ,"Only Phyllis,Ami Can Become Seal Master")
		return
	end
	local check=GetChaName_born3 ( role )
	if check==0 then
		SystemNotice( role ,"Requirements Do Not Meet")
		return
	end
	-----------------SkillAdd
	local cha_job = GetChaAttr( role , ATTR_JOB )
	SetChaAttr(role, ATTR_JOB ,14 ) 	
	GiveItem_chibang3 ( role  )				--Rebirth Wings Add
	local sk_add = SK_SSSP
	AddChaSkill ( role , sk_add , 3 , 3 , 0 )
	SetChaAttrI(role, ATTR_CSAILEXP , 10000)
	RefreshCha ( role )
end

function GiveItem_chibang3 ( role  )
        local cha_type = GetChaTypeID ( role )	
	if cha_type==1 then
		GiveItem( role , 0 , 137  , 1 , 4 )
	elseif cha_type==2 then
		GiveItem( role , 0 , 140  , 1 , 4 )
	elseif cha_type==3 then
		GiveItem( role , 0 , 130  , 1 , 4 )
	elseif cha_type==4 then
		GiveItem( role , 0 , 133  , 1 , 4 )
	end
end

-------------------------------Check Lv3 RB
function GetChaName_born3 ( role )
	-----------------??????
	local cha_name = GetChaDefaultName ( role )
	-----------------??????
	local cha_lv = GetChaAttr(role, ATTR_LV)
	-----------------??????
	local cha_job = GetChaAttr(role, ATTR_JOB)
	-----------------???????????????
	local i = CheckBagItem( role, 6204 )    
	if i < 1 then
		SystemNotice( role ,"Please Give Me Ur 3rd Rebirth Stone")
		return 0
	end
	local op1 = CheckBagItem( role, 136 )
	local op2 = CheckBagItem( role, 139 )
	local op3 = CheckBagItem( role, 129 )
	local op4 = CheckBagItem( role, 132 )
	if op1 < 1 and op2 < 1 and op3 < 1 and op4 < 1 then
		SystemNotice( role ,"Please take 2nd Rebirth Wings with you!")
		return 0
	end
	-----------------????????????
	local item_empty=IsEquip(role)
	if item_empty==LUA_TRUE then
		SystemNotice(role,"Please place the item from character's equipment slot into the inventory")
		return 0	
	end
	-----------------????????????
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory Needs Atleast 1 Free Slot")
		UseItemFailed ( role )
		return 0
	end
	local zs1 =TakeItem( role, 0,6204, 1 )
	if zs1==0 then
		SystemNotice ( role ,"Gather Lv3 Rebirth Stone Failed")
		return 0
	end
	------------------???????????
	local Zs_Exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if Zs_Exp >10000 then
		SystemNotice(role ,"U have Already Done Lv3 Rebirth")
		return 0
	end
	local cha_skill_num=GetChaAttr(role, ATTR_TP  )

	local clear_skill_num=ClearFightSkill(role)

	cha_skill_num=cha_skill_num+clear_skill_num
	SetChaAttr(role, ATTR_TP ,cha_skill_num ) 

	local ap = GetChaAttr( role , ATTR_AP )

	local cha_str = GetChaAttr(role, ATTR_BSTR  ) 
	local cha_dex = GetChaAttr(role, ATTR_BDEX  ) 
	local cha_agi = GetChaAttr(role, ATTR_BAGI  ) 
	local cha_con = GetChaAttr(role, ATTR_BCON ) 
	local cha_sta = GetChaAttr(role, ATTR_BSTA )
	ap=ap+cha_str+cha_dex+cha_agi+cha_con+cha_sta-25
	SetChaAttr(role, ATTR_BSTR ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BDEX ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BAGI ,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BCON,5 ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BSTA,5 ) 
	SyncChar(role,4)
	SetChaAttr(role , ATTR_AP,ap  )
	SyncChar(role,4)
	AddSailExp(role, npc , 1 , 1 )
	local sk_add = SK_ZSSL
	AddChaSkill ( role , sk_add , 3 , 2 , 0 )
		
		
	PlayEffect( npc, 361 )
	Notice("Extreme celebration "..cha_name.." Rebirth 3rd successful. Blessing from the whole server "..cha_name.." Hope you have a safe journey and everything goes your way!")
	return 1

end



