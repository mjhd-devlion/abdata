// Unor - �A�z�z�� ( �s����R���e�i )

#ifndef __ABSTRACT_DATA_STRUCTURE_UNORDERED_AS__
#define __ABSTRACT_DATA_STRUCTURE_UNORDERED_AS__

#include "list.as"
#include "alg_iter.as"

//##############################################################################
//                Unordered
//##############################################################################
#module abdata_unor mlistKey, mlistValue

#define VAR_TEMP stt_temp@abdata_unor
;#define MAX_HASH 53

#define ctype operate_strcmp(%1,%2,%3) ( (%1) != (%3) %2 0 )
#define ctype numrg(%1,%2,%3) ( ((%2) <= (%1)) && ((%1) <= (%3)) )
#define true  1
#define false 0

//##############################################################################
//                �\�z�E���
//##############################################################################

#define global Unor_new(%1)    newmod %1, abdata_unor@
#define global Unor_delete(%1) delmod %1

//------------------------------------------------
// [i] �\�z
//------------------------------------------------
#modinit
	
	// �����o�ϐ��̏�����
	List_new mlistKey
	List_new mlistValue
	
	return
	
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
//------------------------------------------------
#modfunc Unor_getv_byIndex_ int i, var result, int bRemove
	List_getv mlistValue, result, i
	
	if ( bRemove ) {
		Unor_remove_byIndex_ thismod, i
	}
	return
	
#modfunc Unor_getv_ str key, var result, int bRemove
	Unor_getv_byIndex_ thismod, Unor_getIndex(thismod, key), result, bRemove
	return
	
#define global Unor_getv(%1,%2="",%3) Unor_getv_ %1, %2, %3, 0
#define global Unor_popv(%1,%2="",%3) Unor_getv_ %1, %2, %3, 1

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#modcfunc Unor_get_ str key, int bRemove
	Unor_getv_ thismod, key, VAR_TEMP, bRemove
	return VAR_TEMP
	
#define global ctype Unor_get(%1,%2="") Unor_get_(%1, %2, 0)
#define global ctype Unor_pop(%1,%2="") Unor_get_(%1, %2, 1)

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#modfunc Unor_dup_byIndex_ int i, var vRef
	List_dup mlistValue, i, vRef
	return
	
#modfunc Unor_dup str key, var vRef
	Unor_dup_byIndex_ thismod, Unor_getIndex( thismod, key ), vRef
	return
	
//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global ctype Unor_ref(%1,%2="") VAR_TEMP@abdata_unor( Unor_ref_(%1,%2) )
#modcfunc Unor_ref_byIndex_ int i
	Unor_dup thismod, i, VAR_TEMP
	return 0
	
#modcfunc Unor_ref_ str key
	return Unor_ref_byIndex_( thismod, Unor_getIndex(thismod, key) )
	
//################################################
//        �ݒ�n
//################################################
//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global Unor_set(%1,%2="",%3) VAR_TEMP@abdata_unor = %3 : Unor_setv %1, %2, VAR_TEMP@abdata_unor

#modfunc Unor_setv str key, var vValue
	Unor_setv_byIndex_ thismod, Unor_getIndex(thismod, key), vValue
	return
	
#modfunc Unor_setv_byIndex_ int i, var vValue
	List_setv mlistValue, vValue, i
	return
	
//################################################
//        ����n
//################################################
//------------------------------------------------
// �ǉ�
// 
// @ �����Ȃ玸�s
//------------------------------------------------
#define global Unor_add(%1,%2="",%3=stt_zero@) VAR_TEMP@abdata_unor = %3 : Unor_addv %1, %2, VAR_TEMP@abdata_unor

#modfunc Unor_addv str key, var vValue
	Unor_addValue thismod, key, vValue
	return
	
//------------------------------------------------
// ����
// 
// @+ ���݂��Ȃ��v�f�͏������Ȃ�
//------------------------------------------------
#modfunc Unor_remove str key,  local i
	
	i = Unor_getIndex(thismod, key, true)
	if ( i < 0 ) { return }
	
	Unor_remove_byIndex_ thismod, i
	return
	
#modfunc Unor_remove_byIndex_ int i
	List_remove mlistKey,   i
	List_remove mlistValue, i
	return
	
//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#modfunc Unor_clear
	List_clear mlistKey
	List_clear mlistValue
	return
	
//------------------------------------------------
// [i] �A��
//------------------------------------------------
#modfunc Unor_chain var mvFrom
	
	IterateBegin mvFrom, Unor
		Unor_add thismod, it, Unor_get(mvFrom, it)
	IterateEnd
	
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc Unor_copy var mvFrom
	Unor_clear thismod
	Unor_chain thismod, mvFrom
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc Unor_exchange var mv2,  local mvTemp
	Unor_new  mvTemp
	Unor_copy mvTemp,  thismod
	Unor_copy thismod, mv2
	Unor_copy mv2,     mvTemp
	Unor_delete mvTemp
	return
	
//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#modfunc Unor_iterInit var iterData
	List_iterInit mlistKey, iterData
	return
	
