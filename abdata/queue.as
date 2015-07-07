// queue - �L���[ ( FILO & LIFO )

#ifndef IG_ABSTRACT_DATA_STRUCTURE_queue_AS
#define IG_ABSTRACT_DATA_STRUCTURE_queue_AS

#include "deque.as"

//##############################################################################
//                queue
//##############################################################################

// @abdata_queue �Ƃ����g�����͂ł��Ȃ� ( @abdata_deque �ɒu������Ȃ� )
#define global abdata_queue abdata_deque

//##############################################################################
//                �\�z�E���
//##############################################################################

#define global queue_new    deque_new
#define global queue_delete deque_delete

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
#define global queue_getv deque_getv

#define global queue_peekv queue_getv

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global queue_get deque_get

#define global queue_peek queue_get

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global queue_clone deque_clone

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global queue_ref deque_ref

//------------------------------------------------
// �擪�E�����̒l�̎��o��
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------
#define global queue_get_front  deque_get_front
#define global queue_getv_front deque_getv_front
#define global queue_pop_front  deque_pop_front
#define global queue_popv_front deque_popv_front
;#define global queue_get_back   deque_get_back
;#define global queue_getv_back  deque_getv_back
;#define global queue_pop_back   deque_pop_back
;#define global queue_popv_back  deque_popv_back

#define global queue_popv deque_popv_front
#define global queue_pop  deque_pop_front

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global queue_vartype       Container_vartype_front
;#define global queue_vartype_front Container_vartype_front
;#define global queue_vartype_back  Container_vartype_back

//##########################################################
//        ����n
//##########################################################
//------------------------------------------------
// �f�[�^�u��
//------------------------------------------------
#define global queue_set  deque_set
#define global queue_setv deque_setv

//------------------------------------------------
// �}��
//------------------------------------------------
#define global queue_insert  deque_insert
#define global queue_insertv deque_insertv

//------------------------------------------------
// �擪�E�Ō���ւ̒ǉ�
//------------------------------------------------
#define global queue_double_front deque_double_front
#define global queue_double_back  deque_double_back
;#define global queue_push_front   deque_push_front
;#define global queue_pushv_front  deque_pushv_front
#define global queue_push_back    deque_push_back
#define global queue_pushv_back   deque_pushv_back

#define global queue_add         queue_push
#define global queue_push        deque_push_back
#define global queue_pushv       deque_pushv_back

//------------------------------------------------
// ����
//------------------------------------------------
#define global queue_remove  deque_remove_front

//------------------------------------------------
// ��������
//------------------------------------------------
;#define global queue_move        deque_move
;#define global queue_swap        deque_swap
;#define global queue_swap_front  deque_swap_front
;#define global queue_swap_back   deque_swap_back
;#define global queue_rotate      deque_rotate
;#define global queue_rotate_back deque_rotate_back
;#define global queue_reverse     deque_reverse

//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] �R���e�i����
//------------------------------------------------
#define global queue_clear    deque_clear
#define global queue_chain    deque_chain
#define global queue_copy     deque_copy
#define global queue_exchange deque_exchange

//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q����
//------------------------------------------------
#define global queue_iterInit deque_iterInit
#define global queue_iterNext deque_iterNext

//##########################################################
//        �G���n
//##########################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global queue_size   deque_size
#define global queue_count  queue_size
#define global queue_length queue_size
#define global queue_empty  deque_empty

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#define global queue_isValid deque_isValid

//##########################################################
//        �ÓI�����o���߁E�֐�
//##########################################################

//##########################################################
//        �f�o�b�O�p
//##########################################################
//------------------------------------------------
// �S�v�f�̏o��
//------------------------------------------------
#define global queue_dbglog deque_dbglog

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

	queue_new q
//	mes queue_vartype(q)		// �v�f���Ȃ��̂Ŕ͈͊O�G���[
	
	repeat 2
		mes "loop "+ cnt
		
		repeat 8
			queue_push q, (1 << cnt)
		loop
		
		repeat queue_size(q)
			mes strf("\t0x%04X", queue_pop(q))
		loop
	loop
	
//	queue_delete q
	stop
	
#endif

#endif
