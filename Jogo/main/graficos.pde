PImage[] knight,knightAttack,knightJump;
int numberFrames = 10;
int i = 0,fps=0;
int pright=300,pup=400;
void rec () {
  background(#00ff00);
}

void personagem() {
  knight = new PImage [numberFrames];
  knightAttack = new PImage [numberFrames];
  knightJump = new PImage [numberFrames];

  while(i<numberFrames){
      i++;
      knight[i-1] = loadImage("freeknight/png/Walk ("+i+").png");
      knightAttack[i-1] = loadImage("freeknight/png/Attack ("+i+").png");
      knightJump[i-1] = loadImage("freeknight/png/Jump ("+i+").png");
      
  }
  i=0;
  
}

void move() {
  rec();
  image(knight[i], pright, pup, 200, 200);
  println(i);
  fps++;
  if (fps%6 == 0) {
    pright=pright+10;
    i++;
      if (i >= 10){
        action = 0;
      }
  }
}

void attack() {
  rec();
  image(knightAttack[i], pright, pup, 200, 200);
  println(i);
  
  fps++;
  if (fps%6 == 0) {
    i++;
    pright = pright+5;
    pup = pup+5;
      if (i >= 10){
       pup=pup-5;
        action = 0;
      }
  }
  
}

void jump() {
  rec();
  image(knightJump[i], pright, pup, 200, 200);
  println(i); 
  fps++;
  pright = pright+5;
  
  if (fps%6 == 0) {
      if(pup <=pup+30){
         pup=pup-5;
      }
      else{
        pup = pup+5;
      }
   
    i++;
      if (i >= 10){
        action = 0;
      }
  }
  
}
