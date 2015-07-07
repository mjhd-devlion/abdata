// Tree - �؍\��

#ifndef IG_ABSTRACT_DATA_STRUCTURE_TREE_AS
#define IG_ABSTRACT_DATA_STRUCTURE_TREE_AS

#include "mod_pvalptr.as"
#include "mod_shiftArray.as"
#include "alg_iter.as"

/**+
 * abdata_tree
 * Abstract Data - Tree
 * @author Ue-dai
 * @date   2009/07/09
 * @ver    1.1.1
 * @type   ���ۃf�[�^�^���W���[��
 * @group  ���W���[�������o�֐�
 */

//##############################################################################
//                �m�[�h�E���W���[��
//##############################################################################
#module abdata_tree mValue, mName, mChildren, mIdParent, mcntChildren,  mIter_v, mIter_c

#define VAR_TEMP stt_temp@abdata_tree

#define ctype LOWORD(%1) ((%1) & 0xFFFF)
#define ctype HIWORD(%1) LOWORD((%1) >> 16)

#define global TNID_PARENT_OF_ROOT (0x7FFFFFFF)
#define global TNID_DISABLE        (0xFFFFFFFF)

#define mIter mIter_v(mIter_c)

#defcfunc TNode_toRegularName str _name,  local sName, local c
	sName = _name
	c     = peek(sName)
	if ( '0' <= c && c <= '9' ) {
		return "#"+ sName
	}
	return sName
	
/**
 * �m�[�hId �����[�g�̐e��
 * �c���[�m�[�hId �����[�g�m�[�h�̐e�m�[�h��\���l�ł��邩�ǂ�����Ԃ��܂��B
 * �����Ȃ�ΐ^�l(0���Ԃ�)�A�ʏ�̃m�[�h��\���Ȃ�U�l(0)���Ԃ�܂��B
 * 
 * @return = void
 */
#defcfunc IsTnIdParentOfRoot int tnId
	return ( tnId == TNID_PARENT_OF_ROOT )
	
/**
 * �m�[�hId ���L����
 * �c���[�m�[�hId ���L���ȃm�[�h��\���l�ł��邩�ǂ�����Ԃ��܂��B
 * �����Ȃ�ΐ^�l(0�ȊO)���Ԃ�A�����Ȓl�Ȃ�U�l(0)���Ԃ�܂��B
 * 
 * @return = void
 */
#defcfunc IsTnIdValid int tnId
	if ( tnId <= 0 || length(stt_allInsts) <= tnId ) {
		return false
	}
	return varuse(stt_allInsts(tnId))
	
/*;*
 * abdata_tree �̃C���X�^���X�𓾂�
 * �m�[�hId ����A�c���[�m�[�h�̃C���X�^���X���擾���܂��B
 * 
 * @prm p1 = var    : �c���[�m�[�h�̃N���[���ɂ���ϐ�
 * @prm p2 = int    : �c���[�m�[�hId
 * @return = void
 */
#deffunc TNode_getInstance var vResult, int tnId, int nIdx
	stt_TNInstance_var(nIdx) = stt_allInsts(tnId)
	return
	
/*;*
 * abdata_tree �̃C���X�^���X��Ԃ�
 * �m�[�hId ����A�c���[�m�[�h�̃C���X�^���X���擾���A�Ԃ��܂��B
 * 
 * @prm p1 = int    : �c���[�m�[�h Id
 * @return = modvar : �C���X�^���X
 */
#define global ctype TNInstance(%1,%2=0) stt_allInsts@abdata_tree(%1);stt_TNInstance_var@abdata_tree(TNInstance_core@abdata_tree(%1,%2))
#defcfunc local TNInstance_core int tnId, int nIdx
	TNode_getInstance stt_TNInstance_var, tnId, nIdx
	return nIdx
	
// �m�[�h����Ԃ�
#modcfunc TNodeMod_getName
	return mName
	
// �e�m�[�h��Id ��Ԃ�
#modcfunc TNodeMod_getParent
	return midParent
	
// ���[�g�m�[�h��Id ��Ԃ�
#modcfunc TNodeMod_getRoot  local node, local idParent
	node = thismod
	
	repeat
		idParent = TNodeMod_getParent(node)
		if ( IsTnIdParentOfRoot( idParent ) == false ) {
			break
		} else {
			TNode_getInstance node, idParent
		}
	loop
	return
	
