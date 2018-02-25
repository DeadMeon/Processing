class Alien 
{
  // attributs
  int t;
  int i = 0;
  int vAlien;
  boolean j = false;



  // constructeur
  Alien() {
    this.t = param.t;
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
  

}