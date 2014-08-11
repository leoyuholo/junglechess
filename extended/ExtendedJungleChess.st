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
<body>Basic component of Jungle Chess game.Instance Variables	canJump	&lt;Object | ProtoObject&gt;	description of canJump	canMoveDiagonally	&lt;Object | ProtoObject&gt;	description of canMoveDiagonally	canSwim	&lt;Object | ProtoObject&gt;	description of canSwim	chessPic	&lt;Object | ProtoObject&gt;	description of chessPic	chessSet	&lt;Object | ProtoObject&gt;	description of chessSet	exist	&lt;Object | ProtoObject&gt;	description of exist	isLimitedMove	&lt;Object | ProtoObject&gt;	description of isLimitedMove	rank	&lt;Object | ProtoObject&gt;	description of rank</body>
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
<body>Rat is a kind of chess with rank 1 that can swin.</body>
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
<body>View of Jungle Chess game. Wrapping all the picture of squares to Jungle Chess Window.</body>
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
<body>Collection of squares to form a game board.</body>
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
<body>Jaguar is a kind of chess with rank 5.</body>
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
<body>Controller monitoring mouse click on square.</body>
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
<body>Basic component of the game board. Terrain 0 is emply square, Terrain 1 is normal ground, Terrain 2 is river, Terrain 3 is normal ground near to the river.Instance Variables	board	&lt;Object | ProtoObject&gt;	description of board	boardPosition	&lt;Object | ProtoObject&gt;	description of boardPosition	chessOnSquare	&lt;Object | ProtoObject&gt;	description of chessOnSquare	denOnSquare	&lt;Object | ProtoObject&gt;	description of denOnSquare	squarePic	&lt;Object | ProtoObject&gt;	description of squarePic	terrain	&lt;Object | ProtoObject&gt;	description of terrain	trapOnSquare	&lt;Object | ProtoObject&gt;	description of trapOnSquare</body>
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
<body>Crocodile is a kind of chess with rank 9 that can swim and limited move.</body>
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
<body>Lion is a kind of chess with rank 7 that can jump over river.</body>
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
<body>Judge is the rules of Jungle Chess game.Instance Variables	curPlayerTurn	&lt;Object | ProtoObject&gt;	description of curPlayerTurn	endGame	&lt;Object | ProtoObject&gt;	description of endGame	jungleChess	&lt;Object | ProtoObject&gt;	description of jungleChess	messageStatement	&lt;Object | ProtoObject&gt;	description of messageStatement	pickedSquare	&lt;Object | ProtoObject&gt;	description of pickedSquare	totalNumberOfTurn	&lt;Object | ProtoObject&gt;	description of totalNumberOfTurn</body>
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
<body>Information collection of chesses for a player.Instance Variables:	crocodile	&lt;Object | ProtoObject&gt;	description of crocodile	den	&lt;Object | ProtoObject&gt;	description of den	dog	&lt;Object | ProtoObject&gt;	description of dog	elephant	&lt;Object | ProtoObject&gt;	description of elephant	jaguar	&lt;Object | ProtoObject&gt;	description of jaguar	lion	&lt;Object | ProtoObject&gt;	description of lion	numOfChess	&lt;Object | ProtoObject&gt;	description of numOfChess	player	&lt;Object | ProtoObject&gt;	description of player	rat	&lt;Object | ProtoObject&gt;	description of rat	superCat	&lt;Object | ProtoObject&gt;	description of superCat	tiger	&lt;Object | ProtoObject&gt;	description of tiger	trap1	&lt;Object | ProtoObject&gt;	description of trap1	trap2	&lt;Object | ProtoObject&gt;	description of trap2	trap3	&lt;Object | ProtoObject&gt;	description of trap3	wolf	&lt;Object | ProtoObject&gt;	description of wolf</body>
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
<body>Prototype of players, later deviated to different kind of players.</body>
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
<body>PlayerRed of Jungle Chess game.</body>
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
<body>Traps on squares, function differently according to which player owns it.</body>
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
<body>PlayerBlack of Jungle Chess game.</body>
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
<body>SuperCat is a kind of chess with rank 2 that can move diagonally.</body>
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
<body>The model of Jungle Chess game. Holding all the information about the game.Instance Variables:	board	&lt;Object | ProtoObject&gt;	description of board	judge	&lt;Object | ProtoObject&gt;	description of judge	jungleChessWindow	&lt;Object | ProtoObject&gt;	description of jungleChessWindow	player1	&lt;Object | ProtoObject&gt;	description of player1	player2	&lt;Object | ProtoObject&gt;	description of player2	player3	&lt;Object | ProtoObject&gt;	description of player3	player4	&lt;Object | ProtoObject&gt;	description of player4</body>
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
<body>Elephant is a kind of chess with rank 8.</body>
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
<body>Jungle Chess Window holding view holder, buttons and message prompt.Instance Variables	jungleChess	&lt;Object | ProtoObject&gt;	description of jungleChess	jungleChessView	&lt;Object | ProtoObject&gt;	description of jungleChessView	messagePrompt	&lt;ValueHolder&gt;	description of messagePrompt</body>
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
<body>PlayerMonster is the player controlling the monster.</body>
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
<body>PlayerBlue of Jungle Chess game.</body>
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
<body>Controller of Jungle Chess.</body>
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
<body>Dog is a kind of chess with rank 3.</body>
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
<body>Show picture of square to JungleChessView.</body>
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
<body>PlayerGreen of Jungle Chess game.</body>
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
<body>Tiger is a kind of chess with rank 6 that can jump over river.</body>
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
<body>Monster is a kind of chess with rank 10 that can swim and move diagonally.</body>
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
<body>Cat is a kind of chess with rank 2. (Not being used in Extended Jungle Chess)</body>
</comment>

<methods>
<class-id>Chess class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Chess</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="exist:">exist: anObject	exist := anObject</body>

<body package="JungleChessP3" selector="rank:">rank: anObject	rank := anObject</body>

<body package="JungleChessP3" selector="canJump">canJump	^canJump</body>

<body package="JungleChessP3" selector="canSwim:">canSwim: anObject	canSwim := anObject</body>

<body package="JungleChessP3" selector="exist">exist	^exist</body>

<body package="JungleChessP3" selector="chessPic">chessPic	^chessPic</body>

<body package="JungleChessP3" selector="lastSquare:">lastSquare: anObject	lastSquare := anObject</body>

<body package="JungleChessP3" selector="square:">square: anObject	square := anObject</body>

<body package="JungleChessP3" selector="lastSquare">lastSquare	^lastSquare</body>

<body package="JungleChessP3" selector="chessSet:">chessSet: anObject	chessSet := anObject</body>

<body package="JungleChessP3" selector="rank">rank	^rank</body>

<body package="JungleChessP3" selector="isLimitedMove:">isLimitedMove: anObject	isLimitedMove := anObject</body>

<body package="JungleChessP3" selector="canSwim">canSwim	^canSwim</body>

<body package="JungleChessP3" selector="square">square	^square</body>

<body package="JungleChessP3" selector="chessSet">chessSet	^chessSet</body>

<body package="JungleChessP3" selector="canMoveDiagonally:">canMoveDiagonally: anObject	canMoveDiagonally := anObject</body>

<body package="JungleChessP3" selector="chessPic:">chessPic: anObject	chessPic := anObject</body>

<body package="JungleChessP3" selector="isLimitedMove">isLimitedMove	^isLimitedMove</body>

<body package="JungleChessP3" selector="canJump:">canJump: anObject	canJump := anObject</body>

<body package="JungleChessP3" selector="canMoveDiagonally">canMoveDiagonally	^canMoveDiagonally</body>
</methods>

<methods>
<class-id>Chess</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	^self</body>

<body package="JungleChessP3" selector="setChess:">setChess: anObject	chessSet := anObject</body>
</methods>


<methods>
<class-id>Monster</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setMonster:">setMonster: anObject	chessSet := anObject.</body>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 10.	chessPic := (ImageReader fromFile: 'Figures\monster.png') image.	canSwim := true.	canJump := false.	canMoveDiagonally := true.	isLimitedMove := false.	^self</body>
</methods>


