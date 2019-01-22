general
testCaseDefaultReturn2
	| result |

	result := PROG withInit: { "Empty variables" } do: {
		{ #label . [ "Empty block" ] } .
	}.

	self assert: result isNil.