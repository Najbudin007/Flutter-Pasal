import 'package:flutter/material.dart';
import 'package:pasal/presentation/resources/asset_manager.dart';
import 'package:pasal/presentation/resources/string_manager.dart';
import 'package:pasal/widgets/custom_surfix_icon.dart';
import 'package:pasal/widgets/default_button.dart';
import '../../resources/color_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/size_config.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: const Text(AppStrings.firstName),
                labelStyle: TextStyle(
                    color: ColorManager.grey1, fontWeight: FontWeight.w600),
                hintText: AppStrings.firstNameTextField,
                suffixIcon:
                    const CustomSurfixIcon(svgIcon: ImageAssts.userIcon),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: ColorManager.kTextColor),
                  gapPadding: 10,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
              ),
              cursorColor: ColorManager.grey1,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            TextFormField(
              decoration: InputDecoration(
                label: const Text(AppStrings.lastName),
                labelStyle: TextStyle(
                    color: ColorManager.grey1, fontWeight: FontWeight.w600),
                hintText: AppStrings.lastNameTextField,
                suffixIcon:
                    const CustomSurfixIcon(svgIcon: ImageAssts.userIcon),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: ColorManager.kTextColor),
                  gapPadding: 10,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
              ),
              cursorColor: ColorManager.grey1,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            TextFormField(
              decoration: InputDecoration(
                label: const Text(AppStrings.phoneNumber),
                labelStyle: TextStyle(
                    color: ColorManager.grey1, fontWeight: FontWeight.w600),
                hintText: AppStrings.phoneNumberTextField,
                suffixIcon: const CustomSurfixIcon(svgIcon: ImageAssts.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: ColorManager.kTextColor),
                  gapPadding: 10,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
              ),
              cursorColor: ColorManager.grey1,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            TextFormField(
              decoration: InputDecoration(
                label: const Text(AppStrings.address),
                labelStyle: TextStyle(
                    color: ColorManager.grey1, fontWeight: FontWeight.w600),
                hintText: AppStrings.addressTextField,
                suffixIcon: const CustomSurfixIcon(
                    svgIcon: ImageAssts.locationPointIcon),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: ColorManager.kTextColor),
                  gapPadding: 10,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
              ),
              cursorColor: ColorManager.grey1,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            DefaultButton(
              text: AppStrings.continueText,
              press: () {
                Navigator.pushReplacementNamed(context, Routes.completeProfile);
              },
            ),
          ],
        ),
      ),
    );
  }
}
