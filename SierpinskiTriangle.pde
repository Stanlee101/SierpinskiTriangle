public void setup(){
  size(300,300);
}

public void draw(){
  background(255);
  fill(0);
  sierpinski(0, 300, 100+grow);
}

int grow = 0;
public void keyPressed(){
  if (key == 'g'){
    grow += 10;
  }
  if (key == 's'){
    grow -= 10;
  }
  if (grow >= 1100){
    grow = 500;
  }
}

public void sierpinski(int x, int y, int len){
  if (len <= 20) {
    triangle(x, y, x+len/2, y-len, x+len, y);
  }
  else{ 
    //left corner at (x,y) base and height = len/2
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
    //sierpenski();
    //sierpenski();
  }
}
