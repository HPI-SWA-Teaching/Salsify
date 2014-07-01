as yet unclassified
renderMaterialFileUploaderOn: html
	html fileUpload
            callback: [ :value | self course addFile: value].
	