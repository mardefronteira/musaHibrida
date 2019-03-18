class Img {


  PImage imagem;
  PImage img;

  // Imagens pequenas
  float iX, iY, oeX = 0, oeY = 0;

  // Imagens de centro
  float cX = 0, cY = 0;

  Img (PImage imagem) {
    img = imagem;
    iX = random(-W, W);
    iY = random (-H, H);
  }

  void existe () {
    if (img == BIOLHO) {
      image (BIOLHO, iX, iY, 100, 100);
    }
    for (int i = 0; i < NUVEM.length; i++) {
      if (img == NUVEM[i]) {
        if (i == 1) {
          image (NUVEM[1], iX, iY, 100, NUVEM[1].height*100/NUVEM[1].width);
        } else {
          image (NUVEM[i], iX, iY, 200, NUVEM[i].height*200/NUVEM[i].width);
        }
      }
      if (img == CEU) {
        image (CEU, cX, cY, raio*2, raio*2);
      }
      for (int ii = 0; ii < GIFOLHOS.length; ii++) {
        if (img == GIFOLHOS[ii]) {
          image (GIFOLHOS[ii], cX, cY, raio, GIFOLHOS[ii].height*raio/GIFOLHOS[ii].width);
        }
      }
      if (img == PVIP) {
        image (PVIP, cX, cY, raio, raio);
      }
      if (img == TEXTURA) {
        image (TEXTURA, cX, cY, raio*2, raio*2);
      }
    }
  }
  void roda () {
    rotate (radians(rotationAngle));
    rotationAngle += rotationSpeed;
    if (rotationAngle>360) {
      rotationAngle = 0.001;
    }
  }

  void ceu() {   
    iX += random (-pMov, pMov);
    iY += random (-pMov, pMov); 
    if (rotation == false) {
      if (iX < -W) {
        iX = random(-W, W);
      }
      if (iX > W) {
        iX = random(-W,W);
      }
      if (iY < -H) {
        iY = random(-H,H);
      }
      if (iY > H) {
        iY = random(-H,H);
      }
    } else {
      iX = random (-raio, raio);
      iY = random (-raio, raio);
    }
  }

  void passeia() {
    cX += random (-pMov, pMov);
    cY += random (-pMov, pMov);

    if (cX < -raio + 50) {
      cX = 50;
    }
    if (cX > raio - 50) {
      cX = raio-50;
    }
    if (cY < -raio + 50) {
      cY = -raio + 50;
    }
    if (cY > raio - 50) {
      cY = raio-50;
    }
  }

  void reset() {
    cX = 0; 
    cY = 0; 

    iX = 0; 
    iY = 0;

    oeX = 0;
    oeY = 0;
  }
}