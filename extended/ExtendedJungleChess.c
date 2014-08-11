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
struct Coordinate monster_posi;

board_t* board;
piece_t** pickedPiece;
struct Coordinate pickedPiece_posi;
int picked; //pickingOrReleasing
int playerTurn;
int playerNumPiece[4];
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
			if((i == 6 && j == 14) || (i == 7 && j == 13) || (i == 8 && j == 14)){
				tmp->square[i][j] = create_square(i, j, 'c', "###", NULL);//blue trap
			}else if((i == 0 && j == 6) || (i == 1 && j == 7) || (i == 0 && j == 8)){
				tmp->square[i][j] = create_square(i, j, 'l', "###", NULL);//black trap
			}else if((i == 6 && j == 0) || (i == 7 && j == 1) || (i == 8 && j == 0)){
				tmp->square[i][j] = create_square(i, j, 's', "###", NULL);//red trap
			}else if((i == 14 && j == 6) || (i == 13 && j == 7) || (i == 14 && j == 8)){
				tmp->square[i][j] = create_square(i, j, 'h', "###", NULL);//green trap
			}else if(i == 7 && j == 14){
				tmp->square[i][j] = create_square(i, j, 'b', " O ", NULL);//blue den
			}else if(i == 0 && j == 7){
				tmp->square[i][j] = create_square(i, j, 'k', " O ", NULL);//black den
			}else if(i == 7 && j == 0){
				tmp->square[i][j] = create_square(i, j, 'r', " O ", NULL);//red den
			}else if(i == 14 && j == 7){
				tmp->square[i][j] = create_square(i, j, 'g', " O ", NULL);//green den
			}else if((i == 7 && (j == 5 | j == 6 | j == 8 | j == 9)) | ((i == 6 | i == 8) && (j == 6 | j == 7 | j == 8)) | ((i == 5 | i == 9) && j == 7)){
				tmp->square[i][j] = create_square(i, j, 'w', "~~~", NULL);//river(water)
			}else{
				switch(j){
					case 1:
						switch(i){
							case 5:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('r', 'L'));
								break;
							case 9:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('r', 'T'));
								break;
							case 6:
							case 8:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 2:
						switch(i){
							case 4:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('r', 'R'));
								break;
							case 6:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('r', 'D'));
								break;
							case 8:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('r', 'S'));
								break;
							case 10:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('r', 'E'));
								break;
							case 5:
							case 7:
							case 9:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 3:
						switch(i){
							case 5:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('r', 'J'));
								break;
							case 9:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('r', 'W'));
								break;
							case 3:
							case 4:
							case 6:
							case 7:
							case 10:
							case 11:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 4:
						switch(i){
							case 2:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('k', 'E'));
								break;
							case 7:
								tmp->square[i][j] = create_square(i, j, '3', "   ", create_piece('r', 'C'));
								break;
							case 12:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('g', 'R'));
								break;
							case 3:
							case 4:
							case 5:
							case 6:
							case 8:
							case 9:
							case 10:
							case 11:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 5:
						switch(i){
							case 1:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('k', 'T'));
								break;
							case 3:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('k', 'W'));
								break;
							case 6:
								tmp->square[i][j] = create_square(i, j, '3', "   ", NULL);
								break;
							case 8:
								tmp->square[i][j] = create_square(i, j, '3', "   ", NULL);
								break;
							case 11:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('g', 'J'));
								break;
							case 13:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('g', 'L'));
								break;
							case 2:
							case 4:
							case 5:
							case 9:
							case 10:
							case 12:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 6:
						switch(i){
							case 2:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('k', 'S'));
								break;
							case 5:
								tmp->square[i][j] = create_square(i, j, '3', "   ", NULL);
								break;
							case 9:
								tmp->square[i][j] = create_square(i, j, '3', "   ", NULL);
								break;
							case 12:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('g', 'D'));
								break;
							case 1:
							case 3:
							case 4:
							case 10:
							case 11:
							case 13:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 7:
						switch(i){
							case 4:
								tmp->square[i][j] = create_square(i, j, '3', "   ", create_piece('k', 'C'));
								break;
							case 7:
								tmp->square[i][j] = create_square(i, j, '3', "   ", create_piece('m', 'M'));
								break;
							case 10:
								tmp->square[i][j] = create_square(i, j, '3', "   ", create_piece('g', 'C'));
								break;
							case 2:
							case 3:
							case 11:
							case 12:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 8:
						switch(i){
							case 2:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('k', 'D'));
								break;
							case 5:
								tmp->square[i][j] = create_square(i, j, '3', "   ", NULL);
								break;
							case 9:
								tmp->square[i][j] = create_square(i, j, '3', "   ", NULL);
								break;
							case 12:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('g', 'S'));
								break;
							case 1:
							case 3:
							case 4:
							case 10:
							case 11:
							case 13:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 9:
						switch(i){
							case 1:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('k', 'L'));
								break;
							case 3:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('k', 'J'));
								break;
							case 6:
								tmp->square[i][j] = create_square(i, j, '3', "   ", NULL);
								break;
							case 8:
								tmp->square[i][j] = create_square(i, j, '3', "   ", NULL);
								break;
							case 11:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('g', 'W'));
								break;
							case 13:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('g', 'T'));
								break;
							case 2:
							case 4:
							case 5:
							case 9:
							case 10:
							case 12:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 10:
						switch(i){
							case 2:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('k', 'R'));
								break;
							case 7:
								tmp->square[i][j] = create_square(i, j, '3', "   ", create_piece('b', 'C'));
								break;
							case 12:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('g', 'E'));
								break;
							case 3:
							case 4:
							case 5:
							case 6:
							case 8:
							case 9:
							case 10:
							case 11:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 11:
						switch(i){
							case 5:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('b', 'W'));
								break;
							case 9:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('b', 'J'));
								break;
							case 3:
							case 4:
							case 6:
							case 7:
							case 10:
							case 11:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 12:
						switch(i){
							case 4:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('b', 'E'));
								break;
							case 6:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('b', 'S'));
								break;
							case 8:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('b', 'D'));
								break;
							case 10:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('b', 'R'));
								break;
							case 5:
							case 7:
							case 9:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					case 13:
						switch(i){
							case 5:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('b', 'T'));
								break;
							case 9:
								tmp->square[i][j] = create_square(i, j, '1', "   ", create_piece('b', 'L'));
								break;
							case 6:
							case 8:
								tmp->square[i][j] = create_square(i, j, '1', "   ", NULL);
								break;
							default:
								tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
								break;	
						}
						break;
					default:
						tmp->square[i][j] = create_square(i, j, '0', "   ", NULL);
						break;
				}
			}
      	}
	}
	return tmp;
}

