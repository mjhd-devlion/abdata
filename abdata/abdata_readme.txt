
	abdata ���W���[�� ver.1.1
	
	�Ereamde(������) �� specification(�d�l��)
	
���T�v
	HSP3�̃��W���[���ϐ��@�\��p���āA�R���e�i���������Ă݂����W���[���ł��B
	
	C++��STL���኱�ӎ����Ă��܂��B�S�R����ɂȂ�܂���(��������)�B
	
�����e
	���ׂĂ��ꊇ���� #include ����ɂ́Aall.as���g�p����̂��y�ł��B
	( ���낢�떳�ʂȃ��m���������Ă��܂����B )
	
	�E�R���e�i
		stack     : �X�^�b�N
		queue     : �L���[
		list      : ���X�g
		tree      : �؍\��
		dlinklist : �o�����A�����X�g
		pair      : �y�A(�o)
	
	�E���̑�
		value     : �v�f�^
	
	�ȉ��́A�����Ŏg�p���郂�W���[���ł��B
	
		dlinkvalue
		mod_*.as
	
	�ȉ��́A�l�^�ł��B
	
		argstack : �T���v�����T���v�����Q��
	
�������K��
	�t�@�C����
		�R���e�i
			�\����.as
			
		�A���S���Y��
			alg_**.as
			
	���W���[�����
		abdata_�\����
		
	�����o���߁E�֐�
		�\����_�֐���
		
		�E�擪�͏������B
		�ELowerCamelCase (2�P��ڈȍ~�A�擪�����啶��)�B
		
	�����o�ϐ�
		�E�ړ��� m ��p����B
	
	�������̖����K���ɂ���
		���W���[�����Ƃɍ쐬�����ɍ������邽�߁A
		���������̖����K���͓�]�O�]���Ă��܂��B
		���ݏC����ƒ��c�c�H
	
������֐�(interface)
	�S���W���[���Ɋ܂܂��A���ʂ̋@�\������܂��B
	����ɂ��A�ǂ̃R���e�i��I��ł��������������悤�Ȏg�������\�ł��B
	
	�E�\�z
		new
		
		������ newmod ���߂��Ăяo���܂��B
		
	�E���
		delete
		
		������ delmod ���߂��Ăяo���܂��B
		
	�E�v�f��
		size()
		
	�E���S����
		clear
		
		�S�v�f���������A������Ԃɖ߂��܂��B�Ăяo�����̕ϐ��͉�̂���܂���B
		
	�E����
		copy ������
		
		@ �������̕ϐ��͔j�󂳂�܂���B
		
	�E�A��
		chain �A����
		
		@! pair �ɂ͂���܂���B
		
	�E����
		exchange ������
		
		2�̃R���e�i�Ɋi�[����Ă��邷�ׂĂ̗v�f���������܂��B
		�v�f�ɏ��Ԃ�����ꍇ�́A���Ԃ�����܂��B
		@! swap �ł͂���܂���B
	
	�E�J�Ԏq::������
		iterInit
		
		�J�Ԏq������������B
		
	�E�J�Ԏq::�X�V
		iterNext()
		
		�J�Ԏq���X�V���A�p������Ȃ� it �ϐ��ɐV�����l���i�[���Đ^��Ԃ��A
		�p�����Ȃ��Ȃ�U��Ԃ��B
		
	�����̑��̊֐��ɂ���
		�\�Ȍ���A���̂悤�Ȍ���g�p���Ă��܂��B
		
		�v�f�}�� -> insert
		�v�f�폜 -> remove
		�v�f�ړ� -> move
		�v�f���� -> swap
		�v�f�ݒ� -> set    ( �ϐ��g�p : setv )
		�v�f�擾 -> get    ( ���ߌ`�� : getv )
		�v�f�Q�� -> dup    ( �N���[���ϐ��̍쐬 )
	
���A���S���Y��(algorithm)
	�A���S���Y���Ƃ́Aabdata �ɂ���Ē񋟂����e��R���e�i�ɑ΂��ċ��ʂ�������
	���s�����W���[���₻�̒��̊֐��ł��B�A���S���Y���֐���񋟂���t�@�C���ɂ́A
	�ړ��� alg_ ���߂��Ă��܂��B
	
	�E�J�Ԏq�A���S���Y��(@alg_iterate)
		IterateBegin �R���e�i, �\���� [, it�ϐ�]
			/* ���� */
		IterateEnd
		
		�R���e�i�̊e�v�f�ɂ��ČJ��Ԃ��������s���܂��B�r���ŒE�o����ꍇ�́A
		_break ���g�p���Ă��������B�J��Ԃ��̉񐔂� IterateCnt �ŎQ�Ƃł��܂��B
	
	���������Ȃ����Ȃ��B���ꁛ���������̂�����ǁc�c�B
		>> �A�q���Y��(duck-ism) ���Ăǂ����낤���B�������R���� duck typing�B
		>> �悭�l�������ꂶ��Ȃ����A����B�������̓A�q���֐����B
	
�����퓮��
	Windows XP sp3 HomeEdition ��ł� HSP3.2��(3, 4)�ł̓�����m�F���Ă��܂��B
	
�����쌠
	���̃��W���[���Ɋ܂܂�邷�ׂẴt�@�C���̒��쌠�͍�҂ɂ���܂����A
	���̃��W���[���̎g�p�E���ρE�z�z�ɂ��ẮA���R�ɒN�ł��s������̂Ƃ��܂��B
	
���T�|�[�g
	�E�v���O���L��(http://prograpark.ninja-web.net/)
		��҂̏��Ƃ��[�݂��^�c����A�v���O���~���O�֌W�̃T�C�g�ł��B
		�ӌ��E�v�]�E�o�O�񍐂Ȃǂ́A�����̌f���ɂǂ��ǂ��񂹂Ă��������B
		�ߑa���Ă܂����A�T�ɂQ�A�R��ȏ�̓`�F�b�N���Ă��܂��̂ŁB
		
	�E���ւ̃��[��
		�A�h���X����肷��HSP3�X�N���v�g( ���X�p���΍� )
			dim chr, 21
				chr( 0) = $75, $65, $64, $61, $69, $5F, $69, $64, $40, $79
				chr(10) = $61, $68, $6F, $6F, $2E, $63, $6F, $2E, $6A, $70, 0
			sdim s, 32
			foreach chr
				poke s, cnt, chr(cnt)
			loop
			objmode 2
			mesbox s, ginfo(12), 25
		;	exec "mailto:"+ s, 16	// ���[�����N��
			stop
		
���X�V���� (�J�����_)
��2009 07/28 (Tue)
	�EMo���t�H���_�̃t�@�C���� #include �Ō����ł��Ȃ������o�O���C���B
		�Ƃ����Ă��Aabdata �̒��Ɉړ����������������B
		�Ȃ�ł��낤�c�c�B
	
��2009 07/11 (Sat)
	�Ealg_iter.as ��ǉ��BIterateBegin �` IterateEnd �ł̉��I�Ȕ������\�ɁB
	�E���Ɋւ��āA�J�Ԏq�֌W�̓���֐���ǉ��B
		iterInit   : �J�Ԏq�̏��������s���B
		iterNext() : �J�Ԏq�̍X�V���s���B�p���Ȃ�^��Ԃ��B
	�EIterateBegin~End ������q�ɂł��Ȃ������o�O���C���B
	�EPair_new ����`�O�Ɏg���Ă����o�O���C���B
	�Esetv, getv �n�֐��̈����̏��Ԃ��u�ϐ�, ���̑��c�c�v�ɓ���B
		�EList, Queue ���傫���e�����󂯂��B
		�EDLList, Pair �͕ω������B
	�Emod_shiftArray�ŁAArrayInsert ����Ɨv�f��1���ł���Ƃ����A
		�����I�ȃo�O���C���B
	�EList�ŁAinsert �����midList�̔ԍ���midList�̗v�f�ԍ����w���Ƃ������
		��ԂɂȂ�o�O���A�v�f�z��̗v�f�ԍ����w���悤�ɏC���B
	�Ever.1.1�Ƃ��Č��J���o�b�N�A�b�v�B
		�ł������s�����ς�炸�B
	
��2009 07/09 (Thu)
	�Eall.as ��ǉ��B
	�EStack_pushvar �� Stack_pushv �̕ύX�ɏC�����Y�ꂪ�������̂𒼂����B
	�EList_valid �� List_isValid �ƕύX�������AQueue_valid �� Queue_isValid ��
		�C������Ă��Ȃ������B����List���b�p�[�����l�B
	�E�؍\���̌J�Ԏq�Ńg���o�[�X�ł���悤�ɂ��悤�Ƃ������A�f�O�B
	
��2009 07/08 (Wed)
	�E�u���J�Ԏq�֐��v��ǉ��B
	�E���̍X�V�������撣���č\�z�B
	�Ever.1.0 �Ƃ��Č��J���o�b�N�A�b�v�B
		�ł����t�@�����X�s���B
	
��2009 07/07 (Tue)
	�E����(readme)���쐬���Aabdata ���t�H���_�� (�O�X����̔ߊ�)�B
	�E����֐��������B�����ɁA���J�����o�֐��̓���I�Ȗ����K���𓱓��B
		new, delete, size, clear, copy, chain, exchange
	�E�؍\�����A�C���X�^���X���ׂĂ�1�̐ÓI�z��ŊǗ�����悤�ɍĎ����B
	
��2009 05/10 (Sun)
	�E�L���[�����X�g�̃��b�p�[�Ƃ��čĎ����B
	
��2009 05/05 (Tue) �` 05/10�̊�
	�E���X�g���쐬�B
	
��2009 04/12 (Sun)
	�E�؍\�����K�w�\���ɑΉ��������B
	
��2009 04/08 (Wed)
	�E�y�A���쐬�B
	
��2008 10/13 (Mon)
	�E�o�����A�����X�g���쐬�B
	�E�؍\�����쐬�B
	
��2008 09/06 (Sat)
	�E�X�^�b�N�ƃL���[�̃t�@�C���𕪊��B
	
���s�� (2008 09/04 �` 09/06 ���H)
	�E�X�^�b�N�{�L���[���쐬 (StrCalc�̏���łɎg�p�����A�n�Y)�B
	
Copyright(C) 2009 ue-dai.