<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.8 of 2011年3月30日 on 2012年3月25日 at 下午07時38分04秒</time-stamp>


<component-created>
<name>JungleChess3</name> <type>package</type>
</component-created><!-- Package JungleChess3* -->


<component-created>
<name>JungleChess3</name> <type>package</type>
</component-created>

<class>
<name>ChessSet</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>player numOfChess rat cat dog wolf jaguar tiger lion elephant den trap1 trap2 trap3 </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess3</package>
</attributes>
</class>

<class>
<name>JungleChess</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>judge board player1 player2 jungleChessWindow </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess3</package>
</attributes>
</class>

<class>
<name>Trap</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chessSet trapPic </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

<class>
<name>Chess</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chessSet rank chessPic exist canJump canSwim </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

<class>
<name>Square</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>board boardPosition terrain squarePic chessOnSquare trapOnSquare denOnSquare </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

<class>
<name>Den</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>chessSet denPic </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess3</package>
</attributes>
</class>

<class>
<name>Player</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>jungleChess chessSet name </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

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
<package>JungleChess3</package>
</attributes>
</class>

<methods>
<class-id>JungleChessController</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>JungleChess class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>JungleChess</class-id> <category>accessing</category>

<body package="JungleChess3" selector="player2">player2	^player2</body>

<body package="JungleChess3" selector="board:">board: anObject	board := anObject</body>

<body package="JungleChess3" selector="board">board	^board</body>

<body package="JungleChess3" selector="jungleChessWindow">jungleChessWindow	^jungleChessWindow</body>

<body package="JungleChess3" selector="judge">judge	^judge</body>

<body package="JungleChess3" selector="player1">player1	^player1</body>

<body package="JungleChess3" selector="judge:">judge: anObject	judge := anObject</body>

<body package="JungleChess3" selector="player2:">player2: anObject	player2 := anObject</body>

<body package="JungleChess3" selector="player1:">player1: anObject	player1 := anObject</body>

<body package="JungleChess3" selector="jungleChessWindow:">jungleChessWindow: anObject	jungleChessWindow := anObject</body>
</methods>

<methods>
<class-id>JungleChess</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setJungleChess">setJungleChess	board := Board new.	board setBoard: self.	player1 := PlayerBlue new.	player1 setPlayer: self.	player2 := PlayerRed new.	player2 setPlayer: self.	judge := Judge new.	judge setJudge: self.	self changed.</body>

<body package="JungleChess3" selector="reset">reset	"    1 to: board height do: [:y |        squares at: y put: (Array new: width).        1 to: board width do: [:x |            (squares at: y) at: x put: Square new.            ((squares at: y) at: x) setSquare: self setPosi: (x@y).        ]    ]."</body>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="JungleChess3" selector="setJungleChess:">setJungleChess: aJungleChessWindow	board := Board new.	board setBoard: self.	player1 := PlayerBlue new.	player1 setPlayer: self.	player2 := PlayerRed new.	player2 setPlayer: self.	judge := Judge new.	judge setJudge: self.	jungleChessWindow := aJungleChessWindow.	self changed.</body>
</methods>


<methods>
<class-id>JungleChessView</class-id> <category>accessing</category>

<body package="JungleChess3" selector="defaultControllerClass">defaultControllerClass	^JungleChessController</body>
</methods>

<methods>
<class-id>JungleChessView</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="JungleChess3" selector="model:">model: anObject    super model: anObject.    1 to: ((model board) height) do: [:y |         1 to: ((model board) width) do: [:x |             | view wrapper offset size |            view := SquareView model: ((((model board) squares) at: y) at: x).            offset := (x - 1 / ((model board) width)) @ (y - 1 / ((model board) height)).            size := (1 / ((model board) width)) @ (1 / ((model board) height)).            wrapper := BoundedWrapper on: view in: (offset extent: size).            self addWrapper: wrapper.        ]    ].</body>
</methods>


<methods>
<class-id>Trap class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Trap</class-id> <category>accessing</category>

<body package="JungleChess3" selector="trapPic:">trapPic: anObject	trapPic := anObject</body>

<body package="JungleChess3" selector="chessSet">chessSet	^chessSet</body>

<body package="JungleChess3" selector="trapPic">trapPic	^trapPic</body>

<body package="JungleChess3" selector="chessSet:">chessSet: anObject	chessSet := anObject</body>
</methods>

<methods>
<class-id>Trap</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	trapPic := (ImageReader fromFile: 'Figures\trap.png') image.	^self</body>

<body package="JungleChess3" selector="setTrap:">setTrap: anObject	chessSet := anObject.	</body>
</methods>


<methods>
<class-id>Chess class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Chess</class-id> <category>accessing</category>

