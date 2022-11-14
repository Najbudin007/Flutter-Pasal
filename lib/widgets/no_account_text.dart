import 'package:flutter/material.dart';
import 'package:pasal/presentation/resources/color_manager.dart';
import 'package:pasal/presentation/resources/routes_manager.dart';
// import 'package:pasal/presentation/resources/size_config.dart';
import '../presentation/resources/string_manager.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppStrings.noAccount,
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.signUpRoute);
          },
          child: Text(
            AppStrings.signUp,
            style: TextStyle(fontSize: 16, color: ColorManager.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
