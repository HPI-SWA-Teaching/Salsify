initialization
initialize
	super initialize.
	self nullUser: [SfUser new username: ''] value.
	self userList: OrderedCollection new.
	self userList add: nullUser.
	self selectedUser: self nullUser