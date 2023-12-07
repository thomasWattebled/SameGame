tests
testClickAndMultipleCaseDisappear

| board case caseAfterClick |

board := SGGraphicBoard new board: GameTest new gridForTest.
case := board children at:6.
self assert: case case isGreenCase.
"fonctionne jusque ici"

case click.
caseAfterClick:= board children at:6.
self assert: caseAfterClick case isRedCase.