#ifndef IG_ABDATA_CONTAINER_WRAPPER_AS
#define IG_ABDATA_CONTAINER_WRAPPER_AS

#include "abheader.as"
#include "container_impl.as"
#include "mod_nullmod.as"

#define global container_ClsName "container"
#define global containerNull abdataNull

#define global container_new(%1, %2 = 0, %3 = stt_zero@) container_new_impl %1, %2, %3
#define global container_delete(%1) containerImpl_delete abdataInsts(%1)

#module
//------------------------------------------------
// �ꎞ�R���e�i�E�I�u�W�F�N�g�̐���
//------------------------------------------------
#deffunc container_new_impl var self, int num, var vDefault,  local len
	
	// �v�f���̎����g��
	len = length(abdataInsts_var)
	if ( len != 1 ) {
		if ( varuse( abdataInsts_var(len - 2) ) ) {		// �u�Ōォ��1�O�̗v�f�v���g�p���Ă��� => ���Ɩ��܂��Ă��� => �g��
			abdataInsts_var(len * 2 - 1) = abNullmod	// null �������Ď����g��
			// �Ō�̗v�f�� abNullmod �̃N���[���Ȃ̂� .varuse = 2 �ƂȂ�A����Ɏg�p�ł��Ȃ�
		}
	}
	
	// �V�v�f����
	containerImpl_new abdataInsts_var, num, vDefault : self = stat
	return
	
#define global ctype new_container(%1 = 0, %2 = stt_zero@) new_container_(%1, %2)

//------------------------------------------------
// �ꎞ�R���e�i�E�I�u�W�F�N�g�̐���
//------------------------------------------------
#defcfunc new_container_ int num, var vDefault,  local newObj
	container_new newObj, num, vDefault
	return newObj
	
#global

//------------------------------------------------
// �l�̎擾 ( ���ߌ`�� )
//------------------------------------------------
#define global container_getv(%1, %2, %3 = 0) containerImpl_getv abdataInsts(%1), %2, %3
#define global container_popv(%1, %2, %3 = 0) containerImpl_popv abdataInsts(%1), %2, %3

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global ctype container_get(%1,%2=0) containerImpl_get(abdataInsts(%1), %2)
#define global ctype container_pop(%1,%2=0) containerImpl_pop(abdataInsts(%1), %2)

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global container_clone(%1,%2,%3=0) containerImpl_clone abdataInsts(%1), %2, %3

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global ctype container_ref(%1,%2=0) containerImpl_ref(abdataInsts(%1))

//------------------------------------------------
// �擪�E�����̒l�̎擾
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------
#define global ctype container_get_front(%1)     containerImpl_get_front( abdataInsts(%1) )
#define global ctype container_get_back(%1)      containerImpl_get_back ( abdataInsts(%1) )
#define global       container_getv_front(%1,%2) containerImpl_getv_front abdataInsts(%1), %2
#define global       container_getv_back(%1,%2)  containerImpl_getv_back  abdataInsts(%1), %2
#define global ctype container_pop_front(%1)     containerImpl_pop_front( abdataInsts(%1) )
#define global ctype container_pop_back(%1)      containerImpl_pop_back ( abdataInsts(%1) )
#define global       container_popv_front(%1,%2) containerImpl_popv_front abdataInsts(%1), %2
#define global       container_popv_back(%1,%2)  containerImpl_popv_back  abdataInsts(%1), %2

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global ctype container_vartype(%1,%2)    containerImpl_vartype( abdataInsts(%1), %2 )
#define global ctype container_vartype_front(%1) containerImpl_vartype_front( abdataInsts(%1) )
#define global ctype container_vartype_back(%1)  containerImpl_vartype_back( abdataInsts(%1) )

//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global container_set(%1, %2, %3 = 0)  containerImpl_set  abdataInsts(%1), %2, %3
#define global container_setv(%1, %2, %3 = 0) containerImpl_setv abdataInsts(%1), %2, %3

//------------------------------------------------
// �}��
//------------------------------------------------
#define global container_insert(%1, %2, %3 = 0)  containerImpl_insert  abdataInsts(%1), %2, %3
#define global container_insertv(%1, %2, %3 = 0) containerImpl_insertv abdataInsts(%1), %2, %3

//------------------------------------------------
// �v�f�̔{��
//------------------------------------------------
#define global container_double(%1, %2, %3) containerImpl_double abdataInsts(%1), %2, %3

