tests
testClickAndOneColumnDisappear

| board case caseAfterClick |

board := SGGraphicBoard new board: GameTest new gridForTest.
case := board children at:3.
self assert: case case isRedCase.
"fonctionne jusque ici"

case click.
caseAfterClick:= board children at:3.
self assert: caseAfterClick case isYellowCase.
self assert: (board children at:5) case isNullCase.