// �e�m�[�h��Id��ύX����
#modfunc TNodeMod_setParent int tnId
	midParent = tnId
	return
	
// �q�m�[�hId��ǉ�����
#modfunc TNodeMod_addChildId int tnId
	mChildren( mcntChildren ) = tnId
	mcntChildren ++
	return mcntChildren - 1
	
// �q�m�[�h���폜����
#modfunc TNodeMod_removeChild int nIdx
	delmod TNInstance( mChildren(nIdx) )		// �j��
	
	ArrayRemove mChildren, nIdx
	mcntChildren --
	return
	
// �q�m�[�h�̃C���f�b�N�X�𓾂�
#modcfunc TNodeMod_getChildIdx str _name,  local sName, local nIdx
	sName =  TNode_toRegularName(_name)
	nIdx  = -1
	
	// ���l
	if ( peek(sName) == '#' ) {
		getstr sName, sName, 1
		nIdx = int(sName)
		
		if ( nIdx < 0 || mcntChildren <= nIdx ) {		// �q�m�[�h�͈̔͊O�ł���ꍇ
			nIdx = -1
		}
		return nIdx
	}
	
	// ������
	foreach mChildren
		if ( IsTnIdValid(mChildren(cnt)) == false ) { continue }
		if ( _name == TNodeMod_getName( TNInstance(mChildren(cnt)) ) ) {
			nIdx = cnt
			break
		}
	loop
	
	return nIdx
	
// �q�m�[�h�͑��݂��邩�ǂ���
#modcfunc TNodeMod_existsChild str _name
	return TNodeMod_getChildIdx(thismod, _name) >= 0
	
// �q�m�[�h�̃c���[Id�𓾂�
#modcfunc TNodeMod_getChild str _name,  local nIdx
	nIdx = TNodeMod_getChildIdx(thismod, _name)
	if ( nIdx >= 0 ) {
		return mChildren(nIdx)
	}
	return TNID_DISABLE
	
/**
 * �m�[�h�̒l��ݒ肷��
 * �c���[�m�[�h�̒l��ݒ肵�܂��B
 * �l�ɂ́A�ǂ�Ȍ^�ł��i�[�ł��܂����A
 * ������Z�q = �Ő���ɃR�s�[�ł���^�łȂ��Ă͂Ȃ�܂���B
 * ( p2 �̒l�́A��U�A�ϐ��ɃR�s�[����܂� )
 * 
 * p2 �ɕϐ����w�肷��ꍇ�́ATNode_setv �Ƃ��邱�Ƃ��ł��܂��B
 * �ϐ���n���ꍇ�́A��������g�p���������A���ʂ��Ȃ������I�ł��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @prm p2 = any	: �l
 * @return = void
 */
#define global TNode_set(%1,%2)  TNodeMod_set  TNInstance(%1), %2
#define global TNode_setv(%1,%2) TNodeMod_setv TNInstance(%1), %2

#define global TNodeMod_set(%1,%2) VAR_TEMP@abdata_tree = (%2) : TNodeMod_setv %1, VAR_TEMP@abdata_tree
#modfunc TNodeMod_setv var p2
	mValue = p2
	return
	
/**
 * ���[�g�m�[�h���쐬����
 * �c���[�̈�ԏ�ɓ�����A���[�g�m�[�h���쐬���܂��B
 * �q�m�[�h�́ATNode_addChild ���߂��g�p���č쐬���Ă��������B
 * �m�[�h�̒l�͏����l�� int �^�� 0 �ł��B
 * 
 * �����̖��߂ō쐬����� p1 �́A���ۂɂ� struct �^�ł͂���܂��񂪁A
 * �@Node_* �n�̖��߁E�֐��́A��������W���[���ϐ� (modvar) �Ƃ��Ď󂯎��܂��B
 * �@�Ȃ��Avaruse ���g�p�ł��Ȃ��Avartype �� "int" �̒l��Ԃ��A�Ȃǂ̈Ⴂ������܂��B
 * 
 * @prm p1 = modvar       : �m�[�hId �𓾂�ϐ�
 * @prm p2 = str ("root") : �m�[�h��
 * @return = int          : �l���i�[���� p1 �̗v�f�ԍ�
 */
