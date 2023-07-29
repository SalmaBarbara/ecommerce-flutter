
import 'package:ecommerce/screens/home/widgets/Section_title.dart';
import 'package:ecommerce/screens/home/widgets/Special_offer_item.dart';
import 'package:ecommerce/screens/home/widgets/Special_offer_model.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SectionTitle(
          text: "Special for you "),
          SizedBox(
          
           width: double.maxFinite,
           height: 100,
           child: ListView.builder(
            itemCount: specialOffersList.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return SpecialOfferItem(offer:specialOffersList[index],);
            },
          ),
        ),
          

      ],
    );
  }
}


