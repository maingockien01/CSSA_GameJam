

//This class will contain the model, the data of the game
//Example: it would contain the position of player, ...
class Game extends Model {

  final float SPEED_UP_RATE = 1.5;
  final int SPEED_UP_INTERVAL = 60 * 5; //60fps * 5 sec

  float gameSpeed;

  int time;

  boolean isGameRunning;

  //Game objects
  ObstacleList obstacles;
  Supporter supporter;

  public Game () {
    initGame ();
  }

  private void initGame () {
    gameSpeed = 1;
    time = 0;

    obstacles = new ObstacleList ();
    supporter = new Supporter (new float [] {0, height-150});
  }

  public float[] getPosition () {
    return new float[0];
  };
}
