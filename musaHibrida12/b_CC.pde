void controllerChange (int can, int num, int val) {
  println("| canal:", can, " | número:", num, " | valor: ", val);


  if (can == canalXLuser) {
 if (val != 0) {
    // Rotacionar

    if (num == trackSelectLeft) {     
      rotation = !rotation;
    } 

    // Parar/desenhar o fundo

    if (num == trackSelectRight) {
      bg = !bg;
    }
 
    // Vermelho (R) ou tom (H)
    if (num == f1) {
      bg1 = val;
    }
    // Verde (G) ou saturação (S)
    if (num == f2 ) {
      bg2 = val;
    }
    // Azul (B) ou brilho (B)
    if (num == f3 ) {
      bg3 = val;
    }

    // Movimento
    if (num == k24) {
      rotationSpeed = map(val, 0, 127, -7, 7);
    }

    // Movimento
    if (num == k8) {
      pMov = val*0.03;
    }

    if (num == k15) {
      geoSpeed = val*0.00003;
    }
    if (num == k16) {
      esp = val;
    }

// G E O M E T R I C O S

    //  //BANK C
    if (num == sendSelectUp) {
        geoHorizontal = !geoHorizontal;
    }
    if (num == k14) {
      if (val < 64) {
        gHD = true;
      } else {
        gHD = false;
      }

      if (val > 64) {
        gHG = true;
      } else {
        gHG = false;
      }
    }
    if (num == sendSelectDown) {
        geoVertical = !geoVertical;
      }
if (num == k13) {
      if (val < 64) {
        gVD = true;
      } else {
        gVD = false;
      }

      if (val > 64) {
        gVG = true;
      } else {
        gVG = false;
      }
    }
 }

    // Faders modificando o filtro

    // Vermelho (R) ou tom (H)
    if (num == f5) {
      corFaders1 = val;
    }
    // Verde (G) ou saturação (S)
    if (num == f6) {
      corFaders2 = val;
    }
    // Azul (B) ou brilho (B)
    if (num == f7) {
      corFaders3=val;
    }
    // Transparência (A)
    if (num == f8) {
      corFadersA = val;
    }

    
  }
}