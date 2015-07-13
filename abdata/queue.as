#ifndef IG_ABDATA_QUEUE_AS
#define IG_ABDATA_QUEUE_AS

#include "abheader.as"
#include "deque.as"

#define global Queue_ClsName "queue"
#define global queueNull dequeNull

#define global queue_make    deque_make
#define global queue_new    deque_new
#define global queue_delete deque_delete

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

#define global queue_popv deque_popv_front
#define global queue_pop  deque_pop_front

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global queue_vartype       container_vartype_front
#define global queue_vartype_front container_vartype_front

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
#define global queue_push_back    deque_push_back
#define global queue_pushv_back   deque_pushv_back

#define global queue_add         queue_push
#define global queue_push        deque_push_back
#define global queue_pushv       deque_pushv_back

//------------------------------------------------
// ����
//------------------------------------------------
#define global queue_erase  deque_erase_front

//------------------------------------------------
// ��������
//------------------------------------------------
;#define global queue_loc_move        deque_loc_move
;#define global queue_loc_swap        deque_loc_swap
;#define global queue_loc_swap_front  deque_loc_swap_front
;#define global queue_loc_swap_back   deque_loc_swap_back
;#define global queue_rotate      deque_rotate
;#define global queue_rotate_back deque_rotate_back
;#define global queue_reverse     deque_reverse

//------------------------------------------------
// [i] �R���e�i����
//------------------------------------------------
#define global queue_clear    deque_clear
#define global queue_chain    deque_chain
#define global queue_copy     deque_copy
#define global queue_swap deque_swap

//------------------------------------------------
// [i] �����q����
//------------------------------------------------
#define global queue_iter_init deque_iter_init
#define global queue_iter_next deque_iter_next

//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global queue_size   deque_size
#define global queue_length queue_size
#define global queue_empty  deque_empty
#define global queue_count  deque_count

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#define global queue_is_valid deque_is_valid

//------------------------------------------------
// �S�v�f�̏o��
//------------------------------------------------
#define global queue_dbglog deque_dbglog

#endif
