import 'package:flutter/material.dart';
import 'package:pasal/presentation/resources/size_config.dart';
import '../../../widgets/no_account_text.dart';
import '../../../widgets/social_card.dart';
import '../../resources/asset_manager.dart';
import '../../resources/string_manager.dart';
import 'sign_in_form.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  AppStrings.welcomeBack,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  AppStrings.signInPageText,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: ImageAssts.googleIcon,
                      press: () {},
                    ),
                    SocialCard(
                      icon: ImageAssts.facebookIcon,
                      press: () {},
                    ),
                    SocialCard(
                      icon: ImageAssts.twitterIcon,
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
