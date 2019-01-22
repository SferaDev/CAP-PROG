general
testCaseCapturedVariables
	| result capturedVariable |

	capturedVariable := 0.

	result := PROG withInit: { { #n . 0 } } do: {
		{ #label1 . [ capturedVariable := 5 ] } .
		{ #label2 . [ #RETURN binding value: capturedVariable ] } .
	}.

	self assert: result == 5.