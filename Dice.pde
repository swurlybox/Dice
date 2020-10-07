Die bob = new Die(50,50);
int counter = 0;

void setup()
{
  size(500,500);
  background(150);
  noLoop();
}
void draw()
{
  background(150);
  int sum = 0;
  int incrementy = 0;
  
  int ia = 0;
  while(ia < 4){
    int incrementx = 0;
    int i = 0;
    while(i<4){
    Die bob = new Die(50 + incrementx,50 + incrementy);
    //your code here
    bob.roll();
    bob.show();
    sum = sum + bob.counter;
    incrementx = incrementx + 100;
    i++;
  }
  incrementy = incrementy + 100;
  ia++;
  }
    textSize(20);
    text("Total Sum is " + sum, 200, 480);
 /* Die bob = new Die(50,50);
  //your code here
  bob.roll();
  bob.show();*/
}
void mousePressed()
{
  fill(255);
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, rngNumber, counter;
  boolean one, two, three, four, five, six;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    rngNumber = 0;
    one = false;
    two = false;
    three = false;
    four = false;
    five = false;
    six = false;
    counter = 0;
    
    
  }
  void roll()
  {
    //your code here
    rngNumber = (int) (Math.random()*6 + 1);
    if (rngNumber == 1){
      one = true;
    }
    if (rngNumber == 2){
      two = true;
    }
    if (rngNumber == 3){
      three = true;
    }
    if (rngNumber == 4){
      four = true;
    }
    if (rngNumber == 5){
      five = true;
    }
    if (rngNumber == 6){
      six = true;
    }
  }
  
  
  void show()
  {
    //your code here
    fill(255);
    rect(myX,myY,50,50);
    fill(0);
    if (one){
      ellipse(myX + 25, myY + 25, 10, 10);
      counter = counter + 1;
    }
    if (two){
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      counter = counter + 2;
    }
    if (three){
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      counter = counter + 3;
    }
    if (four){
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      counter = counter + 4;
    }
    if (five){
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      counter = counter + 5;
    }
    if (six){
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
      counter = counter + 6;
    }
  }
}
