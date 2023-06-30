import 'package:flutter/material.dart';
class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(35),
          child: SingleChildScrollView(
            child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios_new_rounded,size: 16,color:Colors.grey,),      
              Text('Sign In',
                style:          TextStyle(
                        color:Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                        ),
                        ),
              Icon(Icons.arrow_back_ios_new_rounded,size: 16,color:Colors.white,),
              ],
            ),
            Text('Welcome Back ', 
            style:TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    ),),
            Text('Sign in with your email and password  `\nor continue with social media', 
            style: TextStyle(
                    color:Colors.grey,
                    height: 1.5,
                    fontWeight: FontWeight.w400
                  ),
                  textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 45,),
              TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter your emil",
                        suffixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        )
                      ) ,
                    ),
              SizedBox(height: 20,),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ Row(
                children: [
                  Checkbox(value: true, onChanged: ChangeCheckBoxState),
                  Text('Remember me',style:TextStyle(
                    color: Colors.grey,
                  
                  )),
                  
                  ],),
                  Text('Forgot Password',style: 
                  TextStyle(
                    decoration:TextDecoration.underline,
                    color: Colors.grey,
                  
                   )
                   ),
                   ]
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
                        ),
              ],
            ),
                
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children :[ Text(
                'Don\'t have an account? ',
                   style: TextStyle(
                    color:Colors.grey,
                    height: 1.5,
                    fontWeight: FontWeight.w400
                  ),)
                  ,
                Text('Sign in',style: TextStyle(
                    color:Colors.orange,
                    height: 1.5,
                    fontWeight: FontWeight.w400
                  ),
                  ),
                  
                  
                  
                ]
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
    void ChangeCheckBoxState(bool? value){
      print('ChangeCheckBoxState');
    }

}