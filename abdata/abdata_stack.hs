;#############################
%dll
abdata_stack

%author
uedai

%date
2009 09/02 (Wed)	// �ŏI�X�V
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
Stack_new
Stack �\�z

%prm
self
modvar self : ���W���[���ϐ�

%inst
�X�^�b�N (stack) ���\�z���܂��B
self �����łɃ��W���[���^�̏ꍇ�A�V�����v�f�ɒǉ�����܂��B

%href
Stack_new
Stack_delete

%group
�\�z����

;--------------------
%index
Stack_delete
Stack �j��

%prm
self
modvar self : ���W���[���ϐ�

%inst
�X�^�b�N (Stack) ��j�����܂��B

%href
Stack_new
Stack_delete

%group
��̊֐�

;--------------------
%index
Stack_push
Stack �ɒl��ς�

%prm
self, value
modvar self  : �X�^�b�N
any    value : �l

%inst
�X�^�b�N�ɒl��ς݂܂��B

��Stack_push_back �Ɠ����B

%href
Stack_push
Stack_pushv
Stack_pop
Stack_popv
Stack_peek
Stack_peekv

%group
�����o�֐�::����n

;--------------------
%index
Stack_pushv
Stack �l��ς� ( �ϐ� )

%prm
self, value
modvar self  : �X�^�b�N
var    value : �ϐ�

%inst
�X�^�b�N�ɒl��ς݂܂��BStack_push �Ƃ͈Ⴂ�Avalue �ɂ͕ϐ��̂ݎw��ł��܂��B
�ϐ��̒l��ςޏꍇ�́A���ʂȃR�s�[���s���܂���B

%href
Stack_push
Stack_pushv
Stack_pop
Stack_popv
Stack_peek
Stack_peekv

%group
�����o�֐�::����n

;--------------------
%index
Stack_popv
Stack �l���~�낷 ( �ϐ� )

%prm
self, vResult
modvar self : �X�^�b�N
var vResult : �ϐ�

%inst
�X�^�b�N����l�����낵�A�ϐ��Ɋi�[���܂��B

%href
Stack_push
Stack_pushv
Stack_pop
Stack_popv
Stack_peek
Stack_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
Stack_pop
Stack �l���~�낷

%prm
(self)
modvar self : �X�^�b�N

%inst
�X�^�b�N����l���~�낵�ĕԂ��܂��B

%href
Stack_push
Stack_pushv
Stack_pop
Stack_popv
Stack_peek
Stack_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
Stack_peekv
Stack �l�̎擾 ( �ϐ� )

%prm
self, vResult, offset
modvar self : �X�^�b�N
var vResult : �i�[��̕ϐ�
int offset  : �I�t�Z�b�g��

%inst
�X�^�b�N����l���擾���AvResult �Ɋi�[���܂��Bpop �Ƃ͈Ⴂ�A�l�̓X�^�b�N�����菜����܂���B

offset �ŁA�g�b�v�ȊO�̗v�f�̒l�𓾂邱�Ƃ��\�ł��Boffset = 0 �̂Ƃ��A��ԏ�̗v�f�ł��B

�� Stack_getv �Ɠ����B

%href
Stack_push
Stack_pushv
Stack_pop
Stack_popv
Stack_peek
Stack_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
Stack_peek
Stack �l�̎擾

%prm
(self, offset)
modvar self : �X�^�b�N
int offset  : �I�t�Z�b�g��

%inst
�X�^�b�N����l���擾���A�Ԃ��܂��Bpop �Ƃ͈Ⴂ�A���o�����l�̓X�^�b�N�����菜����܂���B

offset �ŁA�g�b�v�ȊO�̗v�f�̒l�𓾂邱�Ƃ��\�ł��Boffset = 0 �̂Ƃ��A��ԏ�̗v�f�ł��B

�� Stack_get() �Ɠ����B

%href
Stack_push
Stack_pushv
Stack_pop
Stack_popv
Stack_peek
Stack_peekv

%group
�����o�֐�::�擾�n

;--------------------
%index
Stack_size
Stack �v�f�� [i]

%prm
(self)
modvar self : �X�^�b�N

%inst
�X�^�b�N�ɐς܂�Ă���v�f�̐���Ԃ��܂��B����֐��ł��B

%href

%group
�����o�֐�

;--------------------
%index
Stack_clear
Stack ���� [i]

%prm
self
modvar self : �X�^�b�N

%inst
�X�^�b�N�ɐς܂�Ă��邷�ׂĂ̗v�f���������A�X�^�b�N������ۂɂ��铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
Stack_chain
Stack �A�� [i]

%prm
self, mv_from
modvar self   : �X�^�b�N
modvar mvFrom : �V

%inst
�X�^�b�N�ɁAmvFrom �ɐς܂�Ă���v�f�����ׂĐςޓ���֐��ł��BStack_pop �� Stack_push ��p���邽�߁A�ς܂�Ă��鏇�Ԃ͋t�ɂȂ�܂��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
Stack_copy
Stack ���� [i]

%prm
self, mv_from
modvar self   : �X�^�b�N
modvar mvFrom : �V

%inst
�X�^�b�N�� mvFrom �̂��ׂĂ̗v�f�𕡎ʂ��铝��֐��ł��B����܂Őς܂�Ă����v�f�͍폜����܂��B�܂��A�v�f�̏��Ԃ� mvFrom �̂���Ɠ����ł��邱�Ƃ��ۏ؂���܂��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
Stack_exchange
Stack �R���e�i���� [i]

%prm
self, mv2
modvar self : �X�^�b�N
modvar mv2  : �V

%inst
self �� mv2 �̃X�^�b�N�̓��e���A�������肻�̂܂ܓ���ւ��铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����

;--------------------
%index
Stack_dbglog
Stack �f�o�b�O�o��

%prm
self
modvar self : �X�^�b�N

%inst
�X�^�b�N�ɐς܂�Ă���v�f�����ׂ� logmes ��p���ďo�͂��܂��B������^�ɂł��Ȃ��v�f������ꍇ�́A���̓r���Ŏ��s���܂��B

���̖��߂́A�����[�X���͖����ɂȂ�܂��B

%href

%group
�����o�֐�::�f�o�b�O
