// Container - �ėp�R���e�i

#ifndef __ABSTRACT_DATA_STRUCTURE_CONTAINER_AS__
#define __ABSTRACT_DATA_STRUCTURE_CONTAINER_AS__

#include "value.as"					// �Ȉ՗v�f�^
#include "mod_shiftArray.as"		// �z�񑀍샂�W���[��
#include "mod_getnextaddindex.as"	// ���ɒǉ������v�f�ԍ�

//##############################################################################
//                Container
//##############################################################################
#module abdata_container mCnt, mValues, midlist

#define VAR_TEMP stt_temp@abdata_container

#define ctype numrg(%1,%2,%3) ( ((%2) <= (%1)) && ((%1) <= (%3)) )
#define true  1
#define false 0

#define ctype STR_ERR_OVER_RANGE(%1) "Error! [abdata �R���e�i] �v�f�ԍ��͈͊O�G���[("+ (%1) +")"

//##############################################################################
//                �\�z�E���
//##############################################################################

#define global Container_new(%1,%2=0,%3=VAR_TEMP@abdata_container) newmod %1, abdata_container@, %2, %3
#define global Container_delete(%1) delmod %1

//------------------------------------------------
// [i] �\�z
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
// �\�z��
//------------------------------------------------
;#deffunc CreateContainer array mvArr_Container
;	Container_new mvArr_Container
;	return
	
//------------------------------------------------
// [i] ���
//------------------------------------------------
#modterm
;	Container_clear thismod
	return
	
//------------------------------------------------
// ��̎�
//------------------------------------------------
;#deffunc DeleteContainer var mvContainer
;	Container_delete mvContainer
;	return
	
//##############################################################################
//                �����o���߁E�֐�
//##############################################################################

//################################################
//        �擾�n
//################################################
//------------------------------------------------
// �l�̎擾 ( ���ߌ`�� )
//------------------------------------------------
#modfunc Container_getv_ var result, int _i, int bRemove,  local i
	
	i = Container_getRealIndex(thismod, _i)
	
	value_getv mValues( midlist(i) ), result
	
	if ( bRemove ) {
		Container_remove thismod, i
	}
	return
	
#define global Container_getv(%1,%2,%3=0) Container_getv_ %1, %2, %3, 0
#define global Container_popv(%1,%2,%3=0) Container_getv_ %1, %2, %3, 1

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#modcfunc Container_get_ int i, int bRemove
	Container_getv_ thismod, VAR_TEMP, i, bRemove
	return VAR_TEMP
	
#define global ctype Container_get(%1,%2=0) Container_get_(%1, %2, 0)
#define global ctype Container_pop(%1,%2=0) Container_get_(%1, %2, 1)

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#modfunc Container_dup var vRef, int i
	value_dup mValues( midlist( Container_getRealIndex(thismod, i) ) ), vRef
	return
	
//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global ctype Container_ref(%1,%2=0) VAR_TEMP@abdata_container( Container_ref_(%1,%2) )
#modcfunc Container_ref_ int i
	Container_dup thismod, VAR_TEMP, i
	return 0
	
//------------------------------------------------
// �擪�E�����̒l�̎擾
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------
#define global ctype Container_get_front(%1)     Container_get(%1, 0)
#define global ctype Container_get_back(%1)      Container_get(%1, -1)
#define global       Container_getv_front(%1,%2) Container_getv %1, %2, 0
#define global       Container_getv_back(%1,%2)  Container_getv %1, %2, -1
#define global ctype Container_pop_front(%1)     Container_pop(%1, 0)
#define global ctype Container_pop_back(%1)      Container_pop(%1, -1)
#define global       Container_popv_front(%1,%2) Container_popv %1, %2, 0
#define global       Container_popv_back(%1,%2)  Container_popv %1, %2, -1