<body package="JungleChess3" selector="canSwim:">canSwim: anObject	canSwim := anObject</body>

<body package="JungleChess3" selector="chessSet">chessSet	^chessSet</body>

<body package="JungleChess3" selector="exist">exist	^exist</body>

<body package="JungleChess3" selector="canJump:">canJump: anObject	canJump := anObject</body>

<body package="JungleChess3" selector="canJump">canJump	^canJump</body>

<body package="JungleChess3" selector="chessPic:">chessPic: anObject	chessPic := anObject</body>

<body package="JungleChess3" selector="chessSet:">chessSet: anObject	chessSet := anObject</body>

<body package="JungleChess3" selector="exist:">exist: anObject	exist := anObject</body>

<body package="JungleChess3" selector="chessPic">chessPic	^chessPic</body>

<body package="JungleChess3" selector="canSwim">canSwim	^canSwim</body>

<body package="JungleChess3" selector="rank">rank	^rank</body>

<body package="JungleChess3" selector="rank:">rank: anObject	rank := anObject</body>
</methods>

<methods>
<class-id>Chess</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="JungleChess3" selector="setChess:">setChess: anObject	chessSet := anObject</body>
</methods>


<methods>
<class-id>Rat</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	rank := 1.	chessPic := (ImageReader fromFile: 'Figures\rat1.png') image.	canSwim := true.	canJump := false.	^self</body>

<body package="JungleChess3" selector="setRat:">setRat: anObject	chessSet := anObject.	((chessSet player) name = 'Player Blue') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\rat2.png') image.		exist := True.	].</body>
</methods>


<methods>
<class-id>Cat</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	rank := 2.	chessPic := (ImageReader fromFile: 'Figures\cat1.png') image.	canSwim := false.	canJump := false.	^self</body>

<body package="JungleChess3" selector="setCat:">setCat: anObject	chessSet := anObject.	((chessSet player) name = 'Player Blue') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\cat2.png') image.		exist := True.	].</body>
</methods>


<methods>
<class-id>Lion</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	rank := 7.	chessPic := (ImageReader fromFile: 'Figures\lion1.png') image.	canSwim := false.	canJump := true.	^self</body>

<body package="JungleChess3" selector="setLion:">setLion: anObject	chessSet := anObject.	((chessSet player) name = 'Player Blue') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\lion2.png') image.		exist := True.	].</body>
</methods>


<methods>
<class-id>Wolf</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	rank := 4.	chessPic := (ImageReader fromFile: 'Figures\wolf1.png') image.	canSwim := false.	canJump := false.	^self</body>

<body package="JungleChess3" selector="setWolf:">setWolf: anObject	chessSet := anObject.	((chessSet player) name = 'Player Blue') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\wolf2.png') image.		exist := True.	].</body>
</methods>


<methods>
<class-id>Judge class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Judge</class-id> <category>accessing</category>

<body package="JungleChess3" selector="pickedSquare">pickedSquare	^pickedSquare</body>

<body package="JungleChess3" selector="curPlayerTurn">curPlayerTurn	^curPlayerTurn</body>

<body package="JungleChess3" selector="jungleChess:">jungleChess: anObject	jungleChess := anObject</body>

<body package="JungleChess3" selector="endGame">endGame	^endGame</body>

<body package="JungleChess3" selector="jungleChess">jungleChess	^jungleChess</body>

<body package="JungleChess3" selector="messageStatement:">messageStatement: anObject	messageStatement := anObject</body>

<body package="JungleChess3" selector="endGame:">endGame: anObject	endGame := anObject</body>

<body package="JungleChess3" selector="totalNumberOfTurn:">totalNumberOfTurn: anObject	totalNumberOfTurn := anObject</body>

<body package="JungleChess3" selector="totalNumberOfTurn">totalNumberOfTurn	^totalNumberOfTurn</body>

<body package="JungleChess3" selector="messageStatement">messageStatement	^messageStatement</body>

<body package="JungleChess3" selector="curPlayerTurn:">curPlayerTurn: anObject	curPlayerTurn := anObject</body>

<body package="JungleChess3" selector="pickedSquare:">pickedSquare: anObject	pickedSquare := anObject</body>
</methods>

<methods>
<class-id>Judge</class-id> <category>judging</category>

<body package="JungleChess3" selector="judgeCapture:">judgeCapture: aSquare	(pickedSquare chessOnSquare rank = 8) &amp; (aSquare chessOnSquare rank = 1) ifTrue:[		messageStatement := 'Elephant cannot capture rat.'.		^false.	] ifFalse:[		(pickedSquare chessOnSquare rank = 1) &amp; (aSquare chessOnSquare rank = 8) ifTrue:[			^true.		] ifFalse:[			(pickedSquare chessOnSquare rank &gt;= aSquare chessOnSquare rank) ifTrue:[				^true.			] ifFalse:[				messageStatement := 'Too weak to capture opponent piece.'.				^false.			]		]	].</body>

