;#############################
%dll
abdata_container

%author
uedai

%date
2010 07/17 (Sat)	// �ŏI�X�V _dup �� _clone �֕ύX, new_Container �ǉ�
2010 06/25 (Fri)	// Container_Sort �ǉ�
2009 10/04 (Sun)	// 
2009 08/31 (Mon)	// �쐬

%ver
1.0

%type
���ۃf�[�^�\�� �ėp�R���e�i

%group
�����o�֐�

%url
http://prograpark.ninja-web.net/

;--------------------
%index
new_Container
Container �\�z (�ꎞ)

%prm
()

%inst
�ėp�R���e�i (Container) �������ō\�z���܂��B

%href
new_Container
Container_new
Container_delete

%group
�\�z�֐�

;--------------------
%index
Container_new
Container �\�z

%prm
self
inst self : �ėp�R���e�i���\�z����ϐ�

%inst
�ėp�R���e�i (Container) ���\�z���܂��B

%href
new_Container
Container_new
Container_delete

%group
�\�z�֐�

;--------------------
%index
Container_delete
Container ���

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i����̂��܂��B

�����ŌĂяo����邽�߁A�ʏ�A�Ăяo���K�v�͂���܂���B

%href
new_Container
Container_new
Container_delete

%group
��̊֐�

;--------------------
%index
Container_clone
Container �Q�Ɖ�

%prm
self, vRef, i
inst self : �ėp�R���e�i
var  vRef : �Q�Ɖ�����ϐ�
int  i    : �v�f�ԍ�

%inst
vRef ���A�ėp�R���e�i�̗v�f [i] �̎Q�� ( �N���[�� ) �ɂ��܂��B�܂�Adup ���߂̂悤�ȏ����ł��B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_ref
Container �Q��

%prm
(self, idx)
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �̎Q�Ƃ�Ԃ��܂� (�[���I��)�B���̊֐��́A������̍��ӂƂ��Ă̂ݎg�p�ł��܂��B

%sample
	Container_ref( idx ) = 10
	Container_ref( idx ) = "string"	// �^�̕ϊ��͂ł��܂���

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_get
Container �l�̎擾

%prm
(self, idx)
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �̒l��Ԃ��܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_get_front
Container �l�̎擾 ( �擪 )

%prm
(self)
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f�̒l��Ԃ��܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_get_back
Container �l�̎擾 ( ���� )

%prm
(self)
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f�̒l��Ԃ��܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_getv
Container �l�̎擾 ( �ϐ� )

%prm
self, result, idx
inst self   : �ėp�R���e�i
var  result : �Ԓl���i�[����ϐ�
int  idx    : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �̒l���A�ϐ� result �Ɋi�[���܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_getv_front
Container �l�̎擾 ( �擪�A�ϐ� )

%prm
self, result
inst self   : �ėp�R���e�i
var  result : �߂�l���i�[����ϐ�

%inst
�ėp�R���e�i�̐擪�̗v�f�̒l���A�ϐ� result �Ɋi�[���܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_getv_back
Container �l�̎擾 ( �����A�ϐ� )

%prm
self, result
inst self   : �ėp�R���e�i
var  result : �߂�l���i�[����ϐ�

%inst
�ėp�R���e�i�̖����̗v�f�̒l���A�ϐ� result �Ɋi�[���܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_pop
Container �l�̎擾

%prm
self, idx
inst self : �ėp�R���e�i
int  i    : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �̒l���擾���A�Ԃ��܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

Container_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_pop_front
Container �l�̎擾 ( �擪 )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f�̒l���擾���A�Ԃ��܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

Container_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_pop_back
Container �l�̎擾 ( ���� )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f�̒l���擾���A�Ԃ��܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

Container_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_popv
Container �l�̎擾 ( �ϐ� )

%prm
self, vResult, int idx
inst self    : �ėp�R���e�i
var  vResult : �߂�l���i�[����ϐ�
int  idx     : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �̒l���擾���AvResult �Ɋi�[���܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

Container_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_popv_front
Container �l�̎擾 ( �擪�A�ϐ� )

%prm
self, vResult
inst self    : �ėp�R���e�i
var  vResult : �߂�l���i�[����ϐ�

%inst
�ėp�R���e�i�̐擪�̗v�f�̒l���擾���AvResult �Ɋi�[���܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

Container_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_popv_back
Container �l�̎擾 ( �����A�ϐ� )

%prm
self, vResult
inst self    : �ėp�R���e�i
var  vResult : �߂�l���i�[����ϐ�

%inst
�ėp�R���e�i�̖����̗v�f�̒l���擾���AvResult �Ɋi�[���܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
Container_clone
Container_ref

Container_get
Container_get_front
Container_get_back
Container_getv
Container_getv_front
Container_getv_back

Container_pop
Container_pop_front
Container_pop_back
Container_popv
Container_popv_front
Container_popv_back

Container_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_vartype
Container �^�̎擾

%prm
(self, idx)
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [i] �̒l�̌^��Ԃ��܂��B

%href
Container_vartype
Container_vartype_front
Container_vartype_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_vartype_front
Container �^�̎擾 ( �擪 )

%prm
(self)
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f�̒l�̌^��Ԃ��܂��B

%href
Container_vartype
Container_vartype_front
Container_vartype_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_vartype_back
Container �^�̎擾 ( ���� )

%prm
(self)
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f�̒l�̌^��Ԃ��܂��B

%href
Container_vartype
Container_vartype_front
Container_vartype_back

%group
�����o�֐�::�擾�n

;--------------------
%index
Container_set
Container �l�̕ύX

%prm
self, value, idx = 0
inst self  : �ėp�R���e�i
any  value : �ݒ肷��l
int  idx   : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [i] �̒l�� value �ɕύX���܂��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_setv
Container �l�̕ύX ( �ϐ� )

%prm
self, vValue, idx
inst self   : �ėp�R���e�i
var  vValue : �ݒ肷��l���i�[���ꂽ�ϐ�
int  idx    : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �ɁAvValue �̒l��ݒ肵�܂��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_insert
Container �v�f�̑}��

%prm
self, value, idx = 0
inst self  : �ėp�R���e�i
any  value : �}������v�f�̒l
int  idx   : �V���ȗv�f�̔ԍ�

%inst
�ėp�R���e�i�� [idx] �ɁA�V�����v�f��}�����܂��Bidx ���ȗ����� ( idx == 0 �ɂ��� ) �ƁA�ėp�R���e�i�̐擪�ɒǉ�����܂��B

idx �͑��̃����o�̂���ƈႢ�A�uidx >= Container_size(...)�v�������܂��B���̏ꍇ�́A�v�f�𖖔��ɒǉ�����Ƃ����AContainer_push_back �Ɠ��������ɂȂ�܂��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_insertv
Container �v�f�̑}�� ( �ϐ� )

%prm
self, vValue, idx
inst self   : �ėp�R���e�i
var  vValue : �}������v�f�̒l���i�[���ꂽ�ϐ�
int  idx    : �V�����v�f�̔ԍ�

%inst
�ėp�R���e�i�� [idx] �ɐV�����v�f��}�����܂��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_double
Container �v�f�̔{��

%prm
self, idx
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�� [idx] �̗v�f�̒���ɁA�����l�̗v�f��}�����܂��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_double_front
Container �v�f�̔{�� ( �擪 )

%prm
self, idx
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̐擪�̗v�f�̒���ɁA�����l�̗v�f��}�����܂��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_double_back
Container �v�f�̔{�� ( ���� )

%prm
self, idx
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̖����̗v�f�̒���ɁA�����l�̗v�f��}�����܂��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_push_front
Container �v�f�̒ǉ� ( �擪 )

%prm
self, value
inst self  : �ėp�R���e�i
any  value : �ǉ�����v�f�̒l

%inst
�ėp�R���e�i�̐擪�ɗv�f��ǉ����܂��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_push_back
Container �v�f�̒ǉ� ( ���� )

%prm
self, value
inst self  : �ėp�R���e�i
any  value : �ǉ�����v�f�̒l

%inst
�ėp�R���e�i�̖����ɗv�f��ǉ����܂��B

�� Container_add �Ɠ����B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_pushv_front
Container �v�f�̒ǉ� ( �擪�A�ϐ� )

%prm
self, vValue
inst self   : �ėp�R���e�i
var  vValue : �ǉ�����v�f�̒l���i�[�����ϐ�

%inst
�ėp�R���e�i�̐擪�ɗv�f��ǉ����܂��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_pushv_back
Container �v�f�̒ǉ� ( �����A�ϐ� )

%prm
self, vValue
inst self   : �ėp�R���e�i
var  vValue : �ǉ�����v�f�̒l���i�[�����ϐ�

%inst
�ėp�R���e�i�̖����ɗv�f��ǉ����܂��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_add
Container �v�f�̒ǉ� ( ���� )

%prm
self, value
inst self  : �ėp�R���e�i
any  value : �ǉ�����v�f�̒l

%inst
�ėp�R���e�i�̖����ɗv�f��ǉ�����AContainer_push_back �Ɠ�������ł��B

%href
Container_set
Container_setv

Container_insert
Container_insertv

Container_double
Container_double_front
Container_double_back

; Container_push
Container_push_front
Container_push_back
; Container_pushv
Container_pushv_front
Container_pushv_back

Container_add

%group
�����o�֐�::����n

;--------------------
%index
Container_remove
Container �v�f�̏���

%prm
self, idx
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [i] ��ėp�R���e�i�����菜���܂��B

%href
Container_remove
Container_remove_front
Container_remove_back

%group
�����o�֐�::����n

;--------------------
%index
Container_remove_front
Container �v�f�̏��� ( �擪 )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f���A�ėp�R���e�i�����菜���܂��B

%href
Container_remove
Container_remove_front
Container_remove_back

%group
�����o�֐�::����n

;--------------------
%index
Container_remove_back
Container �v�f�̏��� ( ���� )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f���A�ėp�R���e�i�����菜���܂��B

%href
Container_remove
Container_remove_front
Container_remove_back

%group
�����o�֐�::����n

;--------------------
%index
Container_loc_move
Container �v�f�̈ړ�

%prm
self, from, to
inst self : �ėp�R���e�i
int  from : �ړ��O�̗v�f�ԍ�
int  to   : �ړ���̗v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [from] ���A[to] �̈ʒu�Ɉړ������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href
Container_loc_move
Container_loc_swap
Container_loc_swap_front
Container_loc_swap_back
Container_rotate
Container_rotate_back
Container_reverse
Container_sort

%group
�����o�֐�::��������n

;--------------------
%index
Container_loc_swap
Container �v�f�̌���

%prm
self, pos1, pos2
inst self : �ėp�R���e�i
int  pos1 : ��������v�f�ԍ�
int  pos2 : �V

%inst
�ėp�R���e�i�̗v�f [pos1] �� [pos2] ���������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href
Container_loc_move
Container_loc_swap
Container_loc_swap_front
Container_loc_swap_back
Container_rotate
Container_rotate_back
Container_reverse
Container_sort

%group
�����o�֐�::��������n

;--------------------
%index
Container_loc_swap_front
Container �v�f�̌��� ( �擪 )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f2���������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href
Container_loc_move
Container_loc_swap
Container_loc_swap_front
Container_loc_swap_back
Container_rotate
Container_rotate_back
Container_reverse
Container_sort

%group
�����o�֐�::��������n

;--------------------
%index
Container_loc_swap_back
Container �v�f�̌��� ( ���� )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f2���������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href
Container_loc_move
Container_loc_swap
Container_loc_swap_front
Container_loc_swap_back
Container_rotate
Container_rotate_back
Container_reverse
Container_sort

%group
�����o�֐�::��������n

;--------------------
%index
Container_rotate
Container �v�f�̏���

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̗v�f�����ׂāA��O�ɂ��炵�܂��B�܂�A�擪�̗v�f�𖖔��Ɉړ������鏈���ł��B

%href
Container_loc_move
Container_loc_swap
Container_loc_swap_front
Container_loc_swap_back
Container_rotate
Container_rotate_back
Container_reverse
Container_sort

%group
�����o�֐�::��������n

;--------------------
%index
Container_rotate_back
Container �v�f�̏��� ( �t��] )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̗v�f�����ׂāA����ɂ��炵�܂��B�܂�A�����̗v�f��擪�Ɉړ������鏈���ŁAContainer_rotate �̒��x�t�ł��B

%href
Container_loc_move
Container_loc_swap
Container_loc_swap_front
Container_loc_swap_back
Container_rotate
Container_rotate_back
Container_reverse
Container_sort

%group
�����o�֐�::��������n

;--------------------
%index
Container_reverse
Container �v�f���̔��]

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̗v�f�̏��Ԃ��t�ɂ��܂��B

(ex) [1, 2, 3, 4] �𔽓]����� [4, 3, 2, 1] �ɂȂ�B

%href
Container_loc_move
Container_loc_swap
Container_loc_swap_front
Container_loc_swap_back
Container_rotate
Container_rotate_back
Container_reverse
Container_sort

%group
�����o�֐�::��������n

;--------------------
%index
Container_sort
Container ����

%prm
self [, mode = SortMode_Ascending]
inst self : �ėp�R���e�i
int  mode : SortMode_* 

%inst
�ėp�R���e�i�̗v�f�𐮗񂵂܂��B

SortMode_Ascending => ����
SortMode_Decending => �~��

�� variant �ȂǁA�召��r�̂ł��Ȃ��^���܂܂�Ă����ꍇ�A�G���[�I������̂Œ��ӂ��邱�ƁB

(algorithm)
1. �^�^�C�v�l�̏����������u�������v�Ɣ��f�B
2. �����̏ꍇ�A��r���Z (<, >) �Ŕ��f�B

(ex) [1, 3, e, "a", 2, "b", ��] �𐮗񂷂�� ["a", "b", e, ��, 1, 2, 3] �ɂȂ�B
%href
Container_loc_move
Container_loc_swap
Container_loc_swap_front
Container_loc_swap_back
Container_rotate
Container_rotate_back
Container_reverse
Container_sort

%group
�����o�֐�::��������n

;--------------------
%index
Container_clear
Container ���� [i]

%prm
self
inst self : �ėp�R���e�i

%inst
���ׂĂ̗v�f��ėp�R���e�i�����菜������֐��ł��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Container_chain
Container �A�� [i]

%prm
self, src
inst self : �ėp�R���e�i
inst src  : �V

%inst
�ėp�R���e�i src �Ɋ܂܂�邷�ׂĂ̗v�f���Aself �̖����ɒǉ����铝��֐��ł��Bfrom �̗v�f�̏��Ԃ͈ێ�����܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Container_copy
Container ���� [i]

%prm
self, src
inst self : �ėp�R���e�i
inst src  : �V

%inst
�ėp�R���e�i src �𕡎ʂ��铝��֐��ł��B���X�������ėp�R���e�i�� Container_clear �ɂ���ď�������܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Container_swap
Container �R���e�i���� [i]

%prm
self, obj2
inst self : �ėp�R���e�i
inst obj2 : �V

%inst
self �� obj2 �Ɋ܂܂�邷�ׂĂ̗v�f���������܂��B���ꂼ��̗v�f�̏��Ԃ͈ێ�����܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Container_iter_init
Container �����q::������ [i]

%prm
self, iterData
inst self    : �ėp�R���e�i
var iterData : �������

%inst
�ėp�R���e�i�̔����q�����������铝��֐��ł��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
Container_iter_init
Container_iter_next

%group
�����o�֐�::�����q����n

;--------------------
%index
Container_iter_next
Container �����q::�X�V [i]

%prm
(self, vIt, iterData)
inst self    : �ėp�R���e�i
var vIt      : �����q
var iterData : �������

%inst
�ėp�R���e�i�̔����q���X�V���铝��֐��ł��B�߂�l���U�Ȃ�A�J��Ԃ������s�����ɏI�����܂��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
Container_iter_init
Container_iter_next

%group
�����o�֐�::�����q����n

;--------------------
%index
Container_size
Container �v�f�� [i]

%prm
(self)
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�Ɋ܂܂��v�f�̐���Ԃ�����֐��ł��B

%note
Container_count, Container_length �Ɠ���B

%href

%group
�����o�֐�

;--------------------
%index
Container_isValid
Container �v�f�ԍ����L�����ǂ���

%prm
(self, idx)
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f�ԍ��Ƃ��� idx ���K�؂��ǂ�����Ԃ��܂��B
�K�؂Ȕԍ��Ȃ� true ( 0 �ȊO ) ���A�s�K�؂Ȃ� false ( = 0 ) ��Ԃ��܂��B

%href

%group
�����o�֐�

;--------------------
%index
Container_dbglog
Container �f�o�b�O�o��

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̂��ׂĂ̗v�f�� logmes �ŏo�͂��܂��B

%href

%group
�����o�֐�::�f�o�b�O