#define global TRoot_new(%1,%2="root") TNode_new %1, %2, TNID_PARENT_OF_ROOT
#define global TRootMod_new(%1="root") TNodeMod_new  %1, TNID_PARENT_OF_ROOT
#define global TNodeMod_new(%1,%2) newmod stt_allInsts@abdata_tree, abdata_tree@, %1, %2

#deffunc TNode_new array aryTnId, str _name, int parentId,  local id_new
	TNodeMod_new _name, parentId
	id_new = stat
	TNode_addNode aryTnId, id_new
	return stat
	
#deffunc TNode_addNode array aryTnId, int id_new,  local nIdx
	nIdx = -1
	
	// �g���Ă��Ȃ��v�f��T��
	foreach aryTnId
		if ( IsTnIdValid( aryTnId(cnt) ) == false ) {
			nIdx = cnt
			break
		}
	loop
	
	if ( nIdx < 0 ) {
		nIdx = length(aryTnId)
	}
	
	aryTnId( nIdx ) = id_new
	return nIdx
	
#define global CreateTreeRoot TRoot_new
#define global CreateTreeNode TNode_new

/**
 * �m�[�h�̒l���擾����
 * �c���[�m�[�h�̒l���A�w�肵���ϐ��ɃR�s�[���܂��B
 * ���̒l���֐��̖߂�l�Ƃ��Đ���ȏꍇ�́A�����
 * TNode_get() �֐���p���Ă����܂��܂���B
 * �m�[�h�̒l�̌^�́ATNode_getVarType() �֐��Ŏ擾�ł��܂��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @prm p2 = var	: �󂯎��p�ϐ�
 * @return = void
 */
#define global TNode_getv(%1,%2) TNodeMod_getv TNInstance(%1), %2
#modfunc TNodeMod_getv var p2
	p2 = mValue
	return
	
/**
 * �m�[�h�̒l���擾����
 * �c���[�m�[�h�̒l���A�֐��`���Ŏ擾���܂��B
 * �m�[�h�̒l���g�ݍ��݌^(double, int, str)�̏ꍇ�ɂ̂�
 * �g�p���Ă��������B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @return = any	: �m�[�h�̒l
 */
#define global ctype TNode_get(%1) TNodeMod_get(TNInstance(%1))
#modcfunc TNodeMod_get
	return mValue
	
/**
 * �m�[�h�̌^���擾����
 * �c���[�m�[�h���ێ����Ă���l�̌^��Ԃ��܂��B
 * �Ԃ�l�́Avartype() �֐����Ԃ����̂Ɠ����ł��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @return = int	: �^�^�C�v�l
 */
#define global ctype TNode_getValueType(%1) TNodeMod_getValueType( TNInstance(%1) )
#modcfunc TNodeMod_getValueType
	return vartype(mValue)
	
/**
 * �q�m�[�h�̐����擾����
 * �c���[�m�[�h�����L���Ă���q�m�[�h�̐���Ԃ��܂��B
 * 
 * �����m�[�h�ȍ~�̐��͖��֌W�ł��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @return = int	: �q�m�[�h�̐�
 * 
 * @ TNode_size(), TNode_count(), TNode_length() �Ɠ����B
 * @! ���̐��� length(mChildren) �Ƃ͈Ⴄ�̂Œ���
 */
#define global ctype TNode_cntChildren(%1) TNodeMod_cntChildren( TNInstance(%1) )
#modcfunc TNodeMod_cntChildren
	return mcntChildren
	
#define global TNode_empty  TNode_cntChildren
#define global TNode_size   TNode_cntChildren
#define global TNode_count  TNode_cntChildren
#define global TNode_length TNode_cntChildren
	
/**
 * ���[�g�m�[�h�ł��邩
 * ���[�g�m�[�h���ǂ����𒲂ׂ܂��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @return = bool	: ���[�g�m�[�h�Ȃ�^�A�����łȂ��Ȃ�U
 */
#define global ctype TNode_isRoot(%1) TNodeMod_isRoot( TNInstance(%1) )
#modcfunc TNodeMod_isRoot
	return ( mIdParent == TNID_PARENT_OF_ROOT )
	
/**
 * �e�m�[�h��Id�𓾂�
 * �c���[�m�[�h�̐e��Id��Ԃ��܂��B
 * ���[�g�m�[�h���w�肵���ꍇ�́A������ID�l���Ԃ�܂��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @prm p2 = var	: �N���[���ɂ���ϐ�
 * @return = void
 */