<body package="JungleChess3" selector="judgeClick:">judgeClick: aSquare	(endGame = true) ifTrue:[		messageStatement := 'Press new game button to start new game.'.Transcript cr; show: messageStatement printString.		^false.	].		(pickedSquare ~= nil) ifTrue:[		(pickedSquare = aSquare) ifTrue:[			pickedSquare := nil.			messageStatement := 'Unselected piece.'.Transcript cr; show: messageStatement printString.			^true.		] ifFalse:[			(self judgeRelease: aSquare) ifTrue:[				(aSquare chessOnSquare ~= nil) ifTrue:[					(curPlayerTurn = (jungleChess player1)) ifTrue:[						jungleChess player2 chessSet numOfChess: jungleChess player2 chessSet numOfChess - 1.					] ifFalse:[						jungleChess player1 chessSet numOfChess: jungleChess player1 chessSet numOfChess - 1.					].				].				aSquare chessOnSquare: (pickedSquare chessOnSquare).				pickedSquare chessOnSquare: nil.				pickedSquare := nil.				(self checkWin) ifFalse:[					messageStatement := 'Please pick up a piece.'.					(curPlayerTurn = (jungleChess player1)) ifTrue:[						curPlayerTurn := (jungleChess player2).					] ifFalse:[						curPlayerTurn := (jungleChess player1).					].				].Transcript cr; show: messageStatement printString.				^true.			] ifFalse:[Transcript cr; show: messageStatement printString.				^false.			]		]	] ifFalse:[		((self judgePick: aSquare) = true) ifTrue:[			pickedSquare := aSquare.			messageStatement := 'Piece picked up.'.Transcript cr; show: messageStatement printString.			^true.		] ifFalse:[Transcript cr; show: messageStatement printString.			^false.		]	].	^false.</body>

<body package="JungleChess3" selector="checkWin">checkWin	((((((jungleChess board) squares) at: 1) at: 4) chessOnSquare) ~= nil) ifTrue:[		messageStatement := 'Get into opponent Den. Player Blue wins.'.		endGame := true.		^true.	].		((((((jungleChess board) squares) at: 9) at: 4) chessOnSquare) ~= nil) ifTrue:[		messageStatement := 'Get into opponent Den. Player Red wins.'.		endGame := true.		^true.	].		((((jungleChess player1) chessSet) numOfChess) &lt;= 0) ifTrue:[		messageStatement := 'Captured all opponent piece. Player Red wins.'.		endGame := true.		^true.	].		((((jungleChess player2) chessSet) numOfChess) &lt;= 0) ifTrue:[		messageStatement := 'Captured all opponent piece. Player Blue wins.'.		endGame := true.		^true.	].		^false.</body>

