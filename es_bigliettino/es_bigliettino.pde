Albero a;

public void settings(){
  size(650, 750);           //si crea la dimensione della finestra
}

public void setup(){
  background(255,255,255);  //colore dello sfondo
  a = new Albero();         //si istanzia un nuovo oggetto di tipo Albero
}

public void draw(){         //metodo che disegna 
  a.show1();                // si disegna l'albero
  a.show2();                //si disegna la stella
}
