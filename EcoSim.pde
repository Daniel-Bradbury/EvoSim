int cellCount=0;

int frame;
boolean sflag=false;
int cellCap=200000;
Cell[] cell = new Cell[cellCap];
void setup() {
  frameRate(30)
  println("Loading simulation...");
  for (int i=0; i<cellCap; i++) {
    cell[i] = new Cell();
  }
}

class Cell {
  int x;
  int y;
  boolean live;
  int food;
  void cellOffspring(int cx, int cy) {
    for (int i=0; i<cellCap; i++) {
      if (cell[i].live==false) {
        cell[i].live=true;
        cell[i].x=cx;
        cell[i].y=cy;
        break;
      }
    }
  }
  void cycle() {
    // Cell cycle
    if(food<=0) {
      if(live==true) {
      live=false;
    }
  }
    
    if (live==true) {
      food-=1;
      x+=int(random(2)*2-2);
      y+=int(random(2)*2-2);
      if (world[x][y]==1) {
        this.cellOffspring(x, y);
        world[x][y]=0;
      }
    } else {
      food=60;
    }
  }

  void cellCreate(int cx, int cy) {
    this.live=true;
    this.x=cx;
    this.y=cy;
    this.food=120;
  }
}
int[][] world = new int[10000][10000];
void draw() {
  if (sflag==false) {
    cell[0].cellCreate(5000, 5000);
    for (int x=0; x<10000; x++) {
    for (int y=0; y<10000; y++) {
      if (random(10)>=9) {
        world[x][y]=1;
      }
    }
  }

    sflag=true;
  }
  cellCount=0;
  for (int i=0;i<cellCap;i++) {
  cell[i].cycle();
  if(cell[i].live==true) {
    cellCount+=1;
  }
  }
    frame+=1;
  println(frame+" ticks into the universe... ("+frameRate+" ticks per second)");
  println(cellCount+" cells currently alive");
if (cellCount==0) {
    println("Every living organism has died...");
  }
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
}
