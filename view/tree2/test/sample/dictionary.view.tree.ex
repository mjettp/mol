$mol_view_tree2_test_sample_dictionary $mol_view
	super *
		str \some
		^
		str2 \some
		^ test
	simple *
		str \some
		num 12317
		bool true
		nul null
		localized @ \localized value1
	complex *
		arr /
			\test1
			\test2
		child *
			str \some
			num 12317
			bool true
			nul null
			localized @ \localized value2
