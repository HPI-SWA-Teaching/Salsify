accessing
initialize
	super initialize.
	self nullUser: (SfUser new username: '').
	self userList: OrderedCollection new.
	self userList add: self nullUser.
	self selectedUser: self nullUser