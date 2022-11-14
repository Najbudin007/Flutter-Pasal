import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:pasal/presentation/resources/size_config.dart';

class CustomSurfixIcon extends StatelessWidget {
  const CustomSurfixIcon({super.key, required this.svgIcon});

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        20,
        20,
        20,
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: 18,
      ),
    );
  }
}
