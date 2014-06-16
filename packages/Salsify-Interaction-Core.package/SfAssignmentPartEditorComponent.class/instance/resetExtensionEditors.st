initialization
resetExtensionEditors
	self assignmentPart removeEmptyExtensions.
	self assignmentPart addExtension: ''.

	self extensionEditors: OrderedCollection new.
	self assignmentPart extensions
		do: [:each | self addExtensionEditor: (SfExtensionEditorComponent new extension: each)].
	
	self distributeExtensionEditorIDs