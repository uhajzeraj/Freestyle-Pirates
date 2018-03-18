--------------------------------------------------------------------------
--									--
--									--
--			ItemAttrType.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading ItemAttrType.lua" )


ITEMATTR_COUNT_BASE0    = 0;
ITEMATTR_COE_STR        = ITEMATTR_COUNT_BASE0 + 1; -- ����ϵ���ӳɣ�strength coefficient��
ITEMATTR_COE_AGI        = ITEMATTR_COUNT_BASE0 + 2; -- ����ϵ���ӳ�
ITEMATTR_COE_DEX        = ITEMATTR_COUNT_BASE0 + 3; -- רעϵ���ӳ�
ITEMATTR_COE_CON        = ITEMATTR_COUNT_BASE0 + 4; -- ����ϵ���ӳ�
ITEMATTR_COE_STA        = ITEMATTR_COUNT_BASE0 + 5; -- ����ϵ���ӳ�
ITEMATTR_COE_LUK        = ITEMATTR_COUNT_BASE0 + 6; -- ����ϵ���ӳ�
ITEMATTR_COE_ASPD       = ITEMATTR_COUNT_BASE0 + 7; -- ����Ƶ��ϵ���ӳ�
ITEMATTR_COE_ADIS       = ITEMATTR_COUNT_BASE0 + 8; -- ��������ϵ���ӳ�
ITEMATTR_COE_MNATK      = ITEMATTR_COUNT_BASE0 + 9; -- ��С������ϵ���ӳ�
ITEMATTR_COE_MXATK      = ITEMATTR_COUNT_BASE0 + 10; -- ��󹥻���ϵ���ӳ�
ITEMATTR_COE_DEF        = ITEMATTR_COUNT_BASE0 + 11; -- ����ϵ���ӳ�
ITEMATTR_COE_MXHP       = ITEMATTR_COUNT_BASE0 + 12; -- ���Hpϵ���ӳ�
ITEMATTR_COE_MXSP       = ITEMATTR_COUNT_BASE0 + 13; -- ���Spϵ���ӳ�
ITEMATTR_COE_FLEE       = ITEMATTR_COUNT_BASE0 + 14; -- ������ϵ���ӳ�
ITEMATTR_COE_HIT        = ITEMATTR_COUNT_BASE0 + 15; -- ������ϵ���ӳ�
ITEMATTR_COE_CRT        = ITEMATTR_COUNT_BASE0 + 16; -- ������ϵ���ӳ�
ITEMATTR_COE_MF         = ITEMATTR_COUNT_BASE0 + 17; -- Ѱ����ϵ���ӳ�
ITEMATTR_COE_HREC       = ITEMATTR_COUNT_BASE0 + 18; -- hp�ָ��ٶ�ϵ���ӳ�
ITEMATTR_COE_SREC       = ITEMATTR_COUNT_BASE0 + 19; -- sp�ָ��ٶ�ϵ���ӳ�
ITEMATTR_COE_MSPD       = ITEMATTR_COUNT_BASE0 + 20; -- �ƶ��ٶ�ϵ���ӳ�
ITEMATTR_COE_COL        = ITEMATTR_COUNT_BASE0 + 21; -- ��Դ�ɼ��ٶ�ϵ���ӳ�
ITEMATTR_COE_PDEF       = ITEMATTR_COUNT_BASE0 + 22; -- ����ֿ�ϵ���ӳ�

