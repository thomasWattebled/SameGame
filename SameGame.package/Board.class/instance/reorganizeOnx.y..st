as yet unclassified
reorganizeOnx: x y: y

	| cpt case |
	y = self grid height  ifTrue: [ ^ self ].
	cpt := y+1.
	(self grid at: x @ y) isNullCase ifTrue: [
		[ (self grid at: x @ cpt) isNullCase and: cpt < self grid height ] whileTrue: [
			cpt := cpt + 1 ] ]
	ifFalse: [  y < self grid height ifTrue: [ ^ self reorganizeOnx: x y: y+1  ] ].
	
	self grid height +1 = cpt ifTrue: [ ^ self ].
	case := self grid at: x @ y.
	self grid at: x @ y put: (self grid at: x @ cpt).
	self grid at: x @ cpt put: case.
	
	cpt = self grid height ifTrue: [ ^ self ].
	y < self grid height ifTrue: [ ^ self reorganizeOnx: x y: y+1  ]