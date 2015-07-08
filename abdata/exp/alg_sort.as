#ifndef IG_ABDATA_ALGORITHM_SORT_AS
#define IG_ABDATA_ALGORITHM_SORT_AS

// ����A���S���Y��
// ������

#include "alg_iter.as"

#module abdata_sort_mod

#global

//------------------------------------------------
// enum ���񏇏�
//------------------------------------------------
#enum global SortOrder_Ascending = 0	// ����
#enum global SortOrder_Descending		// �~��

//------------------------------------------------
// �}�N���Q
//------------------------------------------------
#define global abdata_sort(%1, %2, %3 = SortOrder_Ascending) !{"abdata_sort �͖������ł�"}!

//##############################################################################
//        �T���v���E�X�N���v�g
//##############################################################################
#if 1

#include "Mo/Dmath.as"
#include "list.as"
	
	// �Ƃ肠�����v�f�ǉ�
	list_new slist
	repeat 10
		List_add slist, pow_i(-3, cnt)	;, strf("#%02d value;", 10 - cnt)
	loop
	
	list_dbglog slist
	logmes ""
	
	abdata_sort slist, list, SortOrder_Ascending
	
	list_dbglog slist
	
	stop
	
#endif

#endif