#define global ctype TNode_getParent(%1) TNodeMod_getParent( TNInstance(%1) )

/**
 * ���[�g�m�[�h��Id�𓾂�
 * �ċA�I�� TNode_getParent() ��p���āA���̃c���[�̃��[�g�m�[�h���擾���A�m�[�hId �𓾂܂��B
 * 
 * @prm p1 = modvar : ���W���[���ϐ�
 * @return = int    : ���[�g�m�[�hId
 */
#defcfunc TNode_getRoot int _thisId,  local thisId
	thisId = _thisId
	
	repeat
		if ( TNode_isRoot( thisId ) ) { break }
		thisId = TNode_getParent( thisId )
	loop
	
	return thisId
	
/**
 * �m�[�h�����擾����
 * �c���[�m�[�h�̃m�[�h����Ԃ��܂��B
 * �m�[�h���́A�q�m�[�h��I������ꍇ�ɂ̂ݎg�p���܂��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @return = str	: �m�[�h��
 */
#define global ctype TNode_getName(%1) TNodeMod_getName( TNInstance(%1) )

/**
 * �q�m�[�h(������)��ǉ�����
 * p1 �ɕ����؂��A�q�m�[�h�Ƃ��Ēǉ����܂��B
 * �ǉ������ p2 �� Root �������ꍇ�A���ʂ����ɂ��̂܂܌q���܂��B
 * Root �Ŗ��������ꍇ�́A���ʂ������̂�A�����܂��B
 * �q�m�[�h�̃��W���[���ϐ����擾����ɂ́A
 * TNode_getChild ���߂��g�p���Ă��������B
 * 
 * @prm p1 = modvar	: �e�m�[�h�̃��W���[���ϐ�
 * @prm p2 = modvar : ������
 * @return = int    : �ǉ������q�m�[�h�̃m�[�hId
 */
#define global TNode_addSubTree(%1,%2) TNodeMod_addSubTree TNInstance(%1), %2, %1

#modfunc TNodeMod_addSubTree int subTreeId, int thisId,  local id_new, local srcId, local tmpNode
	if ( TNode_isRoot(subTreeId) ) {
		TNodeMod_setParent  TNInstance(subTreeId), thisId
		srcId = subTreeId
	} else {
		TRoot_new  tmpNode, TNode_getName(subTreeId)
		TNode_copy tmpNode, subTreeId
		srcId = tmpNode
		assert
	}
	
	TNode_addNode mChildren, srcId
	id_new = mChildren( stat )
	mcntChildren ++
	return id_new
	
/**
 * �q�m�[�h��ǉ�����
 * �q�m�[�h��V�K�쐬���Ap1 �ɒǉ����܂��B
 * �q�m�[�h�̃��W���[���ϐ����擾����ɂ́A
 * TNode_getChild ���߂��g�p���Ă��������B
 * 
 * @prm p1 = modvar	: �e�m�[�h�̃��W���[���ϐ�
 * @prm p2 = str	: �m�[�h��
 * @return = int    : �쐬�����q�m�[�h�̃m�[�hId
 */
#define global TNode_addChild(%1,%2) TNodeMod_addChild TNInstance(%1), %2, %1

#modfunc TNodeMod_addChild str _name, int thisId,  local id_new
	TNode_new mChildren, _name, thisId
	id_new =  mChildren( stat )
	mcntChildren ++
	return id_new
	
/**
 * �q�m�[�h�̑��݂��m���߂�
 * �w�肵���m�[�h���̎q�m�[�h�����݂��邩�ǂ����𒲂ׂ܂��B
 * ���݂����ꍇ�͐^( 0 �ȊO )���Ԃ���܂��B
 * �Ȃ��ꍇ�͋U( 0 )���Ԃ�܂��B
 * 
 * ���̊֐����́uTNode_exist's'Child�v�ł��B
 * exists �� s �������Ȃ��悤�ɋC��t���Ă��������B
 * 
 * @prm p1 = modvar	: �e�m�[�h�̃��W���[����
 * @prm p2 = str	: �m�[�h��
 * @return bool		: ���݂�����^
 */
#defcfunc TNode_existsChild int thisId, str _name
	return TNodeMod_existsChild( TNInstance(thisId), _name )
	
