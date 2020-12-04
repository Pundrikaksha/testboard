import 'package:flutter/material.dart';
import 'package:auto_size_text_field/auto_size_text_field.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.orange[400],
        body: TextBoard(),
      ) ,
    );
  }
}
class TextBoard extends StatefulWidget {


  @override
  _TextBoardState createState() => _TextBoardState();
}

class _TextBoardState extends State<TextBoard> {
  TextEditingController Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeTextField(
        controller:Controller,
        style: TextStyle(fontSize: 75,color: Colors.white )

       , cursorColor: Colors.amber,
        minFontSize: 10,
        maxLines: 3,
        textAlign: TextAlign.center,

      ),
    );
}}
