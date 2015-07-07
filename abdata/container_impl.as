// Container Impl - �ėp�R���e�i (����)

#ifndef IG_ABSTRACT_DATA_STRUCTURE_CONTAINER_IMPL_AS
#define IG_ABSTRACT_DATA_STRUCTURE_CONTAINER_IMPL_AS

#include "abelem.as"				// �Ȉ՗v�f�^
#include "mod_shiftArray.as"		// �z�񑀍샂�W���[��
;#include "mod_getnextaddindex.as"	// ���ɒǉ������v�f�ԍ�
#include "mod_pvalptr.as"			// �V

//##############################################################################
//                ContainerImpl
//##############################################################################
#module abdata_con_impl mCnt, mElems, midlist
; abdata_container_impl �͎��ʎq���̌��E�𒴂��Ă��邽��

#define       VAR_TEMP stt_temp@abdata_con_impl
#define ctype ARG_TEMP(%1) stt_temp_%1_arg@abdata_con_impl

#define ctype numrg(%1,%2,%3) ( ((%2) <= (%1)) && ((%1) <= (%3)) )
#define true  1
#define false 0

#define ctype STR_ERR_OVER_RANGE(%1) "Error! [abdata �R���e�i] �v�f�ԍ��͈͊O�G���[("+ (%1) +")"

// SortMode
#enum global SortMode_Ascending = 0		// ����
#enum global SortMode_Decending = 1

//##############################################################################
//                �\�z�E���
//##############################################################################
#define global ContainerImpl_new(%1, %2 = 0, %3 = stt_zero@) \
	newmod %1, abdata_con_impl@, %2, %3
#define global ContainerImpl_delete(%1) delmod %1

//------------------------------------------------
// [i] �\�z
//------------------------------------------------
#modinit int num, var vDefault
	
	// �����o�ϐ��̏�����
	abelem_new mElems, vDefault
	midlist = 0
	mCnt    = 0
	
	// �R���X�g���N�g����
	if ( num <= 0 ) {
		abelem_delete mElems(0)
		
	} else {
		// �A���m��
		repeat num
			abelem_new mElems, vDefault
			midlist(cnt) = cnt
			mCnt ++
		loop
	}
	
	return getaptr(thismod)
	
//------------------------------------------------
// �\�z��
//------------------------------------------------
;#deffunc new_Container array mvArr_Container
;	ContainerImpl_new mvArr_Container
;	return
	
//------------------------------------------------
// [i] ���
//------------------------------------------------
#modterm
;	ContainerImpl_clear thismod
	return
	
//------------------------------------------------
// ��̎�
//------------------------------------------------
;#deffunc delete_Container var mvContainer
;	ContainerImpl_delete mvContainer
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
#modfunc ContainerImpl_getv_ var result, int _i, int bRemove,  local i
	
	i = ContainerImpl_getRealIndex(thismod, _i)
	
	abelem_getv mElems( midlist(i) ), result
	
	if ( bRemove ) {
		ContainerImpl_remove thismod, i
	}
	
	return
	
#define global ContainerImpl_getv(%1,%2,%3=0) ContainerImpl_getv_ %1, %2, %3, 0
#define global ContainerImpl_popv(%1,%2,%3=0) ContainerImpl_getv_ %1, %2, %3, 1

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#modcfunc ContainerImpl_get_ int i, int bRemove,  local tmp
	ContainerImpl_getv_ thismod, tmp, i, bRemove
	return tmp
	
#define global ctype ContainerImpl_get(%1,%2=0) ContainerImpl_get_(%1, %2, 0)
#define global ctype ContainerImpl_pop(%1,%2=0) ContainerImpl_get_(%1, %2, 1)

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#modfunc ContainerImpl_clone var vRef, int i
	abelem_clone mElems( midlist( ContainerImpl_getRealIndex(thismod, i) ) ), vRef
	return
	
//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global ctype ContainerImpl_ref(%1,%2=0) ARG_TEMP@abdata_con_impl(ref)( ContainerImpl_ref_(%1,%2) )
#modcfunc ContainerImpl_ref_ int i
	ContainerImpl_clone thismod, ARG_TEMP@abdata_con_impl(ref), i
	return 0
	
//------------------------------------------------
// �擪�E�����̒l�̎擾
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------
#define global ctype ContainerImpl_get_front(%1)     ContainerImpl_get(%1, 0)
#define global ctype ContainerImpl_get_back(%1)      ContainerImpl_get(%1, -1)
#define global       ContainerImpl_getv_front(%1,%2) ContainerImpl_getv %1, %2, 0
#define global       ContainerImpl_getv_back(%1,%2)  ContainerImpl_getv %1, %2, -1
#define global ctype ContainerImpl_pop_front(%1)     ContainerImpl_pop(%1, 0)
#define global ctype ContainerImpl_pop_back(%1)      ContainerImpl_pop(%1, -1)
#define global       ContainerImpl_popv_front(%1,%2) ContainerImpl_popv %1, %2, 0
#define global       ContainerImpl_popv_back(%1,%2)  ContainerImpl_popv %1, %2, -1

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#modcfunc ContainerImpl_vartype int i
	return abelem_vartype( mElems(midlist(ContainerImpl_getRealIndex(thismod, i))) )
	
