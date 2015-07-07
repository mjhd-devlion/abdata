// List - ���X�g

#ifndef __ABSTRACT_DATA_STRUCTURE_LIST_AS__
#define __ABSTRACT_DATA_STRUCTURE_LIST_AS__

#include "value.as"					// �Ȉ՗v�f�^
#include "mod_shiftArray.as"		// �z�񑀍샂�W���[��
#include "mod_getnextaddindex.as"	// ���ɒǉ������v�f�ԍ�

#module abdata_list midlist, mValues, mCnt

#define mv modvar abdata_list@
#define VAR_TEMP stt_temp@abdata_list

#define ctype numrg(%1,%2,%3) (((%2) <= (%1)) && ((%1) <= (%3)))
#define true  1
#define false 0

#define ctype STR_ERR_OVER_RANGE(%1) "Error! [@abdata_list] �v�f�ԍ��͈͊O�G���[("+ (%1) +")"

//##############################################################################
//                �����o���߁E�֐�
//##############################################################################

#define global List_new(%1,%2=0,%3=VAR_TEMP@abdata_list) newmod %1, abdata_list@, %2, %3
#define global List_delete(%1) delmod %1

//################################################
//        �G���n
//################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#defcfunc List_size mv
	return mCnt
	
#define global List_n List_size

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#defcfunc List_isValid mv, int i
	if ( numrg(i, 0, mCnt - 1) ) {					// �L���͈͂�
		if ( varuse( mValues(midlist(i)) ) ) {		// �L���ȗv�f�ԍ���
			return true
		}
	}
	return false
	
//################################################
//        �擾�n
//################################################
//------------------------------------------------
// �l�Ԃ� ( ���ߌ`�� )
//------------------------------------------------
#modfunc List_getv var result, int i
	if ( List_isValid(thismod, i) == false ) { logmes STR_ERR_OVER_RANGE(i) : return }
	value_getv mValues( midlist(i) ), result
	return
	
//------------------------------------------------
// �l�Ԃ� ( �֐��`�� )
//------------------------------------------------
#defcfunc List_get mv, int i
	List_getv thismod, VAR_TEMP, i
	return VAR_TEMP
	
//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#modfunc List_dup var vRef, int i
	if ( List_isValid(thismod, i) == false ) { logmes STR_ERR_OVER_RANGE(i) : return }
	value_dup mValues( midlist(i) ), vRef
	return
	
//################################################
//        �ݒ�n
//################################################
//------------------------------------------------
// �f�[�^�u��
//------------------------------------------------
#define global List_set(%1,%2,%3=0) VAR_TEMP@abdata_list = %2 : List_setv %1,VAR_TEMP@abdata_list,%3
#modfunc List_setv var vValue, int i
	if ( List_isValid(thismod, i) == false ) {
		// �V�K�ǉ�
		midlist( mCnt ) = GetNextAddIndex( mValues )	// �ǉ������ł��낤�ԍ�
		value_new mValues, vValue
		mCnt ++
		
	} else {
		// �l�̕ύX
		value_setv mValues( midlist(i) ), vValue
	}
	return
	
//################################################
//        ����n
//################################################
//------------------------------------------------
// �}��
//------------------------------------------------
#define global List_insert(%1,%2,%3=0) VAR_TEMP@abdata_list = %2 : List_insertv %1,VAR_TEMP@abdata_list,%3
#modfunc List_insertv var vValue, int _i,  local i, local nIdx
	i = _i
	if ( i <    0 ) { i = mCnt - i }		// �z�Q��
	if ( i > mCnt ) { i = mCnt }
	
	// i �Ԗڂ��󂯂�
	ArrayInsert midlist, i
	
	// �V�K�l��ǉ�
	nIdx       = GetNextAddIndex( mValues )
	value_new mValues, vValue
	midlist(i) = nIdx
	mCnt ++
	
	return
	
//------------------------------------------------
// �Ō���ւ̒ǉ�
//------------------------------------------------
#define global List_add(%1,%2) List_set %1, %2, List_size(%1)
#define global List_push_back List_add

