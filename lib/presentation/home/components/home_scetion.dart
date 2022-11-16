// ignore: file_names
import 'package:flutter/material.dart';
import 'package:pasal/presentation/home/components/categories.dart';
import 'package:pasal/presentation/home/components/discount_banner.dart';
import 'package:pasal/presentation/home/components/home_header.dart';
import 'package:pasal/presentation/home/components/popular_product.dart';
import 'package:pasal/presentation/home/components/special_offer.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 20),
            DiscountBanner(),
            Categories(),
            SizedBox(
              height: 20,
            ),
            PopularProduct(),
            SizedBox(
              height: 20,
            ),
            SpecialOffers(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
