
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categorie_item extends StatelessWidget {
  final String title,iconPath;
   const Categorie_item({
    Key?key,
    required this.title,
    required this.iconPath,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.orange.shade100,
            
          ),
            child: SvgPicture.asset("assets/icons/Bell.svg"),
        ),
        const SizedBox(height: 4,),
        SizedBox(
          width: 50,
          child: Text(title,textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.grey,
          ),
          ),
        ),
      ],
    );
  }
}

