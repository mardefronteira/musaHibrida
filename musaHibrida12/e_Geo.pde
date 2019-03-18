class Geo {
  float hx, hy, hX, hY;
  float vx, vy, vX, vY;

  Geo () {
    hx = -raio;
    hX = raio;
    hy = 1;
    hY = 0;


    vy = -raio;
    vY = raio;
    vx = 1;
    vX = 0;
  }


  // Formas possíveis
  void horizontais () { 

    
    if (gHG == false && gHD == false) {
    hy = random(-raio, raio);
    hY=hy;

    while (hX == hx) {    
      hy += random(-geoSpeed, geoSpeed);
      hY += random (-geoSpeed, geoSpeed);
    }
    }

    if (gHG == true) { 
      if (hy != hY) {
        float dif = hy-hY;
        if (dif < 0) {
          while (hy<hY) {
            hy++;
          }
          if (dif > 0) {
            while (hy>hY) {
              hy--;
            }
          }
        }
      }}
      if (gHD == true) {
        hy += random(-geoSpeed, geoSpeed);
        hY += random (-geoSpeed, geoSpeed);
      } else if (gHG == false && gHD == false) {
        hy += random(-geoSpeed, geoSpeed);
        hY=hy;
      }




      strokeWeight(esp);
      stroke (corFaders1+random(-10, 10), corFaders2+random(-10, 10), corFaders3+random(-10, 10));
      line (hx, hy, hX, hY);

      // Limites
      if (hy < -raio) {
        hy = -raio;
      }
      if (hY < -raio) {
        hY = -raio;
      }  
      if (hy > raio) {
        hy = raio;
      }
      if (hY > raio) {
        hY = raio;
      }
    }

    void verticais () {    

      if (gVG == false && gVD == false) {
      vx = random(-raio, raio);
      vX=vx;

      while (vY == vy) {    
        vx += random(-geoSpeed, geoSpeed);
        vX += random (-geoSpeed, geoSpeed);
      }
      }

      if (gVG == true) { 
        if (vx != vX) {
          float dif = vx-vX;
          if (dif < 0) {
            while (vx<vX) {
              vx++;
            }
            if (dif > 0) {
              while (vx>vX) {
                vx--;
              }
            }
          }
        }
      } 
      if (gVD == true) {
        vx += random(-geoSpeed, geoSpeed);
        vX += random (-geoSpeed, geoSpeed);
      } else if (gVG == false && gVD == false) {
        vx += random(-geoSpeed, geoSpeed);
        vX=vx;
      }

      strokeWeight(esp);
      stroke (corFaders1+random(-10, 10), corFaders2+random(-10, 10), corFaders3+random(-10, 10));
      line (vx, vy, vX, vY);


      // Limites
      if (vx < -raio) {
        vx = -raio;
      }
      if (vX < -raio) {
        vX = -raio;
      }
      if (vx > raio) {
        vx = raio;
      }
      if (vX > raio) {
        vX = raio;
      }
    }

    //void alinhar() 
    //{
    //  if (vx != vX) {
    //    float dif = vx-vX;

    //    if (dif < 0) {
    //      while (vx<vX) {
    //        vx++;
    //      }
    //      if (dif > 0) {
    //        while (vx>vX) {
    //          vx--;
    //        }
    //      }
    //    }
    //  }
    //}
  }