initialization
drawNullCasex:x y:y
	self grid at:(Point x:x y:y) put: (SGGraphicCase new color: (Color lightGray)).