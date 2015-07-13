// unor - �A�z�z�� ( �s����R���e�i ) (���b�p)

#ifndef IG_ABDATA_UNOR_WRAPPER_AS
#define IG_ABDATA_UNOR_WRAPPER_AS

#include "abheader.as"
#include "unor_impl.as"

#define global Unor_ClsName "unor"
#define global unorNull abdataNull

#define global unor_new(%1)    unorImpl_new    abdataInsts_var : %1 = stat
#define global unor_delete(%1) unorImpl_delete abdataInsts(%1)

//------------------------------------------------
// �\�z��
//------------------------------------------------
#module
#defcfunc unor_make  local newOne
	unor_new newOne
	return   newOne
#global

//------------------------------------------------
// �l�̎擾 ( ���ߌ`�� )
//------------------------------------------------
;#define global unor_getv_byIndex_(%1,%2,%3,%4) unorImpl_getv_byIndex_ abdataInsts(%1), %2, %3, %4
;#define global unor_getv_(%1,%2,%3,%4) unorImpl_getv_ abdataInsts(%1), %2, %3, %4
#define global unor_getv(%1,%2="",%3) unorImpl_getv abdataInsts(%1), %2, %3
#define global unor_popv(%1,%2="",%3) unorImpl_popv abdataInsts(%1), %2, %3

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
;#define global unor_get_(%1,%2,%3) unorImpl_get_(abdataInsts(%1), %2, %3)
#define global ctype unor_get(%1,%2="") unorImpl_get(abdataInsts(%1), %2)
#define global ctype unor_pop(%1,%2="") unorImpl_pop(abdataInsts(%1), %2)

#define global ctype unor_tryget(%1, %2 = "", %3) unorImpl_tryget(abdataInsts(%1), %2, %3)
#define global ctype unor_trypop(%1, %2 = "", %3) unorImpl_trypop(abdataInsts(%1), %2, %3)

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
;#define global unor_clone_byIndex_(%1,%2,%3) unorImpl_clone_byIndex_ abdataInsts(%1), %2, %3
#define global unor_clone(%1,%2="",%3) unorImpl_clone abdataInsts(%1), %2, %3

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global ctype unor_ref(%1,%2="") unorImpl_ref(abdataInsts(%1), %2)

;#define global ctype unor_ref_byIndex_(%1,%2) unorImpl_ref_byIndex_(abdataInsts(%1), %2)
;#define global ctype unor_ref_(%1,%2="")      unorImpl_ref_(abdataInsts(%1), %2)

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
;#define global unor_vartype_byIndex_(%1,%2) unorImpl_vartype_byIndex_(abdataInsts(%1), %2)
#define global ctype unor_vartype(%1,%2="") unorImpl_vartype(abdataInsts(%1), %2)
;#define global ctype unor_vartype_(%1,%2) unorImpl_vartype_(abdataInsts(%1), %2)

//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global unor_set(%1,%2="",%3)  unorImpl_set  abdataInsts(%1), %2, %3
#define global unor_setv(%1,%2="",%3) unorImpl_setv abdataInsts(%1), %2, %3
;#define global unor_setv_byIndex_(%1,%2,%3) unorImpl_setv_byIndex_ abdataInsts(%1), %2, %3

//------------------------------------------------
// �ǉ�
// 
// @ �����Ȃ玸�s
//------------------------------------------------
#define global unor_add(%1,%2="",%3=stt_zero@) unorImpl_add abdataInsts(%1), %2, %3
#define global unor_addv(%1,%2,%3) unorImpl_addv abdataInsts(%1), %2, %3

//------------------------------------------------
// ����
// 
// @+ ���݂��Ȃ��v�f�͏������Ȃ�
//------------------------------------------------
#define global unor_erase(%1,%2) unorImpl_erase abdataInsts(%1), %2
;#define global unor_erase_byIndex_(%1,%2) unorImpl_erase_byIndex_ abdataInsts(%1), %2

//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#define global unor_clear(%1) unorImpl_clear abdataInsts(%1)

//------------------------------------------------
// [i] �A��
//------------------------------------------------
#define global unor_chain(%1,%2) unorImpl_chain abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global unor_copy(%1,%2) unorImpl_copy abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global unor_swap(%1,%2) unorImpl_swap abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] ��������r
//------------------------------------------------
#define global unor_lexicographical_compare(%1, %2) \
	unorImpl_lexicographical_compare abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#define global unor_iter_init(%1,%2) unorImpl_iter_init abdataInsts(%1), %2

//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#define global ctype unor_iter_next(%1,%2,%3) unorImpl_iter_next( abdataInsts(%1), %2, %3 )

//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global ctype unor_size(%1)  unorImpl_size(abdataInsts(%1))
#define global ctype unor_empty(%1) unorImpl_empty(abdataInsts(%1))
#define global unor_length unor_size

#define global ctype unor_count_key(%1, %2) unorImpl_count_key(abdataInsts(%1), %2)
#define global ctype unor_count_value(%1, %2) unorImpl_count_value(abdataInsts(%1), %2)

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
;#define global ctype unor_getIndex(%1,%2,%3=0) unorImpl_getIndex@abdata_unor_impl(abdataInsts(%1), %2, %3)

//------------------------------------------------
// �v�f��ǉ�����
// @private
// @result: �ǉ������v�f�̗v�f�ԍ�
// @ �����Ԃ�ۂ��Ă����B
// @ �d�������L�[�͖�������B
//------------------------------------------------
;#define global unor_addValue(%1,%2,%3) unorImpl_addValue@abdata_unor_impl abdataInsts(%1), %2, %3
;#define global unor_addValue_byIndex_(%1,%2,%3,%4) unorImpl_addValue_byIndex_@abdata_unor_impl abdataInsts(%1), %2, %3, %4

//------------------------------------------------
// �v�f����������
// @private
// @algorithm : �񕪒T��(binary search)
// @result :
// @	�L�[������ꍇ => �^��Ԃ��Bidx := �v�f�ԍ��B
// @	�L�[���Ȃ��ꍇ => �U��Ԃ��Bidx := �w��L�[������ׂ��v�f�ԍ��B
//------------------------------------------------
#define global ctype unor_find_ex(%1,%2,%3) unorImpl_find_ex@abdata_unor_impl(abdataInsts(%1), %2, %3)

//------------------------------------------------
// �f�o�b�O�o��
//------------------------------------------------
#define global unor_dbglog(%1) unorImpl_dbglog_ abdataInsts(%1), "%1"

#endif
