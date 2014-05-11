as yet unclassified
testAddTopicWish
	self group topicWishesAt: 1 put: aTopicWish.
	self assert: (self group topicWishes values includes: self aTopicWish)