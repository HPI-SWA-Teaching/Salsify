as yet unclassified
saveOldSelectedUsers
	self oldSelectedUsers: SfGroup new.
	self oldSelectedUsers addMember: self session user.
	self groupSelectors do: [:each | (each selectedUser asString = '')
										ifFalse: [self oldSelectedUsers addMember: each selectedUser]]