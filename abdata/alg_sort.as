// Algorithm::Sort ����

#ifndef __ABSTRACT_DATA_STRUCTURE_ALGORITHM_SORT_AS__
#define __ABSTRACT_DATA_STRUCTURE_ALGORITHM_SORT_AS__

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
#define gloal abdata_sort(%1,%2,%3=SortOrder_Ascending) "������"
	
//##############################################################################
//        �T���v���E�X�N���v�g
//##############################################################################
#if 1

#include "Mo/Dmath.as"
#include "list.as"
	
	// �Ƃ肠�����v�f�ǉ�
	List_new slist
	repeat 10
		List_push_back slist, pow_i(-3, cnt)	;, strf("#%02d value;", 10 - cnt)
	loop
	
	List_dbglog slist
	logmes ""
	
	abdata_sort slist, List, SortOrder_Ascending
	
	List_dbglog slist
	
	stop
	
#endif

#endif
