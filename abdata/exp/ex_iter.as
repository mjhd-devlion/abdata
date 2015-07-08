// iter - �����q (����)

#ifndef IG_ABDATA_EXTRA_ITER_IMPL_AS
#define IG_ABDATA_EXTRA_ITER_IMPL_AS

// �s���S

#module abdata_iter_impl mInst, mIt, mIterData
;, mbReversed

#define ctype ARG_TEMP(%1) stt_temp_%1@abdata_iter_impl

//------------------------------------------------
// �^���l�E���s�l�ENULL�l
//------------------------------------------------
#define true    1
#define false   0
#define success 1
#define failure 0
#define NULL    0

#define global iterImpl_new(%1,%2) newmod %1, abdata_iter_impl@ : iterImpl_clear %1, %2
#define global iterImpl_delete(%1) delmod %1

//------------------------------------------------
// �\�z
//------------------------------------------------
#modinit var inst
	mInst = inst
	return
	
//------------------------------------------------
// ���̂̎擾
//------------------------------------------------
#define global iterImpl_getInstance(%1) ARG_TEMP@abdata_iter_impl(inst)(iterImpl_getInstanceCore(%1, ARG_TEMP@abdata_iter_impl(inst))
#modcfunc iterImpl_getInstanceCore var dst
	dup dst, mInst
	return 0
	
//------------------------------------------------
// �l�̎擾
//------------------------------------------------
#modfunc iterImpl_getv var dst
	dst = mIt
	return
	
#modcfunc iterImpl_get
	return mIt
	
//------------------------------------------------
// �l�̌^�̎擾
//------------------------------------------------
#modcfunc iterImpl_vartype
	return vartype(mIt)
	
//------------------------------------------------
// �f�[�^�̎擾
//------------------------------------------------
#modfunc iterImpl_getvData var dst
	dst = mIterData
	return
	
#modcfunc iterImpl_getData
	return mIterData
	
//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global iterImpl_set(%1, %2) ARG_TEMP@abdata_iter_impl(set) = (%2) : iterImpl_setv %1, ARG_TEMP@abdata_iter_impl(set)
#modfunc iterImpl_setv var src
	mIt = src
	return
	
//------------------------------------------------
// �f�[�^�̐ݒ�
//------------------------------------------------
#define global iterImpl_setData(%1, %2) ARG_TEMP@abdata_iter_impl(setData) = (%2) : iterImpl_sevData %1, ARG_TEMP@abdata_iter_impl(setData)
#modfunc iterImpl_setvData var src
	mIterData = src
	return
	
#modfunc iterImpl_incData
	mIterData ++
	return
	
//------------------------------------------------
// ���̂ւ̃A�N�Z�X�̏���
//------------------------------------------------
#define global       iterImpl_initAccess(%1)  dummy_sttm@abdata_iter_impl  clone_getInstance(%1)
#define global ctype iterImpl_initAccessf(%1) dummy_func@abdata_iter_impl( clone_getInstance(%1) )

//------------------------------------------------
// �O��ֈړ�
//------------------------------------------------
#define global iterImpl_prev(%1, %2) iterImpl_initAccess %1 : %2_iterPrev iterImpl_getInstance(%1), %1
#define global iterImpl_next(%1, %2) iterImpl_initAccess %1 : %2_iterNext iterImpl_getInstance(%1), %1

//------------------------------------------------
// [i] ������
//------------------------------------------------
#define global iterImpl_clear(%1, %2) iterImpl_initAccess %1 : %2_iterInit iterImpl_getInstance(%1), iterImpl_getInitVar(%1)

//------------------------------------------------
// �_�~�[���߁E�֐�
//------------------------------------------------
#deffunc dummy_sttm@abdata_iter_impl var x
	return
	
#defcfunc dummy_func@abdata_iter_impl var x
	return 0
	
#global

#endif
