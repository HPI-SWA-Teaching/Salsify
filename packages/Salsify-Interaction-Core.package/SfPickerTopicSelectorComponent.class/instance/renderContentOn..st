rendering
renderContentOn: html
	self initializeTopicList.
	html select 
			class: 'groupselect select';
			list: self topicList;
			selected: self selectedTopic;
			callback: [: value | self validateTopicWishChange: value];
			onChange: (html scriptaculous updater
									id: 'topicPicker';
									callback: [:r | self parent renderPickerTopicSelectorOn: r];
									triggerForm: 'topicPicker';
									onStatus: 200 do: 'saveNotification("topicPicker")')