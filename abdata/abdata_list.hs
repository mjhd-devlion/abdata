;#############################
%dll
abdata_list

%author
uedai

%date
2009 09/02 (Wed)	// �ŏI�X�V
2009 08/31 (Mon)	// Container �̃��b�p�ɕύX
2009 05/xx (___)	// �쐬

%ver
1.0

%type
���ۃf�[�^�\�� ���X�g

;%group
;$(default_group)

;--------------------
%index
List_new
List �\�z

%prm
self
modvar self : ���W���[���ϐ�

%inst
���X�g (List) ���\�z���܂��B

%href
List_new
List_delete

%group
�\�z�֐�

;--------------------
%index
List_delete
List ���

%prm
self
modvar self : ���W���[���ϐ�

%inst
���X�g����̂��܂��B

�����ŌĂяo����邽�߁A�ʏ�A�Ăяo���K�v�͂���܂���B

%href
List_new
List_delete

%group
��̊֐�

;--------------------
%index
List_dup
List �Q�Ɖ�

%prm
self, vRef, i
modvar self : List �C���X�^���X
var    vRef : �Q�Ɖ�����ϐ�
int    i    : �v�f�ԍ�

%inst
vRef ���A���X�g�̗v�f [i] �̎Q�� ( �N���[�� ) �ɂ��܂��B�܂�Adup ���߂̂悤�ȏ����ł��B

%href
List_dup
List_ref

List_get
List_getv

List_pop
List_popv

%group
�����o�֐�::�擾�n

;--------------------
%index
List_ref
List �Q��

%prm
(self, i)
modvar self : List �C���X�^���X
int    i    : �v�f�ԍ�

%inst
���X�g�̗v�f [i] �̎Q�Ƃ�Ԃ��܂� (�[���I��)�B���̊֐��́A������̍��ӂƂ��Ă̂ݎg�p�ł��܂��B

%sample
	List_ref(i) = 10
	List_ref(i) = "string"	// �^�̕ϊ��͂ł��܂���

%href
List_dup
List_ref

List_get
List_getv

List_pop
List_popv

%group
�����o�֐�::�擾�n

;--------------------
%index
List_get
List �l�̎擾

%prm
(self, i)
modvar self : List �C���X�^���X
int    i    : �v�f�ԍ�

%inst
���X�g�̗v�f [i] �̒l��Ԃ��܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f�����X�g�����菜�����Ƃ������Ƃ͂���܂���B

%href
List_dup
List_ref

List_get
List_getv

List_pop
List_popv

%group
�����o�֐�::�擾�n

;--------------------
%index
List_getv
List �l�̎擾 ( �ϐ� )

%prm
self, result, i
modvar self : List �C���X�^���X
var result  : �߂�l���i�[����ϐ�
int i       : �v�f�ԍ�

%inst
���X�g�̗v�f [i] �̒l���A�ϐ� result �Ɋi�[���܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f�����X�g�����菜�����Ƃ������Ƃ͂���܂���B

%href
List_dup
List_ref

List_get
List_getv

List_pop
List_popv

%group
�����o�֐�::�擾�n

;--------------------
%index
List_pop
List �l�̎擾

%prm
self, i
modvar self : List �C���X�^���X
int    i    : �v�f�ԍ�

%inst
���X�g�̗v�f [i] �̒l���擾���A�Ԃ��܂��B���o�����l�̓��X�g�����菜����܂��B

%href
List_dup
List_ref

List_get
List_getv

List_pop
List_popv

List_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
List_popv
List �l�̎擾 ( �ϐ� )

%prm
self, vResult, int i
modvar self    : List �C���X�^���X
var    vResult : �߂�l���i�[����ϐ�
int    i       : �v�f�ԍ�

%inst
���X�g�̗v�f [i] �̒l���擾���AvResult �Ɋi�[���܂��B���o�����l�̓��X�g�����菜����܂��B

%href
List_dup
List_ref

List_get
List_getv

List_pop
List_popv

List_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
List_set
List �l�̕ύX

%prm
self, value, i = 0
modvar self  : List �C���X�^���X
any    value : �ݒ肷��l
int    i     : �v�f�ԍ�

%inst
���X�g�̗v�f [i] �̒l�� value �ɕύX���܂��B

%href
List_set
List_setv

List_insert
List_insertv

List_double
List_add

%group
�����o�֐�::����n

;--------------------
%index
List_setv
List �l�̕ύX ( �ϐ� )

%prm
self, vValue, i
modvar self   : List �C���X�^���X
var    vValue : �ݒ肷��l���i�[���ꂽ�ϐ�
int    i      : �v�f�ԍ�

%inst
���X�g�̗v�f [i] �ɁAvValue �̒l��ݒ肵�܂��B

%href
List_set
List_setv

List_insert
List_insertv

List_double
List_add

%group
�����o�֐�::����n

;--------------------
%index
List_insert
List �v�f�̑}��

%prm
self, value, p3 = 0
modvar self  : List �C���X�^���X
any    value : �}������v�f�̒l
int    i     : �V���ȗv�f�̔ԍ�

%inst
���X�g�� [i] �ɁA�V�����v�f��}�����܂��Bi ���ȗ����� ( i == 0 �ɂ��� ) �ƁA���X�g�̐擪�ɒǉ�����܂��B

i �͑��̃����o�̂���ƈႢ�A�ui >= List_size(...)�v�������܂��B���̏ꍇ�́A�v�f�𖖔��ɒǉ�����Ƃ����AList_push_back �Ɠ��������ɂȂ�܂��B

%href
List_set
List_setv

List_insert
List_insertv

List_double
List_add

%group
�����o�֐�::����n

;--------------------
%index
List_insertv
List �v�f�̑}�� ( �ϐ� )

%prm
self, vValue, i
modvar self   : List �C���X�^���X
var    vValue : �}������v�f�̒l���i�[���ꂽ�ϐ�
int    i      : �V�����v�f�̔ԍ�

%inst
���X�g�� [i] �ɐV�����v�f��}�����܂��B

%href
List_set
List_setv

List_insert
List_insertv

List_double
List_add

%group
�����o�֐�::����n

;--------------------
%index
List_double
List �v�f�̔{��

%prm
self, i
modvar self : ���X�g
int    i    : �v�f�ԍ�

%inst
���X�g�� [i] �̗v�f�̒���ɁA�����l�̗v�f��}�����܂��B

%href
List_set
List_setv

List_insert
List_insertv

List_double
List_add

%group
�����o�֐�::����n

;--------------------
%index
List_add
List �v�f�̒ǉ� ( ���� )

%prm
self, value
modvar self  : List �C���X�^���X
any    value : �ǉ�����v�f�̒l

%inst
���X�g�̖����ɗv�f��ǉ����܂��B

%href
List_set
List_setv

List_insert
List_insertv

List_double
List_add

%group
�����o�֐�::����n

;--------------------
%index
List_remove
List �v�f�̏���

%prm
self, i
modvar self : List �C���X�^���X
int    i    : �v�f�ԍ�

%inst
���X�g�̗v�f [i] �����X�g�����菜���܂��B

%href
List_remove

%group
�����o�֐�::����n

;--------------------
%index
List_move
List �v�f�̈ړ�

%prm
self, from, to
modvar self : List �C���X�^���X
int    from : �ړ��O�̗v�f�ԍ�
int    to   : �ړ���̗v�f�ԍ�

%inst
���X�g�̗v�f [from] ���A[to] �̈ʒu�Ɉړ������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href

%group
�����o�֐�::��������n

;--------------------
%index
List_swap
List �v�f�̌���

%prm
self, pos1, pos2
modvar self : List �C���X�^���X
int    pos1 : ��������v�f�ԍ�
int    pos2 : �V

%inst
���X�g�̗v�f [pos1] �� [pos2] ���������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href

%group
�����o�֐�::��������n

;--------------------
%index
List_rotate
List �v�f�̏���

%prm
self
modvar self : List �C���X�^���X

%inst
���X�g�̗v�f�����ׂāA��O�ɂ��炵�܂��B�܂�A�擪�̗v�f�𖖔��Ɉړ������鏈���ł��B

%href
List_rotate
List_rotate_back

%group
�����o�֐�::��������n

;--------------------
%index
List_rotate_back
List �v�f�̏��� ( �t��] )

%prm
self
modvar self : List �C���X�^���X

%inst
���X�g�̗v�f�����ׂāA����ɂ��炵�܂��B�܂�A�����̗v�f��擪�Ɉړ������鏈���ŁAList_rotate �̒��x�t�ł��B

%href
List_rotate
List_rotate_back

%group
�����o�֐�::��������n

;--------------------
%index
List_reverse
List �v�f���̔��]

%prm
self
modvar self : List �C���X�^���X

%inst
���X�g�̗v�f�̏��Ԃ��t�ɂ��܂��B

(ex) [1, 2, 3, 4] �𔽓]����� [4, 3, 2, 1] �ɂȂ�B

%href

%group
�����o�֐�::��������n

;--------------------
%index
List_clear
List ���� [i]

%prm
self
modvar self : List �C���X�^���X

%inst
���ׂĂ̗v�f�����X�g�����菜������֐��ł��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
List_chain
List �A�� [i]

%prm
self, mvFrom
modvar self   : List �C���X�^���X
modvar mvFrom : �V

%inst
���X�g mvFrom �Ɋ܂܂�邷�ׂĂ̗v�f���Aself �̖����ɒǉ����铝��֐��ł��BmvFrom �̗v�f�̏��Ԃ͈ێ�����܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
List_copy
List ���� [i]

%prm
self, mvFrom
modvar self   : List �C���X�^���X
modvar mvFrom : �V

%inst
���X�g mvFrom �𕡎ʂ��铝��֐��ł��B���X���������X�g�� List_clear �ɂ���ď�������܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
List_exchange
List �R���e�i���� [i]

%prm
self, mv2
modvar self : List �C���X�^���X
modvar mv2  : �V

%inst
self �� mv2 �Ɋ܂܂�邷�ׂĂ̗v�f���������܂��B���ꂼ��̗v�f�̏��Ԃ͈ێ�����܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
List_iterInit
List �����q::������ [i]

%prm
self, iterData
modvar self  : List �C���X�^���X
var iterData : �������

%inst
���X�g�̔����q�����������铝��֐��ł��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
List_iterInit
List_iterNext

%group
�����o�֐�::�����q����n

;--------------------
%index
List_iterNext
List �����q::�X�V [i]

%prm
(self, vIt, iterData)
modvar self  : List �C���X�^���X
var vIt      : �����q
var iterData : �������

%inst
���X�g�̔����q���X�V���铝��֐��ł��B�߂�l���U�Ȃ�A�J��Ԃ������s�����ɏI�����܂��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
List_iterInit
List_iterNext

%group
�����o�֐�::�����q����n

;--------------------
%index
List_size
List �v�f�� [i]

%prm
(self)
modvar self : List �C���X�^���X

%inst
���X�g�Ɋ܂܂��v�f�̐���Ԃ�����֐��ł��B

%note
List_count, List_length �Ɠ���B

%href

%group
�����o�֐�

;--------------------
%index
List_isValid
List �v�f�ԍ����L�����ǂ���

%prm
(self, i)
modvar self : List �C���X�^���X
int    i    : �v�f�ԍ�

%inst
���X�g�̗v�f�ԍ��Ƃ��� i ���K�؂��ǂ�����Ԃ��܂��B
�K�؂Ȕԍ��Ȃ� true ( 0 �ȊO ) ���A�s�K�؂Ȃ� false ( = 0 ) ��Ԃ��܂��B

%href

%group
�����o�֐�

;--------------------
%index
List_dbglog
List �f�o�b�O�o��

%prm
self
modvar self : List �C���X�^���X

%inst
���X�g�̂��ׂĂ̗v�f�� logmes �ŏo�͂��܂��B

%href

%group
�����o�֐�::�f�o�b�O
