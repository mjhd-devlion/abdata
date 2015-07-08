// (�[��)�Q��

#ifndef IG_MODULECLASS_CLONE_AS
#define IG_MODULECLASS_CLONE_AS

#module MCClone mElem

//------------------------------------------------
// �^���l�E���s�l�ENULL�l
//------------------------------------------------
#define true    1
#define false   0
#define success 1
#define failure 0
#define NULL    0

#define global clone_new(%1)    newmod %1, MCClone@
#define global clone_delete(%1) delmod %1

//------------------------------------------------
// �\�z
//------------------------------------------------
#modinit var src
	clone_setv thismod, src
	return
	
//------------------------------------------------
// �Q��
//------------------------------------------------
#define global clone_get(%1) stt_get@MCClone(clone_get_core(%1, stt_get@MCClone))

#modcfunc clone_get_core array dst
	dup dst, mElem
	return 0
	
//------------------------------------------------
// �ݒ�
//------------------------------------------------
#modfunc clone_setv var src
	dup mElem, src
	return
	
//------------------------------------------------
// �N���[�����̏���
//------------------------------------------------
#define global       clone_initAccess(%1)   dummy_sttm@MCClone clone_get(%1)
#define global ctype clone_initAccessf(%1) (dummy_func@MCClone(clone_get(%1))
	
//------------------------------------------------
// �_�~�[���߁E�֐�
//------------------------------------------------
#deffunc dummy_sttm@MCClone var x
	return
	
#defcfunc dummy_func@MCClone var x
	return 0
	
#global

#endif
