rendering
renderGroupsAndTopicsEditorOn: html
	html div
		class: 'courseInfoBox';
	 	with: [html heading
					level: 3;
					with: [html text: 'Gruppen und Themen'].
			
			html anchor 
					callback: [self session rootComponent showAllGroupEditComponentwith: (self course)];
					class: 'button';
					with: 'Gruppen bearbeiten'.

			html table
					class: 'formTable';
					with: [self
							renderGroupEditorOn: html;
							renderTopicTypeEditorOn: html].

			html div id: 'topicPoolEditor'; with: [self renderTopicPoolEditorContainerOn: html]]