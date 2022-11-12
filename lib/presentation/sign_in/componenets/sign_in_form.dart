import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/presentation/resources/asset_manager.dart';
import 'package:pasal/presentation/sign_in/sign_in_controller.dart';
import 'package:pasal/widgets/custom_surfix_icon.dart';
import '../../../widgets/default_button.dart';
import '../../resources/color_manager.dart';
import '../../resources/string_manager.dart';

class SigninForm extends StatelessWidget {
  SigninForm({super.key});
  final SignInController _signInController = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signInController.FormKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                label: const Text(AppStrings.email),
                labelStyle: TextStyle(
                    color: ColorManager.grey1, fontWeight: FontWeight.w600),
                hintText: AppStrings.enterEmail,
                suffixIcon:
                    const CustomSurfixIcon(svgIcon: ImageAssts.emailIcon)),
            cursorColor: ColorManager.grey1,
          ),
          const SizedBox(
            height: 40,
          ),
          TextFormField(
            decoration: InputDecoration(
                label: const Text(AppStrings.password),
                labelStyle: TextStyle(
                    color: ColorManager.grey1, fontWeight: FontWeight.w600),
                hintText: AppStrings.enterPassword,
                suffixIcon:
                    const CustomSurfixIcon(svgIcon: ImageAssts.emailIcon)),
            cursorColor: ColorManager.grey1,
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Obx(() => Checkbox(
                      value: _signInController.remember!.value,
                      onChanged: (value) {
                        _signInController.changeRememberValue(value!);
                      })),
                  const Text(AppStrings.rememberMe),
                ],
              ),
              InkWell(
                onTap: () {
                  // print("asdasd");
                },
                child: const Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const DefaultButton(
            text: AppStrings.signIn,
          )
        ],
      ),
    );
  }
}
