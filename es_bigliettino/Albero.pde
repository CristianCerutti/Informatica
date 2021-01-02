public class Albero{
private color colore;
private color bordo;
private char stella;

public Albero (){
  colore = color(0,255,0);            //si assegna il colore all'albero
  bordo = color(0,255,0);
  stella = '*';
}
public void show1(){
  stroke(color(210,105,30));
  fill(color(210,105,30));
  rect(300,550,200,120);        
  strokeWeight(3);                    //grandezza del bordo
  stroke(bordo);
  fill(colore);
  triangle(400,300,200,600,600,600);  //si creano i vari triangoli
  triangle(400,200,200,500,600,500);  //i numeri sono le cordinate dei vertici
  triangle(400,150,250,400,550,400);  //(cordx1, cordy1, cordx2, cordy2 etc.)
}
public void show2(){
  textSize(500);                      //grandezza del carattere da visualizzare a schermo
  stroke(color(255,255,0));           //stroke è il bordo, quindi si da il colore al bordo
  fill(color(255,255,0));             //il colore con cui si riempie 
  text(stella, 280, 440);             //(cosa va visualizzato, cordx, cordy)
}
}
