;#############################
%dll
abdata_queue

%author
uedai

%date
2010 07/18 (Sun)	// �ŏI�X�V �\�L�ȂǁA���낢�����
2009 10/04 (Sun)	// 
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
queue_new
Queue �\�z

%prm
self
var self : Queue ���\�z����ϐ�

%inst
�L���[ (Queue) ���\�z���܂��B

%href
new_queue
queue_new
queue_delete

%group
�\�z�֐�

;--------------------
%index
queue_delete
Queue ���

%prm
self
inst self : �L���[

%inst
�L���[ (Queue) ����̂��܂��B���ׂĂ̗v�f���L���[�����菜����A�L���[�Ƃ��Ė����ɂȂ�܂��B

%href
new_queue
queue_new
queue_delete

%group
��̊֐�

;--------------------
%index
queue_size
Queue �v�f�� [i]

%prm
(self)
inst self : �L���[

%inst
�L���[�ɐς܂�Ă���v�f�̐���Ԃ�����֐��ł��B

%href

%group
�����o�֐�

;--------------------
html{
<!--
%index
queue_isValid
Queue �I�t�Z�b�g���L����

%prm
(self, offset)
inst self   : �L���[
int  offset : �I�t�Z�b�g

%inst
�L���[�ŁA�I�t�Z�b�g�l offset ���L���Ȓl���ǂ������ׂ܂��B�v�f���ȏ�A�܂��͕����ł���ꍇ�A�U��Ԃ��܂��B

�I�t�Z�b�g�͖{���K�v�ł͂���܂��񂪁Aqueue_peek, queue_peekv �Ŏg���܂��B

%href

%group
�����o�֐�
-->
}

;--------------------
%index
queue_push
Queue �l�̒ǉ�

%prm
self, value
inst self  : �L���[
any  value : �V�����v�f�̂��l

%inst
�L���[�ɒl�� push ���܂� ( �܂�A�v�f�𖖔��ɒǉ����܂� )�B

�� queue_push_back �Ɠ����B

%href
queue_push
queue_pushv

%group
�����o�֐�::����n

;--------------------
%index
queue_pushv
Queue �l�̒ǉ� ( �ϐ� )

%prm
self, vValue
inst self   : �L���[
var  vValue : �V�����v�f�̂��l���i�[���ꂽ�ϐ�

%inst
�L���[�ɐV�����v�f�� push ���܂� ( �܂�A�����ɗv�f��ǉ����܂� )�B

%href
queue_push
queue_pushv

%group
�����o�֐�::����n

;--------------------
%index
queue_peekv
Queue �l�̎擾 ( �ϐ� )

%prm
self, result, offset = 0
inst self   : �L���[
var  result : �Ԓl���i�[����ϐ�
int  offset : �I�t�Z�b�g�l

%inst
�L���[�̗v�f�̒l�� result �Ɋi�[���܂��Bqueue_popv �Ƃ͈Ⴂ�A���o�����v�f�̓L���[�����菜����܂���B

%href
queue_pop
queue_popv
queue_peek
queue_peekv
queue_clone
queue_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
queue_peek
Queue �l�̎擾

%prm
(self, offset = 0)
inst self   : �L���[
int  offset : �I�t�Z�b�g�l

%inst
�L���[�̗v�f�̒l���擾���ĕԂ��܂��Bqueue_pop �Ƃ͈Ⴂ�A���o�����v�f���L���[�����菜�����Ƃ������Ƃ͂���܂���B

%href
queue_pop
queue_popv
queue_peek
queue_peekv
queue_clone
queue_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
queue_popv
Queue �l�̎擾 ( �ϐ� )

%prm
self, result
inst self   : �L���[
var  result : �Ԓl���i�[����ϐ�

%inst
�L���[�̐擪�̗v�f�̒l�����o���āAresult �Ɋi�[���܂��B���o�����v�f�́A�L���[�����菜����܂��B

%href
queue_pop
queue_popv
queue_peek
queue_peekv
queue_clone
queue_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
queue_pop
Queue �l�̎擾

%prm
(self)
inst self : �L���[

%inst
�L���[�̐擪�̗v�f�̒l�����o���ĕԂ��܂��B���o���ꂽ�v�f�̓L���[�����菜����܂��B

%href
queue_pop
queue_popv
queue_peek
queue_peekv
queue_clone
queue_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
queue_clone
Queue �N���[���̍쐬 (����)

%prm
self, result, offset
inst self   : �L���[
var  result : �N���[���ɂ���ϐ�
int  offset : �I�t�Z�b�g��

%inst
�L���[���̒l�̃N���[�������܂��B

offset �ŁA�g�b�v�ȊO�̗v�f�̒l�𓾂邱�Ƃ��\�ł��Boffset = 0 �̂Ƃ��A�擪�̗v�f�ł��B

%href
queue_pop
queue_popv
queue_peek
queue_peekv
queue_clone
queue_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
stack_ref
Stack �N���[���̍쐬 (�֐�)

%prm
(self, offset)
inst self   : �X�^�b�N
int  offset : �I�t�Z�b�g��

%inst
�L���[���̒l�̃N���[�������A�Ԃ��܂��B����͒l�Ƃ��Đ���łȂ��ꍇ�����邽�߁A������̉E�ӈȊO�ł͎g�p���Ȃ��ł��������B

offset �ŁA�g�b�v�ȊO�̗v�f�̒l�𓾂邱�Ƃ��\�ł��Boffset = 0 �̂Ƃ��A��ԏ�̗v�f�ł��B

%href
queue_pop
queue_popv
queue_peek
queue_peekv
queue_clone
queue_ref

%group
�����o�֐�::�擾�n

;--------------------
%index
queue_vartype
Queue �^�̎擾

%prm
(self, offset = 0)
inst self   : �L���[
int  offset : �I�t�Z�b�g( �ȗ���: �擪�ւ� offset )

%inst
�L���[�̗v�f�̒l�̌^��Ԃ��܂��B

%href
queue_vartype

%group
�����o�֐�::�擾�n

;--------------------
%index
queue_erase
Queue �v�f�̏���

%prm
self
inst self  : �L���[

%inst
�L���[�̐擪�̗v�f����菜���܂��B

%href
;queue_erase

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
queue_clear
Queue ���� [i]

%prm
self
inst self : �L���[

%inst
�L���[���炷�ׂĂ̗v�f����菜���ċ�ɂ��铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
queue_chain
Queue �A�� [i]

%prm
self, src
inst self : �L���[
inst src  : �V

%inst
�L���[�� src �̗v�f�����ׂ� push ���铝��֐��ł��B�v�f�̏����͕ۂ���܂��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
queue_copy
Queue ���� [i]

%prm
self, src
inst self : �L���[
inst src  : �V

%inst
�L���[�̗v�f�����ׂ� src �Ɠ��l�ɂ��铝��֐��ł��B���Ƃ��Ƃ������v�f�́A�L���[�����菜����܂��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
queue_swap
Queue �R���e�i���� [i]

%prm
self, obj
inst self : �L���[
inst obj  : �V

%inst
self �� obj �̂��ׂĂ̗v�f���������铝��֐��ł��B���ꂼ��̗v�f�̏����͕ۂ���܂��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
queue_dbglog
Queue �f�o�b�O�o��

%prm
self
inst self : �L���[

%inst
�L���[�̂��ׂĂ̗v�f�� logmes �ŏo�͂��܂��B
������^�ɕϊ��ł��Ȃ��l���L���[�̗v�f�Ɋ܂܂��ꍇ�A���̖��߂͓r���Ŏ��s(�G���[�I��)���܂��B

���̖��߂́A�����[�X���ɂ͖����ɂȂ�܂��B

%href

%group
�����o�֐�::�f�o�b�O
