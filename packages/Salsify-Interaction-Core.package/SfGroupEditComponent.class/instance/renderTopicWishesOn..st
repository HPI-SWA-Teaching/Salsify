rendering
renderTopicWishesOn: html
	html tableRow: [html tableData
							class: 'tdLeft';
							with: [html label with: 'Wunschthemen: '].
					html tableData: [html span
											class: 'tdText';
											with: [(1 to: 3)
													do: [:eachWishIndex | self renderTopicWishAt: eachWishIndex On: html]
													separatedBy: [html text: ' ']]]]