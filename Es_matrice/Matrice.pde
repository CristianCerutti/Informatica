class Matrice {
  private float altezza, larghezza;
  private int righe, colonne;
  private static final color blu = #0000ff;
  private static final color rosso = #ff0000;
  private color colore;
  private float rand = 2;
  private ListaQuadretti lQuadretti;
  
  public Matrice(float altezza, float larghezza, int righe, int colonne) {
    this.altezza=altezza;
    this.larghezza=larghezza;
    this.righe=righe;
    this.colonne=colonne;
    
    this.lQuadretti = new ListaQuadretti(this);
  }
  
  public float larghezzaQuadretto() {
    return larghezza / colonne;
  }

  public float altezzaQuadretto() {
    return altezza / righe;
  }  
  
  public void disegna() {
    float lq = larghezzaQuadretto();
    float hq = altezzaQuadretto();
    
    // disegna griglia
    for(int i=0; i<=righe; i++) {
      line(0, hq*i, larghezza, hq*i);
    }
    for(int i=0; i<=colonne; i++) {
      line(lq*i, 0, hq*i, altezza);
    }
    
    lQuadretti.disegna();
  }
  
  public void disegnaQuadretto(Quadretto q){
    float hq = this.altezzaQuadretto();
    float lq = this.larghezzaQuadretto();
    if(frameCount % 30 == 0){
      
      if(rand > 1){
        colore = blu;
        rand = 0;
      }
      else{
        colore = rosso;
        rand = 2;
      }
    }
    fill(colore);
    rect(q.getC() * lq, q.getR() * hq, lq, hq);
  }
  
  public void clickMouse(float x, float y){
    int r = (int) (y * this.getRighe() / this.getAltezza());
    int c = (int) (x * this.getColonne() / this.getLarghezza());
    Quadretto q = new Quadretto(r, c);
    lQuadretti.aggiungiQuadretto(q);
  }
  
  public float getLarghezza() {
    return larghezza;
  }

  public float getAltezza() {
    return altezza;
  }
  
  public int getColonne() {
    return colonne;
  }
  
  public int getRighe() {
    return righe;
  }
}
