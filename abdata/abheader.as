// abdata - external header

#ifndef        IG_ABDATA_EXTERNAL_HEADER_AS
#define global IG_ABDATA_EXTERNAL_HEADER_AS

// @ �O��(global�̈�)�Œ�`�����w�b�_�t�@�C���B
#ifdef _DEBUG

#if 0
 #define global ctype abdataInsts(%1) stt_allinsts@abdata_impl( dbgchk_i(%1, isRange((%1), 0, length(abdataInsts_var) - 1) )	// �͈͐���
#endif

 #define global abAssert(%1 = 0, %2 = "") if ( false == (%1) ) { if ( "" != (%2) ) { logmes "[Error] abdata: " + (%2) } : assert }	// abdata �����Ŏg�p���� assert ����

#else

 #define global abAssert(%1 = 0, %2 = 0) :

#endif

#ifndef _empty
 #define global _empty //
#endif

#ifndef abdataInsts
 #define global ctype abdataInsts(%1) stt_allinsts@abdata_impl(%1)
#endif

#define global abdataInsts_var stt_allinsts@abdata_impl
#define global abdataNull      stt_nullinst@abdata_impl		// = 0

; �x�����
	if (0) { dim abdataInsts_var }

#endif