<body package="JungleChess3" selector="judgeRelease:">judgeRelease: aSquare		(pickedSquare chessOnSquare canSwim = true) ifFalse:[		(aSquare terrain = 2) ifTrue:[			messageStatement := 'Cannot move into river.'.Transcript cr; show: messageStatement printString.			^false.		]	].		(aSquare denOnSquare ~= nil) ifTrue:[		(aSquare denOnSquare chessSet player = curPlayerTurn) ifTrue:[			messageStatement := 'Cannot move into own den.'.Transcript cr; show: messageStatement printString.			^false.		]	].		(aSquare chessOnSquare ~= nil) ifTrue:[		(pickedSquare terrain = 2) ifTrue:[			(aSquare chessOnSquare rank ~= 1) ifTrue:[				messageStatement := 'Cannot capture piece other than rat.'.Transcript cr; show: messageStatement printString.				^false.			]		] ifFalse:[			(aSquare chessOnSquare chessSet player = curPlayerTurn) ifTrue:[				messageStatement := 'Cannot capture own piece.'.Transcript cr; show: messageStatement printString.				^false.			] ifFalse:[				(aSquare trapOnSquare = nil) ifTrue:[					(self judgeCapture: aSquare) ifFalse:[Transcript cr; show: messageStatement printString.						^false.					].				] ifFalse:[					(aSquare trapOnSquare chessSet player ~= curPlayerTurn) ifTrue:[						messageStatement := 'Cannot capture piece in their own trap.'.Transcript cr; show: messageStatement printString.						^false.					]				]			]		]	].		(pickedSquare chessOnSquare canJump = true) ifTrue:[		(pickedSquare terrain = 3 &amp; aSquare terrain = 3) ifTrue:[			(pickedSquare boardPosition x = aSquare boardPosition x) ifTrue:[				((pickedSquare boardPosition y) &lt;(aSquare boardPosition y)) ifTrue:[					(pickedSquare boardPosition y + 1) to: (aSquare boardPosition y - 1) do:[:num|						((((pickedSquare board squares) at: num) at: (pickedSquare boardPosition x)) chessOnSquare ~= nil) ifTrue:[							messageStatement := 'Cannot cross river over rat.'.	Transcript cr; show: messageStatement printString.							^false.						]					].				] ifFalse:[					(aSquare boardPosition y + 1) to: (pickedSquare boardPosition y - 1) do:[:num|						((((pickedSquare board squares) at: num) at: (pickedSquare boardPosition x)) chessOnSquare ~= nil) ifTrue:[							messageStatement := 'Cannot cross river over rat.'.	Transcript cr; show: messageStatement printString.							^false.						]					].				].				^true.			]		].		(pickedSquare terrain = 4 &amp; aSquare terrain = 4) ifTrue:[			(pickedSquare boardPosition y = aSquare boardPosition y) ifTrue:[				(((pickedSquare boardPosition x - aSquare boardPosition x) = 3) | 				((pickedSquare boardPosition x - aSquare boardPosition x) = -3)) ifFalse:[					messageStatement := 'Cannot move more than one square.'.Transcript cr; show: messageStatement printString.					^false.				].				((pickedSquare boardPosition x) &lt; (aSquare boardPosition x)) ifTrue:[					(pickedSquare boardPosition x + 1) to: (aSquare boardPosition x - 1) do:[:num|						((((pickedSquare board squares) at: (pickedSquare boardPosition y)) at: num) chessOnSquare ~= nil) ifTrue:[							messageStatement := 'Cannot cross river over rat.'.	Transcript cr; show: messageStatement printString.							^false.						]					].				] ifFalse:[					(aSquare boardPosition x + 1) to: (pickedSquare boardPosition x - 1) do:[:num|						((((pickedSquare board squares) at: (pickedSquare boardPosition y)) at: num) chessOnSquare ~= nil) ifTrue:[							messageStatement := 'Cannot cross river over rat.'.	Transcript cr; show: messageStatement printString.							^false.						]					].				].				^true.			]		]	].		(pickedSquare boardPosition x = aSquare boardPosition x) ifTrue:[		(((pickedSquare boardPosition y - aSquare boardPosition y) = 1) | 		((pickedSquare boardPosition y - aSquare boardPosition y) = -1)) ifFalse:[			messageStatement := 'Cannot move more than one square.'.Transcript cr; show: messageStatement printString.			^false.		]	] ifFalse:[		(pickedSquare boardPosition y = aSquare boardPosition y) ifTrue:[			(((pickedSquare boardPosition x - aSquare boardPosition x) = 1) | 			((pickedSquare boardPosition x - aSquare boardPosition x) = -1)) ifFalse:[				messageStatement := 'Cannot move more than one square.'.Transcript cr; show: messageStatement printString.				^false.			]		] ifFalse:[			messageStatement := 'Cannot move more than one square.'.Transcript cr; show: messageStatement printString.			^false.		]	].		^true.</body>

<body package="JungleChess3" selector="judgePick:">judgePick: aSquare	Transcript cr; show: curPlayerTurn printString.	(aSquare chessOnSquare ~= nil) ifTrue:[		((((aSquare chessOnSquare) chessSet) player) = curPlayerTurn) ifTrue:[			^true.		] ifFalse:[			messageStatement := 'Cannot pick up opponent piece.'.			^false.		].	] ifFalse:[		messageStatement := 'Empty square. Please pick up your own piece.'.		^false.	]</body>
</methods>

<methods>
<class-id>Judge</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "		^self</body>

<body package="JungleChess3" selector="setJudge:">setJudge: anObject	jungleChess := anObject.	totalNumberOfTurn := 0.	curPlayerTurn := jungleChess player1.	pickedSquare := nil.	endGame := false.	messageStatement := 'Game start. '.</body>
</methods>


<methods>
<class-id>Den class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Den</class-id> <category>accessing</category>

<body package="JungleChess3" selector="chessSet">chessSet	^chessSet</body>

<body package="JungleChess3" selector="denPic:">denPic: anObject	denPic := anObject</body>

<body package="JungleChess3" selector="chessSet:">chessSet: anObject	chessSet := anObject</body>

<body package="JungleChess3" selector="denPic">denPic	^denPic</body>
</methods>

<methods>
<class-id>Den</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	denPic := (ImageReader fromFile: 'Figures\den1.png') image.	^self</body>

<body package="JungleChess3" selector="setDen:">setDen: anObject	chessSet := anObject.	(chessSet player name = 'Player Blue') ifTrue:[		denPic := (ImageReader fromFile: 'Figures\den2.png') image.	].</body>
</methods>


