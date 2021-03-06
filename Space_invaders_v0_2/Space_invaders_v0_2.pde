import processing.sound.*;

// assignation des classes
PFont font;
SoundFile file;
Dessin dessin;
Decors decors;
Balle balle;
Menu menu;
Param param;
Alien alien;
Joueur j1;
Fonction f1;

// initialisation
void setup() 
{
  size(1000, 1000);
  frameRate(60);
  font = createFont("PressStart2P-Regular.ttf", 32);
  textFont(font);
  ///Musique
  setupMusique();

  // initialitation des classes
  param = new Param();
  dessin = new Dessin();
  decors = new Decors();
  balle = new Balle();
  alien = new Alien();
  menu = new Menu();
  j1 = new Joueur();
  f1 = new Fonction();

  //initialisation var
  f1.inital();
  decors.etoileStart();
}

void draw()
{
  ///Musique
  decors.musique();
  background(30);
  decors.etoile();
  f1.menu();
}

void mousePressed() 
{
  if (param.fenetre == 3 && param.niv >= 0) 
  {
    balle.newTire();
  } else 
  {
    menu.clique();
  }
}


void setupMusique() {
  String audioName = "data/LHS_Chiptunes_13.mp3";
  file = new SoundFile(this, sketchPath(audioName));
  file.play();
  file.amp(0.1);
}