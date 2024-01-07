# SameGame
Implementation du jeu SameGame par Wattebled Thomas, De Sainte Maresville Maxime, Javad.

# Installation du jeu 

## Installer les packages

Il Faut tout d'abord installer Bloc et Myg avec le code ci-dessous :

``` smalltalk 
Metacello new
    baseline: 'Bloc';
    repository: 'github://pharo-graphics/Bloc:05e5b0e385811719537f8cd89966b150a07be985/src';
    onConflictUseIncoming;
    load;
    lock.

Metacello new
    repository: 'github://Ducasse/Myg:v1.0.0';
    baseline: 'Myg';
    onConflictUseIncoming;
    load.
```

Il faut ensuite à partir de git repository browser remplir le Owner Name "thomasWattebled" et le Project name "SameGame" avec protocole HTTPS.

![Alt text](image.png).

## Jouer au jeu

Pour jouer, il suffit de taper ```SameGameGraphic open ``` dans un PlayGround.

Les règles du jeu sont simples :
Il suffit de clicker sur les cases de couleur (rouge, bleu, verte, jaune) qui sont adjacentes à au moins une case de la même couleur. Celles-ci disparaîtront, la grille de jeu se réorganisera (décalage de bas en haut puis de droite à gauche), et le but est de n'avoir plus aucune case à la fin.

## Le code du jeu

Le code se trouvera dans les packages suivants :
- SameGame (coeur du jeu)
- SameGame-Graphic (partie graphique du jeu)
- SameGame-Graphic-Tests (tests de la partie graphique du jeu)
- SameGame-Tests (tests du coeur du jeu)

# Implementation

## Les classes

Côté coeur du jeu, nous avons une classe Board (représentant le board du jeu) qui hérite notamment de MygBoard pour hériter de son API. Une AbstractCase (représentant une case) qui hérite de MygAbtractBox pour son API également, et ensuite des cases représentant chaque couleur qui vont hériter d'AbstractCase car chaque couleur pourrait avoir un comportement différent (rapporte plus ou moins de points, possède bonus etc...). Nous avons ensuite la classe Game qui représente une partie.

Côté partie graphique, nous avons les classes SGBoardElement (représentant le board graphique) et SGCaseElement (représentant la case graphique) qui héritent de BlElement. La classe principale SameGameGraphic sera utilisée notamment pour sa méthode de classe "open" qui gère la création d'une partie (en associant coeur du jeu et partie graphique).

## Les design patterns

Pour les cases du côté du coeur du jeu, on retrouve le design Pattern NullPattern qui permet de faire la différence entre les cases cliquables et les non cliquables.

Nous avons également mis en place un double dispatch côté coeur du jeu pour le fonctionnement du hit d'une case, et ainsi de la propagation du hit des cases adjacentes.

## Les priorités

La priorité était tout d'abord d'avoir un coeur de jeu fonctionnel et de s'assurer que ce qui avait été fait marcherait toujours par la suite.
Ceci passe donc par la création de tests dans un premier temps, et de l'écriture du code pour répondre à ces tests.

Lorsque le coeur du jeu a été terminé, nous nous sommes penchés sur le fonctionnement de bloc et de son implémentation dans les différents jeux existants dans Myg pour créer la partie graphique.
Ici il était plus compliqué de faire du TDD, c'est pourquoi les tests ont été rédigés après.
