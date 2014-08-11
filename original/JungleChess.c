#include <ncurses.h>

struct Coordinate{
	int x;
	int y;
};

typedef struct piece_st{
	char player;
	char type;
} piece_t;

typedef struct square_st{
	int x;
	int y;
	char terrain;
	char display[3];
	piece_t* piece;
} square_t;

typedef struct board_st{
	int numCol;
	int numRow;
	square_t*** square;
} board_t;

struct Coordinate board_offset;
struct Coordinate square_size;
struct Coordinate cursor;
struct Coordinate dimension;

board_t* board;
piece_t** pickedPiece;
struct Coordinate pickedPiece_posi;
int picked; //pickingOrReleasing
int playerTurn;
int playerNumPiece[2];
int end;

char message1[200];
char message2[200];
char message3[200];
char message4[200];

piece_t* create_piece(char player, char type){
	piece_t* tmp;
	
	tmp = (piece_t*) malloc(sizeof(piece_t));
	tmp->player = player;
	tmp->type = type;
	
	return tmp;
	
}

square_t* create_square(int x, int y, char terrain, char* display, piece_t* piece){
	square_t* tmp;
	
	tmp = (square_t*) malloc(sizeof(square_t));
	tmp->x = x;
	tmp->y = y;
	tmp->terrain = terrain;
	tmp->display[0] = display[0];
	tmp->display[1] = display[1];
	tmp->display[2] = display[2];
	tmp->piece = piece;
	
	return tmp;
}

board_t* create_board(int col, int row){
	board_t* tmp;
	int i, j;
	
	tmp = (board_t*) malloc(sizeof(board_t));
	tmp->numCol = col;
	tmp->numRow = row;
	tmp->square = (square_t***) malloc(sizeof(square_t**) * col);
	for(i = 0;i < col;i++){
		tmp->square[i] = (square_t**) malloc(sizeof(square_t*) * row);
	}
	for(i = 0;i < col;i++){
		for(j = 0;j < row;j++){
			if((i == 2 && j == 0) || (i == 3 && j == 1) || (i == 4 && j == 0)){
				tmp->square[i][j] = create_square(i, j, 'k', "###", NULL);//red trap
			}else if((i == 2 && j == 8) || (i == 3 && j == 7) || (i == 4 && j == 8)){
				tmp->square[i][j] = create_square(i, j, 'o', "###", NULL);//blue trap
			}else if(i == 3 && j == 0){
				tmp->square[i][j] = create_square(i, j, 'r', " O ", NULL);//red den
			}else if(i == 3 && j == 8){
				tmp->square[i][j] = create_square(i, j, 'b', " O ", NULL);//blue den
			}else if((i == 1 || i == 2 || i == 4 || i == 5) && (j == 3 || j == 4 || j ==5)){
				tmp->square[i][j] = create_square(i, j, 'r', "~~~", NULL);//river
			}else{
				switch(j){
					case 0:
						switch(i){
							case 0:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('r', 'L'));
								break;
							case 6:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('r', 'T'));
								break;
							default:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", NULL);
								break;
						}
						break;
					case 1:
						switch(i){
							case 1:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('r', 'D'));
								break;
							case 5:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('r', 'C'));
								break;
							default:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", NULL);
								break;
						}
						break;
					case 2:
						switch(i){
							case 0:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('r', 'R'));
								break;
							case 2:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('r', 'J'));
								break;
							case 4:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('r', 'W'));
								break;
							case 6:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('r', 'E'));
								break;
							default:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", NULL);
								break;
						}
						break;
					case 6:
						switch(i){
							case 0:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('b', 'E'));
								break;
							case 2:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('b', 'W'));
								break;
							case 4:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('b', 'J'));
								break;
							case 6:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('b', 'R'));
								break;
							default:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", NULL);
								break;
						}
						break;
					case 7:
						switch(i){
							case 1:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('b', 'C'));
								break;
							case 5:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('b', 'D'));
								break;
							default:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", NULL);
								break;
						}
						break;
					case 8:
						switch(i){
							case 0:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('b', 'T'));
								break;
							case 6:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", create_piece('b', 'L'));
								break;
							default:
								tmp->square[i][j] = create_square(i, j, 'g', "   ", NULL);
								break;
						}
						break;
					default:
						tmp->square[i][j] = create_square(i, j, 'g', "   ", NULL);
						break;
				}
			}
      	}
	}
	return tmp;
}

