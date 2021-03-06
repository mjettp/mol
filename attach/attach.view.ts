namespace $.$$ {

	export class $mol_attach extends $.$mol_attach {

		attach_new( next? : string ) {
			const items = this.items()
			const item = this.Item( items.length )
			item.url_thumb( next )
			item.url_load( next )
			this.items( items.concat( item ) )
		}

		content() {
			return [ ... this.items() , this.Add() ]
		}
		
	}

	export class $mol_attach_item extends $.$mol_attach_item {

		style_bg() {
			return `url("${this.url_thumb()}")`
		}

	}

	export class $mol_attach_add extends $.$mol_attach_add {

		file_new( next? : string , force? : $mol_mem_force_fail ) {
			return next
		}
		
		event_capture( next : Event ) {
			if( !$mol_cordova_camera() ) return
			
			next.preventDefault()
			
			$mol_cordova_camera().getPicture( ( url : string )=> {
				this.file_new( url )
			}, ( error : Error )=> {
				this.file_new( error as any , $mol_mem_force_fail )
			}, {
				quality: 50
			} )
		}

		event_picked( next : Event ) {
			var files = [].slice.call( ( next.target as HTMLInputElement ).files )
			for( var file of files ) {
				this.file_new( URL.createObjectURL( file ) )
			}
		}

	}

}
