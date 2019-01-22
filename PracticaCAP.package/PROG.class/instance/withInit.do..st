main
withInit: initBlock do: instructionSet
	"If we have local variables left, store them as bindings"
	initBlock isEmpty ifFalse: [
		^ self class storeLocalVariable: initBlock in: [
			self withInit: initBlock do: instructionSet.
		].
	].

	"If we have instructions left, store them as bindings"
	instructionSet isEmpty ifFalse: [
		^ self class storeInstruction: instructionSet in: [
			self withInit: initBlock do: instructionSet
		].
	].

	"Store return point and start execution with first instruction"
	^ self class storeBinding: #RETURN with: finalDestination in: [ entryPoint binding value ].