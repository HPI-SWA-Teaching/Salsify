as yet unclassified
testRemoveTopicWish
	self group topicWishesAt: 1put: self aTopicWish.
	self group topicWishesAt: 1 put: ''.
	self assert: (self group topicWishes includes: self aTopicWish) not.