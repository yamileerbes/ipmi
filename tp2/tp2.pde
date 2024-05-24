//Yamile Nazarena Erbes 94700/7

PImage cero;
PImage uno;
PImage dos;
PImage tres;
PImage cuatro;
int x;
PFont ini;
PFont parrafo;
boolean botoniniciado = false;
String tuno;
String tdos;
String ttres;
String tcuatro;
int darriba;
int dabajo;
float aumenta;
float disminuye;
int rectuno;
int rectdos;
int recttres;
int rectcuatro;
void setup() {
  size(640, 480);
  ini = loadFont("ImprintMT-Shadow-48.vlw");
  parrafo = loadFont ("BodoniMTCondensed-Bold-48.vlw");
  cero = loadImage ("clubp0.png");
  uno = loadImage("clubp1.png");
  dos = loadImage("clubp2.jpg");
  tres = loadImage("clubp3.jpg");
  cuatro = loadImage ("clubp4.png");
  x = 1;
  tuno = "Club Penguin fue una plataforma de juego en línea lanzada en 2005 por New Horizon Interactive. Este entrañable mundo virtual de pingüinos brindaba un espacio acogedor y hogareño para los jugadores. Con su hermoso apartado artístico y diseño amigable.";
  tdos = "Club Penguin dejó un impacto significativo en su comunidad de jugadores. Más allá de los juegos y actividades, contribuyeron a crear un sentido de pertenencia y camaradería entre los jugadores que aun persiste.";
  ttres = "Después de casi 12 años de operación, Club Penguin cerró sus puertas virtuales el 30 de marzo de 2017. La decisión fue tomada por Disney, quien había adquirido el juego en 2007.";
  tcuatro = "Aunque Club Penguin haya cerrado, su legado vive en la nostalgia de sus jugadores. Proyectos de recreación no oficiales y fan art mantienen viva la esencia de este mundo de pingüinos.";
  darriba = -100;
  dabajo = 480;
  aumenta = 1;
  disminuye = 150;
  rectuno = -110;
  rectdos = 470;
  recttres = 100 ;
  rectcuatro = 400;
}

void draw() {
  println(x);
  if (x<2) {
    // Mostrar imagen inicial y botón de inicio

    image(cero, 0, 0, 640, 480);
    fill(77, 234, 247, 210);
    noStroke();
    rect(50, 380, 200, 80, 20);
    fill(250, 30, 203);
    textFont(ini);
    textSize(35);
    text("Iniciar", 90, 430);
  } else if (x>2 && x<200) {
    rectuno = rectuno + 3 ;
    darriba = darriba + 3;
    image(uno, 0, 0, 640, 480);
    fill(255, 100);
    rect (15, rectuno, 610, 170, 20);
    textFont(parrafo);
    fill(0);
    textSize(30);
    //stroke(0);
    strokeWeight(100);
    text(tuno, 20, darriba, 600, 400);
  } else if (x>200 && x<400) {
    rectdos -=2;
    dabajo -=2;
    image(dos, 0, 0, 640, 480);
    fill ( 255, 100);
    rect (15, rectdos, 610, 180, 20);
    textFont(parrafo);
    fill(0);
    textSize(30);
    text(tdos, 20, dabajo, 600, 400);
  } else if (x>400 && x<600) {
    if ( aumenta < 30 && recttres < 350) {
      aumenta +=0.9;
      ;
      recttres +=1;
    }
    image(tres, 0, 0, 640, 480);
    textFont(parrafo);
    fill(255, 100);
    rect(15, 95, 605, recttres, 20);
    fill(0);
    textSize(aumenta);
    text(ttres, 20, 100, 600, 400);
  } else if (x>600 && x<800) {
    if (disminuye > 30 && rectcuatro > 120) {
      disminuye -=0.9;
      rectcuatro -=2;
    }
    image(cuatro, 0, 0, 640, 480);
    textFont(parrafo);
    fill(255, 150);
    rect(15, 90, 600, rectcuatro, 20);
    fill(0);
    textSize(disminuye);
    text(tcuatro, 20, 100, 600, 400);
    if ( x > 750 ) {
      noStroke();
      fill(250, 30, 203, 210);
      rect(50, 380, 200, 80, 20);
      fill(77, 234, 247);
      textFont(ini);
      textSize(35);
      text("Volver", 80, 430);
    }
  }
  // Incrementar x continuamente
  if (botoniniciado && x<800) {
    x++;
  }
}


void mouseClicked () {
  if (mouseX > 50 && mouseX < 250 &&  mouseY > 380 && mouseY < 460 && !botoniniciado) {
    botoniniciado = true;
  }
  if (mouseX > 50 && mouseX < 250 &&  mouseY > 380 && mouseY < 460 && botoniniciado && x>799) {
    x = 0;
    darriba = -150;
    dabajo = 550;
    aumenta = 1;
    disminuye = 150;
    rectuno = -155;
    rectdos = 545;
    recttres = 100 ;
    rectcuatro = 400;
    botoniniciado = false;
  }
}
