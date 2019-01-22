default
testCaseBase1
	| result |
	
	result := PROG withInit: { #n . { #d . 0 } } do: {
		{ #label1 . [ #n changeBinding: 0 ] } .
		{ #label2 . [ #n changeBinding: (#n binding + 1) ] } .
		{ #label3 . [ #n changeBinding: (#n binding + 1) ] } .
		{ #label4 . [ #n changeBinding: (#n binding + 1) ] } .
		{ #label5 . [ #n changeBinding: (#n binding + 1) ] } .
		{ #label6 . [ #n changeBinding: (#n binding + 1) ] } .
		{ #label7 . [ #RETURN binding value: #n binding  ] } .
	}.

	self assert: result == 5.