<methods>
<class-id>Board class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Board</class-id> <category>accessing</category>

<body package="JungleChess3" selector="width">width	^width</body>

<body package="JungleChess3" selector="height">height	^height</body>

<body package="JungleChess3" selector="width:">width: anObject	width := anObject</body>

<body package="JungleChess3" selector="squares">squares	^squares</body>

<body package="JungleChess3" selector="jungleChess:">jungleChess: anObject	jungleChess := anObject</body>

<body package="JungleChess3" selector="squares:">squares: anObject	squares := anObject</body>

<body package="JungleChess3" selector="height:">height: anObject	height := anObject</body>

<body package="JungleChess3" selector="jungleChess">jungleChess	^jungleChess</body>
</methods>

<methods>
<class-id>Board</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setBoard:">setBoard: aJungleChess    jungleChess := aJungleChess.    width := 7.    height := 9.    squares := Array new: height.    1 to: height do: [:y |        squares at: y put: (Array new: width).        1 to: width do: [:x |            (squares at: y) at: x put: Square new.            ((squares at: y) at: x) setSquare: self setPosi: (x@y).        ]    ].        ((squares at: 3) at: 2) terrain: 3.    ((squares at: 3) at: 3) terrain: 3.    ((squares at: 3) at: 5) terrain: 3.    ((squares at: 3) at: 6) terrain: 3.	    ((squares at: 4) at: 1) terrain: 4.    ((squares at: 4) at: 2) terrain: 2.    ((squares at: 4) at: 3) terrain: 2.    ((squares at: 4) at: 4) terrain: 4.    ((squares at: 4) at: 5) terrain: 2.    ((squares at: 4) at: 6) terrain: 2.    ((squares at: 4) at: 7) terrain: 4.	    ((squares at: 5) at: 1) terrain: 4.    ((squares at: 5) at: 2) terrain: 2.    ((squares at: 5) at: 3) terrain: 2.    ((squares at: 5) at: 4) terrain: 4.    ((squares at: 5) at: 5) terrain: 2.    ((squares at: 5) at: 6) terrain: 2.    ((squares at: 5) at: 7) terrain: 4.	    ((squares at: 6) at: 1) terrain: 4.    ((squares at: 6) at: 2) terrain: 2.    ((squares at: 6) at: 3) terrain: 2.    ((squares at: 6) at: 4) terrain: 4.    ((squares at: 6) at: 5) terrain: 2.    ((squares at: 6) at: 6) terrain: 2.    ((squares at: 6) at: 7) terrain: 4.	    ((squares at: 7) at: 2) terrain: 3.    ((squares at: 7) at: 3) terrain: 3.    ((squares at: 7) at: 5) terrain: 3.    ((squares at: 7) at: 6) terrain: 3.</body>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Tiger</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setTiger:">setTiger: anObject	chessSet := anObject.	((chessSet player) name = 'Player Blue') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\tiger2.png') image.		exist := True.	].</body>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	rank := 6.	chessPic := (ImageReader fromFile: 'Figures\tiger1.png') image.	canSwim := false.	canJump := true.	^self</body>
</methods>


<methods>
<class-id>Player class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Player</class-id> <category>accessing</category>

<body package="JungleChess3" selector="jungleChess">jungleChess	^jungleChess</body>

<body package="JungleChess3" selector="chessSet:">chessSet: anObject	chessSet := anObject</body>

<body package="JungleChess3" selector="name">name	^name</body>

<body package="JungleChess3" selector="chessSet">chessSet	^chessSet</body>

<body package="JungleChess3" selector="jungleChess:">jungleChess: anObject	jungleChess := anObject</body>

<body package="JungleChess3" selector="name:">name: anObject	name := anObject</body>
</methods>

<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="JungleChess3" selector="setPlayer:">setPlayer: anObject	jungleChess := anObject.	chessSet := ChessSet new.	chessSet setChessSet: self.</body>
</methods>


<methods>
<class-id>PlayerBlue</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	name := 'Player Blue'.	^self</body>
</methods>


<methods>
<class-id>Square class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Square</class-id> <category>accessing</category>

<body package="JungleChess3" selector="boardPosition:">boardPosition: anObject	boardPosition := anObject</body>

<body package="JungleChess3" selector="denOnSquare:">denOnSquare: anObject	denOnSquare := anObject</body>

<body package="JungleChess3" selector="trapOnSquare">trapOnSquare	^trapOnSquare</body>

<body package="JungleChess3" selector="squarePic">squarePic	^squarePic</body>

<body package="JungleChess3" selector="boardPosition">boardPosition	^boardPosition</body>

<body package="JungleChess3" selector="trapOnSquare:">trapOnSquare: anObject	trapOnSquare := anObject</body>

