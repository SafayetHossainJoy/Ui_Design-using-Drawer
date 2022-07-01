import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ui/person.dart';
import 'package:ui/persondetails.dart';

class GridviewDemo extends StatefulWidget {
  const GridviewDemo({ Key? key }) : super(key: key);

  @override
  State<GridviewDemo> createState() => _GridviewDemoState();
}

class _GridviewDemoState extends State<GridviewDemo> {
  final person_list = Person.personInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
       children: List.generate(20, ((index) {

         return PageView.builder(
        
          itemCount: person_list.length,
          itemBuilder: (context, index) {
            var person = person_list[index];
            return Padding(
              padding:EdgeInsets.all(5),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=> persondetails(
                      
                    )
                    ));
                },
                child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10), 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      person.img,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
              ),
            );
            
          });
       })
      ),
      
      ),  
    );
  }
}