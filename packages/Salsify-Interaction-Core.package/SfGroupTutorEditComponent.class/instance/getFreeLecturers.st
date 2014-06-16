initialization
getFreeLecturers
	^self session database allAdmins 
		select: [:each | (each isTutorForGroup: self group) not]