void draw_board(){
	int left = board_offset.x, right = left + 62, up = board_offset.y, bottom = up + 32;
	int i, j, k;

	//outer border
	for(i = 0;i < dimension.x;i++){//horizontal number
		if(i < 9){
			mvaddch(0, i*(square_size.x-1)+board_offset.x+3, i+49);
		}else{
			mvaddch(0, i*(square_size.x-1)+board_offset.x+3, 49);
			mvaddch(0, i*(square_size.x-1)+board_offset.x+3 + 1, i-10+49);
		}
	}
	for(i = 0;i < dimension.y;i++){//vertical number
		if(i < 9){
			mvaddch(i*(square_size.y-1)+board_offset.y+2, 1, i+49);
		}else{
			mvaddch(i*(square_size.y-1)+board_offset.y+2, 1, 49);
			mvaddch(i*(square_size.y-1)+board_offset.y+2, 2, i-10+49);
		}
	}
	
	//top row
	mvaddch(up, left, ACS_ULCORNER);
	for(i = left + 1;i < right;i++){
		mvaddch(up, i, ACS_HLINE);
	}
	mvaddch(up, right, ACS_URCORNER);
	//between top and bottom, left and right vertical lines
	for(i = up + 1;i < bottom;i++){
		mvaddch(i, left, ACS_VLINE);
		mvaddch(i, right, ACS_VLINE);
	}
	//bottom row
	mvaddch(bottom, left, ACS_LLCORNER);
	for(i = left + 1;i < right;i++){
		mvaddch(bottom, i, ACS_HLINE);
	}
	mvaddch(bottom, right, ACS_LRCORNER);
	
	//game board
	left++; right--; up++; bottom--;
	int cnt = 0;
	for(i = up; i <= bottom;i++){
		cnt = 0;
		for(j = left;j <= right;j++){
			if(i == up){
				if(j > (left+6*4-1) && j <= (left+9*4)){
					if(cnt == 0){
						mvaddch(i, j, ACS_ULCORNER);
					}else if(cnt == 12){
						mvaddch(i, j, ACS_URCORNER);
					}else{
						if((cnt % 4) == 0){
							mvaddch(i, j, ACS_TTEE);
						}else{
							mvaddch(i, j, ACS_HLINE);
						}
					}
					cnt++;
				}
			}else if(i == (bottom)){
				if(j > (left+6*4-1) && j <= (left+9*4)){
					if(cnt == 0){
						mvaddch(i, j, ACS_LLCORNER);
					}else if(cnt == 12){
						mvaddch(i, j, ACS_LRCORNER);
					}else{
						if((cnt % 4) == 0){
							mvaddch(i, j, ACS_BTEE);
						}else{
							mvaddch(i, j, ACS_HLINE);
						}
					}
					cnt++;
				}
			}else{
				if(i < (up+14)){
					if(((i - up) % 2) == 0){
						if(j >= (left+4*(7-(i/2))) && j <= (right-4*(7-(i/2)))){
							if(cnt == 0){
								mvaddch(i, j, ACS_ULCORNER);
							}else if(j == ((right-4*(7-(i/2))))){
								mvaddch(i, j, ACS_URCORNER);
							}else{
								if((cnt % 4) == 0){
									mvaddch(i, j, ACS_SSSS);
								}else{
									mvaddch(i, j, ACS_HLINE);
								}
							}
							cnt++;
						}
					}else{
						if(j >= (left+4*(7-(i/2))) && j <= (right-4*(7-(i/2)))){
							if((cnt % 4) == 0){
								mvaddch(i, j, ACS_VLINE);
							}else{
								if((cnt % 4) == 1){
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[0]);
								}
								if((cnt % 4) == 2){
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[1]);
								}
								if((cnt % 4) == 3){
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[2]);
								}
							}
						}
						cnt++;
					}
				}else if(i == (up + 14) || i == (up + 16)){
					if(j == left){
						mvaddch(i, j, ACS_LTEE);
					}else if(j == right){
						mvaddch(i, j, ACS_RTEE);
					}else{
						if((cnt % 4) == 0){
							mvaddch(i, j, ACS_SSSS);
						}else{
							mvaddch(i, j, ACS_HLINE);
						}
					}
					cnt++;
				}else if(i == (up + 15)){
					if((cnt % 4) == 0){
						mvaddch(i, j, ACS_VLINE);
					}else{
						if((cnt % 4) == 1){
							mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[0]);
						}
						if((cnt % 4) == 2){
							mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[1]);
						}
						if((cnt % 4) == 3){
							mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[2]);
						}
					}
					cnt++;
				}else{
					if(((i - up) % 2) == 0){
						if(j >= (left+4*(7-(16-(i-up)/2))) && j <= (right-4*(7-(16-(i-up)/2)))){
							if(cnt == 0){
								mvaddch(i, j, ACS_LLCORNER);
							}else if(j == (right-4*(7-(16-(i-up)/2)))){
								mvaddch(i, j, ACS_LRCORNER);
							}else{
								if((cnt % 4) == 0){
									mvaddch(i, j, ACS_SSSS);
								}else{
									mvaddch(i, j, ACS_HLINE);
								}
							}
							cnt++;
						}
					}else{
						if(j >= (left+4*(7-(15-(i-up)/2))) && j <= (right-4*(7-(15-(i-up)/2)))){
							if((cnt % 4) == 0){
								mvaddch(i, j, ACS_VLINE);
							}else{
								if((cnt % 4) == 1){
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[0]);
								}
								if((cnt % 4) == 2){
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[1]);
								}
								if((cnt % 4) == 3){
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[2]);
								}
							}
						}
						cnt++;
					}
				}
			}
		}
	}
	
	return;
}

