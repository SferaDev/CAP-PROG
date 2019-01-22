general
testCaseContinuation
	| result kont |

	result := PROG withInit: { "Empty variables" } do: {
		{ #label1 . [ kont := Continuation callcc: [ :cc | cc ] ] } .
		{ #label2 . [ (kont == 10) ifFalse: [ kont value: 10 ] ] } .
		{ #label3 . [ #RETURN binding value: kont ] } .
	}.

	self assert: result == 10.