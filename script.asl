init
{
  refreshRate = 60;
  vars.prevPhase = TimerPhase.NotRunning;
    vars.load = features["load"].mean(100);  
}
startup{
  print("Fuck!");
}
update{

}
isLoading
{
  if(features["load"].average(500) >= 99.0){
      if(features["medal"].average(500) < 60.0){
          return true;
      }
  } 
  return false;
}



