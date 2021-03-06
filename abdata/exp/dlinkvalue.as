#ifndef IG_ABDATA_DOUBLE_LINK_VALUE_AS
#define IG_ABDATA_DOUBLE_LINK_VALUE_AS

// 双方向リンク付き要素

#include "mod_pvalptr.as"

#module abdata_dlinkvalue mValue, mLinkNext, mLinkPrev

#define global DLV_new(%1,%2,%3=0,%4=0) newmod %1, abdata_dlinkvalue@,%2,%3,%4
#define global DLV_delete(%1) delmod %1

#modinit var p2, int nxt, int prv
	DLV_setv     thismod, p2
	DLV_setNext  thismod, nxt
	DLV_setPrev  thismod, prv
	return getaptr(thismod)
	
#modfunc DLV_getv var p2
	p2 = mValue
	return
	
#modcfunc DLV_get
	return mValue
	
#modcfunc DLV_getValueType
	return vartype(mValue)
	
#modcfunc DLV_getPrev
	return mLinkPrev
	
#modcfunc DLV_getNext
	return mLinkNext
	
#modfunc DLV_dup var p2
	dup p2, mValue
	return
	
#modfunc DLV_setv var p2
	mValue = p2
	return
	
#modfunc DLV_setPrev int prv
	mLinkPrev = prv
	return
	
#modfunc DLV_setNext int nxt
	mLinkNext = nxt
	return
	
#global

#endif
