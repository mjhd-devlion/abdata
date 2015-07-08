// unor - �A�z�z�� ( �s����R���e�i ) (����)

#ifndef IG_ABDATA_UNOR_IMPL_AS
#define IG_ABDATA_UNOR_IMPL_AS

// @ unor
// @ mlistKey   := key �̃��X�g�B���̓Y���� mlistValue �Ƌ��ʂ���B
// @ mlistValue := val �̃��X�g�B���̓Y���� mlistKey   �Ƌ��ʂ���B
// @ unor �̗v�f�ԍ� := mlistKey, mlistValue �ŋ��ʂ���Y���B�v�f��ǉ����邲�Ƃɕω����邱�Ƃ��l������B
// @	�����ł́A_getIndex() �Ŏ擾����B
// @	�v�f�ւ̃A�N�Z�X�́A��{�I�� key �� _getIndex() �ŕϊ�����֐��ƁA����ɑΉ����� _byIndex_() �֐����g���B
// @ key := �v�f����肷�邽�߂́A����̕�����Bstr �^�Ɍ���B����������̃L�[�́A1�� Unor �ɁA���X1���݂���B
// @ 

#include "list.as"
#include "alg_iter.as"
#include "mod_pvalptr.as"

//##############################################################################
//                abdata::unordered
//##############################################################################
#module abdata_unor_impl mlistKey, mlistValue
;, mbMutual

#define ctype ARG_TEMP(%1) st_temp_%1_arg@abdata_unor_impl
;#define MAX_HASH 53

#define ctype operate_strcmp(%1,%2,%3) ( (%1) != (%3) %2 0 )
#define ctype numrg(%1,%2,%3) ( ((%2) <= (%1)) && ((%1) <= (%3)) )
#define true  1
#define false 0

//##############################################################################
//                �\�z�E���
//##############################################################################
#define global unorImpl_new(%1)    newmod %1, abdata_unor_impl@
#define global unorImpl_delete(%1) delmod %1

//------------------------------------------------
// [i] �\�z
//------------------------------------------------
#modinit
	// �����o�ϐ��̏�����
	list_new mlistKey
	list_new mlistValue
	
	return getaptr(thismod)
	
//------------------------------------------------
// [i] ���
//------------------------------------------------

//##############################################################################
//                �����o���߁E�֐�
//##############################################################################

//################################################
//        �擾�n
//################################################
//------------------------------------------------
// �l�̎擾 ( ���ߌ`�� )
// 
// @ *_get_v_byIndex_ : (idx) �� value
// @ *_get_v_         : (key) �� idx : *_get_v_byIndex_
// @ *_get_try_v_()   : *_get_v_ �́A�L�[�����݂��Ȃ��Ƃ����s�� false ��Ԃ��ŁB
//------------------------------------------------
#modfunc unorImpl_getv_byIndex_ int i, var result, int bRemove
	list_getv mlistValue, result, i
	
	if ( bRemove ) {
		unorImpl_remove_byIndex_ thismod, i
	}
	return
	
#modfunc unorImpl_getv_ str key, var result, int bRemove
	unorImpl_getv_byIndex_ thismod, unorImpl_getIndex(thismod, key), result, bRemove
	return
	
#modcfunc unorImpl_try_getv_ str key, var result, int bRemove,  local idx
	idx = unorImpl_getIndex(thismod, key, true)
	if ( idx < 0 ) { return false }
	
	unorImpl_getv_byIndex_ thismod, idx, result, bRemove
	return true
	
#define global unorImpl_getv(%1, %2 = "", %3) unorImpl_getv_ %1, %2, %3, 0
#define global unorImpl_popv(%1, %2 = "", %3) unorImpl_getv_ %1, %2, %3, 1

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#modcfunc unorImpl_get_ str key, int bRemove,  local tmp
	unorImpl_getv_ thismod, key, tmp, bRemove
	return tmp
	
#modcfunc unorImpl_tryget_ str key, var result, int bRemove,  local tmp
	return unorImpl_try_getv_( thismod, key, result, bRemove )
	
#define global ctype unorImpl_get(%1, %2 = "") unorImpl_get_(%1, %2, 0)
#define global ctype unorImpl_pop(%1, %2 = "") unorImpl_get_(%1, %2, 1)

#define global ctype unorImpl_tryget(%1, %2 = "", %3) unorImpl_tryget_(%1, %2, %3, 0)
#define global ctype unorImpl_trypop(%1, %2 = "", %3) unorImpl_tryget_(%1, %2, %3, 1)

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#modfunc unorImpl_clone_byIndex_ int i, var vRef
	list_clone mlistValue, i, vRef
	return
	
