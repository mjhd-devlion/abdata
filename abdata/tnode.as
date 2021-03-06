#ifndef IG_ABDATA_TREE_NODE_AS
#define IG_ABDATA_TREE_NODE_AS

#include "list.as"
#include "alg_iter.as"

#define global TNode_ClsName "tnode"
#define global tnodeNull listNull

#define global TNIdx_Value  0
#define global TNIdx_Chd    1

//------------------------------------------------
// [i] 要素数
//------------------------------------------------
#define global ctype tnode_size (%1) 2	// list_size
#define global ctype tnode_empty(%1) 0	// false
#define global tnode_length tnode_size

//------------------------------------------------
// 構築
//------------------------------------------------
#module abdata_tnode

#define ctype ARG_TEMP(%1) argtmp_tnode_%1@__abdata

#define global tnode_new(%1, %2 = stt_zero@, %3 = stt_zero@) \
	ARG_TEMP@abdata_tnode(1) = (%2) :\
	ARG_TEMP@abdata_tnode(2) = (%3) :\
	tnode_newv %1, ARG_TEMP@abdata_tnode(1), ARG_TEMP@abdata_tnode(2) ://
	
#deffunc tnode_newv var self, var value, var chd
	list_new self
	tnode_resetElemsv self, value, chd
	return
	
#defcfunc tnode_make var value, var chd,   local newOne
	tnode_new newOne, value, chd
	return newOne
	
//------------------------------------------------
// 既定の2つの要素を追加する
//------------------------------------------------
#define global tnode_resetElems(%1, %2 = stt_zero@, %3 = stt_zero@) \
	ARG_TEMP@abdata_tnode(1) = (%2) :\
	ARG_TEMP@abdata_tnode(2) = (%3) :\
	tnode_resetElemsv %1, ARG_TEMP@abdata_tnode(1), ARG_TEMP@abdata_tnode(2) ://
	
#deffunc tnode_resetElemsv var self, var value, var chd
	if ( list_empty(self) == false ) { return }
	list_insertv self, value, TNIdx_Value
	list_insertv self, chd,   TNIdx_Chd
	return
	
#global

//------------------------------------------------
// 解体
//------------------------------------------------
#define global tnode_delete list_delete

//------------------------------------------------
// 値の取得 ( 命令形式 )
//------------------------------------------------
#define global tnode_getv_ list_getv
;#define global tnode_popv_ list_popv

#define global tnode_getv(%1,%2)     tnode_getv_ %1, %2, TNIdx_Value
#define global tnode_getvChd(%1,%2)  tnode_getv_ %1, %2, TNIdx_Chd

//------------------------------------------------
// 値の取得 ( 関数形式 )
//------------------------------------------------
#define global tnode_get_ list_get
;#define global tnode_pop_ list_pop

#define global ctype tnode_get(%1)     tnode_get_( %1, TNIdx_Value )
#define global ctype tnode_getChd(%1)  tnode_get_( %1, TNIdx_Chd )

//------------------------------------------------
// 参照化 ( 命令形式 )
//------------------------------------------------
#define global tnode_clone_ list_clone

#define global tnode_clone(%1,%2)     tnode_clone_ %1, %2, TNIdx_Value
#define global tnode_cloneChd(%1,%2)  tnode_clone_ %1, %2, TNIdx_Chd

//------------------------------------------------
// 参照化 ( 関数形式 )
//------------------------------------------------
#define global tnode_ref_ list_ref

#define global ctype tnode_ref(%1)     tnode_ref_( %1, TNIdx_Value )
#define global ctype tnode_refChd(%1)  tnode_ref_( %1, TNIdx_Chd )

//------------------------------------------------
// 先頭・末尾の値の取り出し
// 
// @ get 処理 >> const な操作
// @ pop 処理 >> 要素は取り除かれる
//------------------------------------------------

//------------------------------------------------
// 型の取得 ( 関数形式 )
//------------------------------------------------
#define global tnode_vartype_ list_vartype

#define global ctype tnode_vartype(%1)     tnode_vartype_( %1, TNIdx_Value )
#define global ctype tnode_vartypeChd(%1)  tnode_vartype_( %1, TNIdx_Chd )

