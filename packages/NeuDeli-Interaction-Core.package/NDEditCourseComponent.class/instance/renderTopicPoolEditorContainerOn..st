rendering
renderTopicPoolEditorContainerOn: html
	(self course hasTopicpool & self course hasTopics)
		ifTrue: [html table
					class: 'formTable';
					with: [html tableRow: [
										html tableData class: 'tdLeft'; with: [html label: 'Themen zur Auswahl:'].
										html tableData: [html form
																id: 'topicPoolEditorForm';
																with: [self renderTopicPoolEditorsOn: html]]]]]