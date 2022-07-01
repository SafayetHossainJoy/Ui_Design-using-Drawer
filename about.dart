import 'dart:ui';

import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({ Key? key }) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/j1.jpg',),
               SizedBox(height: 20,),
               Text(" Safayet Hossain \n Department of CSE \n App developer \n World University of Bangladesh",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
        ),
      )
    );
  }
}