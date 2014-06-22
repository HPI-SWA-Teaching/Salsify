rendering
initialize 
	super initialize. 
      self nullUser: (SfUser new username: '').
	self availableUserList: OrderedCollection new. 
	self availableUserList add: self nullUser.