//################################################
//        �ݒ�n
//################################################
//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global Container_set(%1,%2,%3=0) VAR_TEMP@abdata_container = %2 : Container_setv %1, VAR_TEMP@abdata_container, %3
#modfunc Container_setv var vValue, int i,  local iv
	
	iv = midlist( Container_getRealIndex(thismod, i) )
	
	// �K�؂Ɍ^��ϊ�����
	value_changeVartype mValues(iv), vartype(vValue)
	
	value_setv mValues( iv ), vValue
	
	return
	
//################################################
//        ����n
//################################################
//------------------------------------------------
// �}��
// 
// @permit (i == mCnt) : �Ō���ւ̒ǉ��̂���
// @ i ���͈͊O => {
// @	( i <     0 ) => i += mCnt,
// @	( i >= mCnt ) => i := mCnt,
// @ };
//------------------------------------------------
#define global Container_insert(%1,%2,%3=0) VAR_TEMP@abdata_container = %2 : Container_insertv %1, VAR_TEMP@abdata_container, %3
#modfunc Container_insertv var vValue, int _i,  local i, local id
	
	if ( _i < 0 ) {
		i = _i + mCnt
	} else : if ( _i > mCnt ) {
		i = mCnt
	} else {
		i = _i
	}
	
	// i �Ԗڂ��󂯂�
	ArrayInsert midlist, i
	
	// �V�K�l��ǉ�
;	id         = GetNextAddIndex( mValues )
	value_new mValues, vValue
	midlist(i) = stat	;id
	mCnt ++
	
	return
	
//------------------------------------------------
// �v�f�̔{��
//------------------------------------------------
#modfunc Container_double int _i,  local i, local temp
	i = Container_getRealIndex( thismod, _i )
	
	Container_getv    thismod, temp, i
	Container_insertv thismod, temp, i
	return
	
//------------------------------------------------
// �擪�E�Ō���ւ̒ǉ�
//------------------------------------------------
#define global Container_double_front(%1)   Container_double  %1, 0
#define global Container_double_back(%1)    Container_double  %1, -1
#define global Container_push_front(%1,%2)  Container_insert  %1, %2, 0
#define global Container_pushv_front(%1,%2) Container_insertv %1, %2, 0
#define global Container_push_back(%1,%2)   Container_insert  %1, %2, Container_size(%1)
#define global Container_pushv_back(%1,%2)  Container_insertv %1, %2, Container_size(%1)
#define global Container_push               Container_push_back
#define global Container_pushv              Container_pushv_back
#define global Container_add                Container_push_back

//------------------------------------------------
// ����
//------------------------------------------------
#modfunc Container_remove int _i,  local i, local ivRemoved
	
	i         = Container_getRealIndex(thismod, _i)
	ivRemoved = midlist(i)
	
	// i �Ԗڂ��l�߂� ( �����I���� )
	ArrayRemove midlist, i
	midlist( length(midlist) - 1 ) = -1		// �c�[�𖳌��v�f�ɂ���
	mCnt --
	
	// mValues �̕������
	value_delete mValues( ivRemoved )
	return
	
#define global Container_remove_front(%1) Container_remove %1, 0
#define global Container_remove_back(%1)  Container_remove %1, -1

//------------------------------------------------
// �ړ�
//------------------------------------------------
#modfunc Container_move int iSrc, int iDst
	if ( Container_size(thismod) < 2 ) {
		return
	}
	
	ArrayMove midlist, Container_getRealIndex(thismod, iSrc), Container_getRealIndex(thismod, iDst)
	return
	
//------------------------------------------------
// ����
//------------------------------------------------
#modfunc Container_swap int iPos1, int iPos2
	if ( Container_size(thismod) < 2 ) {
		return
	}
	
	ArraySwap midlist, Container_getRealIndex(thismod, iPos1), Container_getRealIndex(thismod, iPos2)
	return
	
#define global Container_swap_front(%1) Container_swap %1,  0,  1
#define global Container_swap_back(%1)  Container_swap %1, -2, -1

