private int nX = 100;
public void setup() {
	size(400, 400);
	background(0);
}


public void draw() {
	for (int i = 40; i<360; i+=10) {
		rotate(-PI/i);
		stroke(i/2+25);
		Fractal(100, 250, 200);
	}
}


public void Fractal(int x, int y, int len) {
		noFill();
		ellipse(x, y, len, len);
		rect(x+len/2, y+len/2, len/2, len/2);
		rect(x+len/2, y-len, len/2, len/2);
		rect(x-len, y+len/2, len/2, len/2);

	if (len >= 20) {
		Fractal(x+len/2, y, len/2);
		Fractal(x, y+len/2, len/2);
	}
}