//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#modcfunc Unor_iterNext var vIt, var iterData
	return List_iterNext( mlistKey, vIt, iterData )
	
//################################################
//        �G���n
//################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#modcfunc Unor_size
	return List_size( mlistKey )
	
#define global Unor_n      Unor_size
#define global Unor_count  Unor_size
#define global Unor_length Unor_size

//------------------------------------------------
// �L�[�̗L��
//------------------------------------------------
#modcfunc Unor_exists str key
	return ( Unor_getIndex( thismod, key, true ) >= 0 )
	
//------------------------------------------------
// ���ۂ̗v�f�ԍ��𓾂�
// @private
// @result:
// @	bNoAdd == false =>
// @		����ꍇ => �L�[������v�f�ԍ�
// @		�Ȃ��ꍇ => �V�K�ǉ����A���̔ԍ���Ԃ��B
// @		=>> ��ɗL���ȗv�f�ԍ���Ԃ��B
// @	else:
// @		����ꍇ => �L�[������v�f�ԍ�
// @		�Ȃ��ꍇ => ����
//------------------------------------------------
#modcfunc Unor_getIndex@abdata_unor str key, int bNoAdd,  local idx
	
	Unor_find_ex thismod, key, idx
	if ( stat ) {
		return idx
	}
	
	// �V�K�ɒǉ�����
	if ( bNoAdd == false ) {
		Unor_addValue_byIndex_ thismod, idx, key, stt_zero@
		return stat
	}
	
	return -1
	
//------------------------------------------------
// �v�f��ǉ�����
// @private
// @result: �ǉ������v�f�̗v�f�ԍ�
// @ �����Ԃ�ۂ��Ă���
// @ �d�������L�[�͖�������
//------------------------------------------------
#modfunc Unor_addValue@abdata_unor str key, var vValue,  local idx
	
	Unor_find_ex thismod, key, idx
	if ( stat ) {		// �L�[�͊���
		return idx
	}
	
	Unor_addValue_byIndex_ thismod, idx, key, vValue
	
	return idx
	
#modfunc Unor_addValue_byIndex_@abdata_unor int idx, str key, var vValue
	List_insert  mlistKey,      key, idx
	List_insertv mlistValue, vValue, idx
	return idx
	
//------------------------------------------------
// �v�f����������
// @private 
// @result:
// @	�L�[������ꍇ => �^��Ԃ��Bidx := �v�f�ԍ��B
// @	�L�[���Ȃ��ꍇ => �U��Ԃ��Bidx := �w��L�[������ׂ��v�f�ԍ��B
//------------------------------------------------
#modfunc Unor_find_ex@abdata_unor str key, var idx,  local size, local iMin, local iMax, local nCmp, local bExists
	
	size = Unor_size(thismod)
	iMin = 0
	iMax = size
	idx  = size / 2
	
	bExists = false
	
	repeat
		if ( iMin == iMax ) {
			idx = iMin		// ��v�����l
			break
		}
		
		nCmp = ( List_get(mlistKey, idx) != key )
		
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
//------------------------------------------------
// �n�b�V���֐�
// @private
// @result:
// @	max := MAX_HASH - 1
// @	min := 0
// @	(key == "") => 0
//------------------------------------------------
#defcfunc MakeHash@abdata_unor str _key,  local key, local hash, local c
	if ( _key == "" ) { return 0 }
	
	key = _key
	
	repeat strlen(key) - 1
		hash += wpeek(key, cnt) << ( cnt \ 4 )
	loop
	
	return abs( hash \ MAX_HASH )
	
//##############################################################################
//                �f�o�b�O�p
//##############################################################################
#ifdef _DEBUG

#define global Unor_dbglog(%1) Unor_dbglog_ %1, "%1"

#modfunc Unor_dbglog_ str _ident,  local ident
	ident = _ident
	
	logmes "["+ strtrim(ident, 0, ' ') +"] debug-log"
	
	IterateBegin thismod, Unor
		logmes strf("%s\t: %s", it, Unor_get(thismod, it))
	IterateEnd
	
	logmes ""
	return
	
#else

#define global Unor_dbglog(%1) :

#endif
	
#global

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

	Unor_new    vSt
	Unor_add    vSt, "str", "Hello, world!"
	Unor_add    vSt, "int", 100
	Unor_add    vSt, "double", M_PI
	Unor_add    vSt, "���{��", "Japanese"
	Unor_add    vSt, "�p��",   "English"
	Unor_add    vSt, "____"			// �v�f�̊���l�� int(0)
	Unor_dbglog vSt
	
	Unor_set    vSt, "str", "hoge-piyo-foo-bar"
	Unor_remove vSt, "____"
	Unor_dbglog vSt
	
	stop
	
#endif

#endif

/******
	
	mlistKey, mlistValue �̗v�f�ԍ��������v�f���A�L�[�Ɨv�f�̑g�ɂȂ�B
	mlistKey �͏�ɐ��񂵂Ă���B���̂��߁Afind_ex �̂悤�ȍi�荞�݂��\�B
	
******/