/**
 * �q�m�[�h��Id �𓾂�
 * �q�m�[�h��Id ��Ԃ��܂��B�q�m�[�h�̓��[�g�m�[�h�Ɠ����悤�Ɏg�p�ł��܂��B
 * 
 * ���s�����ꍇ�͕������Ԃ�܂��B
 * 
 * ���̖��߂́ATNChild �ł���p�ł��܂����A���x���Q�Ƃ���ꍇ��A
 * �X�N���v�g�������Ȃ�̂����ȏꍇ�ȂǂɎg�p�ł��܂��B
 * 
 * @prm p1 = modvar	: �e�m�[�h�̃��W���[���ϐ�
 * @prm p2 = str	: �q�m�[�h��
 * @return = int	: �q�m�[�h��Id
 */
#define global ctype TNode_getChild(%1,%2) TNodeMod_getChild( TNInstance(%1), str(%2) )

// �K�w�\���Ή�
#defcfunc TNode_getChildHier int _thisId, str _name,  local thisId, local sName, local stmp
	thisId = _thisId
	sName  = _name
	
	if ( peek(sName) == '/' ) {			// ��΃p�X
		getstr sName, sName, 1
		thisId = TNode_getRoot(thisId)	// ���[�g�m�[�h���猟���J�n
	}
	repeat
		if ( instr(sName, , "/") >= 0 ) {
			getstr  stmp, sName, 0, '/'
			getstr sName, sName, strsize
			thisId = TNode_getChildHier( thisId, stmp )
		} else {
			break
		}
	loop
	return TNode_getChild( thisId, sName )
	
/**
 * �q�m�[�h�̃��W���[���ϐ�
 * �w�肵���m�[�h���̎q�m�[�h��Ԃ��֐��ł��B
 * ���݂��Ȃ��ꍇ�̓G���[�ɂȂ�\���������̂ŁA
 * �K�� TNode_existsChild() �֐��ő��݂��m���߂Ă����Ă��������B
 * 
 * ����́A�Ăяo�����тɎq�m�[�h���������邽�߁A�ᑬ�ł��B
 * ���x���Ăяo���ꍇ�́A��x TNode_getChild ���߂�
 * �N���[�����쐬���Ă������Ƃ𐄏����܂��B
 * 
 * ���ӁF���̊֐��͓���q�ɂł��܂���B
 * �@�@�@(��) TNChild( TNChild(m, "x"), "y" )
 * �@�@�@����Ή�����\��ł��B
 * ���ӁF���̊֐���p���Ă̍ċA�����͍s���܂���B
 * 
 * �����ۂɂ͊֐��ł͂���܂��񂪁A�����������ł͂���܂���B
 * 
 * @prm p1 = modvar	: �e�m�[�h�̃��W���[���ϐ�
 * @prm p2 = str	: �m�[�h��
 * @return modvar	: �q�m�[�h�̃��W���[���ϐ�
 */
#define global ctype TNChild(%1,%2) stt_tnchild_var@abdata_tree(TNChild_core@abdata_tree(%1,%2))
#defcfunc TNChild_core@abdata_tree int thisId, str _name
	TNode_getInstance stt_tnchild_var, TNode_getChild( thisId, _name )		// �N���[���ɂ���
	return 0
	
// �K�w�\���Ή� ( �ᑬ(1/2) )
#define global ctype TNChildHier(%1,%2) stt_tnchild_var@abdata_tree(TNChildHier_core@abdata_tree(%1,%2))
#defcfunc TNChildHier_core@abdata_tree int thisId, str _name
	TNode_getInstance stt_tnchild_var, TNode_getChildHier( thisId, _name )
	return 0
	
/**
 * �e�m�[�h�̃��W���[���ϐ�
 * �w�肵���m�[�h�̐e�m�[�h�̃��W���[���ϐ���Ԃ��֐��ł��B
 * 
 * ���̊֐��́ATNChild() �Ƃ͈Ⴂ�A���܂�ᑬ�ł͂���܂���B
 * 10����x�̎Q�ƂȂ�ATNode_getParent �����Ȃ��Ă���肠��܂���B
 * ( ���܂�ɎQ�Ɖ񐔂������ꍇ�͕ʂł����B )
 * 
 * ���ӁF���[�g�m�[�h�̐e�͑��݂��Ȃ��̂ŁA���̏ꍇ�� int �^�� 0 ���Ԃ��Ă��܂��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ� ( ���[�g�m�[�h�łȂ����� )
 * @return = modvar	: �e�m�[�h�̃��W���[���ϐ�
 */
