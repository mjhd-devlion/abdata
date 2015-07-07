// pair - �y�A

#ifndef __ABSTRACT_DATA_STRUCTURE_PAIR_AS__
#define __ABSTRACT_DATA_STRUCTURE_PAIR_AS__

#include "value.as"

#module abdata_pair mValue

#define mv modvar abdata_pair@
#define VAR_TEMP  stt_temp1@abdata_pair
#define VAR_TEMP2 stt_temp2@abdata_pair

//------------------------------------------------
// [i] �\�z�E��̃}�N��
//------------------------------------------------
#define global Pair_new(%1,%2=stt_zero@,%3=stt_zero@) \
	VAR_TEMP@abdata_pair  = %2 :\
	VAR_TEMP2@abdata_pair = %3 :\
	newmod %1, abdata_pair@, VAR_TEMP@abdata_pair, VAR_TEMP2@abdata_pair	;
	
#define global Pair_delete(%1) delmod %1

//------------------------------------------------
// �l�̐ݒ�
//------------------------------------------------
#define global Pair_set(%1,%2,%3=0) VAR_TEMP@abdata_pair = %2 : Pair_setv %1, VAR_TEMP@abdata_pair, %3
#modfunc Pair_setv var p2, int n
	value_setv mValue(n), p2
	return
	
#define global Pair_setFirst(%1,%2)  Pair_set %1, %2, 0
#define global Pair_setSecond(%1,%2) Pair_set %1, %2, 1

//------------------------------------------------
// �Q�Ƃ����
//------------------------------------------------
#modfunc Pair_dup var p2, int n
	value_dup mValue(n), p2
	return
	
#define global Pair_dupFirst(%1,%2)  Pair_dup %1, %2, 0
#define global Pair_dupSecond(%1,%2) Pair_dup %1, %2, 1

//------------------------------------------------
// �l�̎擾
//------------------------------------------------
#modfunc Pair_getv var vResult, int n
	value_getv mValue(n), vResult
	return
	
#defcfunc Pair_get mv, int n
	Pair_getv thismod, VAR_TEMP, n
	return VAR_TEMP
	
#define global Pair_getvFirst(%1,%2)  Pair_getv (%1), (%2), 0
#define global Pair_getvSecond(%1,%2) Pair_getv (%1), (%2), 1

#define global ctype Pair_getFirst(%1)  Pair_get(%1, 0)
#define global ctype Pair_getSecond(%1) Pair_get(%1, 1)

//------------------------------------------------
// �v�f����
// @ first �� second ����������
//------------------------------------------------
#modfunc Pair_swap  local tempFirst, local tempSecond
	Pair_getvFirst  thismod, tempFirst
	Pair_getvSecond thismod, tempSecond
	Pair_setFirst   thismod, tempSecond
	Pair_setSecond  thismod, tempFirst
	return
	
//##############################################################################
//                ���̑��̊֐��Q
//##############################################################################
//------------------------------------------------
// [i] ���S����
//------------------------------------------------
#modfunc Pair_clear
	foreach mValue
		value_delete mValue(cnt)
	loop
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc Pair_copy var mv_from
	Pair_clear     thismod
	Pair_setFirst  thismod, Pair_getFirst (mv_from)
	Pair_setSecond thismod, Pair_getSecond(mv_from)
	return
	
//------------------------------------------------
// [i] �A��
//------------------------------------------------
#modfunc Pair_chain var mv_from
	logmes "Pair_chain �͂ł��܂���B"
	return
	
//------------------------------------------------
// [i] ����
//------------------------------------------------
#modfunc Pair_exchange var mv2,  local mvTemp
	Pair_new  mvTemp
	Pair_copy mvTemp,  thismod
	Pair_copy thismod, mv2
	Pair_copy mv2,     mvTemp
	Pair_delete mvTemp
	return
	
//------------------------------------------------
// [i] �v�f��
//------------------------------------------------
#define global ctype Pair_size(%1) 2
#define global Pair_n Pair_size

//------------------------------------------------
// [i] �J�Ԏq������
//------------------------------------------------
#modfunc Pair_iterInit var vIt
	vIt = -1
	return
	
//------------------------------------------------
// [i] �J�Ԏq�X�V
//------------------------------------------------
#defcfunc Pair_iterNext mv, var vIt, var iterData
	iterData ++
	if ( 0 <= iterData && iterData < Pair_size(thismod) ) {
		Pair_getv thismod, vIt, iterData
		return true
	} else {
		return false
	}
	
//##############################################################################
//                �R���X�g���N�^�E�f�X�g���N�^
//##############################################################################
//------------------------------------------------
// [i] �R���X�g���N�^
//------------------------------------------------
#modinit var p2, var p3
	value_new mValue, p2
	value_new mValue, p3
	return
	
//------------------------------------------------
// [i] �f�X�g���N�^
//------------------------------------------------
//------------------------------------------------
// 
//------------------------------------------------	
	
#global

#endif
