import 'package:flutter/cupertino.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard(
      {super.key, required this.image, required this.numOfBrand});

  final String image;
  final int numOfBrand;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        child: SizedBox(
          width: 242,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(image, fit: BoxFit.cover),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        const Color(0XFF343434),
                        const Color(0XFF343434).withOpacity(0.18),
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
