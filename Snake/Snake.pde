ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();
int w = 30, h = 30, bs = 20, dir = 2, applex = 12, appley = 10;
int[] dx = {0,0,1,-1}, dy = {1,-1,0,0};    //sotto, sopra, destra, sinistra
boolean gameover = false;
void setup(){
  size(600,600);
  x.add(5);
  y.add(5);
}
void draw(){
  background(255);   
  for (int i = 0; i < w; i++) line(i*bs, 0, i*bs, height);
  for (int i = 0; i < h; i++) line(0, i*bs, width, i*bs);    //imposto la griglia
  for(int i = 0; i < x.size(); i++){
    fill(0,255,0);
    rect(x.get(i)*bs, y.get(i)*bs, bs, bs);
    }
    if (!gameover){
    fill(255,0,0);
    rect(applex*bs, appley*bs, bs, bs);
    if(frameCount%5==0){
      x.add(0,x.get(0) + dx[dir]);
      y.add(0,y.get(0) + dy[dir]);
      if(x.get(0) < 0 || y.get(0) < 0 || x.get(0) >= w || y.get(0) >= h) gameover = true;
      if(x.get(0) == applex && y.get(0) == appley){ //verifica del contatto con la mela
        applex = (int)random(0,w);    //spawn random della mela
        appley = (int)random(0,h);
      }
      else{
      x.remove(x.size()-1);
      y.remove(y.size()-1);
      }
    }
    }
    }
void keyPressed() {
  int newdir = key=='s' ? 0 : (key=='w' ? 1 : (key =='d' ? 2 : (key=='a' ? 3 : -1)));  //per verificare la pressione di un tasto
  if (newdir !=  -1) dir = newdir;
}
