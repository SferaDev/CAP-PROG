general
testCaseEmptyInstructions
	self should: [
		PROG withInit: { "Empty parameters" } do: { "Empty instructions" }.
	] raise: Error.