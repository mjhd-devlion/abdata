// tnode - �؍\��(1)

#ifndef IG_ABSTRACT_DATA_STRUCTURE_TREE_NODE_AS
#define IG_ABSTRACT_DATA_STRUCTURE_TREE_NODE_AS

// @ tree node (tnode)
// @ �����o { �m�[�h�l, �q�f�[�^ }
// @ �q�f�[�^�� tnode ��˂����߂΁A����͎����q�m�[�h�ɂȂ�A
// @	�q�f�[�^�� list, pair �Ȃǂ�˂����߂Ε����̎q�m�[�h�𓾂���B
// @ <�m�[�h�l, �q�f�[�^> �ɂ��ꂼ�� [0], [1] �Ƃ��� index ������U�� (�������O������͎g�p�ł��Ȃ�)�B

// @ typo ���|���̂� Child �͂��ׂ� Chd �Ɨ����B
// @ �����̏ꏊ����Q�Ƃ��ꂤ��悤�ɂ��邽�߁A�q���e�̃����N�͓\��Ȃ����Ƃɂ����B

// @# �����̏�ł́Alist �� wrapper �B

#include "list.as"
#include "alg_iter.as"

//##############################################################################
//                abdata::tnode<1>
//##############################################################################
;#define global tnodeInsts st_allinsts@abdata_tnode
#define global tnodeNull  listNull	;st_null@abdata_tnode

#define global TNIdx_Value  0
#define global TNIdx_Chd    1

//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global ctype tnode_size (%1) 2	// list_size
#define global ctype tnode_empty(%1) 0	// false
#define global tnode_count  tnode_size
#define global tnode_length tnode_size

//##############################################################################
//                �\�z�E���
//##############################################################################
//------------------------------------------------
// �\�z
//------------------------------------------------
#module abdata_tnode

#define ctype ARG_TEMP(%1) st_temp_%1_arg@abdata_tnode

#define global tnode_new(%1, %2 = stt_zero@, %3 = stt_zero@) \
	ARG_TEMP@abdata_tnode(1) = (%2) :\
	ARG_TEMP@abdata_tnode(2) = (%3) :\
	tnode_newv %1, ARG_TEMP@abdata_tnode(1), ARG_TEMP@abdata_tnode(2) ://
	
#deffunc tnode_newv var self, var value, var chd
	list_new self
	tnode_resetElemsv self, value, chd
	return
	
#defcfunc new_tnode var value, var chd,   local newOne
	tnode_new newOne, value, chd
	return newOne
	
//------------------------------------------------
// �����2�̗v�f��ǉ�����
//------------------------------------------------
#define global tnode_resetElems(%1, %2 = stt_zero@, %3 = stt_zero@) \
	ARG_TEMP@abdata_tnode(1) = (%2) :\
	ARG_TEMP@abdata_tnode(2) = (%3) :\
	tnode_resetElemsv %1, ARG_TEMP@abdata_tnode(1), ARG_TEMP@abdata_tnode(2) ://
	
#deffunc tnode_resetElemsv var self, var value, var chd
	if ( list_empty(self) == false ) { return }
	list_insertv self, value, TNIdx_Value
	list_insertv self, chd,   TNIdx_Chd
	return
	
#global

//------------------------------------------------
// ���
//------------------------------------------------
#define global tnode_delete list_delete

//##############################################################################
//                �����o���߁E�֐�
//##############################################################################

//##########################################################
//        �擾�n
//##########################################################
//------------------------------------------------
// �l�̎擾 ( ���ߌ`�� )
//------------------------------------------------
#define global tnode_getv_ list_getv
;#define global tnode_popv_ list_popv

#define global tnode_getv(%1,%2)     tnode_getv_ %1, %2, TNIdx_Value
#define global tnode_getvChd(%1,%2)  tnode_getv_ %1, %2, TNIdx_Chd

//------------------------------------------------
// �l�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global tnode_get_ list_get
;#define global tnode_pop_ list_pop

#define global ctype tnode_get(%1)     tnode_get_( %1, TNIdx_Value )
#define global ctype tnode_getChd(%1)  tnode_get_( %1, TNIdx_Chd )

//------------------------------------------------
// �Q�Ɖ� ( ���ߌ`�� )
//------------------------------------------------
#define global tnode_clone_ list_clone

#define global tnode_clone(%1,%2)     tnode_clone_ %1, %2, TNIdx_Value
#define global tnode_cloneChd(%1,%2)  tnode_clone_ %1, %2, TNIdx_Chd

//------------------------------------------------
// �Q�Ɖ� ( �֐��`�� )
//------------------------------------------------
#define global tnode_ref_ list_ref

#define global ctype tnode_ref(%1)     tnode_ref_( %1, TNIdx_Value )
#define global ctype tnode_refChd(%1)  tnode_ref_( %1, TNIdx_Chd )

//------------------------------------------------
// �擪�E�����̒l�̎��o��
// 
// @ get ���� >> const �ȑ���
// @ pop ���� >> �v�f�͎�菜�����
//------------------------------------------------

//------------------------------------------------
// �^�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global tnode_vartype_ list_vartype

#define global ctype tnode_vartype(%1)     tnode_vartype_( %1, TNIdx_Value )
#define global ctype tnode_vartypeChd(%1)  tnode_vartype_( %1, TNIdx_Chd )

//##########################################################
//        ����n
//##########################################################
//------------------------------------------------
// �f�[�^�u��
//------------------------------------------------
#define global tnode_set_  list_set
#define global tnode_setv_ list_setv

