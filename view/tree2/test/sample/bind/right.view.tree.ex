$mol_view_tree2_test_sample_bind_right $mol_view
	Cls $mol_view
		inner => outer
		writable?val => writable_outer?val
		indexed!key => indexed_outer!key
		indexed_writable!key?val => indexed_writable_outer!key?val
	q <= Cls2 $mol_view
		inner => outerQ
