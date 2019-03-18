// musaHibrida //<>//
// • conceito: instrumento interativo para controle de 
// iluminação em tempo real.
// • funcionamento: projeção sobre pele com controle manual
// de cor de fundo (RGB ou HSB), loops de movimento e 
// textura (.png ou programadas), fita led RGB em contraluz, 
// com controle de cor e movimento.
// • equipamento: PC, cabo HDMI, adaptador HDMI-miniDisplay,
// projetor, tripé, kit arduino, fita led RGB, controladora
// midi.
//==========================================================


// Bibliotecas
import themidibus.*;
// Controladoras
MidiBus Nit;
MidiBus MPX;
MidiBus XL;


// E N D E R E Ç A M E N T O

// Pads
// Bank A (1-16)
int pad1 = 48; 
int pad2 = 49; 
int pad3 = 50; 
int pad4 = 51;
int pad5 = 44; 
int pad6 = 45; 
int pad7 = 46; 
int pad8 = 47;
int pad9 = 40; 
int pad10 = 41; 
int pad11 = 42; 
int pad12 = 43;
int pad13 = 36; 
int pad14 = 37; 
int pad15 = 38; 
int pad16 = 39;

// Bank B (17-32)
int pad17 = 64; 
int pad18 = 65; 
int pad19 = 66; 
int pad20 = 67;
int pad21 = 60; 
int pad22 = 61; 
int pad23 = 62; 
int pad24 = 63;
int pad25 = 56; 
int pad26 = 57; 
int pad27 = 58; 
int pad28 = 59;
int pad29 = 52; 
int pad30 = 53; 
int pad31 = 54; 
int pad32 = 55;

// Bank C (32-48)
int pad33 = 80; 
int pad34 = 81; 
int pad35 = 82; 
int pad36 = 83;
int pad37 = 76; 
int pad38 = 77; 
int pad39 = 78; 
int pad40 = 79;
int pad41 = 72; 
int pad42 = 73; 
int pad43 = 74; 
int pad44 = 75;
int pad45 = 68; 
int pad46 = 69; 
int pad47 = 70; 
int pad48 = 71;

// Faders
int fdr1 = 21; 
int fdr2 = 22; 
int fdr3 = 23; 
int fdr4 = 24;
int fdr5 = 25; 
int fdr6 = 26; 
int fdr7 = 27; 
int fdr8 = 28;

// Outros
// Knobs
int R1 = 95;
int R2 = 92;
int R3 = 71;
int R4 = 91;
int R5 = 44;

// Balance
int bal = 8;

// Brightness
int brt = 74;

// MPX8
int P1 = 36;
int P2 = 37;
int P3 = 38;
int P4 = 39;
int P5 = 40;
int P6 = 41;
int P7 = 42;
int P8 = 43;

// Launch Control XL

// Knobs
int k1 = 13;
int k2 = 14;
int k3 = 15;
int k4 = 16;
int k5 = 17;
int k6 = 18;
int k7 = 19;
int k8 = 20;
int k9 = 29;
int k10 = 30;
int k11 = 31;
int k12 = 32;
int k13 = 33;
int k14 = 34;
int k15 = 35;
int k16 = 36;
int k17 = 49;
int k18 = 50;
int k19 = 51;
int k20 = 52;
int k21 = 53;
int k22 = 54;
int k23 = 55;
int k24 = 56;

// Faders
int f1 = 77;
int f2 = 78;
int f3 = 79;
int f4 = 80;
int f5 = 81;
int f6 = 82;
int f7 = 83;
int f8 = 84;

// Controller change buttons
int sendSelectUp = 104;
int sendSelectDown = 105;
int trackSelectLeft = 106;
int trackSelectRight = 107;

// Note on/off buttons
int deviceButton = 105;
int muteButton = 106;
int soloButton = 107;
int recordArmButton = 108;

