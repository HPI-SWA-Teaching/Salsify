tests
test06addTopicWish
	| group |
	group := NDGroup new.
	group topicWishesAt: 1 put: 2.
	self assert: ((group topicWishesAt: 1) = 2)