<methods>
<class-id>Wolf</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 4.	chessPic := (ImageReader fromFile: 'Figures\wolf1.png') image.	canSwim := false.	canJump := false.	canMoveDiagonally := false.	isLimitedMove := false.	^self</body>

<body package="JungleChessP3" selector="setWolf:">setWolf: anObject	chessSet := anObject.	((chessSet player) name = 'Player Black') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\wolf2.png') image.		exist := True.	].	((chessSet player) name = 'Player Red') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\wolf3.png') image.		exist := True.	].	((chessSet player) name = 'Player Green') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\wolf4.png') image.		exist := True.	].</body>
</methods>


<methods>
<class-id>Crocodile</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setCrocodile:">setCrocodile: anObject	chessSet := anObject.	((chessSet player) name = 'Player Black') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\crocodile2.png') image.		exist := True.	].	((chessSet player) name = 'Player Red') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\crocodile3.png') image.		exist := True.	].	((chessSet player) name = 'Player Green') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\crocodile4.png') image.		exist := True.	].</body>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 9.	chessPic := (ImageReader fromFile: 'Figures\crocodile1.png') image.	canSwim := true.	canJump := false.	canMoveDiagonally := false.	isLimitedMove := true.	^self</body>
</methods>


<methods>
<class-id>Player class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Player</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="numOfUndo">numOfUndo	^numOfUndo</body>

<body package="JungleChessP3" selector="secRemain">secRemain	^secRemain</body>

<body package="JungleChessP3" selector="jungleChess:">jungleChess: anObject	jungleChess := anObject</body>

<body package="JungleChessP3" selector="name">name	^name</body>

<body package="JungleChessP3" selector="jungleChess">jungleChess	^jungleChess</body>

<body package="JungleChessP3" selector="chessSet:">chessSet: anObject	chessSet := anObject</body>

<body package="JungleChessP3" selector="secRemain:">secRemain: anObject	secRemain := anObject</body>

<body package="JungleChessP3" selector="chessSet">chessSet	^chessSet</body>

<body package="JungleChessP3" selector="numOfUndo:">numOfUndo: anObject	numOfUndo := anObject</body>

<body package="JungleChessP3" selector="name:">name: anObject	name := anObject</body>
</methods>

<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	^self</body>

<body package="JungleChessP3" selector="setPlayer:">setPlayer: anObject	jungleChess := anObject.	chessSet := ChessSet new.	chessSet setChessSet: self.</body>
</methods>


<methods>
<class-id>Square class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Square</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="terrain:">terrain: anObject	terrain := anObject.	(terrain = 2) ifTrue:[		squarePic := (ImageReader fromFile: 'Figures\river.png') image.	].</body>

<body package="JungleChessP3" selector="board">board	^board</body>

<body package="JungleChessP3" selector="fruitOnSquare">fruitOnSquare	^fruitOnSquare</body>

<body package="JungleChessP3" selector="squarePic:">squarePic: anObject	squarePic := anObject</body>

<body package="JungleChessP3" selector="chessOnSquare:">chessOnSquare: anObject	chessOnSquare := anObject.	(anObject ~= nil) ifTrue:[		anObject square: self.	].	self changed.</body>

<body package="JungleChessP3" selector="denOnSquare">denOnSquare	^denOnSquare</body>

<body package="JungleChessP3" selector="boardPosition:">boardPosition: anObject	boardPosition := anObject</body>

<body package="JungleChessP3" selector="terrain">terrain	^terrain</body>

<body package="JungleChessP3" selector="trapOnSquare:">trapOnSquare: anObject	trapOnSquare := anObject.	(anObject ~= nil) ifTrue:[		anObject square: self.	].	self changed.</body>

<body package="JungleChessP3" selector="trapOnSquare">trapOnSquare	^trapOnSquare</body>

<body package="JungleChessP3" selector="squarePic">squarePic	^squarePic</body>

<body package="JungleChessP3" selector="boardPosition">boardPosition	^boardPosition</body>

<body package="JungleChessP3" selector="board:">board: anObject	board := anObject</body>

<body package="JungleChessP3" selector="chessOnSquare">chessOnSquare	^chessOnSquare</body>

<body package="JungleChessP3" selector="fruitOnSquare:">fruitOnSquare: anObject	fruitOnSquare := anObject.	(anObject ~= nil) ifTrue:[		anObject square: self.	].	self changed.</body>

<body package="JungleChessP3" selector="denOnSquare:">denOnSquare: anObject	denOnSquare := anObject.	(anObject ~= nil) ifTrue:[		anObject square: self.	].	self changed.</body>
</methods>

<methods>
<class-id>Square</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setSquare:setPosi:">setSquare: anObject setPosi: aPoint	board := anObject.	boardPosition := aPoint.</body>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	terrain := 1.			"default as normal ground"	squarePic := (ImageReader fromFile: 'Figures\ground.png') image.			"default image"	denOnSquare := nil.	trapOnSquare := nil.	chessOnSquare := nil.	^self</body>
</methods>


<methods>
<class-id>JungleChess class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>JungleChess</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="player4:">player4: anObject	player4 := anObject</body>

<body package="JungleChessP3" selector="player2">player2	^player2</body>

<body package="JungleChessP3" selector="player1:">player1: anObject	player1 := anObject</body>

<body package="JungleChessP3" selector="playerMonster:">playerMonster: anObject	playerMonster := anObject</body>

<body package="JungleChessP3" selector="player4">player4	^player4</body>

<body package="JungleChessP3" selector="jungleChessWindow:">jungleChessWindow: anObject	jungleChessWindow := anObject</body>

<body package="JungleChessP3" selector="board:">board: anObject	board := anObject</body>

<body package="JungleChessP3" selector="playerMonster">playerMonster	^playerMonster</body>

<body package="JungleChessP3" selector="jungleChessWindow">jungleChessWindow	^jungleChessWindow</body>

<body package="JungleChessP3" selector="player3:">player3: anObject	player3 := anObject</body>

<body package="JungleChessP3" selector="player1">player1	^player1</body>

<body package="JungleChessP3" selector="player3">player3	^player3</body>

<body package="JungleChessP3" selector="judge:">judge: anObject	judge := anObject</body>

<body package="JungleChessP3" selector="board">board	^board</body>

<body package="JungleChessP3" selector="judge">judge	^judge</body>

<body package="JungleChessP3" selector="player2:">player2: anObject	player2 := anObject</body>
</methods>

<methods>
<class-id>JungleChess</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setJungleChess:">setJungleChess: aJungleChessWindow	board := Board new.	board setBoard: self.	player1 := PlayerBlue new.	player1 setPlayer: self.	player2 := PlayerBlack new.	player2 setPlayer: self.	player3 := PlayerRed new.	player3 setPlayer: self.	player4 := PlayerGreen new.	player4 setPlayer: self.	playerMonster := PlayerMonster new.	playerMonster setPlayer: self.	judge := Judge new.	judge setJudge: self.	jungleChessWindow := aJungleChessWindow.	self changed.</body>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	^self</body>
</methods>


<methods>
<class-id>Den class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Den</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="square:">square: anObject	square := anObject</body>

<body package="JungleChessP3" selector="square">square	^square</body>

<body package="JungleChessP3" selector="chessSet:">chessSet: anObject	chessSet := anObject</body>

<body package="JungleChessP3" selector="chessSet">chessSet	^chessSet</body>

<body package="JungleChessP3" selector="denPic:">denPic: anObject	denPic := anObject</body>

<body package="JungleChessP3" selector="denPic">denPic	^denPic</body>
</methods>

<methods>
<class-id>Den</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	denPic := (ImageReader fromFile: 'Figures\den1.png') image.	^self</body>

<body package="JungleChessP3" selector="setDen:">setDen: anObject	chessSet := anObject.	(chessSet player name = 'Player Black') ifTrue:[		denPic := (ImageReader fromFile: 'Figures\den2.png') image.	].	(chessSet player name = 'Player Red') ifTrue:[		denPic := (ImageReader fromFile: 'Figures\den3.png') image.	].	(chessSet player name = 'Player Green') ifTrue:[		denPic := (ImageReader fromFile: 'Figures\den4.png') image.	].</body>
</methods>