int tf1 = 41;
int tf2 = 42;
int tf3 = 43;
int tf4 = 44;
int tf5 = 57;
int tf6 = 58;
int tf7 = 59;
int tf8 = 60;
int tc1 = 73;
int tc2 = 74;
int tc3 = 75;
int tc4 = 76;
int tc5 = 89;
int tc6 = 90;
int tc7 = 91;
int tc8 = 92;


// Variáveis
float raio, W, H;
boolean colorMode = true;


// Cor de fundo FADERS
boolean bg = true;
int bg1 = 0, bg2 = 0, bg3 = 0; 

// Cor do fundo PADS
boolean bgPads = false;
int bgp1 = 0, bgp2 = 0, bgp3 = 0, bgpA = 0;

// Filtro FADERS
int corFaders1 = 50, corFaders2 = 50, corFaders3 = 50, corFadersA = 0;

// Midi
int canal = 9;
int canalpads = 9;
int canalmpx = 9;
int canalXLuser = 0;
int canalXLfactory = 11;
int can, not, vel;


// Imagens
int olhoI = 127*2; 
float pMov = 0.1;
float rotationSpeed = 0.1;
//int srM=0;
//int xRoda = 0;
float rotationAngle =0.001;
;

// Mídia
float numBO = 100;
float numNV = 100;
PImage BIOLHO, CEU, PVIP, TEXTURA;
PImage [] NUVEM = new PImage [3];
PImage [] GIFOLHOS = new PImage [6];
Img ceu; 
Img pvip;
Img [] biolho = new Img [olhoI]; 
Img textura;
Img [] gifolhos = new Img [GIFOLHOS.length];
Img [] nuvem = new Img [olhoI];
boolean biolhoExiste, ceuExiste, pvipExiste, gifolhosExiste, texturaExiste, nuvemExiste;
boolean rotation, pvipPasseia, ceuPasseia, texturaPasseia, gifolhosPasseia;
int iOE=0;


// G E O M É T R I C O S

Geo [] geo = new Geo [1000];
boolean geoHorizontal, geoVertical, geoHorizontalPasseia, geoVerticalPasseia;
boolean gHG, gVG, gVD, gHD;


// Posição geo
int esp =0;
float hx, hy, hX, hY;
float vx, vy, vX, vY;

// Movimento geo
float geoSpeed = 0.000001;

int numGeo = 300;

void setup() {
  fullScreen(P2D,2);
  //size (1000, 1000, P2D);
  background (0);
  colorMode(RGB, 127, 127, 127, 127);
  noCursor();
  
  MidiBus.list();
  
  /*
  HOW DOES THESE INS AND OUTS WORK?
  */
  
  Nit  = new MidiBus (this, "Nitrogen16", "MPX8", "Nitrogen16");
  MPX = new MidiBus (this, "MPX8", "MPX8", "MPX8");
  XL = new MidiBus (this, "Launch Control XL", "Launch Control XL");
  BIOLHO = loadImage ("biolho.png");
  CEU = loadImage ("pvips.png");
  PVIP = loadImage ("pvpb.png");
  TEXTURA = loadImage ("txtr.png");
    for (int i = 0; i < GIFOLHOS.length; i++) {
    GIFOLHOS[i] = loadImage ("olhoestampa"+i+".png");
  }
  for (int i = 0; i < NUVEM.length; i++) {
    NUVEM[i] = loadImage ("nv"+i+".png");
  }


  ceu = new Img(CEU);
  pvip = new Img (PVIP);
  textura = new Img (TEXTURA);
    for (int i = 0; i < gifolhos.length; i++) {
    gifolhos [i] = new Img (GIFOLHOS[i]);
  }
  for (int i = 0; i < nuvem.length; i++) {
    int nvI = int(random(0, NUVEM.length));
    nuvem [i] = new Img (NUVEM[nvI]);
  }
  for (int i = 0; i < olhoI; i++) {
    biolho [i] = new Img (BIOLHO);
  }

  raio = sqrt(sq(width)+sq(height));
  W = width/2;
  H = height/2;


  // Variáveis geo

  for (int i = 0; i < geo.length; i++) {
    geo[i] = new Geo();
  }

  rectMode(CENTER);
  imageMode(CENTER);
}