#define global ctype TNParent(%1) stt_tnparent_var@abdata_tree( TNParent_core@abdata_tree(%1) )
#defcfunc TNParent_core@abdata_tree int thisId
	TNode_getInstance stt_tnparent_var, TNode_getParent( thisId )
	return 0
	
/**
 * �m�[�h���N���A����
 * �c���[�m�[�h�̒l�����������A���̎q���m�[�h�����ׂč폜���܂��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @return void
 */
#define global TNode_clear(%1) TNodeMod_clear TNInstance(%1)
#modfunc TNodeMod_clear
	// �q���m�[�h���폜
	if ( mcntChildren ) {
		foreach mChildren
			if ( IsTnIdValid( mChildren(cnt) ) ) {
				TNode_clear mChildren(cnt)
				delmod thismod
			}
		loop
	}
	
	mValue       = 0
	mChildren    = TNID_DISABLE
	mcntChildren = 0
	mIter_v      = 0
	mIter_c      = -1
	
	return
	
/**
 * �m�[�h���폜����
 * �c���[�m�[�h���폜���܂��B
 * 
 * �܂��A���̃m�[�h�̎q���m�[�h���A���ׂč폜����܂��B
 * �폜���ꂽ�m�[�h�̃N���[���������ɂȂ�܂��B
 * �����ȃN���[�����g�p���Ȃ��悤�ɋC��t���Ă��������B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @return void
 */
#define global TNode_delete(%1) TNodeMod_delete TNInstance(%1)
#modfunc TNodeMod_delete
	TNode_clear thismod
	delmod      thismod
	return
	
/*
#modterm
	return
//*/

//##########################################################
//        �����q (iterator)
//##########################################################
#define global TNode_iterNew(%1) TNodeMod_iterNew TNInstance(%1)
#modfunc TNodeMod_iterNew
	if ( mIter_c < 0 ) {
		mIter_c = 0
	} else {
		mIter_c ++
	}
	
	mIter = -1
	return
	
#define global TNode_iterDelete(%1) TNodeMod_iterDelete TNInstance(%1)
#modfunc TNodeMod_iterDelete
	mIter_c --
	return
	
#modfunc TNodeMod_iterCheckCore var vIterId
	// �q�m�[�h����
	if ( mIterMode == TRAVERSE_MODE_CHILDREN ) {
		mIter ++
		
		// ����ȏ�q�m�[�h�͂Ȃ�
		if ( mIter >= mcntChildren ) {
		;	vIterId = TNID_DISABLE		// default �� TNID_DISABLE �Ȃ̂ő������K�v�͂Ȃ�
			return
			
		// �܂��q�m�[�h������
		} else {
			vIterId = mChildren(mIter)
			if ( IsTnIdValid(vIterId) == false ) {
				TNodeMod_iterCheckCore thismod, vIterId		// �����������J��Ԃ�
			}
		}
	}
	return
	
#define global ctype TNode_iterCheck(%1,%2) TNodeMod_iterCheck(TNInstance(%1), %2)
#modcfunc TNodeMod_iterCheck var vIterId
	vIterId = TNID_DISABLE
	
	TNodeMod_iterCheckCore thismod, vIterId
	
	if ( vIterId == TNID_DISABLE ) {
		TNodeMod_iterDelete thismod
		return false
	}
	return true
	
//------------------------------------------------
// [i] �����q������
//------------------------------------------------
#deffunc TNode_iterInit int thisId, var iterData
	TNode_iterNew thisId
	return
	
//------------------------------------------------
// [i] �����q�X�V
//------------------------------------------------
#defcfunc TNode_iterNext int thisId, var vIt, var iterData
	return TNode_iterCheck(thisId, vIt)
	
//##########################################################
//        ���̑�
//##########################################################
/**
 * �m�[�h��A������
 * �m�[�h�̎��q���m�[�h���ׂĂ��ċA�I�ɕ������A�ǉ����܂��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @prm p2 = modvar	: �A����
 * @return = void
 */
