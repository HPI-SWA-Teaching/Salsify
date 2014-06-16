initialization
initializeRadioButtonTexts
	self course isInSummer 
		ifTrue: [self seasonText: 'Sommer']
		ifFalse: [self seasonText: 'Winter'].
		
	self course hasTopicpool
		ifTrue: [self topicTypeText: 'Auswahlliste']
		ifFalse: [self topicTypeText: 'Frei'].
	self course hasTopics
		ifFalse: [self topicTypeText: 'Keine Themen'].