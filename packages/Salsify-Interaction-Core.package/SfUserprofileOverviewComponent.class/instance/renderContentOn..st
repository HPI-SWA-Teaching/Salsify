rendering
renderContentOn: html
	"self renderHeadingOn: html.
	html 
		div
		class: 'courseInfoBox'; 
		with: [ html table
				class: 'formTable';
				with: [ self 
						renderNameEditorOn: html;
						renderEmailEditorOn: html;
						renderGitHubEditorOn: html]] " 