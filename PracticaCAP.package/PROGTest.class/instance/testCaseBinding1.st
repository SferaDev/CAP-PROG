general
testCaseBinding1
	#n bindTo: 1 in: [ 
		#n changeBinding: 10.
		self assert: #n binding == 10.
	] .