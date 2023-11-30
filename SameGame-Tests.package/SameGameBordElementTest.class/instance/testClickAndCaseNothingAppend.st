tests
testClickAndCaseNothingAppend

| board case caseAfterClick |

board := SBoardElement new board: GameTest new gridForTest .
case := board children second.
self assert: case case isYellowCase.
"fonctionne jusque ici"

"case seul donc pas de suppression"
case click.
caseAfterClick:= board children second.
self assert: case equals: caseAfterClick .