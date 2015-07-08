#ifndef IG_ABDATA_CONTAINER_WRAPPER_AS
#define IG_ABDATA_CONTAINER_WRAPPER_AS

#include "abheader.as"
#include "container_impl.as"
#include "mod_nullmod.as"

#define global Container_ClsName "Container"
#define global ContainerNull abdataNull

#define global Container_new(%1, %2 = 0, %3 = stt_zero@) Container_new_impl %1, %2, %3
#define global Container_delete(%1) ContainerImpl_delete abdataInsts(%1)

#module
//------------------------------------------------
// �ꎞ�R���e�i�E�I�u�W�F�N�g�̐���
//------------------------------------------------
#deffunc Container_new_impl var self, int num, var vDefault,  local len
	
	// �v�f���̎����g��
	len = length(abdataInsts_var)
	if ( len != 1 ) {
		if ( varuse( abdataInsts_var(len - 2) ) ) {		// �u�Ōォ��1�O�̗v�f�v���g�p���Ă��� => ���Ɩ��܂��Ă��� => �g��
			abdataInsts_var(len * 2 - 1) = abNullmod	// null �������Ď����g��
			// �Ō�̗v�f�� abNullmod �̃N���[���Ȃ̂� .varuse = 2 �ƂȂ�A����Ɏg�p�ł��Ȃ�
		}
	}
	
	// �V�v�f����
	ContainerImpl_new abdataInsts_var, num, vDefault : self = stat
	return
	
#define global ctype new_Container(%1 = 0, %2 = stt_zero@) new_Container_(%1, %2)

//------------------------------------------------
// �ꎞ�R���e�i�E�I�u�W�F�N�g�̐���
//------------------------------------------------
#defcfunc new_Container_ int num, var vDefault,  local newObj
	Container_new newObj, num, vDefault
	return newObj
	
#global

//------------------------------------------------
// �l�̎擾 ( ���ߌ`�� )
//------------------------------------------------
#define global Container_getv(%1, %2, %3 = 0) ContainerImpl_getv abdataInsts(%1), %2, %3
#define global Container_popv(%1, %2, %3 = 0) ContainerImpl_popv abdataInsts(%1), %2, %3

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global ctype Container_get(%1,%2=0) ContainerImpl_get(abdataInsts(%1), %2)
#define global ctype Container_pop(%1,%2=0) ContainerImpl_pop(abdataInsts(%1), %2)

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global Container_clone(%1,%2,%3=0) ContainerImpl_clone abdataInsts(%1), %2, %3

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global ctype Container_ref(%1,%2=0) ContainerImpl_ref(abdataInsts(%1))

//------------------------------------------------
// �擪�E�����̒l�̎擾
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------
#define global ctype Container_get_front(%1)     ContainerImpl_get_front( abdataInsts(%1) )
#define global ctype Container_get_back(%1)      ContainerImpl_get_back ( abdataInsts(%1) )
#define global       Container_getv_front(%1,%2) ContainerImpl_getv_front abdataInsts(%1), %2
#define global       Container_getv_back(%1,%2)  ContainerImpl_getv_back  abdataInsts(%1), %2
#define global ctype Container_pop_front(%1)     ContainerImpl_pop_front( abdataInsts(%1) )
#define global ctype Container_pop_back(%1)      ContainerImpl_pop_back ( abdataInsts(%1) )
#define global       Container_popv_front(%1,%2) ContainerImpl_popv_front abdataInsts(%1), %2
#define global       Container_popv_back(%1,%2)  ContainerImpl_popv_back  abdataInsts(%1), %2

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global ctype Container_vartype(%1,%2)    ContainerImpl_vartype( abdataInsts(%1), %2 )
#define global ctype Container_vartype_front(%1) ContainerImpl_vartype_front( abdataInsts(%1) )
#define global ctype Container_vartype_back(%1)  ContainerImpl_vartype_back( abdataInsts(%1) )

//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global Container_set(%1, %2, %3 = 0)  ContainerImpl_set  abdataInsts(%1), %2, %3
#define global Container_setv(%1, %2, %3 = 0) ContainerImpl_setv abdataInsts(%1), %2, %3

//------------------------------------------------
// �}��
//------------------------------------------------
#define global Container_insert(%1, %2, %3 = 0)  ContainerImpl_insert  abdataInsts(%1), %2, %3
#define global Container_insertv(%1, %2, %3 = 0) ContainerImpl_insertv abdataInsts(%1), %2, %3

//------------------------------------------------
// �v�f�̔{��
//------------------------------------------------
#define global Container_double(%1, %2, %3) ContainerImpl_double abdataInsts(%1), %2, %3

