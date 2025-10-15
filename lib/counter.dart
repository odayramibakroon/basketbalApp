import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
   final String counter;
  const Counter({super.key, required this.counter});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Container(
 
      child: Text(" ${widget.counter}",style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,),));
  }
}
