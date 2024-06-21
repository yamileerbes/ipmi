



void efecto () {
  for (int a = 20; a < cant; a++) {
    for ( int l = 0; l < cant; l++) {
      noStroke();
      float d = dist(a * tam + tam / 2, l * tam + tam / 2, mouseX, mouseY);
      float colors = map(d, width/2, width, 170, 50);
      boolean cambiocolor = click();
      {
        if (cambiocolor) {
          //verde
          fill(10, 88, 48);
          rect(a * tam, l * tam, tam, tam);
          //locura
          fill(colors, random(0, 255), random(0, 255));

          ellipse(a * tam + tam / 2, l * tam + tam / 2, tam - 8, tam - 6);
        } else {
          //verde
          fill(10, 88, 48);
          rect(a * tam, l * tam, tam, tam);
          //calido
          fill(colors, 58, 33);
          ellipse(a * tam + tam / 2, l * tam + tam / 2, tam - 8, tam - 6);
        }
      }
      boolean fondoloco = teclaup();
      {
         {
          if (fondoloco && (a+l)%2 == 0) {
            fill(random(0, 255), colors, random(0, 255));
            rect(a * tam, l * tam, tam, tam);
            //locura
            fill(colors, random(0, 255), random(0, 255));

            ellipse(a * tam + tam / 2, l * tam + tam / 2, tam - 8, tam - 6);
          }
        }
      }
      boolean reinicio = tecladown();
      {
        if (reinicio) {
          fondoloco = false;
        }
      }
    }
  }
}
