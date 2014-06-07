rendering
renderContentOn: html
	self resetUserList.
	
	html select
			class: 'pgroupselect select';
			list: self userList ;
			callback: [: value | self validateTutorChange: value];
			selected: self selectedUser;
			onChange: (html scriptaculous updater
									id: 'ptutorSelectorForm';
									callback: [:r | self parent renderPrivilegedTutorSelectorsOn: r];
									triggerForm: 'ptutorSelectorForm';
									onStatus: 200 do: 'saveNotification("ptutorSelectorForm")')