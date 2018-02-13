class Decors 
{
  // attributs
  int i;
  int x,y;

  // constructeur(s)
  Decors()
  {
    i = 0;
  }


  // méthodes
  // loop pour la musique 

  void musique() {
    if (i == file.duration()*60) {
      file.loop();
      i=0;
    }
    i++;
  }


  // dessin d'etoile dans le background
  void etoile() {
    for (y = 0; y < height; y = y + 300) {
      for (x = 0; x < width; x = x + 300) {
        
        // fonction noise ...
        fill(255, 255, 212);
        noStroke();
        rect(random(x, x+300), random(y, y + 300), random(1, 3), random(10,16));
      }
    }
  }
}

  