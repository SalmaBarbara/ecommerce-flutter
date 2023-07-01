import 'package:flutter/material.dart';
class Onboarding_screen extends StatelessWidget {
  const Onboarding_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: SingleChildScrollView(
            child: Column(children: [
               
            Text('TOKOTO ',style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              
            ),
                
            ),
            SizedBox(height: 10,),
              
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children :[
            Text('Weclome to',style: TextStyle( 
                      color:Colors.grey,
                      
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                
            Text('TOKOTO',
            style:TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
            Text('Let\'s shop!',style: TextStyle( 
                      color:Colors.grey,
                      
                      fontWeight: FontWeight.w400,
                    ),),
                  
                
            ]),
            SizedBox(height: 34,),
               
            Container(
              height:500,
              width:500 ,
              color: Colors.black,
            ),
             SizedBox(
              height: 30,
             ),  
               
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  
                  padding: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 12,
                  ),
                  decoration: BoxDecoration(
                    shape:BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange,
          
                                ),
                ),
                 SizedBox(
              width: 4,
             ),  
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                  ),
                ),
                 SizedBox(
              width: 4,
             ),  
                 Container(
                 padding: EdgeInsets.all(5), 
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
                 TextButton(
                        onPressed: printSalam,
                        child: Text('Continue'),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 130,
                            vertical: 4,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                      ),
                      ),
            
            ]
            
            ),
          ),
        ),
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