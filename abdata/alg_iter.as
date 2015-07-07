// Algorithm::Iteration - ����

#ifndef IG_ABSTRACT_DATA_STRUCTURE_ALGORITHM_ITERATOR_AS
#define IG_ABSTRACT_DATA_STRUCTURE_ALGORITHM_ITERATOR_AS

// �����A���S���Y�� (foreach)
// @ _continue �͍X�V���s���B

#module abdata_iter mInst, mIterData

#define ctype ARG_TEMP(%1) stt_temp_%1@abdata_iter

#define global ctype inIterMod(%1) %1@abdata_iter
#define global ctype ITER_INST_NAME(%1)      inIterMod(%1_iter_instance)					// (���ʎq���H) ���������ϐ��� �� �����q�C���X�^���X (�z��)
#define global ctype ITER_INST_IDX_NAME(%1)  inIterMod(%1_iter_instance_index_plus_1)		// (���ʎq���H) ���������ϐ��� �� (���̗v�f�ԍ� + 1)
#define global ctype ITER_INST_REAL(%1)      ITER_INST_NAME(%1).(ITER_INST_IDX(%1))			// �����q�C���X�^���X (�z��v�f)
#define global ctype ITER_INST(%1)           Iter_refInstance@abdata_iter(ITER_INST_REAL(%1))
#define global ctype ITER_INST_IDX_VAR(%1)   ITER_INST_IDX_NAME(%1)
#define global ctype ITER_INST_IDX(%1)      (ITER_INST_IDX_VAR(%1) - 1)
#define global ctype ITER_DATA(%1)           Iter_refIterData@abdata_iter(ITER_INST_REAL(%1))

// �E���������C���X�^���X�� ITER_INST() �}�N���œ�����B����� mInst �̃N���[���ϐ��B
// �E�����q�̎��̂́AITER_INST_NAME() �}�N���ŉ��H�������́A���� @abdata_iter �ɂȂ��Ă�B
// �E����(abdata_iter)�� newmod �ɂ���Ĕz��ϐ��ɂȂ�B���̗v�f�ԍ��́AITER_INST_IDX() �œ����A���̒l��
// ���̂��w���C���X�^���X�̖��O�� ITER_INST_IDX_NAME() �}�N���ŉ��H�������O�̕ϐ�
// (����� ITER_INST_IDX_VAR() �œ�����) ���ۑ�����l - 1 �ł���B

// ITER_INST      -> �����q�C���X�^���X�̔z��
// ITER_INST_REAL -> �����q(abdata_iter)�̃C���X�^���X (ITER_INST �ɔz��v�f����������)
// ITER_DATA      -> mIterData �̃N���[���ϐ�

// ��������ϐ��� v �Ƃ���ƁAITER_INST(v), ITER_INST_IDX_VAR(v) �̓�̕ϐ����g�p�����B

// @interface:
// @	sttm void .iterInit()
// @	func bool .iterNext()

//------------------------------------------------
// [@] �C���X�^���X�ւ̎Q��
// 
// @ �C���X�^���X�̌^���܂��܂��Ȃ̂ŁA��U������Ă���g���ׂ��B
//------------------------------------------------
#define ctype Iter_refInstance(%1) stt_refInst_var@abdata_iter.(Iter_refInstance_core(%1))
#modcfunc     Iter_refInstance_core
	dup stt_refInst_var@abdata_iter, mInst
	return 0
	
//------------------------------------------------
// [@] �����q���ւ̎Q��
//------------------------------------------------
#define ctype Iter_refIterData(%1) stt_refIterData_var@abdata_iter.(Iter_refIterData_core(%1))
#modcfunc     Iter_refIterData_core
	dup stt_refIterData_var@abdata_iter, mIterData
	return 0
	
//------------------------------------------------
// �����q�̍X�V ( while �̏����Ɏg�� )
// 
// @ ref �p�̕ϐ��̌^�����킹�邽�߂ɁAdummy_func() ���ɏ��������Ă���B
//------------------------------------------------
#define global ctype Iter_next(%1, %2, %3 = it) \
	( dummy_func@abdata_iter(ITER_INST(%1)) || %2_iterNext(ITER_INST(%1), %3, ITER_DATA(%1)) )
	
#deffunc dummy_sttm@abdata_iter var x
	return
	
#defcfunc dummy_func@abdata_iter var x
	return 0
	
//------------------------------------------------
// [i] �R���X�g���N�^
// 
// @prm inst : �Ώۂ� abdata �R���e�i����
//------------------------------------------------
#define global Iter_new(%1, %2) \
	ARG_TEMP@abdata_iter(new_src) = %1 :\
	ITER_INST_IDX_VAR(%1) ++ :\
	newmod ITER_INST_NAME(%1), abdata_iter@, ARG_TEMP@abdata_iter(new_src) :\
	dummy_sttm@abdata_iter ITER_INST(%1) /* ref �p�̕ϐ��̌^�����킹�� */ :\
	%2_iterInit ITER_INST(%1), ITER_DATA(%1)
	
#modinit var inst
	mInst     = inst
;	mIterData = ;
	return
	
//------------------------------------------------
// [i] �f�X�g���N�^
// @ ���܂̂Ƃ���A�\�����͕K�v�łȂ����c�c�B
//------------------------------------------------
#define global Iter_delete(%1, %2) delmod ITER_INST_REAL(%1) : ITER_INST_IDX_VAR(%1) --
;#modterm
;	return
	
#global

//------------------------------------------------
// ���J�}�N���Q
//------------------------------------------------
#define global IterateBegin(%1,%2,%3=it)  %tabdata_iterate %i0 %s1 Iter_new %1, %2 : IterateCnt_ = -1 : while ( Iter_next(%1, %2, %3) ) : IterateCnt_ ++
#define global IterateEnd                 %tabdata_iterate wend : Iter_delete %o  %o0
#define global IterateCnt_                %tabdata_iterate %p1		// �g�p�s��
#define global IterateCnt                 %tabdata_iterate (IterateCnt_)
#define global ctype Iterate(%1,%2,%3=it) %tabdata_iterate_2 \
	IterateBegin %1, %2, %3 : gosub *%i : IterateEnd : if 0 : *%o

//##############################################################################
//        �T���v���E�X�N���v�g
//##############################################################################
#if 0

#include "list.as"
	
	// �Ƃ肠�����v�f�ǉ�
	List_new slist
	repeat 10
		List_add slist, strf("#%02d value;", cnt)
	loop
	
//	���L�q���@�A���̈� �\ �� �\
;	Iter_new slist, List
;	while ( Iter_next(slist, List, it) )
;		mes it
;	wend
;	Iter_delete slist, List
	
//	���L�q���@�A���̓� �\ �ėp �\
	IterateBegin slist, List		// List �͍\�����B��O������ it �ϐ����w��ł���
		mes it						// �ϐ� it ���A���̎���ł̒l��\��
	IterateEnd
	
//	���L�q���@�A���̎Q �\ � �\
;	Iterate( slist, List ) {
;		mes it						// �����E�o�s�\
;		return						// return ���K�{�I ( �Y���ƈ�x�������s����Ȃ� )
;	}
	stop
	
#endif

#endif
