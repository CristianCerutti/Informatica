Albero a1, a2;
Stelladinamica sd;
public static final color colore_sfondo = #00008c;

void setup(){
  size(600, 300);
  background(colore_sfondo);
  a1 = new Albero(width/2.5, height, width/12, height/2.5);        //primo albero
  a2 = new Albero(1.5 * width/2.5, height, width/12, height/2.5);  //secondo albero  
  sd = new Stelladinamica();
}

public void draw(){
  background(colore_sfondo);    //per coprire la scia
  sd.show();
  a1.draw();
  a2.draw();
}