<body package="JungleChess3" selector="terrain:">terrain: anObject	terrain := anObject.	(terrain = 2) ifTrue:[		squarePic := (ImageReader fromFile: 'Figures\river.png') image.	].</body>

<body package="JungleChess3" selector="squarePic:">squarePic: anObject	squarePic := anObject</body>

<body package="JungleChess3" selector="chessOnSquare">chessOnSquare	^chessOnSquare</body>

<body package="JungleChess3" selector="denOnSquare">denOnSquare	^denOnSquare</body>

<body package="JungleChess3" selector="board">board	^board</body>

<body package="JungleChess3" selector="terrain">terrain	^terrain</body>

<body package="JungleChess3" selector="board:">board: anObject	board := anObject</body>

<body package="JungleChess3" selector="chessOnSquare:">chessOnSquare: anObject	chessOnSquare := anObject.	self changed.</body>
</methods>

<methods>
<class-id>Square</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	terrain := 1.	squarePic := (ImageReader fromFile: 'Figures\ground.png') image.	denOnSquare := nil.	trapOnSquare := nil.	chessOnSquare := nil.	^self</body>

<body package="JungleChess3" selector="setSquare:setPosi:">setSquare: anObject setPosi: aPoint	board := anObject.	boardPosition := aPoint.</body>
</methods>


<methods>
<class-id>SquareView</class-id> <category>accessing</category>

<body package="JungleChess3" selector="defaultControllerClass">defaultControllerClass	^SquareController.</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>show</category>

<body package="JungleChess3" selector="displayOn:">displayOn: aGraphicsContext| applicationImage bgImage displayBlock |	((model trapOnSquare) ~= nil) ifTrue:[		bgImage := ((model trapOnSquare) trapPic).	] ifFalse:[		((model denOnSquare) ~= nil) ifTrue:[			bgImage := ((model denOnSquare) denPic).		] ifFalse:[			bgImage := (model squarePic).		]	].	"Display the background image "	applicationImage := Image extent: 60@60 depth: 24 palette: FixedPalette rgb8Bit.	displayBlock := [:postion | bgImage pixelsDo: [:x :y |	  applicationImage atPoint: x@y + postion put:		(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion) 		  blendWith: (bgImage valueAtPoint: x@y)		  weight: ((((bgImage atPoint: x@y) bitShift: -24) / 255)))) ]].	displayBlock value: 0@0. 		"Display the chess image "	((model chessOnSquare) ~= nil) ifTrue:[		(model board jungleChess judge pickedSquare ~= model) ifTrue:[			displayBlock := [:postion | ((model chessOnSquare) chessPic) pixelsDo: [:x :y |			  applicationImage atPoint: x@y + postion put:				(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion) 				  blendWith: (((model chessOnSquare) chessPic) valueAtPoint: x@y)				  weight: ((((((model chessOnSquare) chessPic) atPoint: x@y) bitShift: -24) / 255 * 1)))) ]].			displayBlock value: 0@0.		] ifFalse:[			displayBlock := [:postion | ((model chessOnSquare) chessPic) pixelsDo: [:x :y |			  applicationImage atPoint: x@y + postion put:				(applicationImage palette indexOfPaintNearest: ((applicationImage valueAtPoint: x@y + postion) 				  blendWith: (((model chessOnSquare) chessPic) valueAtPoint: x@y)				  weight: ((((((model chessOnSquare) chessPic) atPoint: x@y) bitShift: -24) / 255 * 0.64)))) ]].			displayBlock value: 0@0.		].	].applicationImage displayOn: aGraphicsContext.</body>
</methods>

<methods>
<class-id>SquareView</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="model:">model: anObject	super model: anObject</body>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Dog</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	rank := 3.	chessPic := (ImageReader fromFile: 'Figures\dog1.png') image.	canSwim := false.	canJump := false.	^self</body>

<body package="JungleChess3" selector="setDog:">setDog: anObject	chessSet := anObject.	((chessSet player) name = 'Player Blue') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\dog2.png') image.		exist := True.	].</body>
</methods>


<methods>
<class-id>ChessSet class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>ChessSet</class-id> <category>accessing</category>

<body package="JungleChess3" selector="cat">cat	^cat</body>

<body package="JungleChess3" selector="den:">den: anObject	den := anObject</body>

<body package="JungleChess3" selector="elephant">elephant	^elephant</body>

<body package="JungleChess3" selector="jaguar">jaguar	^jaguar</body>

<body package="JungleChess3" selector="jaguar:">jaguar: anObject	jaguar := anObject</body>

<body package="JungleChess3" selector="elephant:">elephant: anObject	elephant := anObject</body>