<methods>
<class-id>PlayerMonster</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="moveMonster">moveMonster	| l t r b lt rt rb lb rndValue squares sqCnt chesses chCnt |	jungleChess judge judgeClick: chessSet monster square.		sqCnt := 1.	squares := Array new: 8.		((chessSet monster square boardPosition x - 1) &gt; 0) ifTrue:[		(((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y)) at: 			(chessSet monster square boardPosition x - 1)) terrain ~= 0) ifTrue:[			l := ((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y)) at: 			(chessSet monster square boardPosition x - 1)).			squares at: sqCnt put: l.			sqCnt := sqCnt + 1.		] ifFalse:[			l := nil.		].	].		((chessSet monster square boardPosition y - 1) &gt; 0) ifTrue:[		(((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y - 1)) at: 			(chessSet monster square boardPosition x)) terrain ~= 0) ifTrue:[			t := ((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y - 1)) at: 			(chessSet monster square boardPosition x)).			squares at: sqCnt put: t.			sqCnt := sqCnt + 1.		] ifFalse:[			t := nil.		].	].		((chessSet monster square boardPosition x + 1) &lt; 16) ifTrue:[		(((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y)) at: 			(chessSet monster square boardPosition x + 1)) terrain ~= 0) ifTrue:[			r := ((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y)) at: 			(chessSet monster square boardPosition x + 1)).			squares at: sqCnt put: r.			sqCnt := sqCnt + 1.		] ifFalse:[			r := nil.		].	].		((chessSet monster square boardPosition y + 1) &lt; 16) ifTrue:[		(((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y + 1)) at: 			(chessSet monster square boardPosition x)) terrain ~= 0) ifTrue:[			b := ((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y + 1)) at: 			(chessSet monster square boardPosition x)).			squares at: sqCnt put: b.			sqCnt := sqCnt + 1.		] ifFalse:[			b := nil.		].	].	(((chessSet monster square boardPosition y - 1) &gt; 0) &amp; 	((chessSet monster square boardPosition x - 1) &gt; 0)) ifTrue:[		(((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y - 1)) at: 			(chessSet monster square boardPosition x - 1)) terrain ~= 0) ifTrue:[			lt := ((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y - 1)) at: 			(chessSet monster square boardPosition x - 1)).			squares at: sqCnt put: lt.			sqCnt := sqCnt + 1.		] ifFalse:[			lt := nil.		].	].		(((chessSet monster square boardPosition y - 1) &gt; 0) &amp; 	((chessSet monster square boardPosition x + 1) &lt; 16)) ifTrue:[		(((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y - 1)) at: 			(chessSet monster square boardPosition x + 1)) terrain ~= 0) ifTrue:[			rt := ((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y - 1)) at: 			(chessSet monster square boardPosition x + 1)).			squares at: sqCnt put: rt.			sqCnt := sqCnt + 1.		] ifFalse:[			rt := nil.		].	].		(((chessSet monster square boardPosition y + 1) &lt; 16) &amp; 	((chessSet monster square boardPosition x + 1) &lt; 16)) ifTrue:[		(((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y + 1)) at: 			(chessSet monster square boardPosition x + 1)) terrain ~= 0) ifTrue:[			rb := ((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y + 1)) at: 			(chessSet monster square boardPosition x + 1)).			squares at: sqCnt put: rb.			sqCnt := sqCnt + 1.		] ifFalse:[			rb := nil.		].	].		(((chessSet monster square boardPosition y + 1) &lt; 16) &amp; 	((chessSet monster square boardPosition x - 1) &gt; 0)) ifTrue:[		(((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y + 1)) at: 			(chessSet monster square boardPosition x - 1)) terrain ~= 0) ifTrue:[			lb := ((((jungleChess board) squares) at: 			(chessSet monster square boardPosition y + 1)) at: 			(chessSet monster square boardPosition x - 1)).			squares at: sqCnt put: lb.			sqCnt := sqCnt + 1.		] ifFalse:[			lb := nil.		].	].		sqCnt := sqCnt - 1.		chCnt := 1.	chesses := Array new: 8.		1 to: sqCnt do:[:num|		((squares at: num) chessOnSquare ~= nil) ifTrue:[			chesses at: chCnt put: (squares at: num).			chCnt := chCnt + 1.		]	].		chCnt := chCnt - 1.		(chCnt ~= 0) ifTrue:[		rndValue := (Random new next * chCnt + 1) truncated.		jungleChess judge judgeClick: (chesses at: rndValue).	] ifFalse:[		rndValue := (Random new next * sqCnt + 1) truncated.		jungleChess judge judgeClick: (squares at: rndValue).	].	</body>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	name := 'Player Monster'.	^self</body>
</methods>


<methods>
<class-id>Elephant</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setElephant:">setElephant: anObject	chessSet := anObject.	((chessSet player) name = 'Player Black') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\elephant2.png') image.		exist := True.	].	((chessSet player) name = 'Player Red') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\elephant3.png') image.		exist := True.	].	((chessSet player) name = 'Player Green') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\elephant4.png') image.		exist := True.	].</body>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 8.	chessPic := (ImageReader fromFile: 'Figures\elephant1.png') image.	canSwim := false.	canJump := false.	canMoveDiagonally := false.	isLimitedMove := false.	^self</body>
</methods>


<methods>
<class-id>Trap class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Trap</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="square">square	^square</body>

<body package="JungleChessP3" selector="square:">square: anObject	square := anObject</body>

<body package="JungleChessP3" selector="trapPic:">trapPic: anObject	trapPic := anObject</body>

<body package="JungleChessP3" selector="trapPic">trapPic	^trapPic</body>

<body package="JungleChessP3" selector="chessSet">chessSet	^chessSet</body>
</methods>

<methods>
<class-id>Trap</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	trapPic := (ImageReader fromFile: 'Figures\trap.png') image.	^self</body>

<body package="JungleChessP3" selector="chessSet:">chessSet: anObject	chessSet := anObject.</body>

<body package="JungleChessP3" selector="setTrap:">setTrap: anObject	chessSet := anObject.</body>
</methods>


<methods>
<class-id>JungleChessWindow class</class-id> <category>interface specs</category>

<body package="JungleChessP3" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeType #specifiedSize #positionType #specifiedPosition #openType #advanced ) 			#label: 'Extended Jungle Chess' 			#min: #(#{Core.Point} 675 715 ) 			#max: #(#{Core.Point} 675 715 ) 			#bounds: #(#{Graphics.Rectangle} 8 58 683 773 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 0 1 79 39 ) 					#name: #ActionButton1 					#model: #newGame 					#label: 'New game' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 80 1 675 39 ) 					#name: #InputField1 					#flags: 40 					#model: #messagePrompt 					#isReadOnly: true ) 				#(#{UI.ArbitraryComponentSpec} 					#layout: #(#{Graphics.Rectangle} 0 40 675 715 ) 					#name: #ViewHolder1 					#component: #jungleChessView ) ) ) )</body>
</methods>


<methods>
<class-id>JungleChessWindow</class-id> <category>aspects</category>

<body package="JungleChessP3" selector="messagePrompt">messagePrompt	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^messagePrompt isNil		ifTrue:			[messagePrompt := String new asValue]		ifFalse:			[messagePrompt]</body>
</methods>

<methods>
<class-id>JungleChessWindow</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="jungleChessView">jungleChessView	jungleChess := JungleChess new.	jungleChess setJungleChess: self.	messagePrompt value: jungleChess judge messageStatement, ((jungleChess judge) curPlayerTurn) name, ' turn. '.	^JungleChessView model: jungleChess.</body>
</methods>

<methods>
<class-id>JungleChessWindow</class-id> <category>actions</category>

<body package="JungleChessP3" selector="newGame">newGame	"This stub method was generated by UIDefiner"    1 to: jungleChess board height do: [:y |        1 to: jungleChess board width do: [:x |            (((jungleChess board squares) at: y) at: x) chessOnSquare: nil.            (((jungleChess board squares) at: y) at: x) denOnSquare: nil.            (((jungleChess board squares) at: y) at: x) trapOnSquare: nil.            (((jungleChess board squares) at: y) at: x) fruitOnSquare: nil.        ]    ].	jungleChess player1 chessSet setChessSet: jungleChess player1.	jungleChess player2 chessSet setChessSet: jungleChess player2.	jungleChess player3 chessSet setChessSet: jungleChess player3.	jungleChess player4 chessSet setChessSet: jungleChess player4.	jungleChess playerMonster chessSet setChessSet: jungleChess playerMonster.	jungleChess judge setJudge: jungleChess.	messagePrompt value: jungleChess judge messageStatement, ((jungleChess judge) curPlayerTurn) name, ' turn. '.	^self</body>
</methods>


