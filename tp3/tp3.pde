
//Yamile Nazarena Erbes
//94700/7
//https://youtu.be/jOZQFRTJUpE

int tam;
int cant;
PImage optic;


void setup() {
  cant = 40;
  tam = width/cant;
  size(800, 400);
  optic = loadImage ("optic.jpeg");
}



void draw() {

  image (optic, 0, 0, 400, 400);
  efecto ();
}