void draw_board(){
	int left = board_offset.x, right = left + 30, up = board_offset.y, bottom = up + 20;
	int i, j, k;
	//outer border
	for(i = 0;i < dimension.x;i++){
		mvaddch(0, i*(square_size.x-1)+board_offset.x+3, i+49);
	}
	for(i = 0;i < dimension.y;i++){
		mvaddch(i*(square_size.y-1)+board_offset.y+2, 1, i+49);
	}
	mvaddch(up, left, ACS_ULCORNER);
	for(i = left + 1;i < right;i++){
		mvaddch(up, i, ACS_HLINE);
	}
	mvaddch(up, right, ACS_URCORNER);
	
	for(i = up + 1;i < bottom;i++){
		mvaddch(i, left, ACS_VLINE);
		mvaddch(i, right, ACS_VLINE);
	}
	
	mvaddch(bottom, left, ACS_LLCORNER);
	for(i = left + 1;i < right/*board width*/;i++){
		mvaddch(bottom, i, ACS_HLINE);
	}
	mvaddch(bottom, right, ACS_LRCORNER);
	//inner border
	left++; right--; up++; bottom--;
	int cnt = 0;
	mvaddch(up, left, ACS_ULCORNER);
	for(i = left + 1;i < right;i++){
		if((cnt % 4) == 3){
			mvaddch(up, i, ACS_TTEE);
		}else{
			mvaddch(up, i, ACS_HLINE);
		}
		cnt++;
	}
	mvaddch(up, right, ACS_URCORNER);
	
	cnt = 0;
	int cnt2 = 0;
	for(i = up + 1;i < bottom;i++){
		if((cnt % 2) == 0){
			mvaddch(i, left, ACS_VLINE);
			for(j = left+1; j <= right;j+=4){
				mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[0]);
				mvaddch(i, j+1, board->square[(j-left-1)/4][(i-up-1)/2]->display[1]);
				mvaddch(i, j+2, board->square[(j-left-1)/4][(i-up-1)/2]->display[2]);
				mvaddch(i, j+3, ACS_VLINE);
			}
		}else{
			mvaddch(i, left, ACS_LTEE);
			cnt2 = 0;
			for(j = left + 1; j < right;j++){
				if((cnt2 % 4) == 3){
					mvaddch(i, j, ACS_SSSS);
				}else{
					mvaddch(i, j, ACS_HLINE);
				}
				cnt2++;
			}
			mvaddch(i, right, ACS_RTEE);
		}
		cnt++;
	}
	
	mvaddch(bottom, left, ACS_LLCORNER);
	cnt = 0;
	for(i = left + 1;i < right;i++){
		if((cnt % 4) == 3){
			mvaddch(bottom, i, ACS_BTEE);
		}else{
			mvaddch(bottom, i, ACS_HLINE);
		}
		cnt++;
	}
	mvaddch(bottom, right, ACS_LRCORNER);
	
	return;
}

