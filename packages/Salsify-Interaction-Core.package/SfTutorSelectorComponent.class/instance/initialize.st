initialization
initialize
	super initialize.
	self nullUser: (SfUser new username: '').
	self userList: OrderedCollection new.
	self userList add: nullUser.
	self selectedUser: self nullUser