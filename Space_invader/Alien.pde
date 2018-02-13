class Alien 
{
  // attributs
  float x, y;
  int t;
  color c;
  int alienMvt;
  int i = 0;
  int vAlien;
  boolean j = false;

  // constructeur
  Alien() {
    this.x = 100;
    this.y = 200;
    this.t = param.t;
    this.c = 255;
    alienMvt = 0;
  }


  // méthodes

  void mvt(int v) {
    if ((niv.xAlien <= 5*t || niv.xAlien >= width-5*t)) {
      j = !j;
    } 
    if (j == false) { 
      vAlien = v;
    } else {
      vAlien = -v;
    }
    niv.xAlien += vAlien;
    println(niv.xAlien);
  }


  // dessin alien 1
  void alien1(float x, float y) {
    if (hitbox.toucherAlien(x, y) == true) {
      return;
    }
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 7*t, 4*t);
    rect(x+3*t, y+2.5*t, t, t);
    rect(x-3*t, y+2.5*t, t, t);
    rect(x+3*t, y-3.5*t, t, t);
    rect(x-3*t, y-3.5*t, t, t);
    rect(x+2*t, y-2.5*t, t, t);
    rect(x-2*t, y-2.5*t, t, t);
    if (alienMvt < 50) {
      rect(x+4*t, y, t, 2*t);
      rect(x-4*t, y, t, 2*t);
      rect(x+5*t, y+1.5*t, t, 3*t);
      rect(x-5*t, y+1.5*t, t, 3*t);
      rect(x+1.5*t, y+3.5*t, 2*t, t);
      rect(x-1.5*t, y+3.5*t, 2*t, t);
      alienMvt++;
    } else if (alienMvt >= 50 && alienMvt < 100) {
      rect(x+4*t, y+0.5*t, t, 3*t);
      rect(x-4*t, y+0.5*t, t, 3*t);
      rect(x+5*t, y-1*t, t, 4*t);
      rect(x-5*t, y-1*t, t, 4*t);
      rect(x+4*t, y+3.5*t, t, t);
      rect(x-4*t, y+3.5*t, t, t);
      alienMvt++;
    } 
    if (alienMvt == 100) {
      alienMvt = 0;
    }
    fill(0);
    rect(x+2*t, y-0.5*t, t, t);
    rect(x-2*t, y-0.5*t, t, t);
  }


  // dessin alien 2
  void alien2(float x, float y) {
    if (hitbox.toucherAlien(x, y) == true) {
      return;
    }
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 8*t, 2*t);
    rect(x, y-2.5*t, 4*t, t);
    rect(x, y-3.5*t, 2*t, t); 
    rect(x, y-1.5*t, 6*t, t);
    if (alienMvt < 50) {
      rect(x+1.5*t, y+3.5*t, t, t); 
      rect(x+3.5*t, y+3.5*t, t, t);
      rect(x-1.5*t, y+3.5*t, t, t);
      rect(x-3.5*t, y+3.5*t, t, t);
      rect(x, y+2.5*t, 2*t, t);
      rect(x+1.5*t, y+1.5*t, 1*t, t); 
      rect(x-1.5*t, y+1.5*t, 1*t, t); 
      rect(x+2.5*t, y+2.5*t, 1*t, t); 
      rect(x-2.5*t, y+2.5*t, 1*t, t); 
      alienMvt++;
    } else if (alienMvt >= 50 && alienMvt < 100) {
      rect(x, y+1.5*t, 2*t, t);
      rect(x+2.5*t, y+1.5*t, 1*t, t); 
      rect(x-2.5*t, y+1.5*t, 1*t, t); 
      rect(x+3.5*t, y+2.5*t, 1*t, t); 
      rect(x-3.5*t, y+2.5*t, 1*t, t); 
      rect(x+2.5*t, y+3.5*t, t, t);
      rect(x-2.5*t, y+3.5*t, t, t);
      alienMvt++;
    }
    if (alienMvt == 100) {
      alienMvt = 0;
    }
    fill(0);
    rect(x-1.5*t, y-0.5*t, t, t);
    rect(x+1.5*t, y-0.5*t, t, t);
  }


  // dessin alien 3
  void alien3(float x, float y) {
    if (hitbox.toucherAlien(x, y) == true) {
      return;
    }
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 12*t, 3*t);
    rect(x, y-2*t, 10*t, t);
    rect(x, y-3*t, 4*t, t);
    rect(x, y+3*t, 2*t, t);
    if (alienMvt < 50) {
      rect(x-2*t, y+2*t, 2*t, t);
      rect(x+2*t, y+2*t, 2*t, t);
      rect(x-3*t, y+3*t, 2*t, t);
      rect(x+3*t, y+3*t, 2*t, t);
      rect(x-5*t, y+4*t, 2*t, t);
      rect(x+5*t, y+4*t, 2*t, t);
      alienMvt++;
    } else if (alienMvt >= 50 && alienMvt < 100) {
      rect(x-2.5*t, y+2*t, 3*t, t);
      rect(x+2.5*t, y+2*t, 3*t, t);
      rect(x-4*t, y+3*t, 2*t, t);
      rect(x+4*t, y+3*t, 2*t, t);
      rect(x-3*t, y+4*t, 2*t, t);
      rect(x+3*t, y+4*t, 2*t, t);
      alienMvt++;
    }
    if (alienMvt == 100) {
      alienMvt = 0;
    }
    fill(0);
    rect(x-2*t, y, 2*t, t);
    rect(x+2*t, y, 2*t, t);
  }


  // dessin alien explosion
  void explosionAlien(float x, float y) {
    rectMode(CENTER);
    rect(x+t, y+2*t, t, t);
    rect(x-t, y+2*t, t, t);
    rect(x+t, y-3*t, t, t);
    rect(x-t, y-3*t, t, t);
    rect(x+2*t, y+3*t, t, t);
    rect(x-2*t, y+3*t, t, t);
    rect(x+2*t, y-4*t, t, t);
    rect(x-2*t, y-4*t, t, t);
    rect(x+3*t, y+t, t, t);
    rect(x-3*t, y+t, t, t);
    rect(x+3*t, y-t, t, t);
    rect(x-3*t, y-t, t, t);
    rect(x+4*t, y+2*t, t, t);
    rect(x-4*t, y+2*t, t, t);
    rect(x+4*t, y-2*t, t, t);
    rect(x-4*t, y-2*t, t, t);
    rect(x+5*t, y+3*t, t, t);
    rect(x-5*t, y+3*t, t, t);
    rect(x+5*t, y-3*t, t, t);
    rect(x-5*t, y-3*t, t, t);
    rect(x+5.5*t, y, 2*t, t);
    rect(x-5.5*t, y, 2*t, t);
  }
}