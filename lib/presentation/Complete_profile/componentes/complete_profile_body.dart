import 'package:flutter/material.dart';
import 'package:pasal/presentation/Complete_profile/componentes/complete_profile_form.dart';
import 'package:pasal/presentation/resources/size_config.dart';
import '../../../widgets/no_account_text.dart';
import '../../../widgets/social_card.dart';
import '../../resources/asset_manager.dart';
import '../../resources/string_manager.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                const Text(
                  AppStrings.welcomeBack,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  AppStrings.completeProfileText,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const ProfileForm(),
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
                const SizedBox(height: 20),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