void draw_reverse(){
	struct Coordinate start, end;
	
	int left = board_offset.x, right = left + 62, up = board_offset.y, bottom = up + 32;
	left++; right--; up++; bottom--;
	
	start.x = (cursor.x - 1) * (square_size.x - 1) + left;
	end.x = start.x + (square_size.x - 1);
	start.y = (cursor.y - 1) * (square_size.y - 1) + up;
	end.y = start.y + (square_size.y - 1);
	
	
	//brute force
	attron(A_REVERSE);
	int i, j;
	int cnt = 0;
	
	for(i = up; i <= bottom;i++){
		cnt = 0;
		if(i >= start.y && i <= end.y)
		for(j = left;j <= right;j++){
			if(i == up){
				if(j > (left+6*4-1) && j <= (left+9*4)){
					if(cnt == 0){
			if(j >= start.x && j <= end.x)
						mvaddch(i, j, ACS_ULCORNER);
					}else if(cnt == 12){
			if(j >= start.x && j <= end.x)
						mvaddch(i, j, ACS_URCORNER);
					}else{
						if((cnt % 4) == 0){
			if(j >= start.x && j <= end.x)
							mvaddch(i, j, ACS_TTEE);
						}else{
			if(j >= start.x && j <= end.x)
							mvaddch(i, j, ACS_HLINE);
						}
					}
					cnt++;
				}
			}else if(i == (bottom)){
				if(j > (left+6*4-1) && j <= (left+9*4)){
					if(cnt == 0){
			if(j >= start.x && j <= end.x)
						mvaddch(i, j, ACS_LLCORNER);
					}else if(cnt == 12){
			if(j >= start.x && j <= end.x)
						mvaddch(i, j, ACS_LRCORNER);
					}else{
						if((cnt % 4) == 0){
			if(j >= start.x && j <= end.x)
							mvaddch(i, j, ACS_BTEE);
						}else{
			if(j >= start.x && j <= end.x)
							mvaddch(i, j, ACS_HLINE);
						}
					}
					cnt++;
				}
			}else{
				if(i < (up+14)){
					if(((i - up) % 2) == 0){
						if(j >= (left+4*(7-(i/2))) && j <= (right-4*(7-(i/2)))){
							if(cnt == 0){
			if(j >= start.x && j <= end.x)
								mvaddch(i, j, ACS_ULCORNER);
							}else if(j == ((right-4*(7-(i/2))))){
			if(j >= start.x && j <= end.x)
								mvaddch(i, j, ACS_URCORNER);
							}else{
								if((cnt % 4) == 0){
			if(j >= start.x && j <= end.x)
									mvaddch(i, j, ACS_SSSS);
								}else{
			if(j >= start.x && j <= end.x)
									mvaddch(i, j, ACS_HLINE);
								}
							}
							cnt++;
						}
					}else{
						if(j >= (left+4*(7-(i/2))) && j <= (right-4*(7-(i/2)))){
							if((cnt % 4) == 0){
			if(j >= start.x && j <= end.x)
								mvaddch(i, j, ACS_VLINE);
							}else{
								if((cnt % 4) == 1){
			if(j >= start.x && j <= end.x)
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[0]);
								}
								if((cnt % 4) == 2){
			if(j >= start.x && j <= end.x)
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[1]);
								}
								if((cnt % 4) == 3){
			if(j >= start.x && j <= end.x)
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[2]);
								}
							}
						}
						cnt++;
					}
				}else if(i == (up + 14) || i == (up + 16)){
					if(j == left){
			if(j >= start.x && j <= end.x)
						mvaddch(i, j, ACS_LTEE);
					}else if(j == right){
			if(j >= start.x && j <= end.x)
						mvaddch(i, j, ACS_RTEE);
					}else{
						if((cnt % 4) == 0){
			if(j >= start.x && j <= end.x)
							mvaddch(i, j, ACS_SSSS);
						}else{
			if(j >= start.x && j <= end.x)
							mvaddch(i, j, ACS_HLINE);
						}
					}
					cnt++;
				}else if(i == (up + 15)){
					if((cnt % 4) == 0){
			if(j >= start.x && j <= end.x)
						mvaddch(i, j, ACS_VLINE);
					}else{
						if((cnt % 4) == 1){
			if(j >= start.x && j <= end.x)
							mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[0]);
						}
						if((cnt % 4) == 2){
			if(j >= start.x && j <= end.x)
							mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[1]);
						}
						if((cnt % 4) == 3){
			if(j >= start.x && j <= end.x)
							mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[2]);
						}
					}
					cnt++;
				}else{
					if(((i - up) % 2) == 0){
						if(j >= (left+4*(7-(16-(i-up)/2))) && j <= (right-4*(7-(16-(i-up)/2)))){
							if(cnt == 0){
			if(j >= start.x && j <= end.x)
								mvaddch(i, j, ACS_LLCORNER);
							}else if(j == (right-4*(7-(16-(i-up)/2)))){
			if(j >= start.x && j <= end.x)
								mvaddch(i, j, ACS_LRCORNER);
							}else{
								if((cnt % 4) == 0){
			if(j >= start.x && j <= end.x)
									mvaddch(i, j, ACS_SSSS);
								}else{
			if(j >= start.x && j <= end.x)
									mvaddch(i, j, ACS_HLINE);
								}
							}
							cnt++;
						}
					}else{
						if(j >= (left+4*(7-(15-(i-up)/2))) && j <= (right-4*(7-(15-(i-up)/2)))){
							if((cnt % 4) == 0){
			if(j >= start.x && j <= end.x)
								mvaddch(i, j, ACS_VLINE);
							}else{
								if((cnt % 4) == 1){
			if(j >= start.x && j <= end.x)
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[0]);
								}
								if((cnt % 4) == 2){
			if(j >= start.x && j <= end.x)
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[1]);
								}
								if((cnt % 4) == 3){
			if(j >= start.x && j <= end.x)
									mvaddch(i, j, board->square[(j-left-1)/4][(i-up-1)/2]->display[2]);
								}
							}
						}
						cnt++;
					}
				}
			}
		}
	}
	
	/*
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
	*/
	
	attroff(A_REVERSE);
	return;
}

