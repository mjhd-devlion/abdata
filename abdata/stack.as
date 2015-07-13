// �X�^�b�N - stack ( FIFO & LILO )

#ifndef IG_ABDATA_STACK_AS
#define IG_ABDATA_STACK_AS

#include "abheader.as"
#include "deque.as"

#define global Stack_ClsName "stack"
#define global stackNull dequeNull

#define global stack_make    deque_make
#define global stack_new    deque_new
#define global stack_delete deque_delete

//------------------------------------------------
// �l�̎擾 ( ���ߌ`�� )
//------------------------------------------------
#define global stack_getv(%1,%2=0) deque_getv %1, (-(%2) - 1)

#define global stack_peekv stack_getv

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global ctype stack_get(%1,%2=0) deque_get(%1, (-(%2) - 1))

#define global stack_peek stack_get

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global stack_clone(%1,%2=0) deque_clone %1, (-(%2) - 1)

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global ctype stack_ref(%1,%2=0) deque_ref(%1, (-(%2) - 1))

//------------------------------------------------
// �擪�E�����̒l�̎��o��
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------
;#define global stack_get_front  deque_get_front
;#define global stack_getv_front deque_getv_front
;#define global stack_pop_front  deque_pop_front
;#define global stack_popv_front deque_popv_front
#define global stack_get_back   deque_get_back
#define global stack_getv_back  deque_getv_back
#define global stack_pop_back   deque_pop_back
#define global stack_popv_back  deque_popv_back

#define global stack_pop  deque_pop_back
#define global stack_popv deque_popv_back

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global stack_vartype       container_vartype_back
;#define global stack_vartype_front container_vartype_front
;#define global stack_vartype_back  container_vartype_back

//------------------------------------------------
// �f�[�^�u��
//------------------------------------------------
;#define global stack_set  deque_set
;#define global stack_setv deque_setv

//------------------------------------------------
// �}��
//------------------------------------------------
;#define global stack_insert  deque_insert
;#define global stack_insertv deque_insertv

//------------------------------------------------
// �擪�E�Ō���ւ̒ǉ�
//------------------------------------------------
#define global stack_double_front deque_double_front
#define global stack_double_back  deque_double_back
;#define global stack_push_front   deque_push_front
;#define global stack_pushv_front  deque_pushv_front
#define global stack_push_back    deque_push_back
#define global stack_pushv_back   deque_pushv_back

#define global stack_add         stack_push
#define global stack_push        deque_push_back
#define global stack_pushv       deque_pushv_back

//------------------------------------------------
// ����
//------------------------------------------------
#define global stack_erase  deque_erase_back

//------------------------------------------------
// ��������
//------------------------------------------------
;#define global stack_loc_move        deque_loc_move
;#define global stack_loc_swap        deque_loc_swap
;#define global stack_loc_swap_front  deque_loc_swap_front
#define global stack_loc_swap_back   deque_loc_swap_back
;#define global stack_rotate      deque_rotate
;#define global stack_rotate_back deque_rotate_back
;#define global stack_reverse     deque_reverse

#define global stack_loc_swap        stack_loc_swap_back		// ��ԏ��2�̗v�f�̌���

//------------------------------------------------
// [i] �R���e�i����
//------------------------------------------------
#define global stack_clear    deque_clear
#define global stack_chain    deque_chain
#define global stack_copy     deque_copy
#define global stack_swap deque_swap

//------------------------------------------------
// [i] �����q����
//------------------------------------------------
#define global stack_iter_init deque_iter_init
#define global stack_iter_next deque_iter_next

//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global stack_size   deque_size
#define global stack_length stack_size
#define global stack_empty  deque_empty
#define global stack_count  deque_count

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#define global stack_is_valid deque_is_valid

//------------------------------------------------
// �S�v�f�̏o��
//------------------------------------------------
#define global stack_dbglog deque_dbglog

#endif
