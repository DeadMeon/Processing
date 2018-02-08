class Hitbox 
{
  // attributs
  int xBalle;
  int yBalle;
  int vBalle;
  int t;
  boolean a;
  float xAlien, yAlien;


  // constructeur(s)
  Hitbox() 
  {
    this.xBalle = joueur.x;
    this.yBalle = joueur.y-3*t;
    this.vBalle = joueur.vBalle;
    this.t = param.t;
    this.a = false;
  }  


  // méthodes
  // dessin du tire
  void fire() {
    rectMode(CENTER);
    fill(255);
    noStroke();
    if ( yBalle > -5) {
      yBalle = yBalle - vBalle;
      rect(xBalle, yBalle, t, 3*t);
    } else {
      joueur.tire = false;
      yBalle = joueur.y;
      xBalle = joueur.x;
    }
  }


  // hitbox
  boolean toucherAlien(float xAlien, float yAlien) {
    noFill();
    stroke(255);
    /*
    //affiche les hitbox
     rectMode(CENTER);
     rect(xAlien,xAlien,xAlien+10*t,yAlien+10*t);
     */
    if (
      yBalle == yAlien + (alien.t*3) &&
      xBalle < xAlien + (alien.t*5) &&
      xBalle > xAlien - (alien.t*5) &&
      niv.niv >= 2 
      ) {
      param.score += 10;
      joueur.tire = false;
      yBalle = joueur.y;
      xBalle = joueur.x;
    }
    return a;
  }
}