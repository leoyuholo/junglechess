# Jungle Chess

# Instruction
## Smalltalk version:
Download and install Smalltalk IDE [VisualWorks](http://www.cincomsmalltalk.com/main/developer-community/trying-cincom-smalltalk/try-cincom-smalltalk/), and then

1. add a project, copy files into project directory

	> [screenshot](/screenshots/step1.png)

2. Open System Browser

	> [screenshot](/screenshots/step2.png)

3. Package -> New Package -> "JungleChess"
4. Right click JungleChess Package -> File Into -> "JungleChess.st"

	> [screenshot](/screenshots/step4.png)

6. Open file -> "JungleChessWS.ws" -> highlight text -> Run

	> [screenshot](/screenshots/step6.png)

## NCurses version:
Using PuTTY and Ubuntu 14.04, install ncurses:
```
sudo apt-get install ncurses-dev
```
Compile with gcc:
```
gcc JungleChess.c -o JungleChess -lncurses
```
Run:
```
./JungleChess
```

# Screenshot
![ss1](/screenshots/ss1.png)
![ss2](/screenshots/ss2.png)
![ss3](/screenshots/ss3.png)
![ss4](/screenshots/ss4.png)
![ss5](/screenshots/ss5.png)
![ss6](/screenshots/ss6.png)
