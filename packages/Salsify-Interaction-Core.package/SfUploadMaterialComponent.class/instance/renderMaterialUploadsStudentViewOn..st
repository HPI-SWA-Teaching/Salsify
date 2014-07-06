as yet unclassified
renderMaterialUploadsStudentViewOn: html
	|idex| 
	idex := 0. 
	html tableRow 
		with: [ 	html tableData class: 'title'; with: [ html label: 'Titel' ]. 
				html tableData class:'downloader'; with: [ html label: 'Datei']].
	self course material ifNotEmpty: [ self course material keysAndValuesDo: [ :key :value | 
		 html tableRow
			with: [ html tableData class: 'title';  with: [html text: key].
					html tableData class: 'downloader'; with: [ 
					html anchor
							class: 'downloadMaterial'; 
							callback: [self downloadFile: value];
							with: [html text: value fileName]]]]]
