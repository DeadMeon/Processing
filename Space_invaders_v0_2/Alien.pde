class Alien
{
  //animation mort Alien
  void dead(int x) //
  {
    if (param.compteur[x] < 120)
    {
      dessin.explo(x); // x = xAlien[i] et y = yAlien[i]
      param.compteur[x]++;
    } else 
    {
      param.dead[x] = true;
      param.xAlien[x] = -100;
      param.yAlien[x] = -10;
    }
  }


  //mouvement de l'alien
  void mvtAlien()
  {
    if (param.xAlien[0] <= param.tGen * 7 || param.xAlien[param.xAlien.length-1] >= width - 7* param.tGen) {
      param.j = !param.j;
    } 
    if (param.j == false) { 
      param.vAlien = param.v;
    } else {
      param.vAlien = -param.v;
    }
    for (int i = 0; i < param.xAlien.length; i++)
    {
      param.xAlien[i] += param.vAlien;
      println(param.xAlien);
    }
  }
}