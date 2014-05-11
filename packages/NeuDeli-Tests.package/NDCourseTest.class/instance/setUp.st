as yet unclassified
setUp
	self course: NDCourse new.
	self aGroup: NDGroup new.
	self aTutor: NDUser new.
	
	self course groups: OrderedCollection new.
	self course groups add: NDGroup new;
						add: NDGroup new.
		
	self course tutors: OrderedCollection new.
	self course tutors add: NDUser new;
					     add: NDUser new.	
	
	self course topicPool add: 'ein Thema'; add: 'und noch eins'.
	