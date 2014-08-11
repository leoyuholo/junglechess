<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.8 of 2011年3月30日 on 2012年4月8日 at 下午02時01分57秒</time-stamp>


<component-created>
<name>JungleChessP3</name> <type>package</type>
</component-created><!-- Package JungleChessP3* -->


<component-created>
<name>JungleChessP3</name> <type>package</type>
</component-created>

<class>
<name>Chess</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chessSet square rank chessPic exist lastSquare canJump canSwim canMoveDiagonally isLimitedMove </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Chess</class-id>
<body>Basic component of Jungle Chess game.
</comment>

<class>
<name>Rat</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Rat</class-id>
<body>Rat is a kind of chess with rank 1 that can swin.
</comment>

<class>
<name>JungleChessView</name>
<environment>Smalltalk</environment>
<super>UI.CompositeView</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>JungleChessView</class-id>
<body>View of Jungle Chess game. Wrapping all the picture of squares to Jungle Chess Window.
</comment>

<class>
<name>Board</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jungleChess squares width height </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Board</class-id>
<body>Collection of squares to form a game board.
</comment>

<class>
<name>Jaguar</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Jaguar</class-id>
<body>Jaguar is a kind of chess with rank 5.
</comment>

<class>
<name>SquareController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>SquareController</class-id>
<body>Controller monitoring mouse click on square.
</comment>

<class>
<name>Square</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>board boardPosition terrain squarePic chessOnSquare trapOnSquare denOnSquare fruitOnSquare </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Square</class-id>
<body>Basic component of the game board. Terrain 0 is emply square, Terrain 1 is normal ground, Terrain 2 is river, Terrain 3 is normal ground near to the river.
</comment>

<class>
<name>Wolf</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Wolf</class-id>
<body>Wolf is a kind of chess with rank 4.</body>
</comment>

<class>
<name>Crocodile</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Crocodile</class-id>
<body>Crocodile is a kind of chess with rank 9 that can swim and limited move.
</comment>

<class>
<name>Lion</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Lion</class-id>
<body>Lion is a kind of chess with rank 7 that can jump over river.
</comment>

<class>
<name>Judge</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jungleChess curPlayerTurn pickedSquare totalNumberOfTurn messageStatement endGame </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Judge</class-id>
<body>Judge is the rules of Jungle Chess game.
</comment>

<class>
<name>ChessSet</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>player numOfChess rat superCat dog wolf jaguar tiger lion elephant crocodile den trap1 trap2 trap3 monster </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>ChessSet</class-id>
<body>Information collection of chesses for a player.
</comment>

<class>
<name>Den</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chessSet square denPic </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Den</class-id>
<body>Den on square.</body>
</comment>

<class>
<name>Player</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jungleChess chessSet name secRemain numOfUndo </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Player</class-id>
<body>Prototype of players, later deviated to different kind of players.
</comment>

<class>
<name>PlayerRed</name>
<environment>Smalltalk</environment>
<super>Player</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>PlayerRed</class-id>
<body>PlayerRed of Jungle Chess game.
</comment>

<class>
<name>Trap</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chessSet square trapPic </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Trap</class-id>
<body>Traps on squares, function differently according to which player owns it.
</comment>

<class>
<name>PlayerBlack</name>
<environment>Smalltalk</environment>
<super>Player</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>PlayerBlack</class-id>
<body>PlayerBlack of Jungle Chess game.
</comment>

<class>
<name>SuperCat</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>SuperCat</class-id>
<body>SuperCat is a kind of chess with rank 2 that can move diagonally.
</comment>

<class>
<name>JungleChess</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>judge board player1 player2 player3 player4 playerMonster jungleChessWindow </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>JungleChess</class-id>
<body>The model of Jungle Chess game. Holding all the information about the game.
</comment>

<class>
<name>Elephant</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Elephant</class-id>
<body>Elephant is a kind of chess with rank 8.
</comment>

<class>
<name>JungleChessWindow</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jungleChessView jungleChess messagePrompt </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>JungleChessWindow</class-id>
<body>Jungle Chess Window holding view holder, buttons and message prompt.
</comment>

<class>
<name>PlayerMonster</name>
<environment>Smalltalk</environment>
<super>Player</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>PlayerMonster</class-id>
<body>PlayerMonster is the player controlling the monster.
</comment>

<class>
<name>PlayerBlue</name>
<environment>Smalltalk</environment>
<super>Player</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>PlayerBlue</class-id>
<body>PlayerBlue of Jungle Chess game.
</comment>

<class>
<name>JungleChessController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>JungleChessController</class-id>
<body>Controller of Jungle Chess.
</comment>

