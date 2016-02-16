private int nX = 100;
public void setup() {
	size(400, 400);
	background(0);
}

public void draw() {

	Fractal(200, 200, 100);
}

public void Fractal(int x, int y, int len) {
		noFill();
		stroke(255);
		ellipse(x, y, len, len);
		rect(x+len/2, y+len/2, len/2, len/2);
		rect(x+len/2, y-len, len/2, len/2);
		rect(x-len, y+len/2, len/2, len/2);

	if (len >= 20) {
		Fractal(x+len/2, y, len/2);
	}
}