//------------------------------------------------
// ����
//------------------------------------------------
#modfunc List_remove int _i,  local i, local ivRemoved
	i = _i
	if ( i < 0 ) { i += mCnt }				// �z�Q��
	
	if ( List_isValid(thismod, i) == false ) { logmes STR_ERR_OVER_RANGE(i) : return }
	ivRemoved = midlist(i)
	
	// i �Ԗڂ��l�߂� ( �����I���� )
	ArrayRemove midlist, i
	midlist( length(midlist) - 1 ) = -1		// �c�[�𖳌��v�f�ɂ���
	mCnt --
	
	// mValues �̕������
	value_delete mValues( ivRemoved )
	return
	
#define global List_pop_back(%1) List_remove %1, -1

//------------------------------------------------
// �ړ�
//------------------------------------------------
#modfunc List_move int from, int to
	ArrayMove midlist, from, to
	return
	
//------------------------------------------------
// ����
//------------------------------------------------
#modfunc List_swap int pos1, int pos2
	ArraySwap midlist, pos1, pos2
	return
	
//------------------------------------------------
// ����
//------------------------------------------------
#modfunc List_rotate
	ArrayRotate midlist
	return
	
//################################################
//        ���̑�
//################################################
//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#modfunc List_clear
	
	// �S�v�f���������
	foreach mValues
		value_delete mValues(cnt)
	loop
	
	// �ԍ����X�g��������
	dim midlist
	mCnt = 0
	
	return
	
//------------------------------------------------
// [i] �A��
//------------------------------------------------
#modfunc List_chain var mv_from
	repeat List_size( mv_from )
		List_getv   mv_from, VAR_TEMP, cnt
		List_insert thismod, VAR_TEMP, cnt
	loop                          
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc List_copy var mv_from
	List_clear thismod
	List_chain thismod, mv_from
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc List_exchange var mv2,  local mvTemp
	List_new  mvTemp
	List_copy mvTemp,  thismod
	List_copy thismod, mv2
	List_copy mv2,     mvTemp
	List_delete mvTemp
	return
	
//------------------------------------------------
// [i] �J�Ԏq������
//------------------------------------------------
#modfunc List_iterInit var iterData
	iterData = -1
	return
	
//------------------------------------------------
// [i] �J�Ԏq�X�V
//------------------------------------------------
#defcfunc List_iterNext mv, var vIt, var iterData
	iterData ++
	if ( iterData < 0 || iterData >= List_size(thismod) ) {
		return false
	}
	List_getv thismod, vIt, iterData
	return true
	
//##############################################################################
//                �ÓI�����o���߁E�֐�
//##############################################################################

//##############################################################################
//                �R���X�g���N�^�E�f�X�g���N�^
//##############################################################################
//------------------------------------------------
// [i] �R���X�g���N�^
//------------------------------------------------
#modinit int num, var vDefault
	
	// �����o�ϐ��̏�����
	value_new mValues, vDefault
	midlist = 0
	mCnt    = 0
	
	// �R���X�g���N�g����
	if ( num <= 0 ) {
		value_delete mValues(0)
		
	} else {
		// �A���m��
		repeat num
			value_new mValues, vDefault
			midlist(cnt) = cnt
			mCnt ++
		loop
	}
	
	return
	
//------------------------------------------------
// [i] �f�X�g���N�^
//------------------------------------------------
#modterm
	List_clear thismod
	return
	
//##############################################################################
//                �f�o�b�O�p
//##############################################################################
#ifdef _DEBUG

#modfunc List_dbglog
	repeat List_size(thismod)
		logmes strf("#%2d: ", cnt) + List_get(thismod, cnt)
	loop
	return

#else

#define global List_dbglog(%1) :

#endif
	
#global

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

#define List_output(%1) List_dbglog %1 : logmes ""

	List_new    list
	List_add    list, "Hello, world!"
	List_add    list, 3200
	List_add    list, 3.14159265358979
	List_output list
	List_move   list, 1, 2
	List_output list
	
	List_insert list, 999999999, 0
	List_output list
	
	stop
	
#endif

#endif

/******
	
	midlist $int[] �ɁAmValues �̗v�f�ԍ��ł��鐔�l(ID)�������Ă����B
	swap �� move�Ainseart �Ȃǂ́A������g���ΊȒP���y���ɂł���B
	
******/
