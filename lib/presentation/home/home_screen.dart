import 'package:flutter/material.dart';
import 'package:pasal/app/constants/enums.dart';

import 'package:pasal/presentation/home/components/home_scetion.dart';
import 'package:pasal/widgets/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeSection(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
