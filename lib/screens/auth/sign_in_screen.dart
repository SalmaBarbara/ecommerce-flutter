import 'package:ecommerce/screens/auth/widget/cheackbox.dart';
import 'package:ecommerce/screens/auth/widget/visibilty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

var formKey=GlobalKey<FormState>();
String email="",password="";
bool isChecked=false;

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(35),
          child:Form(
            key: formKey,
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
                       onSaved: (String?newValue) {
                        email=newValue!;
                       },
                        validator:(String? value){
                           final bool emailValid = 
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value!);
                     if(!emailValid){
                      return "Email not valid ";
                     }else{
                      return null ;
                     }

                    //if(value!.length <5){
                      //return "The length is < 5";
                    //}else if (!value.contains("@")){
                      //return "Email must contain @";
                    //}else if (!value.contains(".")){
                      //return "Email must contain .";
                    //}else{
                      //return null;
                    //}
                  },
                       keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 25, ),
                          labelText: "Email",
                          hintText: "Enter your email",
                          suffixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )
                        ) ,
                      ),
                SizedBox(height: 20,),
                visibiltypassword(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ Row(
                  children: [
                    StatefulCheckBox(),
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
              
                SizedBox(height: 20,)  ,
                
              TextButton(
                        onPressed: ()=>signIn(context),
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
              SizedBox(height: 16,),
                  
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context,"/SignUp");
                    },
                    child: Text('Sign up',style: TextStyle(
                        color:Colors.orange,
                        height: 1.5,
                        fontWeight: FontWeight.w400
                      ),
                      ),
                  ),
                    
                    
                    
                  ]
              ),
              ],
                    
              ),
            ),
          ),
        ),
      ),
    );
  
  }
  
   void signIn(context){
     if(formKey.currentState!.validate()){
      formKey.currentState!.save();
      print(email);
      print(password);
      
       // Within the `FirstRoute` widget

  Navigator.pushNamed(
    context,"/home");
}

     }
       }
   