#define global ctype ContainerImpl_vartype_front(%1) ContainerImpl_vartype(%1, 0)
#define global ctype ContainerImpl_vartype_back(%1)  ContainerImpl_vartype(%1, -1)

//################################################
//        �ݒ�n
//################################################
//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global ContainerImpl_set(%1,%2,%3=0) ARG_TEMP@abdata_con_impl(set) = %2 : ContainerImpl_setv %1, ARG_TEMP@abdata_con_impl(set), %3
#modfunc ContainerImpl_setv var vValue, int i,  local iv
	
	iv = midlist( ContainerImpl_getRealIndex(thismod, i) )
	
	// �K�؂Ɍ^��ϊ�����
	abelem_changeVartype mElems(iv), vartype(vValue)
	
	abelem_setv mElems( iv ), vValue
	
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
#define global ContainerImpl_insert(%1,%2,%3=0) ARG_TEMP@abdata_con_impl(insert) = %2 : ContainerImpl_insertv %1, ARG_TEMP@abdata_con_impl(insert), %3
#modfunc ContainerImpl_insertv var vValue, int _i,  local i, local id
	
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
;	id         = GetNextAddIndex( mElems )
	abelem_new mElems, vValue
	midlist(i) = stat	;id
	mCnt ++
	
	return
	
//------------------------------------------------
// �v�f�̔{��
//------------------------------------------------
#modfunc ContainerImpl_double int _i,  local i, local temp
	i = ContainerImpl_getRealIndex( thismod, _i )
	
	ContainerImpl_getv    thismod, temp, i
	ContainerImpl_insertv thismod, temp, i
	return
	
//------------------------------------------------
// �擪�E�Ō���ւ̒ǉ�
//------------------------------------------------
#define global ContainerImpl_double_front(%1)   ContainerImpl_double  %1, 0
#define global ContainerImpl_double_back(%1)    ContainerImpl_double  %1, (-1)
#define global ContainerImpl_push_front(%1,%2)  ContainerImpl_insert  %1, %2, 0
#define global ContainerImpl_pushv_front(%1,%2) ContainerImpl_insertv %1, %2, 0
#define global ContainerImpl_push_back(%1,%2)   ContainerImpl_insert  %1, %2, ContainerImpl_size(%1)
#define global ContainerImpl_pushv_back(%1,%2)  ContainerImpl_insertv %1, %2, ContainerImpl_size(%1)
#define global ContainerImpl_push               ContainerImpl_push_back
#define global ContainerImpl_pushv              ContainerImpl_pushv_back
#define global ContainerImpl_add                ContainerImpl_push_back

//------------------------------------------------
// ����
//------------------------------------------------
#modfunc ContainerImpl_remove int _i,  local i, local ivRemoved
	
	i         = ContainerImpl_getRealIndex(thismod, _i)
	ivRemoved = midlist(i)
	
	// i �Ԗڂ��l�߂� ( �����I���� )
	ArrayRemove midlist, i
	midlist( length(midlist) - 1 ) = -1		// �c�[�𖳌��v�f�ɂ���
	mCnt --
	
	// mElems �̕������
	abelem_delete mElems( ivRemoved )
	return
	
#define global ContainerImpl_remove_front(%1) ContainerImpl_remove %1, 0
#define global ContainerImpl_remove_back(%1)  ContainerImpl_remove %1, (-1)

//------------------------------------------------
// �ړ�
//------------------------------------------------
#modfunc ContainerImpl_move int iSrc, int iDst
	if ( ContainerImpl_size(thismod) < 2 ) {		// �Œ�ł�2�̗v�f���Ȃ��ƁAmove �͈Ӗ����Ȃ�
		return
	}
	
	ArrayMove midlist, ContainerImpl_getRealIndex(thismod, iSrc), ContainerImpl_getRealIndex(thismod, iDst)
	return
	
//------------------------------------------------
// ����
//------------------------------------------------
#modfunc ContainerImpl_swap int iPos1, int iPos2
	if ( ContainerImpl_size(thismod) < 2 ) {		// �Œ�ł�2�̗v�f���Ȃ��ƁAswap �͈Ӗ����Ȃ�
		return
	}
	
	ArraySwap midlist, ContainerImpl_getRealIndex(thismod, iPos1), ContainerImpl_getRealIndex(thismod, iPos2)
	return
	
