ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();    //si dichiarano due array che conterrano variabili di tipo intero
int w = 30, h = 30, bs = 20, dir = 0, applex = 12, appley = 10;          //dichiarazione delle varie coordinate, bs è il lato del quadrato generato dalla griglia
int[] dx = {0,0,1,-1}, dy = {1,-1,0,0};    //sotto, sopra, destra, sinistra, per impostare la direzione del movimento
boolean gameover = false;            
int punteggio = 0;                               //punteggio totalizzato dal giocatore
private final static color red = #ff0000;
private final static color black = #000000;      //colori
private final static color white = #ffffff;
private final static color green = #00ff00;

void setup(){
  size(600,600);
  x.add(5);    //cord x della generazione del serpente
  y.add(5);    //cord y della generazione del serpente
}

void draw(){
  background(255);   
  for (int i = 0; i < w; i++){
    line(i*bs, 0, i*bs, height);        //line crea una linea, (cordx1, cordy1, cordx2, cordy2, cordz1, cordz2) z1 e z2 non sono obbligatorie
    background(green);                //si colora lo sfondo
  }
  for (int i = 0; i < h; i++){          //per tutta la cord y viene generata una linea
    line(0, i*bs, width, i*bs);
    background(green);                //si colora lo sfondo
  }
  
  for(int i = 0; i < x.size(); i++){
    fill(black);                               //colore della testa
    stroke(black);
    rect(x.get(i)*bs, y.get(i)*bs, bs, bs);    //si crea la testa
    }
    
    if (!gameover){      //se gameover è falso, quindi il giocatore non ha ancora perso
    fill(red);        //colore della mela
    stroke(red);      //bordo della mela
    rect(applex*bs, appley*bs, bs, bs);      //si crea il rettangolo della mela
    
    if(frameCount%6==0){        //framecount contiene il numero di frame da quando si avvia il programma, si usa per aumentare la velocità dello snake
      x.add(0,x.get(0) + dx[dir]);    //aggiunge all'array x, alla posizione 0, il valore x.get(0) + dx[dir] 
      y.add(0,y.get(0) + dy[dir]);    //.add(indice, valore)
      if(x.get(0) < 0 || y.get(0) < 0 || x.get(0) >= w || y.get(0) >= h) gameover = true;      //se il serpente tocca un bordo si fa perdere il giocatore
      if(x.get(0) == applex && y.get(0) == appley){ //verifica del contatto con la mela
        applex = (int)random(0,w);    //si generano delle x e y randomiche da assegnare poi alla mela
        appley = (int)random(0,h);    //l'intero generato ha range 0 - h
        punteggio = punteggio + 5;    //si aggiorna il punteggio
      }
      else{
      x.remove(x.size()-1);      //evita la continua creazione di segmenti ad ogni movimento dello snake
      y.remove(y.size()-1);
      }
    }
    }
    else{
      textSize(20);    //grandezza del testo
      stroke(black);   //colore del bordo del testo
      fill(black);     //colore del testo
      background(white);  //sfondo della finestra
      text("Hai perso! punti totalizzati: " +punteggio  , 150, 60);    //visualizza una stringa a schermo, ha come parametri (stringa da visualizzare, cordx, cordy)
  }
}

void keyPressed() {
  int newdir = key=='s' ? 0 : (key=='w' ? 1 : (key =='d' ? 2 : (key=='a' ? 3 : -1)));  //per verificare la pressione di un tasto
  if (newdir !=  -1) dir = newdir;
}
