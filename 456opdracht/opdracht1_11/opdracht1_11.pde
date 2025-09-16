int steen1 = 0;
int steen2 = 0;
int steen3 = 0;
String resultaat = " HITS!";
String resultaatMiss = "MISS!"; 
if (steen1 == 0 && steen2 == 0 && steen3 == 0){
  print("CRITICAL MISS...");
} else if (steen1 == 0 || steen2 == 0 || steen3 == 0){
  println(resultaatMiss);
} else if (steen1 == 6 && steen2 == 6 && steen3 == 6){
  println(steen1 + steen2 + steen3 + " CRITICAL HITS!!!!");
} else if (steen1 <= 6 && steen2 <=6 && steen3 <= 6){
  println(steen1 + steen2 + steen3 + resultaat);
} 
