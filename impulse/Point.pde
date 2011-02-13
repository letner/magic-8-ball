class Point {
  float x,y,_x,_y;
  
  Point(float sx,float sy){
    x = _x = sx;
    y = _y = sy;
  }

  Point() {
    this(-10.0,-10.0);
  }
  
  
  void update(){
    float tempX = x;
    float tempY = y;
    x += x - _x;
    y += y - _y;
    _x = tempX;
    _y = tempY;
    
    constrain();
    if(y>=height || y<=0) friction();
  }
  
  void render(){
    ellipse(x,y,10,10);
  }
  
  void constrain(){
    x = max(0,min(width,x));
    y = max(0,min(height,y));
  }
  
  void friction(){
    x -= (x - _x)/10;
  }
}

