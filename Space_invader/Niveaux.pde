class Niveaux 
{
  // attributs
  int niv;
  int bg;
  int comp;
  float xAlien, yAlien;

  // constructeur(s)
  Niveaux() {
    bg = param.bg;
    niv = 0;
    comp = 0;
    xAlien = 2*width/4;
    yAlien = 4*height/20;
  }

  // méthodes
  // choix des niveaux
  void niveaux() {
    if (niv == 0) {
      niveaux00();
    } else if (niv == 1) {
      niveaux01();
    } else if (niv == 2) {
      niveaux02();
    } else if (niv == 3) {
      niveaux03();
    } else if (niv == 4) {
      niveaux04();
    } else if (niv == 5) {
      niveaux05();
    }
  }

  // mise en scene
  void niveaux00() 
  {
    background(bg);
    alien.alien1(17*width/20, height/4);
    joueur.dessin2(17*width/20, 3*height/4);
    rectMode(CORNER);
    fill(230);
    textSize(24);
    text("Les aliens envaissent la terre, vous le seul rempare restant pour defendre l'humanité !", width/20, height/20, 14*width/20, 19*height/20);
  }

  // information d'utiliation
  void niveaux01() 
  {
    background(bg);
    alien.alien1(17*width/20, height/4);
    joueur.dessin2(17*width/20, 3*height/4);
    rectMode(CORNER);
    fill(230);
    textSize(24);
    text("Vous pouvez tirer sur les Aliens grâce a la touche Espace et vous deplacer avec Z,Q,S,D ou les fleches directionnel", width/20, height/20, 14*width/20, 19*height/20);
  }

  // niveau 1 
  void niveaux02() 
  {
    background(bg);
    decor.etoile();
    fill(230);
    textSize(24);
    text("Score : " + param.score, 16*width/20, height/20);

    joueur.joueur();
    if (param.score == 10*param.diff && comp == 25) {
      explosion();
    } else if (param.score == 10*param.diff) {
      alien.explosionAlien(xAlien, yAlien);       
      comp++;
    } else {
      alien.mvt(0);
      alien.alien2(xAlien, yAlien);
    }
  }

  // niveau 2
  void niveaux03() 
  {


    background(bg);
    decor.etoile();
    fill(230);
    textSize(24);
    text("Score : " + param.score, 16*width/20, height/20);

    joueur.joueur();
    if (param.score == 100*param.diff && comp == 25) {
      explosion();
    } else if (param.score == 500*param.diff) {
      alien.explosionAlien(xAlien, yAlien);       
      comp++;
    } else {
      alien.mvt(3*param.diff);
      alien.alien2(xAlien, yAlien);
    }
  }

  // niveau 3
  void niveaux04() 
  {
    background(bg);
    decor.etoile();
    fill(230);
    textSize(24);
    text("Score : " + param.score, 16*width/20, height/20);

    joueur.joueur();
    if (param.score == 10*param.diff && comp == 25) {
      explosion();
    } else if (param.score == 1000*param.diff) {
      alien.explosionAlien(xAlien, yAlien);       
      comp++;
    } else {
      alien.mvt(5*param.diff);
      alien.alien2(xAlien, yAlien);
    }
  }

  // niveau 4
  void niveaux05() 
  {
    background(bg);
    decor.etoile();
    fill(230);
    textSize(24);
    text("Score : " + param.score, 16*width/20, height/20);

    joueur.joueur();
    if (param.score == 10*param.diff && comp == 25) {
      explosion();
    } else if (param.score == 2500*param.diff) {
      alien.explosionAlien(xAlien, yAlien);       
      comp++;
    } else {
      alien.mvt(5*param.diff);
      alien.alien2(xAlien, yAlien);
    }
  }

  // destruction d'un ennemie
  void explosion() 
  {
    for (int i = 0; i < 360; i++) {
      text("Score : " + param.score, 16*width/20, height/20);
      hitbox.a = true;
      alien.explosionAlien(alien.x, alien.y);
    }
    // changement de niveaux et reinitialisation des positions
    niv++;
    if (niv == 2) {
      xAlien = 2*width/4;
      yAlien = 4*height/20;
    } else if (niv == 3) {
      xAlien = 2*width/4;
      yAlien = 4*height/20;
    } else if (niv == 4) {
      xAlien = 2*width/4;
      yAlien = 4*height/20;
    } else if (niv == 5) {
      xAlien = 2*width/4;
      yAlien = 4*height/20;
    }
    comp = 0;
    hitbox.a = false;
  }
}