#deffunc TNode_chain int thisId, int fromId,  local itId, local stmp, local childId, local value
	
	TNode_iterNew fromId
	while ( TNode_iterCheck(fromId, itId) )
		
		stmp = TNode_getName(itId)
		TNode_getv itId, value
		
		TNode_addChild thisId, stmp		// �����̎q�m�[�h��ǉ�
		childId = stat
		TNode_setv  childId, value		// �ێ�����l���R�s�[
		TNode_chain childId, itId		// �����x���m�[�h��A��
		
	wend
	return
	
/**
 * �m�[�h�𕡐�����
 * �m�[�h�̒l�ƁA���̎q�m�[�h���ׂĂ��ċA�I�ɕ������܂��B
 * 
 * @prm p1 = modvar	: ���W���[���ϐ�
 * @prm p2 = modvar	: ������
 * @return = void
 */
#deffunc TNode_copy int thisId, int fromId
	TNode_clear thisId
	TNode_set   thisId, TNode_get(fromId)
	TNode_chain thisId, fromId
	return
	
/**
 * �m�[�h����������
 * 2�̃m�[�h���������܂��B
 * 
 * @prm p1 = modvar : �m�[�h1
 * @prm p2 = modvar : �m�[�h2
 * @return = void
 */
#deffunc TNode_exchange int thisId, int fromId, local tempId
	TRoot_new  tempId
	TNode_copy tempId, thisId
	TNode_copy thisId, fromId
	TNode_copy fromId, tempId
	TNode_delete tempId
	return
	
//------------------------------------------------
// [i] �R���X�g���N�^
//------------------------------------------------
#modinit str _name, int _idParent
	sdim mName				// �m�[�h��
	mIdParent = _idParent	// �e�m�[�h
	mName     = _name
	
	TNodeMod_clear thismod
	return getaptr(thismod)
	
//##########################################################
//        �f�o�b�O�p�����o
//##########################################################
#ifdef _DEBUG
//-------- �f�o�b�O�� --------

//------------------------------------------------
// �m�[�h�����ċA�I�ɏo�͂���
//------------------------------------------------
#deffunc TNode_dbglog int _thisId, int nest,  local thisId, local itId, local stmp
	thisId = _thisId
	if ( isTnIdValid(thisId) == false ) { return }
	
	sdim stmp, nest * 2 + 512
	
	if ( nest > 0 ) {
		repeat nest - 1
			stmp += "|  "
		loop
	}
	if ( TNode_isRoot(thisId) == false ) {
		stmp += "|-- "
	}
	
	logmes stmp + TNode_getName( thisId )
	
	TNode_iterNew thisId
	while ( TNode_iterCheck( thisId, itId ) )
		TNode_dbglog itId, nest + 1
	wend
;	IterateBegin thisId, TNode, itId
;		TNode_dbglog itId, nest + 1
;	IterateEnd
	
	return
	
#else
//-------- ��f�o�b�O�� --------

#define TNode_dbglog(%1,%2) :

#endif

#global
TRootMod_new ""

//##############################################################################
//               �T���v���E�X�N���v�g
//##############################################################################
#if 1
	
	TRoot_new tr
	TNode_set tr, "�e"
	
	for i, 0, 3
		name = "c"+ i
		TNode_addChild tr, name
		TNode_set stat, TNode_get(tr) +" - �q("+ i +")"
		
		repeat 5
			name = "cc"+ cnt
			
			child = TNode_getChild( tr, "c"+ i )
			
			TNode_addChild child, name
			TNode_set stat, TNode_get(child) +" - ��("+ cnt +")"
		loop
		
	next
	
	for i, 0,  TNode_cntChildren( tr )
		repeat TNode_cntChildren( TNChild(tr, "c"+ i) )
			mes TNode_get( TNChild( TNChild(tr, "c"+ i), "cc"+ cnt) )
;			mes TNode_get( TNChildHier( mtr, "c"+ i +"/cc"+ cnt ) )		// '/' �ŊK�w�\��
		loop
	next
	
	pos 300, 10
	TNode_dbglog tr
	
	TRoot_new    tr2, "root2"
	TNode_chain  tr2, tr
;	TNode_copy   tr2, tr
	TNode_dbglog tr2
	
	TNode_addSubTree tr, tr2
	TNode_dbglog tr
	
	logmes ""
	assert
	TNode_addSubTree tr, tr2
	TNode_dbglog tr
	
	stop

#endif

#endif
