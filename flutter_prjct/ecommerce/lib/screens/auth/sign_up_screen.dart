import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body:SafeArea(
         child: Padding(
          padding:EdgeInsets.all(35),
           child:SingleChildScrollView(
            physics: BouncingScrollPhysics(),
             child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new_rounded,size: 16,color:Colors.grey,),
                  Text('Sign Up',
                  style: 
                  TextStyle(
                  color:Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                  ),),
                  Icon(Icons.arrow_back_ios_new_rounded,size: 16,color:Colors.white,),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Text('Register account',
              style:TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                ),
              ),
               
              SizedBox(
                height: 12,
              ),
              Text('Complete your details or continue`\nwith social media',
              style: TextStyle(
                color:Colors.grey,
                height: 1.5,
                fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email ",
                  suffixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )
                ) ,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  suffixIcon: Icon(Icons.lock_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )
                ) ,
              ),
              SizedBox(
                height: 20,
              ),
             TextFormField(
              obscureText: true,
                decoration: InputDecoration(
                  labelText: "Confirme Password",
                  hintText: "Confirme your Password",
                  suffixIcon: Icon(Icons.lock_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )
                ) ,
              ),
              SizedBox(
                height: 20,
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
              SizedBox(
                height:60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 35,
                    height: 35, 
                   
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ) ,
                    alignment: Alignment.center,
                    child: SvgPicture.asset("assets/icons/google.svg",
                    height: 20,
                    width: 20,),
                          
                  ),
                  SizedBox(
                    width:30 ,
                  ),
                  Container(
                    width: 35,
                    height: 35, 
                     decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    
                    ) ,
                    alignment: Alignment.center,                   
                    
                  //margin: EdgeInsets.all(10),
                            child: SvgPicture.asset( "assets/icons/facebook.svg",
                               width: 20,
                               height: 20,
                            ),
                          
                          
                   
                  ),
                  SizedBox(
                    width:30 ,
                  ),
                  Container(
                    width: 35,
                    height: 35, 
                     decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ) ,
                    alignment: Alignment.center,
                    child: Container(
                            //alignment: Alignment.center,
                           // margin: EdgeInsets.all(10),
                            child: SvgPicture.asset( "assets/icons/twitter.svg",
                              width: 20,
                              height: 20,),
                          ),
                    
                  ),
                ],
              ),
              Text('By continuing you confirm that you agree with our \nTerms and Conditions',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
              ),
              ],
              ),
           ),
         ),
    ),
    );
  
  }
  
   void printSalam(){
     print("Salam");
    }

}