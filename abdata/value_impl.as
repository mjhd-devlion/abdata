// �Ēl�^ (����)

#ifndef IG_ABSTRACT_DATA_STRUCTURE_valueImpl_IMPL_AS
#define IG_ABSTRACT_DATA_STRUCTURE_valueImpl_IMPL_AS

#include "mod_pvalptr.as"

//##############################################################################
//                abdata::value
//##############################################################################
#module abdata_value_impl mValue

#define global valueInsts   st_allinsts@abdata_value_impl
#define global valueNull    st_valueNull@abdata_value_impl

#define ctype ARG_TEMP(%1) st_temp_%1_arg@abdata_value_impl

//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global ctype valueImpl_size(%1)  1
#define global ctype valueImpl_empty(%1) 0
#define global valueImpl_count  valueImpl_size
#define global valueImpl_length valueImpl_size

//##########################################################
//        �\�z�E���
//##########################################################
#define global valueImpl_new(%1,%2 = stt_zero@) newmod %1, abdata_value_impl@, %2
#define global valueImpl_delete(%1)             delmod %1

//------------------------------------------------
// �\�z
//------------------------------------------------
#modinit var vSrc
	valueImpl_setv thismod, vSrc
	return getaptr(thismod)
	
//------------------------------------------------
// ���
//------------------------------------------------
;#modterm

//##########################################################
//        �擾�n
//##########################################################
//------------------------------------------------
// �l�̎擾
//------------------------------------------------
#modfunc valueImpl_getv var dst
	dst = mValue
	return
	
#modcfunc valueImpl_get
	return mValue
	
//------------------------------------------------
// �Q�Ɖ�
//------------------------------------------------
#modfunc valueImpl_clone var dst
	dup dst, mValue
	return
	
//------------------------------------------------
// �^�̎擾
//------------------------------------------------
#modcfunc valueImpl_vartype
	return vartype(mValue)
	
//##########################################################
//        ����n
//##########################################################
//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global valueImpl_set(%1, %2) ARG_TEMP@abdata_value_impl(set) = (%2) : valueImpl_setv %1, ARG_TEMP@abdata_value_impl(set)
#modfunc valueImpl_setv var src
	mValue = src
	return
	
//------------------------------------------------
// �ϒ��v�f�̊g��
//------------------------------------------------
#modfunc valueImpl_memexpand int size
	memexpand mValue, size
	return
	
//------------------------------------------------
// �v�f�̌^��ϊ�����
// 
// @+ ���̌^�� vt �������Ȃ�ϊ����Ȃ��B
//------------------------------------------------
#modfunc valueImpl_changeVartype int vt
	if ( vartype(mValue) != vt ) {
		dimtype mValue, vt
	}
	return
	
//##########################################################
//        �G���n
//##########################################################

//------------------------------------------------
// 
//------------------------------------------------

//##########################################################
//        �R���e�i����
//##########################################################
//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#modfunc valueImpl_clear
	dim mValue
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc valueImpl_copy var src,  local tmp
	valueImpl_getv src,     tmp
	valueImpl_setv thismod, tmp
	return
	
//------------------------------------------------
// [i] �A��
//------------------------------------------------
#define global valueImpl_chain(%1, %2) "value_chain �͂ł��܂���B[value_chain(%1, %2)]"
;#modfunc valueImpl_chain var src
;	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc valueImpl_exchange var mv2,  local tmp
	valueImpl_getv thismod, tmp			// tmp  <- this
	valueImpl_copy thismod, mv2			// this <- mv2
	valueImpl_setv mv2,     tmp			// mv2  <- tmp
	return
	
//##########################################################
//        �����q����
//##########################################################
//------------------------------------------------
// [i] �����q::������
//------------------------------------------------
#modfunc valueImpl_iterInit var iterData
	iterData = false
	return
	
//------------------------------------------------
// [i] �����q::�X�V
//------------------------------------------------
#modcfunc valueImpl_iterNext var vIt, var iterData
	if ( iterData == false ) {				// ���� (�̂�)
		iterData = true
		valueImpl_setv thismod, vIt
		return true
	}
	return false
	
#global

	valueImpl_new st_valueNull@abdata_value_impl
	
#endif
