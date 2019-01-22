general
testCaseJumping
	| result |

	result := PROG withInit: { { #n . 0 } } do: {
		{#label1 . [ #label3 binding value ] } .
		{#label2 . [ #n changeBinding: 1 ] } .
		{#label3 . [ #RETURN binding value: #n binding ] } .
	}.

	self assert: result == 0.