void draw_piece(){
	int i, j;
	
	for(i = 0;i < dimension.x;i++){
		for(j = 0;j < dimension.y;j++){
			if(board->square[i][j]->piece != NULL){
				if(board->square[i][j]->piece->player == 'b'){
					if(&(board->square[i][j]->piece) == pickedPiece){
						attron(COLOR_PAIR(3));
					}else{
						attron(COLOR_PAIR(2));
					}
				}else if(board->square[i][j]->piece->player == 'k'){
					if(&(board->square[i][j]->piece) == pickedPiece){
						attron(COLOR_PAIR(5));
					}else{
						attron(COLOR_PAIR(4));
					}
				}else if(board->square[i][j]->piece->player == 'r'){
					if(&(board->square[i][j]->piece) == pickedPiece){
						attron(COLOR_PAIR(7));
					}else{
						attron(COLOR_PAIR(6));
					}
				}else if(board->square[i][j]->piece->player == 'g'){
					if(&(board->square[i][j]->piece) == pickedPiece){
						attron(COLOR_PAIR(9));
					}else{
						attron(COLOR_PAIR(8));
					}
				}else if(board->square[i][j]->piece->player == 'm'){
					attron(COLOR_PAIR(10));
				}
				mvaddch(j*(square_size.y-1)+board_offset.y+2, i*(square_size.x-1)+board_offset.x+3, board->square[i][j]->piece->type);
				attrset(COLOR_PAIR(1));
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
	}else if(playerTurn == 1){
		memcpy(message2, "Player Black's turn.", 200);
	}else if(playerTurn == 2){
		memcpy(message2, "Player Red's turn.", 200);
	}else if(playerTurn == 3){
		memcpy(message2, "Player Green's turn.", 200);
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
	mvprintw(8, board_offset.x + dimension.x * square_size.x, "Player Black: %d pieces", playerNumPiece[1]);
	mvprintw(9, board_offset.x + dimension.x * square_size.x, "Player Red: %d pieces", playerNumPiece[2]);
	mvprintw(10, board_offset.x + dimension.x * square_size.x, "Player Green: %d pieces", playerNumPiece[3]);
	
	mvprintw(12, board_offset.x + dimension.x * square_size.x, "Press Q/q to quit game.");
	mvprintw(13, board_offset.x + dimension.x * square_size.x, "Press N/n to start new game.");
	mvprintw(14, board_offset.x + dimension.x * square_size.x, "Press arrow key to move.");
	mvprintw(15, board_offset.x + dimension.x * square_size.x, "Press space to pick/release.");
}

void draw(){
	
	attrset(COLOR_PAIR(1));
	clrscr();
	draw_board();
	draw_reverse();
	draw_piece();
	draw_message();
	
	
	
	refresh();
	return;
}

int cursor_down(){
	
	if(cursor.x < 8){
		if(cursor.y < (15 - (7-cursor.x))){
			cursor.y++;
			return 1;
		}else{
			return 0;
		}
	}
	if(cursor.x == 8){
		if(cursor.y < 15){
			cursor.y++;
			return 1;
		}else{
			return 0;
		}
	}
	if(cursor.x > 8){
		if(cursor.y < (15 - cursor.x + 9)){
			cursor.y++;
			return 1;
		}else{
			return 0;
		}
	}
	
	return 0;
}

int cursor_up(){

	if(cursor.x < 8){
		if(cursor.y > (8 - cursor.x)){
			cursor.y--;
			return 1;
		}else{
			return 0;
		}
	}
	if(cursor.x == 8){
		if(cursor.y > 1){
			cursor.y--;
			return 1;
		}else{
			return 0;
		}
	}
	if(cursor.x > 8){
		if(cursor.y > (cursor.x - 8)){
			cursor.y--;
			return 1;
		}else{
			return 0;
		}
	}
	
	return 0;
}

int cursor_left(){

	if(cursor.y < 8){
		if(cursor.x > (8 - cursor.y)){
			cursor.x--;
			return 1;
		}else{
			return 0;
		}
	}
	if(cursor.y == 8){
		if(cursor.x > 1){
			cursor.x--;
			return 1;
		}else{
			return 0;
		}
	}
	if(cursor.y > 8){
		if(cursor.x > (cursor.y - 8)){
			cursor.x--;
			return 1;
		}else{
			return 0;
		}
	}
	
	return 0;
}

int cursor_right(){

	if(cursor.y < 8){
		if(cursor.x < (15 - (7-cursor.y))){
			cursor.x++;
			return 1;
		}else{
			return 0;
		}
	}
	if(cursor.y == 8){
		if(cursor.x < 15){
			cursor.x++;
			return 1;
		}else{
			return 0;
		}
	}
	if(cursor.y > 8){
		if(cursor.x < (15 - cursor.y + 9)){
			cursor.x++;
			return 1;
		}else{
			return 0;
		}
	}
	
	return 0;
}

int judgePick(int playerTurn, int x, int y){
	char player = 'b';
	
	if(playerTurn == 0){
		player = 'b';
	}
	
	if(playerTurn == 1){
		player = 'k';
	}
	
	if(playerTurn == 2){
		player = 'r';
	}
	
	if(playerTurn == 3){
		player = 'g';
	}
	
	if(playerTurn == 4){
		player = 'm';
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

void clean(char player){
	
	int playerNum = 0;
	
	switch(player){
		case 'b':
			playerNum = 0;
			break;
		case 'k':
			playerNum = 1;
			break;
		case 'r':
			playerNum = 2;
			break;
		case 'g':
			playerNum = 3;
			break;
	}
	
	int i, j;
	for(i = 0;i < dimension.x;i++){
		for(j = 0;j < dimension.y;j++){
			if(board->square[i][j] != NULL){
				if(board->square[i][j]->piece != NULL){
					if(board->square[i][j]->piece->player == player){
						board->square[i][j]->piece = NULL;
						playerNumPiece[playerNum]--;
					}
				}
			}
		}
	}
	playerNumPiece[playerNum] = 0;
}

void cleanPlayer(){
		
	if(board->square[7][14]->piece != NULL){
		if(board->square[7][14]->piece->type != 'M'){
			clean('b');
		}
	}
	if(board->square[0][7]->piece != NULL){
		if(board->square[0][7]->piece->type != 'M'){
			clean('k');
		}
	}
	if(board->square[7][0]->piece != NULL){
		if(board->square[7][0]->piece->type != 'M'){
			clean('r');
		}
	}
	if(board->square[14][7]->piece != NULL){
		if(board->square[14][7]->piece->type != 'M'){
			clean('g');
		}
	}
	
	if(playerNumPiece[0] == 0){
		board->square[6][14]->terrain = 'g';
		board->square[6][14]->display[0] = ' ';
		board->square[6][14]->display[1] = ' ';
		board->square[6][14]->display[2] = ' ';
		board->square[7][13]->terrain = 'g';
		board->square[7][13]->display[0] = ' ';
		board->square[7][13]->display[1] = ' ';
		board->square[7][13]->display[2] = ' ';
		board->square[8][14]->terrain = 'g';
		board->square[8][14]->display[0] = ' ';
		board->square[8][14]->display[1] = ' ';
		board->square[8][14]->display[2] = ' ';
		board->square[7][14]->terrain = 'g';
		board->square[7][14]->display[0] = ' ';
		board->square[7][14]->display[1] = ' ';
		board->square[7][14]->display[2] = ' ';
	}
	if(playerNumPiece[1] == 0){
		board->square[0][6]->terrain = 'g';
		board->square[0][6]->display[0] = ' ';
		board->square[0][6]->display[1] = ' ';
		board->square[0][6]->display[2] = ' ';
		board->square[1][7]->terrain = 'g';
		board->square[1][7]->display[0] = ' ';
		board->square[1][7]->display[1] = ' ';
		board->square[1][7]->display[2] = ' ';
		board->square[0][8]->terrain = 'g';
		board->square[0][8]->display[0] = ' ';
		board->square[0][8]->display[1] = ' ';
		board->square[0][8]->display[2] = ' ';
		board->square[0][7]->terrain = 'g';
		board->square[0][7]->display[0] = ' ';
		board->square[0][7]->display[1] = ' ';
		board->square[0][7]->display[2] = ' ';
	}
	if(playerNumPiece[2] == 0){
		board->square[6][0]->terrain = 'g';
		board->square[6][0]->display[0] = ' ';
		board->square[6][0]->display[1] = ' ';
		board->square[6][0]->display[2] = ' ';
		board->square[7][1]->terrain = 'g';
		board->square[7][1]->display[0] = ' ';
		board->square[7][1]->display[1] = ' ';
		board->square[7][1]->display[2] = ' ';
		board->square[8][0]->terrain = 'g';
		board->square[8][0]->display[0] = ' ';
		board->square[8][0]->display[1] = ' ';
		board->square[8][0]->display[2] = ' ';
		board->square[7][0]->terrain = 'g';
		board->square[7][0]->display[0] = ' ';
		board->square[7][0]->display[1] = ' ';
		board->square[7][0]->display[2] = ' ';
	}
	if(playerNumPiece[3] == 0){
		board->square[14][6]->terrain = 'g';
		board->square[14][6]->display[0] = ' ';
		board->square[14][6]->display[1] = ' ';
		board->square[14][6]->display[2] = ' ';
		board->square[13][7]->terrain = 'g';
		board->square[13][7]->display[0] = ' ';
		board->square[13][7]->display[1] = ' ';
		board->square[13][7]->display[2] = ' ';
		board->square[14][8]->terrain = 'g';
		board->square[14][8]->display[0] = ' ';
		board->square[14][8]->display[1] = ' ';
		board->square[14][8]->display[2] = ' ';
		board->square[14][7]->terrain = 'g';
		board->square[14][7]->display[0] = ' ';
		board->square[14][7]->display[1] = ' ';
		board->square[14][7]->display[2] = ' ';
	}

	return;
}

int judgeWin(){
	
	cleanPlayer();
	
	if(playerNumPiece[1] == 0 && playerNumPiece[2] == 0 && playerNumPiece[3] == 0){
		memcpy(message4, "Player Blue wins.", 200);
		return 1;
	}
	if(playerNumPiece[0] == 0 && playerNumPiece[2] == 0 && playerNumPiece[3] == 0){
		memcpy(message4, "Player Black wins.", 200);
		return 1;
	}
	if(playerNumPiece[0] == 0 && playerNumPiece[1] == 0 && playerNumPiece[3] == 0){
		memcpy(message4, "Player Red wins.", 200);
		return 1;
	}
	if(playerNumPiece[0] == 0 && playerNumPiece[1] == 0 && playerNumPiece[2] == 0){
		memcpy(message4, "Player Green wins.", 200);
		return 1;
	}
	if(playerNumPiece[0] == 0 && playerNumPiece[1] == 0 && playerNumPiece[2] == 0 && playerNumPiece[3] == 0){
		memcpy(message4, "Game draws.", 200);
		return 1;
	}
	return 0;
}

int rank(char mover, char target){
	int mover_rank, target_rank;
	
	switch(mover){
		case 'E':
			mover_rank = 8;
			break;
		case 'L':
			mover_rank = 7;
			break;
		case 'T':
			mover_rank = 6;
			break;
		case 'J':
			mover_rank = 5;
			break;
		case 'W':
			mover_rank = 4;
			break;
		case 'D':
			mover_rank = 3;
			break;
		case 'S':
			mover_rank = 2;
			break;
		case 'R':
			mover_rank = 1;
			break;
		case 'C':
			mover_rank = 9;
			break;
		case 'M':
			mover_rank = 10;
			break;
	}
	
	switch(target){
		case 'E':
			target_rank = 8;
			break;
		case 'L':
			target_rank = 7;
			break;
		case 'T':
			target_rank = 6;
			break;
		case 'J':
			target_rank = 5;
			break;
		case 'W':
			target_rank = 4;
			break;
		case 'D':
			target_rank = 3;
			break;
		case 'S':
			target_rank = 2;
			break;
		case 'R':
			target_rank = 1;
			break;
		case 'C':
			target_rank = 9;
			break;
		case 'M':
			target_rank = 10;
			break;
	}
	
	if(target_rank == 1 && mover_rank == 8){
		return 0;
	}else if(target_rank == 8 && mover_rank == 1){
		return 1;
	}else{
		if(mover_rank >= target_rank){
			return 1;
		}else{
			return 0;
		}
	}
}

int judgeMove(piece_t* piece, struct Coordinate pick, struct Coordinate release){
	
	//Rule: only rat, crocodile, monster can move into river.
	if(!(piece->type == 'R' || piece->type == 'C' || piece->type == 'M')){
		if(board->square[release.x][release.y]->terrain == 'w'){
			memcpy(message4, "Cannot move into river.", 200);
			return 0;
		}
	}
	
	//Rule: any pieces cannot move into their own den.
	if(board->square[release.x][release.y]->terrain == piece->player){
		memcpy(message4, "Cannot move into own den.", 200);
		return 0;
	}
	
	if(board->square[release.x][release.y]->piece != NULL){
		//Rule: any pieces cannot capture their own piece.
		if(board->square[release.x][release.y]->piece->player == piece->player){
			memcpy(message4, "Cannot capture own piece.", 200);
			return 0;
		}
		//Rule: any pieces, except monster, cannot capture pieces in their own trap.
		if(piece->type != 'M'){
			if(board->square[release.x][release.y]->terrain == 'c' || 
			board->square[release.x][release.y]->terrain == 'l' || 
			board->square[release.x][release.y]->terrain == 's' || 
			board->square[release.x][release.y]->terrain == 'h'){
				if(board->square[release.x][release.y]->piece->type == 'M'){
					memcpy(message4, "Cannot capture monster.", 200);
					return 0;
				}
				if(board->square[release.x][release.y]->terrain != (piece->player + 1)){
					memcpy(message4, "Cannot capture piece in their own trap.", 200);
					return 0;
				}
			}else{
				//Rule: any pieces cannot capture pieces with higher rank, except rats capture
				if(rank(piece->type, board->square[release.x][release.y]->piece->type) == 0){
					memcpy(message4, "Too weak to capture opponent piece.", 200);
					return 0;
				}
			}
		}
	}
	
	//Rule: tiger, lion can jump over river when no pieces is in their jumping path.
	if(piece->type == 'T' || piece->type == 'L'){
		if(board->square[pick.x][pick.y]->terrain == '3' && board->square[release.x][release.y]->terrain == '3'){
			//vertical juump
			if(pick.x == release.x){
				if((pick.y - release.y) <= 4 && (pick.y - release.y) >= -4){
					if(pick.y > release.y){
						if(board->square[pick.x][pick.y - 1]->terrain == 'w' && board->square[pick.x][pick.y - 1]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
						if(board->square[pick.x][pick.y - 2]->terrain == 'w' && board->square[pick.x][pick.y - 2]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
						if(board->square[pick.x][pick.y - 3]->terrain == 'w' && board->square[pick.x][pick.y - 3]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
					}else{
						if(board->square[pick.x][pick.y + 1]->terrain == 'w' && board->square[pick.x][pick.y + 1]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
						if(board->square[pick.x][pick.y + 2]->terrain == 'w' && board->square[pick.x][pick.y + 2]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
						if(board->square[pick.x][pick.y + 3]->terrain == 'w' && board->square[pick.x][pick.y + 3]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
					}
					return 1;
				}
			}
			//horizontal jump
			if(pick.y == release.y){
				if((pick.x - release.x) <= 4 && (pick.x - release.x) >= -4){
					if(pick.x > release.x){
						if(board->square[pick.x - 1][pick.y]->terrain == 'w' && board->square[pick.x - 1][pick.y]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
						if(board->square[pick.x - 2][pick.y]->terrain == 'w' && board->square[pick.x - 2][pick.y]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
						if(board->square[pick.x - 3][pick.y]->terrain == 'w' && board->square[pick.x - 3][pick.y]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
					}else{
						if(board->square[pick.x + 1][pick.y]->terrain == 'w' && board->square[pick.x + 1][pick.y]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
						if(board->square[pick.x + 2][pick.y]->terrain == 'w' && board->square[pick.x + 2][pick.y]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
						if(board->square[pick.x + 3][pick.y]->terrain == 'w' && board->square[pick.x + 3][pick.y]->piece != NULL){
							memcpy(message4, "Cannot cross river over other pieces.", 200);
							return 0;
						}
					}
					return 1;
				}
			}
		}
	}
	
	//Rule: supercat, monster can mover diagonally.
	if(piece->type == 'S' || piece->type == 'M'){
		if(((pick.y - release.y) == 1 || (pick.y - release.y) == -1) && 
		((pick.x - release.x) == 1 || (pick.x - release.x) == -1)){
			return 1;
		}
	}
	
	//Rule: pieces can only move one step vertically or horizontally.
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
	
	//Rule: corcodile cannot mover away from river or riverside.
	if(piece->type == 'C'){
		if(!(board->square[release.x][release.y]->terrain == 'w' || board->square[release.x][release.y]->terrain == '3')){
			memcpy(message4, "Cannot move away from river or riverside.", 200);
			return 0;
		}
	}
	
	return 1;
}

int judgeRelease(int playerTurn, int x, int y){
	char player = 'b';
	struct Coordinate release_posi;
	int valid;
	
	release_posi.x = x;
	release_posi.y = y;
	
	if(playerTurn == 0){
		player = 'b';
	}
	
	if(playerTurn == 1){
		player = 'k';
	}
	
	if(playerTurn == 2){
		player = 'r';
	}
	
	if(playerTurn == 3){
		player = 'g';
	}
	
	if(playerTurn == 4){
		player = 'm';
	}
	
	if(playerTurn != 4){
		valid = judgeMove(*pickedPiece, pickedPiece_posi, release_posi);
	}else{
		valid = 1;
	}
	
	if(valid){
		if(board->square[release_posi.x][release_posi.y]->piece != NULL){
			if(board->square[release_posi.x][release_posi.y]->piece->player == 'b'){
				playerNumPiece[0] --;
			}
			if(board->square[release_posi.x][release_posi.y]->piece->player == 'k'){
				playerNumPiece[1] --;
			}
			if(board->square[release_posi.x][release_posi.y]->piece->player == 'r'){
				playerNumPiece[2] --;
			}
			if(board->square[release_posi.x][release_posi.y]->piece->player == 'g'){
				playerNumPiece[3] --;
			}
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

void moveMonster(){
	
	judgePick(4, monster_posi.x, monster_posi.y);
	
	struct Coordinate surrounding[8];
	int sqCnt = 0;
	
	//check left
	if((monster_posi.x - 1) >= 0){
		if(board->square[monster_posi.x - 1][monster_posi.y]->terrain != '0'){
			surrounding[sqCnt].x = monster_posi.x - 1;
			surrounding[sqCnt].y = monster_posi.y;
			sqCnt++;
		}
	}
	//check top
	if((monster_posi.y - 1) >= 0){
		if(board->square[monster_posi.x][monster_posi.y - 1]->terrain != '0'){
			surrounding[sqCnt].x = monster_posi.x;
			surrounding[sqCnt].y = monster_posi.y - 1;
			sqCnt++;
		}
	}
	//check right
	if((monster_posi.x + 1) <= 14){
		if(board->square[monster_posi.x + 1][monster_posi.y]->terrain != '0'){
			surrounding[sqCnt].x = monster_posi.x + 1;
			surrounding[sqCnt].y = monster_posi.y;
			sqCnt++;
		}
	}
	//check bottom
	if((monster_posi.y + 1) <= 14){
		if(board->square[monster_posi.x][monster_posi.y + 1]->terrain != '0'){
			surrounding[sqCnt].x = monster_posi.x;
			surrounding[sqCnt].y = monster_posi.y + 1;
			sqCnt++;
		}
	}
	//check left top
	if((monster_posi.x - 1) >= 0 && (monster_posi.y - 1) >= 0){
		if(board->square[monster_posi.x - 1][monster_posi.y - 1]->terrain != '0'){
			surrounding[sqCnt].x = monster_posi.x - 1;
			surrounding[sqCnt].y = monster_posi.y - 1;
			sqCnt++;
		}
	}
	//check right top
	if((monster_posi.x + 1) <= 14 && (monster_posi.y - 1) >= 0){
		if(board->square[monster_posi.x + 1][monster_posi.y - 1]->terrain != '0'){
			surrounding[sqCnt].x = monster_posi.x + 1;
			surrounding[sqCnt].y = monster_posi.y - 1;
			sqCnt++;
		}
	}
	//check right bottom
	if((monster_posi.x + 1) <= 14 && (monster_posi.y + 1) <= 14){
		if(board->square[monster_posi.x + 1][monster_posi.y + 1]->terrain != '0'){
			surrounding[sqCnt].x = monster_posi.x + 1;
			surrounding[sqCnt].y = monster_posi.y + 1;
			sqCnt++;
		}
	}
	//check left bottom
	if((monster_posi.x - 1) >= 0 && (monster_posi.y + 1) <= 14){
		if(board->square[monster_posi.x - 1][monster_posi.y + 1]->terrain != '0'){
			surrounding[sqCnt].x = monster_posi.x - 1;
			surrounding[sqCnt].y = monster_posi.y + 1;
			sqCnt++;
		}
	}
	
	struct Coordinate piece[8];
	int chCnt = 0;
	
	int i;
	for(i = 0;i < sqCnt;i++){
		if(board->square[surrounding[i].x][surrounding[i].y]->piece != NULL){
			piece[chCnt].x = surrounding[i].x;
			piece[chCnt].y = surrounding[i].y;
			chCnt++;
		}
	}
	
	int rndValue = 0;
	
	if(chCnt != 0){
		rndValue = rand() % chCnt;
		judgeRelease(4, piece[rndValue].x, piece[rndValue].y);
		monster_posi.x = piece[rndValue].x;
		monster_posi.y = piece[rndValue].y;
	}else{
		rndValue = rand() % sqCnt;
		judgeRelease(4, surrounding[rndValue].x, surrounding[rndValue].y);
		monster_posi.x = surrounding[rndValue].x;
		monster_posi.y = surrounding[rndValue].y;
	}
	
	return;
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
			playerTurn++;
			while((playerTurn < 4) && (playerNumPiece[playerTurn] == 0)){
				playerTurn++;
			}
			if(playerTurn == 4){
				if (!end) {
					moveMonster();
				}
				playerTurn = 0;
				while((playerTurn < 4) && (playerNumPiece[playerTurn] == 0)){
					playerTurn++;
				}
			}
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
	//when game ends, the program receive all normal inputs except space
		memcpy(message1, "Press N/n to start new game.", 200);
		switch (input){
        case 2:
            valid = cursor_down(); break;
        case 3:
            valid = cursor_up(); break;
        case 4:
            valid = cursor_left(); break;
        case 5:
            valid = cursor_right(); break;
		case 81:
		case 113:
			valid = press_q();
			break;
		case 78:
		case 110:
			valid = press_n();
			break;
			default:;
		}
		return 0;
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
	cursor.x = 8;
	cursor.y = 11;
	dimension.x = 15;
	dimension.y = 15;
	
	playerTurn = 0;
	picked = 0;
	end = 0;
	
	pickedPiece = NULL;
	pickedPiece_posi.x = 0;
	pickedPiece_posi.y = 0;
	playerNumPiece[0] = 9;
	playerNumPiece[1] = 9;
	playerNumPiece[2] = 9;
	playerNumPiece[3] = 9;
	
	monster_posi.x = 7;
	monster_posi.y = 7;
	
	srand(time(NULL));
	
	board = create_board(dimension.x, dimension.y);
	
	memcpy(message1, " ", 200);
	memcpy(message2, "Player Blue's turn.", 200);
	memcpy(message3, "Please pick a piece.", 200);
	memcpy(message4, " ", 200);
	
	start_color();
	init_pair(1, COLOR_BLACK, COLOR_WHITE);
	init_pair(2, COLOR_BLUE, COLOR_WHITE);
	init_pair(3, COLOR_WHITE, COLOR_BLUE);
	init_pair(4, COLOR_BLACK, COLOR_WHITE);
	init_pair(5, COLOR_WHITE, COLOR_BLACK);
	init_pair(6, COLOR_RED, COLOR_WHITE);
	init_pair(7, COLOR_WHITE, COLOR_RED);
	init_pair(8, COLOR_GREEN, COLOR_WHITE);
	init_pair(9, COLOR_WHITE, COLOR_GREEN);
	init_pair(10, COLOR_BLACK, COLOR_YELLOW);
	
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
