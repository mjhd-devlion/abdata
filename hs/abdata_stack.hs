;#############################
%dll
abdata_stack

%author
uedai

%date
2010 07/18 (Sun)	// �ŏI�X�V �\�L�̏C��, _clone �Ȃǂ̕s�����Ă����֐��̐�����ǉ�
2009 10/04 (Sun)	// 
2009 08/30 (Sun)	// Deque �̃��b�p�ɕύX
2009 08/29 (Sat)	// ���t�@�����X�쐬
2008 09/0X (___)	// �쐬

%ver
1.0

%type
���ۃf�[�^�\�� �X�^�b�N

;%group
;$(default_group)

;--------------------
%index
stack_make
Stack �\�z (�ꎞ)

%prm
()

%inst
�V���ȃX�^�b�N (stack) ���\�z���A�Ԃ��܂��B

%href
stack_make
stack_new
stack_delete

%group
�\�z����

;--------------------
%index
stack_new
Stack �\�z

%prm
self
var self : �\�z��̕ϐ�

%inst
�X�^�b�N (stack) ���\�z���܂��B

%href
stack_make
stack_new
stack_delete

%group
�\�z����

;--------------------
%index
stack_delete
Stack �j��

%prm
self
inst self : �X�^�b�N

%inst
�X�^�b�N (Stack) ��j�����܂��B

%href
stack_new
stack_delete

%group
��̊֐�

;--------------------
%index
stack_push
Stack �ɒl��ς�

%prm
self, value
inst self  : �X�^�b�N
any  value : �ςޒl

%inst
�X�^�b�N�ɒl��ς݂܂��B

��stack_push_back �Ɠ����B

%href
stack_push
stack_pushv
stack_pop
stack_popv
stack_peek
stack_peekv

%group
�����o�֐�::����n

;--------------------
%index
stack_pushv
Stack �l��ς� ( �ϐ� )

%prm
self, value
inst self  : �X�^�b�N
var  value : �ςޒl�����ϐ�

%inst
�X�^�b�N�ɒl��ς݂܂��Bstack_push �Ƃ͈Ⴂ�Avalue �ɂ͕ϐ��̂ݎw��ł��܂��B
�ϐ��̒l��ςޏꍇ�́A���ʂȃR�s�[���s���܂���B

%href
stack_push
stack_pushv
stack_pop
stack_popv
stack_peek
stack_peekv

%group
�����o�֐�::����n

;--------------------
%index
stack_popv
Stack �l���~�낷 ( �ϐ� )

%prm
self, vResult
inst self    : �X�^�b�N
var  vResult : �i�[��̕ϐ�

%inst
�X�^�b�N����l�����낵�A�ϐ��Ɋi�[���܂��B

%href
stack_push
stack_pushv
stack_pop
stack_popv
stack_peek
stack_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
stack_pop
Stack �l���~�낷

%prm
(self)
inst self : �X�^�b�N

%inst
�X�^�b�N����l���~�낵�ĕԂ��܂��B

%href
stack_push
stack_pushv
stack_pop
stack_popv
stack_peek
stack_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
stack_peekv
Stack �l�̎擾 ( �ϐ� )

%prm
self, vResult, offset
inst self   : �X�^�b�N
var vResult : �i�[��̕ϐ�
int offset  : �I�t�Z�b�g��

%inst
�X�^�b�N����l���擾���AvResult �Ɋi�[���܂��Bpop �Ƃ͈Ⴂ�A�l�̓X�^�b�N�����菜����܂���B

offset �ŁA�g�b�v�ȊO�̗v�f�̒l�𓾂邱�Ƃ��\�ł��Boffset = 0 �̂Ƃ��A��ԏ�̗v�f�ł��B

�� stack_getv �Ɠ����B

%href
stack_push
stack_pushv
stack_pop
stack_popv
stack_peek
stack_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
stack_peek
Stack �l�̎擾

%prm
(self, offset)
inst self  : �X�^�b�N
int offset : �I�t�Z�b�g��

%inst
�X�^�b�N����l���擾���A�Ԃ��܂��Bpop �Ƃ͈Ⴂ�A���o�����l�̓X�^�b�N�����菜����܂���B

offset �ŁA�g�b�v�ȊO�̗v�f�̒l�𓾂邱�Ƃ��\�ł��Boffset = 0 �̂Ƃ��A��ԏ�̗v�f�ł��B

�� stack_get() �Ɠ����B

%href
stack_push
stack_pushv
stack_pop
stack_popv
stack_peek
stack_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
stack_clone
Stack �N���[���̍쐬 (����)

%prm
self, result, offset
inst self   : �X�^�b�N
var  result : �N���[���ɂ���ϐ�
int  offset : �I�t�Z�b�g��

%inst
�X�^�b�N��̒l�̃N���[�������܂��B

offset �ŁA�g�b�v�ȊO�̗v�f�̒l�𓾂邱�Ƃ��\�ł��Boffset = 0 �̂Ƃ��A��ԏ�̗v�f�ł��B

%href
stack_push
stack_pushv
stack_pop
stack_popv
stack_peek
stack_peekv

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
�X�^�b�N��̒l�̃N���[�������A�Ԃ��܂��B����͒l�Ƃ��Đ���łȂ��ꍇ�����邽�߁A������̉E�ӈȊO�ł͎g�p���Ȃ��ł��������B

offset �ŁA�g�b�v�ȊO�̗v�f�̒l�𓾂邱�Ƃ��\�ł��Boffset = 0 �̂Ƃ��A��ԏ�̗v�f�ł��B

%href
stack_push
stack_pushv
stack_pop
stack_popv
stack_peek
stack_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
stack_vartype
Stack �^�̎擾

%prm
(self)
inst self : �X�^�b�N

%inst
�X�^�b�N�̈�ԏ�ɐς܂�Ă���v�f�̒l�̌^��Ԃ��܂��B

%href
;stack_vartype

%group
�����o�֐�::�擾�n

;--------------------
%index
stack_size
Stack �v�f�� [i]

%prm
(self)
inst self : �X�^�b�N

%inst
�X�^�b�N�ɐς܂�Ă���v�f�̐���Ԃ�����֐��ł��B

%href

%group
�����o�֐�

;--------------------
%index
stack_clear
Stack ���� [i]

%prm
self
inst self : �X�^�b�N

%inst
�X�^�b�N�ɐς܂�Ă��邷�ׂĂ̗v�f���������A�X�^�b�N������ۂɂ��铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
stack_chain
Stack �A�� [i]

%prm
self, src
inst self : �X�^�b�N
inst src  : �V

%inst
�X�^�b�N�ɁAsrc �ɐς܂�Ă���v�f�����ׂĐςޓ���֐��ł��Bstack_pop �� stack_push ��p���邽�߁A�ς܂�Ă��鏇�Ԃ͋t�ɂȂ�܂��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
stack_copy
Stack ���� [i]

%prm
self, src
inst self : �X�^�b�N
inst src  : �V

%inst
�X�^�b�N�� src �̂��ׂĂ̗v�f�𕡎ʂ��铝��֐��ł��B����܂Őς܂�Ă����v�f�͍폜����܂��B�܂��A�v�f�̏��Ԃ� src �̂���Ɠ����ł��邱�Ƃ��ۏ؂���܂��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
stack_swap
Stack �R���e�i���� [i]

%prm
self, obj
inst self : �X�^�b�N
inst obj  : �V

%inst
self �� obj �̃X�^�b�N�̓��e���A�������肻�̂܂ܓ���ւ��铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
stack_dbglog
Stack �f�o�b�O�o��

%prm
self
inst self : �X�^�b�N

%inst
�X�^�b�N�ɐς܂�Ă���v�f�����ׂ� logmes ��p���ďo�͂��܂��B������^�ɂł��Ȃ��v�f������ꍇ�́A���̓r���Ŏ��s���܂��B

���̖��߂́A�����[�X���͖����ɂȂ�܂��B

%href

%group
�����o�֐�::�f�o�b�O
