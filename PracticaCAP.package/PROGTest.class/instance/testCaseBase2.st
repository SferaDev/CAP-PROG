default
testCaseBase2
	| result |
	result := PROG withInit: {{ #n . 10 } . { #coll . OrderedCollection new }}  do: {
		{ #label1 . [ #n binding == 0 ifTrue: [ #RETURN binding value: #coll binding ]  ] } .
		{ #label2 . [ #coll changeBinding: ((#coll binding) add: #n binding; yourself) ] } .
		{ #label3 . [ #n changeBinding: (#n binding - 1) ] } .
		{ #label4 . [ #label1 binding value ] }
	}.
	self assert: (result includesAll: #(10 9 8 7 6 5 4 3 2 1)).