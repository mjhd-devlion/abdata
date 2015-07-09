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
#define global pair_count  pair_size
#define global pair_length pair_size

//------------------------------------------------
// �\�z
//------------------------------------------------
#define global pair_new(%1, %2 = stt_zero@, %3 = stt_zero@) \
	pairImpl_new abdataInsts_var, %2, %3 : %1 = stat
	
#define global pair_delete(%1) pairImpl_delete abdataInsts(%1)

#module
#define global ctype new_pair(%1 = stt_zero@, %2 = stt_zero@) new_pair_(%1, %2)
#defcfunc new_pair_ var lhs, var rhs,  local newObj
	pair_new newObj, lhs, rhs
	return newObj
#global

//------------------------------------------------
// �l�̎擾
//------------------------------------------------
#define global       pair_getv(%1,%2,%3=0)   pairImpl_getv abdataInsts(%1), %2, %3
#define global ctype pair_get(%1,%2=0)       pairImpl_get( abdataInsts(%1), %2 )
#define global       pair_getvLhs(%1,%2)     pairImpl_getvLhs  abdataInsts(%1), %2
#define global       pair_getvRhs(%1,%2)     pairImpl_getvRhs  abdataInsts(%1), %2
#define global       pair_getvBoth(%1,%2,%3) pairImpl_getvBoth abdataInsts(%1), %2, %3

#define global ctype pair_getLhs(%1)         pairImpl_getLhs(abdataInsts(%1))
#define global ctype pair_getRhs(%1)         pairImpl_getRhs(abdataInsts(%1))

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global pair_clone(%1,%2,%3=0) pairImpl_clone    abdataInsts(%1), %2, %3
#define global pair_cloneLhs(%1,%2)   pairImpl_cloneLhs abdataInsts(%1), %2
#define global pair_cloneRhs(%1,%2)   pairImpl_cloneRhs abdataInsts(%1), %2

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global ctype pair_vartype(%1,%2) pairImpl_vartype(abdataInsts(%1), %2)
#define global ctype pair_vartypeLhs(%1) pairImpl_vartypeLhs(abdataInsts(%1))
#define global ctype pair_vartypeRhs(%1) pairImpl_vartypeRhs(abdataInsts(%1))

//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global pair_set(%1,%2,%3=0) pairImpl_set    abdataInsts(%1), %2, %3		// (%3 := idx)
#define global pair_setLhs(%1,%2)   pairImpl_setLhs abdataInsts(%1), %2
#define global pair_setRhs(%1,%2)   pairImpl_setRhs abdataInsts(%1), %2

#define global pair_setvLhs(%1,%2) pairImpl_setvLhs abdataInsts(%1), %2
#define global pair_setvRhs(%1,%2) pairImpl_setvRhs abdataInsts(%1), %2

#define global pair_setBoth(%1,%2,%3)  pairImpl_setBoth  abdataInsts(%1), %2, %3
#define global pair_setvBoth(%1,%2,%3) pairImpl_setvBoth abdataInsts(%1), %2, %3

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
