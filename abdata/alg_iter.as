// Algorithm::Iterator - �J�Ԏq

#ifndef __ABSTRACT_DATA_STRUCTURE_ITER_AS__
#define __ABSTRACT_DATA_STRUCTURE_ITER_AS__

#module abdata_iter mInst, mIterData

#define mv modvar abdata_iter@
#define global ctype ITER_INST_NAME(%1)       IN_ITER_MODULE(%1_the_iter_instance)
#define global ctype ITER_INST_INDEX_NAME(%1) IN_ITER_MODULE(%1_the_iter_instance_index_plus_1)
#define global ctype IN_ITER_MODULE(%1) %1@abdata_iter
#define global ctype ITER_INST_REAL(%1) ITER_INST_NAME(%1).(ITER_INST_INDEX(%1))
#define global ctype ITER_INST(%1)           Iter_refInstance@abdata_iter(ITER_INST_REAL(%1))
#define global ctype ITER_INST_INDEX_VAR(%1) ITER_INST_INDEX_NAME(%1)
#define global ctype ITER_INST_INDEX(%1)    (ITER_INST_INDEX_VAR(%1) - 1)
#define global ctype ITER_DATA(%1)           Iter_refIterData@abdata_iter(ITER_INST_REAL(%1))

// �E�J�Ԏq�̎��̂́AITER_INST() �}�N���œ�����B���̖��O�́A���ꂪ�w���C���X�^���X�̖��O��
// ITER_INST_NAME() �}�N���ŉ��H�������́A���� @abdata_iter �ɂȂ��Ă�B
// �E���̂� newmod �ɂ���Ĕz��ϐ��ɂȂ�B���̗v�f�ԍ��́AITER_INST_INDEX() �œ����A���̒l��
// ���̂��w���C���X�^���X�̖��O�� ITER_INST_INDEX_NAME() �}�N���ŉ��H�������O�̕ϐ�
// ( ����� ITER_INST_INDEX_VAR() �œ����� )���ۑ�����l - 1 �ł���B

// ITER_INST      -> �J��Ԃ��R���e�i�̃C���X�^���X
// ITER_INST_REAL -> �J�Ԏq�̃C���X�^���X

//------------------------------------------------
// [@] �C���X�^���X�ւ̎Q��
//------------------------------------------------
#define ctype Iter_refInstance(%1) stt_refInst_var@abdata_iter.(Iter_refInstance_core(%1))
#defcfunc     Iter_refInstance_core mv
	dup stt_refInst_var@abdata_iter, mInst
	return 0
	
//------------------------------------------------
// [@] �J�Ԏq���ւ̎Q��
//------------------------------------------------
#define ctype Iter_refIterData(%1) stt_refIterData_var@abdata_iter.(Iter_refIterData_core(%1))
#defcfunc     Iter_refIterData_core mv
	dup stt_refIterData_var@abdata_iter, mIterData
	return 0
	
//------------------------------------------------
// �J�Ԏq�̍X�V ( while �̏����Ɏg�� )
//------------------------------------------------
#define global ctype Iter_next(%1,%2,%3=it) \
	( %2_iterNext(ITER_INST(%1), %3, ITER_DATA(%1)) )

//------------------------------------------------
// [i] �R���X�g���N�^
//------------------------------------------------
#define global Iter_new(%1,%2) ITER_INST_INDEX_VAR(%1) ++ : newmod ITER_INST_NAME(%1), abdata_iter@, %1 : %2_iterInit ITER_INST(%1), ITER_DATA(%1)
#modinit var mv_inst
	dup mInst, mv_inst
	return
	
//------------------------------------------------
// [i] �f�X�g���N�^
// @ ���܂̂Ƃ���A�\�����͕K�v�łȂ����c�c�B
//------------------------------------------------
#define global Iter_delete(%1,%2) delmod ITER_INST_REAL(%1) : ITER_INST_INDEX_VAR(%1) --
;#modterm
;	return
	
#global

#define global IterateBegin(%1,%2,%3=it)  %tabdata_iterate %i0 %s1 Iter_new %1, %2 : IterateCnt = -1 : while ( Iter_next(%1, %2, %3) ) : IterateCnt ++
#define global IterateEnd                 %tabdata_iterate wend : Iter_delete %o  %o0
#define global IterateCnt                 %tabdata_iterate %p1
#define global ctype Iterate(%1,%2,%3=it) %tabdata_iterate_2 \
	IterateBegin %1, %2, %3 : gosub *%i : IterateEnd : if 0 : *%o

#if 0

#include "list.as"
	
	// �Ƃ肠�����v�f�ǉ�
	List_new slist
	repeat 10
		List_push_back slist, strf("#%02d value;", cnt)
	loop
	
//	���L�q���@�A���̈� �\ �� �\
;	Iter_new slist, List
;	while ( Iter_next(slist, List, it) )
;		mes it
;	wend
;	Iter_delete slist, List
	
//	���L�q���@�A���̓� �\ �ėp �\
	IterateBegin slist, List		// List �͍\�����B
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
