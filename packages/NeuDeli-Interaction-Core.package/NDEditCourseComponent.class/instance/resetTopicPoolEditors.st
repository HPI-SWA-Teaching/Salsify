initialization
resetTopicPoolEditors
	self topicPoolEditors: OrderedCollection new.
	self course topicPool do: [:each | self addTopicPoolEditor topic: each].
	self addTopicPoolEditor.
	self topicPoolEditors do: [: each | each course: self course]