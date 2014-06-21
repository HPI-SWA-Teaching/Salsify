initialization
initializeSelectedTopic
	| topicWishFromDatabase |
	topicWishFromDatabase := self group topicWishesAt: self whichWish.
	(topicWishFromDatabase isNil | topicWishFromDatabase = '')
		ifFalse: [self topicList add: topicWishFromDatabase.
				self selectedTopic: topicWishFromDatabase]
		ifTrue: [self selectedTopic: self nullTopic]