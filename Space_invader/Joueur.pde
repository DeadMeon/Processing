class Joueur 
{  
  // attributs
  int x, y, xV, yV, xBalle, yBalle, vBalle, i;
  float v, t;
  color c;
  boolean tire;


  // constructeur(s)
  Joueur() {
    this.x = 500;
    this.y = 900;
    this.v = 0;
    this.t = param.t;
    this.c = 255;
    this.xV = 10;
    this.yV = 10;
    this.i = 0;
    xBalle = x;
    yBalle = y;
    vBalle = 5;
  }

  // méthodes
  // choix du vaisseaux
  void joueur() 
  {
    if (
      menu.ChoixJoueur == 0
      ) {
      dessin2(x, y);
    } else {
      dessin1(x, y);
    }
    if (tire == true) 
    {
      hitbox.fire();
    }
  }


  // dessin du vaisseau vintage
  void dessin1(float x, float y) 
  {
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(x, y, 13*t, 3*t);
    rect(x, y-2*t, 11*t, t);
    rect(x, y-2*t, 11*t, t);
    rect(x, y-3.5*t, 3*t, 2*t);
    rect(x, y-5*t, t, t);
  }


  // dessin du vaisseau normal
  void dessin2(float x, float y) {
    noStroke();
    fill(255);
    rect(x, y-3.5*t, 3*t, 4*t);
    rect(x, y+5*t, 3*t, t);
    rect(x, y+2*t, 9*t, 5*t);
    rect(x, y-7*t, t, 3*t);
    rect(x, y+6.5*t, t, 2*t);
    rect(x+4*t, y-t, t, t);
    rect(x-4*t, y-t, t, t);
    rect(x, y-t, 5*t, t);
    rect(x+5*t, y+4*t, t, 3*t);
    rect(x-5*t, y+4*t, t, 3*t);
    rect(x+6*t, y+5*t, t, 3*t);
    rect(x-6*t, y+5*t, t, 3*t);
    rect(x+7*t, y+4*t, t, 5*t);
    rect(x-7*t, y+4*t, t, 5*t);
    fill(255, 0, 0);
    rect(x, y+0.5*t, t, 2*t);
    rect(x+t, y+1.5*t, t, 2*t);
    rect(x-t, y+1.5*t, t, 2*t);
    rect(x+2.5*t, y+5.5*t, 2*t, 2*t);
    rect(x-2.5*t, y+5.5*t, 2*t, 2*t);
    rect(x+2*t, y+4*t, t, t);
    rect(x-2*t, y+4*t, t, t);
    rect(x+4*t, y-2.5*t, t, 2*t);
    rect(x-4*t, y-2.5*t, t, 2*t);
    rect(x+7*t, y+0.5*t, t, 2*t);
    rect(x-7*t, y+0.5*t, t, 2*t);
    fill(0, 0, 255);
    rect(x+3*t, y, t, t);
    rect(x-3*t, y, t, t);
    rect(x+4*t, y+t, t, t);
    rect(x-4*t, y+t, t, t);
    fill(255);
  }


  // touche pour jouer
  void keyPressed() {
    if (menu.fenetre == 3) {
      if (keyCode == LEFT || key == 'q' || key == 'Q') {
        x = x - xV;
      } else if (keyCode == RIGHT || key == 'd' || key == 'D') {
        x = x + xV;
      } 
      if (key == ' ' && (niv.niv == 0 || niv.niv == 1)) {
        niv.niv++;
      } else if (key == ' ') {
        tire = true;
      } 
      if (key == 'p' || key == 'P') {
        menu.fenetre = 1;
      }
    }
  }
}