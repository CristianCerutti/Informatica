class ListaQuadretti {
  private Quadretto[] quadretti;
  private Matrice griglia;
  private int quanti;
  
  
  public ListaQuadretti(Matrice griglia) {
    this.griglia = griglia;
    
    quanti = 0;
    quadretti = new Quadretto[griglia.getColonne()*griglia.getRighe()];    
  } 
  
  public void aggiungiQuadretto(Quadretto q) {
    if (q == null){
      return;
    }
    int pos = this.ricercaQuadretto(q);
    if(pos == -1) {
      System.out.println("aggiunto " +q.toString());
      quadretti[quanti++] = q;          
    }else {
      System.out.println("rimosso " +q.toString());
      this.rimuoviQuadretto(pos);
    }
    
  }
  
  public void rimuoviQuadretto(int pos){
    for (int i = pos; i<quanti-1; i++){
      quadretti[i] = quadretti[i+1];
    }
    quanti--;
  }
  
  public int ricercaQuadretto(Quadretto q) {
    int i = 0;
    int pos = -1;
    while (i < quanti && pos == -1) {
      if (quadretti[i].equals(q)) {
        pos = i; 
      }
      i++;      
    }    
    return pos;    
  }
  
  public void disegna(){
    for(int i = 0; i< quanti; i++){
      griglia.disegnaQuadretto(quadretti[i]);
    }
    
  }
}
