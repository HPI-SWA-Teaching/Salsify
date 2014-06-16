rendering
renderTopicOn: html
	self course hasTopics
		ifTrue: [self course hasTopicpool 
					ifTrue: [self renderTopicAssignerOn: html]
					ifFalse: [self renderStudentDefinedTopicsOn: html]]