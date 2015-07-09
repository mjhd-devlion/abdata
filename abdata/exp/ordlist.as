#ifndef IG_ABDATA_ORDLIST_AS
#define IG_ABDATA_ORDLIST_AS

#include "abelem.as"			// �v�f�^
#include "mod_shiftArray.as"	// �z�񑀍샂�W���[��

#include "alg_iter.as"
#include "value.as"

// ����ς݃��X�g(ordered list)
// @ ������v�f�^�Ɏ��R�������Ȃ����X�g
// @ �T�����œK���ł���
// @ key �� value ������ var �Ȃ̂ŁA�g���Â炢

#module abdata_ordlist mCnt, mElems, midlist, mVartype

#define VAR_TEMP stt_temp@abdata_ordlist
#define HSPVAR_TYPE_STR 2

#define ctype numrg(%1,%2,%3) ( ((%2) <= (%1)) && ((%1) <= (%3)) )
#define true  1
#define false 0

#define global Ordlist_new(%1,%2) newmod %1, abdata_ordlist@, %2
#define global Ordlist_delete(%1) delmod %1

//------------------------------------------------
// [i] �\�z
//------------------------------------------------
#modinit int vt
	
	// �����o�ϐ��̏�����
	midlist  = 0
	mCnt     = 0
	mVartype = vt
	
	abelem_new    mElems
	abelem_delete mElems
	
	return
	
//------------------------------------------------
// �\�z��
//------------------------------------------------
;#deffunc CreateOrdlist array self
;	Ordlist_new self
;	return
	
//------------------------------------------------
// �l�̎擾 ( ���ߌ`�� )
//------------------------------------------------
#modfunc Ordlist_getv_ var result, var key, int bRemove
	
	Ordlist_getv_byIndex thismod, Ordlist_getIndex(thismod, key), result
	
	return
	
#modfunc Ordlist_getv_byIndex@abdata_ordlist var result, int i, int bRemove
	
	abelem_getv mElems( midlist(i) ), result
	
	if ( bRemove ) {
		Ordlist_remove_byIndex thismod, i
	}
	
	return
	
#define global Ordlist_getv(%1,%2) Ordlist_getv_ %1, %2, 0
#define global Ordlist_popv(%1,%2) Ordlist_getv_ %1, %2, 1

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#modcfunc Ordlist_get_ var key, int bRemove
	Ordlist_getv_ thismod, VAR_TEMP, key, bRemove
	return VAR_TEMP
	
#define global ctype Ordlist_get(%1,%2) Ordlist_get_(%1, %2, 0)
#define global ctype Ordlist_pop(%1,%2) Ordlist_get_(%1, %2, 1)

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#modfunc Ordlist_dup var vRef, var key
	abelem_dup mElems( midlist( Ordlist_getIndex(thismod, key) ) ), vRef
	return
	
//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global ctype Ordlist_ref(%1,%2) VAR_TEMP@abdata_ordlist( Ordlist_ref_(%1,%2) )
#modcfunc Ordlist_ref_ var key
	Ordlist_dup thismod, VAR_TEMP, key
	return 0
	
//------------------------------------------------
// �^�^�C�v�l
//------------------------------------------------
#modcfunc Ordlist_vartype
	return mVartype
	
//------------------------------------------------
// �v�f�̒ǉ�
//------------------------------------------------
#define global Ordlist_add(%1,%2) VAR_TEMP@abdata_ordlist = %2 : Ordlist_addv %1, VAR_TEMP@abdata_ordlist

#modfunc Ordlist_addv var vValue
	
	if ( vartype(vValue) != mVartype ) { return }
	
	VAR_TEMP = Ordlist_getIndex( thismod, vValue )
	
	return
	
#modfunc Ordlist_addv_byIndex@abdata_ordlist var vValue, int i
	
	// [i] ���󂯂�
	stdarray_insert_room midlist, i
	
	// �v�f��ǉ�
	abelem_new mElems, vValue
	midlist(i) = stat
	mCnt ++
	
	return
	
//------------------------------------------------
// �v�f�̔{��
//------------------------------------------------
#define global Ordlist_double Ordlist_addv

//------------------------------------------------
// ����
//------------------------------------------------
#modfunc Ordlist_remove var key
	
	Ordlist_remove_byIndex thismod, Ordlist_getIndex(thismod, key)
	
	return
	
