
import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:Center(child: Column(
      children: [
        Text("home sceen"
        ),
        TextButton(onPressed:(){  Navigator.pop(context);} , child: Text("go back"))
      ],
    ),
    ) ,
    );
    
  }
}