<methods>
<class-id>JungleChessView</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="defaultControllerClass">defaultControllerClass	^JungleChessController</body>
</methods>

<methods>
<class-id>JungleChessView</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	^self</body>

<body package="JungleChessP3" selector="model:">model: anObject    super model: anObject.    1 to: ((model board) height) do: [:y |         1 to: ((model board) width) do: [:x |             | view wrapper offset size |            view := SquareView model: ((((model board) squares) at: y) at: x).            offset := (x - 1 / ((model board) width)) @ (y - 1 / ((model board) height)).            size := (1 / ((model board) width)) @ (1 / ((model board) height)).            wrapper := BoundedWrapper on: view in: (offset extent: size).            self addWrapper: wrapper.        ]    ].</body>
</methods>


<methods>
<class-id>PlayerGreen</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	name := 'Player Green'.	^self</body>
</methods>


<methods>
<class-id>Judge class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Judge</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="endGame:">endGame: anObject	endGame := anObject</body>

<body package="JungleChessP3" selector="totalNumberOfTurn:">totalNumberOfTurn: anObject	totalNumberOfTurn := anObject</body>

<body package="JungleChessP3" selector="pickedSquare:">pickedSquare: anObject	pickedSquare := anObject</body>

<body package="JungleChessP3" selector="jungleChess:">jungleChess: anObject	jungleChess := anObject</body>

<body package="JungleChessP3" selector="totalNumberOfTurn">totalNumberOfTurn	^totalNumberOfTurn</body>

<body package="JungleChessP3" selector="endGame">endGame	^endGame</body>

<body package="JungleChessP3" selector="curPlayerTurn:">curPlayerTurn: anObject	curPlayerTurn := anObject</body>

<body package="JungleChessP3" selector="messageStatement:">messageStatement: anObject	messageStatement := anObject</body>

<body package="JungleChessP3" selector="pickedSquare">pickedSquare	^pickedSquare</body>

<body package="JungleChessP3" selector="curPlayerTurn">curPlayerTurn	^curPlayerTurn</body>

<body package="JungleChessP3" selector="jungleChess">jungleChess	^jungleChess</body>

<body package="JungleChessP3" selector="messageStatement">messageStatement	^messageStatement</body>
</methods>

<methods>
<class-id>Judge</class-id> <category>judging</category>

<body package="JungleChessP3" selector="judgeClick:">judgeClick: aSquare	(endGame = true) ifTrue:[		messageStatement := 'Press new game button to start new game.'.		^false.	].		(pickedSquare ~= nil) ifTrue:[		(pickedSquare = aSquare) ifTrue:[			pickedSquare := nil.			messageStatement := 'Unselected piece.'.			^true.		] ifFalse:[			(self judgeRelease: aSquare) ifTrue:[				((aSquare chessOnSquare) ~= nil) ifTrue:[					((aSquare chessOnSquare) rank ~= 10) ifTrue:[						aSquare chessOnSquare square: nil.						aSquare chessOnSquare chessSet numOfChess: aSquare chessOnSquare chessSet numOfChess - 1.					].				].				aSquare chessOnSquare: (pickedSquare chessOnSquare).				pickedSquare chessOnSquare: nil.				pickedSquare := nil.				self cleanUpPlayer.				(self checkWin) ifFalse:[					messageStatement := 'Please pick up a piece.'.					(curPlayerTurn = (jungleChess player1)) ifTrue:[						(((jungleChess player2) chessSet) numOfChess ~= 0) ifTrue:[							curPlayerTurn := (jungleChess player2).						] ifFalse:[							(((jungleChess player3) chessSet) numOfChess ~= 0) ifTrue:[								curPlayerTurn := (jungleChess player3).							] ifFalse:[								(((jungleChess player4) chessSet) numOfChess ~= 0) ifTrue:[									curPlayerTurn := (jungleChess player4).								] ifFalse:[									curPlayerTurn := (jungleChess playerMonster).								].							].						].					] ifFalse:[						(curPlayerTurn = (jungleChess player2)) ifTrue:[							(((jungleChess player3) chessSet) numOfChess ~= 0) ifTrue:[								curPlayerTurn := (jungleChess player3).							] ifFalse:[								(((jungleChess player4) chessSet) numOfChess ~= 0) ifTrue:[									curPlayerTurn := (jungleChess player4).								] ifFalse:[									curPlayerTurn := (jungleChess playerMonster).								].							].						] ifFalse:[							(curPlayerTurn = (jungleChess player3)) ifTrue:[								(((jungleChess player4) chessSet) numOfChess ~= 0) ifTrue:[									curPlayerTurn := (jungleChess player4).								] ifFalse:[									curPlayerTurn := (jungleChess playerMonster).								].							] ifFalse:[								(curPlayerTurn = (jungleChess player4)) ifTrue:[									curPlayerTurn := (jungleChess playerMonster).								] ifFalse:[									(((jungleChess player1) chessSet) numOfChess ~= 0) ifTrue:[										curPlayerTurn := (jungleChess player1).									] ifFalse:[										(((jungleChess player2) chessSet) numOfChess ~= 0) ifTrue:[											curPlayerTurn := (jungleChess player2).										] ifFalse:[											(((jungleChess player3) chessSet) numOfChess ~= 0) ifTrue:[												curPlayerTurn := (jungleChess player3).											] ifFalse:[												(((jungleChess player4) chessSet) numOfChess ~= 0) ifTrue:[													curPlayerTurn := (jungleChess player4).												] ifFalse:[													curPlayerTurn := (jungleChess playerMonster).												].											].										].									].								].							].						].					].				].				^true.			] ifFalse:[				^false.			]		]	] ifFalse:[		((self judgePick: aSquare) = true) ifTrue:[			pickedSquare := aSquare.			messageStatement := 'Piece picked up.'.			^true.		] ifFalse:[			^false.		]	].	^false.</body>

<body package="JungleChessP3" selector="judgePick:">judgePick: aSquare	(aSquare chessOnSquare ~= nil) ifTrue:[		((((aSquare chessOnSquare) chessSet) player) = curPlayerTurn) ifTrue:[			^true.		] ifFalse:[			messageStatement := 'Cannot pick up opponent piece.'.			^false.		].	] ifFalse:[		messageStatement := 'No piece on square. Please pick up your own piece.'.		^false.	]</body>