//------------------------------------------------
// �擪�E�Ō���ւ̒ǉ�
//------------------------------------------------
#define global container_double_front(%1)   containerImpl_double_front abdataInsts(%1)
#define global container_double_back(%1)    containerImpl_double_back  abdataInsts(%1)
#define global container_push_front(%1,%2)  containerImpl_push_front   abdataInsts(%1), %2
#define global container_pushv_front(%1,%2) containerImpl_pushv_front  abdataInsts(%1), %2
#define global container_push_back(%1,%2)   containerImpl_push_back    abdataInsts(%1), %2
#define global container_pushv_back(%1,%2)  containerImpl_pushv_back   abdataInsts(%1), %2

#define global container_push  container_push_back
#define global container_pushv container_pushv_back
#define global container_add   container_push_back

//------------------------------------------------
// ����
//------------------------------------------------
#define global container_erase(%1, %2)   containerImpl_erase       abdataInsts(%1), %2
#define global container_erase_front(%1) containerImpl_erase_front abdataInsts(%1)
#define global container_erase_back(%1)  containerImpl_erase_back  abdataInsts(%1)

//------------------------------------------------
// �v�f���ݒ�
//------------------------------------------------
#define global container_resize(%1, %2, %3 = stt_zero@)  containerImpl_resize abdataInsts(%1), %2, %3

//------------------------------------------------
// �ړ�
//------------------------------------------------
#define global container_loc_move(%1, %2, %3) containerImpl_loc_move abdataInsts(%1), %2, %3

//------------------------------------------------
// ����
//------------------------------------------------
#define global container_loc_swap(%1, %2, %3) containerImpl_loc_swap       abdataInsts(%1), %2, %3
#define global container_loc_swap_front(%1)   containerImpl_loc_swap_front abdataInsts(%1)
#define global container_loc_swap_back(%1)    containerImpl_loc_swap_back  abdataInsts(%1)

//------------------------------------------------
// ����
//------------------------------------------------
#define global container_rotate(%1, %2 = 0, %3 = stdarray_index_of_end) containerImpl_rotate abdataInsts(%1), %2, %3

//------------------------------------------------
// ���� ( �t��] )
//------------------------------------------------
#define global container_rotate_back(%1, %2 = 0, %3 = stdarray_index_of_end) containerImpl_rotate_back abdataInsts(%1), %2, %3

//------------------------------------------------
// ���]
//------------------------------------------------
#define global container_reverse(%1, %2 = 0, %3 = stdarray_index_of_end) containerImpl_reverse abdataInsts(%1), %2, %3

//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#define global container_clear(%1) containerImpl_clear abdataInsts(%1)

//------------------------------------------------
// [i] �A��
//------------------------------------------------
#define global container_chain(%1,%2) containerImpl_chain abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global container_copy(%1,%2) containerImpl_copy abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global container_swap(%1,%2) containerImpl_swap abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// ����
// 
// @alg: (based: Merge-Sort)
// @	1. �^�^�C�v�l�Ő���
// @	2. �����^ => �s�����ɂ���r�Ő���
// @prm mode : SortMode_* (default: SortMode_Ascening)
//------------------------------------------------
#define global container_sort(%1, %2 = SortMode_Ascending) containerImpl_sort abdataInsts(%1), %2

//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#define global container_iter_init(%1,%2) containerImpl_iter_init abdataInsts(%1), %2

//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#define global ctype container_iter_next(%1,%2,%3) containerImpl_iter_next( abdataInsts(%1), %2, %3 )

//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global ctype container_size(%1)  containerImpl_size (abdataInsts(%1))
#define global ctype container_empty(%1) containerImpl_empty(abdataInsts(%1))
#define global ctype container_count(%1, %2)  containerImpl_count(abdataInsts(%1), %2)
#define global container_length container_size

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#define global ctype container_isValid(%1,%2) containerImpl_isValid(abdataInsts(%1), %2)

//------------------------------------------------
// ���ۂ̗v�f�ԍ��𓾂�
// @private
//------------------------------------------------
// #modcfunc local container_getRealIndex int idx

//------------------------------------------------
// �v�f��r
//------------------------------------------------
#define global ctype container_opCmpElem(%1,%2,%3) containerImpl_opCmpElem(abdataInsts(%1), %2, %3)

//------------------------------------------------
// �f�o�b�O�o��
//------------------------------------------------
#define global container_dbglog(%1) containerImpl_dbglog_ abdataInsts(%1), "%1"

	container_new containerNull		// null := abdataInsts[0]

#endif

/******
	
	���ׂẴC���X�^���X�́A���̃��W���[�����̐ÓI�ϐ� (�z��) st_allinsts ���Ǘ�����B
	�C���X�^���X�́A���ۂɂ� st_allinsts �̔z��v�f�ŊǗ����Aidx �𗘗p�������W���[���֐��Ăяo���́A
	containerImpl_(modfunc) st_allinsts@...(idx), ... �ɕϊ������B
	
******/
