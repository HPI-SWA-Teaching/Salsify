magritte
descriptionReport
	
	^ self magritteDescription
		select: [:each | each label ~= 'Sf Group' and: [#(members number topic) includes: each accessor selector]]