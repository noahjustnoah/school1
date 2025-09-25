int teller = 0;
boolean doorgaan = true;

int a = 0;
int b = 1;

while(doorgaan){
  if(teller >= 47) {
    doorgaan = false;
  }else{
    println(a);
    int volgende = a + b;
    a = b;
    b = volgende;
    teller++;
  }
}
