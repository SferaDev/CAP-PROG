general
testCaseInnerBlockReturn
	| result capturedVariable |

	capturedVariable := 0.

	result := PROG withInit: { "Empty variables" } do: {
		{ #label1 . [ capturedVariable := [ capturedVariable := 5. #RETURN binding value: 1 ] ] } .
		{ #label2 . [ capturedVariable value ] } .
		{ #label3 . [ #RETURN binding value: 2 ] } .
	}.

	self assert: capturedVariable == 5.
	self assert: result == 1.