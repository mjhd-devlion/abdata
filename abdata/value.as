// �Ȉ՗v�f�^ ( �R���e�i�������ŗp���� )

#ifndef __ABSTRACT_DATA_STRUCTURE_VALUE_AS__
#define __ABSTRACT_DATA_STRUCTURE_VALUE_AS__

#module abdata_value mValue

//------------------------------------------------
// �Q�Ƃ����
//------------------------------------------------
#modfunc value_dup var p2
	dup p2, mValue
	return
	
//------------------------------------------------
// �l���擾
//------------------------------------------------
#modfunc value_getv var p2
	p2 = mValue
	return
	
//------------------------------------------------
// �l��ݒ�
//------------------------------------------------
#modfunc value_setv var p2
	mValue = p2
	return
	
//------------------------------------------------
// �R���X�g���N�^
//------------------------------------------------
#define global value_new(%1,%2) newmod %1, abdata_value@, %2
#modinit var p2
	value_setv thismod, p2
	return
	
//------------------------------------------------
// �f�X�g���N�^
//------------------------------------------------
#define global value_delete(%1) delmod %1
	
#global

#endif
