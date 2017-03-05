#ifndef CONTROL_H
#define CONTROL_H

#include <psp2/kernel/processmgr.h>
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <psp2/ctrl.h>
#include <stdlib.h>


void ClearView(SDL_Renderer *gRenderer) {
	SDL_SetRenderDrawColor( gRenderer, 0, 0, 0, 255);
	SDL_RenderClear(gRenderer); //Feature: it gives you epileptic attacks
}
/*
SDL_Texture* LoadTexture( const char* str, SDL_Renderer *gRenderer){
    // Load image as SDL_Surface
    
    SDL_Texture* texture = IMG_LoadTexture( gRenderer, str );
    if ( texture == NULL )
    {
        printf("Failed to load texture\n");
        return NULL;
    }

    return texture;
}*/

#endif