<body package="JungleChessP3" selector="judgeRelease:">judgeRelease: aSquare		"Rule: only rat, crocodile, monster can move into river."	(pickedSquare chessOnSquare canSwim = true) ifFalse:[		(aSquare terrain = 2) ifTrue:[			messageStatement := 'Cannot move into river.'.			^false.		]	].		"Rule: any pieces cannot move into their own den."	(aSquare denOnSquare ~= nil) ifTrue:[		(aSquare denOnSquare chessSet player = curPlayerTurn) ifTrue:[			messageStatement := 'Cannot move into own den.'.			^false.		]	].		(aSquare chessOnSquare ~= nil) ifTrue:[		"Rule: any pieces cannot capture their own piece."		(aSquare chessOnSquare chessSet player = curPlayerTurn) ifTrue:[				messageStatement := 'Cannot capture own piece.'.				^false.		].		"Rule: rat can only capture rat when they are currently in river."		(((pickedSquare terrain) = 2) &amp; (((pickedSquare chessOnSquare) rank) = 1)) ifTrue:[			(aSquare chessOnSquare rank ~= 1) ifTrue:[				messageStatement := 'Cannot capture piece other than rat.'.				^false.			].		].		"Rule: any pieces, except monster, cannot capture pieces in their own trap."		(pickedSquare chessOnSquare rank ~= 10) ifTrue:[			(aSquare trapOnSquare ~= nil) ifTrue:[				"Rule: monster cannot be captured although it is in a trap."				(aSquare chessOnSquare chessSet player = pickedSquare board jungleChess playerMonster) ifTrue:[					messageStatement := 'Cannot capture monster.'.					^false.				].				(aSquare trapOnSquare chessSet player = aSquare chessOnSquare chessSet player) ifTrue:[					messageStatement := 'Cannot capture piece in their own trap.'.					^false.				].				"Rule: any pieces can capture any opponent pieces, except monster, when they get into their trap."				"automatically done."			] ifFalse:[				"Rule: any pieces cannot capture pieces with higher rank, except rats capture elephant."				(self judgeCapture: aSquare) ifFalse:[					^false.				].			].		].	].		"Rule: tiger, lion can jump over river when no pieces is in their jumping path."	(pickedSquare chessOnSquare canJump = true) ifTrue:[		(pickedSquare terrain = 3 &amp; aSquare terrain = 3) ifTrue:[			"vertical juump"			(pickedSquare boardPosition x = aSquare boardPosition x) ifTrue:[				(((pickedSquare boardPosition y - aSquare boardPosition y) &lt;= 4) &amp; 				((pickedSquare boardPosition y - aSquare boardPosition y) &gt;= -4)) ifTrue:[					((pickedSquare boardPosition y) &lt; (aSquare boardPosition y)) ifTrue:[						(pickedSquare boardPosition y + 1) to: (aSquare boardPosition y - 1) do:[:num|							((((pickedSquare board squares) at: num) at: (pickedSquare boardPosition x)) chessOnSquare ~= nil) ifTrue:[								messageStatement := 'Cannot cross river over other pieces.'.								^false.							]						].					] ifFalse:[						(aSquare boardPosition y + 1) to: (pickedSquare boardPosition y - 1) do:[:num|							((((pickedSquare board squares) at: num) at: (pickedSquare boardPosition x)) chessOnSquare ~= nil) ifTrue:[								messageStatement := 'Cannot cross river over other pieces.'.								^false.							]						].					].					^true.				].			].			"horizontal jump"			(pickedSquare boardPosition y = aSquare boardPosition y) ifTrue:[				(((pickedSquare boardPosition x - aSquare boardPosition x) &lt;= 4) &amp; 				((pickedSquare boardPosition x - aSquare boardPosition x) &gt;= -4)) ifTrue:[					((pickedSquare boardPosition x) &lt; (aSquare boardPosition x)) ifTrue:[						(pickedSquare boardPosition x + 1) to: (aSquare boardPosition x - 1) do:[:num|							((((pickedSquare board squares) at: (pickedSquare boardPosition y)) at: num) chessOnSquare ~= nil) ifTrue:[								messageStatement := 'Cannot cross river over other pieces.'.								^false.							]						].					] ifFalse:[						(aSquare boardPosition x + 1) to: (pickedSquare boardPosition x - 1) do:[:num|							((((pickedSquare board squares) at: (pickedSquare boardPosition y)) at: num) chessOnSquare ~= nil) ifTrue:[								messageStatement := 'Cannot cross river over other pieces.'.								^false.							]						].					].					^true.				].			].		].	].		"Rule: supercat can mover diagonally."	(pickedSquare chessOnSquare canMoveDiagonally = true) ifTrue:[		((((pickedSquare boardPosition y - aSquare boardPosition y) = 1) | 		((pickedSquare boardPosition y - aSquare boardPosition y) = -1)) &amp; 		(((pickedSquare boardPosition x - aSquare boardPosition x) = 1) | 		((pickedSquare boardPosition x - aSquare boardPosition x) = -1))) ifTrue:[			^true.		].	].		"Rule: pieces can only move one step vertically or horizontally."	(pickedSquare boardPosition x = aSquare boardPosition x) ifTrue:[		(((pickedSquare boardPosition y - aSquare boardPosition y) = 1) | 		((pickedSquare boardPosition y - aSquare boardPosition y) = -1)) ifFalse:[			messageStatement := 'Cannot move more than one square.'.			^false.		]	] ifFalse:[		(pickedSquare boardPosition y = aSquare boardPosition y) ifTrue:[			(((pickedSquare boardPosition x - aSquare boardPosition x) = 1) | 			((pickedSquare boardPosition x - aSquare boardPosition x) = -1)) ifFalse:[				messageStatement := 'Cannot move more than one square.'.				^false.			]		] ifFalse:[			messageStatement := 'Cannot move more than one square.'.			^false.		]	].		"Rule: corcodile cannot mover away from river or riverside."	(pickedSquare chessOnSquare isLimitedMove = true) ifTrue:[		(((aSquare terrain) = 2) | ((aSquare terrain) = 3)) ifFalse:[			messageStatement := 'Cannot move away from river or riverside.'.			^false.		]	].		^true.</body>

<body package="JungleChessP3" selector="cleanUpPlayer">cleanUpPlayer	((((jungleChess player1) chessSet) numOfChess) = 0) ifTrue:[		((jungleChess player1) chessSet) clean.	] ifFalse:[		((((((jungleChess board) squares) at: 15) at:8) chessOnSquare) ~= nil) ifTrue:[			((((((jungleChess board) squares) at: 15) at:8) chessOnSquare) rank ~= 10) ifTrue:[				((jungleChess player1) chessSet) clean.			].		].	].		((((jungleChess player2) chessSet) numOfChess) = 0) ifTrue:[		((jungleChess player2) chessSet) clean.	] ifFalse:[		((((((jungleChess board) squares) at: 8) at:1) chessOnSquare) ~= nil) ifTrue:[			((((((jungleChess board) squares) at: 8) at:1) chessOnSquare) rank ~= 10) ifTrue:[				((jungleChess player2) chessSet) clean.			].		].	].		((((jungleChess player3) chessSet) numOfChess) = 0) ifTrue:[		((jungleChess player3) chessSet) clean.	] ifFalse:[		((((((jungleChess board) squares) at: 1) at:8) chessOnSquare) ~= nil) ifTrue:[			((((((jungleChess board) squares) at: 1) at:8) chessOnSquare) rank ~= 10) ifTrue:[				((jungleChess player3) chessSet) clean.			].		].	].		((((jungleChess player4) chessSet) numOfChess) = 0) ifTrue:[		((jungleChess player4) chessSet) clean.	] ifFalse:[		((((((jungleChess board) squares) at: 8) at:15) chessOnSquare) ~= nil) ifTrue:[			((((((jungleChess board) squares) at: 8) at:15) chessOnSquare) rank ~= 10) ifTrue:[				((jungleChess player4) chessSet) clean.			].		].	].</body>

<body package="JungleChessP3" selector="checkWin">checkWin	((((((jungleChess board) squares) at: 8) at: 1) denOnSquare) = nil) ifTrue:[		((((((jungleChess board) squares) at: 1) at: 8) denOnSquare) = nil) ifTrue:[			((((((jungleChess board) squares) at: 8) at: 15) denOnSquare) = nil) ifTrue:[				messageStatement := 'Player Blue wins.'.				endGame := true.				^true.			].		].	].		((((((jungleChess board) squares) at: 1) at: 8) denOnSquare) = nil) ifTrue:[		((((((jungleChess board) squares) at: 8) at: 15) denOnSquare) = nil) ifTrue:[			((((((jungleChess board) squares) at: 15) at: 8) denOnSquare) = nil) ifTrue:[				messageStatement := 'Player Black wins.'.				endGame := true.				^true.			].		].	].		((((((jungleChess board) squares) at: 8) at: 15) denOnSquare) = nil) ifTrue:[		((((((jungleChess board) squares) at: 15) at: 8) denOnSquare) = nil) ifTrue:[			((((((jungleChess board) squares) at: 8) at: 1) denOnSquare) = nil) ifTrue:[				messageStatement := 'Player Red wins.'.				endGame := true.				^true.			].		].	].		((((((jungleChess board) squares) at: 15) at: 8) denOnSquare) = nil) ifTrue:[		((((((jungleChess board) squares) at: 8) at: 1) denOnSquare) = nil) ifTrue:[			((((((jungleChess board) squares) at: 1) at: 8) denOnSquare) = nil) ifTrue:[				messageStatement := 'Player Green wins.'.				endGame := true.				^true.			].		].	].		^false.</body>

