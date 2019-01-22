binding
storeInstruction: instructionSet in: aBlock
	| symbol value nextSymbol |

	symbol := (instructionSet at: 1) at: 1.
	value := (instructionSet at: 1) at: 2.

	instructionSet remove: (instructionSet at: 1).

	nextSymbol := instructionSet isEmpty
		ifTrue: [ #RETURN ]
		ifFalse: [ (instructionSet at: 1) at: 1 ].

	^ self storeBinding: symbol	with: [
		value value.
		nextSymbol binding value
	] in: aBlock