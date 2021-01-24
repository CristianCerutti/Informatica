class Quadretto {              //git init si usa alla creazione della repository, git status tutti i file non tracciati etc., git add 
  private int r;
  private int c;
  
  public Quadretto(int r, int c) {
    this.r = r;
    this.c = c;
  }
  
  public boolean equals(Quadretto q) {
    return this.r == q.getR() && this.c == q.getC();
    
  }
  
  public int getR() {
    return r;
  }

  public int getC() {
    return c;
  }
  
  String toString(){
    return "r=" + r + " c=" + c;
  }
}
