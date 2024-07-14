
//Yamile Nazarena Erbes
//94700/7
//link youtube: https://youtu.be/fyMo1z_miL4


PImage optic;


void setup() {
  size(800, 400);
  optic = loadImage ("optic.jpeg");
}



void draw() {
  println(mouseX + "," + mouseY);
  image (optic, 0, 0, 400, 400);
  efecto (40, width/40);
}
