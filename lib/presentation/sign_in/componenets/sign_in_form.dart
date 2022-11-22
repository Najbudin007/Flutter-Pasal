import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/app/constants/app.constants.dart';
import 'package:pasal/presentation/resources/asset_manager.dart';
import 'package:pasal/presentation/resources/routes_manager.dart';
import 'package:pasal/presentation/sign_in/sign_in_controller.dart';
import 'package:pasal/widgets/custom_surfix_icon.dart';
import 'package:pasal/widgets/form_error.dart';
import '../../../widgets/default_button.dart';
import '../../resources/color_manager.dart';
import '../../resources/string_manager.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final SignInController _signInController = Get.put(SignInController());
  // show the password or not
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signInController.formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          const SizedBox(height: 30),
          buildPasswordFormField(),
          const SizedBox(height: 30),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  value: _signInController.remember!.value,
                  activeColor: ColorManager.kPrimaryColor,
                  onChanged: (value) {
                    _signInController.changeRememberValue(value!);
                  },
                ),
              ),
              const Text(AppStrings.rememberMe),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  //  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                child: const Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: _signInController.errors),
          const SizedBox(height: 20),
          DefaultButton(
            text: AppStrings.continueText,
            press: () {
              if (_signInController.formKey.currentState!.validate()) {
                _signInController.formKey.currentState!.save();
                // if all are valid then go to success screen
                //  KeyboardUtil.hideKeyboard(context);
                Navigator.pushReplacementNamed(context, Routes.homeScreen);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: _isObscure,
      onSaved: (newValue) => _signInController.password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _signInController.removeError(error: AppStrings.kPassNullError);
        } else if (value.length >= 8) {
          _signInController.removeError(error: AppStrings.kShortPassError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          _signInController.addError(error: AppStrings.kPassNullError);
          return "";
        } else if (value.length < 8) {
          _signInController.addError(error: AppStrings.kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: AppStrings.password,
        hintText: AppStrings.enterPassword,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          onPressed: (() {
            setState(() {
              _isObscure = !_isObscure;
            });
          }),
          icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: ColorManager.kTextColor),
          gapPadding: 10,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => _signInController.email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _signInController.removeError(error: AppStrings.kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          _signInController.removeError(error: AppStrings.kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          _signInController.addError(error: AppStrings.kEmailNullError);
          return AppStrings.emptyString;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          _signInController.addError(error: AppStrings.kInvalidEmailError);
          return AppStrings.emptyString;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: AppStrings.email,
        hintText: AppStrings.enterEmail,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSurfixIcon(svgIcon: ImageAssts.emailIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: ColorManager.kTextColor),
          gapPadding: 10,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      ),
    );
  }
}
