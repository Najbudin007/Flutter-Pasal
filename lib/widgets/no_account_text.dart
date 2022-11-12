import 'package:flutter/material.dart';
import 'package:pasal/presentation/resources/color_manager.dart';
import 'package:pasal/presentation/resources/size_config.dart';
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
        Text(
          AppStrings.noAccount,
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {
            //Navigator.pushNamed(context, SignUpScreen.routeName)
          },
          child: Text(
            AppStrings.signUp,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: ColorManager.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}