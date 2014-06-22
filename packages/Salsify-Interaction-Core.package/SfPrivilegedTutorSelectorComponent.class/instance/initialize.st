rendering
initialize 
	super initialize. 
      self nullUser: (SfUser new username: '').
	self freeUserList: OrderedCollection new. 
	self freeUserList add: self nullUser.