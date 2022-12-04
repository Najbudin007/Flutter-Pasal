import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pasal/app/constants/enums.dart';
import 'package:pasal/models/token.dart';
import 'package:pasal/presentation/base_model/base_model.dart';
import 'package:pasal/presentation/resources/routes_manager.dart';

class SignInController extends BaseController {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  Token? token;
  List errors = [].obs;
  RxBool? remember = false.obs;
  void addError({String? error}) {
    if (!errors.contains(error)) {
      errors.add(error);
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      errors.remove(error);
    }
  }

  void changeRememberValue(bool value) => remember!.value = value;

  void loginUser(Map map) async {
    setState(ViewState.busy);
    token = await apiAuthProvider.login(map);

    if (token == null) {
      Fluttertoast.showToast(
          msg: "Check your credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          backgroundColor: Colors.blue[300],
          textColor: Colors.white,
          fontSize: 16.0);
      setState(ViewState.retrieved);
    } else {
      await sharedPreferencesManager.putString(
          SharedPreferencesManager.keyAccessToken, token!.accessToken);
      log("access token ${token!.accessToken}");

      await sharedPreferencesManager.putBool(
          SharedPreferencesManager.keyIsLogin, true);

      Get.offAllNamed(Routes.loginSuccessScreen);

      setState(ViewState.retrieved);
    }
  }

  void mapInputsLogin() {
    Map map = {"username": name, "password": password};
    loginUser(map);
  }
}
