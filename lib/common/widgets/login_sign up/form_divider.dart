import 'package:ecommernce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({super.key,  required this.dividerText});

  final String dividerText;
  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ///First Divider
        Flexible(child: Divider(
          color: dark? TColors.darkerGrey:TColors.grey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,)),
        ///Text
        Text(dividerText,
          style: Theme.of(context).textTheme.bodyMedium,),
        ///Second Divider
        Flexible(child: Divider(
          color: dark? TColors.darkerGrey:TColors.grey,
          thickness: 0.5,
          indent: 5,
          endIndent: 60,)),
      ],
    );
  }
}
