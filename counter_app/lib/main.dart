import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home:Scaffold(
    appBar:AppBar(
      title:const Text("CounterApp"),
    ),
    body:const Counter(),
  ),
));



class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("$count",style:const  TextStyle(fontSize:70),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          FloatingActionButton.extended(onPressed: (){
            setState(() {
              count--;
            });
          },label:const Text("Subtract"), icon:const Icon(Icons.remove)),
          FloatingActionButton.extended(onPressed: (){
            setState(() {
              count++;
            });
          }, label:const Text("Add"), icon:const Icon(Icons.add))
        ],)
      ],
    );
  }
}