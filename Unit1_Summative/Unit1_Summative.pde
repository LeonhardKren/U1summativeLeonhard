// Redball moving variables
boolean up, left, down, right = false;
float RbY = 300;
float RbX = 125;
//Blueball moving variables
boolean up2, left2, down2, right2 = false;
float BbY = 300;
float BbX = 675;
//Pictures
PImage Field;
PImage WASD;
PImage Arrowkeys;

Ball ball;
int Scene = 0;
int ScoreBlue = 0;
int ScoreRed = 0;
void setup()
{
  size(800, 600);
  noStroke();
  WASD = loadImage("WASD.png");
  WASD.resize(150,150);
  Arrowkeys = loadImage("Arrowkeys.png");
  Arrowkeys.resize(150,150);
  Field = loadImage("Footballfield.jpg");
  Field.resize(800,600);
  ball = new Ball();
}
void draw()
{
  if(Scene == 0)
  {
   TitleScreen(); 
  }
  else if(Scene == 1)
  {
    SceneOne();
  }
  else if(Scene == 2)
  {
    BlueWins();
  }
  else if(Scene == 3)
  {
    RedWins();
  }
}
void TitleScreen()
{
  // explantaions of how to play
  background(255,255,255);
  fill(0,0,0);
  textSize(40);
  text("Press B to start",250,500);
  text("How to play:",300,100);
  image(WASD,100,250);
  fill(255,0,0);
  ellipse(175,200,75,75);
  image(Arrowkeys,550,250);
  fill(0,0,255);
  ellipse(625,200,75,75);
  if (keyPressed)
  {
  if(key=='b' ||key =='B')
  {
    Scene+=1;
  }
  }
}

void SceneOne()
{
  //game
  background(Field);
  fill(255, 0, 0);
  ellipse(RbX, RbY, 30, 30);
  fill(0,0,255);
  ellipse(BbX,BbY,30,30);
  MoveChar();
  fill(255,255,255);
  ball.Render();
  ball.Move();
  textSize(30);
  text(ScoreRed, 300,500);
  text(ScoreBlue,500,500);
  
  if(ScoreBlue == 5)
  {
    Scene+=1;
  }
  if(ScoreRed == 5)
  {
    Scene+=2;
  }  
}
//winning screens
void BlueWins()
{
  background(0,0,0);
  fill(255,255,255);
  textSize(50);
  text("Blue wins!",300,300);
}

void RedWins()
{
    background(0,0,0);
  fill(255,255,255);
  textSize(50);
  text("Red wins!",300,300);
}

void MoveChar()
{
  //Redball
  if (up)
  {
    RbY-=2;
  }
  if (down)
  {
    RbY+=2;
  }
  if (right)
  {
    RbX+=2;
  }
  if (left)
  {
    RbX-=2;
  }
  
  
  //Blueball
  if(up2)
  {
   BbY-=2; 
  }
  if(down2)
  {
    BbY+=2;
  }
  if(right2)
  {
   BbX+=2; 
  } 
  if(left2)
  {
    BbX-=2;
  }
}

void keyPressed()
{

  //Redball
  if (key == 'a'||key=='A')
  {
    left = true;
  }
  if (key == 'w'||key=='W')
  {
    up = true;
  }
  if (key == 's'||key=='S')
  {
    down = true;
  }
  if (key =='d'||key=='D')
  {
    right = true;
  }

  //Blueball
  if (keyCode==LEFT)
  {
    left2=true;
  }
  if (keyCode==RIGHT)
  {
    right2=true;
  }
  if (keyCode==UP)
  {
    up2=true;
  }
  if (keyCode==DOWN)
  {
    down2=true;
  }
}


void keyReleased()
{
  //Redball
  if (key == 'a'||key == 'A')
  {
    left = false;
  }
  if (key == 'w'|| key == 'W')
  {
    up = false;
  }
  if (key == 's'||key == 'S')
  {
    down = false;
  }
  if (key =='d'||key == 'D')
  {
    right = false;
  }
  //Blueball
  if (keyCode==LEFT)
  {
    left2 = false;
  }
  if (keyCode==RIGHT)
  {
    right2=false;
  }
  if (keyCode==UP)
  {
    up2=false;
  }
  if (keyCode==DOWN)
  {
    down2=false;
  }
}