#modfunc Ordlist_remove_byIndex@abdata_ordlist int i,  local ivRemoved
	
	ivRemoved = midlist(i)
	
	// i �Ԗڂ��l�߂� ( �����I���� )
	stdarray_erase midlist, i
	midlist( length(midlist) - 1 ) = -1		// �c�[�𖳌��v�f�ɂ���
	mCnt --
	
	// mElems �̕������
	abelem_delete mElems( ivRemoved )
	
	return
	
//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#modfunc Ordlist_clear
	
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
#modfunc Ordlist_chain var src
	
	IterateBegin src, Ordlist, VAR_TEMP
		Ordlist_addv thismod, VAR_TEMP
	IterateEnd
	
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc Ordlist_copy var src
	Ordlist_clear thismod
	Ordlist_chain thismod, src
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc Ordlist_swap var mv2,  local mvTemp
	
	if ( Ordlist_vartype(thismod) != Ordlist_vartype(mv2) ) {
		return
	}
	
	Ordlist_new  mvTemp,  Ordlist_vartype(thismod)
	Ordlist_copy mvTemp,  thismod
	Ordlist_copy thismod, mv2
	Ordlist_copy mv2,     mvTemp
	Ordlist_delete mvTemp
	
	return
	
//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#modfunc Ordlist_iter_init var iterData
	iterData = -1
	return
	
//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#modcfunc Ordlist_iter_next var vIt, var iterData,  local idx
	iterData ++
	
	if ( iterData >= mCnt ) {
		return false
	}
	
	Ordlist_getv_byIndex thismod, vIt, iterData
	
	return true
	
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#modcfunc Ordlist_size
	return mCnt
	
#define global ctype Ordlist_empty(%1) ( Ordlist_size(%1) == 0 )
#define global Ordlist_count  Ordlist_size
#define global Ordlist_length Ordlist_size

//------------------------------------------------
// �L�[�̗L��
//------------------------------------------------
#modcfunc Ordlist_exists var key,  local idx
	return ( Ordlist_getIndex(thismod, key, true) >= 0 )
	
//------------------------------------------------
// �l�̗v�f�ԍ��𓾂�
// @private
// @prm bNoAdd : key �����݂��Ȃ��Ƃ��ł��v�f��ǉ����Ȃ��B
//------------------------------------------------
#modcfunc Ordlist_getIndex@abdata_ordlist var key, int bNoAdd,  local idx
	
	Ordlist_find_ex thismod, key, idx
	if ( stat == false ) {			// key ���Ȃ�����
		if ( bNoAdd ) {
			idx = -1
		} else {
			Ordlist_addv_byIndex thismod, key, idx
		}
	}
	
	return idx
	
//------------------------------------------------
// �l����������
// @private
//------------------------------------------------
#modfunc Ordlist_find_ex@abdata_ordlist var key, var idx, int bNoAdd,  local size, local iMin, local iMax, local nCmp, local bExists, local vTemp
	
	size = Ordlist_size(thismod)
	iMin = 0
	iMax = size
	idx  = size / 2
	
	bExists = false
	
	repeat
		if ( iMin == iMax ) {
			idx = iMin		// ��v�����l
			break
		}
		
		Ordlist_getv_byIndex thismod, vTemp, idx
		
		if ( mVartype == HSPVAR_TYPE_STR ) {
			nCmp = ( vTemp != key )
		} else {
			nCmp = ( vTemp - key )
		}
		
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
	
#ifdef _DEBUG

//------------------------------------------------
// �f�o�b�O�o��
//------------------------------------------------
#define global Ordlist_dbglog(%1) Ordlist_dbglog_ %1, "%1"

#modfunc Ordlist_dbglog_ str _ident,  local ident
	ident = _ident
	
	logmes "["+ strtrim(ident, 0, ' ') +"] debug-log"
	
	IterateBegin thismod, Ordlist, VAR_TEMP
		logmes VAR_TEMP
	IterateEnd
	
	logmes ""
	return
	
#else //defined(_DEBUG)

#define global Ordlist_dbglog(%1) :

#endif //defined_DEBUG)

#global

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

	Ordlist_new    vSt, vartype("str")
	Ordlist_add    vSt, "hello, world!"
	Ordlist_add    vSt, "string"
	Ordlist_add    vSt, "double"
	Ordlist_dbglog vSt			// �����ŏo�͂���� ( 'd' < 'h' < 's' )
	
	stop
	
#endif

#endif