<body package="JungleChessP3" selector="judgeCapture:">judgeCapture: aSquare	((pickedSquare chessOnSquare rank = 8) &amp; (aSquare chessOnSquare rank = 1)) ifTrue:[		messageStatement := 'Elephant cannot capture rat.'.		^false.	] ifFalse:[		((pickedSquare chessOnSquare rank = 1) &amp; (aSquare chessOnSquare rank = 8)) ifTrue:[			^true.		] ifFalse:[			(pickedSquare chessOnSquare rank &gt;= aSquare chessOnSquare rank) ifTrue:[				^true.			] ifFalse:[				messageStatement := 'Too weak to capture opponent piece.'.				^false.			]		]	].</body>
</methods>

<methods>
<class-id>Judge</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	^self</body>

<body package="JungleChessP3" selector="setJudge:">setJudge: anObject	jungleChess := anObject.	totalNumberOfTurn := 0.	curPlayerTurn := jungleChess player1.	pickedSquare := nil.	endGame := false.	messageStatement := 'Game start. '.</body>
</methods>


<methods>
<class-id>SquareView</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="defaultControllerClass">defaultControllerClass	^SquareController.</body>

<body package="JungleChessP3" selector="model:">model: anObject	super model: anObject</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>displaying</category>

<body package="JungleChessP3" selector="displayOn:">displayOn: aGraphicsContext| applicationImage bgImage displayBlock |	((model terrain) ~= 0) ifTrue:[		((model trapOnSquare) ~= nil) ifTrue:[			bgImage := ((model trapOnSquare) trapPic).		] ifFalse:[			((model denOnSquare) ~= nil) ifTrue:[				bgImage := ((model denOnSquare) denPic).			] ifFalse:[				bgImage := (model squarePic).			]		].		"Display the background image "		applicationImage := Image extent: 60@60 depth: 24 palette: FixedPalette rgb8Bit.		displayBlock := [:postion | bgImage pixelsDo: [:x :y |		  applicationImage atPoint: x@y + postion put:			(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion) 			  blendWith: (bgImage valueAtPoint: x@y)			  weight: ((((bgImage atPoint: x@y) bitShift: -24) / 255)))) ]].		displayBlock value: 0@0. 				"Display the chess image "		((model chessOnSquare) ~= nil) ifTrue:[			(model board jungleChess judge pickedSquare ~= model) ifTrue:[				displayBlock := [:postion | ((model chessOnSquare) chessPic) pixelsDo: [:x :y |				  applicationImage atPoint: x@y + postion put:					(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion) 					  blendWith: (((model chessOnSquare) chessPic) valueAtPoint: x@y)					  weight: ((((((model chessOnSquare) chessPic) atPoint: x@y) bitShift: -24) / 255 * 1)))) ]].				displayBlock value: 0@0.			] ifFalse:[				displayBlock := [:postion | ((model chessOnSquare) chessPic) pixelsDo: [:x :y |				  applicationImage atPoint: x@y + postion put:					(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion) 					  blendWith: (((model chessOnSquare) chessPic) valueAtPoint: x@y)					  weight: ((((((model chessOnSquare) chessPic) atPoint: x@y) bitShift: -24) / 255 * 0.64)))) ]].				displayBlock value: 0@0.			].		].		applicationImage displayOn: aGraphicsContext.	] ifFalse:[		"(model squarePic) displayOn: aGraphicsContext."	].</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	^self</body>
</methods>


<methods>
<class-id>Dog</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 3.	chessPic := (ImageReader fromFile: 'Figures\dog1.png') image.	canSwim := false.	canJump := false.	canMoveDiagonally := false.	isLimitedMove := false.	^self</body>

<body package="JungleChessP3" selector="setDog:">setDog: anObject	chessSet := anObject.	((chessSet player) name = 'Player Black') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\dog2.png') image.		exist := True.	].	((chessSet player) name = 'Player Red') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\dog3.png') image.		exist := True.	].	((chessSet player) name = 'Player Green') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\dog4.png') image.		exist := True.	].</body>
</methods>


<methods>
<class-id>Board class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Board</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="width">width	^width</body>

<body package="JungleChessP3" selector="height">height	^height</body>

<body package="JungleChessP3" selector="jungleChess">jungleChess	^jungleChess</body>

<body package="JungleChessP3" selector="width:">width: anObject	width := anObject</body>

<body package="JungleChessP3" selector="squares:">squares: anObject	squares := anObject</body>

<body package="JungleChessP3" selector="squares">squares	^squares</body>

<body package="JungleChessP3" selector="height:">height: anObject	height := anObject</body>

<body package="JungleChessP3" selector="jungleChess:">jungleChess: anObject	jungleChess := anObject</body>
</methods>

<methods>
<class-id>Board</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setBoard:">setBoard: aJungleChess	jungleChess := aJungleChess.	width := 15.	height := 15.	squares := Array new: height.	1 to: height do: [:y |		squares at: y put: (Array new: width).		1 to: width do: [:x |			(squares at: y) at: x put: Square new.			((squares at: y) at: x) setSquare: self setPosi: (x@y).			((y = 1) | (y = 15)) ifTrue:[				((x &lt; 7) | (x &gt; 9)) ifTrue:[					((squares at: y) at: x) terrain: 0.				].			].			((y = 2) | (y = 14)) ifTrue:[				((x &lt; 6) | (x &gt; 10)) ifTrue:[					((squares at: y) at: x) terrain: 0.				].			].			((y = 3) | (y = 13)) ifTrue:[				((x &lt; 5) | (x &gt; 11)) ifTrue:[					((squares at: y) at: x) terrain: 0.				].			].			((y = 4) | (y = 12)) ifTrue:[				((x &lt; 4) | (x &gt; 12)) ifTrue:[					((squares at: y) at: x) terrain: 0.				].			].			((y = 5) | (y = 11)) ifTrue:[				((x &lt; 3) | (x &gt; 13)) ifTrue:[					((squares at: y) at: x) terrain: 0.				] ifFalse:[					(x = 8) ifTrue:[						((squares at: y) at: x) terrain: 3.					].				].			].			((y = 6) | (y = 10)) ifTrue:[				((x &lt; 2) | (x &gt; 14)) ifTrue:[					((squares at: y) at: x) terrain: 0.				] ifFalse:[					((x = 7) | (x = 9)) ifTrue:[						((squares at: y) at: x) terrain: 3.					].					(x = 8) ifTrue:[						((squares at: y) at: x) terrain: 2.					].				].			].			((y = 7) | (y = 9)) ifTrue:[				((x = 6) | (x = 10)) ifTrue:[					((squares at: y) at: x) terrain: 3.				].				((x = 7) | (x = 8) | (x = 9)) ifTrue:[					((squares at: y) at: x) terrain: 2.				].			].			(y = 8) ifTrue:[				((x = 5) | (x = 8) | (x = 11)) ifTrue:[					((squares at: y) at: x) terrain: 3.				].				((x = 6) | (x = 7) | (x = 9) | (x = 10)) ifTrue:[					((squares at: y) at: x) terrain: 2.				].			].		]	].	</body>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	^self</body>
</methods>


<methods>
<class-id>Jaguar</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setJaguar:">setJaguar: anObject	chessSet := anObject.	((chessSet player) name = 'Player Black') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\jaguar2.png') image.		exist := True.	].	((chessSet player) name = 'Player Red') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\jaguar3.png') image.		exist := True.	].	((chessSet player) name = 'Player Green') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\jaguar4.png') image.		exist := True.	].</body>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 5.	chessPic := (ImageReader fromFile: 'Figures\jaguar1.png') image.	canSwim := false.	canJump := false.	canMoveDiagonally := false.	isLimitedMove := false.	^self</body>
</methods>


<methods>
<class-id>PlayerRed</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	name := 'Player Red'.	^self</body>
</methods>


<methods>
<class-id>JungleChessController</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	^self</body>
</methods>


<methods>
<class-id>ChessSet class</class-id> <category>instance creation</category>

