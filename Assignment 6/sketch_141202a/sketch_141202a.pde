QXuThingy QXFish;    // An instance of QXuThingy will be called QXFish
float SIZE;        // The SIZE of the instance that will be created


void setup() {
  size(600, 500);
  smooth();
  SIZE = 150;
  QXFish = new QXuThingy(SIZE);  // Create an instance with size, SIZE


} // end of setup


void draw() {
  background(255);

  // the creature moves
  QXFish.move();

  // display the creature
  QXFish.display();

} // end of draw



