;#############################
%dll
abdata_pair

%author
uedai

%date
2010 07/15 (Sat)	// �ŏI�X�V
2010 06/25 (Fri)	// 
2009 09/02 (Wed)	// 
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
new_pair
Pair �\�z (�ꎞ)

%prm
([lhs], [rhs])
var lhs  : �������l
var rhs  : �����E�l

%inst
�V�����y�A (Pair) ���\�z���A�Ԃ��܂��B�����l�� <lhs, rhs> �ł� ( �ȗ��� )�B�ǂ�����A�����l���ȗ����ꂽ�v�f�� 0 ���i�[����܂��B

%href
new_pair
pair_new
pair_delete

%group
�\�z�֐�

;--------------------
%index
pair_new
Pair �\�z

%prm
self, [lhs], [lhs]
inst self : ���W���[���ϐ�
any  lhs  : �������l
any  rhs  : �����E�l

%inst
�y�A (Pair) ���\�z���܂��B�����l�� <lhs, rhs> �ł� ( �ȗ��� )�B�ǂ�����A�����l���ȗ����ꂽ�v�f�� 0 ���i�[����܂��B

�y�A�̗v�f�ԍ��́Alhs, rhs �̏��� 0, 1 �ŁA���̒l�͒萔 PairIdx_Lhs, PairIdx_Rhs �œ����܂��B

%href
new_pair
pair_new
pair_delete

%group
�\�z�֐�

;--------------------
%index
pair_delete
Pair ���

%prm
self
inst self : Pair �C���X�^���X

%inst
�y�A (Pair) ����̂��܂��B

���̊֐��̓v���O�����I�����Ɏ����ŌĂяo����邽�߁A�ʏ�A�Ăяo���K�v�͂���܂���B

%href
new_pair
pair_new
pair_delete

%group
��̊֐�

;--------------------
%index
pair_set
Pair �l�̕ύX

%prm
self, value, idx
inst self  : Pair �C���X�^���X
any  value : �l
int  idx   : �v�f�ԍ�

%inst
�y�A�̒l�̕Е��� value �ɐݒ肵�܂��B

%href
pair_set
pair_setv
pair_setLhs
pair_setRhs

pair_setBoth
pair_setvBoth

pair_clone
pair_cloneLhs
pair_cloneRhs

%group
�����o�֐�::����n

;--------------------
%index
pair_setv
Pair �l��ݒ� ( �ϐ� )

%prm
self, vValue, idx
inst self   : Pair �C���X�^���X
var  vValue : �l���i�[���ꂽ�ϐ�
int  idx    : �v�f�ԍ�

%inst
�y�A�̕Е��̗v�f�ɒl��ݒ肵�܂��B

%href
pair_set
pair_setv
pair_setLhs
pair_setRhs

pair_setBoth
pair_setvBoth

pair_clone
pair_cloneLhs
pair_cloneRhs

%group
�����o�֐�::����n

;--------------------
%index
pair_setLhs
Pair �l��ݒ� (lhs)

%prm
self, value
inst self  : Pair �C���X�^���X
any  value : �ݒ肷��l

%inst
�y�A�� lhs �ɒl��ݒ肵�܂��B

%href
pair_set
pair_setv
pair_setLhs
pair_setRhs

pair_setBoth
pair_setvBoth

pair_clone
pair_cloneLhs
pair_cloneRhs

%group
�����o�֐�::����n

;--------------------
%index
pair_setRhs
Pair �l��ݒ� (lhs)

%prm
self, value
inst self  : Pair �C���X�^���X
any  value : �ݒ肷��l

%inst
�y�A�� rhs �ɒl��ݒ肵�܂��B

%href
pair_set
pair_setv
pair_setLhs
pair_setRhs

pair_setBoth
pair_setvBoth

pair_clone
pair_cloneLhs
pair_cloneRhs

%group
�����o�֐�::����n

;--------------------
%index
pair_setBoth
Pair �l�̕ύX (����)

%prm
self, valueLhs, valueRhs
inst self     : Pair �C���X�^���X
any  valueLhs : lhs �l
any  valueRhs : rhs �l

%inst
�y�A�̒l�� <valueLhs, valueRhs> �ɐݒ肵�܂��B

%href
pair_set
pair_setv
pair_setLhs
pair_setRhs

pair_setBoth
pair_setvBoth

pair_clone
pair_cloneLhs
pair_cloneRhs

%group
�����o�֐�::����n

;--------------------
%index
pair_setvBoth
Pair �l�̕ύX (����) (�ϐ�)

%prm
self, vLhs, vRhs
inst self : Pair �C���X�^���X
var  vLhs : lhs �l
var  vRhs : rhs �l

%inst
�y�A�̒l�� <vLhs, vRhs> ���ꂼ��̒l�ɐݒ肵�܂��B

%href
pair_set
pair_setv
pair_setLhs
pair_setRhs

pair_setBoth
pair_setvBoth

pair_clone
pair_cloneLhs
pair_cloneRhs

%group
�����o�֐�::����n

;--------------------
%index
pair_clone
Pair �v�f�̎Q�Ɖ�

%prm
self, vRef, idx
inst self : Pair �C���X�^���X
var  vRef : �N���[��������ϐ�
int  idx  : �v�f�ԍ�

%inst
vRef ���A�Е��̃N���[���ɂ��܂��B

%href
pair_set
pair_setv
pair_setLhs
pair_setRhs

pair_setBoth
pair_setvBoth

pair_clone
pair_cloneLhs
pair_cloneRhs

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_cloneLhs
Pair �N���[���� (lhs)

%prm
self, vRef
inst self : Pair �C���X�^���X
var  vRef : �N���[��������ϐ�

%inst
vRef �� lhs �̃N���[���ɂ��܂��B

%href
pair_set
pair_setv
pair_setLhs
pair_setRhs

pair_setBoth
pair_setvBoth

pair_clone
pair_cloneLhs
pair_cloneRhs

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_cloneRhs
Pair �N���[���� (rhs)

%prm
self, vRef
inst self : Pair �C���X�^���X
var  vRef : �N���[��������ϐ�

%inst
vRef �� rhs �̃N���[���ɂ��܂��B

%href
pair_set
pair_setv
pair_setLhs
pair_setRhs

pair_setBoth
pair_setvBoth

pair_clone
pair_cloneLhs
pair_cloneRhs

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_getv
Pair �l�̎擾 ( �ϐ� )

%prm
self, vResult, idx
inst self    : Pair �C���X�^���X
var  vResult : �l���i�[����ϐ�
int  idx     : �v�f�ԍ�

%inst
�Е��̗v�f�̒l�� vResult �Ɋi�[���܂��B

%href
pair_get
pair_getv
pair_getLhs
pair_getRhs
pair_getvLhs
pair_getvRhs
pair_getvBoth

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_get
Pair �l�̎擾

%prm
(self, idx)
inst self : Pair �C���X�^���X
int  idx  : �v�f�ԍ�

%inst
�Е��̗v�f�̒l���擾���ĕԂ��B

%href
pair_get
pair_getv
pair_getLhs
pair_getRhs
pair_getvLhs
pair_getvRhs
pair_getvBoth

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_getvLhs
Pair �l�̎擾 (lhs) ( �ϐ� )

%prm
self, vResult
inst self    : Pair �C���X�^���X
var  vResult : �Ԓl���i�[����ϐ�

%inst
lhs �̒l�� vResult �Ɋi�[���܂��B

%href
pair_get
pair_getv
pair_getLhs
pair_getRhs
pair_getvLhs
pair_getvRhs
pair_getvBoth

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_getvRhs
Pair �l�̎擾 (rhs) ( �ϐ� )

%prm
self, vResult
inst self    : Pair �C���X�^���X
var  vResult : �Ԓl���i�[����ϐ�

%inst
rhs �̒l�� vResult �Ɋi�[���܂��B

%href
pair_get
pair_getv
pair_getLhs
pair_getRhs
pair_getvLhs
pair_getvRhs
pair_getvBoth

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_getvBoth
Pair �l�̎擾 (both) ( �ϐ� )

%prm
self, vResultLhs, vResultRhs
inst self       : Pair �C���X�^���X
var  vResultLhs : lhs �̒l���i�[����ϐ�
var  vResultRhs : rhs �̒l���i�[����ϐ�

%inst
lhs, rhs �̒l�����ꂼ�� vResultLhs, vResultRhs �Ɋi�[���܂��B

%href
pair_get
pair_getv
pair_getLhs
pair_getRhs
pair_getvLhs
pair_getvRhs
pair_getvBoth

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_getLhs
Pair �l�̎擾 (lhs)

%prm
(self)
inst self : Pair �C���X�^���X

%inst
lhs �̒l���擾���ĕԂ��܂��B

%href
pair_get
pair_getv
pair_getLhs
pair_getRhs
pair_getvLhs
pair_getvRhs
pair_getvBoth

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_getRhs
Pair �l�̎擾 (rhs)

%prm
(self)
inst self : Pair �C���X�^���X

%inst
rhs �̒l���擾���ĕԂ��܂��B

%href
pair_get
pair_getv
pair_getLhs
pair_getRhs
pair_getvLhs
pair_getvRhs
pair_getvBoth

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_vartype
Pair �^�̎擾

%prm
(self, idx)
inst self : Pair �C���X�^���X
int  idx  : �v�f�ԍ�

%inst
�y�A�̕Е��̗v�f�̒l�̌^��Ԃ��܂��B

%href
pair_vartype
pair_vartypeLhs
pair_vartypeRhs

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_vartypeLhs
Pair �^�̎擾 (lhs)

%prm
(self)
inst self : �y�A

%inst
�y�A�̗v�f lhs �̒l�̌^��Ԃ��܂��B

%href
pair_vartype
pair_vartypeLhs
pair_vartypeRhs

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_vartypeRhs
Pair �^�̎擾 (rhs)

%prm
(self)
inst self : �y�A

%inst
�y�A�̗v�f rhs �̒l�̌^��Ԃ��܂��B

%href
pair_vartype
pair_vartypeLhs
pair_vartypeRhs

%group
�����o�֐�::�擾�n

;--------------------
%index
pair_loc_swap
Pair �v�f�̌���

%prm
self
inst self : Pair �C���X�^���X

%inst
lhs �� rhs �̒l���������܂��B

%href

%group
�����o�֐�::����n

;--------------------
%index
pair_clear
Pair ���� [i]

%prm
self
inst self : Pair �C���X�^���X

%inst
lhs �� rhs �����ɏ����l (int(0)) �ɂ��铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
pair_copy
Pair ���� [i]

%prm
self, src
inst self : Pair �C���X�^���X
inst src  : �V

%inst
self �� <lhs, rhs> ���ꂼ��ɁAsrc �� <lhs, rhs> ���i�[���铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
pair_chain
Pair �A�� [i] [!E]

%prm
self, src
inst self : Pair �C���X�^���X
inst src  : �V

%inst
Pair �ɓ���֐��u�A��(chain)�v�͂���܂���B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
pair_swap
Pair �R���e�i���� [i]

%prm
self, obj
inst self : Pair �C���X�^���X
inst obj  : �V

%inst
self �� obj �̂��ׂĂ̗v�f���������铝��֐��ł��B

%href

%group
�����o�֐�::�R���e�i����n

;--------------------
%index
pair_size
Pair �v�f�� [i]

%prm
(self)
inst self : Pair �C���X�^���X

%inst
�y�A�̗v�f����Ԃ�����֐��ł��B
�d�l��A�K�� 2 ��Ԃ��܂��B

%href

%group
�����o�֐�

;--------------------
%index
pair_iterInit
Pair �����q::������

%prm
self, vIt
inst self : Pair �C���X�^���X
var  vIt  : �������

%inst
�y�A�̔����q�����������铝��֐��ł��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
pair_iterInit
pair_iterNext

%group
�����o�֐�::�����q����n

;--------------------
%index
pair_iterNext
Pair �����q::�X�V

%prm
(self, vIt, iterData)
inst self     : Pair �C���X�^���X
var  vIt      : Pair �̔����q
var  iterData : �������

%inst
�y�A�̔����q���X�V���܂��B�Ԓl���U( false == 0 )�̏ꍇ�A�J��Ԃ����s�킸�ɏI�����܂��B

@ alg_iter �������Ŏg�p���邾���ł��B

%href
pair_iterInit
pair_iterNext

%group
�����o�֐�::�����q����n

;--------------------
%index
PairIdx_Lhs
Pair �v�f�ԍ� �萔 (lhs)

%prm

%inst
�y�A�� lhs �̗v�f�ԍ���\���萔�ł��B

%href
;PairIdx_Lhs
PairIdx_Rhs

%group
�����o�萔::�v�f�ԍ�

;--------------------
%index
PairIdx_Rhs
Pair �v�f�ԍ� �萔 (rhs)

%prm

%inst
�y�A�� rhs �̗v�f�ԍ���\���萔�ł��B

%href
PairIdx_Lhs
;PairIdx_Rhs

%group
�����o�萔::�v�f�ԍ�
