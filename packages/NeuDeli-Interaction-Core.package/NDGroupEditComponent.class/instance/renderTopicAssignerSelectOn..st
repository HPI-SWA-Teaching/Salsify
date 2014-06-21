rendering
renderTopicAssignerSelectOn: html
	self resetTopicList.
	
	html form
		id: 'topicAssignerForm', self group number asString;
		with: [html select
				class: 'groupselect select';
				list: self topicList;
				callback: [ :value | self group topic: value];
				selected: self group topic;
				onChange: (html scriptaculous updater
												callback: [:r | self renderTopicAssignerSelectOn: r];
												id: 'topicAssigner', self group number asString;
												triggerForm: 'topicAssignerForm', self group number asString;
												onStatus: 200 do: 'saveNotification("topicAssignerForm', self group number asString,'")')]