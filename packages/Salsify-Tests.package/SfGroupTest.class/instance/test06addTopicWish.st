tests
test06addTopicWish
	| group |
	group := SfGroup new.
	group topicWishesAt: 1 put: 2.
	self assert: ((group topicWishesAt: 1) = 2)