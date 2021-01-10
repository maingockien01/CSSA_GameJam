class Player extends Model {
  
  //Position of the runner
  float posX , posY;
  
  //Constant Speed of the runner
  //Size of the runner, also used for collision
  //jumping speed of the runner
  float speed  = 64;
  float size = 64;
  private float pHeight = size;
  private float pWidth = size;
  float jumpSpeed = 0.7;
  float jumpCeil = 400; // highest jump from the center of the model
  final float jumpFloor = posY; // Initial position of the model
  
  //Initially is runner is alive
  boolean isAlive = true;
  
  public Player(float[] position){
    super(position);
  }
  //Model position when the game starts
  Player(){
   posX =  width/4;
   posY = height * (5/6);
  }
  
  //Function of setting the model position
  Player(float posX, float posY){
   this.posX = posX;
   this.posY = posY;
  }
  
  //Jumping function
  void jump(){
    while(posY >= jumpCeil){//While the model is below the jumping height
       posY -= jumpSpeed;
    } 
    // For coming backdown
    // Will land at its initial position
    while(posY <= jumpFloor){
     posY+= jumpSpeed; 
    }
  }
  
  boolean isJumping(){
   boolean jumping  = false;
   if(posY < jumpFloor && posY >= jumpCeil){
     jumping = true;
   }else{
    jumping = false; 
   }
   
   return jumping;
  }
  
  //Jumps when space is pressed
<<<<<<< HEAD
  //void keyPressed(){
  // if(key == 'SPACE'){
  //  jump(); 
  // }
  //}
=======
  void keyPressed(){
   if(key == 'SPACE'){
    jump(); 
   }
  }
  
  float getPlayerX(){
   return posX; 
  }
  
  float getHeight(){
   return pHeight; 
  }
  
  float getWidth(){
   return pWidth; 
  }
>>>>>>> e52963d99bbf5107cdb5b584bf1ce0b3241ae8cd
}
