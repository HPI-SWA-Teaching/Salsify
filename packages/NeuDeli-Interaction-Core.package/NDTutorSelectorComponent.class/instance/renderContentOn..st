rendering
renderContentOn: html
	self resetUserList.
	
	html select
			class: 'groupselect select';
			list: self userList ;
			callback: [: value | self validateTutorChange: value];
			selected: self selectedUser;
			onChange: (html scriptaculous updater
									id: 'tutorSelectorForm';
									callback: [:r | self parent renderTutorSelectorsOn: r];
									triggerForm: 'tutorSelectorForm';
									onStatus: 200 do: 'saveNotification("tutorSelectorForm")')