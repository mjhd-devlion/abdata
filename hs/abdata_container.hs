;#############################
%dll
abdata_container

%author
uedai

%date
2010 07/17 (Sat)	// �ŏI�X�V _dup �� _clone �֕ύX, container_make �ǉ�
2010 06/25 (Fri)	// container_Sort �ǉ�
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
container_make
container �\�z (�ꎞ)

%prm
()

%inst
�ėp�R���e�i (container) �������ō\�z���܂��B

%href
container_make
container_new
container_delete

%group
�\�z�֐�

;--------------------
%index
container_new
container �\�z

%prm
self
inst self : �ėp�R���e�i���\�z����ϐ�

%inst
�ėp�R���e�i (container) ���\�z���܂��B

%href
container_make
container_new
container_delete

%group
�\�z�֐�

;--------------------
%index
container_delete
container ���

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i����̂��܂��B

�����ŌĂяo����邽�߁A�ʏ�A�Ăяo���K�v�͂���܂���B

%href
container_make
container_new
container_delete

%group
��̊֐�

;--------------------
%index
container_clone
container �Q�Ɖ�

%prm
self, vRef, i
inst self : �ėp�R���e�i
var  vRef : �Q�Ɖ�����ϐ�
int  i    : �v�f�ԍ�

%inst
vRef ���A�ėp�R���e�i�̗v�f [i] �̎Q�� ( �N���[�� ) �ɂ��܂��B�܂�Adup ���߂̂悤�ȏ����ł��B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_ref
container �Q��

%prm
(self, idx)
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �̎Q�Ƃ�Ԃ��܂� (�[���I��)�B���̊֐��́A������̍��ӂƂ��Ă̂ݎg�p�ł��܂��B

%sample
	container_ref( idx ) = 10
	container_ref( idx ) = "string"	// �^�̕ϊ��͂ł��܂���

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_get
container �l�̎擾

%prm
(self, idx)
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �̒l��Ԃ��܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_get_front
container �l�̎擾 ( �擪 )

%prm
(self)
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f�̒l��Ԃ��܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_get_back
container �l�̎擾 ( ���� )

%prm
(self)
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f�̒l��Ԃ��܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_getv
container �l�̎擾 ( �ϐ� )

%prm
self, result, idx
inst self   : �ėp�R���e�i
var  result : �Ԓl���i�[����ϐ�
int  idx    : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �̒l���A�ϐ� result �Ɋi�[���܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_getv_front
container �l�̎擾 ( �擪�A�ϐ� )

%prm
self, result
inst self   : �ėp�R���e�i
var  result : �߂�l���i�[����ϐ�

%inst
�ėp�R���e�i�̐擪�̗v�f�̒l���A�ϐ� result �Ɋi�[���܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_getv_back
container �l�̎擾 ( �����A�ϐ� )

%prm
self, result
inst self   : �ėp�R���e�i
var  result : �߂�l���i�[����ϐ�

%inst
�ėp�R���e�i�̖����̗v�f�̒l���A�ϐ� result �Ɋi�[���܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���ėp�R���e�i�����菜�����Ƃ������Ƃ͂���܂���B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_pop
container �l�̎擾

%prm
self, idx
inst self : �ėp�R���e�i
int  i    : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �̒l���擾���A�Ԃ��܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

container_erase

%group
�����o�֐�::�擾�n

;--------------------
%index
container_pop_front
container �l�̎擾 ( �擪 )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f�̒l���擾���A�Ԃ��܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

container_erase

%group
�����o�֐�::�擾�n

;--------------------
%index
container_pop_back
container �l�̎擾 ( ���� )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f�̒l���擾���A�Ԃ��܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

container_erase

%group
�����o�֐�::�擾�n

;--------------------
%index
container_popv
container �l�̎擾 ( �ϐ� )

%prm
self, vResult, int idx
inst self    : �ėp�R���e�i
var  vResult : �߂�l���i�[����ϐ�
int  idx     : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �̒l���擾���AvResult �Ɋi�[���܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

container_erase

%group
�����o�֐�::�擾�n

;--------------------
%index
container_popv_front
container �l�̎擾 ( �擪�A�ϐ� )

%prm
self, vResult
inst self    : �ėp�R���e�i
var  vResult : �߂�l���i�[����ϐ�

%inst
�ėp�R���e�i�̐擪�̗v�f�̒l���擾���AvResult �Ɋi�[���܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

container_erase

%group
�����o�֐�::�擾�n

;--------------------
%index
container_popv_back
container �l�̎擾 ( �����A�ϐ� )

%prm
self, vResult
inst self    : �ėp�R���e�i
var  vResult : �߂�l���i�[����ϐ�

%inst
�ėp�R���e�i�̖����̗v�f�̒l���擾���AvResult �Ɋi�[���܂��B���o�����l�͔ėp�R���e�i�����菜����܂��B

%href
container_clone
container_ref

container_get
container_get_front
container_get_back
container_getv
container_getv_front
container_getv_back

container_pop
container_pop_front
container_pop_back
container_popv
container_popv_front
container_popv_back

container_erase

%group
�����o�֐�::�擾�n

;--------------------
%index
container_vartype
container �^�̎擾

%prm
(self, idx)
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [i] �̒l�̌^��Ԃ��܂��B

%href
container_vartype
container_vartype_front
container_vartype_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_vartype_front
container �^�̎擾 ( �擪 )

%prm
(self)
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f�̒l�̌^��Ԃ��܂��B

%href
container_vartype
container_vartype_front
container_vartype_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_vartype_back
container �^�̎擾 ( ���� )

%prm
(self)
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f�̒l�̌^��Ԃ��܂��B

%href
container_vartype
container_vartype_front
container_vartype_back

%group
�����o�֐�::�擾�n

;--------------------
%index
container_set
container �l�̕ύX

%prm
self, value, idx = 0
inst self  : �ėp�R���e�i
any  value : �ݒ肷��l
int  idx   : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [i] �̒l�� value �ɕύX���܂��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_setv
container �l�̕ύX ( �ϐ� )

%prm
self, vValue, idx
inst self   : �ėp�R���e�i
var  vValue : �ݒ肷��l���i�[���ꂽ�ϐ�
int  idx    : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [idx] �ɁAvValue �̒l��ݒ肵�܂��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_insert
container �v�f�̑}��

%prm
self, value, idx = 0
inst self  : �ėp�R���e�i
any  value : �}������v�f�̒l
int  idx   : �V���ȗv�f�̔ԍ�

%inst
�ėp�R���e�i�� [idx] �ɁA�V�����v�f��}�����܂��Bidx ���ȗ����� ( idx == 0 �ɂ��� ) �ƁA�ėp�R���e�i�̐擪�ɒǉ�����܂��B

idx �͑��̃����o�̂���ƈႢ�A�uidx >= container_size(...)�v�������܂��B���̏ꍇ�́A�v�f�𖖔��ɒǉ�����Ƃ����Acontainer_push_back �Ɠ��������ɂȂ�܂��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_insertv
container �v�f�̑}�� ( �ϐ� )

%prm
self, vValue, idx
inst self   : �ėp�R���e�i
var  vValue : �}������v�f�̒l���i�[���ꂽ�ϐ�
int  idx    : �V�����v�f�̔ԍ�

%inst
�ėp�R���e�i�� [idx] �ɐV�����v�f��}�����܂��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_double
container �v�f�̔{��

%prm
self, idx
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�� [idx] �̗v�f�̒���ɁA�����l�̗v�f��}�����܂��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_double_front
container �v�f�̔{�� ( �擪 )

%prm
self, idx
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̐擪�̗v�f�̒���ɁA�����l�̗v�f��}�����܂��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_double_back
container �v�f�̔{�� ( ���� )

%prm
self, idx
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̖����̗v�f�̒���ɁA�����l�̗v�f��}�����܂��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_push_front
container �v�f�̒ǉ� ( �擪 )

%prm
self, value
inst self  : �ėp�R���e�i
any  value : �ǉ�����v�f�̒l

%inst
�ėp�R���e�i�̐擪�ɗv�f��ǉ����܂��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_push_back
container �v�f�̒ǉ� ( ���� )

%prm
self, value
inst self  : �ėp�R���e�i
any  value : �ǉ�����v�f�̒l

%inst
�ėp�R���e�i�̖����ɗv�f��ǉ����܂��B

�� container_add �Ɠ����B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_pushv_front
container �v�f�̒ǉ� ( �擪�A�ϐ� )

%prm
self, vValue
inst self   : �ėp�R���e�i
var  vValue : �ǉ�����v�f�̒l���i�[�����ϐ�

%inst
�ėp�R���e�i�̐擪�ɗv�f��ǉ����܂��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_pushv_back
container �v�f�̒ǉ� ( �����A�ϐ� )

%prm
self, vValue
inst self   : �ėp�R���e�i
var  vValue : �ǉ�����v�f�̒l���i�[�����ϐ�

%inst
�ėp�R���e�i�̖����ɗv�f��ǉ����܂��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_add
container �v�f�̒ǉ� ( ���� )

%prm
self, value
inst self  : �ėp�R���e�i
any  value : �ǉ�����v�f�̒l

%inst
�ėp�R���e�i�̖����ɗv�f��ǉ�����Acontainer_push_back �Ɠ�������ł��B

%href
container_set
container_setv

container_insert
container_insertv

container_double
container_double_front
container_double_back

; container_push
container_push_front
container_push_back
; container_pushv
container_pushv_front
container_pushv_back

container_add

%group
�����o�֐�::����n

;--------------------
%index
container_erase
container �v�f�̏���

%prm
self, idx
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [i] ��ėp�R���e�i�����菜���܂��B

%href
container_erase
container_erase_front
container_erase_back

%group
�����o�֐�::����n

;--------------------
%index
container_erase_front
container �v�f�̏��� ( �擪 )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f���A�ėp�R���e�i�����菜���܂��B

%href
container_erase
container_erase_front
container_erase_back

%group
�����o�֐�::����n

;--------------------
%index
container_erase_back
container �v�f�̏��� ( ���� )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f���A�ėp�R���e�i�����菜���܂��B

%href
container_erase
container_erase_front
container_erase_back

%group
�����o�֐�::����n

;--------------------
%index
container_loc_move
container �v�f�̈ړ�

%prm
self, from, to
inst self : �ėp�R���e�i
int  from : �ړ��O�̗v�f�ԍ�
int  to   : �ړ���̗v�f�ԍ�

%inst
�ėp�R���e�i�̗v�f [from] ���A[to] �̈ʒu�Ɉړ������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href
container_loc_move
container_loc_swap
container_loc_swap_front
container_loc_swap_back
container_rotate
container_rotate_back
container_reverse
container_sort

%group
�����o�֐�::��������n

;--------------------
%index
container_loc_swap
container �v�f�̌���

%prm
self, pos1, pos2
inst self : �ėp�R���e�i
int  pos1 : ��������v�f�ԍ�
int  pos2 : �V

%inst
�ėp�R���e�i�̗v�f [pos1] �� [pos2] ���������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href
container_loc_move
container_loc_swap
container_loc_swap_front
container_loc_swap_back
container_rotate
container_rotate_back
container_reverse
container_sort

%group
�����o�֐�::��������n

;--------------------
%index
container_loc_swap_front
container �v�f�̌��� ( �擪 )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f2���������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href
container_loc_move
container_loc_swap
container_loc_swap_front
container_loc_swap_back
container_rotate
container_rotate_back
container_reverse
container_sort

%group
�����o�֐�::��������n

;--------------------
%index
container_loc_swap_back
container �v�f�̌��� ( ���� )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f2���������܂��B

���v�f�l�̕��ʂ͔������Ȃ��̂ŁA��R�X�g�ȏ����ł��B

%href
container_loc_move
container_loc_swap
container_loc_swap_front
container_loc_swap_back
container_rotate
container_rotate_back
container_reverse
container_sort

%group
�����o�֐�::��������n

;--------------------
%index
container_rotate
container �v�f�̏���

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̗v�f�����ׂāA��O�ɂ��炵�܂��B�܂�A�擪�̗v�f�𖖔��Ɉړ������鏈���ł��B

%href
container_loc_move
container_loc_swap
container_loc_swap_front
container_loc_swap_back
container_rotate
container_rotate_back
container_reverse
container_sort

%group
�����o�֐�::��������n

;--------------------
%index
container_rotate_back
container �v�f�̏��� ( �t��] )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̗v�f�����ׂāA����ɂ��炵�܂��B�܂�A�����̗v�f��擪�Ɉړ������鏈���ŁAcontainer_rotate �̒��x�t�ł��B

%href
container_loc_move
container_loc_swap
container_loc_swap_front
container_loc_swap_back
container_rotate
container_rotate_back
container_reverse
container_sort

%group
�����o�֐�::��������n

;--------------------
%index
container_reverse
container �v�f���̔��]

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̗v�f�̏��Ԃ��t�ɂ��܂��B

(ex) [1, 2, 3, 4] �𔽓]����� [4, 3, 2, 1] �ɂȂ�B

%href
container_loc_move
container_loc_swap
container_loc_swap_front
container_loc_swap_back
container_rotate
container_rotate_back
container_reverse
container_sort

%group
�����o�֐�::��������n

;--------------------
%index
container_sort
container ����

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
container_loc_move
container_loc_swap
container_loc_swap_front
container_loc_swap_back
container_rotate
container_rotate_back
container_reverse
container_sort

%group
�����o�֐�::��������n

;--------------------
%index
container_clear
container ���� [i]

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
container_chain
container �A�� [i]

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
container_copy
container ���� [i]

%prm
self, src
inst self : �ėp�R���e�i
inst src  : �V

%inst
�ėp�R���e�i src �𕡎ʂ��铝��֐��ł��B���X�������ėp�R���e�i�� container_clear �ɂ���ď�������܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
container_swap
container �R���e�i���� [i]

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
container_iter_init
container �����q::������ [i]

%prm
self, iterData
inst self    : �ėp�R���e�i
var iterData : �������

%inst
�ėp�R���e�i�̔����q�����������铝��֐��ł��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
container_iter_init
container_iter_next

%group
�����o�֐�::�����q����n

;--------------------
%index
container_iter_next
container �����q::�X�V [i]

%prm
(self, vIt, iterData)
inst self    : �ėp�R���e�i
var vIt      : �����q
var iterData : �������

%inst
�ėp�R���e�i�̔����q���X�V���铝��֐��ł��B�߂�l���U�Ȃ�A�J��Ԃ������s�����ɏI�����܂��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
container_iter_init
container_iter_next

%group
�����o�֐�::�����q����n

;--------------------
%index
container_size
container �v�f�� [i]

%prm
(self)
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�Ɋ܂܂��v�f�̐���Ԃ�����֐��ł��B

%note
container_length �Ɠ���B

%href

%group
�����o�֐�

;--------------------
%index
container_count
container �v�f�̐����グ

%prm
(self)
inst self : �ėp�R���e�i
var val : ������l

%inst
�ėp�R���e�i�Ɋ܂܂��A�l val �ɓ������v�f�̐���Ԃ��֐��ł��B

%note
%href

%group
�����o�֐�

;--------------------
%index
container_is_valid
container �v�f�ԍ����L�����ǂ���

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
container_dbglog
container �f�o�b�O�o��

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̂��ׂĂ̗v�f�� logmes �ŏo�͂��܂��B

%href

%group
�����o�֐�::�f�o�b�O
