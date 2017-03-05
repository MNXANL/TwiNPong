#include <psp2/kernel/processmgr.h>
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <psp2/ctrl.h>
#include <stdlib.h>
#include "control.h"
#include "setup.h"
#include "dialogs.h"
#include <psp2/touch.h>


SDL_Window    *gWindow   = NULL;
SDL_Renderer  *gRenderer = NULL;
SceCtrlData ctrl;


SDL_Rect PlayerLeft = { 
	SCREEN_WIDTH/12, 
	SCREEN_HEIGHT/4, 

	Player_Width,
	Player_Height
};

SDL_Rect PlayerRight = { 
	SCREEN_WIDTH - (SCREEN_WIDTH/12), 
	SCREEN_HEIGHT - (SCREEN_HEIGHT/12), 

	Player_Width,
	Player_Height
};

SDL_Rect Ball = { 
	SCREEN_WIDTH /2, 
	SCREEN_HEIGHT - SCREEN_HEIGHT/2, 

	Ball_Size,
	Ball_Size
};

SDL_Rect outlineRect = { 
	SCREEN_WIDTH/6, 
	SCREEN_HEIGHT/6, 

	SCREEN_WIDTH*(2/3), 
	SCREEN_HEIGHT*(2/3)
};


#define SPEED 10




int killApp() {
	gWindow = NULL;
	gRenderer = NULL;
	SDL_Quit();
	sceKernelExitProcess(0);
	return 0;
}

void pause() {
	while (!ctrl.buttons == SCE_CTRL_START) {
		SDL_Delay(1);
	}
}

int collision () {
	if (((Ball.x < PlayerLeft.x) && (Ball.x+30 > PlayerLeft.x+PlayerLeft.w)) && ( (PlayerLeft.y - Ball_Size <= Ball.y) || (Ball.y <= (PlayerLeft.y + PlayerLeft.h) ))) 
		return 1;
	else if (((Ball.x-30 > PlayerRight.x) && (Ball.x < PlayerRight.x+PlayerLeft.w)) && ((PlayerRight.y <= Ball.y) || (Ball.y <= (PlayerRight.y + PlayerRight.h) )))  
		return 1;
	else return 0;
}


int main(int argc, char *argv[]) {
	//Stuff to guarantee SDL isn't fucking you over.
	if( SDL_Init( SDL_INIT_VIDEO ) < 0 ) {
		return -1;
	}
 	if ((gWindow = SDL_CreateWindow("SLS", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN)) == NULL) {
		return -1;
    }
    //gScreenSurface = SDL_GetWindowSurface( gWindow );
  	
  	if ((gRenderer = SDL_CreateRenderer( gWindow, -1, 0)) == NULL) {	
  		return -1;
  	}


	sceCtrlSetSamplingMode(SCE_CTRL_MODE_ANALOG);
	
	sceCtrlPeekBufferPositive(0, &ctrl, 1);

	/*if (LoadMedia() == 1) {
			SDL_BlitSurface(gShip, NULL, gScreenSurface, NULL);
			SDL_UpdateWindowSurface( gWindow );
	}*/
	//else return killApp();

	int oriVal[2] = {-1, +1};

	int oriX = oriVal[rand()%2];
	int oriY = oriVal[rand()%2];

	int ballSpd = 2;

	while (1) { 
		sceCtrlPeekBufferPositive(0, &ctrl, 1);

		if (ctrl.buttons == SCE_CTRL_SELECT) return killApp(); //Exit gaem
		if (ctrl.buttons == SCE_CTRL_START)  pause(); //Exit gaem
		if (ctrl.buttons == SCE_CTRL_SQUARE) elCamel(); //Exit gaem
		

		//Background
		SDL_SetRenderDrawColor( gRenderer, 25, 25, 25, 255 );
		SDL_RenderClear( gRenderer );

		//Draw horizontal horizontal line
		SDL_SetRenderDrawColor( gRenderer, 255, 255, 255, 155 );
		SDL_RenderDrawLine( gRenderer, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT/2 );


		SDL_SetRenderDrawColor( gRenderer, 255, 255, 255, 255 );	
		SDL_RenderDrawRect( gRenderer, &Ball );

		if ((0 >= Ball.y) || (Ball.y >= SCREEN_HEIGHT - Ball_Size)) oriY *= -1;
		if (collision() == 1)  {
			oriX *= -1;
			if (ballSpd != 20) {
				PlayerLeft.h -= 4;
				PlayerRight.h -= 4;
				ballSpd++;
			}
		}

		Ball.x += oriX*ballSpd;
		Ball.y += oriY*(ballSpd/2);


		//Render red filled quad
		SDL_SetRenderDrawColor( gRenderer, 255, 0, 0, 255 );		
		SDL_RenderFillRect( gRenderer, &PlayerLeft );
		//if (! (120 < ctrl.lx && ctrl.lx < 130) ) PlayerLeft.x += (ctrl.lx - 125.0)/SPEED;		
		if (! (120 < ctrl.ly && ctrl.ly < 130) ) PlayerLeft.y += (ctrl.ly - 125.0)/SPEED;
		if (0 >= PlayerLeft.y) PlayerLeft.y = 0;
		if (PlayerLeft.y >= SCREEN_HEIGHT - PlayerLeft.h) PlayerLeft.y = SCREEN_HEIGHT-PlayerLeft.h;


		//Render blue filled quad
		SDL_SetRenderDrawColor( gRenderer, 0, 0, 255, 255 );		
		SDL_RenderFillRect( gRenderer, &PlayerRight );
		//if (! (120 < ctrl.rx && ctrl.rx < 130) ) PlayerLeft.x += (ctrl.lx - 125.0)/SPEED;		
		if (! (120 < ctrl.ry && ctrl.ry < 130) ) PlayerRight.y += (ctrl.ry - 125.0)/SPEED;
		if (0 >= PlayerRight.y) PlayerRight.y = 0;
		if (PlayerRight.y >= SCREEN_HEIGHT - PlayerRight.h) PlayerRight.y = SCREEN_HEIGHT-PlayerRight.h;

		//Update screen
		SDL_RenderPresent( gRenderer );
		SDL_Delay(100/6); //6 * 10 FPS

	}
		
	SDL_DestroyRenderer( gRenderer );
	SDL_DestroyWindow( gWindow );
	
	return killApp();
}
