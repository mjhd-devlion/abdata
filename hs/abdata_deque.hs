;#############################
%dll
abdata_deque

%author
uedai

%date
2010 07/18 (Sun)	// �ŏI�X�V �\�L�̏C���ȂǁA���낢�����
2009 10/04 (Sun)	// 
2009 08/30 (Thu)	// �쐬

%ver
1.0

%type
���ۃf�[�^�\�� �o�����L���[

%group
�����o�֐�

%url
http://prograpark.ninja-web.net/

;--------------------
%index
new_deque
Deque �\�z (�ꎞ)

%prm
()

%inst
�V�����o�����L���[ (Deque) ���\�z���A�Ԃ��܂��B

%href
new_deque
deque_new
deque_delete

%group
�\�z�֐�

;--------------------
%index
deque_new
Deque �\�z

%prm
self
inst self : ���W���[���ϐ�

%inst
�o�����L���[ (Deque) ���\�z���܂��B

%href
new_deque
deque_new
deque_delete

%group
�\�z�֐�

;--------------------
%index
deque_delete
Deque ���

%prm
self
inst self : ���W���[���ϐ�

%inst
�o�����L���[����̂��܂��B

�v���O�����̏I�����Ɏ����ŌĂяo����邽�߁A�ʏ�A�Ăяo���K�v�͂���܂���B

%href
new_deque
deque_new
deque_delete

%group
��̊֐�

;--------------------
%index
deque_get_front
Deque �l�̎擾 ( �擪 )

%prm
(self)
inst self : �o�����L���[

%inst
�o�����L���[�̐擪�̗v�f�̒l��Ԃ��܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���o�����L���[�����菜�����Ƃ������Ƃ͂���܂���B

%href
deque_get_front
deque_get_back
deque_getv_front
deque_getv_back

deque_pop_front
deque_pop_back
deque_popv_front
deque_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_get_back
Deque �l�̎擾 ( ���� )

%prm
(self)
inst self : �o�����L���[

%inst
�o�����L���[�̖����̗v�f�̒l��Ԃ��܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���o�����L���[�����菜�����Ƃ������Ƃ͂���܂���B

%href
deque_get_front
deque_get_back
deque_getv_front
deque_getv_back

deque_pop_front
deque_pop_back
deque_popv_front
deque_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_getv_front
Deque �l�̎擾 ( �擪�A�ϐ� )

%prm
self, result
inst self   : �o�����L���[
var  result : �߂�l���i�[����ϐ�

%inst
�o�����L���[�̐擪�̗v�f�̒l���A�ϐ� result �Ɋi�[���܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���o�����L���[�����菜�����Ƃ������Ƃ͂���܂���B

%href
deque_get_front
deque_get_back
deque_getv_front
deque_getv_back

deque_pop_front
deque_pop_back
deque_popv_front
deque_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_getv_back
Deque �l�̎擾 ( �����A�ϐ� )

%prm
self, result
inst self   : �o�����L���[
var  result : �߂�l���i�[����ϐ�

%inst
�o�����L���[�̖����̗v�f�̒l���A�ϐ� result �Ɋi�[���܂��B

�� pop ����ł͂Ȃ��̂ŁA�v�f���o�����L���[�����菜�����Ƃ������Ƃ͂���܂���B

%href
deque_get_front
deque_get_back
deque_getv_front
deque_getv_back

deque_pop_front
deque_pop_back
deque_popv_front
deque_popv_back

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_pop_front
Deque �l�̎擾 ( �擪 )

%prm
self
inst self : �o�����L���[

%inst
�o�����L���[�̐擪�̗v�f�̒l���擾���A�Ԃ��܂��B���o�����l�͑o�����L���[�����菜����܂��B

%href
deque_get_front
deque_get_back
deque_getv_front
deque_getv_back

deque_pop_front
deque_pop_back
deque_popv_front
deque_popv_back

deque_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_pop_back
Deque �l�̎擾 ( ���� )

%prm
self
inst self : �o�����L���[

%inst
�o�����L���[�̖����̗v�f�̒l���擾���A�Ԃ��܂��B���o�����l�͑o�����L���[�����菜����܂��B

%href
deque_get_front
deque_get_back
deque_getv_front
deque_getv_back

deque_pop_front
deque_pop_back
deque_popv_front
deque_popv_back

deque_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_popv_front
Deque �l�̎擾 ( �擪�A�ϐ� )

%prm
self, vResult
inst self    : �o�����L���[
var  vResult : �߂�l���i�[����ϐ�

%inst
�o�����L���[�̐擪�̗v�f�̒l���擾���AvResult �Ɋi�[���܂��B���o�����l�͑o�����L���[�����菜����܂��B

%href
deque_get_front
deque_get_back
deque_getv_front
deque_getv_back

deque_pop_front
deque_pop_back
deque_popv_front
deque_popv_back

deque_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_popv_back
Deque �l�̎擾 ( �����A�ϐ� )

%prm
self, vResult
inst self    : �o�����L���[
var  vResult : �߂�l���i�[����ϐ�

%inst
�o�����L���[�̖����̗v�f�̒l���擾���AvResult �Ɋi�[���܂��B���o�����l�͑o�����L���[�����菜����܂��B

%href
deque_get_front
deque_get_back
deque_getv_front
deque_getv_back

deque_pop_front
deque_pop_back
deque_popv_front
deque_popv_back

deque_remove

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_vartype
Deque �^�̎擾

%prm
(self, idx)
inst self : �o�����L���[
int  idx  : �v�f�ԍ�

%inst
�o�����L���[�̗v�f [idx] �̒l�̌^��Ԃ��܂��B

%href
deque_vartype
deque_vartype_front
deque_vartype_back

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_vartype_front
Deque �^�̎擾 ( �擪 )

%prm
(self)
inst self : �o�����L���[

%inst
�o�����L���[�̐擪�̗v�f�̒l�̌^��Ԃ��܂��B

%href
deque_vartype
deque_vartype_front
deque_vartype_back

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_vartype_back
Deque �^�̎擾 ( ���� )

%prm
(self)
inst self : �o�����L���[

%inst
�o�����L���[�̖����̗v�f�̒l�̌^��Ԃ��܂��B

%href
deque_vartype
deque_vartype_front
deque_vartype_back

%group
�����o�֐�::�擾�n

;--------------------
%index
deque_set
Deque �l�̕ύX

%prm
self, value, idx = 0
inst self  : �o�����L���[
any  value : �ݒ肷��l
int  idx   : �v�f�ԍ�

%inst
�o�����L���[�̗v�f [idx] �̒l�� value �ɕύX���܂��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

deque_double
deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
%index
deque_setv
Deque �l�̕ύX ( �ϐ� )

%prm
self, vValue, idx
inst self   : �o�����L���[
var  vValue : �ݒ肷��l���i�[���ꂽ�ϐ�
int  idx    : �v�f�ԍ�

%inst
�o�����L���[�̗v�f [idx] �ɁAvValue �̒l��ݒ肵�܂��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

deque_double
deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
%index
deque_insert
Deque �v�f�̑}��

%prm
self, value, idx = 0
inst self  : �o�����L���[
any  value : �}������v�f�̒l
int  idx   : �V���ȗv�f�̔ԍ�

%inst
�o�����L���[�� [idx] �ɁA�V�����v�f��}�����܂��Bidx ���ȗ����� ( idx == 0 �ɂ��� ) �ƁA�o�����L���[�̐擪�ɒǉ�����܂��B

offset �͑��̃����o�̂���ƈႢ�A�uidx >= deque_size(...)�v�������܂��B���̏ꍇ�́A�v�f�𖖔��ɒǉ�����Ƃ����Adeque_push_back �Ɠ��������ɂȂ�܂��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

deque_double
deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
%index
deque_insertv
Deque �v�f�̑}�� ( �ϐ� )

%prm
self, vValue, idx
inst self   : �o�����L���[
var  vValue : �}������v�f�̒l���i�[���ꂽ�ϐ�
int  idx    : �V�����v�f�̔ԍ�

%inst
�o�����L���[�� [i] �ɐV�����v�f��}�����܂��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

deque_double
deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
html{
<!--
%index
deque_double
Deque �v�f�̔{��

%prm
self, idx
inst self : �ėp�R���e�i
int  idx  : �v�f�ԍ�

%inst
�ėp�R���e�i�� [idx] �̗v�f�̒���ɁA�����l�̗v�f��}�����܂��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

; deque_double
deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n
-->
}
;--------------------
%index
deque_double_front
Deque �v�f�̔{�� ( �擪 )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̐擪�̗v�f�̒��O�ɁA�����l�̗v�f��}�����܂��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

; deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
%index
deque_double_back
Deque �v�f�̔{�� ( ���� )

%prm
self
inst self : �ėp�R���e�i

%inst
�ėp�R���e�i�̖����̗v�f�̒���ɁA�����l�̗v�f��}�����܂��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

deque_double_front
deque_double_back

deque_push
; deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
%index
deque_push_front
Deque �v�f�̒ǉ� ( �擪 )

%prm
self, value
inst self  : �o�����L���[
any  value : �ǉ�����v�f�̒l

%inst
�o�����L���[�̐擪�ɗv�f��ǉ����܂��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
%index
deque_push_back
Deque �v�f�̒ǉ� ( ���� )

%prm
self, value
inst self  : �o�����L���[
any  value : �ǉ�����v�f�̒l

%inst
�o�����L���[�̖����ɗv�f��ǉ����܂��B

�� deque_add �Ɠ����B

%href
deque_set
deque_setv

deque_insert
deque_insertv

deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
%index
deque_pushv_front
Deque �v�f�̒ǉ� ( �擪�A�ϐ� )

%prm
self, vValue
inst self   : �o�����L���[
var  vValue : �ǉ�����v�f�̒l���i�[�����ϐ�

%inst
�o�����L���[�̐擪�ɗv�f��ǉ����܂��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
%index
deque_pushv_back
Deque �v�f�̒ǉ� ( �����A�ϐ� )

%prm
self, vValue
inst self   : �o�����L���[
var  vValue : �ǉ�����v�f�̒l���i�[�����ϐ�

%inst
�o�����L���[�̖����ɗv�f��ǉ����܂��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
%index
deque_add
Deque �v�f�̒ǉ� ( ���� )

%prm
self, value
inst self  : �o�����L���[
any  value : �ǉ�����v�f�̒l

%inst
�o�����L���[�̖����ɗv�f��ǉ�����Adeque_push_back �Ɠ�������ł��B

%href
deque_set
deque_setv

deque_insert
deque_insertv

deque_double_front
deque_double_back

; deque_push
deque_push_front
deque_push_back
; deque_pushv
deque_pushv_front
deque_pushv_back

deque_add

%group
�����o�֐�::����n

;--------------------
%index
deque_remove_front
Deque �v�f�̏��� ( �擪 )

%prm
self
inst self : �o�����L���[

%inst
�o�����L���[�̐擪�̗v�f���A�o�����L���[�����菜���܂��B

%href
deque_remove_front
deque_remove_back

%group
�����o�֐�::����n

;--------------------
%index
deque_remove_back
Deque �v�f�̏��� ( ���� )

%prm
self
inst self : �o�����L���[

%inst
�o�����L���[�̖����̗v�f���A�o�����L���[�����菜���܂��B

%href
deque_remove_front
deque_remove_back

%group
�����o�֐�::����n

;--------------------
%index
deque_loc_swap_front
Deque �O���v�f2�̌���

%prm
self
inst self : �o�����L���[

%inst
�o�����L���[�̐擪�ɂ���2�̗v�f���������܂��B

%href
deque_loc_swap_front
deque_loc_swap_back
deque_rotate
deque_rotate_back
deque_reverse

%group
�����o�֐�::��������n

;--------------------
%index
deque_loc_swap_back
Deque �O���v�f2�̌���

%prm
self
inst self : �o�����L���[

%inst
�o�����L���[�̖����ɂ���2�̗v�f���������܂��B

%href
deque_loc_swap_front
deque_loc_swap_back
deque_rotate
deque_rotate_back
deque_reverse

%group
�����o�֐�::��������n

;--------------------
%index
deque_rotate
Deque �v�f�̏���

%prm
self
inst self : �o�����L���[

%inst
�o�����L���[�̗v�f�����ׂāA��O�ɂ��炵�܂��B�܂�A�擪�̗v�f�𖖔��Ɉړ������鏈���ł��B

%href
deque_loc_swap_front
deque_loc_swap_back
deque_rotate
deque_rotate_back
deque_reverse

%group
�����o�֐�::��������n

;--------------------
%index
deque_rotate_back
Deque �v�f�̏��� ( �t��] )

%prm
self
inst self : �o�����L���[

%inst
�o�����L���[�̗v�f�����ׂāA����ɂ��炵�܂��B�܂�A�����̗v�f��擪�Ɉړ������鏈���ŁAdeque_rotate �̒��x�t�ł��B

%href
deque_loc_swap_front
deque_loc_swap_back
deque_rotate
deque_rotate_back
deque_reverse

%group
�����o�֐�::��������n

;--------------------
%index
deque_reverse
Deque �v�f���̔��]

%prm
self
inst self : �o�����L���[

%inst
�o�����L���[�̗v�f�̏��Ԃ��t�ɂ��܂��B

(ex) [1, 2, 3, 4] �𔽓]����� [4, 3, 2, 1] �ɂȂ�B

%href
deque_loc_swap_front
deque_loc_swap_back
deque_rotate
deque_rotate_back
deque_reverse

%group
�����o�֐�::��������n

;--------------------
%index
deque_clear
Deque ���� [i]

%prm
self
inst self : �o�����L���[

%inst
���ׂĂ̗v�f��o�����L���[�����菜������֐��ł��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
deque_chain
Deque �A�� [i]

%prm
self, src
inst self : �o�����L���[
inst src  : �V

%inst
�o�����L���[ src �Ɋ܂܂�邷�ׂĂ̗v�f���Aself �̖����ɒǉ����铝��֐��ł��Bsrc �̗v�f�̏��Ԃ͈ێ�����܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
deque_copy
Deque ���� [i]

%prm
self, src
inst self : �o�����L���[
inst src  : �V

%inst
�o�����L���[ src �𕡎ʂ��铝��֐��ł��B���X�������o�����L���[�� deque_clear �ɂ���ď�������܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
deque_swap
Deque �R���e�i���� [i]

%prm
self, obj
inst self : �o�����L���[
inst obj  : �V

%inst
self �� obj �Ɋ܂܂�邷�ׂĂ̗v�f���������܂��B���ꂼ��̗v�f�̏��Ԃ͈ێ�����܂��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
deque_iter_init
Deque �����q::������ [i]

%prm
self, iterData
inst self     : �o�����L���[
var  iterData : �������

%inst
�o�����L���[�̔����q�����������铝��֐��ł��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
deque_iter_init
deque_iter_next

%group
�����o�֐�::�����q����n

;--------------------
%index
deque_iter_next
Deque �����q::�X�V [i]

%prm
(self, vIt, iterData)
inst self     : �o�����L���[
var  vIt      : �����q
var  iterData : �������

%inst
�o�����L���[�̔����q���X�V���铝��֐��ł��B�߂�l���U�Ȃ�A�J��Ԃ������s�����ɏI�����܂��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
deque_iter_init
deque_iter_next

%group
�����o�֐�::�����q����n

;--------------------
%index
deque_size
Deque �v�f�� [i]

%prm
(self)
inst self : �o�����L���[

%inst
�o�����L���[�Ɋ܂܂��v�f�̐���Ԃ�����֐��ł��B

%note
deque_count, deque_length �Ɠ���B

%href

%group
�����o�֐�

;--------------------
html{
<!--
%index
deque_isValid
Deque �v�f�ԍ����L�����ǂ���

%prm
(self, idx)
inst self : �o�����L���[
int  idx  : �v�f�ԍ�

%inst
�o�����L���[�̗v�f�ԍ��Ƃ��� idx ���K�؂��ǂ�����Ԃ��܂��B
�K�؂Ȕԍ��Ȃ� true ( 0 �ȊO ) ���A�s�K�؂Ȃ� false ( = 0 ) ��Ԃ��܂��B

%href

%group
�����o�֐�
-->
}

;--------------------
%index
deque_dbglog
Deque �f�o�b�O�o��

%prm
self
inst self : �o�����L���[

%inst
�o�����L���[�̂��ׂĂ̗v�f�� logmes �ŏo�͂��܂��B

%href

%group
�����o�֐�::�f�o�b�O
