class Decors 
{
  // attributs
  int i;


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
  }
}