void draw_reverse(){
	struct Coordinate start, end;
	
	int left = board_offset.x, right = left + 30, up = board_offset.y, bottom = up + 20;
	left++; right--; up++; bottom--;
	
	start.x = (cursor.x - 1) * (square_size.x - 1) + left;
	end.x = start.x + (square_size.x - 1);
	start.y = (cursor.y - 1) * (square_size.y - 1) + up;
	end.y = start.y + (square_size.y - 1);
	
	//brute force
	attron(A_REVERSE);
	int i, j;
	int cnt = 0;
	if(start.y == up){
		if(start.x == left){
			mvaddch(up, left, ACS_ULCORNER);
		}
		for(i = left + 1;i < right;i++){
			if(i >= start.x && i <= end.x){
				if((cnt % 4) == 3){
					mvaddch(up, i, ACS_TTEE);
				}else{
					mvaddch(up, i, ACS_HLINE);
				}
			}
			cnt++;
		}
		if(end.x == right){
			mvaddch(up, right, ACS_URCORNER);
		}
	}
	
	cnt = 0;
	int cnt2 = 0;
	for(i = up + 1;i < bottom;i++){
		if(i >= start.y && i <= end.y){
			if((cnt % 2) == 0){
				for(j = left+1; j <= right;j+=4){
					if(j >= start.x && j <= end.x){
						mvaddch(i, j-1, ACS_VLINE);
						mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[0]);
						mvaddch(i, j+1, board->square[(j-left-1)/4][(i-up-1)/2]->display[1]);
						mvaddch(i, j+2, board->square[(j-left-1)/4][(i-up-1)/2]->display[2]);
						mvaddch(i, j+3, ACS_VLINE);
					}
				}
			}else{
				if(start.x == left){
					mvaddch(i, left, ACS_LTEE);
				}
				cnt2 = 0;
				for(j = left + 1; j < right;j++){
					if(j >= start.x && j <= end.x){
						if((cnt2 % 4) == 3){
							mvaddch(i, j, ACS_SSSS);
						}else{
							mvaddch(i, j, ACS_HLINE);
						}
					}
					cnt2++;
				}
				if(end.x == right){
					mvaddch(i, right, ACS_RTEE);
				}
			}
		}
		cnt++;
	}
	
	if(end.y == bottom){
		if(start.x == left){
			mvaddch(bottom, left, ACS_LLCORNER);
		}
		cnt = 0;
		for(i = left + 1;i < right;i++){
			if(i >= start.x && i <= end.x){
				if((cnt % 4) == 3){
					mvaddch(bottom, i, ACS_BTEE);
				}else{
					mvaddch(bottom, i, ACS_HLINE);
				}
			}
			cnt++;
		}
		if(end.x == right){
			mvaddch(bottom, right, ACS_LRCORNER);
		}
	}
	
	attroff(A_REVERSE);
	return;
}

void draw_piece(){
	int i, j;
	
	for(i = 0;i < dimension.x;i++){
		for(j = 0;j < dimension.y;j++){
			if(board->square[i][j]->piece != NULL){
				if(board->square[i][j]->piece->player == 'r'){
					if(&(board->square[i][j]->piece) == pickedPiece){
						attron(COLOR_PAIR(3));
					}else{
						attron(COLOR_PAIR(1));
					}
				}else if(board->square[i][j]->piece->player == 'b'){
					if(&(board->square[i][j]->piece) == pickedPiece){
						attron(COLOR_PAIR(4));
					}else{
						attron(COLOR_PAIR(2));
					}
				}
				mvaddch(j*(square_size.y-1)+board_offset.y+2, i*(square_size.x-1)+board_offset.x+3, board->square[i][j]->piece->type);
				attrset(COLOR_PAIR(5));
			}
		}
	}
	
	return;
}

void clrscr(){//appreciate http://www.troubleshooters.com/lpm/200405/200405.htm
	int y, x, maxy, maxx;
	getmaxyx(stdscr, maxy, maxx);
	for(y=0; y < maxy; y++)
		for(x=0; x < maxx; x++)
			mvaddch(y, x, ' ');
}

