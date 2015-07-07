// �z��V�t�g���W���[��

#ifndef __MODULE_SHIFT_ARRAY_AS__
#define __MODULE_SHIFT_ARRAY_AS__

#module shift_array_mod

//------------------------------------------------
// �}�� ( �I�ȏ��� )
//------------------------------------------------
#deffunc ArrayInsert array arr, int idx
	
	// �}�������ꏊ���󂯂�
	for i, length(arr), idx, -1
		arr(i) = arr(i - 1)
	next
	
	return
	
//------------------------------------------------
// �폜 ( �I�ȏ��� )
//------------------------------------------------
#deffunc ArrayRemove array arr, int idx
	
	// �폜�����ꏊ������ ( ���̒l�ŏ㏑������ )
	for i, idx, length(arr) - 1
		arr(i) = arr(i + 1)
	next
	
	return
	
//------------------------------------------------
// �ړ�
//------------------------------------------------
#deffunc ArrayMove array arr, int from, int to,  local temp
	if ( from == to ) { return }
	
	// �ړ����̒l��ۑ�����
	temp = arr(from)
	
	// �ړ�����
	if ( from > to ) {
		dir = -1				// ��ɐi�ނȂ� -1
	} else {
		dir = 1
	}
	for i, from, to, dir
		arr(i) = arr(i + dir)	// ���̏ꏊ�̒l���󂯎��
	next
	arr(to) = temp
	
	return
	
//------------------------------------------------
// ����
//------------------------------------------------
#deffunc ArraySwap array arr, int pos1, int pos2,  local temp
	if ( pos1 == pos2 ) { return }
	temp      = arr(pos1)
	arr(pos1) = arr(pos2)
	arr(pos2) = temp
	return
	
//------------------------------------------------
// ����
//------------------------------------------------
#deffunc ArrayRotate array arr, int step,  local temp
	if ( step >= 0 ) {
		ArrayMove arr, 0, length(arr) - 1
	} else {
		ArrayMove arr,    length(arr) - 1, 0
	}
	return
	
// �t��]
#define global ArrayRotateBack(%1) ArrayRotate %1, -1

//------------------------------------------------
// ���]
//------------------------------------------------
#define global ArrayReverse(%1,%2=-1) ArrayReverse_ %1,%2
#deffunc ArrayReverse_ array arr, int _lenArray,  local lenArray
	if ( _lenArray < 0 ) {
		lenArray = length(arr)
	} else {
		lenArray = _lenArray
	}
	
	repeat lenArray / 2
		ArraySwap arr, cnt, lenArray - cnt - 1
	loop
	
	return
	
#global

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 0

#module
#define global output(%1,%2) _output %1, %2, "%2"
#deffunc _output str ps1, array pa2, str ps3
	mes ps1
	foreach pa2
		mes ps3 + strf("(%d) = ", cnt) + pa2(cnt)
	loop
	return
#global

	dim a, 6
	
	// �����l��ݒ肷��
	foreach a
		a(cnt) = cnt
	loop
	
	//######## �v�f�̑}�� ###########################
	// �}����̔ԍ�
	p = 0
	
	ArrayInsert a, p
	
	// �}������
	a(p) = 100
	
	// �\��
	pos 20, 20
	output "Array Insert", a
	
	//######## �v�f�̈ړ� ###########################
	p = 3	// �ړ����̔ԍ�
	t = 1	// �ړ���̔ԍ�
	
	ArrayMove a, p, t
	
	// �\��
	pos 140, 20
	output "Array Move", a
	
	//######## �v�f�̌��� ###########################
	// ��������v�f�Q��
	p = 4, 2
	
	ArraySwap a, p(0), p(1)
	
	// �\��
	pos 260, 20
	output "Array Swap", a
	
	//######## �v�f�̏��� ###########################
	ArrayRotate a
	
	// �\��
	pos 380, 20
	output "Array Rotate", a
	
	//######## �v�f�̍폜 ###########################
	// �폜����ԍ�
	p = 3
	
	ArrayRemove a, p
	
	// �\��
	pos 500, 20
	output "Array Remove", a		// (5) �͍폜���ꂽ�c�[
	
	stop
	
#endif

#endif