#define global ContainerImpl_swap_front(%1) ContainerImpl_swap %1,  0,  1
#define global ContainerImpl_swap_back(%1)  ContainerImpl_swap %1, -2, -1

//------------------------------------------------
// ����
//------------------------------------------------
#modfunc ContainerImpl_rotate int step
	ArrayRotate midlist, step
	return
	
//------------------------------------------------
// ���� ( �t��] )
//------------------------------------------------
#modfunc ContainerImpl_rotate_back
	ArrayRotateBack midlist
	return
	
//------------------------------------------------
// ���]
//------------------------------------------------
#modfunc ContainerImpl_reverse
	ArrayReverse midlist, ContainerImpl_size(thismod)
	return
	
//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#modfunc ContainerImpl_clear
	
	// �S�v�f���������
	foreach mElems
		abelem_delete mElems(cnt)
	loop
	
	// �ԍ����X�g��������
	dim midlist
	mCnt = 0
	
	return
	
//------------------------------------------------
// [i] �A��
//------------------------------------------------
#modfunc ContainerImpl_chain var src,  local tmp
 	repeat ContainerImpl_size( src )
		ContainerImpl_getv       src, tmp, cnt
		ContainerImpl_insert thismod, tmp, cnt
	loop
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc ContainerImpl_copy var src
	ContainerImpl_clear thismod
	ContainerImpl_chain thismod, src
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc ContainerImpl_exchange var obj2,  local tmp
	ContainerImpl_new  tmp
	ContainerImpl_copy tmp,  thismod
	ContainerImpl_copy thismod, obj2
	ContainerImpl_copy obj2,    tmp
	ContainerImpl_delete tmp
	return
	
//------------------------------------------------
// ����
// 
// @alg: (based: Merge-Sort)
// @	1. �^�^�C�v�l�Ő���
// @	2. �����^ => �s�����ɂ���r�Ő���
// @prm mode : SortMode_* (default: SortMode_Ascening)
//------------------------------------------------
#modfunc ContainerImpl_sort int mode,  local arrTmp, local arrDst, local len, local p, local p1, local e1, local p2, local e2, local sizeSegment, local sizeSegMerged, local cmp
	len = ContainerImpl_size(thismod)
	dim     arrDst, len
	foreach arrDst
		arrDst(cnt) = cnt
	loop
	
	dim arrTmp, len
	
	// �}�[�W�\�[�g
	repeat
		sizeSegment = 1 << cnt		// 1, 2, 4, 8, ...
		
		// 2-Segment ���ƂɃ}�[�W
		repeat
			p  = sizeSegment * (cnt * 2)	// 2-Segment �̐擪
			p1 = p							// lhs (left hand segment) �͈� (�擪�v�f)
			e1 = p1 + sizeSegment			// �V (�ŏI�v�f + 1)
			p2 = e1							// rhs
			e2 = limit( p2 + sizeSegment, 0, len )
			sizeSegMerged = (e2 - p)		// �}�[�W��� Segment �T�C�Y
			
			if ( sizeSegMerged < sizeSegment ) { break }	// 臒l�ȉ� => �}�[�W�����I��
			
			repeat sizeSegMerged
				if ( p2 >= e2 ) {			// rhs �̎��o�������Ɋ������Ă���
					arrTmp(cnt) = arrDst(p1) : p1 ++
				} else : if ( p1 >= e1 ) {	// lhs �V
					arrTmp(cnt) = arrDst(p2) : p2 ++
				} else {
					// ?( ��v���� or ( ����������(�^) ����(�^) || �E��������(�U) �~��(�U) ) ) => lhs ����Ƃ�
					cmp = ContainerImpl_opCmpElem( thismod, arrDst(p1), arrDst(p2) )
					if ( cmp == 0 || ( (cmp < 0) == (mode == SortMode_Ascending) ) ) {
						arrTmp(cnt) = arrDst(p1) : p1 ++
					} else {
						arrTmp(cnt) = arrDst(p2) : p2 ++
					}
				}
			loop
			
			// �}�[�W���ꂽ�z����\�[�X�z��ɓ\��t��
			memcpy arrDst(p), arrTmp, sizeSegMerged * 4
		loop
		
		// �}�[�W�I�� (1�� Segment �ɓZ�܂�������)
		if ( len <= sizeSegment ) { break }
	loop
	
	// idx-list ��ύX
	memcpy midlist, arrDst, len * 4
	
	return
	
//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#modfunc ContainerImpl_iterInit var iterData
	iterData = -1
	return
	
