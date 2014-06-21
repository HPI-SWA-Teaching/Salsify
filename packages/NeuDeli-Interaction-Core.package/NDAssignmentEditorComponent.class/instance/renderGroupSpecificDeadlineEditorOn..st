rendering
renderGroupSpecificDeadlineEditorOn: html
	self course isGroupDeadlineOver 
		ifFalse: [html break.
				html text: 'Gruppenwahldeadline noch nicht vorbei']
		ifTrue: [html table: [self course groups 
										do: [:each | self renderDeadlineEditorForGroup: each on: html]]]