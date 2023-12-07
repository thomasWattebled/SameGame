instance creation
open

	| space  randomMenu bar title |
	
	randomMenu := self menuRandom.
	bar := self menuBar.
	title := self title.

	bar addMenu: randomMenu.

	space := BlSpace new.
	space root addChild: title.
	space root addChild: bar.
	space extent: 500 @ 500.
	space show