//------------------------------------------------
// データ置換
//------------------------------------------------
#define global tnode_set_  list_set
#define global tnode_setv_ list_setv

#define global tnode_set(%1,%2)     tnode_set_ %1, %2, TNIdx_Value
#define global tnode_setChd(%1,%2)  tnode_set_ %1, %2, TNIdx_Chd

#define global tnode_setv(%1,%2)    tnode_setv_ %1, %2, TNIdx_Value
#define global tnode_setvChd(%1,%2) tnode_setv_ %1, %2, TNIdx_Chd

//------------------------------------------------
// [i] コンテナ操作
//------------------------------------------------
#define global tnode_clear(%1) list_clear %1 : tnode_resetElems %1
#define global tnode_chain(%1,%2) logmes {"[Error!] tnode_chain %1,%2 はできません！"}
#define global tnode_copy     list_copy
#define global tnode_swap list_swap

//------------------------------------------------
// [i] 反復子操作
//------------------------------------------------
#define global tnode_iter_init list_iter_init
#define global tnode_iter_next list_iter_next

//------------------------------------------------
// 範囲チェック
//------------------------------------------------
#define global ctype tnode_isValid(%1, %2) ( 0 <= (%2) && (%2) < tnode_size(%1) )

#module

#ifdef _DEBUG

//------------------------------------------------
// ノード名を再帰的にデバッグ出力する
//------------------------------------------------
#deffunc tnode_dbglog int self, int nest,  local thisId, local it, local stmp
	sdim stmp, nest * 2 + 512
	
	if ( nest > 0 ) {
		repeat nest - 1
			stmp += "|  "
		loop
		stmp += "|-- "
	}
	
	logmes stmp + tnode_get(self)
	
	chd = tnode_getChd(self)
	if ( chd != listNull ) {
		IterateBegin chd, list, it
			tnode_dbglog it, nest + 1
		IterateEnd
	}
	
	return
	
#else //definded(_DEBUG)

#define tnode_dbglog(%1, %2) :

#endif //defined(_DEBUG)

#global

//##########################################################
//        子ノード操作::拡張記法
//##########################################################
//------------------------------------------------
// 子ノードの追加 ( 命令形式 )
//------------------------------------------------
#ifdef pair_new
 #define global ctype tnb_addChd(%1, %2 = 0, %3 = stt_zero@, %4 = stt_zero@) \
	ARG_TEMP@abdata_tnode(addChd_1) = (%2)					/* ノード値 */:\
	ARG_TEMP@abdata_tnode(addChd_2) = pair_new( %3, %4 )	/* 子データになる pair を作成 */:\
	tnode_newv %1, ARG_TEMP@abdata_tnode(addChd_1), ARG_TEMP@abdata_tnode(addChd_2) ://
#endif

#ifdef list_new
 #define global tnx_addChd(%1, %2 = tnodeNull) list_add tnChd(%1), %2
#endif

//------------------------------------------------
// 子ノードの取得 ( 関数形式 )
//------------------------------------------------
#define global tnChd tnode_getChd

#ifdef pair_new
 #define global ctype tnbChd(%1,%2=0) pair_get   ( tnode_getChd(%1), %2 )
 #define global ctype tnbChdLhs(%1)   pair_get_lhs( tnode_getChd(%1) )
 #define global ctype tnbChdRhs(%1)   pair_get_rhs( tnode_getChd(%1) )
#endif

#ifdef list_new
 #define global ctype tnxChd(%1,%2=0) list_get( tnode_getChd(%1), %2 )
#endif

//------------------------------------------------
// 子ノードの数
//------------------------------------------------
#ifdef pair_new
 #define global ctype tnbSize(%1) pair_size( tnode_getChd(%1) )
 #define global tnbCount  tnbSize
 #define global tnbLength tnbLength
#endif

#ifdef list_new
 #define global ctype tnxSize(%1) list_size( tnode_getChd(%1) )
 #define global tnxCount  tnxSize
 #define global tnxLength tnxLength
#endif

#endif
