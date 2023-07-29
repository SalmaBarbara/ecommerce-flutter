
import 'package:ecommerce/screens/home/widgets/CashBack.dart';
import 'package:ecommerce/screens/home/widgets/Categories.dart';
import 'package:ecommerce/screens/home/widgets/CostumAppBar.dart';
import 'package:ecommerce/screens/home/widgets/Special_for_you.dart';
import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(body:SafeArea(child: SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(),
         
           CashBack(),
           Categories(),
           SpecialOffers(),
          // SizedBox(height: 20),
          // PopularProducts(),
        ],
      ),
    )
    )
    );
    
  }
}