<class>
<name>Dog</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Dog</class-id>
<body>Dog is a kind of chess with rank 3.
</comment>

<class>
<name>SquareView</name>
<environment>Smalltalk</environment>
<super>UI.View</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>SquareView</class-id>
<body>Show picture of square to JungleChessView.
</comment>

<class>
<name>PlayerGreen</name>
<environment>Smalltalk</environment>
<super>Player</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>PlayerGreen</class-id>
<body>PlayerGreen of Jungle Chess game.
</comment>

<class>
<name>Tiger</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Tiger</class-id>
<body>Tiger is a kind of chess with rank 6 that can jump over river.
</comment>

<class>
<name>Monster</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Monster</class-id>
<body>Monster is a kind of chess with rank 10 that can swim and move diagonally.
</comment>

<class>
<name>Cat</name>
<environment>Smalltalk</environment>
<super>Chess</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChessP3</package>
</attributes>
</class>

<comment>
<class-id>Cat</class-id>
<body>Cat is a kind of chess with rank 2. (Not being used in Extended Jungle Chess)
</comment>

<methods>
<class-id>Chess class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new
</methods>


<methods>
<class-id>Chess</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="exist:">exist: anObject

<body package="JungleChessP3" selector="rank:">rank: anObject

<body package="JungleChessP3" selector="canJump">canJump

<body package="JungleChessP3" selector="canSwim:">canSwim: anObject

<body package="JungleChessP3" selector="exist">exist

<body package="JungleChessP3" selector="chessPic">chessPic

<body package="JungleChessP3" selector="lastSquare:">lastSquare: anObject

<body package="JungleChessP3" selector="square:">square: anObject

<body package="JungleChessP3" selector="lastSquare">lastSquare

<body package="JungleChessP3" selector="chessSet:">chessSet: anObject

<body package="JungleChessP3" selector="rank">rank

<body package="JungleChessP3" selector="isLimitedMove:">isLimitedMove: anObject

<body package="JungleChessP3" selector="canSwim">canSwim

<body package="JungleChessP3" selector="square">square

<body package="JungleChessP3" selector="chessSet">chessSet

<body package="JungleChessP3" selector="canMoveDiagonally:">canMoveDiagonally: anObject

<body package="JungleChessP3" selector="chessPic:">chessPic: anObject

<body package="JungleChessP3" selector="isLimitedMove">isLimitedMove

<body package="JungleChessP3" selector="canJump:">canJump: anObject

<body package="JungleChessP3" selector="canMoveDiagonally">canMoveDiagonally
</methods>

<methods>
<class-id>Chess</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="setChess:">setChess: anObject
</methods>


<methods>
<class-id>Monster</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setMonster:">setMonster: anObject

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>Wolf</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="setWolf:">setWolf: anObject
</methods>


<methods>
<class-id>Crocodile</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setCrocodile:">setCrocodile: anObject

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>Player class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new
</methods>


<methods>
<class-id>Player</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="numOfUndo">numOfUndo

<body package="JungleChessP3" selector="secRemain">secRemain

<body package="JungleChessP3" selector="jungleChess:">jungleChess: anObject

<body package="JungleChessP3" selector="name">name

<body package="JungleChessP3" selector="jungleChess">jungleChess

<body package="JungleChessP3" selector="chessSet:">chessSet: anObject

<body package="JungleChessP3" selector="secRemain:">secRemain: anObject

<body package="JungleChessP3" selector="chessSet">chessSet

<body package="JungleChessP3" selector="numOfUndo:">numOfUndo: anObject

<body package="JungleChessP3" selector="name:">name: anObject
</methods>

<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="setPlayer:">setPlayer: anObject
</methods>


<methods>
<class-id>Square class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new
</methods>


<methods>
<class-id>Square</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="terrain:">terrain: anObject

<body package="JungleChessP3" selector="board">board

<body package="JungleChessP3" selector="fruitOnSquare">fruitOnSquare

<body package="JungleChessP3" selector="squarePic:">squarePic: anObject

<body package="JungleChessP3" selector="chessOnSquare:">chessOnSquare: anObject

<body package="JungleChessP3" selector="denOnSquare">denOnSquare

<body package="JungleChessP3" selector="boardPosition:">boardPosition: anObject

<body package="JungleChessP3" selector="terrain">terrain

<body package="JungleChessP3" selector="trapOnSquare:">trapOnSquare: anObject

<body package="JungleChessP3" selector="trapOnSquare">trapOnSquare

<body package="JungleChessP3" selector="squarePic">squarePic

<body package="JungleChessP3" selector="boardPosition">boardPosition

<body package="JungleChessP3" selector="board:">board: anObject

