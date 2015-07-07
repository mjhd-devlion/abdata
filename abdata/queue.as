// Queue - �L���[ ( FILO & LIFO )

#ifndef __ABSTRACT_DATA_STRUCTURE_QUEUE_AS__
#define __ABSTRACT_DATA_STRUCTURE_QUEUE_AS__

#include "deque.as"

//##############################################################################
//                Queue
//##############################################################################

// @abdata_queue �Ƃ����g�����͂ł��Ȃ� ( @abdata_deque �ɒu������Ȃ� )
#define global abdata_queue abdata_deque

//##############################################################################
//                �\�z�E���
//##############################################################################

#define global Queue_new    Deque_new
#define global Queue_delete Deque_delete

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
#define global Queue_getv Deque_getv

#define global Queue_peekv Queue_getv

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global Queue_get Deque_get

#define global Queue_peek Queue_get

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global Queue_dup Deque_dup

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global Queue_ref Deque_ref

//------------------------------------------------
// �擪�E�����̒l�̎��o��
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------
#define global Queue_get_front  Deque_get_front
#define global Queue_getv_front Deque_getv_front
#define global Queue_pop_front  Deque_pop_front
#define global Queue_popv_front Deque_popv_front
;#define global Queue_get_back   Deque_get_back
;#define global Queue_getv_back  Deque_getv_back
;#define global Queue_pop_back   Deque_pop_back
;#define global Queue_popv_back  Deque_popv_back

#define global Queue_popv Deque_popv_front
#define global Queue_pop  Deque_pop_front

//##########################################################
//        ����n
//##########################################################
//------------------------------------------------
// �f�[�^�u��
//------------------------------------------------
#define global Queue_set  Deque_set
#define global Queue_setv Deque_setv

//------------------------------------------------
// �}��
//------------------------------------------------
#define global Queue_insert  Deque_insert
#define global Queue_insertv Deque_insertv

//------------------------------------------------
// �擪�E�Ō���ւ̒ǉ�
//------------------------------------------------
#define global Queue_double_front Deque_double_front
#define global Queue_double_back  Deque_double_back
;#define global Queue_push_front   Deque_push_front
;#define global Queue_pushv_front  Deque_pushv_front
#define global Queue_push_back    Deque_push_back
#define global Queue_pushv_back   Deque_pushv_back

#define global Queue_add         Queue_push
#define global Queue_push        Deque_push_back
#define global Queue_pushv       Deque_pushv_back

//------------------------------------------------
// ����
//------------------------------------------------
#define global Queue_remove  Deque_remove_front

//------------------------------------------------
// ��������
//------------------------------------------------
;#define global Queue_move        Deque_move
;#define global Queue_swap        Deque_swap
;#define global Queue_swap_front  Deque_swap_front
;#define global Queue_swap_back   Deque_swap_back
;#define global Queue_rotate      Deque_rotate
;#define global Queue_rotate_back Deque_rotate_back
;#define global Queue_reverse     Deque_reverse

//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] �R���e�i����
//------------------------------------------------
#define global Queue_clear    Deque_clear
#define global Queue_chain    Deque_chain
#define global Queue_copy     Deque_copy
#define global Queue_exchange Deque_exchange

//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q����
//------------------------------------------------
#define global Queue_iterInit Deque_iterInit
#define global Queue_iterNext Deque_iterNext

//##########################################################
//        �G���n
//##########################################################
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global Queue_size   Deque_size
#define global Queue_n      Queue_size
#define global Queue_count  Queue_size
#define global Queue_length Queue_size

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#define global Queue_isValid Deque_isValid

//##########################################################
//        �ÓI�����o���߁E�֐�
//##########################################################

//##########################################################
//        �f�o�b�O�p
//##########################################################
//------------------------------------------------
// �S�v�f�̏o��
//------------------------------------------------
#define global Queue_dbglog Deque_dbglog

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

	Queue_new q
	repeat 2
		mes "loop "+ cnt
		
		repeat 8
			Queue_push q, (1 << cnt)
		loop
		
		repeat Queue_size(q)
			mes strf("\t0x%04X", Queue_pop(q))
		loop
	loop
	
	Queue_delete q
	stop
	
#endif

#endif
