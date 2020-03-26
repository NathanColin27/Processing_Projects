//GAME OF LIFE

int cellSize =  5;

float probabilityOfAlive = 15;

color alive = color(200, 0, 200);
color dead = color(0); 

int[][] cells;
int[][] cellsBuffer;

float interval = 100;
float lastRecordedTime = 0;

boolean pause = false;

void setup() {
  size (900, 600);

  cells = new int[width/cellSize][height/cellSize];
  cellsBuffer = new int[width/cellSize][height/cellSize];
  stroke(50);



  for (int x = 0; x < width/cellSize; x++) {
    for (int y = 0; y < height/cellSize; y++) {
      float state = random(100);
      if (state > probabilityOfAlive ) {
        state = 0;
      } else {
        state = 1;
      }
      cells[x][y] = int(state);
    }
  }
}

void draw() {

  for (int x = 0; x < width/cellSize; x++) {
    for (int y = 0; y < height/cellSize; y++) { 

      if (cells[x][y]== 1) {
        fill(alive);
      } else if (cells[x][y] == 0) {
        fill(dead);
      }
      rect(x*cellSize, y*cellSize, cellSize, cellSize);
    }
  }



  if (pause && mousePressed) {

    int xCellOver = int(map(mouseX, 0, width, 0, width/cellSize));
    xCellOver = constrain(xCellOver, 0, width/cellSize-1);
    int yCellOver = int(map(mouseY, 0, height, 0, height/cellSize));
    yCellOver = constrain(yCellOver, 0, height/cellSize-1);
    
    if(cellsBuffer[xCellOver][yCellOver] == 1) {
    cells[xCellOver][yCellOver] = 0;
    fill(dead);
    
    }
    else  {
     
    cells[xCellOver][yCellOver] = 1;
    fill(alive);
    }
  }
    else if ( pause && !mousePressed) {
    for (int x=0; x<width/cellSize; x++) {
      for (int y=0; y<height/cellSize; y++) {
        cellsBuffer[x][y] = cells[x][y];
      }
    
    
    
    }
  }

  if (millis() - lastRecordedTime > interval) {
    if (!pause) {
      tour();
      lastRecordedTime = millis();
    }
  }
}

void tour() {
  for (int x = 0; x < width/cellSize; x++) {
    for (int y = 0; y < height/cellSize; y++) { 
      cellsBuffer[x][y] = cells[x][y];
    }
  }
  for (int x = 0; x < width/cellSize; x++) {
    for (int y = 0; y < height/cellSize; y++) { 
      int neighbours = 0;
      for ( int xx = x - 1; xx <= x + 1; xx++) {
        for (int yy = y - 1; yy <= y + 1; yy++) {
          if (((xx >= 0) && (xx < width/cellSize)) && ((yy >= 0) && (yy < height/cellSize))) {
            if (!((xx==x) &&(yy==y))) {
              if (cellsBuffer[xx][yy]==1) {
                neighbours++;
              }//end of if
            }//end of if
          }//end of if
        }// end of yy
      }//end of xx
      if (cellsBuffer[x][y]==1) {
        if (neighbours < 2 || neighbours > 3) {
          cells[x][y]= 0;
        }
      } else {
        if ( neighbours == 3) {
          cells[x][y] = 1;
        }
      }
    }
  }
}




void keyPressed() {
  if (key=='r' || key=='R') {
    for (int x = 0; x < width/cellSize; x++) {
      for (int y = 0; y < height/cellSize; y++) {
        float state = random(100);
        if (state > probabilityOfAlive ) {
          state = 0;
        } else {
          state = 1;
        }
        cells[x][y] = int(state);
      }
    }
  }
  if (key==' ') {
    pause = !pause;
  }
  if (key=='c' || key=='C') {
    for (int x = 0; x < width/cellSize; x++) {
      for (int y = 0; y < height/cellSize; y++) {
        cells[x][y] = 0;
      }
    }
  }
  if (key == CODED) {
    if (keyCode== UP) {
      interval /= 2;
      println(interval);
    }
    if (keyCode == DOWN) {
      interval *= 2;
      println(interval);
    }
  }
}
