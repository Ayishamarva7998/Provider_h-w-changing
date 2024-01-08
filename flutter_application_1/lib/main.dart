import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  MyApp({super.key});
  @override
  Widget build (BuildContext context){
    return ChangeNotifierProvider(create: (context) => ContainerProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
    
        home:Screen(
    
        ) ,
      ),
    );
  }
}