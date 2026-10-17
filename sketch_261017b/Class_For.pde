class Circles {

  float size;
  color colorOf;
  
  Circles (float messages, color colorOf) {
  
    this.size = map(messages, 0, 200, 10, 100);
    this.colorOf = colorOf;
  
  }
  
  void make () {
    
    fill(this.colorOf);
    circle(width/2, height/2, this.size);
  
  }

}