void draw_message(){

	if(playerTurn == 0){
		memcpy(message2, "Player Blue's turn.", 200);
	}else{
		memcpy(message2, "Player Red's turn.", 200);
	}
	if(!picked){
		memcpy(message3, "Please pick a piece.", 200);
	}else{
		memcpy(message3, "Picked a piece.", 200);
	}

	
	mvprintw(2, board_offset.x + dimension.x * square_size.x, message1);
	mvprintw(3, board_offset.x + dimension.x * square_size.x, message2);
	mvprintw(4, board_offset.x + dimension.x * square_size.x, message3);
	mvprintw(5, board_offset.x + dimension.x * square_size.x, message4);
	
	mvprintw(7, board_offset.x + dimension.x * square_size.x, "Player Blue: %d pieces", playerNumPiece[0]);
	mvprintw(8, board_offset.x + dimension.x * square_size.x, "Player Red: %d pieces", playerNumPiece[1]);
	
	mvprintw(10, board_offset.x + dimension.x * square_size.x, "Press Q/q to quit game.");
	mvprintw(11, board_offset.x + dimension.x * square_size.x, "Press N/n to start new game.");
	mvprintw(12, board_offset.x + dimension.x * square_size.x, "Press arrow key to move.");
	mvprintw(13, board_offset.x + dimension.x * square_size.x, "Press space to pick/release.");
}

void draw(){
	
	attrset(COLOR_PAIR(5));
	clrscr();
	draw_board();
	draw_reverse();
	draw_piece();
	draw_message();
	
	
	
	refresh();
	return;
}

int cursor_down(){
	
	if(cursor.y < dimension.y){
		cursor.y++;
		return 1;
	}else{
		return 0;
	}
	
	return 0;
}

int cursor_up(){

	if(cursor.y > 1){
		cursor.y--;
		return 1;
	}else{
		return 0;
	}
	
	return 0;
}

int cursor_left(){

	if(cursor.x > 1){
		cursor.x--;
		return 1;
	}else{
		return 0;
	}
	
	return 0;
}

int cursor_right(){

	if(cursor.x < dimension.x){
		cursor.x++;
		return 1;
	}else{
		return 0;
	}
	
	return 0;
}

int judgePick(int playerTurn, int x, int y){
	char player = 'b';
	
	if(playerTurn == 0){
		player = 'b';
	}
	
	if(playerTurn == 1){
		player = 'r';
	}
	
	if(board->square[x][y]->piece != NULL){
		if(board->square[x][y]->piece->player == player){
			pickedPiece = &(board->square[x][y]->piece);
			pickedPiece_posi.x = x;
			pickedPiece_posi.y = y;
			return 1;
		}else{
			return 0;
		}
	}else{
		return 0;
	}
	
	return 0;
}

int judgeWin(){
	if(playerNumPiece[0] == 0 || board->square[3][0]->piece != NULL){
		memcpy(message4, "Player Red wins.", 200);
		if(playerNumPiece[0] == 0){
			memcpy(message4, "Player Red wins. Player Blue has no piece.", 200);
		}else{
			memcpy(message4, "Player Red wins. Get to opponent's den", 200);
		}
		return 1;
	}else if(playerNumPiece[1] == 0 || board->square[3][8]->piece != NULL){
		memcpy(message4, "Player Blue wins.", 200);
		if(playerNumPiece[1] == 0){
			memcpy(message4, "Player Blue wins. Player Red has no piece.", 200);
		}else{
			memcpy(message4, "Player Blue wins. Get to opponent's den", 200);
		}
		return 1;
	}
	
	return 0;
}

int rank(char mover, char target){
	int mover_rank, target_rank;
	
	switch(mover){
		case 'E':
			mover_rank = 1;
			break;
		case 'L':
			mover_rank = 2;
			break;
		case 'T':
			mover_rank = 3;
			break;
		case 'J':
			mover_rank = 4;
			break;
		case 'W':
			mover_rank = 5;
			break;
		case 'D':
			mover_rank = 6;
			break;
		case 'C':
			mover_rank = 7;
			break;
		case 'R':
			mover_rank = 8;
			break;
	}
	
	switch(target){
		case 'E':
			target_rank = 1;
			break;
		case 'L':
			target_rank = 2;
			break;
		case 'T':
			target_rank = 3;
			break;
		case 'J':
			target_rank = 4;
			break;
		case 'W':
			target_rank = 5;
			break;
		case 'D':
			target_rank = 6;
			break;
		case 'C':
			target_rank = 7;
			break;
		case 'R':
			target_rank = 8;
			break;
	}
	
	if(target_rank == 8 && mover_rank == 1){
		return 0;
	}else if(target_rank == 1 && mover_rank == 8){
		return 1;
	}else{
		if(target_rank >= mover_rank){
			return 1;
		}else{
			return 0;
		}
	}
}

