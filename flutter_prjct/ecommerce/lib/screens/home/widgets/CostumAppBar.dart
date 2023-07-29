import 'package:ecommerce/screens/home/widgets/costum_icon_widget.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical:20),
      child: Row(
        children: [
           Expanded(
             child: Container(
              padding: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                
           
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "search product",
                ),
              ),
                     ),
           ),
           const SizedBox(width: 10),
           
           const custom_icon_widget(iconPath: "assets/icons/Cart Icon.svg"),
           const  custom_icon_widget(iconPath: "assets/icons/Bell.svg"),
          
        ],
      ),
    );
     }
}


