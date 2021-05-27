 public void settings() {
    size(500, 500);
  }

  public void setup(){
  
  }
  public void draw(){
  background(0);
  fractal(70, 10, 25);
  fractal(320, 10, 25);
  fractal(200, 110, 200);
  fractal(200, 210, 100);
  fractal(200, 310, 50);
  fractal(200, 410, 25);
  }
  public void fractal(int k, int y,int siz){
    fill((int)(Math.random()*255), (int)(Math.random()*5),(int)(Math.random()*5), (int)(Math.random()*255));
   beginShape();
        curveVertex(k+15, y+60);
        curveVertex(k+15, y+27);
        curveVertex(k+3, y+15);
        curveVertex(k+8, y+8);
        curveVertex(k+15, y+10);
        curveVertex(15+k, 30+y);
      endShape();

      beginShape();
        curveVertex(15+k, 30+y);
        curveVertex(15+k, 10+y);
        curveVertex(k+23, 8+y);
        curveVertex(27+k, y+15);
        curveVertex(15+k, 27+y);
        curveVertex(15+k, 60+y);
      endShape();
    if(siz > 10){
        fractal(k-siz/2, y, siz/2);
        fractal(k+siz/2, y, siz/2);
    }
  }
 
