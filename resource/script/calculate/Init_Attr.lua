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
for i = 0, 240, 1 do						--��ʼ����������
	SetChaAttrMax( i, 100000000) 
end 
end 

Init_attr() 

SetChaAttrMax( ATTR_LV		,	130		)	-- Max Level Possible
SetChaAttrMax( ATTR_HP		,	2000000000	)	-- ��ǰHP
SetChaAttrMax( ATTR_SP		,	2000000000	)	-- ��ǰSP
SetChaAttrMax( ATTR_JOB		,	100		)	-- ��ɫְҵ
SetChaAttrMax( ATTR_CEXP	,	4200000000	)	-- ��ǰ����
SetChaAttrMax( ATTR_NLEXP	,	4200000000	)	-- ��һ�����辭��
SetChaAttrMax( ATTR_AP		,	300		)	-- ���Ե�
SetChaAttrMax( ATTR_TP		,	200		)	-- ���ܵ�
SetChaAttrMax( ATTR_GD		,	2000000000	)	-- ��Ǯ
SetChaAttrMax( ATTR_CLEXP	,	4200000000	)	-- ��ǰ�ȼ��ľ���
SetChaAttrMax( ATTR_MXHP	,	2000000000	)	-- ���hp
SetChaAttrMax( ATTR_MXSP	,	2000000000	)	-- ���sp
SetChaAttrMax( ATTR_BSTR	,	100		)	-- Max STR Possible
SetChaAttrMax( ATTR_BDEX	,	100		)	-- Max ACC Possible
SetChaAttrMax( ATTR_BAGI	,	100		)	-- Max AGI Possible
SetChaAttrMax( ATTR_BCON	,	100		)	-- Max CON Possible
SetChaAttrMax( ATTR_BSTA	,	125		)	-- Max SPR Possible
SetChaAttrMax( ATTR_BLUK	,	100		)	-- Max LUK Possible
SetChaAttrMax( ATTR_BMXHP	,	2000000000	)	-- �������HP         
SetChaAttrMax( ATTR_BMXSP	,	2000000000	)	-- �������SP         
SetChaAttrMax( ATTR_BMNATK	,	9999		)	-- ������С������    
SetChaAttrMax( ATTR_BMXATK	,	9999		)	-- ������󹥻���    
SetChaAttrMax( ATTR_BDEF	,	9999		)	-- ����������          
SetChaAttrMax( ATTR_BHIT	,	9999		)	-- ����������          
SetChaAttrMax( ATTR_BFLEE	,	9999		)	-- ����������          
SetChaAttrMax( ATTR_BMF		,	9999		)	-- ����Ѱ����          
SetChaAttrMax( ATTR_BCRT	,	9999		)	-- ����������          
SetChaAttrMax( ATTR_BHREC	,	9999		)	-- ����hp�ָ��ٶ�   
SetChaAttrMax( ATTR_BSREC	,	9999		)	-- ����sp�ָ��ٶ�    
SetChaAttrMax( ATTR_BASPD	,	9999		)	-- �����������       
SetChaAttrMax( ATTR_BADIS	,	9999		)	-- ������������       
SetChaAttrMax( ATTR_BMSPD	,	9999		)	-- �����ƶ��ٶ�       
SetChaAttrMax( ATTR_BCOL	,	9999		)	-- ������Դ�ɼ��ٶ� 
SetChaAttrMax( ATTR_MSPD	,	9999		)	-- �ƶ��ٶ�
SetChaAttrMax( ATTR_LHAND_ITEMV	,	9999		)	-- ���ֵ��߼ӳ�
SetChaAttrMax( ATTR_BOAT_SHIP	,	100000		)	-- ��ֻID
SetChaAttrMax( ATTR_BOAT_HEADER	,	100000		)	-- ��ͷ����
SetChaAttrMax( ATTR_BOAT_BODY	,	100000		)	-- ��������
SetChaAttrMax( ATTR_BOAT_ENGINE	,	100000		)	-- ����������
SetChaAttrMax( ATTR_BOAT_CANNON	,	100000		)	-- ����������
SetChaAttrMax( ATTR_BOAT_PART	,	100000		)	-- ���������
SetChaAttrMax( ATTR_BOAT_BERTH	,	100000		)	-- ��ֻͣ���ۿ�
SetChaAttrMax( ATTR_BOAT_DBID	,	2000000000	)	-- ������ID