int judgeMove(piece_t* piece, struct Coordinate pick, struct Coordinate release){
	
	if(release.x == 1 || release.x == 2 || release.x == 4 || release.x == 5){
		if(release.y == 3 || release.y == 4 || release.y == 5){
			memcpy(message4, "Cannot move into river.", 200);
			return 0;
		}
	}
	
	if(piece->player == 'b'){
		if(release.x == 3 && release.y == 8){
			memcpy(message4, "Cannot move into own den.", 200);
			return 0;
		}
		if(board->square[release.x][release.y]->piece != NULL){
			if(board->square[release.x][release.y]->piece->player == piece->player){
				memcpy(message4, "Cannot capture own piece.", 200);
				return 0;
			}
			if((release.x == 2 && release.y == 0) || (release.x == 3 && release.y == 1) || (release.x == 4 && release.y == 0)){
				memcpy(message4, "Cannot capture piece in their own trap.", 200);
				return 0;
			}
			if(!((release.x == 2 && release.y == 8) || (release.x == 3 && release.y == 7) || (release.x == 4 && release.y == 8))){
				if(rank(piece->type, board->square[release.x][release.y]->piece->type) == 0){
					memcpy(message4, "Too weak to capture opponent piece.", 200);
					return 0;
				}
			}
		}
	}
	
	if(piece->player == 'r'){
		if(release.x == 3 && release.y == 0){
			memcpy(message4, "Cannot move into own den.", 200);
			return 0;
		}
		if(board->square[release.x][release.y]->piece != NULL){
			if(board->square[release.x][release.y]->piece->player == piece->player){
				memcpy(message4, "Cannot capture own piece.", 200);
				return 0;
			}
			if((release.x == 2 && release.y == 8) || (release.x == 3 && release.y == 7) || (release.x == 4 && release.y == 8)){
				memcpy(message4, "Cannot capture piece in their own trap.", 200);
				return 0;
			}
			if(!((release.x == 2 && release.y == 0) || (release.x == 3 && release.y == 1) || (release.x == 4 && release.y == 0))){
				if(rank(piece->type, board->square[release.x][release.y]->piece->type) == 0){
					memcpy(message4, "Too weak to capture opponent piece.", 200);
					return 0;
				}
			}
		}
	}
	
	if(pick.x == release.x){
		if(!((pick.y - release.y) == 1 || (pick.y - release.y) == -1)){
			memcpy(message4, "Cannot move more than one square.", 200);
			return 0;
		}
	}else if(pick.y == release.y){
		if(!((pick.x - release.x) == 1 || (pick.x - release.x) == -1)){
			memcpy(message4, "Cannot move more than one square.", 200);
			return 0;
		}
	}else{
		memcpy(message4, "Cannot move more than one square.", 200);
		return 0;
	}
	
	return 1;
}

