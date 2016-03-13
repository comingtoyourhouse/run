#ifndef _NCASTER_
#define _NCASTER_

#define FOV_DEFAULT 2

struct player {
	int** map;
	double fov;
	double x, y, angle;
	bool lantern;
	bool hud;
	bool crosshairs;
};

char* filename;

void init_raycaster();

void quit(int status, char* message, ...);

#endif
