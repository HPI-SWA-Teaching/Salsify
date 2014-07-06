magritte
descriptionReport
	<magritteDescription>
	^ super magritteDescription
		select: [:each | each label ~= 'Sf User' and: [#(email gitHubName username) includes: each accessor selector]]