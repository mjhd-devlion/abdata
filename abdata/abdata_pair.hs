;#############################
%dll
abdata_pair

%author
uedai

%date
2009 09/02 (Wed)	// �ŏI�X�V
2009 04/08 (Wed)	// �쐬

%ver
1.0

%type
���ۃf�[�^�\�� �y�A

%group
�����o�֐�

%url
http://prograpark.ninja-web.net/

;--------------------
%index
Pair_new
Pair �\�z

%prm
self, [value1], [value2]
modvar self : ���W���[���ϐ�
any value1  : �l first
any value2  : �l second

%inst
�y�A (Pair) ���\�z���܂��B�����l�� (value1, value 2) �ł� ( �ȗ��� )�B

%href
Pair_new
Pair_delete

%group
�\�z�֐�

;--------------------
%index
Pair_delete
Pair ���

%prm
self
modvar self : ���W���[���ϐ�

%inst
�y�A (Pair) ����̂��܂��B

%href
Pair_new
Pair_delete

%group
��̊֐�

;--------------------
%index
Pair_set
Pair �l�̕ύX

%prm
self, value, b = 0
modvar self  : Pair �C���X�^���X
any    value : �l
int    b     : 0 => first, 1 => second

%inst
�y�A�̒l�̕Е��� value �ɐݒ肵�܂��B

%href
Pair_set
Pair_setv
Pair_setFirst
Pair_setSecond
Pair_dup
Pair_dupFirst
Pair_dupSecond

%group
�����o�֐�::����n

;--------------------
%index
Pair_setv
Pair �l��ݒ� ( �ϐ� )

%prm
self, vValue, b
modvar self   : Pair �C���X�^���X
var    vValue : �l���i�[���ꂽ�ϐ�
int    b      : 0 => first, 1 => second

%inst
�y�A�̕Е��̗v�f�ɒl��ݒ肵�܂��B

%href
Pair_set
Pair_setv
Pair_setFirst
Pair_setSecond
Pair_dup
Pair_dupFirst
Pair_dupSecond

%group
�����o�֐�::����n

;--------------------
%index
Pair_setFirst
Pair �l��ݒ�[first]

%prm
self, value
modvar self  : Pair �C���X�^���X
any    value : �ݒ肷��l

%inst
�y�A�� first �ɒl��ݒ肵�܂��B

%href
Pair_set
Pair_setv
Pair_setFirst
Pair_setSecond
Pair_dup
Pair_dupFirst
Pair_dupSecond

%group
�����o�֐�::����n

;--------------------
%index
Pair_setSecond
Pair �l��ݒ�[second]

%prm
self, value
modvar self  : Pair �C���X�^���X
any    value : �ݒ肷��l

%inst
�y�A�� second �ɒl��ݒ肵�܂��B

%href
Pair_set
Pair_setv
Pair_setFirst
Pair_setSecond
Pair_dup
Pair_dupFirst
Pair_dupSecond

%group
�����o�֐�::����n

;--------------------
%index
Pair_dup
Pair �v�f�̎Q�Ɖ�

%prm
self, vRef, b
modvar self : Pair �C���X�^���X
var    vRef : �Q�Ɖ�����ϐ�
int    b    : 0 => first, 1 => second

%inst
vRef ���Ab == 0 �Ȃ� first �́Ab == 1 �Ȃ� second �̎Q�� ( �N���[�� ) �ɂ��܂��B

%href
Pair_set
Pair_setv
Pair_setFirst
Pair_setSecond
Pair_dup
Pair_dupFirst
Pair_dupSecond

%group
�����o�֐�::�擾�n

;--------------------
%index
Pair_dupFirst
Pair �Q�Ɖ�[first]

%prm
self, vRef
modvar self : Pair �C���X�^���X
var    vRef : �Q�Ɖ�����ϐ�

%inst
vRef �� first �̎Q�Ƃɂ��܂��B

%href
Pair_set
Pair_setv
Pair_setFirst
Pair_setSecond
Pair_dup
Pair_dupFirst
Pair_dupSecond

%group
�����o�֐�::�擾�n

;--------------------
%index
Pair_dupSecond
Pair �Q�Ɖ�[second]

%prm
self, vRef
modvar self : Pair �C���X�^���X
var    vRef : �Q�Ɖ�����ϐ�

%inst
vRef �� second �̎Q�Ƃɂ��܂��B

%href
Pair_set
Pair_setv
Pair_setFirst
Pair_setSecond
Pair_dup
Pair_dupFirst
Pair_dupSecond

%group
�����o�֐�::�擾�n

;--------------------
%index
Pair_getv
Pair �l�̎擾 ( �ϐ� )

%prm
self, vResult, b
modvar self    : Pair �C���X�^���X
var    vResult : �l���i�[����ϐ�
int    b       : 0 => first, 1 => second

%inst
�Е��̗v�f�̒l�� vResult �Ɋi�[���܂��B

%href
Pair_get
Pair_getv
Pair_getFirst
Pair_getSecond
Pair_getvFirst
Pair_getvSecond

%group
�����o�֐�::�擾�n

;--------------------
%index
Pair_get
Pair �l�̎擾

%prm
(self, b)
modvar self : Pair �C���X�^���X
int    b    : 0 => first, 1 => second

%inst
�Е��̗v�f�̒l���擾���ĕԂ��B

%href
Pair_get
Pair_getv
Pair_getFirst
Pair_getSecond
Pair_getvFirst
Pair_getvSecond

%group
�����o�֐�::�擾�n

;--------------------
%index
Pair_getvFirst
Pair �l�̎擾[first] ( �ϐ� )

%prm
self, vResult
modvar self    : Pair �C���X�^���X
var    vResult : �߂�l���i�[����ϐ�

%inst
first �̒l�� vResult �Ɋi�[���܂��B

%href
Pair_get
Pair_getv
Pair_getFirst
Pair_getSecond
Pair_getvFirst
Pair_getvSecond

%group
�����o�֐�::�擾�n

;--------------------
%index
Pair_getvSecond
Pair �l�̎擾[second] ( �ϐ� )

%prm
self, vResult
modvar self    : Pair �C���X�^���X
var    vResult : �߂�l���i�[����ϐ�

%inst
second �̒l�� vResult �Ɋi�[���܂��B

%href
Pair_get
Pair_getv
Pair_getFirst
Pair_getSecond
Pair_getvFirst
Pair_getvSecond

%group
�����o�֐�::�擾�n

;--------------------
%index
Pair_getFirst
Pair �l�̎擾[first]

%prm
(self)
modvar self : Pair �C���X�^���X

%inst
first �̒l���擾���ĕԂ��܂��B

%href
Pair_get
Pair_getv
Pair_getFirst
Pair_getSecond
Pair_getvFirst
Pair_getvSecond

%group
�����o�֐�::�擾�n

;--------------------
%index
Pair_getSecond
Pair �l�̎擾[second]

%prm
(self)
modvar self : Pair �C���X�^���X

%inst
second �̒l���擾���ĕԂ��܂��B

%href
Pair_get
Pair_getv
Pair_getFirst
Pair_getSecond
Pair_getvFirst
Pair_getvSecond

%group
�����o�֐�::�擾�n

;--------------------
%index
Pair_swap
Pair �v�f�̌���

%prm
self
modvar self : Pair �C���X�^���X

%inst
first �� second �̒l���������܂��B

%href

%group
�����o�֐�::����n

;--------------------
%index
Pair_clear
Pair ���� [i]

%prm
self
modvar self : Pair �C���X�^���X

%inst
first �� second �������l( int(0) )�ɂ��铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Pair_copy
Pair ���� [i]

%prm
self, mvFrom
modvar self   : Pair �C���X�^���X
modvar mvFrom : �V

%inst
self �� first, second ���ꂼ��ɁAmvFrom �� first, second ���i�[���铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Pair_chain
Pair �A�� [i]

%prm
self, mvFrom
modvar self   : Pair �C���X�^���X
modvar mvFrom : �V

%inst
Pair �ɓ���֐��u�A��(chain)�v�͂���܂���B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Pair_exchange
Pair �R���e�i���� [i]

%prm
self, mv2
modvar self : Pair �C���X�^���X
modvar mv2  : �V

%inst
self �� mv2 �̂��ׂĂ̗v�f���������铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
Pair_size
Pair �v�f�� [i]

%prm
(self)
modvar self : Pair �C���X�^���X

%inst
�y�A�̗v�f����Ԃ�����֐��ł��B�K�� 2 ��Ԃ��܂��B

%href

%group
�����o�֐�

;--------------------
%index
Pair_iterInit
Pair �����q::������

%prm
self, vIt
modvar self : Pair �C���X�^���X
var    vIt  : �������

%inst
�y�A�̔����q�����������铝��֐��ł��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
Pair_iterInit
Pair_iterNext

%group
�����o�֐�::�����q����n

;--------------------
%index
Pair_iterNext
Pair �����q::�X�V

%prm
(self, vIt, iterData)
modvar self  : Pair �C���X�^���X
var vIt      : Pair �̔����q
var iterData : �������

%inst
�y�A�̔����q���X�V���܂��B�߂�l���U( false == 0 )�̏ꍇ�A�J��Ԃ����s�킸�ɏI�����܂��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
Pair_iterInit
Pair_iterNext

%group
�����o�֐�::�����q����n