int judgeMove2(piece_t* piece, struct Coordinate pick, struct Coordinate release){
	
	if(release.x == 1 || release.x == 2 || release.x == 4 || release.x == 5){
		if(release.y == 3 || release.y == 4 || release.y == 5){
			memcpy(message4, "Cannot move into river.", 200);
			return 0;
		}
	}
	
	if(piece->player == 'b'){
		if(release.x == 3 && release.y == 8){
			memcpy(message4, "Cannot move into own den.", 200);
			return 0;
		}
		if(board->square[release.x][release.y]->piece != NULL){
			if(board->square[release.x][release.y]->piece->player == piece->player){
				memcpy(message4, "Cannot capture own piece.", 200);
				return 0;
			}
			if((release.x == 2 && release.y == 0) || (release.x == 3 && release.y == 1) || (release.x == 4 && release.y == 0)){
				memcpy(message4, "Cannot capture piece in their own trap.", 200);
				return 0;
			}
			if(!((release.x == 2 && release.y == 8) || (release.x == 3 && release.y == 7) || (release.x == 4 && release.y == 8))){
				if(rank(piece->type, board->square[release.x][release.y]->piece->type) == 0){
					memcpy(message4, "Too weak to capture opponent piece.", 200);
					return 0;
				}
			}
		}
	}
	
	if(piece->player == 'r'){
		if(release.x == 3 && release.y == 0){
			memcpy(message4, "Cannot move into own den.", 200);
			return 0;
		}
		if(board->square[release.x][release.y]->piece != NULL){
			if(board->square[release.x][release.y]->piece->player == piece->player){
				memcpy(message4, "Cannot capture own piece.", 200);
				return 0;
			}
			if((release.x == 2 && release.y == 8) || (release.x == 3 && release.y == 7) || (release.x == 4 && release.y == 8)){
				memcpy(message4, "Cannot capture piece in their own trap.", 200);
				return 0;
			}
			if(!((release.x == 2 && release.y == 0) || (release.x == 3 && release.y == 1) || (release.x == 4 && release.y == 0))){
				if(rank(piece->type, board->square[release.x][release.y]->piece->type) == 0){
					memcpy(message4, "Too weak to capture opponent piece.", 200);
					return 0;
				}
			}
		}
	}
	
	if(pick.x == 0 && pick.y >= 3 && pick.y <= 5 && pick.y == release.y && release.x == 3){
		if(board->square[1][pick.y]->piece != NULL || board->square[2][pick.y]->piece != NULL){
			memcpy(message4, "Cannot cross river over rat.", 200);
			return 0;
		}
		return 1;
	}
	
	if(pick.x == 3 && pick.y >= 3 && pick.y <= 5 && pick.y == release.y){
		if(release.x == 0){
			if(board->square[1][pick.y]->piece != NULL || board->square[2][pick.y]->piece != NULL){
				memcpy(message4, "Cannot cross river over rat.", 200);
				return 0;
			}
		}
		if(release.x == 6){
			if(board->square[4][pick.y]->piece != NULL || board->square[5][pick.y]->piece != NULL){
				memcpy(message4, "Cannot cross river over rat.", 200);
				return 0;
			}
		}
		return 1;
	}
	
	if(pick.x == 6 && pick.y >= 3 && pick.y <= 5 && pick.y == release.y && release.x == 3){
		if(board->square[4][pick.y]->piece != NULL || board->square[5][pick.y]->piece != NULL){
			memcpy(message4, "Cannot cross river over rat.", 200);
			return 0;
		}
		return 1;
	}
	
	if(pick.y == 2 && release.y == 6 && pick.x == release.x && (pick.x == 1 || pick.x == 2 || pick.x == 4 || pick.x == 5)){
		if(board->square[pick.x][3]->piece != NULL || board->square[pick.x][4]->piece != NULL || board->square[pick.x][5]->piece != NULL){
			memcpy(message4, "Cannot cross river over rat.", 200);
			return 0;
		}
		return 1;
	}
	
	if(pick.y == 6 && release.y == 2 && pick.x == release.x && (pick.x == 1 || pick.x == 2 || pick.x == 4 || pick.x == 5)){
		if(board->square[pick.x][3]->piece != NULL || board->square[pick.x][4]->piece != NULL || board->square[pick.x][5]->piece != NULL){
			memcpy(message4, "Cannot cross river over rat.", 200);
			return 0;
		}
		return 1;
	}
	
	if(pick.x == release.x){
		if(!((pick.y - release.y) == 1 || (pick.y - release.y) == -1)){
			memcpy(message4, "Cannot move more than one square.", 200);
			return 0;
		}
	}else if(pick.y == release.y){
		if(!((pick.x - release.x) == 1 || (pick.x - release.x) == -1)){
			memcpy(message4, "Cannot move more than one square.", 200);
			return 0;
		}
	}else{
		memcpy(message4, "Cannot move more than one square.", 200);
		return 0;
	}
	
	return 1;
}

