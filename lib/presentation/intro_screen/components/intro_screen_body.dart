import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/models/intro_screen_model.dart';
import 'package:pasal/presentation/resources/asset_manager.dart';
import 'package:pasal/presentation/resources/color_manager.dart';
import 'package:pasal/presentation/resources/duration_constants.dart';
// import 'package:pasal/presentation/resources/size_config.dart';

import '../../../widgets/default_button.dart';
import '../../resources/routes_manager.dart';
import '../../resources/string_manager.dart';
import '../intro_Screen_Controller/into_screen_controller.dart';
import 'intro_screen_content.dart';

class IntroScreenBody extends StatefulWidget {
  const IntroScreenBody({super.key});

  @override
  IntroScreenBodyState createState() => IntroScreenBodyState();
}

class IntroScreenBodyState extends State<IntroScreenBody> {
  final IntroScreenController introScreenController =
      Get.put(IntroScreenController());
  List<IntroScreenModel> introScreenData = [
    const IntroScreenModel(
        text: AppStrings.introScreenText1,
        imgString: ImageAssts.introScreenImage1),
    const IntroScreenModel(
        text: AppStrings.introScreenText2,
        imgString: ImageAssts.introScreenImage2),
    const IntroScreenModel(
        text: AppStrings.introScreenText3,
        imgString: ImageAssts.introScreenImage3)
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  introScreenController.assignvalue(value);
                },
                itemCount: introScreenData.length,
                itemBuilder: (context, index) => IntroScreenContent(
                  image: introScreenData[index].imgString,
                  text: introScreenData[index].text,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        introScreenData.length,
                        (index) => Obx(() => buildDot(index: index)),
                      ),
                    ),
                    const Spacer(flex: 3),
                    DefaultButton(
                      text: AppStrings.continueText,
                      press: () {
                        Navigator.pushReplacementNamed(
                            context, Routes.signInRoute);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: introScreenController.currentPage.value == index ? 20 : 6,
      decoration: BoxDecoration(
        color: introScreenController.currentPage.value == index
            ? ColorManager.kPrimaryColor
            : ColorManager.iconGrey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
