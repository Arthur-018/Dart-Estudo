void main(){
  List<String> produtosCarrinho = ["arroz", "feijão", "leite", "açúcar"]; 

  List<String> produtosVisitados = ["arroz", "feijão", "macarrão", "leite", "açúcar"]; 

 for(String visitado in produtosVisitados){
    if(!produtosCarrinho.contains(visitado)){
      print("Produto nao encontrado no carrinho $visitado");
    }
 }
 
}