int judgeMove3(piece_t* piece, struct Coordinate pick, struct Coordinate release){
	
	if(piece->player == 'b'){
		if(release.x == 3 && release.y == 8){
			memcpy(message4, "Cannot move into own den.", 200);
			return 0;
		}
		if(board->square[release.x][release.y]->piece != NULL){
			if(board->square[release.x][release.y]->piece->player == piece->player){
				memcpy(message4, "Cannot capture own piece.", 200);
				return 0;
			}
			if((release.x == 2 && release.y == 0) || (release.x == 3 && release.y == 1) || (release.x == 4 && release.y == 0)){
				memcpy(message4, "Cannot capture piece in their own trap.", 200);
				return 0;
			}
			if(!((release.x == 2 && release.y == 8) || (release.x == 3 && release.y == 7) || (release.x == 4 && release.y == 8))){
				if(rank(piece->type, board->square[release.x][release.y]->piece->type) == 0){
					memcpy(message4, "Too weak to capture opponent piece.", 200);
					return 0;
				}
			}
		}
	}
	
	if(piece->player == 'r'){
		if(release.x == 3 && release.y == 0){
			memcpy(message4, "Cannot move into own den.", 200);
			return 0;
		}
		if(board->square[release.x][release.y]->piece != NULL){
			if(board->square[release.x][release.y]->piece->player == piece->player){
				memcpy(message4, "Cannot capture own piece.", 200);
				return 0;
			}
			if((release.x == 2 && release.y == 8) || (release.x == 3 && release.y == 7) || (release.x == 4 && release.y == 8)){
				memcpy(message4, "Cannot capture piece in their own trap.", 200);
				return 0;
			}
			if(!((release.x == 2 && release.y == 0) || (release.x == 3 && release.y == 1) || (release.x == 4 && release.y == 0))){
				if(rank(piece->type, board->square[release.x][release.y]->piece->type) == 0){
					memcpy(message4, "Too weak to capture opponent piece.", 200);
					return 0;
				}
			}
		}
	}
	
	if(pick.x == 1 || pick.x == 2 || pick.x == 4 || pick.x == 5){
		if(pick.y == 3 || pick.y == 4 || pick.y == 5){
			if(board->square[release.x][release.y]->piece != NULL){
				if(board->square[release.x][release.y]->piece->type != 'R'){
					memcpy(message4, "Cannot capture piece other than rat.", 200);
					return 0;
				}
			}
		}
	}
	
	if(pick.x == release.x){
		if(!((pick.y - release.y) == 1 || (pick.y - release.y) == -1)){
			memcpy(message4, "Cannot move more than one square.", 200);
			return 0;
		}
	}else if(pick.y == release.y){
		if(!((pick.x - release.x) == 1 || (pick.x - release.x) == -1)){
			memcpy(message4, "Cannot move more than one square.", 200);
			return 0;
		}
	}else{
		memcpy(message4, "Cannot move more than one square.", 200);
		return 0;
	}
	
	return 1;
}

