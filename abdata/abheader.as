#ifndef        IG_ABDATA_EXTERNAL_HEADER_AS
#define global IG_ABDATA_EXTERNAL_HEADER_AS

// �O��(global�̈�)�Œ�`�����w�b�_�t�@�C��

#ifdef _DEBUG

// �x�����
	dim abdataInsts_var
	dim stt_allinsts@abdata_impl
	dim stt_nullinst@abdata_impl
	dim stt_zero@

 #define global abAssert(%1 = 0, %2 = "") if ( false == (%1) ) { if ( "" != (%2) ) { logmes "[Error] abdata: " + (%2) } : assert }	// abdata �����Ŏg�p���� assert ����

#else //defined(_DEBUG)

 #define global abAssert(%1 = 0, %2 = 0) :

#endif //defined(_DEBUG)

#ifndef _empty
 #define global _empty //
#endif

#ifndef abdataInsts
 #define global ctype abdataInsts(%1) stt_allinsts@abdata_impl(%1)
#endif

#define global abdataInsts_var stt_allinsts@abdata_impl
#define global abdataNull      stt_nullinst@abdata_impl //=0

#endif
