void noteOn (int can, int not, int vel, long TimeStamp, String bus_name) {

  // NITROGEN • NITROGEN • NITROGEN • NITROGEN • NITROGEN • NITROGEN • NITROGEN • NITROGEN • NITROGEN • NITROGEN • NITROGEN • NITROGEN

  if (can == canalXLuser) {

    // Fundo PADS

    if (not == tf1 || not == tf2 || not == tf3 || not == tf4) {
      bgPads = true;
    }
  }

  if (not == tf1) {
    bgp1 = vel;
    bgp2 = int (random(vel/2));
    bgp3 = int (random(vel/2));
  }
  if (not == tf2) {
    bgp2 = vel;
    bgp1 = int (random(vel/2));
    bgp3 = int (random(vel/2));
  }
  if (not == tf3) {
    bgp3 = vel;
    bgp2 = int (random(vel/2));
    bgp1 = int (random(vel/2));
  }
  if (not == tf4) {
    bgp1 = int (random(vel));
    bgp2 = int (random(vel));
    bgp3 = int (random(vel));
  }

  // Imagens   
  if (vel != 0) {

    // Existem
    if (not == tf5) {

      pvipExiste = !pvipExiste;
    } 
    if (not == tf6) {
      ceuExiste = !ceuExiste;
    }
    if (not == tf8) {
      gifolhosExiste = !gifolhosExiste;
    }
    if (not == tf7) {
      texturaExiste = !texturaExiste;
    } 
    if (not == tc1) {
      biolhoExiste = !biolhoExiste;
    }
    if (not == tc3) {
      nuvemExiste = !nuvemExiste;
    }



    // E F E I T O S   I M A G E N S

    // BANK A

//    // Número de nuvens na tela
//    if (not == tf5) {
//      numNV = vel*2;
//    }
    // pb.passeia
    if (not == tc6) {
      ceuPasseia = !ceuPasseia;
    }
    // pv.passeia
    if (not == tc5) {
      pvipPasseia = !pvipPasseia;
    }
    //tx.passeia
    if (not == tc7) {
      texturaPasseia = !texturaPasseia;
    }

    // BANK B
    //// Número de biolhos na tela
    //if (not == tc7) {
    //  numBO = vel*2;
    //}
    
    // gif gifolhos
    if (not == tc8) {
      iOE++;
      if (iOE > gifolhos.length-1) {
        iOE = 0;
      }
    }


    // L I N H A   D E   E F E I T O S   C O N T Í N U A
       // Alternar entre os modos de cor
      if (not == deviceButton) {
        colorMode = !colorMode;
      }

      // Z E R A M E N T O
      if (not == recordArmButton
      ) {
        pvip.reset();
        nuvemExiste = false;
        biolhoExiste = false; 
        ceuExiste = false; 
        pvipExiste = false; 
        gifolhosExiste = false; 
        ceuExiste = false; 
        texturaExiste = false; 
        ceuPasseia = false; 
        rotation = false; 
        pvipPasseia = false;
        geoHorizontal = false; 
        geoVertical = false; 
        geoHorizontal = false; 
        geoVertical = false; 
        geoHorizontalPasseia = false; 
        geoVerticalPasseia = false;
        pMov = 0.1; 
        rotationSpeed = 0.01;
        geoSpeed = 0.000001;
        rotationAngle = 0.001;
        bg = true;
      }
      

    //  // G E O M E T R I C O S

    //  //BANK C

    //  if (not == pad37) {
    //    geoHorizontal = !geoHorizontal;
    //  }
    //  if (not == pad38) {
    //  }
    //  if (not == pad39) {
    //    geoVertical = !geoVertical;
    //  }
    //  if (not == pad40) {
    //  }   
    //  if (not == pad41) {
    //    gHG = !gHG;
    //  }
    //  if (not == pad42) {
    //    gHD = !gHD;
    //  }
    //  if (not == pad43) {
    //    gVG = !gVG;
    //  }
    //  if (not == pad44) {
    //    gVD = !gVD;
    //  }
    //}
    //}

    //  // MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8 • MPX8
    //  if (bus_name == "MPX8") {
    //    // Rotação
    //    if (not == P1) {     
    //      pR = !pR;
    //    }
    //    // Desenhar o fundo
    //    if (not == P5) {     
    //      bg = !bg;
    //    }
    //    // Fundo Pads
    //        if (not == P8 || not == P7 || not == P6) {
    //        bgp = true;
    //      }

    //    if (not == P8) {
    //      bgp1 = vel;
    //      bgp2 = int (random(vel/2));
    //      bgp3 = int (random(vel/2));
    //    }
    //    if (not == P7) {
    //      bgp2 = vel;
    //      bgp1 = int (random(vel/2));
    //      bgp3 = int (random(vel/2));
    //    }
    //    if (not == P6) {
    //      bgp3 = vel;
    //      bgp2 = int (random(vel/2));
    //      bgp1 = int (random(vel/2));
    //    }
  }
}

void noteOff (int can, int not, int vel, long TimeStamp, String bus_name) {
  if (not == tf1 || not == tf2 || not == tf3 || not == tf4) {
    bgPads = false;
  }
  
 }