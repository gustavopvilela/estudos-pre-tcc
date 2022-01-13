main(){
  int i = 1;
  
  while(i <= 10){
    print("${i} loop.");
    i++;
  }

  // ============================

  bool isTrue = true;
  i = 1;

  while (isTrue){
    print("${i} - ${isTrue}");
    i++;

    if(i > 10){
      isTrue = false;
    }
  }
}