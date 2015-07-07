// Deque - �o�����L���[

#ifndef __ABSTRACT_DATA_STRUCTURE_DEQUE_AS__
#define __ABSTRACT_DATA_STRUCTURE_DEQUE_AS__

#include "container.as"

//##############################################################################
//                Deque
//##############################################################################

// @abdata_deque �Ƃ����g�����͂ł��Ȃ� ( @abdata_container �ɒu������Ȃ� )
#define global abdata_deque abdata_container

//##############################################################################
//                �\�z�E���
//##############################################################################

#define global Deque_new    Container_new
#define global Deque_delete Container_delete

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
#define global Deque_getv Container_getv
#define global Deque_popv Container_popv

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global Deque_get Container_get
#define global Deque_pop Container_pop

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global Deque_dup Container_dup

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global Deque_ref Container_ref

//------------------------------------------------
// �擪�E�����̒l�̎��o��
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------
#define global Deque_get_front  Container_get_front
#define global Deque_get_back   Container_get_back
#define global Deque_getv_front Container_getv_front
#define global Deque_getv_back  Container_getv_back
#define global Deque_pop_front  Container_pop_front
#define global Deque_pop_back   Container_pop_back
#define global Deque_popv_front Container_popv_front
#define global Deque_popv_back  Container_popv_back

//##########################################################
//        ����n
//##########################################################
//------------------------------------------------
// �f�[�^�u��
//------------------------------------------------
#define global Deque_set  Container_set
#define global Deque_setv Container_setv

//------------------------------------------------
// �}��
//------------------------------------------------
#define global Deque_insert  Container_insert
#define global Deque_insertv Container_insertv

//------------------------------------------------
// �擪�E�Ō���ւ̒ǉ�
//------------------------------------------------
#define global Deque_double_front Container_double_front
#define global Deque_double_back  Container_double_back
#define global Deque_push_front   Container_push_front
#define global Deque_push_back    Container_push_back
#define global Deque_pushv_front  Container_pushv_front
#define global Deque_pushv_back   Container_pushv_back
#define global Deque_push         Container_push
#define global Deque_pushv        Container_pushv
#define global Deque_add          Container_add

//------------------------------------------------
// ����
//------------------------------------------------
#define global Deque_remove       Container_remove
#define global Deque_remove_front Container_remove_front
#define global Deque_remove_back  Container_remove_back

//------------------------------------------------
// ��������
//------------------------------------------------

;#define global Deque_move        Container_move
;#define global Deque_swap        Container_swap
#define global Deque_swap_front  Container_swap_front
#define global Deque_swap_back   Container_swap_back
#define global Deque_rotate      Container_rotate
#define global Deque_rotate_back Container_rotate_back
#define global Deque_reverse     Container_reverse

//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] �R���e�i����
//------------------------------------------------
#define global Deque_clear    Container_clear
#define global Deque_chain    Container_chain
#define global Deque_copy     Container_copy
#define global Deque_exchange Container_exchange

//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q����
//------------------------------------------------
#define global Deque_iterInit Container_iterInit
#define global Deque_iterNext Container_iterNext

//##########################################################
//        �G���n
//##########################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global Deque_size   Container_size
#define global Deque_count  Deque_size
#define global Deque_length Deque_size
#define global Deque_n      Deque_size

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#define global Deque_isValid Container_isValid

//##########################################################
//        �ÓI�����o���߁E�֐�
//##########################################################

//##########################################################
//        �f�o�b�O�p
//##########################################################
//------------------------------------------------
// �S�v�f�̏o��
//------------------------------------------------
#define global Deque_dbglog Container_dbglog

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

	Deque_new    deque
	Deque_add    deque, "Hello, world!"
	Deque_add    deque, 100
	Deque_add    deque, M_PI
	Deque_dbglog deque
	
	Deque_push_front deque, 0x7FFFFFFF
	Deque_dbglog     deque
	
	logmes "[deque] pop-back: "+ Deque_pop_back(deque)
	
	Deque_dbglog deque
	
	stop
	
#endif

#endif