#modfunc unorImpl_clone str key, var vRef
	unorImpl_clone_byIndex_ thismod, unorImpl_getIndex( thismod, key ), vRef
	return
	
//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
	dim ARG_TEMP@abdata_unor_impl(ref)		// �x���΍�
#define global ctype unorImpl_ref(%1, %2 = "") ARG_TEMP@abdata_unor_impl(ref)( unorImpl_ref_(%1,%2) )
#modcfunc unorImpl_ref_byIndex_ int i
	unorImpl_clone thismod, i, ARG_TEMP@abdata_unor_impl(ref)
	return 0
	
#modcfunc unorImpl_ref_ str key
	return unorImpl_ref_byIndex_( thismod, unorImpl_getIndex(thismod, key) )
	
//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#modcfunc unorImpl_vartype_byIndex_ int i
	return list_vartype( mlistValue, i )
	
#define global ctype unorImpl_vartype(%1,%2="") unorImpl_vartype_(%1, %2)
#modcfunc unorImpl_vartype_ str key
	return unorImpl_vartype_byIndex_( thismod, unorImpl_getIndex(thismod, key) )
	
//################################################
//        �ݒ�n
//################################################
//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global unorImpl_set(%1, %2 = "" ,%3) ARG_TEMP@abdata_unor_impl(set) = %3 : unorImpl_setv %1, %2, ARG_TEMP@abdata_unor_impl(set)

#modfunc unorImpl_setv str key, var vValue
	unorImpl_setv_byIndex_ thismod, unorImpl_getIndex(thismod, key), vValue
	return
	
#modfunc unorImpl_setv_byIndex_ int i, var vValue
	list_setv mlistValue, vValue, i
	return
	
//################################################
//        ����n
//################################################
//------------------------------------------------
// �ǉ�
// 
// @ �����Ȃ玸�s
//------------------------------------------------
#define global unorImpl_add(%1, %2 = "", %3 = stt_zero@) ARG_TEMP@abdata_unor_impl(add) = %3 : unorImpl_addv %1, %2, ARG_TEMP@abdata_unor_impl(add)

#modfunc unorImpl_addv str key, var vValue
	unorImpl_addValue thismod, key, vValue
	return
	
//------------------------------------------------
// ����
// 
// @+ ���݂��Ȃ��v�f�͏������Ȃ�
//------------------------------------------------
#modfunc unorImpl_remove str key,  local i
	
	i = unorImpl_getIndex(thismod, key, true)
	if ( i < 0 ) { return }
	
	unorImpl_remove_byIndex_ thismod, i
	return
	
#modfunc unorImpl_remove_byIndex_ int i
	list_remove mlistKey,   i
	list_remove mlistValue, i
	return
	
//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#modfunc unorImpl_clear
	list_clear mlistKey
	list_clear mlistValue
	return
	
//------------------------------------------------
// [i] �A��
//------------------------------------------------
#modfunc unorImpl_chain var src,  local it
	
	IterateBegin src, unorImpl, it
		unorImpl_add thismod, it, unorImpl_get(src, it)
	IterateEnd
	
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc unorImpl_copy var src
	unorImpl_clear thismod
	unorImpl_chain thismod, src
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc unorImpl_exchange var obj,  local tmp
	unorImpl_new  tmp
	unorImpl_copy tmp, thismod
	unorImpl_copy thismod, obj
	unorImpl_copy obj, tmp
	unorImpl_delete tmp
	return
	
//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#modfunc unorImpl_iterInit var iterData
	list_iterInit mlistKey, iterData
	return
	
//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#modcfunc unorImpl_iterNext var vIt, var iterData
	return list_iterNext( mlistKey, vIt, iterData )
	
//################################################
//        �G���n
//################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#modcfunc unorImpl_size
	return list_size( mlistKey )
	
#define global unorImpl_count  unorImpl_size
#define global unorImpl_length unorImpl_size
#define global ctype unorImpl_empty(%1) ( unorImpl_size(%1) == 0 )

//------------------------------------------------
// �L�[�̗L��
//------------------------------------------------
#modcfunc unorImpl_exists str key
	return ( unorImpl_getIndex( thismod, key, true ) >= 0 )
	