//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#modcfunc ContainerImpl_iterNext var vIt, var iterData
	iterData ++
	
	if ( ContainerImpl_isValid(thismod, iterData) == false ) {
		return false
	}
	
	ContainerImpl_getv thismod, vIt, iterData
	return true
	
//##########################################################
//        �G���n
//##########################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#modcfunc ContainerImpl_size
	return mCnt
	
#define global ContainerImpl_count  ContainerImpl_size
#define global ContainerImpl_length ContainerImpl_size
#define global ctype ContainerImpl_empty(%1) ( ContainerImpl_size(%1) == 0 )

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#modcfunc ContainerImpl_isValid int i
	if ( numrg(i, 0, mCnt - 1) ) {					// �L���͈͂�
		if ( varuse( mElems(midlist(i)) ) ) {		// �L���ȗv�f�ԍ���
			return true
		}
	}
	return false
	
//------------------------------------------------
// ���ۂ̗v�f�ԍ��𓾂�
// @private
//------------------------------------------------
#modcfunc ContainerImpl_getRealIndex@abdata_con_impl int _i,  local i
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
	
//##########################################################
//        ���Z
//##########################################################
//------------------------------------------------
// �v�f��r
//------------------------------------------------
#modcfunc ContainerImpl_opCmpElem int idxLhs, int idxRhs,  local vt, local tmp

	vt(0) = abelem_vartype( mElems(idxLhs) )
	vt(1) = abelem_vartype( mElems(idxRhs) )
	
	// �^�Ŕ�r
	if ( vt(0) != vt(1) ) {
		return ( vt(0) - vt(1) )
	}
	
	// �l�Ŕ�r
	dimtype tmp, vt(0), 2
	abelem_getv mElems(idxLhs), tmp(0)
	abelem_getv mElems(idxRhs), tmp(1)
	
	return opCompare( tmp(0), tmp(1) )
	
//##############################################################################
//                �ÓI�����o���߁E�֐�
//##############################################################################
//------------------------------------------------
// ��ʓI�Ȕ�r���Z
// 
// @(condition): lhs, rhs �̌^�͈�v����
//------------------------------------------------
#defcfunc opCompare@abdata_con_impl var lhs, var rhs
	if ( vartype(lhs) == 2 /* vartype("str") */ ) {
		return (lhs != rhs)
	} else {
		if ( lhs < rhs ) {
			return -1
		} else : if ( lhs > rhs ) {
			return 1
		} else {
			return 0
		}
	}
	
//##############################################################################
//                �f�o�b�O�p
//##############################################################################
#ifdef _DEBUG

//------------------------------------------------
// �f�o�b�O�o��
//------------------------------------------------
#define global ContainerImpl_dbglog(%1) ContainerImpl_dbglog_ %1, "%1"

#modfunc ContainerImpl_dbglog_ str _ident,  local ident
	ident = _ident
	
	logmes "["+ strtrim(ident, 0, ' ') +"] debug-log"
	
	repeat ContainerImpl_size(thismod)
		logmes strf("#%2d: ", cnt) + ContainerImpl_get(thismod, cnt)
	loop
	
	logmes ""
	return
	
#else

#define global ContainerImpl_dbglog(%1) :

#endif
	
#global

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

	ContainerImpl_new    vSt
	ContainerImpl_add    vSt, "Hello, world!"
	ContainerImpl_add    vSt, 100
	ContainerImpl_add    vSt, M_PI
	ContainerImpl_dbglog vSt
	ContainerImpl_move   vSt, 1, 2
	ContainerImpl_dbglog vSt
	
	ContainerImpl_insert vSt, 0x7FFFFFFF, 0
	ContainerImpl_dbglog vSt
	
	ContainerImpl_reverse vSt
	ContainerImpl_dbglog  vSt
	
	// ����
	ContainerImpl_add    vSt, 39
	ContainerImpl_add    vSt, 18782
	ContainerImpl_add    vSt, 2943
	ContainerImpl_add    vSt, "ABCD��͖�"
	ContainerImpl_add    vSt, "Extra Strings"
	ContainerImpl_add    vSt, sqrt(2)
	ContainerImpl_add    vSt, sqrt(8)
	ContainerImpl_add    vSt, sqrt(3)
	ContainerImpl_dbglog vSt
	
	ContainerImpl_sort   vSt, SortMode_Decending
	ContainerImpl_dbglog vSt
	
	stop
	
#endif

#endif

/******
	
*	"index �Ǘ�"
	midlist $array[$int] �ɁAmElems �̗v�f�ԍ��ł��鐔�l(ID)�������Ă����B
	�����ۂ̃f�[�^�� abdata_abelem �̔z��ł��� mElems �����o�ɕۑ������B
	swap �� move�Ainseart �Ȃǂ́A������g���ΊȒP���y���ɂł���B
	
******/
