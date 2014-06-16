tests
testCourseLeave

self loginAsStudent .
self enrollLink click.
self leaveLink click.
self should: [self leaveLink ] raise: BPNoSuchElementException.