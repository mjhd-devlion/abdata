// 配列シフトモジュール

#ifndef IG_MODULE_SHIFT_ARRAY_AS
#define IG_MODULE_SHIFT_ARRAY_AS

#module shift_array_mod

#define global stdarray_index_of_end (-127)

//------------------------------------------------
// 配列区間の正規化 @private
// 
// @result: 反転区間か否か
//------------------------------------------------
#deffunc stdarray_regularize_range@shift_array_mod array self, array range,  local tmp
	if ( range(1) == stdarray_index_of_end ) { range(1) = length(self) }
	
	if ( range(0) > range(1) ) {		// 区間が逆 => 両方 + 1 して交換
		tmp      = range(0) + 1
		range(0) = range(1) + 1
		range(1) = tmp
		return true
	} else {
		return false
	}
	
//------------------------------------------------
// 挿入 ( 的な処理 )
//------------------------------------------------
#deffunc stdarray_insert_room array self, int idx,  local i
	
	// 挿入される場所を空ける
	for i, length(self), idx, -1
		self(i) = self(i - 1)
	next
	
	return
	
//------------------------------------------------
// 削除 ( 的な処理 )
//------------------------------------------------
#deffunc stdarray_erase array self, int idx,  local i
	
	// 削除される場所を消す ( 他の値で上書きする )
	for i, idx, length(self) - 1
		self(i) = self(i + 1)
	next
	
	return
	
//------------------------------------------------
// 移動
//------------------------------------------------
#deffunc stdarray_loc_move array self, int from, int to,  local temp, local dir, local i
	if ( from == to ) { return }
	
	// 移動元の値を保存する
	temp = self(from)
	
	// 移動する
	if ( from > to ) {
		dir = -1				// 上に進むなら -1
	} else {
		dir = 1
	}
	for i, from, to, dir
		self(i) = self(i + dir)	// 次の場所の値を受け取る
	next
	self(to) = temp
	
	return
	
//------------------------------------------------
// 交換
//------------------------------------------------
#deffunc stdarray_loc_swap array self, int pos1, int pos2,  local temp
	if ( pos1 == pos2 ) { return }
	temp       = self(pos1)
	self(pos1) = self(pos2)
	self(pos2) = temp
	return
	
//------------------------------------------------
// 巡回
// 
// @prm self
// @prm step         : 巡回方向
// @prm [iBgn, iEnd) : 巡回対象の区間
//------------------------------------------------
#deffunc stdarray_rotate_step array self, int iBgn, int iEnd, int dir,  local range
	range = iBgn, iEnd
	stdarray_regularize_range self, range
	
	if ( dir >= 0 ^ stat ) {		// 反転区間 => 逆方向に Rotate
		stdarray_loc_move self, range(0), range(1) - 1
	} else {
		stdarray_loc_move self,           range(1) - 1, range(0)
	}
	return
	
// 逆回転
#define global stdarray_rotate(    %1, %2 = 0, %3 = stdarray_index_of_end) stdarray_rotate_step %1, %2, %3,  1
#define global stdarray_rotateBack(%1, %2 = 0, %3 = stdarray_index_of_end) stdarray_rotate_step %1, %2, %3, -1

//------------------------------------------------
// 反転
// 
// @prm this
// @prm [iBgn, iEnd) : 反転対象の区間
//------------------------------------------------
#define global stdarray_reverse(%1, %2 = 0, %3 = stdarray_index_of_end) stdarray_reverse_ %1, %2, %3
#deffunc stdarray_reverse_ array self, int iBgn, int iEnd,  local range
	range = iBgn, iEnd
	stdarray_regularize_range self, range
	if ( stat ) { return }			// 反転区間 => 反転しても戻るので処理する必要なし
	
	repeat (range(1) - range(0)) / 2
		stdarray_loc_swap self, range(0) + cnt, range(1) - cnt - 1
	loop
	
	return
	
#global

#endif
