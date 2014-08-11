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

<body package="JungleChess3" selector="initialize">initialize
</methods>


<methods>
<class-id>JungleChess class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new
</methods>


<methods>
<class-id>JungleChess</class-id> <category>accessing</category>

<body package="JungleChess3" selector="player2">player2

<body package="JungleChess3" selector="board:">board: anObject

<body package="JungleChess3" selector="board">board

<body package="JungleChess3" selector="jungleChessWindow">jungleChessWindow

<body package="JungleChess3" selector="judge">judge

<body package="JungleChess3" selector="player1">player1

<body package="JungleChess3" selector="judge:">judge: anObject

<body package="JungleChess3" selector="player2:">player2: anObject

<body package="JungleChess3" selector="player1:">player1: anObject

<body package="JungleChess3" selector="jungleChessWindow:">jungleChessWindow: anObject
</methods>

<methods>
<class-id>JungleChess</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setJungleChess">setJungleChess

<body package="JungleChess3" selector="reset">reset

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setJungleChess:">setJungleChess: aJungleChessWindow
</methods>


<methods>
<class-id>JungleChessView</class-id> <category>accessing</category>

<body package="JungleChess3" selector="defaultControllerClass">defaultControllerClass
</methods>

<methods>
<class-id>JungleChessView</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="model:">model: anObject
</methods>


<methods>
<class-id>Trap class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new
</methods>


<methods>
<class-id>Trap</class-id> <category>accessing</category>

<body package="JungleChess3" selector="trapPic:">trapPic: anObject

<body package="JungleChess3" selector="chessSet">chessSet

<body package="JungleChess3" selector="trapPic">trapPic

<body package="JungleChess3" selector="chessSet:">chessSet: anObject
</methods>

<methods>
<class-id>Trap</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setTrap:">setTrap: anObject
</methods>


<methods>
<class-id>Chess class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new
</methods>


<methods>
<class-id>Chess</class-id> <category>accessing</category>

<body package="JungleChess3" selector="canSwim:">canSwim: anObject

<body package="JungleChess3" selector="chessSet">chessSet

<body package="JungleChess3" selector="exist">exist

<body package="JungleChess3" selector="canJump:">canJump: anObject

<body package="JungleChess3" selector="canJump">canJump

<body package="JungleChess3" selector="chessPic:">chessPic: anObject

<body package="JungleChess3" selector="chessSet:">chessSet: anObject

<body package="JungleChess3" selector="exist:">exist: anObject

<body package="JungleChess3" selector="chessPic">chessPic

<body package="JungleChess3" selector="canSwim">canSwim

<body package="JungleChess3" selector="rank">rank

<body package="JungleChess3" selector="rank:">rank: anObject
</methods>

<methods>
<class-id>Chess</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setChess:">setChess: anObject
</methods>


<methods>
<class-id>Rat</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setRat:">setRat: anObject
</methods>


<methods>
<class-id>Cat</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setCat:">setCat: anObject
</methods>


<methods>
<class-id>Lion</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setLion:">setLion: anObject
</methods>


<methods>
<class-id>Wolf</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setWolf:">setWolf: anObject
</methods>


<methods>
<class-id>Judge class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new
</methods>


<methods>
<class-id>Judge</class-id> <category>accessing</category>

<body package="JungleChess3" selector="pickedSquare">pickedSquare

<body package="JungleChess3" selector="curPlayerTurn">curPlayerTurn

<body package="JungleChess3" selector="jungleChess:">jungleChess: anObject

<body package="JungleChess3" selector="endGame">endGame

<body package="JungleChess3" selector="jungleChess">jungleChess

<body package="JungleChess3" selector="messageStatement:">messageStatement: anObject

<body package="JungleChess3" selector="endGame:">endGame: anObject

<body package="JungleChess3" selector="totalNumberOfTurn:">totalNumberOfTurn: anObject

<body package="JungleChess3" selector="totalNumberOfTurn">totalNumberOfTurn

<body package="JungleChess3" selector="messageStatement">messageStatement