<body package="JungleChess3" selector="numOfChess">numOfChess	^numOfChess</body>

<body package="JungleChess3" selector="tiger">tiger	^tiger</body>

<body package="JungleChess3" selector="numOfChess:">numOfChess: anObject	numOfChess := anObject</body>

<body package="JungleChess3" selector="lion:">lion: anObject	lion := anObject</body>

<body package="JungleChess3" selector="trap3">trap3	^trap3</body>

<body package="JungleChess3" selector="tiger:">tiger: anObject	tiger := anObject</body>

<body package="JungleChess3" selector="wolf">wolf	^wolf</body>

<body package="JungleChess3" selector="wolf:">wolf: anObject	wolf := anObject</body>

<body package="JungleChess3" selector="cat:">cat: anObject	cat := anObject</body>

<body package="JungleChess3" selector="trap3:">trap3: anObject	trap3 := anObject</body>

<body package="JungleChess3" selector="player:">player: anObject	player := anObject</body>

<body package="JungleChess3" selector="rat:">rat: anObject	rat := anObject</body>

<body package="JungleChess3" selector="rat">rat	^rat</body>

<body package="JungleChess3" selector="den">den	^den</body>

<body package="JungleChess3" selector="player">player	^player</body>

<body package="JungleChess3" selector="dog:">dog: anObject	dog := anObject</body>

<body package="JungleChess3" selector="trap1">trap1	^trap1</body>

<body package="JungleChess3" selector="lion">lion	^lion</body>

<body package="JungleChess3" selector="trap2:">trap2: anObject	trap2 := anObject</body>

<body package="JungleChess3" selector="trap2">trap2	^trap2</body>

<body package="JungleChess3" selector="trap1:">trap1: anObject	trap1 := anObject</body>

<body package="JungleChess3" selector="dog">dog	^dog</body>
</methods>

<methods>
<class-id>ChessSet</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setChessSet:">setChessSet: anObject	player := anObject.	numOfChess := 8.	(player name = 'Player Blue') ifTrue:[		rat := Rat new.		rat setRat: self.		(((((player jungleChess) board) squares) at: 7) at: 7) chessOnSquare: rat.		cat := Cat new.		cat setCat: self.		(((((player jungleChess) board) squares) at: 8) at: 2) chessOnSquare: cat.		dog := Dog new.		dog setDog: self.		(((((player jungleChess) board) squares) at: 8) at: 6) chessOnSquare: dog.		wolf := Wolf new.		wolf setWolf: self.		(((((player jungleChess) board) squares) at: 7) at: 3) chessOnSquare: wolf.		jaguar := Jaguar new.		jaguar setJaguar: self.		(((((player jungleChess) board) squares) at: 7) at: 5) chessOnSquare: jaguar.		tiger := Tiger new.		tiger setTiger: self.		(((((player jungleChess) board) squares) at: 9) at: 1) chessOnSquare: tiger.		lion := Lion new.		lion setLion: self.		(((((player jungleChess) board) squares) at: 9) at: 7) chessOnSquare: lion.		elephant := Elephant new.		elephant setElephant: self.		(((((player jungleChess) board) squares) at: 7) at: 1) chessOnSquare: elephant.		den := Den new.		den setDen: self.		(((((player jungleChess) board) squares) at: 9) at: 4) denOnSquare: den.		trap1 := Trap new.		trap1 setTrap: self.		(((((player jungleChess) board) squares) at: 9) at: 3) trapOnSquare: trap1.		trap2 := Trap new.		trap2 setTrap: self.		(((((player jungleChess) board) squares) at: 9) at: 5) trapOnSquare: trap2.		trap3 := Trap new.		trap3 setTrap: self.		(((((player jungleChess) board) squares) at: 8) at: 4) trapOnSquare: trap3.	] ifFalse:[		rat := Rat new.		rat setRat: self.		(((((player jungleChess) board) squares) at: 3) at:1) chessOnSquare: rat.		cat := Cat new.		cat setCat: self.		(((((player jungleChess) board) squares) at: 2) at: 6) chessOnSquare: cat.		dog := Dog new.		dog setDog: self.		(((((player jungleChess) board) squares) at: 2) at: 2) chessOnSquare: dog.		wolf := Wolf new.		wolf setWolf: self.		(((((player jungleChess) board) squares) at: 3) at: 5) chessOnSquare: wolf.		jaguar := Jaguar new.		jaguar setJaguar: self.		(((((player jungleChess) board) squares) at: 3) at: 3) chessOnSquare: jaguar.		tiger := Tiger new.		tiger setTiger: self.		(((((player jungleChess) board) squares) at: 1) at: 7) chessOnSquare: tiger.		lion := Lion new.		lion setLion: self.		(((((player jungleChess) board) squares) at: 1) at: 1) chessOnSquare: lion.		elephant := Elephant new.		elephant setElephant: self.		(((((player jungleChess) board) squares) at: 3) at: 7) chessOnSquare: elephant.		den := Den new.		den setDen: self.		(((((player jungleChess) board) squares) at: 1) at: 4) denOnSquare: den.		trap1 := Trap new.		trap1 setTrap: self.		(((((player jungleChess) board) squares) at: 1) at: 3) trapOnSquare: trap1.		trap2 := Trap new.		trap2 setTrap: self.		(((((player jungleChess) board) squares) at: 1) at: 5) trapOnSquare: trap2.		trap3 := Trap new.		trap3 setTrap: self.		(((((player jungleChess) board) squares) at: 2) at: 4) trapOnSquare: trap3.	].</body>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>JungleChessWindow class</class-id> <category>interface specs</category>

