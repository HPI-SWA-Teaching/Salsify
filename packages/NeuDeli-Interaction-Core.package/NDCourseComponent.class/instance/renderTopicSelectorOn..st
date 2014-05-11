rendering
renderTopicSelectorOn: html
	self course hasTopics
		ifTrue: [html heading
						level: 3;
						with: 'Themenwahl'.
				html paragraph: 'Es können noch bis ', self course groupDeadline yyyymmdd , ' 23:59 Themen gewählt werden.'.
				html div
						id: 'topicselector';
						with: [self course hasTopicpool 
								ifTrue: [self  renderPickerTopicSelectorsContainerOn:  html]
								ifFalse: [self renderFreeTopicSelectorOn: html]]]