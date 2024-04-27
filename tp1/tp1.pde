//Yamile Nazarena Erbes 94700/7

PImage paisa;
int x = 400;
void setup() {
  size(800, 400);
  paisa = loadImage ("paisaje.jpg");
}

void draw() {
  image(paisa, 0, 0, 400, 400);
  println(mouseX + "/" + mouseY);
  //fondo cielo y agua
  noStroke();
  fill(221, 209, 245, 180);
  rect(x+0, 0, 400, 120);
  fill(220, 207, 251, 150);
  rect(x+0, 0, 400, 164);
  rect(x+122, 164, 400-122, 45);
  fill(219, 196, 214, 180);
  quad(x+261, 268, x+400, 268, x+175, 396, x+132, 347);
  triangle(x+400, 268, x+322, 311, x+400, 293);
  fill(159, 144, 185, 130);
  bezier(x+38, 410, x+ 1, 297, x+127, 291, x+261, 267);
  quad(x+0, 322, x+99, 298, x+33, 400, x+0, 400);
  triangle(x+169, 400, x+219, 371, x+214, 400);
  triangle(x+53, 400, x+133, 349, x+180, 400);
  fill(195, 175, 210, 150);
  triangle(x+132, 346, x+225, 450, x+231, 364);
  fill(253, 253, 255, 150);
  rect(x+122, 190, 400-122, 20);
  fill(255, 248, 239, 110);
  rect(x+243, 210, 400-243, 269-210);



  //reflejos/arbustos
  fill(43, 45, 21, 200);
  bezier(x+108, 400, x+149, 317, x+87, 289, x+0, 319);
  triangle(x+0, 319, x+0, 400, x+108, 400);
  bezier(x+70, 305, x+172, 330, x+285, 299, x+244, 266);
  triangle(x+99, 312, x+181, 318, x+130, 345);
  bezier(x+0, 323, x+139, 368, x+243, 306, x+186, 278);
  bezier(x+118, 353, x+210, 336, x+248, 307, x+191, 290);
  bezier(x+119, 352, x+27, 288, x+146, 288, x+191, 290);

  // reflejos blancos
  fill(252, 252, 250, 200);
  rect(x+275, 245, 400-275, 267-244);
  quad(x+278, 265, x+400, 265, x+400, 293, x+253, 282);
  fill(118, 95, 124, 210);
  triangle(x+374, 291, x+400, 268, x+400, 298);
  

  //reflejos/arbustos
  fill(75, 62, 56, 200);
  triangle(x+333, 264, x+400, 267, x+315, 284);
  triangle(x+269, 264, x+400, 267, x+241, 289);

  //arboles fondo
  fill(29, 19, 30, 210);
  quad(x+219, 204, x+309, 187, x+400, 267, x+241, 266);
  ellipse(x+318, 244, 150, 45);
  bezier(x+400, 266, x+329, 252, x+368, 209, x+400, 226);



  //arboles
  fill(26, 27, 22, 240);
  beginShape();
  vertex(x+74, 303);
  vertex(x+17, 233);
  vertex(x+157, 145);
  vertex(x+220, 220);
  vertex(x+220, 273);
  endShape();

  fill(57, 53, 41, 240);
  beginShape();
  vertex(x+29, 313);
  vertex(x+2, 188);
  vertex(x+139, 146);
  vertex(x+190, 243);
  vertex(x+163, 282);
  endShape();

  fill(48, 43, 24, 240);
  beginShape();
  vertex(x+0, 322);
  vertex(x+68, 304);
  vertex(x+96, 178);
  vertex(x+85, 121);
  vertex(x+63, 110);
  vertex(x+19, 128);
  vertex(x+0, 120);
  endShape();

  fill(81, 69, 45, 240);
  beginShape();
  vertex(x+0, 322);
  vertex(x+100, 298);
  vertex(x+133, 181);
  vertex(x+71, 147);
  vertex(x+0, 167);
  endShape();

  fill(7, 9, 4, 240);
  beginShape();
  vertex(x+0, 322);
  vertex(x+80, 301);
  vertex(x+76, 222);
  vertex(x+43, 92);
  vertex(x+19, 92);
  vertex(x+0, 109);
  endShape();

  //tierra
  fill(33, 23, 32);
  bezier(x+211, 400, x+226, 324, x+312, 294, x+400, 294);
  triangle(x+211, 400, x+400, 294, x+400, 400);

  //sombra
  fill(4, 0, 5, 120);
  ellipse(655, 395, 55, 100);

  //tronco
  fill(13, 6, 14);
  quad(x+229, 235, x+238, 233, x+281, 374, x+254, 388);
  quad(x+215, 225, x+224, 304, x+230, 381, x+254, 388);
  triangle(x+216, 237, x+230, 232, x+253, 385);
  triangle(x+217, 238, x+243, 71, x+229, 235);
  triangle(x+229, 236, x+239, 233, x+233, 183);
  quad(x+217, 236, x+229, 167, x+212, 85, x+204, 125);
  triangle(x+205, 122, x+211, 89, x+186, 0);
  bezier(x+207, 123, x+182, 96, x+155, 83, x+116, 86);
  beginShape();
  vertex(x+116, 86);
  vertex(x+86, 91);
  vertex(x+68, 103);
  vertex(x+86, 100);
  vertex(x+129, 90);
  endShape();
  beginShape();
  vertex(x+213, 189);
  vertex(x+196, 187);
  vertex(x+171, 187);
  vertex(x+114, 175);
  vertex(x+163, 169);
  vertex(x+198, 173);
  vertex(x+210, 177);
  endShape();

  beginShape();
  vertex(x+233, 194);
  vertex(x+267, 152);
  vertex(x+297, 105);
  vertex(x+326, 28);
  vertex(x+305, 73);
  vertex(x+277, 122);
  vertex(x+251, 157);
  vertex(x+233, 174);
  endShape();

  beginShape();
  vertex(x+233, 194);
  vertex(x+267, 152);
  vertex(x+297, 105);
  vertex(x+326, 28);
  vertex(x+305, 73);
  vertex(x+277, 122);
  vertex(x+251, 157);
  vertex(x+233, 174);
  endShape();

  beginShape();
  vertex(x+207, 154);
  vertex(x+197, 147);
  vertex(x+152, 147);
  vertex(x+55, 176);
  vertex(x+129, 147);
  vertex(x+171, 140);
  vertex(x+196, 141);
  vertex(x+207, 146);
  endShape();

  beginShape();
  vertex(x+198, 80);
  vertex(x+130, 64);
  vertex(x+78, 21);
  vertex(x+130, 52);
  vertex(x+182, 67);
  vertex(x+198, 72);
  endShape();

  beginShape();
  vertex(x+218, 119);
  vertex(x+242, 102);
  vertex(x+276, 77);
  vertex(x+306, 37);
  vertex(x+276, 67);
  vertex(x+242, 93);
  vertex(x+215, 100);
  endShape();

  beginShape();
  vertex(x+237, 224);
  vertex(x+277, 208);
  vertex(x+320, 203);
  vertex(x+367, 205);
  vertex(x+387, 213);
  vertex(x+365, 195);
  vertex(x+322, 193);
  vertex(x+277, 196);
  vertex(x+237, 215);
  endShape();

  beginShape();
  vertex(x+224, 145);
  vertex(x+271, 128);
  vertex(x+321, 124);
  vertex(x+369, 136);
  vertex(x+360, 130);
  vertex(x+322, 112);
  vertex(x+260, 118);
  vertex(x+224, 138);
  endShape();

  //copa arbol
  fill(18, 19, 13, 150);
  beginShape();
  vertex(x+0, 223);
  vertex(x+61, 228);
  vertex(x+134, 208);
  vertex(x+195, 182);
  vertex(x+258, 187);
  vertex(x+300, 188);
  vertex(x+265, 140);
  vertex(x+211, 147);
  vertex(x+59, 135);
  vertex(x+0, 146);
  endShape();

  fill(33, 31, 19, 150);
  beginShape();
  vertex(x+0, 104);
  vertex(x+92, 139);
  vertex(x+148, 127);
  vertex(x+205, 135);
  vertex(x+264, 114);
  vertex(x+228, 74);
  vertex(x+153, 77);
  vertex(x+103, 12);
  vertex(x+69, 0);
  vertex(x+16, 35);
  endShape();

  fill(55, 42, 33, 150);
  beginShape();
  vertex(x+205, 126);
  vertex(x+230, 165);
  vertex(x+259, 198);
  vertex(x+288, 187);
  vertex(x+301, 170);
  vertex(x+317, 177);
  vertex(x+328, 205);
  vertex(x+355, 208);
  vertex(x+378, 197);
  vertex(x+400, 210);
  vertex(x+400, 98);
  vertex(x+322, 65);
  vertex(x+255, 50);
  vertex(x+207, 119);
  endShape();

  beginShape();
  vertex(x+162, 3);
  vertex(x+60, 71);
  vertex(x+21, 147);
  vertex(x+69, 168);
  vertex(x+110, 130);
  vertex(x+145, 131);
  vertex(x+180, 155);
  vertex(x+243, 129);
  vertex(x+336, 140);
  vertex(x+400, 123);
  vertex(x+317, 19);
  endShape();

  fill(6, 6, 4, 150);
  beginShape();
  vertex(x+400, 0);
  vertex(x+214, 24);
  vertex(x+158, 71);
  vertex(x+121, 178);
  vertex(x+161, 198);
  vertex(x+217, 146);
  vertex(x+302, 128);
  vertex(x+365, 121);
  vertex(x+400, 80);
  endShape();

  //barquito
  fill(255, 249, 255);
  bezier(679, 257, 688, 285, 722, 285, 733, 253);
  bezier(729, 255, 741, 290, 792, 290, 797, 253);

  //pastito frente de barquitos
  fill(34, 39, 33);
  beginShape();
  vertex(737, 271);
  vertex(769, 257);
  vertex(790, 261);
  vertex(800, 276);
  vertex(781, 291);
  vertex(742, 285);
  endShape();

  //persona
  fill(5, 0, 6);
  beginShape();
  vertex(737, 258);
  vertex(738, 251);
  vertex(748, 255);
  vertex(768, 279);
  vertex(757, 292);
  vertex(767, 309);
  vertex(756, 315);
  vertex(749, 297);
  vertex(750, 283);
  vertex(737, 271);
  vertex(742, 264);
  endShape();
}
