import 'dart:convert';

import 'package:http/http.dart' as htttp;

import 'DataType.dart';

class AllLernFutures {
// getjson data from wep
  Future firestgetdata(String url)async {
    String oo='777';
    await htttp.get(url).then((v) {

      //print(json.decode(v.body));
      String data=json.decode(v.body)['title'];
      DataType i=DataType.fromjson(json.decode(v.body));
oo=i.body;
    }).catchError((e) {

    });
return oo;
  }
 Future<String> witing ()async{
    String oo='777';
    await Future.delayed(Duration(seconds: 5),(){
      print('oooo');
oo='i will do it';
    });
return oo;
}

}