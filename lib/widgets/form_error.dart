import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pasal/presentation/resources/asset_manager.dart';
import 'package:pasal/presentation/resources/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({super.key, this.errors});
  final List<dynamic>? errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors!.length, (index) => formErrorText(error: errors![index])),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          ImageAssts.errorIcon,
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
        Text(error),
      ],
    );
  }
}
