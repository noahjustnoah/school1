void setup() {
  String text1 = "Hoi ";
  String text2 = "ik ";
  String text3 = "ben ";
  String text4 = "Noah";
  
  String eindText = samenText(text1, text2, text3, text4);
  println(eindText);
}

String samenText(String a, String b, String c, String d){
  return a+b+c+d;
}
