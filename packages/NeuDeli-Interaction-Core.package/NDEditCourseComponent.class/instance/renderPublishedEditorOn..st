rendering
renderPublishedEditorOn: html
	html form id: 'publishedform'; 
				with: [html checkbox
								onChange: (html scriptaculous updater
												triggerForm: 'publishedform';
												onStatus: 200 do: 'saveNotification("publishedform")');
								value: self course published;
								callback: [:value | self course published: value];
								with: [html text: 'Lehrveranstaltung für alle sichtbar']].