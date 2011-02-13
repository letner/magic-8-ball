//Point pointA,pointB,pointC,pointD,pointE;
Point a,b,c;
//Stick stickAB,stickBC,stickCD,stickDA,stickDE;
Stick ab,bc,ca;
Spring spring;
  final int N=5;
  Point[] points = new Point[N];
  Stick[] sticks = new Stick[N];
  Shape bear;

// it's very strange....
long old,dt,dt2;


void setup() {
  size(800, 600);
  frameRate(51);
  
  
//  BEAR POINTS
  for (int i=0; i<N; i++) {
    points[i] = new Point();
  }
  
//  BEAR STICKS
  for (int i=0; i<N-1; i++) {
    sticks[i] = new Stick(points[i],points[i+1],50);
  }
  sticks[N-1] = new Stick(points[N-1],points[0],50);
//  sticks[N] = new Stick(points[0],points[3],50);
  
//  BEAR SHAPE
  bear = new Shape(sticks, points);
//  
//  pointA = new Point(0,0);
//  pointB = new Point(0,0);
//  pointC = new Point(0,0);
//  pointD = new Point(0,0);
//  pointE = new Point(0,0);
//
//  stickAB = new Stick(pointA,pointB,70);
//  stickBC = new Stick(pointB,pointC,70);
//  stickCD = new Stick(pointC,pointD,70);
//  stickDA = new Stick(pointD,pointA,40);
//  stickDE = new Stick(pointD,pointE,120);


  a = new Point(400,50);
  b = new Point(170,50);
  c = new Point(170,90);

  ab = new Stick(a,b,90);
  bc = new Stick(b,c,90);
  ca = new Stick(a,c,90);
//  spring = new Spring(pointC,b,6);

}

void draw() {
  background(155);
  long now = new Date().getTime();
  float dt =1- (now - old);
  float dt2 = dt*dt;
  old = now;
//  pointA.update();
//  pointB.update();
//  pointC.update();
//  pointD.update();
//  pointE.update();

//  pointA.y +=.9;
//  pointB.y +=.9;
//  pointC.y +=.9;
//  pointD.y +=.9;
//  pointE.y +=.1;
//
//  for (int i=0; i<N; i++) {
//    points[i].update();
//  }
//
//  for (int i=0; i<N; i++) {
//    points[i].y++;
//  }
  
//  stickAB.update();
//  stickAB.render();
//  stickBC.update();
//  stickBC.render();
//  stickCD.update();
//  stickCD.render();
//  stickDA.update();
//  stickDA.render();
//  stickDE.update();
//  stickDE.render();
//
//  for (int i=0; i<N; i++) {
//    sticks[i].update();
//    sticks[i].render();
//  }


  a.update();
  b.update();
  c.update();

  a.y +=.9;
  b.y +=.9;
  c.y +=.9;

  ab.update();
  ab.render();
  bc.update();
  bc.render();
  ca.update();
  ca.render();

//  pointA.render();
//  pointB.render();
//  pointC.render();
//  pointD.render();

  bear.update();

  if(mousePressed){
    a.x += (mouseX-a.x)/7;
    a.y += (mouseY-a.y)/7;
    line(a.x,a.y,mouseX,mouseY);
    ellipse(a.x,a.y,20,20);
  }
  if(keyPressed){
    switch(key){
      case 'w': 
        points[0].y -= 2;
        points[1].y -= 2;
        points[2].y -= 2;

        break;
      case 's':
        points[0].y += 2; 
        points[1].y += 2; 
        points[2].y += 2; 
        break;
      case 'a':
        points[0].x -= 2; 
        points[1].x -= 2; 
        points[2].x -= 2; 
        break;
      case 'd': 
        points[0].x += 2;
        points[1].x += 2;
        points[2].x += 2; break;
// new shape part
//      case 'o': 
//        points[0].x += 2; break;
//      case 'i': 
//        points[0].x -= 2; break;
//      case '9': 
//        points[0].y -= 2; 
//        points[1].y -= 2; 
//        points[2].y -= 2; break;
//    
    }
  }
//  if(pointA.y >= height){
//    pointA.y = height; 
//    pointA.x -= (pointA.x - pointA._x)/10;
//  }
//


}
