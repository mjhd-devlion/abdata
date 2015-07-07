;#############################
%dll
abdata_queue

%author
uedai

%date
2009 09/02 (Wed)	// �ŏI�X�V
2009 08/30 (Sun)	// Deque �̃��b�p�ɕύX�A���t�@�����X�쐬
2009 05/10 (Sun)	// List �̃��b�p�ɕύX
2008 09/0X (___)	// �쐬

%ver
1.0

%type
���ۃf�[�^�\�� �L���[

;%group
;$(default_group)

;--------------------
%index
Queue_new
Queue �\�z

%prm
self
modvar self : ���W���[���ϐ�

%inst
�L���[ (Queue) ���\�z���܂��B

%href
Queue_new
Queue_delete

%group
�\�z�֐�

;--------------------
%index
Queue_delete
Queue ���

%prm
self
modvar self : ���W���[���ϐ�

%inst
�L���[ (Queue) ����̂��܂��B���ׂĂ̗v�f���L���[�����菜����A�L���[�Ƃ��Ė����ɂȂ�܂��B

%href
Queue_new
Queue_delete

%group
��̊֐�

;--------------------
%index
Queue_size
Queue �v�f�� [i]

%prm
(self)
modvar self : �L���[

%inst
�L���[�ɐς܂�Ă���v�f�̐���Ԃ�����֐��ł��B

%href

%group
�����o�֐�

;--------------------
html{
<!--
%index
Queue_isValid
Queue �I�t�Z�b�g���L����

%prm
(self, i)
modvar self : �L���[
int    i    : �I�t�Z�b�g

%inst
�L���[�ŁA�I�t�Z�b�g�l i ���L�����ǂ������ׂ܂��B�v�f���ȏ�A�܂��͕����ł���ꍇ�A�U��Ԃ��܂��B

�I�t�Z�b�g�͖{���K�v�ł͂���܂��񂪁AQueue_peek, Queue_peekv �Ŏg���܂��B

%href

%group
�����o�֐�
-->
}

;--------------------
%index
Queue_peekv
Queue �l�̎擾 ( �ϐ� )

%prm
self, result, i = 0
modvar self    : �L���[
var    result  : �߂�l���i�[����ϐ�
int    i       : �I�t�Z�b�g�l

%inst
�L���[�̗v�f�̒l�� result �Ɋi�[���܂��BQueue_popv �Ƃ͈Ⴂ�A���o�����v�f�̓L���[�����菜����܂���B

%href
Queue_pop
Queue_popv
Queue_peek
Queue_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
Queue_peek
Queue �l�̎擾

%prm
(self, i = 0)
modvar self : �L���[
int    i    : �I�t�Z�b�g�l

%inst
�L���[�̗v�f�̒l���擾���ĕԂ��܂��BQueue_pop �Ƃ͈Ⴂ�A���o�����v�f���L���[�����菜�����Ƃ������Ƃ͂���܂���B

%href
Queue_pop
Queue_popv
Queue_peek
Queue_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
Queue_popv
Queue �l�̎擾 ( �ϐ� )

%prm
self, result
modvar self   : �L���[
var    result : �߂�l���i�[����ϐ�

%inst
�L���[�̐擪�̗v�f�̒l�����o���āAresult �Ɋi�[���܂��B���o�����v�f�́A�L���[�����菜����܂��B

%href
Queue_pop
Queue_popv
Queue_peek
Queue_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
Queue_pop
Queue �l�̎擾

%prm
(self)
modvar self : �L���[

%inst
�L���[�̐擪�̗v�f�̒l�����o���ĕԂ��܂��B���o���ꂽ�v�f�̓L���[�����菜����܂��B

%href
Queue_pop
Queue_popv
Queue_peek
Queue_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
Queue_push
Queue �l�̒ǉ�

%prm
self, value
modvar self  : �L���[
any    value : �V�����v�f�̂��l

%inst
�L���[�ɒl�� push ���܂� ( �܂�A�v�f�𖖔��ɒǉ����܂� )�B

�� Queue_push_back �Ɠ����B

%href
Queue_push
Queue_pushv

%group
�����o�֐�::����n

;--------------------
%index
Queue_pushv
Queue �l�̒ǉ� ( �ϐ� )

%prm
self, vValue
modvar self   : �L���[
var    vValue : �V�����v�f�̂��l���i�[���ꂽ�ϐ�

%inst
�L���[�ɐV�����v�f�� push ���܂� ( �܂�A�����ɗv�f��ǉ����܂� )�B

%href
Queue_push
Queue_pushv

%group
�����o�֐�::����n

;--------------------
%index
Queue_clear
Queue ���� [i]

%prm
self
modvar self : �L���[

%inst
�L���[���炷�ׂĂ̗v�f����菜���ċ�ɂ��铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
Queue_chain
Queue �A�� [i]

%prm
self, mvFrom
modvar self   : �L���[
modvar mvFrom : �V

%inst
�L���[�� mvFrom �̗v�f�����ׂ� push ���铝��֐��ł��B�v�f�̏����͕ۂ���܂��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
Queue_copy
Queue ���� [i]

%prm
self, mvFrom
modvar self   : �L���[
modvar mvFrom : �V

%inst
�L���[�̗v�f�����ׂ� mvFrom �Ɠ����ɂ��铝��֐��ł��B���Ƃ��Ƃ������v�f�́A�L���[�����菜����܂��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
Queue_exchange
Queue �R���e�i���� [i]

%prm
self, mv2
modvar self : �L���[
modvar mv2  : �V

%inst
self �� mv2 �̂��ׂĂ̗v�f���������铝��֐��ł��B���ꂼ��̗v�f�̏����͕ۂ���܂��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
Queue_dbglog
Queue �f�o�b�O�o��

%prm
self
modvar self : �L���[

%inst
�L���[�̂��ׂĂ̗v�f�� logmes �ŏo�͂��܂��B

�����[�X���ɂ͖����ɂȂ�܂��B

%href

%group
�����o�֐�::�f�o�b�O
