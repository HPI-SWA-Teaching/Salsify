rendering
initialize 
	super initialize. 
	self userList: OrderedCollection new. 
	self freeUserList: OrderedCollection new. 
	self freeUserList add: (SfUser new username: '')