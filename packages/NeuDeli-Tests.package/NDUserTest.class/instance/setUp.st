running
setUp
	self course: NDCourse new.
	self course tutors add: NDUser new;
					     add: NDUser new.
	self course privilegedTutors add: NDUser new;
								   add: NDUser new.
	
