void main(){
  List<String> produtos =["maçã", "banana", "maçã", "laranja", "maçã"];

  for(String produto in produtos){
    if(produto == 'maçã'){
     print(produtos.where((p) => p == 'maçã').length);
    }
  }
}