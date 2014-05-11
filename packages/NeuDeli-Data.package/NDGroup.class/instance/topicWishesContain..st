as yet unclassified
topicWishesContain: aTopicString 
	^(self topicWishes values select: [:each | each = aTopicString]) isEmpty not