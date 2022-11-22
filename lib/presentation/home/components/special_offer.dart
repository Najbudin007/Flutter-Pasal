import 'package:flutter/material.dart';
import 'package:pasal/models/special_offer.dart';
import 'package:pasal/presentation/home/components/section_tite.dart';
import 'package:pasal/presentation/resources/asset_manager.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Special for you",
            press: (() {}),
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SpecialOfferCard(
                  image: ImageAssts.imageBanner2,
                  category: "Fashion",
                  numOfBrand: 6),
              SpecialOfferCard(
                  image: ImageAssts.imageBanner2,
                  category: "Fashion",
                  numOfBrand: 6),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
