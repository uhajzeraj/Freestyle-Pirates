--------------------------------------------------------------------------
--									--
--									--
--				AInit_Attr.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading Init_Attr.lua" )


function Init_attr() 
--LG("init_attr", "enter function initattr : " , "\n" ) 
for i = 0, 240, 1 do						--初始化所有属性
	SetChaAttrMax( i, 100000000) 
end 
end 

Init_attr() 

SetChaAttrMax( ATTR_LV		,	130		)	-- Max Level Possible
SetChaAttrMax( ATTR_HP		,	2000000000	)	-- 当前HP
SetChaAttrMax( ATTR_SP		,	2000000000	)	-- 当前SP
SetChaAttrMax( ATTR_JOB		,	100		)	-- 角色职业
SetChaAttrMax( ATTR_CEXP	,	4200000000	)	-- 当前经验
SetChaAttrMax( ATTR_NLEXP	,	4200000000	)	-- 下一级所需经验
SetChaAttrMax( ATTR_AP		,	300		)	-- 属性点
SetChaAttrMax( ATTR_TP		,	200		)	-- 技能点
SetChaAttrMax( ATTR_GD		,	2000000000	)	-- 金钱
SetChaAttrMax( ATTR_CLEXP	,	4200000000	)	-- 当前等级的经验
SetChaAttrMax( ATTR_MXHP	,	2000000000	)	-- 最大hp
SetChaAttrMax( ATTR_MXSP	,	2000000000	)	-- 最大sp
SetChaAttrMax( ATTR_BSTR	,	100		)	-- Max STR Possible
SetChaAttrMax( ATTR_BDEX	,	100		)	-- Max ACC Possible
SetChaAttrMax( ATTR_BAGI	,	100		)	-- Max AGI Possible
SetChaAttrMax( ATTR_BCON	,	100		)	-- Max CON Possible
SetChaAttrMax( ATTR_BSTA	,	125		)	-- Max SPR Possible
SetChaAttrMax( ATTR_BLUK	,	100		)	-- Max LUK Possible
SetChaAttrMax( ATTR_BMXHP	,	2000000000	)	-- 基本最大HP         
SetChaAttrMax( ATTR_BMXSP	,	2000000000	)	-- 基本最大SP         
SetChaAttrMax( ATTR_BMNATK	,	9999		)	-- 基本最小攻击力    
SetChaAttrMax( ATTR_BMXATK	,	9999		)	-- 基本最大攻击力    
SetChaAttrMax( ATTR_BDEF	,	9999		)	-- 基本防御力          
SetChaAttrMax( ATTR_BHIT	,	9999		)	-- 基本命中率          
SetChaAttrMax( ATTR_BFLEE	,	9999		)	-- 基本闪避率          
SetChaAttrMax( ATTR_BMF		,	9999		)	-- 基本寻宝率          
SetChaAttrMax( ATTR_BCRT	,	9999		)	-- 基本爆击率          
SetChaAttrMax( ATTR_BHREC	,	9999		)	-- 基本hp恢复速度   
SetChaAttrMax( ATTR_BSREC	,	9999		)	-- 基本sp恢复速度    
SetChaAttrMax( ATTR_BASPD	,	9999		)	-- 基本攻击间隔       
SetChaAttrMax( ATTR_BADIS	,	9999		)	-- 基本攻击距离       
SetChaAttrMax( ATTR_BMSPD	,	9999		)	-- 基本移动速度       
SetChaAttrMax( ATTR_BCOL	,	9999		)	-- 基本资源采集速度 
SetChaAttrMax( ATTR_MSPD	,	9999		)	-- 移动速度
SetChaAttrMax( ATTR_LHAND_ITEMV	,	9999		)	-- 左手道具加成
SetChaAttrMax( ATTR_BOAT_SHIP	,	100000		)	-- 船只ID
SetChaAttrMax( ATTR_BOAT_HEADER	,	100000		)	-- 船头类型
SetChaAttrMax( ATTR_BOAT_BODY	,	100000		)	-- 船身类型
SetChaAttrMax( ATTR_BOAT_ENGINE	,	100000		)	-- 船引擎类型
SetChaAttrMax( ATTR_BOAT_CANNON	,	100000		)	-- 船火炮类型
SetChaAttrMax( ATTR_BOAT_PART	,	100000		)	-- 船配件类型
SetChaAttrMax( ATTR_BOAT_BERTH	,	100000		)	-- 船只停泊港口
SetChaAttrMax( ATTR_BOAT_DBID	,	2000000000	)	-- 船主的ID
