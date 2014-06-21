rendering
renderContentOn: html
	self resetStudentList.

	html select
			class: 'groupselect select';
			list: self userList;
			callback: [: value | self validateGroupChange: value];
			selected: self selectedUser;
			onChange: (html scriptaculous updater
								id: 'groupAndTopic';
								callback: [:r | self parent parent renderGroupSelectorContainerOn: r.
											self parent parent renderTopicSelectorOn: r];
								triggerForm: 'groupSelectForm';
								onStatus: 200 do: 'saveNotification("groupSelectForm")')