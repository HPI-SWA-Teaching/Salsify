rendering
renderStudentRow: aStudent on: html
	html tableRow: [ (rows even) 
					ifTrue: [  
					html tableData 
						class: 'grey'; 
						with: [html anchor url: ('mailTo:', aStudent email); with: (aStudent username)]]
					ifFalse: [   
						html tableData 
						with: [html anchor url: ('mailTo:', aStudent email); with: (aStudent username)]]].
	self rows: self rows + 1.