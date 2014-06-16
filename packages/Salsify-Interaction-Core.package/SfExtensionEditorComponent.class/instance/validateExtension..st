as yet unclassified
validateExtension: anExtension
	self extension ~= anExtension
		ifTrue: [self parent assignmentPart removeExtension: self extension.
				self extension: anExtension.
				self parent assignmentPart addExtension: anExtension.
				self parent resetExtensionEditors]