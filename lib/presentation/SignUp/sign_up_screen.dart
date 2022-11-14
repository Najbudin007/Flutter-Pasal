import 'package:flutter/material.dart';
import 'package:pasal/presentation/SignUp/components/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text(AppStrings.signIn),
      // ),
      body: SignUpBody(),
    );
  }
}
