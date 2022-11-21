
class Mining{
static int temp=0;
static double speed=0;
static String status = "Mining is currently Off";

  static void startMining(){
    if(status=="Mining is currently Off") {
      status = "Mining is currently On";
    }else if(status=="Mining is currently On"){
      status = "Mining is currently Off";
    }
}

  static void stopMining(){
    status = "Off";
}

  static String getStatus(){
    return status;
  }






}