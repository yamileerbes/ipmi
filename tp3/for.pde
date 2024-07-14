
void efecto (int cant, int tam) {
  for (int a = 20; a < cant; a++) {
    for ( int l = 0; l < cant; l++) {
      noStroke();
      //se calcula la distancia entre el centro de las ellipses y el centro de la segunda mitad de la pantalla
      float d = dist(a * tam + tam / 2, l * tam + tam / 2, width / 2 + width / 4, height / 2);
      //se mapea el rangoentre 0, (la distancia entre el centro de la segunda mitad y el mouse), 220 y 0. variable de color
      float colors = map(d, 0, dist( width / 2 + width / 4, height / 2, mouseX, mouseY), 220, 0);
      boolean cambiocolor = click(mousePressed);
      if (cambiocolor) {
        fill(10, 88, 48);
        rect(a * tam, l * tam, tam, tam);
        //efecto del click
        fill(colors, random(0, 255), random(0, 255));
        ellipse(a * tam + tam / 2, l * tam + tam / 2, tam - 8, tam - 6);
      } else {
        fill(10, 88, 48);
        rect(a * tam, l * tam, tam, tam);
        //efecto degrade
        fill(colors, 58, 33);
        ellipse(a * tam + tam / 2, l * tam + tam / 2, tam - 8, tam - 6);
      }

      boolean fondoloco = teclap(UP);
      {
        {
          if (fondoloco && (a+l)%2 == 0) {
            //efecto loco grilla y ellipse
            fill(random(0, 255), colors, random(0, 255));
            rect(a * tam, l * tam, tam, tam);
            fill(colors, random(0, 255), random(0, 255));
            ellipse(a * tam + tam / 2, l * tam + tam / 2, tam - 8, tam - 6);
          }
        }
      }

      boolean reinicio = teclap(DOWN);
      {
        if (reinicio) {
          fondoloco = false;
        }
      }
    }
  }
}
