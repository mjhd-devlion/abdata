// deque - �o�����L���[

#ifndef IG_ABSTRACT_DATA_STRUCTURE_DEQUE_AS
#define IG_ABSTRACT_DATA_STRUCTURE_DEQUE_AS

#include "container.as"

//##############################################################################
//                abdata:deque
//##############################################################################

// @abdata_deque �Ƃ����g�����͂ł��Ȃ� ( @abdata_container �ɒu������Ȃ� )
#define global abdata_deque abdata_container

//##############################################################################
//                �\�z�E���
//##############################################################################

#define global deque_new    Container_new
#define global deque_delete Container_delete

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
#define global deque_getv Container_getv
#define global deque_popv Container_popv

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global deque_get Container_get
#define global deque_pop Container_pop

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global deque_clone Container_clone

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global deque_ref Container_ref

//------------------------------------------------
// �擪�E�����̒l�̎��o��
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------
#define global deque_get_front  Container_get_front
#define global deque_get_back   Container_get_back
#define global deque_getv_front Container_getv_front
#define global deque_getv_back  Container_getv_back
#define global deque_pop_front  Container_pop_front
#define global deque_pop_back   Container_pop_back
#define global deque_popv_front Container_popv_front
#define global deque_popv_back  Container_popv_back

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global deque_vartype       Container_vartype
#define global deque_vartype_front Container_vartype_front
#define global deque_vartype_back  Container_vartype_back

//##########################################################
//        ����n
//##########################################################
//------------------------------------------------
// �f�[�^�u��
//------------------------------------------------
#define global deque_set  Container_set
#define global deque_setv Container_setv

//------------------------------------------------
// �}��
//------------------------------------------------
#define global deque_insert  Container_insert
#define global deque_insertv Container_insertv

//------------------------------------------------
// �擪�E�Ō���ւ̒ǉ�
//------------------------------------------------
#define global deque_double_front Container_double_front
#define global deque_double_back  Container_double_back
#define global deque_push_front   Container_push_front
#define global deque_push_back    Container_push_back
#define global deque_pushv_front  Container_pushv_front
#define global deque_pushv_back   Container_pushv_back
#define global deque_push         Container_push
#define global deque_pushv        Container_pushv
#define global deque_add          Container_add

//------------------------------------------------
// ����
//------------------------------------------------
#define global deque_remove       Container_remove
#define global deque_remove_front Container_remove_front
#define global deque_remove_back  Container_remove_back

//------------------------------------------------
// ��������
//------------------------------------------------
;#define global deque_move        Container_move
;#define global deque_swap        Container_swap
#define global deque_swap_front  Container_swap_front
#define global deque_swap_back   Container_swap_back
#define global deque_rotate      Container_rotate
#define global deque_rotate_back Container_rotate_back
#define global deque_reverse     Container_reverse

//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] �R���e�i����
//------------------------------------------------
#define global deque_clear    Container_clear
#define global deque_chain    Container_chain
#define global deque_copy     Container_copy
#define global deque_exchange Container_exchange

//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q����
//------------------------------------------------
#define global deque_iterInit Container_iterInit
#define global deque_iterNext Container_iterNext

//##########################################################
//        �G���n
//##########################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global deque_size   Container_size
#define global deque_count  deque_size
#define global deque_length deque_size
#define global deque_empty  Container_empty

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#define global deque_isValid Container_isValid

//##########################################################
//        �ÓI�����o���߁E�֐�
//##########################################################

//##########################################################
//        �f�o�b�O�p
//##########################################################
//------------------------------------------------
// �S�v�f�̏o��
//------------------------------------------------
#define global deque_dbglog Container_dbglog

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

	deque_new    deq
	deque_add    deq, "Hello, world!"
	deque_add    deq, 100
	deque_add    deq, M_PI
	deque_dbglog deq
	
	deque_push_front deq, 0x7FFFFFFF
	deque_dbglog     deq
	
	logmes "[deque] pop-back: "+ deque_pop_back(deq)
	
	deque_dbglog deq
	
	stop
	
#endif

#endif