//------------------------------------------------
// ����
//------------------------------------------------
#modfunc Container_rotate int step
	ArrayRotate midlist, step
	return
	
//------------------------------------------------
// ���� ( �t��] )
//------------------------------------------------
#modfunc Container_rotate_back
	ArrayRotateBack midlist
	return
	
//------------------------------------------------
// ���]
//------------------------------------------------
#modfunc Container_reverse
	ArrayReverse midlist, Container_size(thismod)
	return
	
//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#modfunc Container_clear
	
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
#modfunc Container_chain var mvFrom
	repeat Container_size( mvFrom )
		Container_getv   mvFrom,  VAR_TEMP, cnt
		Container_insert thismod, VAR_TEMP, cnt
	loop
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc Container_copy var mvFrom
	Container_clear thismod
	Container_chain thismod, mvFrom
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc Container_exchange var mv2,  local mvTemp
	Container_new  mvTemp
	Container_copy mvTemp,  thismod
	Container_copy thismod, mv2
	Container_copy mv2,     mvTemp
	Container_delete mvTemp
	return
	
//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#modfunc Container_iterInit var iterData
	iterData = -1
	return
	
//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#modcfunc Container_iterNext var vIt, var iterData
	iterData ++
	
	if ( Container_isValid(thismod, iterData) == false ) {
		return false
	}
	
	Container_getv thismod, vIt, iterData
	return true
	
//################################################
//        �G���n
//################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#modcfunc Container_size
	return mCnt
	
#define global Container_n      Container_size
#define global Container_count  Container_size
#define global Container_length Container_size

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#modcfunc Container_isValid int i
	if ( numrg(i, 0, mCnt - 1) ) {					// �L���͈͂�
		if ( varuse( mValues(midlist(i)) ) ) {		// �L���ȗv�f�ԍ���
			return true
		}
	}
	return false
	
//------------------------------------------------
// ���ۂ̗v�f�ԍ��𓾂�
// @private
//------------------------------------------------
#modcfunc Container_getRealIndex@abdata_container int _i,  local i
	i = _i
	
	// �z�Q��
	if ( i < 0 ) {
		i += mCnt
	}
	
	if ( i < 0 || i >= mCnt ) {
		logmes STR_ERR_OVER_RANGE(i)
		return mCnt - 1
	}
	
	return i
	
//##############################################################################
//                �ÓI�����o���߁E�֐�
//##############################################################################

//##############################################################################
//                �f�o�b�O�p
//##############################################################################
#ifdef _DEBUG

#define global Container_dbglog(%1) Container_dbglog_ %1, "%1"

#modfunc Container_dbglog_ str _ident,  local ident
	ident = _ident
	
	logmes "["+ strtrim(ident, 0, ' ') +"] debug-log"
	
	repeat Container_size(thismod)
		logmes strf("#%2d: ", cnt) + Container_get(thismod, cnt)
	loop
	
	logmes ""
	return
	
#else

#define global Container_dbglog(%1) :

#endif
	
#global

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

	Container_new    vSt
	Container_add    vSt, "Hello, world!"
	Container_add    vSt, 100
	Container_add    vSt, M_PI
	Container_dbglog vSt
	Container_move   vSt, 1, 2
	Container_dbglog vSt
	
	Container_insert vSt, 0x7FFFFFFF, 0
	Container_dbglog vSt
	
	Container_reverse vSt
	Container_dbglog  vSt
	
	stop
	
#endif

#endif

/******
	
	midlist $array[$int] �ɁAmValues �̗v�f�ԍ��ł��鐔�l(ID)�������Ă����B
	�����ۂ̃f�[�^�� abdata_value �̔z��ł��� mValues �����o�ɕۑ������B
	swap �� move�Ainseart �Ȃǂ́A������g���ΊȒP���y���ɂł���B
	
******/
