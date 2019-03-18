// Variáveis //<>//



void draw() {
//noLoop();
  
  pushMatrix();
  translate(width/2, height/2);



  if (colorMode == true) {
    colorMode(RGB, 127);
  } 
  if (colorMode == false) {
    colorMode(HSB, 127);
  }

  if (bg == true) {
    background(bg1, bg2, bg3);
  }

  // Fundo PADS

  if (bgPads == true) {
    noStroke();
    fill(bgp1, bgp2, bgp3);
    ellipse(0, 0, raio*2, raio*2);
  }
  // NADA ANTES - - - - - - - - - - - - - - - - - - - - - - - - - -
  //for (iR = 0; iR < quad.length; iR++) {
  //quad[iR].existe();
  //}

  // Rotação
  if (rotation == true) {
    ceu.roda();
  }

  // I M A G E N S

  // Existem
  if (ceuExiste == true) {
    ceu.existe();
  }
  if (pvipExiste == true) {
    pvip.existe();
  }
  if (biolhoExiste == true) {
    for (int i = 0; i < numBO; i++) {
      biolho[i].existe();
      biolho[i].ceu();
    }
  }
  if (nuvemExiste == true) {
    for (int i = 0; i < numNV; i++) {
      nuvem[i].existe();
      nuvem[i].ceu();
    }
  }
  if (gifolhosExiste == true) {
    gifolhos[iOE].existe();
  }

  if (texturaExiste == true) {
    textura.existe();
  }

  // Passeiam
  if (ceuPasseia == true) { 
    ceu.passeia();
  }
  if (pvipPasseia == true) {
    pvip.passeia();
  }  
  if (gifolhosPasseia == true) {
  }
  if (texturaPasseia == true) {
    textura.passeia();
  }
  
    // G E O M E T R I C O S   T R Á S
  if (geoHorizontal == true) {  
    for (int i = 0; i < numGeo; i++) {
      geo[i].horizontais();
    }
  }
  if (geoVertical == true) {
    for (int i = 0; i < numGeo; i++) {
      geo[i].verticais();
    }
  }

// Desenho
if (mousePressed) {
  stroke (corFaders1,corFaders2,corFaders3);
  strokeWeight(esp);
line (pmouseX-width/2,pmouseY-height/2,mouseX-width/2,mouseY-height/2);
}

  // NADA DEPOIS - - - - - - - - - - - - - - - - - - - - - - - - - -

  // Filtro
  noStroke();
  fill (corFaders1, corFaders2, corFaders3, corFadersA);
  ellipse(0, 0, raio*2, raio*2);
  
  
  popMatrix();
  
  println(biolhoExiste, ceuExiste, pvipExiste, gifolhosExiste, texturaExiste, nuvemExiste);
  println(geoHorizontal, geoVertical);
}