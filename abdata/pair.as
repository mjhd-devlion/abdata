#ifndef IG_ABDATA_PAIR_WRAPPER_AS
#define IG_ABDATA_PAIR_WRAPPER_AS

#include "abheader.as"
#include "pair_impl.as"

#define global Pair_ClsName "pair"
#define global pairNull abdataNull

//------------------------------------------------
// �v�f�� idx �l
//------------------------------------------------
#define global PairIdx_Lhs PairImplIdx_Lhs
#define global PairIdx_Rhs PairImplIdx_Rhs

//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global ctype pair_size(%1)  pairImpl_size ( abdataInsts(%1) )
#define global ctype pair_empty(%1) pairImpl_empty( abdataInsts(%1) )
#define global ctype pair_count(%1, %2) pairImpl_count(abdataInsts(%1), %2)
#define global pair_length pair_size

//------------------------------------------------
// �\�z
//------------------------------------------------
#define global pair_new(%1, %2 = stt_zero@, %3 = stt_zero@) \
	pairImpl_new abdataInsts_var, %2, %3 : %1 = stat
	
#define global pair_delete(%1) pairImpl_delete abdataInsts(%1)

#module
#define global ctype pair_make(%1 = stt_zero@, %2 = stt_zero@) new_pair_(%1, %2)
#defcfunc new_pair_ var lhs, var rhs,  local newObj
	pair_new newObj, lhs, rhs
	return newObj
#global

//------------------------------------------------
// �l�̎擾
//------------------------------------------------
#define global       pair_getv(%1,%2,%3=0)   pairImpl_getv abdataInsts(%1), %2, %3
#define global ctype pair_get(%1,%2=0)       pairImpl_get( abdataInsts(%1), %2 )
#define global       pair_getv_lhs(%1,%2)     pairImpl_getv_lhs  abdataInsts(%1), %2
#define global       pair_getv_rhs(%1,%2)     pairImpl_getv_rhs  abdataInsts(%1), %2
#define global       pair_getv_both(%1,%2,%3) pairImpl_getv_both abdataInsts(%1), %2, %3

#define global ctype pair_get_lhs(%1)         pairImpl_get_lhs(abdataInsts(%1))
#define global ctype pair_get_rhs(%1)         pairImpl_get_rhs(abdataInsts(%1))

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global pair_clone(%1,%2,%3=0) pairImpl_clone    abdataInsts(%1), %2, %3
#define global pair_clone_lhs(%1,%2)   pairImpl_clone_lhs abdataInsts(%1), %2
#define global pair_clone_rhs(%1,%2)   pairImpl_clone_rhs abdataInsts(%1), %2

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global ctype pair_vartype(%1,%2) pairImpl_vartype(abdataInsts(%1), %2)
#define global ctype pair_vartype_lhs(%1) pairImpl_vartype_lhs(abdataInsts(%1))
#define global ctype pair_vartype_rhs(%1) pairImpl_vartype_rhs(abdataInsts(%1))

//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global pair_set(%1,%2,%3=0) pairImpl_set    abdataInsts(%1), %2, %3		// (%3 := idx)
#define global pair_set_lhs(%1,%2)   pairImpl_set_lhs abdataInsts(%1), %2
#define global pair_set_rhs(%1,%2)   pairImpl_set_rhs abdataInsts(%1), %2

#define global pair_setv_lhs(%1,%2) pairImpl_setv_lhs abdataInsts(%1), %2
#define global pair_setv_rhs(%1,%2) pairImpl_setv_rhs abdataInsts(%1), %2

#define global pair_set_both(%1,%2,%3)  pairImpl_set_both  abdataInsts(%1), %2, %3
#define global pair_setv_both(%1,%2,%3) pairImpl_setv_both abdataInsts(%1), %2, %3

//------------------------------------------------
// �v�f����
// @ lhs �� rhs ����������
//------------------------------------------------
#define global pair_loc_swap(%1) pairImpl_loc_swap abdataInsts(%1)

//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#define global pair_clear(%1) pairImpl_clear abdataInsts(%1)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global pair_copy(%1,%2) pairImpl_copy abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global pair_swap(%1,%2) pairImpl_swap abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] ����
//------------------------------------------------
#define global ctype pair_lexicographical_compare(%1,%2) \
	pairImpl_lexicographical_compare abdataInsts(%1), abdataInsts(%2)

//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#define global pair_iter_init(%1,%2) pairImpl_iter_init abdataInsts(%1), %2

//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#define global ctype pair_iter_next(%1,%2,%3) pairImpl_iter_next( abdataInsts(%1), %2, %3 )

//------------------------------------------------
// �f�o�b�O�o��
//------------------------------------------------
#define global pair_dbglog(%1) pairImpl_dbglog_ abdataInsts(%1), "%1"

#endif
