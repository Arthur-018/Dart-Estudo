import 'package:http/http.dart';
void main(){
  fetchRecipes();
}

fetchRecipes(){
 String url = "https://gist.githubusercontent.com/Arthur-018/0ff483bdcba5410dc1546a071b476994/raw/5448a223bc5e0732473734120bdae4fd2af4bf50/recipes.json";

 Future<Response> response = get(Uri.parse(url));
 print(response);
 response.then((Response responseFuture){
  print(responseFuture.body);
 },);
}