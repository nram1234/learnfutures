import 'package:flutter/material.dart';
import 'AllFuturesUse.dart';
import 'dart:async';
import 'package:http/http.dart' as htttp;
import 'dart:convert';
import 'DataType.dart';

class LernFutures extends StatefulWidget {
  @override
  _LernState createState() => _LernState();
}

class _LernState extends State<LernFutures> {
  @override
  Widget build(BuildContext context) {
    AllLernFutures i = AllLernFutures();
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'LernFutures',
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home2'),
            backgroundColor: Colors.indigo,
          )
        ]),
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(onPressed: () {
                i.witing();
              }),
              
              
              
              //start data in initialData will 
              FutureBuilder(initialData:  '333',
                  future:i.witing(),
                  builder: (context, snopshot) {

                    //String data=json.decode(snopshot.data)['title'];
                    //DataType i=DataType.fromjson(json.decode(snopshot.body));
                    print(snopshot.data);

                    return Text(  snopshot.data ); //(snopshot!=null)? Text(snopshot.data ): Text('8888888');
                  }),

              FutureBuilder(initialData: 'getdata.....',
                  future:i.firestgetdata('https://jsonplaceholder.typicode.com/posts/1'),
                  builder: (context, snopshot) {

                  //   String data=json.decode(snopshot.data)['title'];
                  // DataType i=DataType.fromjson(json.decode(snopshot.data));
                  //  print(snopshot.data);

                    return Text(  snopshot.data ); //(snopshot!=null)? Text(snopshot.data ): Text('8888888');
                  }),  ],
          ),
        ),
      ),
    );
  }
  Future<List<String>> witing () {
    List<String>daa=List<String>();
      Future.delayed(Duration(seconds: 5),(){
      print('oooo');

    });

  }
}
