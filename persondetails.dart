import 'package:flutter/material.dart';
import 'package:ui/display.dart';
import 'package:ui/person.dart';

class persondetails extends StatefulWidget {
  const persondetails({ Key? key }) : super(key: key);

  @override
  State<persondetails> createState() => _persondetailsState();
}

class _persondetailsState extends State<persondetails> {
  final person_list = Person.personInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: PageView.builder(
        
          itemCount: person_list.length,
          itemBuilder: (context, index) {
            var person = person_list[index];
            return Padding(
              padding:EdgeInsets.all(5),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=> display(
                      name: person.name,
                      address: person.address,
                      img: person.img,
                      persondisplay: person,
                    )
                    ));
                },
                child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10), 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
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
            
          }),
    
    );
  }
}