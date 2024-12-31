import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_srings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);
    return Row(
      children: [

        ///CheckBox
        SizedBox(width:24, height:24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: TSizes.spaceBtwItems,),

        ///Rich Text , Span Text
        Text.rich(

            TextSpan(
                children: [
                  ///Text 01
                  TextSpan(text: '${TText.i_agree_to} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  ///Text 02
                  TextSpan(text: '${TText.privacy_policy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark? TColors.white: TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark? TColors.white: TColors.primary)),
                  ///Text 03
                  TextSpan(text: '${TText.and} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  ///Text 04
                  TextSpan(text: '${TText.terms_of_use} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark? TColors.white: TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark? TColors.white: TColors.primary
                  )),
                ]
            )
        ),
      ],
    );
  }
}

