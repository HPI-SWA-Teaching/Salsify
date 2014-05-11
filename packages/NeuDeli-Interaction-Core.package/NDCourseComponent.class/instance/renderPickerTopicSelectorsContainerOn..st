rendering
renderPickerTopicSelectorsContainerOn: html
	| group |
	group := self course findGroupByUser: self session user.
	html form
		class: 'picker';
		id: 'topicPicker';
		with: [self renderPickerTopicSelectorOn: html].