#ifndef IG_ABDATA_ABELEM_AS
#define IG_ABDATA_ABELEM_AS

#include "mod_pvalptr.as"
#include "mod_opCompare.as"

#module abdata_abelem mValue

#define global abelem_new(%1,%2 = stt_zero@) newmod %1, abdata_abelem@, %2
#define global abelem_delete(%1)             delmod %1

//------------------------------------------------
// 構築
//------------------------------------------------
#modinit var vSrc
	abelem_setv thismod, vSrc
	return getaptr(thismod)
	
//------------------------------------------------
// 値の取得 ( 命令形式 )
//------------------------------------------------
#modfunc abelem_getv var dst
	dst = mValue
	return
	
//------------------------------------------------
// 参照化 ( 命令形式 )
//------------------------------------------------
#modfunc abelem_clone var dst
	dup dst, mValue
	return
	
//------------------------------------------------
// 値の設定 ( 変数 )
//------------------------------------------------
#modfunc abelem_setv var src
	mValue = src
	return
	
//------------------------------------------------
// 可変長要素の拡張
//------------------------------------------------
#modfunc abelem_memexpand int size
	memexpand mValue, size
	return
	
//------------------------------------------------
// 要素の型を取得する
//------------------------------------------------
#modcfunc abelem_vartype
	return vartype(mValue)
	
//------------------------------------------------
// 要素の型を変換する
// 
// @+ 元の型と vt が同じなら変換しない。
//------------------------------------------------
#modfunc abelem_changeVartype int vt
	if ( vartype(mValue) != vt ) {
		dimtype mValue, vt
	}
	return
	
//------------------------------------------------
// 比較
//
// @result: 比較値 { -1 (<), 0 (==), +1 (>) }
//------------------------------------------------
#modcfunc abelem_cmp var rhs,  local lhs_ref, local rhs_ref
	abelem_clone thismod, lhs_ref
	abelem_clone rhs,     rhs_ref
	return compare_v(lhs_ref, rhs_ref)
	
#defcfunc compare_v@abdata_abelem var lhs, var rhs,  \
	local vtype, local value
	
	vtype = vartype(lhs), vartype(rhs)
	if ( (vtype(0) == vartype_double || vtype(0) == vartype_int) && (vtype(1) == vartype_double || vtype(1) == vartype_int) ) {
		value = double(lhs) - rhs
		return int(value / absf(value))
	} elsif ( vtype(0) != vtype(1) ) {
		return vtype(0) - vtype(1)
	} else {
		return lhs != rhs
	}
#global

#endif
