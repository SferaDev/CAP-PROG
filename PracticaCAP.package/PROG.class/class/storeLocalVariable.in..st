binding
storeLocalVariable: initBlock in: aBlock
	| param |

	param := (initBlock at: 1).

	initBlock remove: (initBlock at: 1).

	param isArray ifTrue: [
		^ self storeBinding: (param at: 1) with: (param at: 2) in: aBlock
	].

	^ self storeBinding: param with: nil in: aBlock.