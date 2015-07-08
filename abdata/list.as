// list - ���X�g

#ifndef IG_ABDATA_LIST_AS
#define IG_ABDATA_LIST_AS

#include "abheader.as"
#include "container.as"

//##############################################################################
//                abdata::list
//##############################################################################

#define global listNull abdataNull

#define global List_ClsName "list"

//##############################################################################
//                �\�z�E���
//##############################################################################

#define global new_list    new_Container
#define global list_new    Container_new
#define global list_delete Container_delete

//------------------------------------------------
// [i] �\�z
//------------------------------------------------
//------------------------------------------------
// [i] ���
//------------------------------------------------

//##############################################################################
//                �����o���߁E�֐�
//##############################################################################

//##########################################################
//        �擾�n
//##########################################################
//------------------------------------------------
// �l�̎擾 ( ���ߌ`�� )
//------------------------------------------------
#define global list_getv Container_getv
#define global list_popv Container_popv

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global list_get Container_get
#define global list_pop Container_pop

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global list_clone Container_clone

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global list_ref Container_ref

//------------------------------------------------
// �擪�E�����̒l�̎��o��
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------
;#define global list_get_front  Container_get_front
;#define global list_get_back   Container_get_back
;#define global list_getv_front Container_getv_front
;#define global list_getv_back  Container_getv_back
;#define global list_pop_front  Container_pop_front
;#define global list_pop_back   Container_pop_back
;#define global list_popv_front Container_popv_front
;#define global list_popv_back  Container_popv_back

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global list_vartype       Container_vartype
;#define global list_vartype_front Container_vartype_front
;#define global list_vartype_back  Container_vartype_back

//##########################################################
//        ����n
//##########################################################
//------------------------------------------------
// �f�[�^�u��
//------------------------------------------------
#define global list_set  Container_set
#define global list_setv Container_setv

//------------------------------------------------
// �}��
//------------------------------------------------
#define global list_insert  Container_insert
#define global list_insertv Container_insertv

//------------------------------------------------
// �擪�E�Ō���ւ̒ǉ�
//------------------------------------------------
;#define global list_push_front  Container_push_front
;#define global list_push_back   Container_push_back
;#define global list_pushv_front Container_pushv_front
;#define global list_pushv_back  Container_pushv_back
;#define global list_push        Container_push
;#define global list_pushv       Container_pushv
#define global list_add         Container_add

//------------------------------------------------
// ����
//------------------------------------------------
#define global list_remove       Container_remove
;#define global list_remove_front Container_remove_front
;#define global list_remove_back  Container_remove_back

//------------------------------------------------
// �v�f���ݒ�
//------------------------------------------------
#define global list_setSize     Container_setSize

//------------------------------------------------
// ��������
//------------------------------------------------
#define global list_move        Container_move
#define global list_swap        Container_swap
#define global list_rotate      Container_rotate
#define global list_rotate_back Container_rotate_back
#define global list_reverse     Container_reverse
#define global list_sort        Container_sort

//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] �R���e�i����
//------------------------------------------------
#define global list_clear    Container_clear
#define global list_chain    Container_chain
#define global list_copy     Container_copy
#define global list_exchange Container_exchange

//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q����
//------------------------------------------------
#define global list_iterInit Container_iterInit
#define global list_iterNext Container_iterNext

//##########################################################
//        �G���n
//##########################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global list_size   Container_size
#define global list_count  list_size
#define global list_length list_size
#define global list_empty  Container_empty

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#define global list_isValid Container_isValid

//##########################################################
//        �ÓI�����o���߁E�֐�
//##########################################################

//##########################################################
//        �f�o�b�O�p
//##########################################################
//------------------------------------------------
// �S�v�f�̏o��
//------------------------------------------------
#define global list_dbglog Container_dbglog

#endif
