rendering
renderTopicWishAt: aWishIndex On: html
	html text: aWishIndex asString, '. '.
	(self group topicWishesAt: aWishIndex)
		ifNotNil: [html text: (self group topicWishesAt: aWishIndex)]
		ifNil: [html emphasis: 'fehlt']