int sides = 3;
int[][] points =  new int[sides][2];
int[] cursor = new int[2];
void setup() {
  size(400, 400);
  background(255);
  frameRate(50000);

   for(int i = 0; i < sides + 1; i++){
     int x = (int) random(0, width);
     int y = (int) random(0, height);
     if(i < sides){
       int [] p = {x, y};
       points[i] = p;
     } else {
         cursor[0] = x;
         cursor[1] = y;
         point(x,y); 
     }    
  }
}

void draw() {
  println(frameRate);
  int whichPoint = (int) random(0, sides);
  int x1 = points[whichPoint][0];
  int x2 = cursor[0];
  int y1 = points[whichPoint][1];
  int y2 = cursor[1];
  cursor[0] = (x1+x2)/2;
  cursor[1] = (y1+y2)/2;
  point(cursor[0],cursor[1]);
}