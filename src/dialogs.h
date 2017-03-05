#include <psp2/kernel/processmgr.h>
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <psp2/common_dialog.h> 
#include <psp2/ctrl.h>
#include <stdlib.h>

void elCamel() {
	char c1[16] = "A 60 el pollo\n";
	char c2[32] = "A 60 tu puta madre\n";
	if (rand() % 3 == 0) {
		printf(c2);
	}
	else {
		printf(c1);
	}
}