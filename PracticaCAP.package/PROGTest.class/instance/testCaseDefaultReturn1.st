general
testCaseDefaultReturn1
	| result |

	result := PROG withInit: { "Empty variables" } do: {
		{ #label . [ #RETURN binding value ] } .
	}.

	self assert: result isNil.