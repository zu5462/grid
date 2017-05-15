int grid = 50; // change this number to 20 or 50, etc., if you want fewer grid lines
int fontsize =16;

PImage img;

void setup(){
img = loadImage("sea.jpg");

size (800,800);
background(img);
Drawgrid();
}

void draw(){
if(keyPressed){
  if(key=='r'||key=='R'){
 reset();
  }
}

}

void mouseReleased(){
  if (mouseButton == LEFT){
 drawX(); 
}else if (mouseButton == RIGHT){
drawO();
}
}

void reset(){
img = loadImage("sea.jpg");
background(img);
Drawgrid();
}

void drawO(){
  fill(255);
    if(mouseX%grid>=grid/2){
      if(mouseY%grid>=grid/2){
      text("O",mouseX/grid*grid+grid-fontsize,mouseY/grid*grid+grid+fontsize);
    }else{
      text("O",mouseX/grid*grid+grid-fontsize,mouseY/grid*grid+fontsize);
    } 
    }else{
    if(mouseY%grid>=grid/2){
      text("O",mouseX/grid*grid-fontsize,mouseY/grid*grid+grid+fontsize);
    }else{
      text("O",mouseX/grid*grid-fontsize,mouseY/grid*grid+fontsize);
    }
     }
   
 }

void drawX(){
  fill(255);
  textSize(fontsize*2);
  if(mouseX%grid>=grid/2){
    if(mouseY%grid>=grid/2){
      text("X",mouseX/grid*grid+grid-fontsize,mouseY/grid*grid+grid+fontsize);
    }else{
      text("X",mouseX/grid*grid+grid-fontsize,mouseY/grid*grid+fontsize);
    } 
  }else{
    if(mouseY%grid>=grid/2){
      text("X",mouseX/grid*grid-fontsize,mouseY/grid*grid+grid+fontsize);
    }else{
      text("X",mouseX/grid*grid-fontsize,mouseY/grid*grid+fontsize);
    }
  }
}


void Drawgrid(){
  stroke(255);
  for (int i = 0; i < width; i+=grid) {
    line (i, 0, i, height);
  }
  for (int i = 0; i < height; i+=grid) {
    line (0, i, width, i);
  }
  for (int i = 0; i < height; i++) {
    fill(255);
    textSize(16);
    text(height/grid/2-i,width/2+5,i*grid+20);
    
}
   for (int i = 0; i < width; i++) {
    if(i-width/grid/2!=0){
    fill(255);
    textSize(16);
    text(i-width/grid/2,i*grid+5,height/2-5);
  }
   }
};