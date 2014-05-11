as yet unclassified
setUp
	self group: NDGroup new.
	self aUser: NDUser new.
	self aTopicWish: 'TopicWish'. 
	
	self group members: OrderedCollection new.
	self group members add: NDUser new;
						  add: NDUser new.
	