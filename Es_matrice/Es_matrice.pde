private final static color grigio = #eeeeee;
Matrice m;
public void setup() {
  size(700, 700);
  m = new Matrice(width, height, 30, 30);
}

public void draw() {
  background(grigio);
  m.disegna();
}

public void mousePressed() {
  m.clickMouse(mouseX, mouseY);
}
