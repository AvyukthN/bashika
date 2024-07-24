#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct {
	float x;
	float y;
} point;

float euc_dist(point p1, point p2){
	return sqrt(pow((p2.x - p1.x), 2.0) + pow((p2.y - p1.y), 2.0));
}

int main(int argc, char** argv){
	point p1;
	point p2;

	p1.x = atof(argv[0]);
	p1.y = atof(argv[1]);
	p2.x = atof(argv[2]);
	p2.y = atof(argv[3]);

	printf("%f\n", euc_dist(p1, p2));

	return 0;
}