<body package="JungleChessP3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>ChessSet</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setChessSet:">setChessSet: anObject	player := anObject.	numOfChess := 9.	(player name = 'Player Blue') ifTrue:[		rat := Rat new.		rat setRat: self.		(((((player jungleChess) board) squares) at: 13) at: 11) chessOnSquare: rat.		superCat := SuperCat new.		superCat setSuperCat: self.		(((((player jungleChess) board) squares) at: 13) at: 7) chessOnSquare: superCat.		dog := Dog new.		dog setDog: self.		(((((player jungleChess) board) squares) at: 13) at: 9) chessOnSquare: dog.		wolf := Wolf new.		wolf setWolf: self.		(((((player jungleChess) board) squares) at: 12) at: 6) chessOnSquare: wolf.		jaguar := Jaguar new.		jaguar setJaguar: self.		(((((player jungleChess) board) squares) at: 12) at: 10) chessOnSquare: jaguar.		tiger := Tiger new.		tiger setTiger: self.		(((((player jungleChess) board) squares) at: 14) at: 6) chessOnSquare: tiger.		lion := Lion new.		lion setLion: self.		(((((player jungleChess) board) squares) at: 14) at: 10) chessOnSquare: lion.		elephant := Elephant new.		elephant setElephant: self.		(((((player jungleChess) board) squares) at: 13) at: 5) chessOnSquare: elephant.		crocodile := Crocodile new.		crocodile setCrocodile: self.		(((((player jungleChess) board) squares) at: 11) at: 8) chessOnSquare: crocodile.		den := Den new.		den setDen: self.		(((((player jungleChess) board) squares) at: 15) at: 8) denOnSquare: den.		trap1 := Trap new.		trap1 setTrap: self.		(((((player jungleChess) board) squares) at: 15) at: 7) trapOnSquare: trap1.		trap2 := Trap new.		trap2 setTrap: self.		(((((player jungleChess) board) squares) at: 14) at: 8) trapOnSquare: trap2.		trap3 := Trap new.		trap3 setTrap: self.		(((((player jungleChess) board) squares) at: 15) at: 9) trapOnSquare: trap3.	].	(player name = 'Player Black') ifTrue:[		rat := Rat new.		rat setRat: self.		(((((player jungleChess) board) squares) at: 11) at: 3) chessOnSquare: rat.		superCat := SuperCat new.		superCat setSuperCat: self.		(((((player jungleChess) board) squares) at: 7) at: 3) chessOnSquare: superCat.		dog := Dog new.		dog setDog: self.		(((((player jungleChess) board) squares) at: 9) at: 3) chessOnSquare: dog.		wolf := Wolf new.		wolf setWolf: self.		(((((player jungleChess) board) squares) at: 6) at: 4) chessOnSquare: wolf.		jaguar := Jaguar new.		jaguar setJaguar: self.		(((((player jungleChess) board) squares) at: 10) at: 4) chessOnSquare: jaguar.		tiger := Tiger new.		tiger setTiger: self.		(((((player jungleChess) board) squares) at: 6) at: 2) chessOnSquare: tiger.		lion := Lion new.		lion setLion: self.		(((((player jungleChess) board) squares) at: 10) at: 2) chessOnSquare: lion.		elephant := Elephant new.		elephant setElephant: self.		(((((player jungleChess) board) squares) at: 5) at: 3) chessOnSquare: elephant.		crocodile := Crocodile new.		crocodile setCrocodile: self.		(((((player jungleChess) board) squares) at: 8) at: 5) chessOnSquare: crocodile.		den := Den new.		den setDen: self.		(((((player jungleChess) board) squares) at: 8) at: 1) denOnSquare: den.		trap1 := Trap new.		trap1 setTrap: self.		(((((player jungleChess) board) squares) at: 7) at: 1) trapOnSquare: trap1.		trap2 := Trap new.		trap2 setTrap: self.		(((((player jungleChess) board) squares) at: 8) at: 2) trapOnSquare: trap2.		trap3 := Trap new.		trap3 setTrap: self.		(((((player jungleChess) board) squares) at: 9) at: 1) trapOnSquare: trap3.	].	(player name = 'Player Red') ifTrue:[		rat := Rat new.		rat setRat: self.		(((((player jungleChess) board) squares) at: 3) at: 5) chessOnSquare: rat.		superCat := SuperCat new.		superCat setSuperCat: self.		(((((player jungleChess) board) squares) at: 3) at: 9) chessOnSquare: superCat.		dog := Dog new.		dog setDog: self.		(((((player jungleChess) board) squares) at: 3) at: 7) chessOnSquare: dog.		wolf := Wolf new.		wolf setWolf: self.		(((((player jungleChess) board) squares) at: 4) at: 10) chessOnSquare: wolf.		jaguar := Jaguar new.		jaguar setJaguar: self.		(((((player jungleChess) board) squares) at: 4) at: 6) chessOnSquare: jaguar.		tiger := Tiger new.		tiger setTiger: self.		(((((player jungleChess) board) squares) at: 2) at: 10) chessOnSquare: tiger.		lion := Lion new.		lion setLion: self.		(((((player jungleChess) board) squares) at: 2) at: 6) chessOnSquare: lion.		elephant := Elephant new.		elephant setElephant: self.		(((((player jungleChess) board) squares) at: 3) at: 11) chessOnSquare: elephant.		crocodile := Crocodile new.		crocodile setCrocodile: self.		(((((player jungleChess) board) squares) at: 5) at: 8) chessOnSquare: crocodile.		den := Den new.		den setDen: self.		(((((player jungleChess) board) squares) at: 1) at: 8) denOnSquare: den.		trap1 := Trap new.		trap1 setTrap: self.		(((((player jungleChess) board) squares) at: 1) at: 9) trapOnSquare: trap1.		trap2 := Trap new.		trap2 setTrap: self.		(((((player jungleChess) board) squares) at: 2) at: 8) trapOnSquare: trap2.		trap3 := Trap new.		trap3 setTrap: self.		(((((player jungleChess) board) squares) at: 1) at: 7) trapOnSquare: trap3.	].	(player name = 'Player Green') ifTrue:[		rat := Rat new.		rat setRat: self.		(((((player jungleChess) board) squares) at: 5) at: 13) chessOnSquare: rat.		superCat := SuperCat new.		superCat setSuperCat: self.		(((((player jungleChess) board) squares) at: 9) at: 13) chessOnSquare: superCat.		dog := Dog new.		dog setDog: self.		(((((player jungleChess) board) squares) at: 7) at: 13) chessOnSquare: dog.		wolf := Wolf new.		wolf setWolf: self.		(((((player jungleChess) board) squares) at: 10) at: 12) chessOnSquare: wolf.		jaguar := Jaguar new.		jaguar setJaguar: self.		(((((player jungleChess) board) squares) at: 6) at: 12) chessOnSquare: jaguar.		tiger := Tiger new.		tiger setTiger: self.		(((((player jungleChess) board) squares) at: 10) at: 14) chessOnSquare: tiger.		lion := Lion new.		lion setLion: self.		(((((player jungleChess) board) squares) at: 6) at: 14) chessOnSquare: lion.		elephant := Elephant new.		elephant setElephant: self.		(((((player jungleChess) board) squares) at: 11) at: 13) chessOnSquare: elephant.		crocodile := Crocodile new.		crocodile setCrocodile: self.		(((((player jungleChess) board) squares) at: 8) at: 11) chessOnSquare: crocodile.		den := Den new.		den setDen: self.		(((((player jungleChess) board) squares) at: 8) at: 15) denOnSquare: den.		trap1 := Trap new.		trap1 setTrap: self.		(((((player jungleChess) board) squares) at: 9) at: 15) trapOnSquare: trap1.		trap2 := Trap new.		trap2 setTrap: self.		(((((player jungleChess) board) squares) at: 8) at: 14) trapOnSquare: trap2.		trap3 := Trap new.		trap3 setTrap: self.		(((((player jungleChess) board) squares) at: 7) at: 15) trapOnSquare: trap3.	].	(player name = 'Player Monster') ifTrue:[		monster := Monster new.		monster setMonster: self.		(((((player jungleChess) board) squares) at: 8) at: 8) chessOnSquare: monster.	].	</body>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	^self</body>

