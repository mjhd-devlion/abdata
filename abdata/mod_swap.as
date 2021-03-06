#ifndef IG_MODULE_SWAP_AS
#define IG_MODULE_SWAP_AS

#include "mod_pvalptr.as"

#module

#deffunc swap_var var x, var y,  local t
	t = x : x = y : y = t
	return
	
#deffunc swap_int var x, var y
	assert vartype(x) == 4
	assert vartype(y) == 4
	x ^= y : y ^= x : x ^= y
	return
	
#ifdef __hsp_x64__
 #deffunc swap_str var x, var y
	//効率が悪く、さらにキャパシティが縮んでしまう
	swap_var x, y
	return
#else //defined(__hsp_x64__)
 #const sizeof_FlexValue 16
//文字列ポインタの交換を行う
#deffunc swap_str var x, var y,  \
	local x_pval, local x_aptr, local x_master, local x_p, \
	local y_pval, local y_aptr, local y_master, local y_p
	
	assert vartype(x) == 2 && vartype(y) == 2
	dup_pval x, x_pval : x_aptr = stat
	dup_pval y, y_pval : y_aptr = stat
	dupptr x_master, x_pval(8), (x_aptr + 1) * 4
	dupptr y_master, y_pval(8), (y_aptr + 1) * 4
	if ( x_aptr == 0 ) { dup x_p, x_pval(7) } else { dup x_p, x_master(x_aptr) }
	if ( y_aptr == 0 ) { dup y_p, y_pval(7) } else { dup y_p, y_master(y_aptr) }
	swap_int x_p, y_p
	return
#endif //defined(__hsp_x64__)

#ifdef __hsp_x64__
 #define global swap_fv !!"未実装"
#else //defined(__hsp_x64__)
//FlexValue の中身の交換を行う
#deffunc swap_fv var x, var y,  \
	local x_pval, local x_idx, local x_pt, \
	local y_pval, local y_idx, local y_pt, local t_fv
	
	assert vartype(x) == 5 && vartype(y) == 5
	dup_pval x, x_pval : x_idx = stat * sizeof_FlexValue / 4
	dup_pval y, y_pval : y_idx = stat * sizeof_FlexValue / 4
	dupptr x_pt, x_pval(7), x_idx * 4+ sizeof_FlexValue
	dupptr y_pt, y_pval(7), y_idx * 4 + sizeof_FlexValue
	
	dim t_fv, sizeof_FlexValue / 4 + 1
	memcpy t_fv,        x_pt(x_idx), sizeof_FlexValue
	memcpy x_pt(x_idx), y_pt(y_idx), sizeof_FlexValue
	memcpy y_pt(y_idx), t_fv,        sizeof_FlexValue
	return
#endif //defined(__hsp_x64__)

#ifdef __hsp_x64__
 #define swap_array !!"未実装"
#else //defined(__hsp_x64__)
 #const sizeof_PVal 48
//pval の中身の交換を行う
#deffunc swap_array array x, array y,  \
	local x_pval, local y_pval, local t_pval
	
	dup_pval x, x_pval
	dup_pval y, y_pval
	dim t_pval, sizeof_PVal / 4 + 1
	
	memcpy t_pval, x_pval, sizeof_PVal
	memcpy x_pval, y_pval, sizeof_PVal
	memcpy y_pval, t_pval, sizeof_PVal
	return
#endif //defined(__hsp_x64__)

#global

#endif
