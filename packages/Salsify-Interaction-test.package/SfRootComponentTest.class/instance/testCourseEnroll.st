tests
testCourseEnroll

self loginAsStudent .
self assertLoginSuccessful.
self assert: (self isTextPresent: 'belegen').
self enrollLink click.
self assert: (self isTextPresent: 'belegt als Student.').
