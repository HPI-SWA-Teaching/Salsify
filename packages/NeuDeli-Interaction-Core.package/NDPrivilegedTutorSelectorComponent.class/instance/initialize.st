accessing
initialize
	super initialize.
	"self nullUser: (NDUser new username: '')."
	self userList: OrderedCollection new.
	"self userList add: self nullUser."
	self selectedUser: self nullUser