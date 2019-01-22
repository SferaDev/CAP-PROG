public
withInit: initBlock do: instructionSet
	| instance |

	instance := self new.

	instructionSet isEmpty ifTrue: [ Error signal: 'Empty Instruction Set' ].

	"Create the default return point as a continuation"
	^ Continuation callcc: [ :kont |
		"Initialize instance with aContinuation to return and aSymbol to start"
		instance initializeWith: kont and: ((instructionSet at: 1) at: 1).
		"Launch recursive execution"
		instance withInit: (initBlock asOrderedCollection) do: (instructionSet asOrderedCollection).
	].