ITEMATTR_COUNT_BASE1    = 25;
ITEMATTR_VAL_STR        = ITEMATTR_COUNT_BASE1 + 1; -- ���������ӳɣ�strength value��
ITEMATTR_VAL_AGI        = ITEMATTR_COUNT_BASE1 + 2; -- ���ݳ����ӳ�
ITEMATTR_VAL_DEX        = ITEMATTR_COUNT_BASE1 + 3; -- רע�����ӳ�
ITEMATTR_VAL_CON        = ITEMATTR_COUNT_BASE1 + 4; -- ���ʳ����ӳ�
ITEMATTR_VAL_STA        = ITEMATTR_COUNT_BASE1 + 5; -- ���������ӳ�
ITEMATTR_VAL_LUK        = ITEMATTR_COUNT_BASE1 + 6; -- ���˳����ӳ�
ITEMATTR_VAL_ASPD       = ITEMATTR_COUNT_BASE1 + 7; -- ����Ƶ�ʳ����ӳ�
ITEMATTR_VAL_ADIS       = ITEMATTR_COUNT_BASE1 + 8; -- �������볣���ӳ�
ITEMATTR_VAL_MNATK      = ITEMATTR_COUNT_BASE1 + 9; -- ��С�����������ӳ�
ITEMATTR_VAL_MXATK      = ITEMATTR_COUNT_BASE1 + 10; -- ��󹥻��������ӳ�
ITEMATTR_VAL_DEF        = ITEMATTR_COUNT_BASE1 + 11; -- ���������ӳ�
ITEMATTR_VAL_MXHP       = ITEMATTR_COUNT_BASE1 + 12; -- ���Hp�����ӳ�
ITEMATTR_VAL_MXSP       = ITEMATTR_COUNT_BASE1 + 13; -- ���Sp�����ӳ�
ITEMATTR_VAL_FLEE       = ITEMATTR_COUNT_BASE1 + 14; -- �����ʳ����ӳ�
ITEMATTR_VAL_HIT        = ITEMATTR_COUNT_BASE1 + 15; -- �����ʳ����ӳ�
ITEMATTR_VAL_CRT        = ITEMATTR_COUNT_BASE1 + 16; -- �����ʳ����ӳ�
ITEMATTR_VAL_MF         = ITEMATTR_COUNT_BASE1 + 17; -- Ѱ���ʳ����ӳ�
ITEMATTR_VAL_HREC       = ITEMATTR_COUNT_BASE1 + 18; -- hp�ָ��ٶȳ����ӳ�
ITEMATTR_VAL_SREC       = ITEMATTR_COUNT_BASE1 + 19; -- sp�ָ��ٶȳ����ӳ�
ITEMATTR_VAL_MSPD       = ITEMATTR_COUNT_BASE1 + 20; -- �ƶ��ٶȳ����ӳ�
ITEMATTR_VAL_COL        = ITEMATTR_COUNT_BASE1 + 21; -- ��Դ�ɼ��ٶȳ����ӳ�
ITEMATTR_VAL_PDEF       = ITEMATTR_COUNT_BASE1 + 22; -- ����ֿ������ӳ�

ITEMATTR_COUNT_BASE2    = 49;
ITEMATTR_LHAND_VAL      = ITEMATTR_COUNT_BASE2 + 1; -- �������ּӳ�
ITEMATTR_MAXURE	        = ITEMATTR_COUNT_BASE2 + 2; -- ����;ö�
ITEMATTR_MAXFORGE       = ITEMATTR_COUNT_BASE2 + 3; -- ������ȼ�
ITEMATTR_MAXENERGY      = ITEMATTR_COUNT_BASE2 + 4; -- �������
ITEMATTR_URE            = ITEMATTR_COUNT_BASE2 + 5; -- ��ǰ�;ö�
ITEMATTR_FORGE          = ITEMATTR_COUNT_BASE2 + 6; -- ��ǰ�����ȼ�
ITEMATTR_ENERGY         = ITEMATTR_COUNT_BASE2 + 7; -- ��ǰ����


ITEMATTR_MAX_NUM        = 58;
ITEMATTR_CLIENT_MAX     = ITEMATTR_VAL_PDEF + 1;    -- �ͻ������ڶ�ȡ�����ã���Ϊ��󼸸����Բ���Ҫ��ʾ

ITEMATTR_COUNT_BASE3    = 180;
ITEMATTR_VAL_PARAM1		= ITEMATTR_COUNT_BASE3 + 1;	-- ���߸�����Ϣһ�����ڼ�¼������Ϣ��
ITEMATTR_VAL_PARAM2		= ITEMATTR_COUNT_BASE3 + 2;	-- ���߸�����Ϣ��(�����ۺϺ��¼ԭ���Ե��ߵ�ID��
ITEMATTR_VAL_LEVEL		= ITEMATTR_COUNT_BASE3 + 3; -- ����װ���ȼ���Ϣ�����ڼ�¼�ۺϳ���װ���ĵȼ���
ITEMATTR_VAL_FUSIONID   = ITEMATTR_COUNT_BASE3 + 4; -- ����װ���ۺ���ϢID


--����֤���Զ�Ӧ
-- ITEMATTR_VAL_STR  ����ֵ
-- ITEMATTR_VAL_AGI  ɱ����
-- ITEMATTR_VAL_DEX  ��ɱ��
-- ITEMATTR_VAL_CON  �μӳ���
-- ITEMATTR_VAL_STA  ʤ������
-- ITEMATTR_MAXURE   ��ӹ��׵���

ITEMATTR_VAL_BaoshiLV = ITEMATTR_MAXENERGY --��ʯ�ȼ