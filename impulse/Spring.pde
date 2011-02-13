class Stick {
  Point a,b;
  float length;

  Stick(Point pointA,Point pointB,float len){
    a = pointA;
    b = pointB;
    if(len == -1){
      float dx = a.x - b.x;
      float dy = a.y - b.y;
      length = sqrt(dx*dx + dy*dy);
    } else {
      length = len;
    }
  }

  void update(){
    float dx = b.x - a.x;
    float dy = b.y - a.y;
    float distance = sqrt(dx*dx+dy*dy);
    float diff = length - distance;
    float offsetX = 0, offsetY = 0;
    if(distance != 0){
      offsetX = (diff*dx/distance)/3;
      offsetY = (diff*dy/distance)/3;
    }
    a.x -= offsetX;
    a.y -= offsetY;
    b.x += offsetX;
    b.y += offsetY;
  }
  void render(){
    line(a.x, a.y, b.x, b.y);
  }
}

class Shape {
  private Stick[] sticks;
  private Point[] points;

  Shape(Stick[] sticks, Point[] points) {
    this.sticks = sticks;
    this.points = points;
  }

  void update() {  
    for (int i=0; i<points.length; i++) {
      points[i].update();
      points[i].y++;
      points[i].render();
    }
    for (int i=0; i<sticks.length; i++) {
      sticks[i].update();
      sticks[i].render();
    }
    
  }
}


class Spring extends Stick {
  Spring(Point a,Point b,float l){
    super(a,b,l);
  }
  void update(){
    float dx = b.x - a.x;
    float dy = b.y - a.y;
    float distance = sqrt(dx*dx+dy*dy);
    float diff = length - distance;
    float offsetX = 0, offsetY = 0;
    if(distance != 0){
      offsetX = (diff*dx/distance)/2;
      offsetY = (diff*dy/distance)/2;
    }
    a.x -= offsetX/15.5;
    a.y -= offsetY/15.5;
    b.x += offsetX/15.5;
    b.y += offsetY/15.5;
  }
}

