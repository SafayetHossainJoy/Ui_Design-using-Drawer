import 'package:flutter/material.dart';
import 'package:ui/person.dart';

class display extends StatefulWidget {
   display({ Key? key,this.name,this.address,this.img,this.persondisplay }) : super(key: key);
  String? name;
  String? address;
  String? img;
  Person? persondisplay;

  @override
  State<display> createState() => _displayState();
}

class _displayState extends State<display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(widget.persondisplay!.name+ " Info"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Image.network(widget.persondisplay!.img,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Person Name: "+widget.persondisplay!.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
            Text("Location: "+widget.persondisplay!.address,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
          ],
        ),
    );
  }
}