general
testCaseEarlyReturn
	| result capturedVariable |

	capturedVariable := 0.

	result := PROG withInit: { "Empty variables" } do: {
		{ #label1 . [ #RETURN binding value: 1 ] } .
		{ #label2 . [ capturedVariable := 5 ] } .
		{ #label3 . [ #RETURN binding value: 2 ] } .
	}.

	self assert: capturedVariable == 0.
	self assert: result == 1.