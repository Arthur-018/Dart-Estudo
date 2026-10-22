import 'dart:async';
import 'dart:io';

import 'package:http/http.dart';
import 'dart:convert';

import 'package:main/api_key.dart';

StreamController<String> streamController = StreamController<String>();

void main(){
 StreamSubscription streamSubscription = streamController.stream.listen((String info){
    print(info);
  },
 );
 requestData();
 requestDataAsync();
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
    futureResponse.then((Response response) {
      streamController.add("${DateTime.now()} | Requisicao de leitura (usando then).");
},);

}

Future<List<dynamic>> requestDataAsync() async {
  String url = "https://gist.githubusercontent.com/Arthur-018/9ffd6eb6db1b3a6b8b548d5bb8dd6688/raw/8058ac09e8b340e1ca83551fd03767372059460b/accounts.json";
  Response response = await get(Uri.parse(url));
  streamController.add("${DateTime.now()} | Requisicao de leitura.");

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

  if(response.statusCode.toString()[0] == "2"){
      streamController.add("${DateTime.now()} | Requisicao de adição bem sucedida (${mapAccount["name"]})");
  } else {
      streamController.add("${DateTime.now()} | Requisicao falhou(${mapAccount["name"]})");

  }
}
