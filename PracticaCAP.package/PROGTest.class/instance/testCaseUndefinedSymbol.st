general
testCaseUndefinedSymbol
	self should: [
		PROG withInit: { "Empty parameters" } do: {
			{ #label1 . [ #label2 binding value ] } .
			{ #label3 . [ #RETURN binding value ] } .
		}.
	] raise: Error. "No binding for label2"