//------------------------------------------------
// ���ۂ̗v�f�ԍ��𓾂�
// @private
// @result:
// @	?(bNoAdd == false) =>
// @		����ꍇ => �L�[������v�f�ԍ�
// @		�Ȃ��ꍇ => �V�K�ǉ����A���̔ԍ���Ԃ��B
// @		=>> ��ɗL���ȗv�f�ԍ���Ԃ��B
// @	else =>
// @		����ꍇ => �L�[������v�f�ԍ�
// @		�Ȃ��ꍇ => ����
//------------------------------------------------
#modcfunc unorImpl_getIndex@abdata_unor_impl str key, int bNoAdd,  local idx
	
	unorImpl_find_ex thismod, key, idx
	if ( stat ) {
		return idx
	}
	
	// �V�K�ɒǉ�����
	if ( bNoAdd == false ) {
		unorImpl_addValue_byIndex_ thismod, idx, key, stt_zero@
		return stat
	}
	
	return -1
	
//------------------------------------------------
// �v�f��ǉ�����
// @private
// @result: �ǉ������v�f�̗v�f�ԍ�
// @ �����Ԃ�ۂ��Ă����B
// @ �d�������L�[�͖�������B
//------------------------------------------------
#modfunc unorImpl_addValue@abdata_unor_impl str key, var vValue,  local idx
	
	unorImpl_find_ex thismod, key, idx
	if ( stat ) {		// �L�[�͊���
		return idx
	}
	
	unorImpl_addValue_byIndex_ thismod, idx, key, vValue
	
	return idx
	
#modfunc unorImpl_addValue_byIndex_@abdata_unor_impl int idx, str key, var vValue
	list_insert  mlistKey,      key, idx
	list_insertv mlistValue, vValue, idx
	return idx
	
//------------------------------------------------
// �v�f����������
// @private
// @algorithm : �񕪒T��(binary search)
// @result :
// @	�L�[������ꍇ => �^��Ԃ��Bidx := �v�f�ԍ��B
// @	�L�[���Ȃ��ꍇ => �U��Ԃ��Bidx := �w��L�[������ׂ��v�f�ԍ��B
//------------------------------------------------
#modfunc unorImpl_find_ex@abdata_unor_impl str key, var idx,  local size, local iMin, local iMax, local nCmp, local bExists
	
	size = unorImpl_size(thismod)
	iMin = 0
	iMax = size
	idx  = size / 2
	
	bExists = false
	
	repeat
		if ( iMin == iMax ) {
			idx = iMin		// ��v�����l
			break
		}
		
		nCmp = ( list_get(mlistKey, idx) != key )
		
		if ( nCmp == 0 ) {
			bExists = true
			break
			
		} else : if ( nCmp > 0 ) {
			iMax = idx
			
		} else /* : if ( nCmp < 0 ) */ {
			iMin = idx + 1
		}
		
		// �c��̒����Ƀt�H�[�J�X
		idx = ( iMin + iMax ) / 2
	loop
	
	return bExists
	
//##############################################################################
//                �ÓI�����o���߁E�֐�
//##############################################################################
/*
//------------------------------------------------
// �n�b�V���֐�
// @private
// @result:
// @	max := MAX_HASH - 1
// @	min := 0
// @	(key == "") => 0
//------------------------------------------------
#defcfunc MakeHash@abdata_unor_impl str _key,  local key, local hash, local c
	if ( _key == "" ) { return 0 }
	
	key = _key
	
	repeat strlen(key) - 1
		hash += wpeek(key, cnt) << ( cnt \ 4 )
	loop
	
	return abs( hash \ MAX_HASH )
//*/
	
//##############################################################################
//                �f�o�b�O�p
//##############################################################################
#ifdef _DEBUG

//------------------------------------------------
// �f�o�b�O�o��
//------------------------------------------------
#define global unorImpl_dbglog(%1) unorImpl_dbglog_ %1, "%1"

#deffunc unorImpl_dbglog_ var self,  str _ident,  local ident, local it
	ident = _ident
	
	logmes "[" + strtrim(ident, 0, ' ') + "] debug-log"
	
	IterateBegin self, unorImpl, it
		logmes strf("%s\t: %s", it, unorImpl_get(self, it))
	IterateEnd
	
	logmes ""
	return
	
#else

#define global unorImpl_dbglog(%1) :

#endif
	
#global

#endif

/******
	
	mlistKey, mlistValue �̗v�f�ԍ��������v�f���A�L�[�Ɨv�f�̑g�ɂȂ�B
	mlistKey �͏�ɐ��񂵂Ă���B���̂��߁Afind_ex �̂悤�ȓ񕪒T���ɂ��i�荞�݂��\�B
	
******/
