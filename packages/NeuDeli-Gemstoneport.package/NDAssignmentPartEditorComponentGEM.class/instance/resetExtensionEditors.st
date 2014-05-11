as yet unclassified
resetExtensionEditors
	self extensionEditors: OrderedCollection new.
	self assignmentPart removeEmptyExtensions.
	self assignmentPart addExtension: ''.
	self assignmentPart extensions
		do: [:each | self addExtensionEditor: (NDExtensionEditorComponent new extension: each)].
	
	self extensionEditors
		do: [:each | each parent: self.
					each assignmentEditorID: self assignmentEditorID. 
					each assignmentPartEditorID: self assignmentPartEditorID]