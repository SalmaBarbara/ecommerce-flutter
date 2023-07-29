
import 'package:ecommerce/screens/home/widgets/categorie_item.dart';
import 'package:flutter/material.dart';


class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
   List<Map<String,String>> categories = [
     {
      "title":"Flash Deal",
      "iconPath":"assets/icons/Flash Icon.svg",
     },
      {
      "title":"Bill",
      "iconPath":"assets/icons/Bill Icon.svg",
     },
      {
      "title":"Game",
      "iconPath":"assets/icons/Game Icon.svg",
     },
      {
      "title":"Daily Gift",
      "iconPath":"assets/icons/Gift Icon.svg",
     },
      {
      "title":"More",
      "iconPath":"assets/icons/Discover.svg",
     },
   ];


    return  Container(  
      width:double.maxFinite ,
     
      margin: EdgeInsets.all(20 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(categories.length, (index) => Categorie_item(title: categories[index]["title"]!, iconPath:categories[index]["iconPath"]!)),
        
      ),
      
      );
  }
}


