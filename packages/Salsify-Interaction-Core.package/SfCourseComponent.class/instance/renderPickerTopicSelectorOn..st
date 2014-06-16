rendering
renderPickerTopicSelectorOn: html
	html table 
			with: [(1 to: 3)
					do: [:eachIndex | self renderWishSelectorForWish: eachIndex on: html]]