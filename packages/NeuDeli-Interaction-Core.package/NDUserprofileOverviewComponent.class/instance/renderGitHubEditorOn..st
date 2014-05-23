rendering
renderGitHubEditorOn: html
	html tableRow: [
		html tableData: [html label: 'GitHub name:'].
		html tableData: [html form id: 'gitHubForm'; 
									with: [html textInput
														id: 'gitHubNameInput';
														name: 'titleName';
														value: self session user gitHubName;
														callback: [:value | self session user gitHubName: value];
														onChange: (
															html scriptaculous updater
															triggerForm: 'gitHubNameInput';
															onStatus: 200 do: 'saveNotification("gitHubNameInput")';
															callback: [ :r | self renderGitHubEditorOn: r  ])		
															]].
		html tableData: [html anchor
				url: 'https://www.github.com/',  (self session user gitHubName); 
				with: [html image
								id: 'gitHubLink';
								url: NDLibrary / #githubfaviconSvg; 
								altText: 'GITHUB BITCH!!!!!']; 
				class: 'mailLink']]