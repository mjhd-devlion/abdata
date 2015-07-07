// Stack - �X�^�b�N ( FIFO & LILO )

#ifndef __ABSTRACT_DATA_STRUCTURE_STACK_AS__
#define __ABSTRACT_DATA_STRUCTURE_STACK_AS__

#include "value.as"

//##################################################################################################
//                        �X�^�b�N
//##################################################################################################
#module abdata_stack mValue, mCnt

#define mv modvar abdata_stack@
#define VAR_TEMP stt_temp@abdata_stack

//##############################################################################
//                �R���X�g���N�^�E�f�X�g���N�^
//##############################################################################
//------------------------------------------------
// [i] �R���X�g���N�^
//------------------------------------------------
#define global Stack_new(%1) newmod %1,abdata_stack@
#modinit
	dim mCnt		// �v�f��
	return
	
#define global Stack_init Stack_new
	
//------------------------------------------------
// [i] �f�X�g���N�^
//------------------------------------------------
#define global Stack_delete(%1) delmod %1
;#modterm
	// pop leak ����菜�� (�K�v�Ȃ�)
;	repeat  mCnt
;		value_delete mValue(cnt)
;	loop
;	return

//##############################################################################
//                �����o�֐��Q
//##############################################################################
//------------------------------------------------
// �v�b�V��
//------------------------------------------------
#define global Stack_push(%1,%2) VAR_TEMP@abdata_stack = (%2) : Stack_pushv %1, VAR_TEMP@abdata_stack
#modfunc Stack_pushv var value
	value_new mValue, value			// �V�������ڂ���Ԍ��ɍ쐬
	mCnt ++							// ���ڐ��𑝉�
	return
	
#define global Stack_push_back Stack_push

//------------------------------------------------
// �|�b�v
//------------------------------------------------
#modfunc Stack_popv var vResult
	if ( mCnt <= 0 ) { logmes "UnderFlow (StackPop)" : return 0 }	// �A���_�[�t���[���x��
	mCnt --								// �ς܂�Ă��鐔�����炷
	value_getv   mValue(mCnt), vResult	// ��Ԍ��̍��ڂ��擾
	value_delete mValue(mCnt)			// �擾�������ڂ��폜
	return
	
#defcfunc Stack_pop mv
	Stack_popv thismod, VAR_TEMP
	return VAR_TEMP
	
//------------------------------------------------
// �擾�̂�
//------------------------------------------------
#modfunc Stack_peekv var vResult, int p2
	if ( p2 < 0 ) { return 0 }
	if ( (mCnt - p2 ) <= 0 ) { logmes "UnderFlow (StackPeek)" : return 0 }
	value_getv mValue( mCnt - p2 - 1 ), vResult
	return
	
#defcfunc Stack_peek mv, int p2
	Stack_peekv thismod, VAR_TEMP, p2
	return VAR_TEMP
	
#define global Stack_get  Stack_peek
#define global Stack_getv Stack_peekv
	
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#defcfunc Stack_size mv
	return mCnt
	
#define global Stack_n Stack_size

//##############################################################################
//                �C���^�[�t�F�[�X�֐��Q
//##############################################################################
//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#modfunc Stack_clear
	// �S�v�f���������
	foreach mValue
		value_delete mValue(cnt)
	loop
	mCnt = 0
	return
	
//------------------------------------------------
// [i] �A��
//------------------------------------------------
#modfunc Stack_chain var mv_from
	repeat Stack_size( mv_from )
		Stack_peekv  mv_from, Stack_size(mv_from) - 1 - cnt, VAR_TEMP		// ��납�� peek
		Stack_pushv  thismod, VAR_TEMP
	loop
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc Stack_copy var mv_from
	Stack_clear thismod
	Stack_chain thismod, mv_from
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc Stack_exchange var mv2, local mvTemp
	Stack_new  mvTemp
	Stack_copy mvTemp,  thismod
	Stack_copy thismod, mv2
	Stack_copy mv2,     mvTemp
	Stack_delete mvTemp
	return
	
//------------------------------------------------
// �f�o�b�O�p
//------------------------------------------------
#ifdef _DEBUG
 #modfunc Stack_dbglog
	foreach mValue
		value_getv mValue(cnt), VAR_TEMP
		logmes strf("#%2d: ", cnt) + VAR_TEMP
	loop
	return
#else
 #define global Stack_dbglog(%1) :
#endif

#global

#endif
