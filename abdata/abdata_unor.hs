;#############################
%dll
abdata_unor

%author
uedai

%date
2009 09/04 (Fri)	// �ŏI�X�V
2009 09/03 (Thu)	// �쐬

%ver
1.0

%type
���ۃf�[�^�\�� �A�z�z�� ( �s����R���e�i )

%group
�����o�֐�

%url
http://prograpark.ninja-web.net/

;--------------------
%index
Unor_new
Unor �\�z

%prm
self
modvar self : ���W���[���ϐ�

%inst
�A�z�z����\�z���܂��B

%href
Unor_new
Unor_delete

%group
�\�z�֐�

;--------------------
%index
Unor_delete
Unor ���

%prm
self
modvar self : ���W���[���ϐ�

%inst
�A�z�z�����̂��܂��B

%href
Unor_new
Unor_delete

%group
��̊֐�

;--------------------
%index
Unor_get
Unor �l�̎擾

%prm
(self, key = "")
modvar self : �A�z�z��
str    key  : �L�[

%inst
�w��L�[�Ɋ֘A�Â����Ă���v�f�̒l���擾���܂��B

�L�[���Ȃ��ꍇ�Aint(0) �̒l�Ƃ̑g�Ƃ��Ēǉ����܂��B

%href
Unor_get
Unor_getv
Unor_pop
Unor_popv
Unor_dup
Unor_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
Unor_getv
Unor �l�̎擾 ( �ϐ� )

%prm
self, key = "", vResult
modvar self    : �A�z�z��
str    key     : �L�[
var    vResult : �l���i�[����ϐ�

%inst
�w��L�[�Ɋ֘A�Â����Ă���v�f�̒l�� vResult �Ɋi�[���܂��B

�L�[���Ȃ��ꍇ�Aint(0) �̒l�Ƃ̑g�Ƃ��Ēǉ����܂��B

%href
Unor_get
Unor_getv
Unor_pop
Unor_popv
Unor_dup
Unor_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
Unor_pop
Unor �l�̎��o��

%prm
(self, key = "")
modvar self : �A�z�z��
str    key  : �L�[

%inst
�w��L�[�Ɋ֘A�Â����Ă���v�f�̒l�����o���ĕԂ��܂��B���̗v�f�ƃL�[�̑g�͍폜����܂��B

�L�[���Ȃ��ꍇ�Aint(0) �̒l�Ƃ̑g�Ƃ��Ēǉ����܂��B

%href
Unor_get
Unor_getv
Unor_pop
Unor_popv
Unor_dup
Unor_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
Unor_popv
Unor �l�̎��o�� ( �ϐ� )

%prm
self, key = "", vResult
modvar self    : �A�z�z��
str    key     : �L�[
var    vResult : �l���i�[����ϐ�

%inst
�w��L�[�Ɋ֘A�Â����Ă���v�f�̒l�����o���ĕԂ��܂��B���̗v�f�ƃL�[�̑g�͍폜����܂��B

�L�[���Ȃ��ꍇ�Aint(0) �̒l�Ƃ̑g�Ƃ��Ēǉ����܂��B

%href
Unor_get
Unor_getv
Unor_pop
Unor_popv
Unor_dup
Unor_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
Unor_dup
Unor �v�f�̎Q�Ɖ� ( �ϐ� )

%prm
self, key, vRef
modvar self : �A�z�z��
str    key  : �L�[
var    vRef : �Q�Ƃɂ���ϐ�

%inst
vRef ���w��L�[�Ɋ֘A�Â����Ă���v�f�̃N���[���ɂ��܂��B

�L�[���Ȃ��ꍇ�Aint(0) �̒l�Ƃ̑g�Ƃ��Ēǉ����܂��B

%href
Unor_get
Unor_getv
Unor_pop
Unor_popv
Unor_dup
Unor_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
Unor_ref
Unor �Q��

%prm
(self, key = "")
modvar self : �A�z�z��
key    str  : �L�[

%inst
�w��L�[�Ɋ֘A�Â����Ă���v�f�̃N���[����Ԃ��܂��B

�L�[���Ȃ��ꍇ�Aint(0) �̒l�Ƃ̑g�Ƃ��Ēǉ����܂��B

%sample
	
	Unor_new unor
	Unor_add unor, "key", "Hello, world!"
	mes Unor_ref(unor, "key")
	stop
	
%href
Unor_get
Unor_getv
Unor_pop
Unor_popv
Unor_dup
Unor_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
Unor_add
Unor �v�f�̒ǉ�

%prm
self, key = "", value = 0
modvar self  : �A�z�z��
str    key   : �ǉ�����L�[
any    value : �ǉ�����v�f�̒l

%inst
�A�z�z��ɁAkey �̃L�[�����v�f��ǉ����܂��B

���̃L�[�����łɑ��݂���ꍇ�A���̖��߂͖�������܂��B
�����̓���ɂ��āA���ӌ���W���ł��B�䂦�ɁA�d�l�ύX�����\�������ɍ������߁A�ˑ����Ȃ����Ƃ𐄏����܂��B

%href
Unor_add
Unor_addv

Unor_set
Unor_setv

%group
�����o�֐�::����n

;--------------------
%index
Unor_addv
Unor �v�f�̒ǉ� ( �ϐ� )

%prm
self, key, vValue
modvar self   : �A�z�z��
str    key    : �ǉ�����L�[
var    vValue : �ǉ�����v�f�̒l���i�[�����ϐ�

%inst
�A�z�z��ɁAkey �̃L�[�����v�f��ǉ����܂��B

���̃L�[�����łɑ��݂���ꍇ�A���̖��߂͖�������܂��B
�����̓���ɂ��āA���ӌ���W���ł��B�䂦�ɁA�d�l�ύX�����\�������ɍ������߁A�ˑ����Ȃ����Ƃ𐄏����܂��B

%href
Unor_add
Unor_addv

Unor_set
Unor_setv

%group
�����o�֐�::����n

;--------------------
%index
Unor_set
Unor �l�̐ݒ�

%prm
self, key = "", value
modvar self  : �A�z�z��
str    key   : �L�[
any    value : �ݒ肷��l

%inst
�w��L�[�Ɋ֘A�Â����Ă���v�f�̒l�� value �ɕύX���܂��B�L�[���Ȃ��ꍇ�́A�ǉ�����܂��B

%href
Unor_add
Unor_addv

Unor_set
Unor_setv

%group
�����o�֐�::����n

;--------------------
%index
Unor_setv
Unor �l�̐ݒ� ( �ϐ� )

%prm
self, key, vValue
modvar self   : �A�z�z��
str    key    : �L�[
var    vValue : �l���i�[���Ă���ϐ�

%inst
�w��L�[�Ɋ֘A�Â����Ă���v�f�̒l�� vValue �̒l�ɕύX���܂��B�L�[���Ȃ��ꍇ�́A�ǉ�����܂��B

%href
Unor_add
Unor_addv

Unor_set
Unor_setv

%group
�����o�֐�::����n

;--------------------
%index
Unor_remove
Unor �v�f�̍폜

%prm
self, key
modvar self : �A�z�z��
str    key  : �L�[

%inst
�A�z�z�񂩂�Akey �̃L�[�ƁA���̒l�̃y�A���폜���܂��B

���̃L�[�����݂��Ȃ��ꍇ�A���̖��߂͖�������܂��B

%href

%group
�����o�֐�::����n

;--------------------
%index
Unor_clear
Unor ���� [i]

%prm
self
modvar self : �A�z�z��

%inst
�A�z�z�񂩂炷�ׂĂ̗v�f����菜���A��ɂ��铝��֐��ł��B

%href
Unor_clear
Unor_chain
Unor_copy
Unor_exchange

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Unor_chain
Unor ���� [i]

%prm
self, mvFrom
modvar self   : �A�z�z��
modvar mvFrom : �V

%inst
�A�z�z�� self �ɁA�A�z�z�� mvFrom �������ׂĂ̗v�f��ǉ����铝��֐��ł��B

��self �� mvFrom ���Ƃ��Ɏ��L�[�̗v�f�̈����́AUnor_add �Ɠ��l�ł��B

%href
Unor_clear
Unor_chain
Unor_copy
Unor_exchange

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Unor_copy
Unor ���� [i]

%prm
self, mvFrom
modvar self   : �A�z�z��
modvar mvFrom : �V

%inst
�A�z�z�� self �� mvFrom �Ɠ����L�[�Ɨv�f�����悤�ɂ��铝��֐��ł��B���X self �ɂ��������ׂĂ̗v�f�͎�菜����܂��B

%href
Unor_clear
Unor_chain
Unor_copy
Unor_exchange

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Unor_exchange
Unor �R���e�i���� [i]

%prm
self, mv2
modvar self : �A�z�z��
modvar mv2  : �V

%inst
2�̘A�z�z�� self, mv2 �̓��e�����ׂē���ւ��铝��֐��ł��B

%href
Unor_clear
Unor_chain
Unor_copy
Unor_exchange

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Unor_iterInit
Unor �����q::������ [i]

%prm
self, iterData
modvar self     : �A�z�z��
var    iterData : �����q���

%inst
�A�z�z��̔����q�����������铝��֐��ł��B

%href
Unor_iterInit
Unor_iterNext

%group
�����o�֐�::�����q����n

;--------------------
%index
Unor_iterNext
Unor �����q::�X�V [i]

%prm
(self, vIt, iterData)
modvar self     : �A�z�z��
var    vIt      : it �ϐ�
var    iterData : �����q���

%inst
�A�z�z��̔����q���X�V���铝��֐��ł��B

it �ϐ� vIt �ɂ́A�L�[�̕����񂪊i�[����܂��B

%href
Unor_iterInit
Unor_iterNext

%group
�����o�֐�::�����q����n

;--------------------
%index
Unor_size
Unor �v�f�� [i]

%prm
(self)
modvar self : �A�z�z��

%inst
�A�z�z��Ɋ܂܂��v�f�̐���Ԃ�����֐��ł��B

Unor_count �𐄏����Ă����܂��B

%note
Unor_count(), Unor_length() �Ɠ����B

%href

%group
�����o�֐�

;--------------------
%index
Unor_exists
Unor �L�[�̗L��

%prm
(self, key)
modvar self : �A�z�z��
str    key  : �L�[

%inst
�w��L�[�����݂��邩�ǂ�����Ԃ��܂��B���݂���ꍇ�͐^(!= 0)���A���݂��Ȃ��ꍇ�͋U(= 0)��Ԃ��܂��B

%href

%group
�����o�֐�

;--------------------
%index
Unor_dbglog
Unor �f�o�b�O�o��

%prm
self
modvar self : �A�z�z��

%inst
�A�z�z��Ɋ܂܂�邷�ׂĂ̗v�f�� logmes �ŏo�͂��܂��B

%href

%group
�����o�֐�::�f�o�b�O�n