<body package="JungleChessP3" selector="chessOnSquare">chessOnSquare

<body package="JungleChessP3" selector="fruitOnSquare:">fruitOnSquare: anObject

<body package="JungleChessP3" selector="denOnSquare:">denOnSquare: anObject
</methods>

<methods>
<class-id>Square</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setSquare:setPosi:">setSquare: anObject setPosi: aPoint

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>JungleChess class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new
</methods>


<methods>
<class-id>JungleChess</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="player4:">player4: anObject

<body package="JungleChessP3" selector="player2">player2

<body package="JungleChessP3" selector="player1:">player1: anObject

<body package="JungleChessP3" selector="playerMonster:">playerMonster: anObject

<body package="JungleChessP3" selector="player4">player4

<body package="JungleChessP3" selector="jungleChessWindow:">jungleChessWindow: anObject

<body package="JungleChessP3" selector="board:">board: anObject

<body package="JungleChessP3" selector="playerMonster">playerMonster

<body package="JungleChessP3" selector="jungleChessWindow">jungleChessWindow

<body package="JungleChessP3" selector="player3:">player3: anObject

<body package="JungleChessP3" selector="player1">player1

<body package="JungleChessP3" selector="player3">player3

<body package="JungleChessP3" selector="judge:">judge: anObject

<body package="JungleChessP3" selector="board">board

<body package="JungleChessP3" selector="judge">judge

<body package="JungleChessP3" selector="player2:">player2: anObject
</methods>

<methods>
<class-id>JungleChess</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setJungleChess:">setJungleChess: aJungleChessWindow

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>Den class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new
</methods>


<methods>
<class-id>Den</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="square:">square: anObject

<body package="JungleChessP3" selector="square">square

<body package="JungleChessP3" selector="chessSet:">chessSet: anObject

<body package="JungleChessP3" selector="chessSet">chessSet

<body package="JungleChessP3" selector="denPic:">denPic: anObject

<body package="JungleChessP3" selector="denPic">denPic
</methods>

<methods>
<class-id>Den</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="setDen:">setDen: anObject
</methods>


<methods>
<class-id>PlayerMonster</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="moveMonster">moveMonster

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>Elephant</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setElephant:">setElephant: anObject

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>Trap class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new
</methods>


<methods>
<class-id>Trap</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="square">square

<body package="JungleChessP3" selector="square:">square: anObject

<body package="JungleChessP3" selector="trapPic:">trapPic: anObject

<body package="JungleChessP3" selector="trapPic">trapPic

<body package="JungleChessP3" selector="chessSet">chessSet
</methods>

<methods>
<class-id>Trap</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="chessSet:">chessSet: anObject

<body package="JungleChessP3" selector="setTrap:">setTrap: anObject
</methods>


<methods>
<class-id>JungleChessWindow class</class-id> <category>interface specs</category>

<body package="JungleChessP3" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>JungleChessWindow</class-id> <category>aspects</category>

<body package="JungleChessP3" selector="messagePrompt">messagePrompt
</methods>

<methods>
<class-id>JungleChessWindow</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="jungleChessView">jungleChessView
</methods>

<methods>
<class-id>JungleChessWindow</class-id> <category>actions</category>

<body package="JungleChessP3" selector="newGame">newGame
</methods>


<methods>
<class-id>JungleChessView</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="defaultControllerClass">defaultControllerClass
</methods>

<methods>
<class-id>JungleChessView</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="model:">model: anObject
</methods>


<methods>
<class-id>PlayerGreen</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>Judge class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new
</methods>


<methods>
<class-id>Judge</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="endGame:">endGame: anObject

<body package="JungleChessP3" selector="totalNumberOfTurn:">totalNumberOfTurn: anObject

<body package="JungleChessP3" selector="pickedSquare:">pickedSquare: anObject

<body package="JungleChessP3" selector="jungleChess:">jungleChess: anObject

<body package="JungleChessP3" selector="totalNumberOfTurn">totalNumberOfTurn

<body package="JungleChessP3" selector="endGame">endGame

<body package="JungleChessP3" selector="curPlayerTurn:">curPlayerTurn: anObject

<body package="JungleChessP3" selector="messageStatement:">messageStatement: anObject

<body package="JungleChessP3" selector="pickedSquare">pickedSquare

<body package="JungleChessP3" selector="curPlayerTurn">curPlayerTurn

<body package="JungleChessP3" selector="jungleChess">jungleChess

<body package="JungleChessP3" selector="messageStatement">messageStatement
</methods>

<methods>
<class-id>Judge</class-id> <category>judging</category>

<body package="JungleChessP3" selector="judgeClick:">judgeClick: aSquare

