rendering
renderContentOn: html
	self createUserList.
	html select
	class: 'pgroupselect select';
	list: self userList ;
	callback: [: value | self validateTutorChange: value. self privilegedTutors add: value];
	selected: self selectedUser;
	onChange: (html scriptaculous updater
	id: 'ptutorSelectorForm';
	callback: [:r | self renderPrivilegedTutorSelectorsOn: r];
	triggerForm: 'ptutorSelectorForm';
	onStatus: 200 do: 'saveNotification("ptutorSelectorForm")')