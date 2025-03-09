import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(TestApp());
}

//Soyut sınıfları yazmak gerekiyor.
class TestApp extends StatelessWidget{
  const TestApp({super.key});
  
  

  @override
  Widget build(BuildContext context) {

//Home'a scaffold girince beyaz btemiz sayfa verir. Default olarak siyah gelir.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test App"),
          backgroundColor: Colors.blue,
        ),
        body: Text("Merhaba Flutter"),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          debugPrint("Buton tıklandı");
        },
        backgroundColor: Colors.deepPurple,
          child: Icon(Icons.add_a_photo_outlined),
        ),
      ),
      
    );
  }

}