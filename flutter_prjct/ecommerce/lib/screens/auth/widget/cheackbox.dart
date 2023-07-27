import 'package:flutter/material.dart';
bool isChecked=false;


class StatefulCheckBox extends StatefulWidget {
  const StatefulCheckBox({super.key}) ;

  @override

   _StatefulCheckBoxState createState() => _StatefulCheckBoxState();
}
class _StatefulCheckBoxState extends State {
  

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: isChecked, onChanged: ChangeCheckBoxState);


  }
   void ChangeCheckBoxState(bool? value){
      isChecked=value!;
      setState(() {
        
      });
    }

}