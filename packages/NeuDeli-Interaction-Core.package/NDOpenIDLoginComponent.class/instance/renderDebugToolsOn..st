debug-only
renderDebugToolsOn: html
	NDLibrary debug 
		ifTrue: [html div
					class: 'debug loginBox';
					with: ["self renderDebugLoginFormOn: html."
						self renderPresentationHeadingOn: html.
						self renderDebugLoginShortcutsOn: html.
					"	self renderDatabaseResetButtonsOn: html"]]