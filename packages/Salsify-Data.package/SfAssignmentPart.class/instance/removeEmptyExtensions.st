extensionManaging
removeEmptyExtensions
	self extensions: (self extensions reject: [:each | each = ''])