//------------------------------------------------
// �擪�E�Ō���ւ̒ǉ�
//------------------------------------------------
#define global Container_double_front(%1)   ContainerImpl_double_front abdataInsts(%1)
#define global Container_double_back(%1)    ContainerImpl_double_back  abdataInsts(%1)
#define global Container_push_front(%1,%2)  ContainerImpl_push_front   abdataInsts(%1), %2
#define global Container_pushv_front(%1,%2) ContainerImpl_pushv_front  abdataInsts(%1), %2
#define global Container_push_back(%1,%2)   ContainerImpl_push_back    abdataInsts(%1), %2
#define global Container_pushv_back(%1,%2)  ContainerImpl_pushv_back   abdataInsts(%1), %2

#define global Container_push  Container_push_back
#define global Container_pushv Container_pushv_back
#define global Container_add   Container_push_back

//------------------------------------------------
// ����
//------------------------------------------------
#define global Container_remove(%1, %2)   ContainerImpl_remove       abdataInsts(%1), %2
#define global Container_remove_front(%1) ContainerImpl_remove_front abdataInsts(%1)
#define global Container_remove_back(%1)  ContainerImpl_remove_back  abdataInsts(%1)

//------------------------------------------------
// �v�f���ݒ�
//------------------------------------------------
#define global Container_setSize(%1, %2)  ContainerImpl_setSize abdataInsts(%1), %2

//------------------------------------------------
// �ړ�
//------------------------------------------------
#define global Container_loc_move(%1, %2, %3) ContainerImpl_loc_move abdataInsts(%1), %2, %3

//------------------------------------------------
// ����
//------------------------------------------------
#define global Container_loc_swap(%1, %2, %3) ContainerImpl_loc_swap       abdataInsts(%1), %2, %3
#define global Container_loc_swap_front(%1)   ContainerImpl_loc_swap_front abdataInsts(%1)
#define global Container_loc_swap_back(%1)    ContainerImpl_loc_swap_back  abdataInsts(%1)

//------------------------------------------------
// ����
//------------------------------------------------
#define global Container_rotate(%1, %2 = 0, %3 = ArrayRangeEndDefault) ContainerImpl_rotate abdataInsts(%1), %2, %3

//------------------------------------------------
// ���� ( �t��] )
//------------------------------------------------
#define global Container_rotate_back(%1, %2 = 0, %3 = ArrayRangeEndDefault) ContainerImpl_rotate_back abdataInsts(%1), %2, %3

//------------------------------------------------
// ���]
//------------------------------------------------
#define global Container_reverse(%1, %2 = 0, %3 = ArrayRangeEndDefault) ContainerImpl_reverse abdataInsts(%1), %2, %3

//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#define global Container_clear(%1) ContainerImpl_clear abdataInsts(%1)

//------------------------------------------------
// [i] �A��
//------------------------------------------------
#define global Container_chain(%1,%2) ContainerImpl_chain abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global Container_copy(%1,%2) ContainerImpl_copy abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global Container_swap(%1,%2) ContainerImpl_swap abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// ����
// 
// @alg: (based: Merge-Sort)
// @	1. �^�^�C�v�l�Ő���
// @	2. �����^ => �s�����ɂ���r�Ő���
// @prm mode : SortMode_* (default: SortMode_Ascening)
//------------------------------------------------
#define global Container_sort(%1, %2 = SortMode_Ascending) ContainerImpl_sort abdataInsts(%1), %2

//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#define global Container_iterInit(%1,%2) ContainerImpl_iterInit abdataInsts(%1), %2

//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#define global ctype Container_iterNext(%1,%2,%3) ContainerImpl_iterNext( abdataInsts(%1), %2, %3 )

//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global ctype Container_size(%1)  ContainerImpl_size (abdataInsts(%1))
#define global ctype Container_empty(%1) ContainerImpl_empty(abdataInsts(%1))
#define global Container_count  Container_size
#define global Container_length Container_size

//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#define global ctype Container_isValid(%1,%2) ContainerImpl_isValid(abdataInsts(%1), %2)

//------------------------------------------------
// ���ۂ̗v�f�ԍ��𓾂�
// @private
//------------------------------------------------
// #modcfunc local Container_getRealIndex int idx

//------------------------------------------------
// �v�f��r
//------------------------------------------------
#define global ctype Container_opCmpElem(%1,%2,%3) ContainerImpl_opCmpElem(abdataInsts(%1), %2, %3)

//------------------------------------------------
// �f�o�b�O�o��
//------------------------------------------------
#define global Container_dbglog(%1) ContainerImpl_dbglog_ abdataInsts(%1), "%1"

	Container_new ContainerNull		// null := abdataInsts[0]

#endif

/******
	
	���ׂẴC���X�^���X�́A���̃��W���[�����̐ÓI�ϐ� (�z��) st_allinsts ���Ǘ�����B
	�C���X�^���X�́A���ۂɂ� st_allinsts �̔z��v�f�ŊǗ����Aidx �𗘗p�������W���[���֐��Ăяo���́A
	ContainerImpl_(modfunc) st_allinsts@...(idx), ... �ɕϊ������B
	
******/
