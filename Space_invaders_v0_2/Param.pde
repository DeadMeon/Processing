/*
Ici sont classer toute les variable utiliser dans la plus part des classe, cette generalisation permet de simplifier la modification de variable tel que la taille
ou la vitesse des aliens ainsi que la modifiaction des tableaux
*/

class Param
{
  int[] degatsAlien;
  int[] xAlien;
  int[] yAlien;
  int[] xBalle;
  int[] yBalle;
  int[] vie;
  int[] taille;
  int[] tBalle;
  int[] alienTab;
  boolean[] dead;
  boolean j;
  int fenetre;
  int nbAlien;
  int vAlien;
  int nbBalle;
  int alienMvt;
  int ttVie;
  int tGen;
  int v;
  int niv;
  int diff;
  int maxVie;
  int tpsNivSup;
  int[] compteur;

  Param()
  {
    fenetre = 1;
    nbAlien = 3;
    nbBalle = 30;
    alienMvt = 0;
    tGen = 10;
    ttVie = 0;
    niv = -2;
    tpsNivSup = 0;
    j = true;
    v=2; 
    taille = new int[nbAlien];
    compteur = new int[nbAlien];
    degatsAlien = new int[nbAlien];
    xAlien = new int[nbAlien];
    yAlien = new int[nbAlien];
    dead = new boolean[nbAlien];
    vie = new int[nbAlien];
    alienTab = new int[nbAlien];
    xBalle = new int[nbBalle];
    yBalle = new int[nbBalle];
    tBalle = new int[nbBalle];
  }
}