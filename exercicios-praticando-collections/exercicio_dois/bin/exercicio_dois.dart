void main(){
  List<int> idsFuncionarios =[1, 2, 3, 4, 5, 6, 7, 8, 9];

  for(int id in idsFuncionarios){
    if(id % 2 == 0){
      print(id);
    }
  }
}