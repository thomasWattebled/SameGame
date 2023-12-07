private - menu building
menuRandom

	| menu subMenu1 subMenu2 grid|
	menu := ToMenu new.
	subMenu1 := ToMenu new.
	subMenu2 := ToMenu new.
	menu labelText: 'Play'.
	menu iconImage: (Smalltalk ui icons iconNamed: #solidMenu).
	
	grid := (CTNewArray2D
				   width: 4
				   height: 4
				   tabulate: [ :x :y | SGGraphicCase new color: Color lightGray ]).
	
	subMenu1 labelText: 'Random'.					    
	subMenu1  whenClickedDo: (SGGraphicBoard launchWithGrid: grid).
					 
		menu addItem: subMenu1.

	^ menu