int judgeRelease(int playerTurn, int x, int y){
	char player = 'b';
	char type = 'r';
	struct Coordinate release_posi;
	int valid;
	
	release_posi.x = x;
	release_posi.y = y;
	
	if(playerTurn == 0){
		player = 'b';
	}
	
	if(playerTurn == 1){
		player = 'r';
	}
	
	type = (*pickedPiece)->type;
	
	switch(type){
		case 'E':
		case 'J':
		case 'W':
		case 'D':
		case 'C':
			valid = judgeMove(*pickedPiece, pickedPiece_posi, release_posi);
			break;
		case 'L':
		case 'T':
			valid = judgeMove2(*pickedPiece, pickedPiece_posi, release_posi);
			break;
		case 'R':
			valid = judgeMove3(*pickedPiece, pickedPiece_posi, release_posi);
			break;
	}
	
	if(valid){
		if(board->square[release_posi.x][release_posi.y]->piece != NULL){
			playerNumPiece[(playerTurn + 1) % 2] --;
		}
		board->square[x][y]->piece = *pickedPiece;
		board->square[pickedPiece_posi.x][pickedPiece_posi.y]->piece = NULL;
		if(judgeWin()){
			end = 1;
		}
		return 1;
	}
	
	
	return 0;
}

int press_space(){
	int valid;
	
	memcpy(message4, " ", 200);
	
	if(end){
		return 0;
	}
	
	if(!picked){
		valid = judgePick(playerTurn, cursor.x - 1, cursor.y - 1);
	}else{
		if((cursor.x - 1) == pickedPiece_posi.x && (cursor.y - 1) == pickedPiece_posi.y){
			memcpy(message4, "Unselected Piece.", 200);
			pickedPiece = NULL;
			picked = (picked + 1) % 2;
			return 1;
		}else{
			valid = judgeRelease(playerTurn, cursor.x - 1, cursor.y - 1);
		}
	}
	
	if(valid){
		if(picked){
			playerTurn = (playerTurn + 1) % 2;
		}
		picked = (picked + 1) % 2;
		return 1;
	}else{
		return 0;
	}
	
	return 0;
}

int press_n(){

	do_init();
	
	return 1;
}

int press_q(){
	
	do_exit();
	return 1;
}

int judgeInput(char input){
	
	int valid;
		
	if(end){
		memcpy(message1, "Press N/n to start new game.", 200);
	}
	
	switch (input) {
        case 2:
            valid = cursor_down(); break;
        case 3:
            valid = cursor_up(); break;
        case 4:
            valid = cursor_left(); break;
        case 5:
            valid = cursor_right(); break;
		case 32:
			valid = press_space(); break;
		case 78:
		case 110:
			valid = press_n(); break;
		case 81:
		case 113:
			valid = press_q(); break;
        default:;
    }
	
	if(!valid){
		memcpy(message1, "Invalid move", 200);
	}else{
		memcpy(message1, " ", 200);
	}
	
	return 0;
}

void main_loop(){
	
	char input;
	
	draw();
	while(1){
		input = getch();
		judgeInput(input);
		draw();
	}
	
	return;
}

void do_init(){
	
	initscr();
	noecho();
	cbreak();
	keypad(stdscr, TRUE);
	curs_set(0);
	
	board_offset.x = 3;
	board_offset.y = 1;
	square_size.x = 5;
	square_size.y = 3;
	cursor.x = 1;
	cursor.y = 1;
	dimension.x = 7;
	dimension.y = 9;
	
	playerTurn = 0;
	picked = 0;
	end = 0;
	
	pickedPiece = NULL;
	pickedPiece_posi.x = 0;
	pickedPiece_posi.y = 0;
	playerNumPiece[0] = 8;
	playerNumPiece[1] = 8;
	
	board = create_board(dimension.x, dimension.y);
	
	memcpy(message1, " ", 200);
	memcpy(message2, "Player Blue's turn.", 200);
	memcpy(message3, "Please pick a piece.", 200);
	memcpy(message4, " ", 200);
	
	start_color();
	init_pair(1, COLOR_RED, COLOR_WHITE);
	init_pair(2, COLOR_BLUE, COLOR_WHITE);
	init_pair(3, COLOR_WHITE, COLOR_RED);
	init_pair(4, COLOR_WHITE, COLOR_BLUE);
	init_pair(5, COLOR_BLACK, COLOR_WHITE);
	
	return;
}

void do_exit(){
	endwin();
	echo();
	exit(0);
	return;
}

int main(){
	do_init();
	main_loop();
	
	do_exit();
	
	return 0;
}