<body package="JungleChessP3" selector="clean">clean	(numOfChess ~= 0) ifTrue:[		(rat square ~= nil) ifTrue:[			rat square chessOnSquare: nil.		].		(superCat square ~= nil) ifTrue:[			superCat square chessOnSquare: nil.		].		(dog square ~= nil) ifTrue:[			dog square chessOnSquare: nil.		].		(wolf square ~= nil) ifTrue:[			wolf square chessOnSquare: nil.		].		(jaguar square ~= nil) ifTrue:[			jaguar square chessOnSquare: nil.		].		(tiger square ~= nil) ifTrue:[			tiger square chessOnSquare: nil.		].		(lion square ~= nil) ifTrue:[			lion square chessOnSquare: nil.		].		(elephant square ~= nil) ifTrue:[			elephant square chessOnSquare: nil.		].		(crocodile square ~= nil) ifTrue:[			crocodile square chessOnSquare: nil.		].	].		den square denOnSquare: nil.	trap1 square trapOnSquare: nil.	trap2 square trapOnSquare: nil.	trap3 square trapOnSquare: nil.	numOfChess := 0.</body>
</methods>

<methods>
<class-id>ChessSet</class-id> <category>accessing</category>

<body package="JungleChessP3" selector="wolf">wolf	^wolf</body>

<body package="JungleChessP3" selector="rat">rat	^rat</body>

<body package="JungleChessP3" selector="player:">player: anObject	player := anObject</body>

<body package="JungleChessP3" selector="trap3">trap3	^trap3</body>

<body package="JungleChessP3" selector="numOfChess">numOfChess	^numOfChess</body>

<body package="JungleChessP3" selector="lion:">lion: anObject	lion := anObject</body>

<body package="JungleChessP3" selector="den:">den: anObject	den := anObject</body>

<body package="JungleChessP3" selector="trap3:">trap3: anObject	trap3 := anObject</body>

<body package="JungleChessP3" selector="dog:">dog: anObject	dog := anObject</body>

<body package="JungleChessP3" selector="numOfChess:">numOfChess: anObject	numOfChess := anObject</body>

<body package="JungleChessP3" selector="trap2:">trap2: anObject	trap2 := anObject</body>

<body package="JungleChessP3" selector="monster">monster	^monster</body>

<body package="JungleChessP3" selector="lion">lion	^lion</body>

<body package="JungleChessP3" selector="jaguar:">jaguar: anObject	jaguar := anObject</body>

<body package="JungleChessP3" selector="trap1">trap1	^trap1</body>

<body package="JungleChessP3" selector="den">den	^den</body>

<body package="JungleChessP3" selector="elephant">elephant	^elephant</body>

<body package="JungleChessP3" selector="crocodile">crocodile	^crocodile</body>

<body package="JungleChessP3" selector="dog">dog	^dog</body>

<body package="JungleChessP3" selector="trap2">trap2	^trap2</body>

<body package="JungleChessP3" selector="trap1:">trap1: anObject	trap1 := anObject</body>

<body package="JungleChessP3" selector="elephant:">elephant: anObject	elephant := anObject</body>

<body package="JungleChessP3" selector="jaguar">jaguar	^jaguar</body>

<body package="JungleChessP3" selector="tiger">tiger	^tiger</body>

<body package="JungleChessP3" selector="superCat:">superCat: anObject	superCat := anObject</body>

<body package="JungleChessP3" selector="crocodile:">crocodile: anObject	crocodile := anObject</body>

<body package="JungleChessP3" selector="tiger:">tiger: anObject	tiger := anObject</body>

<body package="JungleChessP3" selector="wolf:">wolf: anObject	wolf := anObject</body>

<body package="JungleChessP3" selector="rat:">rat: anObject	rat := anObject</body>

<body package="JungleChessP3" selector="superCat">superCat	^superCat</body>

<body package="JungleChessP3" selector="monster:">monster: anObject	monster := anObject</body>

<body package="JungleChessP3" selector="player">player	^player</body>
</methods>


<methods>
<class-id>Tiger</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="setTiger:">setTiger: anObject	chessSet := anObject.	((chessSet player) name = 'Player Black') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\tiger2.png') image.		exist := True.	].	((chessSet player) name = 'Player Red') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\tiger3.png') image.		exist := True.	].	((chessSet player) name = 'Player Green') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\tiger4.png') image.		exist := True.	].</body>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 6.	chessPic := (ImageReader fromFile: 'Figures\tiger1.png') image.	canSwim := false.	canJump := true.	canMoveDiagonally := false.	isLimitedMove := false.	^self</body>
</methods>


<methods>
<class-id>SuperCat</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 2.	chessPic := (ImageReader fromFile: 'Figures\supercat1.png') image.	canSwim := false.	canJump := false.	canMoveDiagonally := true.	isLimitedMove := false.	^self</body>

<body package="JungleChessP3" selector="setSuperCat:">setSuperCat: anObject	chessSet := anObject.	((chessSet player) name = 'Player Black') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\supercat2.png') image.		exist := True.	].	((chessSet player) name = 'Player Red') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\supercat3.png') image.		exist := True.	].	((chessSet player) name = 'Player Green') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\supercat4.png') image.		exist := True.	].</body>
</methods>


<methods>
<class-id>PlayerBlue</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	name := 'Player Blue'.	^self</body>
</methods>


<methods>
<class-id>SquareController</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	^self</body>
</methods>

<methods>
<class-id>SquareController</class-id> <category>event triggering</category>

<body package="JungleChessP3" selector="redButtonPressedEvent:">redButtonPressedEvent: event	((model terrain) = 0) ifTrue:[		^false.	].	((((model board) jungleChess) judge) judgeClick: model) ifTrue:[		model changed.	].		(((((model board) jungleChess) judge) curPlayerTurn) = (((model board) jungleChess) playerMonster)) ifTrue:[		(((model board) jungleChess) playerMonster) moveMonster.	].		(((model board) jungleChess) judge) endGame ifTrue:[		(((model board) jungleChess) jungleChessWindow) messagePrompt value: (((model board) jungleChess) judge) messageStatement.	] ifFalse:[		(((model board) jungleChess) jungleChessWindow) messagePrompt value: ((((model board) jungleChess) judge) curPlayerTurn) name, ' turn. ', (((model board) jungleChess) judge) messageStatement.	].</body>
</methods>


<methods>
<class-id>PlayerBlack</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	name := 'Player Black'.	^self</body>
</methods>


<methods>
<class-id>Cat</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 2.	chessPic := (ImageReader fromFile: 'Figures\cat1.png') image.	canSwim := false.	canJump := false.	canMoveDiagonally := false.	isLimitedMove := false.	^self</body>

<body package="JungleChessP3" selector="setCat:">setCat: anObject	chessSet := anObject.	((chessSet player) name = 'Player Black') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\cat2.png') image.		exist := True.	].	((chessSet player) name = 'Player Red') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\cat3.png') image.		exist := True.	].	((chessSet player) name = 'Player Green') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\cat4.png') image.		exist := True.	].</body>
</methods>


<methods>
<class-id>Rat</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 1.	chessPic := (ImageReader fromFile: 'Figures\rat1.png') image.	canSwim := true.	canJump := false.	canMoveDiagonally := false.	isLimitedMove := false.	^self</body>

<body package="JungleChessP3" selector="setRat:">setRat: anObject	chessSet := anObject.	((chessSet player) name = 'Player Black') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\rat2.png') image.		exist := True.	].	((chessSet player) name = 'Player Red') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\rat3.png') image.		exist := True.	].	((chessSet player) name = 'Player Green') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\rat4.png') image.		exist := True.	].</body>
</methods>


<methods>
<class-id>Lion</class-id> <category>initialize-release</category>

<body package="JungleChessP3" selector="initialize">initialize	super initialize.	rank := 7.	chessPic := (ImageReader fromFile: 'Figures\lion1.png') image.	canSwim := false.	canJump := true.	canMoveDiagonally := false.	isLimitedMove := false.	^self</body>

<body package="JungleChessP3" selector="setLion:">setLion: anObject	chessSet := anObject.	((chessSet player) name = 'Player Black') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\lion2.png') image.		exist := True.	].	((chessSet player) name = 'Player Red') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\lion3.png') image.		exist := True.	].	((chessSet player) name = 'Player Green') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\lion4.png') image.		exist := True.	].</body>
</methods>



</st-source>
