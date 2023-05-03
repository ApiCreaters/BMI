import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pagess extends StatefulWidget{
  @override
  State<Pagess> createState() => _PageState();
}

class _PageState extends State<Pagess> {
  double left = 0.0;
  double top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("graddder"),
      ),
      body: SafeArea(
        child: Container(
          child: Positioned(
            left: left,
            top: top,
            child: GestureDetector(
              onPanUpdate: (details){
                setState(() {
                left = max(0, left + details.delta.dx);
                top = max(0,top + details.delta.dy);
                });
              },
              onTap: (){

              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(50)
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}