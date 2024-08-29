import 'package:flutter/material.dart';
import 'package:studywork/assignment.dart';
//import 'package:studywork/assignment.dart';
//import 'package:studywork/test.dart';

void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{
    const MyApp({super.key});
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '1st Work',
        home:  NewScreen(),
      );
    }
}