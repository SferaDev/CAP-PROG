*PracticaCAP
changeBinding: newValue
	| context |
	context := thisContext.
	[ context = nil ] whileFalse:
		[   ((context receiver isMemberOf: Binding)
				and: [ context selector = #of:to:in:
					and: [context receiver key = self]])
				"Store new binding value and return"
				ifTrue: [^ context receiver value: newValue]
				ifFalse: [context := context sender]
		].
	self error: 'No binding for ', self asString.