#ifndef IG_ABDATA_DICTIONARY_AS
#define IG_ABDATA_DICTIONARY_AS

// ���� (Scripting.Dictionary �̃��b�p)
// �s���S
// @ �Q�Ƃ����Ȃ��B�f���Ƀn�b�V���@�ō\�z�����������������B

#include "alg_iter.as"

#module abdata_dictionary mdict

#define ctype ARG_TEMP(%1) stt_temp_%1@abdata_dictionary

#define true  1
#define false 0

#uselib "oleaut32.dll"
#func   SafeArrayGetElement@abdata_dictionary "SafeArrayGetElement" int, int, int

#define global dict_new(%1)    newmod %1, abdata_dictionary@
#define global dict_delete(%1) delmod %1

//------------------------------------------------
// [i] �\�z
//------------------------------------------------
#modinit
	newcom mdict, "Scripting.Dictionary"
	
	mdict("CompareMode") = false		// ���S��v
	return
	
//------------------------------------------------
// �l�̎擾 ( ���ߌ`�� )
//------------------------------------------------
#modfunc dict_getv var vResult, str key
	
	if ( dict_exists(thismod, key) == false ) {
		vResult = 0
		
	} else {
		vResult = mdict("Item", key)
	}
	return
	
//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#modcfunc dict_get str key
	dict_getv thismod, ARG_TEMP(get), key
	return ARG_TEMP(get)
	
/*
//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#modfunc dict_dup var vResult, str key
	item = 
	dupptr vResult, mdict("Item", key), mdict("Item", key)
	return
	
//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global ctype dict_ref(%1,%2) ARG_TEMP@abdata_dictionary(ref)( dict_ref_(%1, %2) )
#modcfunc dict_ref_ str key
	dict_dup thismod, ARG_TEMP(ref), key
	return 0
//*/
	
//------------------------------------------------
// �^�̎擾
//------------------------------------------------
#modcfunc dict_vartype str key
	dict_getv thismod, ARG_TEMP(vartype), key
	return vartype( ARG_TEMP(vartype) )
	
//------------------------------------------------
// �L�[�̗L���̎擾
//------------------------------------------------
#modcfunc dict_exists str key
	return mdict("Exists", key)
	
//------------------------------------------------
// �l�̐ݒ�
// 
// @ ����`�̃L�[�Ȃ�ǉ�����
// @ �����̏��������ƈႤ�̂Œ���
//------------------------------------------------
#define global dict_set(%1,%2,%3) ARG_TEMP@abdata_dictionary(set) = %3 : dict_setv %1, %2, ARG_TEMP@abdata_dictionary(set)
#modfunc dict_setv str key, var value
	// ���� => �ύX
	if ( dict_exists(thismod, key) ) {
		mdict("Item", key) = value
		
	// �V�K => �ǉ�
	} else {
		mdict->"Add" key, value
	}
	return
	
#define global dict_add  dict_set
#define global dict_addv dict_setv

//------------------------------------------------
// �v�f�̏���
//------------------------------------------------
#modfunc dict_erase str key
	mdict->"Remove" key
	return
	
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#modcfunc dict_size
	return mdict("Count")
	
#define global dict_count  dict_size
#define global dict_length dict_size
#define global dict_empty(%1) (dict_size(%1) == 0)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc dict_clear
	mdict->"RemoveAll"
	return
	
//------------------------------------------------
// [i] �A��
//------------------------------------------------
#modfunc dict_chain var mvFrom,  local it
	IterateBegin mvFrom, dict, it
		dict_add thismod, it, dict_get( mvFrom, it )
	IterateEnd
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc dict_copy var mvFrom
	dict_clear thismod
	dict_chain thismod, mvFrom
	return
	
//------------------------------------------------
// [i] �R���e�i����
//------------------------------------------------
#modfunc dict_swap var mv2,  local mvTemp
	dict_new  mvTemp
	dict_copy mvTemp,  thismod
	dict_copy thismod, mv2
	dict_copy mv2,     mvTemp
	dict_delete mvTemp
	return
	
//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#modfunc dict_iter_init var iterData
	iterData = -1
	return
	
//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#modcfunc dict_iter_next var vIt, var iterData,  local keylist, local key
	iterData ++
	
	if ( iterData >= dict_size(thismod) ) {
		return false
	}
	
	// �L�[�̔z��
	keylist = mdict("Keys")
	
	// �v�f�̎擾
	dimtype key, vartype("variant")		// �擾�p variant
	
	SafeArrayGetElement keylist("arrayptr"), varptr(iterData), varptr(key)
	
	vIt = key("value")
	
	return true
	
#global

//##############################################################################
//                  �T���v���E�X�N���v�g
//##############################################################################
#if 0

	dict_new dict
	dict_add dict, "str",    "������"
	dict_add dict, "double", "����"
	dict_add dict, "int",    "����"
	
	mes dict_get(dict, "int")
	
	// �����q�Fit �̓L�[
	IterateBegin dict, dict
		mes ""+ it +"\t=> "+ dict_get(dict, it)
	IterateEnd
	
	stop
	
#endif

#endif
