import 'package:http/http.dart';

void main(){
 requestData();
}

requestData(){
  String url = "https://gist.githubusercontent.com/Arthur-018/9ffd6eb6db1b3a6b8b548d5bb8dd6688/raw/8058ac09e8b340e1ca83551fd03767372059460b/accounts.json";
Future<Response> futureResponse = get(Uri.parse(url));
print(futureResponse);
futureResponse.then((Response response) {
   print(response);
   print(response.body);
},);
}
