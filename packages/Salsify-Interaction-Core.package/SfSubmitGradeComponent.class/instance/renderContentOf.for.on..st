as yet unclassified
renderContentOf: aSfAssignment for: aSfGroup on: html
	html unorderedList
			with: [aSfAssignment assignmentParts 
					do: [:each | html listItem: [self renderStatusOf: aSfAssignment and: each for: aSfGroup on: html.
							((aSfAssignment getDeadlineFor: aSfGroup) < Date current)
								ifTrue: [self renderGradingOf: each and: aSfAssignment for: aSfGroup on: html]]]]	 