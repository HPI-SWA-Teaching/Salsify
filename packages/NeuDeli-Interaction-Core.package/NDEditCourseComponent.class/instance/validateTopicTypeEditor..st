as yet unclassified
validateTopicTypeEditor: value
	value = 'Keine Themen'
		ifTrue: [self course hasTopics: false].
	value = 'Frei'
		ifTrue: [self course hasTopics: true. self course hasTopicpool: false].
	value = 'Auswahlliste'
		ifTrue: [self course hasTopics: true. self course hasTopicpool: true]