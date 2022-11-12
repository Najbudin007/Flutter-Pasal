import 'package:flutter/cupertino.dart';
import 'package:pasal/presentation/resources/color_manager.dart';
import 'package:pasal/presentation/resources/string_manager.dart';
import 'package:pasal/presentation/resources/size_config.dart';

class IntroScreenContent extends StatelessWidget {
  const IntroScreenContent({super.key, this.image, this.text});

  final String? text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(
          AppStrings.appTitle,
          style: TextStyle(
            fontSize: getProportionateFontSize(36),
            color: ColorManager.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
