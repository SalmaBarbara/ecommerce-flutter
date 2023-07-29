
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class custom_icon_widget extends StatelessWidget {
  final String iconPath;
  const custom_icon_widget({
    Key? key,
    required this.iconPath,
    
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       color:Colors.grey.withOpacity(0.1),
       shape: BoxShape.circle,),

        child: IconButton(
         padding: EdgeInsets.all(0),
       onPressed: (){}, icon:SvgPicture.asset(iconPath),
      ),
    );
  }
}

