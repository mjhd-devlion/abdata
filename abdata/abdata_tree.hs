%dll
abdata_tree

%author
Ue-dai

%date
2009/07/07

%ver
1.1.0

%type
���ۃf�[�^�^���W���[��

%group
���W���[�������o�֐�

;--------------------
%index
IsTnIdValid
�m�[�hId ���L����

%prm
()

return void	: 

%inst
�c���[�m�[�hId ���L���ȃm�[�h��\���l�ł��邩�ǂ�����Ԃ��܂��B
�����Ȃ�ΐ^�l(0�ȊO)���Ԃ�A�����Ȓl�Ȃ�U�l(0)���Ԃ�܂��B

;--------------------
%index
TNodeMod_new
���[�g�m�[�h���쐬����

%prm
p1, p2="root"
p1 = modvar	: �m�[�hId �𓾂�ϐ�
p2 = str	: �m�[�h��
return int	: �l���i�[���� p1 �̗v�f�ԍ�

%inst
�c���[�̈�ԏ�ɓ�����A���[�g�m�[�h���쐬���܂��B
�q�m�[�h�́ATNode_addChild ���߂��g�p���č쐬���Ă��������B
�m�[�h�̒l�͏����l�� int �^�� 0 �ł��B

�����̖��߂ō쐬����� p1 �́A���ۂɂ� struct �^�ł͂���܂��񂪁A
varuse ���g�p�ł��Ȃ��Avartype �� "int" �̒l��Ԃ��A�Ȃǂ̈Ⴂ�͂���܂����A
���W���[���ϐ� modvar �Ƃ��Ĉ����Ă��܂��B

;--------------------
%index
TNode_getv
�m�[�h�̒l���擾����

%prm
p1, p2
p1 = modvar	: ���W���[���ϐ�
p2 = var	: �󂯎��p�ϐ�
return void	: 

%inst
�c���[�m�[�h�̒l���A�w�肵���ϐ��ɃR�s�[���܂��B
���̒l���֐��̖߂�l�Ƃ��Đ���ȏꍇ�́A�����
TNode_get() �֐���p���Ă����܂��܂���B
�m�[�h�̒l�̌^�́ATNode_getVarType() �֐��Ŏ擾�ł��܂��B

;--------------------
%index
TNode_get
�m�[�h�̒l���擾����

%prm
(p1)
p1 = modvar	: ���W���[���ϐ�
return any	: �m�[�h�̒l

%inst
�c���[�m�[�h�̒l���A�֐��`���Ŏ擾���܂��B
�m�[�h�̒l���g�ݍ��݌^(double, int, str)�̏ꍇ�ɂ̂�
�g�p���Ă��������B

;--------------------
%index
TNode_getValueType
�m�[�h�̌^���擾����

%prm
(p1)
p1 = modvar	: ���W���[���ϐ�
return int	: �^�^�C�v�l

%inst
�c���[�m�[�h���ێ����Ă���l�̌^��Ԃ��܂��B
�Ԃ�l�́Avartype() �֐����Ԃ����̂Ɠ����ł��B

;--------------------
%index
TNode_cntChildren
�q�m�[�h�̐����擾����

%prm
(p1)
p1 = modvar	: ���W���[���ϐ�
return int	: �q�m�[�h�̐�

%inst
�c���[�m�[�h�����L���Ă���q�m�[�h�̐���Ԃ��܂��B

�����m�[�h�ȍ~�̐��͖��֌W�ł��B

;--------------------
%index
TNode_isRoot
���[�g�m�[�h�ł��邩

%prm
(p1)
p1 = modvar	: ���W���[���ϐ�
return bool	: ���[�g�m�[�h�Ȃ�^�A�����łȂ��Ȃ�U

%inst
���[�g�m�[�h���ǂ����𒲂ׂ܂��B

;--------------------
%index
TNode_getParent
���[�g�m�[�h��Id�𓾂�

%prm
(p1)
p1 = modvar	: ���W���[���ϐ�
return int	: ���[�g�m�[�hId

%inst
�ċA�I�� TNode_getParent() ��p���āA���̃c���[�̃��[�g�m�[�h���擾���A�m�[�hId �𓾂܂��B

;--------------------
%index
TNode_addChild
�q�m�[�h�̑��݂��m���߂�

%prm
(p1, p2)
p1 = modvar	: �e�m�[�h�̃��W���[����
p2 = str	: �m�[�h��
return bool	: ���݂�����^

%inst
�w�肵���m�[�h���̎q�m�[�h�����݂��邩�ǂ����𒲂ׂ܂��B
���݂����ꍇ�͐^( 0 �ȊO )���Ԃ���܂��B
�Ȃ��ꍇ�͋U( 0 )���Ԃ�܂��B

���̊֐����́uTNode_exist's'Child�v�ł��B
exists �� s �������Ȃ��悤�ɋC��t���Ă��������B

;--------------------
%index
TNode_getChild
�q�m�[�h��Id �𓾂�

%prm
(p1, p2)
p1 = modvar	: �e�m�[�h�̃��W���[���ϐ�
p2 = str	: �q�m�[�h��
return int	: �q�m�[�h��Id

%inst
�q�m�[�h��Id ��Ԃ��܂��B�q�m�[�h�̓��[�g�m�[�h�Ɠ����悤�Ɏg�p�ł��܂��B

���s�����ꍇ�͕������Ԃ�܂��B

���̖��߂́ATNChild �ł���p�ł��܂����A���x���Q�Ƃ���ꍇ��A
�X�N���v�g�������Ȃ�̂����ȏꍇ�ȂǂɎg�p�ł��܂��B

;--------------------
%index
TNChild
�q�m�[�h�̃��W���[���ϐ�

%prm
(p1, p2)
p1 = modvar	: �e�m�[�h�̃��W���[���ϐ�
p2 = str	: �m�[�h��
return modvar	: �q�m�[�h�̃��W���[���ϐ�

%inst
�w�肵���m�[�h���̎q�m�[�h��Ԃ��֐��ł��B
���݂��Ȃ��ꍇ�̓G���[�ɂȂ�\���������̂ŁA
�K�� TNode_existsChild() �֐��ő��݂��m���߂Ă����Ă��������B

����́A�Ăяo�����тɎq�m�[�h���������邽�߁A�ᑬ�ł��B
���x���Ăяo���ꍇ�́A��x TNode_getChild ���߂�
�N���[�����쐬���Ă������Ƃ𐄏����܂��B

���ӁF���̊֐��͓���q�ɂł��܂���B
�@�@�@(��) TNChild( TNChild(m, "x"), "y" )
�@�@�@����Ή�����\��ł��B
���ӁF���̊֐���p���Ă̍ċA�����͍s���܂���B

�����ۂɂ͊֐��ł͂���܂��񂪁A�����������ł͂���܂���B

;--------------------
%index
TNParent
�e�m�[�h�̃��W���[���ϐ�

%prm
(p1)
p1 = modvar	: ���W���[���ϐ� ( ���[�g�m�[�h�łȂ����� )
return modvar	: �e�m�[�h�̃��W���[���ϐ�

%inst
�w�肵���m�[�h�̐e�m�[�h�̃��W���[���ϐ���Ԃ��֐��ł��B

���̊֐��́ATNChild() �Ƃ͈Ⴂ�A���܂�ᑬ�ł͂���܂���B
10����x�̎Q�ƂȂ�ATNode_getParent �����Ȃ��Ă���肠��܂���B
( ���܂�ɎQ�Ɖ񐔂������ꍇ�͕ʂł����B )

���ӁF���[�g�m�[�h�̐e�͑��݂��Ȃ��̂ŁA���̏ꍇ�� int �^�� 0 ���Ԃ��Ă��܂��B

;--------------------
%index
TNode_clear
�m�[�h���N���A����

%prm
p1
p1 = modvar	: ���W���[���ϐ�
return void	: 

%inst
�c���[�m�[�h�̒l�����������A���̎q���m�[�h�����ׂč폜���܂��B

;--------------------
%index
TNode_delete
�m�[�h���폜����

%prm
p1
p1 = modvar	: ���W���[���ϐ�
return void	: 

%inst
�c���[�m�[�h���폜���܂��B

�܂��A���̃m�[�h�̎q���m�[�h���A���ׂč폜����܂��B
�폜���ꂽ�m�[�h�̃N���[���������ɂȂ�܂��B
�����ȃN���[�����g�p���Ȃ��悤�ɋC��t���Ă��������B

;--------------------
%index
TNode_chain
�m�[�h��A������

%prm
p1, p2
p1 = modvar	: ���W���[���ϐ�
p2 = modvar	: �A����
return void	: 

%inst
�m�[�h�̎��q���m�[�h���ׂĂ��ċA�I�ɕ������A�ǉ����܂��B

;--------------------
%index
TNode_copy
�m�[�h�𕡐�����

%prm
p1, p2
p1 = modvar	: ���W���[���ϐ�
p2 = modvar	: ������
return void	: 

%inst
�m�[�h�̒l�ƁA���̎q�m�[�h���ׂĂ��ċA�I�ɕ������܂��B

;--------------------
%index
TNode_exchange
�m�[�h����������

%prm
p1, p2
p1 = modvar	: �m�[�h1
p2 = modvar	: �m�[�h2
return void	: 

%inst
2�̃m�[�h���������܂��B

