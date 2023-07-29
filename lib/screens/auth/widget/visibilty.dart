import 'package:flutter/material.dart';
bool isVisible=false;
String password="";


class visibiltypassword extends StatefulWidget {
  const visibiltypassword({super.key}) ;

  @override

   _visibiltypasswordState createState() => _visibiltypasswordState();
}
class _visibiltypasswordState extends State {
  

  @override
  Widget build(BuildContext context) {

    return TextFormField(
                  onSaved: (String?newValue) {
                        password=newValue!;
                       },
                  validator:(String? value){
                    if(value!.length <8){
                      return "The length is < 8";
                    }else{
                      return null;
                    }
                    },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isVisible,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 25, ),
                          labelText: "Password",
                          hintText: "Enter your password",
                          suffixIcon: IconButton(onPressed: ChangeVisibiltyPassword, icon: Icon(isVisible?Icons.visibility_off:Icons.visibility),),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )
                        ) ,
                      );

  }
   void ChangeVisibiltyPassword(){
      isVisible = !isVisible;
      setState(() {
        
      });
    }

}