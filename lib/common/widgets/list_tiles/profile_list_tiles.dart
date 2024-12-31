import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';

class ProfileListTiles extends StatelessWidget {
  const ProfileListTiles({
    super.key, required this.text, required this.text2, required this.ontap, this.icon=Iconsax.arrow_right_34,
  });
  final String text;
  final String text2;
  final IconData icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems),
        child: Row(
            children: [
              Expanded(flex:3,child: Text(text, style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis,)),
              Expanded(flex:5,child: Text(text2, style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis,)),
              Expanded(child: Icon(icon, size: 18,))
            ],

        ),
      ),
    );
  }
}