<body package="JungleChess3" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeType #specifiedSize #positionType #specifiedPosition #openType #advanced ) 			#label: 'Jungle Chess' 			#min: #(#{Core.Point} 420 580 ) 			#max: #(#{Core.Point} 420 580 ) 			#bounds: #(#{Graphics.Rectangle} 452 124 872 704 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 0 1 79 39 ) 					#name: #ActionButton1 					#model: #newGame 					#label: 'New game' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 80 1 420 39 ) 					#name: #InputField1 					#model: #messagePrompt ) 				#(#{UI.ArbitraryComponentSpec} 					#layout: #(#{Graphics.Rectangle} 0 40 420 580 ) 					#name: #ViewHolder1 					#component: #jungleChessView ) ) ) )</body>
</methods>


<methods>
<class-id>JungleChessWindow</class-id> <category>aspects</category>

<body package="JungleChess3" selector="messagePrompt">messagePrompt	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^messagePrompt isNil		ifTrue:			[messagePrompt := String new asValue]		ifFalse:			[messagePrompt]</body>
</methods>

<methods>
<class-id>JungleChessWindow</class-id> <category>accessing</category>

<body package="JungleChess3" selector="jungleChessView">jungleChessView	jungleChess := JungleChess new.	jungleChess setJungleChess: self.	messagePrompt value: jungleChess judge messageStatement, ((jungleChess judge) curPlayerTurn) name, ' turn. '.	^JungleChessView model: jungleChess.</body>
</methods>

<methods>
<class-id>JungleChessWindow</class-id> <category>actions</category>

<body package="JungleChess3" selector="newGame">newGame	"This stub method was generated by UIDefiner"	    1 to: jungleChess board height do: [:y |        1 to: jungleChess board width do: [:x |            (((jungleChess board squares) at: y) at: x) chessOnSquare: nil.        ]    ].	jungleChess player1 chessSet setChessSet: jungleChess player1.	jungleChess player2 chessSet setChessSet: jungleChess player2.	jungleChess judge setJudge: jungleChess.	messagePrompt value: jungleChess judge messageStatement, ((jungleChess judge) curPlayerTurn) name, ' turn. '.	^self</body>
</methods>


<methods>
<class-id>Elephant</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setElephant:">setElephant: anObject	chessSet := anObject.	((chessSet player) name = 'Player Blue') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\elephant2.png') image.		exist := True.	].</body>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	rank := 8.	chessPic := (ImageReader fromFile: 'Figures\elephant1.png') image.	canSwim := false.	canJump := false.	^self</body>
</methods>


<methods>
<class-id>PlayerRed</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	name := 'Player Red'.	^self</body>
</methods>


<methods>
<class-id>SquareController</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>SquareController</class-id> <category>event triggering</category>

<body package="JungleChess3" selector="redButtonPressedEvent:">redButtonPressedEvent: event	((((model board) jungleChess) judge) judgeClick: model) ifTrue:[		model changed.	].	(((model board) jungleChess) judge) endGame ifTrue:[		(((model board) jungleChess) jungleChessWindow) messagePrompt value: (((model board) jungleChess) judge) messageStatement.	] ifFalse:[		(((model board) jungleChess) jungleChessWindow) messagePrompt value: ((((model board) jungleChess) judge) curPlayerTurn) name, ' turn. ', (((model board) jungleChess) judge) messageStatement.	].</body>
</methods>


<methods>
<class-id>Jaguar</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setJaguar:">setJaguar: anObject	chessSet := anObject.	((chessSet player) name = 'Player Blue') ifTrue:[		chessPic := (ImageReader fromFile: 'Figures\jaguar2.png') image.		exist := True.	].</body>

<body package="JungleChess3" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	rank := 5.	chessPic := (ImageReader fromFile: 'Figures\Jaguar1.png') image.	canSwim := false.	canJump := false.	^self</body>
</methods>



</st-source>