#define global tnode_set(%1,%2)     tnode_set_ %1, %2, TNIdx_Value
#define global tnode_setChd(%1,%2)  tnode_set_ %1, %2, TNIdx_Chd

#define global tnode_setv(%1,%2)    tnode_setv_ %1, %2, TNIdx_Value
#define global tnode_setvChd(%1,%2) tnode_setv_ %1, %2, TNIdx_Chd

//------------------------------------------------
// �}��, �[�ւ̒ǉ�, ����, ��������
//------------------------------------------------
// @ �Ȃ�

//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] �R���e�i����
//------------------------------------------------
#define global tnode_clear(%1) list_clear %1 : tnode_resetElems %1
#define global tnode_chain(%1,%2) logmes {"[Error!] tnode_chain %1,%2 �͂ł��܂���I"}
#define global tnode_copy     list_copy
#define global tnode_exchange list_exchange

//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q����
//------------------------------------------------
#define global tnode_iterInit list_iterInit
#define global tnode_iterNext list_iterNext

//##########################################################
//        �G���n
//##########################################################
//------------------------------------------------
// �͈̓`�F�b�N
//------------------------------------------------
#define global ctype tnode_isValid(%1, %2) ( 0 <= (%2) && (%2) < tnode_size(%1) )

//##########################################################
//        �ÓI�����o���߁E�֐�
//##########################################################

//##########################################################
//        �f�o�b�O�p
//##########################################################
#module

#ifdef _DEBUG
//-------- �f�o�b�O�� --------

//------------------------------------------------
// �m�[�h�����ċA�I�ɏo�͂���
//------------------------------------------------
;#define global tnode_dbglog list_dbglog
#deffunc tnode_dbglog int self, int nest,  local thisId, local it, local stmp
	sdim stmp, nest * 2 + 512
	
	if ( nest > 0 ) {
		repeat nest - 1
			stmp += "|  "
		loop
		stmp += "|-- "
	}
	
	logmes stmp + tnode_get(self)
	
	chd = tnode_getChd(self)
	if ( chd != listNull ) {
		IterateBegin chd, list, it
			tnode_dbglog it, nest + 1
		IterateEnd
	}
	
	return
	
#else
//-------- ��f�o�b�O�� --------

#define tnode_dbglog(%1, %2) :

#endif

#global

//##########################################################
//        �q�m�[�h����::�g���L�@
//##########################################################
// @ tnb_* : �񕪖� (chd is a pair)
// @ tnx_* : �w���� (chd is a list)

//------------------------------------------------
// �q�m�[�h�̒ǉ� ( ���ߌ`�� )
//------------------------------------------------
#ifdef pair_new
 #define global ctype tnb_addChd(%1, %2 = 0, %3 = stt_zero@, %4 = stt_zero@) \
	ARG_TEMP@abdata_tnode(addChd_1) = (%2)					/* �m�[�h�l */:\
	ARG_TEMP@abdata_tnode(addChd_2) = pair_new( %3, %4 )	/* �q�f�[�^�ɂȂ� pair ���쐬 */:\
	tnode_newv %1, ARG_TEMP@abdata_tnode(addChd_1), ARG_TEMP@abdata_tnode(addChd_2) ://
#endif

#ifdef list_new
 #define global tnx_addChd(%1, %2 = tnodeNull) list_add tnChd(%1), %2
#endif

//------------------------------------------------
// �q�m�[�h�̎擾 ( �֐��`�� )
//------------------------------------------------
#define global tnChd tnode_getChd

#ifdef pair_new
 #define global ctype tnbChd(%1,%2=0) pair_get   ( tnode_getChd(%1), %2 )
 #define global ctype tnbChdLhs(%1)   pair_getLhs( tnode_getChd(%1) )
 #define global ctype tnbChdRhs(%1)   pair_getRhs( tnode_getChd(%1) )
#endif

#ifdef list_new
 #define global ctype tnxChd(%1,%2=0) list_get( tnode_getChd(%1), %2 )
#endif

//------------------------------------------------
// �q�m�[�h�̐�
//------------------------------------------------
#ifdef pair_new
 #define global ctype tnbSize(%1) pair_size( tnode_getChd(%1) )
 #define global tnbCount  tnbSize
 #define global tnbLength tnbLength
#endif

#ifdef list_new
 #define global ctype tnxSize(%1) list_size( tnode_getChd(%1) )
 #define global tnxCount  tnxSize
 #define global tnxLength tnxLength
#endif

;	tnode_new tnodeNull

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

	tnode_new root, "�e", new_list()
	
	for i, 0, 3
		
		tnode_new   chd, "�q(" + i + ")", new_list()
		tnx_addChd root, chd
		
		repeat 5
		;	chd = list_get( tnode_getChd(root), i )
			
			tnode_new  grandChd, "��(" + cnt + ")", new_list()
			tnx_addChd chd, grandChd
		loop
		
	next
	
	for i, 0, tnxSize(root)
	;	chd = list_get( tnode_getChd(root), i )
		repeat tnxSize( tnxChd(root, i) )
			mes tnode_get( tnxChd( tnxChd(root, i), cnt ) )
		loop
	next
	
	pos 300, 10
	tnode_dbglog root
	stop
	/*
	tnode_new  root2, "root2"
	tnx_addChd root2, tr
;	tnode_copy root2, tr
	TNode_dbglog root2
	
	TNode_addSubTree tr, tr2
	TNode_dbglog tr
	
	logmes ""
	assert
	TNode_addSubTree tr, tr2
	TNode_dbglog tr
	
	stop
	//*/
#endif

#endif
