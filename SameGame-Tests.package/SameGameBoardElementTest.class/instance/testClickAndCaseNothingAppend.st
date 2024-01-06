tests
testClickAndCaseNothingAppend

	| board game |
	game := Game new.
	board := GameTest new boardForTest game: game.
	self assert: (board grid at:2@1) litteral equals: 'Y'.
	board hitCaseOnx: 2 y: 1 .
	"La case en 2,1 n'a pas de case voisine qui est de la même couleur donc il ne se passe rien"
	self assert: (board grid at:2@1) litteral equals: 'Y'.