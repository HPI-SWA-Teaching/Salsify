magritte
descriptionReport
	<magritteDescription>
	^ super magritteDescription
		select: [:each | #(email gitHubName username) includes: each accessor selector]