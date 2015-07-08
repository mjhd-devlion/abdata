// Algorithm::Iteration - ����

#ifndef IG_ABDATA_ALGORITHM_ITERATION_AS
#define IG_ABDATA_ALGORITHM_ITERATION_AS

// �����A���S���Y�� (foreach)
// @ _continue �͍X�V���s���B

#module abdata_iter mInst, mIterData

#define global ctype structure_name(%1) %1
#define global ctype structure_method(%1,%2) %1%2
#define ctype ARG_TEMP(%1) st_tmp_%1@abdata_iter

#define global ctype inIterMod(%1) %1@abdata_iter
#define global ctype ITER_INST_NAME(%1)      inIterMod(%1_inst)
#define global ctype ITER_INST_IDX_NAME(%1)  inIterMod(%1_inst_idx_plus_1)
#define global ctype ITER_INST_REAL(%1)      ITER_INST_NAME(%1).(ITER_INST_IDX(%1))
#define global ctype ITER_INST(%1)           iter_refInst@abdata_iter(ITER_INST_REAL(%1))
#define global ctype ITER_INST_IDX_VAR(%1)   ITER_INST_IDX_NAME(%1)
#define global ctype ITER_INST_IDX(%1)      (ITER_INST_IDX_VAR(%1) - 1)
#define global ctype ITER_DATA(%1)           iter_refData@abdata_iter(ITER_INST_REAL(%1))

// ITER_INST_NAME:     (���ʎq���H) ���������ϐ��� �� �����q�C���X�^���X (�z��)
// ITER_INST_IDX_NAME: (���ʎq���H) ���������ϐ��� �� (���̗v�f�ԍ� + 1)
// ITER_INST_REAL:     �����q�C���X�^���X (�z��v�f)

// �E���������C���X�^���X�� ITER_INST() �}�N���œ�����B����� mInst �̃N���[���ϐ��B
// �E�����q�̎��̂́AITER_INST_NAME() �}�N���ŉ��H�������́A���� @abdata_iter �ɂȂ��Ă���B
// �E����(abdata_iter)�� newmod �ɂ���Ĕz��ϐ��ɂȂ�B���̗v�f�ԍ��́AITER_INST_IDX() �œ����A���̒l��
// ���̂��w���C���X�^���X�̖��O�� ITER_INST_IDX_NAME() �}�N���ŉ��H�������O�̕ϐ�
// (����� ITER_INST_IDX_VAR() �œ�����) ���ۑ�����l - 1 �ł���B

// ITER_INST      -> �����q�C���X�^���X�̔z��
// ITER_INST_REAL -> �����q(abdata_iter)�̃C���X�^���X (ITER_INST �ɔz��v�f����������)
// ITER_DATA      -> mIterData �̃N���[���ϐ�

// ��������ϐ��� v �Ƃ���ƁAITER_INST(v), ITER_INST_IDX_VAR(v) �̓�̕ϐ����g�p�����B

// (memo) �\���̖��̃p�����[�^(list�Ȃ�)�Ƀ}�N�����g�p�ł��Ȃ� (�W�J������Ƃ��X�y�[�X�������Ă��܂��o�O�̂���)�B

// @interface:
// @	sttm void .iterInit()
// @	func bool .iterNext()

//------------------------------------------------
// [@] �C���X�^���X�ւ̎Q��
// 
// @ �C���X�^���X�̌^���܂��܂��Ȃ̂ŁA��U������Ă���g���ׂ��B
//------------------------------------------------
#define ctype iter_refInst(%1) stt_refInst_var@abdata_iter(iter_refInst_core(%1))
#modcfunc     iter_refInst_core
	dup stt_refInst_var@abdata_iter, mInst
	return 0
	
//------------------------------------------------
// [@] �����q���ւ̎Q��
//------------------------------------------------
#define ctype iter_refData(%1) stt_refData_var@abdata_iter(iter_refData_core(%1))
#modcfunc     iter_refData_core
	dup stt_refData_var@abdata_iter, mIterData
	return 0
	
//------------------------------------------------
// �����q�̍X�V ( while �̏����Ɏg�� )
// 
// @ ref (inst) �p�̕ϐ��̌^�����킹�邽�߂ɁAdummy_func() �����[�v���n�߂�O�ɏ��������Ă���B
//------------------------------------------------
#define global ctype iter_next(%1, %2, %3 = it) \
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
#define global iter_new(%1, %2) \
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
#define global iter_delete(%1, %2) delmod ITER_INST_REAL(%1) : ITER_INST_IDX_VAR(%1) --
;#modterm
;	return
	
#global

//------------------------------------------------
// ���J�}�N���Q
//------------------------------------------------
#define global IterateBegin(%1,%2,%3=it)  %tabdata_iterate %i0 %s1 iter_new %1, %2 : IterateCnt_ = -1 : while ( iter_next(%1, %2, %3) ) : IterateCnt_ ++
#define global IterateEnd                 %tabdata_iterate wend : iter_delete %o  %o0
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
	list_new obj
	repeat 10
		list_add obj, strf("#%02d value;", cnt)
	loop
	
//	���L�q���@�A���̈� �\ �� �\		// �񐄏�
;	iter_new obj, list
;	while ( iter_next( obj, list, it ) )
;		mes it
;	wend
;	iter_delete obj, list
	
//	���L�q���@�A���̓� �\ �ėp �\
	IterateBegin obj, list		// structure �͍\���� (�����ł̓}�N���Ȃ̂Œu�������)�B��O������ it �ϐ����w��ł���B
		mes it						// �ϐ� it ���A���̎���ł̒l(�f�[�^)��\���B
	IterateEnd
	
//	���L�q���@�A���̎Q �\ � �\
;	Iterate( obj, list ) {
;		mes it						// �����E�o�s�\
;		return						// return ���K�{�I ( �Y���ƈ�x�������s����Ȃ� )
;	}
	stop
	
#endif

#endif