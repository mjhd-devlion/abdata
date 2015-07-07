// JSON �Ǘ��N���X (using abdata)

#ifndef IG_MODULECLASS_ABDATA_JSON_IMPL_AS
#define IG_MODULECLASS_ABDATA_JSON_IMPL_AS

#include "Mo/mod_array.as"
#include "Mo/strutil.as"
;#include "extendTab.as"

#include "Mo/abdata/list.as"
#include "Mo/abdata/pair.as"
#include "Mo/abdata/tnode.as"

#include "AbJson.as"
#include "MCAbJsonLexer.as"
#include "MCAbJsonParser.as"

//##############################################################################
//                  ��`�� : MCAbJson
//##############################################################################
#module MCAbJson mTree

#include "AbJson.header.as"

//------------------------------------------------
// �^���l�E���s�l�ENULL�l
//------------------------------------------------
#define true    1
#define false   0
#define success 1
#define failure 0
#define NULL    0

//##########################################################
//        �\�z�E���
//##########################################################
#define global abjson_new(%1)    newmod %1, MCAbJson@
#define global abjson_delete(%1) delmod %1

//------------------------------------------------
// �\�z
//------------------------------------------------
#modinit
	mTree = tnodeNull
	return
	
//------------------------------------------------
// �f�[�^���� (������)
// 
// @enc: Shift-JIS
//------------------------------------------------
#modfunc abjson_LoadAsText str src,  local lexer, local parser, local tklist
	abjsonLexer_new     lexer, src
	abjsonLexer_Lex     lexer,        tklist : cntToken = stat
	abjsonParser_new   parser
	abjsonParser_Parse parser, mTree, tklist,  cntToken
	return
	
//------------------------------------------------
// �f�[�^���� (�؍\�� (������))
//------------------------------------------------
#modfunc abjson_LoadAsTree var tree
	mTree = tree
	return
	
//------------------------------------------------
// ���
//------------------------------------------------
;#modterm
;	return
	
//##########################################################
//        ����n
//##########################################################
//------------------------------------------------
// 
//------------------------------------------------

//##########################################################
//        �擾�n
//##########################################################
//------------------------------------------------
// �I�u�W�F�N�g�̎��o��
//------------------------------------------------

//##########################################################
//        �ݒ�n
//##########################################################
//------------------------------------------------
// 
//------------------------------------------------

//##########################################################
//        ����֐�
//##########################################################
//------------------------------------------------
// 
//------------------------------------------------

//##########################################################
//        ���̑�
//##########################################################
//------------------------------------------------
// 
//------------------------------------------------

//##########################################################
//        �f�o�b�O�p
//##########################################################
#ifdef _DEBUG
//-------- �f�o�b�O�� --------

//------------------------------------------------
// JSON������𐶐�����
//------------------------------------------------
#modcfunc abjson_ToJsonText
	return abjson_ToJsonText_impl( thismod, mTree, 0 )
	
#modcfunc abjson_ToJsonText_impl var nodeParent, int nest,  \
	local text, local it, local stmp, local val, local type, local node, local chd
	
	chd  = tnode_getChd(nodeParent)			// �q�m�[�h�l
	type = tnode_get(nodeParent)
	logmes strmul("    ", nest) + /*"[sub-root, type, chd] = " */ "[" + nodeParent + ", " + type + ", " + chd + "]"
;	assert
	switch ( type )
		// �\��
		
		case AbJsonNodeName_Root:
			stmp = abjson_ToJsonText_impl( thismod, chd, nest + 1 )
			swbreak
			
		case AbJsonNodeName_Object:
			stmp = "{\n"
			IterateBegin chd, list, it		// (chd : list<tnode>), (it : tnode<pair<key, val>>)
				stmp += strmul("\t", nest) + abjson_ToJsonText_impl( thismod, it, nest + 1 ) + ",\n"
			IterateEnd
			stmp += strmul("\t", nest - 1) + "}"
			swbreak
			
		case AbJsonNodeName_Pair:			// (chd : pair<tnode<key>, tnode<val>>)
			repeat pair_size(chd)
				node     = pair_get( chd, cnt )
				val(cnt) = abjson_ToJsonText_impl( thismod, node, nest + 1 )
			loop
			stmp = val(0) + " : " + val(1)
			swbreak
			
		case AbJsonNodeName_Array:
			stmp = "[\n"
			IterateBegin chd, list, it		// (chd : list<tnode>), (it : tnode<value>)
				val = abjson_ToJsonText_impl( thismod, it, nest + 1 )
				stmp += strmul("\t", nest) + val + ",\n"
			IterateEnd
			stmp += strmul("\t", nest - 1) + "]"
			swbreak
			
		// �l
			
		case AbJsonNodeName_String: return chd				// chd : str
		case AbJsonNodeName_Number: return str(chd)			// chd : double
		
		case AbJsonNodeName_Bool: 
			if ( chd ) {
				return "true"
			} else {
				return "false"
			}
			
		case AbJsonNodeName_Null: return "null"				// chd: (none)
		
		default:
			dbgout( "unknown-node: " + swthis )
			swbreak
	swend
	return stmp
	
#else
//-------- ��f�o�b�O�� --------

#define abjson_dbglog(%1, %2) :

#endif

#global

//##############################################################################
//                �T���v���E�X�N���v�g
//##############################################################################
#if 1

	src = {"
		{
			"name": "uedai",
			"age":  17,
			"list": [ 3, 1, 7 ],
			"obj": {
				"pt-bgn": {
					"class": "point",
					"x": 2, "y": 7
				},
				"pt-end": {
					"class": "point",
					"x": 1.0e2, "y": 83
				}
			},
			"using": true,
			"skill": null
		}
	"}
	
	abjson_new jr
	abjson_LoadAsText jr, src
	
	buf = abjson_ToJsonText( jr )
	mes buf
	stop
	
#endif

#endif
