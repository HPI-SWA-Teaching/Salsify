groupManaging
setGroupNumbers
	1 to: (self groups size) do: [: i|
			 (self groups at: i) number: i]