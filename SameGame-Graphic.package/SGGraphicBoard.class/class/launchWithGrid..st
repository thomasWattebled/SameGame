as yet unclassified
launchWithGrid: aGrid
	| aFieldElement space |
	space := BlSpace new.
	aFieldElement := self new
		                 grid: aGrid;
		                 yourself.
	space root addChild: aFieldElement.
	space pulse
		extent: 500 @ 500;
		resizable: false;
		show