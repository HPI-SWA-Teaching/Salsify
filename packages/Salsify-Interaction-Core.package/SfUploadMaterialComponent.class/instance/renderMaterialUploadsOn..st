as yet unclassified
renderMaterialUploadsOn: html
	|idex| 
	idex := 0. 
	html tableRow 
		with: [ 	html tableData class: 'title'; with: [ html label: 'Titel' ]. 
				html tableData class:'downloader'; with: [ html label: 'Datei']].
	self course material ifNotEmpty: [ self course material keysAndValuesDo: [ :key :value | 
		idex := idex +1. 
		 html tableRow
			with: [ html tableData class: 'title';  with: [html text: key].
					html tableData class: 'downloader'; with: [ 
					html anchor
							class: 'downloadMaterial'; 
							callback: [self downloadFile: value];
							with: [html text: value fileName]]. 
					 html 
						form id: 'uploadedMaterial', idex asString ; 
						with: [ html hiddenInput 
				 		name: 'titleMaterial';
						callback: [:val | self course removeMaterial: val]; 
						value: key. 
					html tableData class: 'buttons'; with: [ html submitButton: 'Löschen' ]]]]]
