import 'package:get/get.dart';
import '../../../models/intro_screen_model.dart';
import '../../resources/asset_manager.dart';
import '../../resources/string_manager.dart';

class IntroScreenController extends GetxController {
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

  var currentPage = 0.obs;

  assignvalue(int value) {
    currentPage.value = value;
  }
}
