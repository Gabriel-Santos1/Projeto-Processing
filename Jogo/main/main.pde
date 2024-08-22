boolean anima = false;
int action = 0;
void setup() {
  rec();
  size(1000, 1000);
  personagem();
}

void draw() {

  if (action == 1) {
    move();
  }

  if (action == 2) {
    attack();
  }
  
  if (action == 3){
    jump();
  }
}
void keyPressed() {

  if (action == 0) {
    
    if (keyCode == RIGHT) {
      action = 1;
      i=0;
      fps=0;
    } 
    
    else if (key == 'q' ||key == 'Q') {

      action = 2;
      i=0;
      fps=0;
    }
    
    else if (keyCode == UP) {
      action = 3;
      i=0;
      fps=0;
    }
  }
}
