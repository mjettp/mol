namespace $ {
	export class $mol_view_tree2_test_sample_dictionary extends $mol_view {

		/**
		 * ```tree
		 * super *
		 * 	str \some
		 * 	^
		 * 	str2 \some
		 * 	^ test
		 * ```
		 */
		super() {
			return {
				str: "some",
				...super.super(),
				str2: "some",
				...this.test(),
			}
		}

		/**
		 * ```tree
		 * simple *
		 * 	str \some
		 * 	num 12317
		 * 	bool true
		 * 	nul null
		 * 	localized @ \localized value1
		 * ```
		 */
		simple() {
			return {
				str: "some",
				num: 12317,
				bool: true,
				nul: null as any,
				localized: this.$.$mol_locale.text( '$mol_view_tree2_test_sample_dictionary_simple_localized' ),
			}
		}

		/**
		 * ```tree
		 * complex *
		 * 	arr /
		 * 		\test1
		 * 		\test2
		 * 	child *
		 * 		str \some
		 * 		num 12317
		 * 		bool true
		 * 		nul null
		 * 		localized @ \localized value2
		 * ```
		 */
		complex() {
			return {
				arr: [
					"test1",
					"test2",
				] as readonly any[],
				child: {
					str: "some",
					num: 12317,
					bool: true,
					nul: null as any,
					localized: this.$.$mol_locale.text( '$mol_view_tree2_test_sample_dictionary_complex_child_localized' ),
				},
			}
		}
	}

}
