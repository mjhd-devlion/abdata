// unor - �A�z�z�� ( �s����R���e�i ) (���b�p)

#ifndef IG_ABSTRACT_DATA_STRUCTURE_UNORDERED_WRAPPER_AS
#define IG_ABSTRACT_DATA_STRUCTURE_UNORDERED_WRAPPER_AS

#include "unor_impl.as"

//##############################################################################
//                abdata::unordered
//##############################################################################

//##############################################################################
//                �\�z�E���
//##############################################################################
#define global unor_new(%1)    unorImpl_new    unorInsts : %1 = stat
#define global unor_delete(%1) unorImpl_delete unorInsts(%1)

//------------------------------------------------
// �\�z��
//------------------------------------------------
#module

#defcfunc new_unor  local newOne
	unor_new newOne
	return   newOne
	
#global

//------------------------------------------------
// [i] �\�z
//------------------------------------------------

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
;#define global unor_getv_byIndex_(%1,%2,%3,%4) unorImpl_getv_byIndex_ unorInsts(%1), %2, %3, %4
;#define global unor_getv_(%1,%2,%3,%4) unorImpl_getv_ unorInsts(%1), %2, %3, %4
#define global unor_getv(%1,%2="",%3) unorImpl_getv unorInsts(%1), %2, %3
#define global unor_popv(%1,%2="",%3) unorImpl_popv unorInsts(%1), %2, %3

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
;#define global unor_get_(%1,%2,%3) unorImpl_get_(unorInsts(%1), %2, %3)
#define global ctype unor_get(%1,%2="") unorImpl_get(unorInsts(%1), %2)
#define global ctype unor_pop(%1,%2="") unorImpl_pop(unorInsts(%1), %2)

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
;#define global unor_clone_byIndex_(%1,%2,%3) unorImpl_clone_byIndex_ unorInsts(%1), %2, %3
#define global unor_clone(%1,%2="",%3) unorImpl_clone unorInsts(%1), %2, %3

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global ctype unor_ref(%1,%2="") unorImpl_ref(unorInsts(%1), %2)

;#define global ctype unor_ref_byIndex_(%1,%2) unorImpl_ref_byIndex_(unorInsts(%1), %2)
;#define global ctype unor_ref_(%1,%2="")      unorImpl_ref_(unorInsts(%1), %2)

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
;#define global unor_vartype_byIndex_(%1,%2) unorImpl_vartype_byIndex_(unorInsts(%1), %2)
#define global ctype unor_vartype(%1,%2="") unorImpl_vartype(unorInsts(%1), %2)
;#define global ctype unor_vartype_(%1,%2) unorImpl_vartype_(unorInsts(%1), %2)

//################################################
//        �ݒ�n
//################################################
//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global unor_set(%1,%2="",%3)  unorImpl_set  unorInsts(%1), %2, %3
#define global unor_setv(%1,%2="",%3) unorImpl_setv unorInsts(%1), %2, %3
;#define global unor_setv_byIndex_(%1,%2,%3) unorImpl_setv_byIndex_ unorInsts(%1), %2, %3

//################################################
//        ����n
//################################################
//------------------------------------------------
// �ǉ�
// 
// @ �����Ȃ玸�s
//------------------------------------------------
#define global unor_add(%1,%2="",%3=stt_zero@) unorImpl_add unorInsts(%1), %2, %3
#define global unor_addv(%1,%2,%3) unorImpl_addv unorInsts(%1), %2, %3

//------------------------------------------------
// ����
// 
// @+ ���݂��Ȃ��v�f�͏������Ȃ�
//------------------------------------------------
#define global unor_remove(%1,%2) unorImpl_remove unorInsts(%1), %2
;#define global unor_remove_byIndex_(%1,%2) unorImpl_remove_byIndex_ unorInsts(%1), %2

//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#define global unor_clear(%1) unorImpl_clear unorInsts(%1)

//------------------------------------------------
// [i] �A��
//------------------------------------------------
#define global unor_chain(%1,%2) unorImpl_chain unorInsts(%1), unorInsts(%2)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global unor_copy(%1,%2) unorImpl_copy unorInsts(%1), unorInsts(%2)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global unor_exchange(%1,%2) unorImpl_exchange unorInsts(%1), unorInsts(%2)

//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#define global unor_iterInit(%1,%2) unorImpl_iterInit unorInsts(%1), %2

//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#define global ctype unor_iterNext(%1,%2,%3) unorImpl_iterNext( unorInsts(%1), %2, %3 )

//##########################################################
//        �G���n
//#########################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global ctype unor_size(%1)  unorImpl_size(unorInsts(%1))
#define global ctype unor_empty(%1) unorImpl_empty(unorInsts(%1))
#define global unor_count  unor_size
#define global unor_length unor_size

//------------------------------------------------
// �L�[�̗L��
//------------------------------------------------
#define global ctype unor_exists(%1,%2) unorImpl_exists(unorInsts(%1), %2)

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
;#define global ctype unor_getIndex(%1,%2,%3=0) unorImpl_getIndex@abdata_unor_impl(unorInsts(%1), %2, %3)

//------------------------------------------------
// �v�f��ǉ�����
// @private
// @result: �ǉ������v�f�̗v�f�ԍ�
// @ �����Ԃ�ۂ��Ă����B
// @ �d�������L�[�͖�������B
//------------------------------------------------
;#define global unor_addValue(%1,%2,%3) unorImpl_addValue@abdata_unor_impl unorInsts(%1), %2, %3
;#define global unor_addValue_byIndex_(%1,%2,%3,%4) unorImpl_addValue_byIndex_@abdata_unor_impl unorInsts(%1), %2, %3, %4

//------------------------------------------------
// �v�f����������
// @private
// @algorithm : �񕪒T��(binary search)
// @result :
// @	�L�[������ꍇ => �^��Ԃ��Bidx := �v�f�ԍ��B
// @	�L�[���Ȃ��ꍇ => �U��Ԃ��Bidx := �w��L�[������ׂ��v�f�ԍ��B
//------------------------------------------------
#define global ctype unor_find_ex(%1,%2,%3) unorImpl_find_ex@abdata_unor_impl(unorInsts(%1), %2, %3)

//##############################################################################
//                �ÓI�����o���߁E�֐�
//##############################################################################
/*
//------------------------------------------------
// �n�b�V���֐�
//------------------------------------------------
#defcfunc MakeHash@abdata_unor_impl str _key,  local key, local hash, local c

//*/
	
//##############################################################################
//                �f�o�b�O�p
//##############################################################################
//------------------------------------------------
// �f�o�b�O�o��
//------------------------------------------------
#define global unor_dbglog(%1) unorImpl_dbglog_ unorInsts(%1), "%1"

	unor_new unorNull
	
//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

	unor_new    vSt
;	unor_new    vSt
	unor_add    vSt, "str", "Hello, world!"
	unor_add    vSt, "int", 100
	unor_add    vSt, "double", M_PI
	unor_add    vSt, "���{��", "Japanese"
	unor_add    vSt, "�p��",   "English"
	unor_add    vSt, "____"			// �v�f�̊���l�� int(0)
	unor_dbglog vSt
	
	unor_set    vSt, "str", "hoge-piyo-foo-bar"
	unor_remove vSt, "____"
	unor_dbglog vSt
	
	stop
	
#endif

#endif
