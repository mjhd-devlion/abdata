;#############################
%dll
abdata_list

%author
uedai

%date
2011 01/09 (Sun)	// Insert �� idx ���v�f���𒴂��Ă���ꍇ�̎d�l�̕ύX
2010 07/18 (Sun)	// �ŏI�X�V �\�L�ȂǁA���낢�����
2009 10/04 (Sun)	// 
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
new_list
List �\�z (�ꎞ)

%prm
()

%inst
�V�������X�g (List) ���\�z���A�Ԃ��܂��B

%href
new_list
list_new
list_delete

%group
�\�z�֐�

;--------------------
%index
list_new
List �\�z

%prm
self
var self : �C���X�^���X���i�[����ϐ�

%inst
���X�g (List) ���\�z���܂��B

%href
new_list
list_new
list_delete

%group
�\�z�֐�

;--------------------
%index
list_delete
List ���

%prm
self
inst self : List �C���X�^���X

%inst
���X�g (List) ����̂��܂��B

���̊֐��̓v���O�����I�����Ɏ����ŌĂяo����邽�߁A�ʏ�A�Ăяo���K�v�͂���܂���B

%href
new_list
list_new
list_delete

%group
��̊֐�

;--------------------
%index
list_clone
List �N���[����

%prm
self, vRef, idx
inst self : List �C���X�^���X
var  vRef : �N���[��������ϐ�
int  idx  : �v�f�ԍ�

%inst
vRef ���A���X�g�̗v�f [idx] �̃N���[���ɂ��܂��B

dup ���߂̂悤�ȏ����ł��B

%href
list_clone
list_ref

list_get
list_getv

list_pop
list_popv

%group
�����o�֐�::�擾�n

;--------------------
%index
list_ref
List �Q��

%prm
(self, i)
inst self : List �C���X�^���X
int  idx  : �v�f�ԍ�

%inst
���X�g�̗v�f [idx] �̎Q�Ƃ�Ԃ��܂� (�[���I��)�B���̊֐��́A������̍��ӂƂ��Ă̂ݎg�p�ł��܂��B

%sample
	list_ref(idx) = 10
//	list_ref(idx) = "string"	// �^�̕ϊ��͂ł��܂���

%href
list_clone
list_ref

list_get
list_getv

list_pop
list_popv

%group
�����o�֐�::�擾�n

;--------------------
%index
list_get
List �l�̎擾

%prm
(self, idx)
inst self : List �C���X�^���X
int  idx  : �v�f�ԍ�

%inst
���X�g�̗v�f [idx] �̒l��Ԃ��܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f�����X�g�����菜�����Ƃ������Ƃ͂���܂���B

%href
list_clone
list_ref

list_get
list_getv

list_pop
list_popv

%group
�����o�֐�::�擾�n

;--------------------
%index
list_getv
List �l�̎擾 ( �ϐ� )

%prm
self, result, idx
inst self : List �C���X�^���X
var result  : �Ԓl���i�[����ϐ�
int idx     : �v�f�ԍ�

%inst
���X�g�̗v�f [idx] �̒l���A�ϐ� result �Ɋi�[���܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f�����X�g�����菜�����Ƃ������Ƃ͂���܂���B

%href
list_clone
list_ref

list_get
list_getv

list_pop
list_popv

%group
�����o�֐�::�擾�n

;--------------------
%index
list_pop
List �l�̎擾

%prm
self, idx
inst self : List �C���X�^���X
int  idx  : �v�f�ԍ�

%inst
���X�g�̗v�f [idx] �̒l���擾���A�Ԃ��܂��B���o�����l�̓��X�g�����菜����܂��B

%href
list_clone
list_ref

list_get
list_getv

list_pop
list_popv

list_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
list_popv
List �l�̎擾 ( �ϐ� )

%prm
self, vResult, int idx
inst self    : List �C���X�^���X
var  vResult : �Ԓl���i�[����ϐ�
int  idx     : �v�f�ԍ�

%inst
���X�g�̗v�f [idx] �̒l���擾���AvResult �Ɋi�[���܂��B���o�����l�̓��X�g�����菜����܂��B

%href
list_clone
list_ref

list_get
list_getv

list_pop
list_popv

list_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
list_vartype
List �^�̎擾

%prm
(self, idx)
inst self : ���X�g
int  idx  : �v�f�ԍ�

%inst
���X�g�̗v�f [idx] �̒l�̌^��Ԃ��܂��B

%href
;list_vartype

%group
�����o�֐�::�擾�n

;--------------------
%index
list_set
List �l�̕ύX

%prm
self, value, idx = 0
inst self  : List �C���X�^���X
any  value : �ݒ肷��l
int  idx   : �v�f�ԍ�

%inst
���X�g�̗v�f [idx] �̒l�� value �ɕύX���܂��B

%href
list_set
list_setv

list_insert
list_insertv

list_double
list_add

%group
�����o�֐�::����n

;--------------------
%index
list_setv
List �l�̕ύX ( �ϐ� )

%prm
self, vValue, idx
inst self   : List �C���X�^���X
var  vValue : �ݒ肷��l���i�[���ꂽ�ϐ�
int  idx    : �v�f�ԍ�

%inst
���X�g�̗v�f [idx] �ɁAvValue �̒l��ݒ肵�܂��B

%href
list_set
list_setv

list_insert
list_insertv

list_double
list_add

%group
�����o�֐�::����n

;--------------------
%index
list_insert
List �v�f�̑}��

%prm
self, value, idx = 0
inst self  : List �C���X�^���X
any  value : �}������v�f�̒l
int  idx   : �V���ȗv�f�̔ԍ�

%inst
���X�g�� [idx] �ɁA�V�����v�f��}�����܂��Bidx ���ȗ����� ( idx == 0 �ɂ��� ) �ƁA���X�g�̐擪�ɒǉ�����܂��B

idx �͑��̃����o�̂���ƈႢ�A�uidx >= list_size(...)�v�������܂��B���̏ꍇ�́A�v�f [idx] �ɒl��ݒ肷�邽�߂ɁA�v�f�������Ő������܂��B

%href
list_set
list_setv

list_insert
list_insertv

list_double
list_add

%group
�����o�֐�::����n

;--------------------
%index
list_insertv
List �v�f�̑}�� ( �ϐ� )

%prm
self, vValue, idx
inst self   : List �C���X�^���X
var  vValue : �}������v�f�̒l���i�[���ꂽ�ϐ�
int  idx    : �V�����v�f�̔ԍ�

%inst
���X�g�� [idx] �ɐV�����v�f��}�����܂��B

%href
list_set
list_setv

list_insert
list_insertv

list_double
list_add

%group
�����o�֐�::����n

;--------------------
%index
list_double
List �v�f�̔{��

%prm
self, idx
inst self : ���X�g
int  idx  : �v�f�ԍ�

%inst
���X�g�� [idx] �̗v�f�̒���ɁA�����l�̗v�f��}�����܂��B

%href
list_set
list_setv

list_insert
list_insertv

list_double
list_add

%group
�����o�֐�::����n

;--------------------
%index
list_add
List �v�f�̒ǉ� ( ���� )

%prm
self, value
inst self  : List �C���X�^���X
any  value : �ǉ�����v�f�̒l

%inst
���X�g�̖����ɗv�f��ǉ����܂��B

%href
list_set
list_setv

list_insert
list_insertv

list_double
list_add

%group
�����o�֐�::����n

;--------------------
%index
list_remove
List �v�f�̏���

%prm
self, idx
inst self : List �C���X�^���X
int  idx  : �v�f�ԍ�

%inst
���X�g�̗v�f [i] �����X�g�����菜���܂��B

%href
list_remove

%group
�����o�֐�::����n

;--------------------
%index
list_loc_move
List �v�f�̈ړ�

%prm
self, from, to
inst self : List �C���X�^���X
int  from : �ړ��O�̗v�f�ԍ�
int  to   : �ړ���̗v�f�ԍ�

%inst
���X�g�̗v�f [from] ���A[to] �̈ʒu�Ɉړ������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href

%group
�����o�֐�::��������n

;--------------------
%index
list_loc_swap
List �v�f�̌���

%prm
self, pos1, pos2
inst self : List �C���X�^���X
int  pos1 : ��������v�f�ԍ�
int  pos2 : �V

%inst
���X�g�̗v�f [pos1] �� [pos2] ���������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href

%group
�����o�֐�::��������n

;--------------------
%index
list_rotate
List �v�f�̏���

%prm
self
inst self : List �C���X�^���X

%inst
���X�g�̗v�f�����ׂāA��O�ɂ��炵�܂��B�܂�A�擪�̗v�f�𖖔��Ɉړ������鏈���ł��B

%href
list_rotate
list_rotate_back

%group
�����o�֐�::��������n

;--------------------
%index
list_rotate_back
List �v�f�̏��� ( �t��] )

%prm
self
inst self : List �C���X�^���X

%inst
���X�g�̗v�f�����ׂāA����ɂ��炵�܂��B�܂�A�����̗v�f��擪�Ɉړ������鏈���ŁAlist_rotate �̒��x�t�ł��B

%href
list_rotate
list_rotate_back

%group
�����o�֐�::��������n

;--------------------
%index
list_reverse
List �v�f���̔��]

%prm
self
inst self : List �C���X�^���X

%inst
���X�g�̗v�f�̏��Ԃ��t�ɂ��܂��B

(ex) [1, 2, 3, 4] �𔽓]����� [4, 3, 2, 1] �ɂȂ�B

%href

%group
�����o�֐�::��������n

;--------------------
%index
list_clear
List ���� [i]

%prm
self
inst self : List �C���X�^���X

%inst
���ׂĂ̗v�f�����X�g�����菜������֐��ł��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
list_chain
List �A�� [i]

%prm
self, src
inst self : List �C���X�^���X
inst src  : �V

%inst
���X�g src �Ɋ܂܂�邷�ׂĂ̗v�f���Aself �̖����ɒǉ����铝��֐��ł��Bsrc �̗v�f�̏��Ԃ͈ێ�����܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
list_copy
List ���� [i]

%prm
self, src
inst self : List �C���X�^���X
inst src  : �V

%inst
���X�g src �� self �ɕ��ʂ��铝��֐��ł��B���X���������X�g�� list_clear �ɂ���ď�������܂��B

%href
list_clear
list_chain

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
list_swap
List �R���e�i���� [i]

%prm
self, obj
inst self : List �C���X�^���X
inst obj   : �V

%inst
self �� obj �Ɋ܂܂�邷�ׂĂ̗v�f���������܂��B���ꂼ��̗v�f�̏��Ԃ͈ێ�����܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
list_iter_init
List �����q::������ [i]

%prm
self, iterData
inst self     : List �C���X�^���X
var  iterData : �������

%inst
���X�g�̔����q�����������铝��֐��ł��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
list_iter_init
list_iter_next

%group
�����o�֐�::�����q����n

;--------------------
%index
list_iter_next
List �����q::�X�V [i]

%prm
(self, vIt, iterData)
inst self    : List �C���X�^���X
var vIt      : �����q
var iterData : �������

%inst
���X�g�̔����q���X�V���铝��֐��ł��B���̕Ԓl���U�Ȃ�A���̔������s�킸�ɏI�����܂��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
list_iter_init
list_iter_next

%group
�����o�֐�::�����q����n

;--------------------
%index
list_size
List �v�f�� [i]

%prm
(self)
inst self : List �C���X�^���X

%inst
���X�g�Ɋ܂܂��v�f�̐���Ԃ�����֐��ł��B

%note
list_count, list_length �Ɠ���B

%href

%group
�����o�֐�

;--------------------
%index
list_isValid
List �v�f�ԍ����L�����ǂ���

%prm
(self, idx)
inst self : List �C���X�^���X
int  idx  : �v�f�ԍ�

%inst
���X�g�̗v�f�ԍ��Ƃ��� idx ���K�؂��ǂ�����Ԃ��܂��B
�K�؂Ȕԍ��Ȃ� true ( 0 �ȊO ) ���A�s�K�؂Ȃ� false ( = 0 ) ��Ԃ��܂��B

%href

%group
�����o�֐�

;--------------------
%index
list_dbglog
List �f�o�b�O�o��

%prm
self
inst self : List �C���X�^���X

%inst
���X�g�̂��ׂĂ̗v�f�� logmes �ŏo�͂��܂��B

%href

%group
�����o�֐�::�f�o�b�O