<body package="JungleChessP3" selector="judgePick:">judgePick: aSquare

<body package="JungleChessP3" selector="judgeRelease:">judgeRelease: aSquare

<body package="JungleChessP3" selector="cleanUpPlayer">cleanUpPlayer

<body package="JungleChessP3" selector="checkWin">checkWin

<body package="JungleChessP3" selector="judgeCapture:">judgeCapture: aSquare
</methods>

<methods>
<class-id>Judge</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="setJudge:">setJudge: anObject
</methods>


<methods>
<class-id>SquareView</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="defaultControllerClass">defaultControllerClass

<body package="JungleChessP3" selector="model:">model: anObject
</methods>

<methods>
<class-id>SquareView</class-id> <category>displaying</category>

<body package="JungleChessP3" selector="displayOn:">displayOn: aGraphicsContext
</methods>

<methods>
<class-id>SquareView</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>Dog</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="setDog:">setDog: anObject
</methods>


<methods>
<class-id>Board class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new
</methods>


<methods>
<class-id>Board</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="width">width

<body package="JungleChessP3" selector="height">height

<body package="JungleChessP3" selector="jungleChess">jungleChess

<body package="JungleChessP3" selector="width:">width: anObject

<body package="JungleChessP3" selector="squares:">squares: anObject

<body package="JungleChessP3" selector="squares">squares

<body package="JungleChessP3" selector="height:">height: anObject

<body package="JungleChessP3" selector="jungleChess:">jungleChess: anObject
</methods>

<methods>
<class-id>Board</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setBoard:">setBoard: aJungleChess

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>Jaguar</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setJaguar:">setJaguar: anObject

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>PlayerRed</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>JungleChessController</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>ChessSet class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new
</methods>


<methods>
<class-id>ChessSet</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setChessSet:">setChessSet: anObject

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="clean">clean
</methods>

<methods>
<class-id>ChessSet</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="wolf">wolf

<body package="JungleChessP3" selector="rat">rat

<body package="JungleChessP3" selector="player:">player: anObject

<body package="JungleChessP3" selector="trap3">trap3

<body package="JungleChessP3" selector="numOfChess">numOfChess

<body package="JungleChessP3" selector="lion:">lion: anObject

<body package="JungleChessP3" selector="den:">den: anObject

<body package="JungleChessP3" selector="trap3:">trap3: anObject

<body package="JungleChessP3" selector="dog:">dog: anObject

<body package="JungleChessP3" selector="numOfChess:">numOfChess: anObject

<body package="JungleChessP3" selector="trap2:">trap2: anObject

<body package="JungleChessP3" selector="monster">monster

<body package="JungleChessP3" selector="lion">lion

<body package="JungleChessP3" selector="jaguar:">jaguar: anObject

<body package="JungleChessP3" selector="trap1">trap1

<body package="JungleChessP3" selector="den">den

<body package="JungleChessP3" selector="elephant">elephant

<body package="JungleChessP3" selector="crocodile">crocodile

<body package="JungleChessP3" selector="dog">dog

<body package="JungleChessP3" selector="trap2">trap2

<body package="JungleChessP3" selector="trap1:">trap1: anObject

<body package="JungleChessP3" selector="elephant:">elephant: anObject

<body package="JungleChessP3" selector="jaguar">jaguar

<body package="JungleChessP3" selector="tiger">tiger

<body package="JungleChessP3" selector="superCat:">superCat: anObject

<body package="JungleChessP3" selector="crocodile:">crocodile: anObject

<body package="JungleChessP3" selector="tiger:">tiger: anObject

<body package="JungleChessP3" selector="wolf:">wolf: anObject

<body package="JungleChessP3" selector="rat:">rat: anObject

<body package="JungleChessP3" selector="superCat">superCat

<body package="JungleChessP3" selector="monster:">monster: anObject

<body package="JungleChessP3" selector="player">player
</methods>


<methods>
<class-id>Tiger</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setTiger:">setTiger: anObject

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>SuperCat</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="setSuperCat:">setSuperCat: anObject
</methods>


<methods>
<class-id>PlayerBlue</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>SquareController</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize
</methods>

<methods>
<class-id>SquareController</class-id> <category>event triggering</category>

<body package="JungleChessP3" selector="redButtonPressedEvent:">redButtonPressedEvent: event
</methods>


<methods>
<class-id>PlayerBlack</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize
</methods>


<methods>
<class-id>Cat</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="setCat:">setCat: anObject
</methods>


<methods>
<class-id>Rat</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="setRat:">setRat: anObject
</methods>


<methods>
<class-id>Lion</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize

<body package="JungleChessP3" selector="setLion:">setLion: anObject
</methods>



</st-source>