<body package="JungleChess3" selector="curPlayerTurn:">curPlayerTurn: anObject

<body package="JungleChess3" selector="pickedSquare:">pickedSquare: anObject
</methods>

<methods>
<class-id>Judge</class-id> <category>judging</category>

<body package="JungleChess3" selector="judgeCapture:">judgeCapture: aSquare

<body package="JungleChess3" selector="judgeClick:">judgeClick: aSquare

<body package="JungleChess3" selector="checkWin">checkWin

<body package="JungleChess3" selector="judgeRelease:">judgeRelease: aSquare

<body package="JungleChess3" selector="judgePick:">judgePick: aSquare
</methods>

<methods>
<class-id>Judge</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setJudge:">setJudge: anObject
</methods>


<methods>
<class-id>Den class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new
</methods>


<methods>
<class-id>Den</class-id> <category>accessing</category>

<body package="JungleChess3" selector="chessSet">chessSet

<body package="JungleChess3" selector="denPic:">denPic: anObject

<body package="JungleChess3" selector="chessSet:">chessSet: anObject

<body package="JungleChess3" selector="denPic">denPic
</methods>

<methods>
<class-id>Den</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setDen:">setDen: anObject
</methods>


<methods>
<class-id>Board class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new
</methods>


<methods>
<class-id>Board</class-id> <category>accessing</category>

<body package="JungleChess3" selector="width">width

<body package="JungleChess3" selector="height">height

<body package="JungleChess3" selector="width:">width: anObject

<body package="JungleChess3" selector="squares">squares

<body package="JungleChess3" selector="jungleChess:">jungleChess: anObject

<body package="JungleChess3" selector="squares:">squares: anObject

<body package="JungleChess3" selector="height:">height: anObject

<body package="JungleChess3" selector="jungleChess">jungleChess
</methods>

<methods>
<class-id>Board</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setBoard:">setBoard: aJungleChess

<body package="JungleChess3" selector="initialize">initialize
</methods>


<methods>
<class-id>Tiger</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setTiger:">setTiger: anObject

<body package="JungleChess3" selector="initialize">initialize
</methods>


<methods>
<class-id>Player class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new
</methods>


<methods>
<class-id>Player</class-id> <category>accessing</category>

<body package="JungleChess3" selector="jungleChess">jungleChess

<body package="JungleChess3" selector="chessSet:">chessSet: anObject

<body package="JungleChess3" selector="name">name

<body package="JungleChess3" selector="chessSet">chessSet

<body package="JungleChess3" selector="jungleChess:">jungleChess: anObject

<body package="JungleChess3" selector="name:">name: anObject
</methods>

<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setPlayer:">setPlayer: anObject
</methods>


<methods>
<class-id>PlayerBlue</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize
</methods>


<methods>
<class-id>Square class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new
</methods>


<methods>
<class-id>Square</class-id> <category>accessing</category>

<body package="JungleChess3" selector="boardPosition:">boardPosition: anObject

<body package="JungleChess3" selector="denOnSquare:">denOnSquare: anObject

<body package="JungleChess3" selector="trapOnSquare">trapOnSquare

<body package="JungleChess3" selector="squarePic">squarePic

<body package="JungleChess3" selector="boardPosition">boardPosition

<body package="JungleChess3" selector="trapOnSquare:">trapOnSquare: anObject

<body package="JungleChess3" selector="terrain:">terrain: anObject

<body package="JungleChess3" selector="squarePic:">squarePic: anObject

<body package="JungleChess3" selector="chessOnSquare">chessOnSquare

<body package="JungleChess3" selector="denOnSquare">denOnSquare

<body package="JungleChess3" selector="board">board

<body package="JungleChess3" selector="terrain">terrain

<body package="JungleChess3" selector="board:">board: anObject

<body package="JungleChess3" selector="chessOnSquare:">chessOnSquare: anObject
</methods>

<methods>
<class-id>Square</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setSquare:setPosi:">setSquare: anObject setPosi: aPoint
</methods>


