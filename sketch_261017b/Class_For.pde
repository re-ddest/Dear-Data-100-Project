class Circles {

  float size;
  color colorOf;
  
  Circles (float size, color colorOf) {
  
    this.size = size;
    this.colorOf = colorOf;
  
  }
  
  void make () {
    
    fill(this.colorOf);
    circle(width/2, height/2, this.size);
  
  }

}
