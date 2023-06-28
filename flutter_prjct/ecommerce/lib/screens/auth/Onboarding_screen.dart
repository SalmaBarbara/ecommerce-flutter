import 'package:flutter/material.dart';
class Onboarding_screen extends StatelessWidget {
  const Onboarding_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
     
      Text('TOKOTO '),
    
      Row(child :[
      Text('Weclome to'),

      Text('TOKOTO'),
      Text('Let\'s shop!');

      ]),
     
      Container(
        height:500,
        width:500 ,
        color: Colors.black,
      ),
         
     
      Row(
        children: [
          Container(
            width: 14,
            height: 14, 
            color:  Colors.red,
          ),
          Container(
            width: 14,
            height: 14, 
            color:  Colors.green,
          ),
          Container(
            width: 14,
            height: 14, 
            color:  Colors.blue,
          ),
        ],
      ),
       TextButton(
        onPressed: printSalam,
        child: Text('Continue'),
      ),
      
      ]
      
      ),
    );
  
  }
  
   void printSalam(){
     print("Salam");
    }
    void ChangeCheckBoxState(bool? value){
      print('ChangeCheckBoxState');
    }

}