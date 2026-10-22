import 'package:http/http.dart';
import 'dart:convert';

import 'package:main/api_key.dart';

void main(){
 sendDataAsync({
  "id": "New001",
  "name": "flutter",
  "lastName": "Dart",
  "balance": 5000,
 });
}

requestData(){
  String url = "https://gist.githubusercontent.com/Arthur-018/9ffd6eb6db1b3a6b8b548d5bb8dd6688/raw/8058ac09e8b340e1ca83551fd03767372059460b/accounts.json";
Future<Response> futureResponse = get(Uri.parse(url));
print(futureResponse);
futureResponse.then((Response response) {
   print(response);
   print(response.body);
   List<dynamic> listAccounts = json.decode(response.body);
   Map<String, dynamic> mapCarla = listAccounts.firstWhere((element) => element["name"] == "Carla",);
   print(mapCarla["balance"]);

},);

print('Ultima coisa a acontecer na funcao');
}

Future<List<dynamic>> requestDataAsync() async {
  String url = "https://gist.githubusercontent.com/Arthur-018/9ffd6eb6db1b3a6b8b548d5bb8dd6688/raw/8058ac09e8b340e1ca83551fd03767372059460b/accounts.json";
  Response response = await get(Uri.parse(url));
  return json.decode(response.body);
}

sendDataAsync(Map<String, dynamic> mapAccount) async{
  List<dynamic> listAccounts = await requestDataAsync();
  listAccounts.add(mapAccount);
  String content = json.encode(listAccounts);

   String url = "https://api.github.com/gists/9ffd6eb6db1b3a6b8b548d5bb8dd6688";

 Response response = await post(Uri.parse(url), 
 headers: {
  "Authorization" : "Bearer $githubApiKey"
 },
  body: json.encode({
    "description" : "account.json",
    "public" : true,
    "files" : {
      "accounts.json" : {
        "content" : content,
      }
    }
  }),);
 print(response.body);
}