<methods>
<class-id>SquareView</class-id> <category>accessing</category>

<body package="JungleChess3" selector="defaultControllerClass">defaultControllerClass
</methods>

<methods>
<class-id>SquareView</class-id> <category>show</category>

<body package="JungleChess3" selector="displayOn:">displayOn: aGraphicsContext
</methods>

<methods>
<class-id>SquareView</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="model:">model: anObject

<body package="JungleChess3" selector="initialize">initialize
</methods>


<methods>
<class-id>Dog</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize

<body package="JungleChess3" selector="setDog:">setDog: anObject
</methods>


<methods>
<class-id>ChessSet class</class-id> <category>instance creation</category>

<body package="JungleChess3" selector="new">new
</methods>


<methods>
<class-id>ChessSet</class-id> <category>accessing</category>

<body package="JungleChess3" selector="cat">cat

<body package="JungleChess3" selector="den:">den: anObject

<body package="JungleChess3" selector="elephant">elephant

<body package="JungleChess3" selector="jaguar">jaguar

<body package="JungleChess3" selector="jaguar:">jaguar: anObject

<body package="JungleChess3" selector="elephant:">elephant: anObject

<body package="JungleChess3" selector="numOfChess">numOfChess

<body package="JungleChess3" selector="tiger">tiger

<body package="JungleChess3" selector="numOfChess:">numOfChess: anObject

<body package="JungleChess3" selector="lion:">lion: anObject

<body package="JungleChess3" selector="trap3">trap3

<body package="JungleChess3" selector="tiger:">tiger: anObject

<body package="JungleChess3" selector="wolf">wolf

<body package="JungleChess3" selector="wolf:">wolf: anObject

<body package="JungleChess3" selector="cat:">cat: anObject

<body package="JungleChess3" selector="trap3:">trap3: anObject

<body package="JungleChess3" selector="player:">player: anObject

<body package="JungleChess3" selector="rat:">rat: anObject

<body package="JungleChess3" selector="rat">rat

<body package="JungleChess3" selector="den">den

<body package="JungleChess3" selector="player">player

<body package="JungleChess3" selector="dog:">dog: anObject

<body package="JungleChess3" selector="trap1">trap1

<body package="JungleChess3" selector="lion">lion

<body package="JungleChess3" selector="trap2:">trap2: anObject

<body package="JungleChess3" selector="trap2">trap2

<body package="JungleChess3" selector="trap1:">trap1: anObject

<body package="JungleChess3" selector="dog">dog
</methods>

<methods>
<class-id>ChessSet</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setChessSet:">setChessSet: anObject

<body package="JungleChess3" selector="initialize">initialize
</methods>


<methods>
<class-id>JungleChessWindow class</class-id> <category>interface specs</category>

<body package="JungleChess3" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>JungleChessWindow</class-id> <category>aspects</category>

<body package="JungleChess3" selector="messagePrompt">messagePrompt
</methods>

<methods>
<class-id>JungleChessWindow</class-id> <category>accessing</category>

<body package="JungleChess3" selector="jungleChessView">jungleChessView
</methods>

<methods>
<class-id>JungleChessWindow</class-id> <category>actions</category>

<body package="JungleChess3" selector="newGame">newGame
</methods>


<methods>
<class-id>Elephant</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setElephant:">setElephant: anObject

<body package="JungleChess3" selector="initialize">initialize
</methods>


<methods>
<class-id>PlayerRed</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize
</methods>


<methods>
<class-id>SquareController</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="initialize">initialize
</methods>

<methods>
<class-id>SquareController</class-id> <category>event triggering</category>

<body package="JungleChess3" selector="redButtonPressedEvent:">redButtonPressedEvent: event
</methods>


<methods>
<class-id>Jaguar</class-id> <category>initialize-release</category>

<body package="JungleChess3" selector="setJaguar:">setJaguar: anObject

<body package="JungleChess3" selector="initialize">initialize
</methods>



</st-source>