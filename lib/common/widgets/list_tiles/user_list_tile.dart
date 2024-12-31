import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/text_srings.dart';
import '../image/circular_image.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key, required this.onpressed,
  });
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImages(image: TImages.user, width: 50,height: 50,),
      title: Text('Muhammad Hadeed', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text(TText.email_id, style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: onpressed, icon: const Icon(Iconsax.edit),color: TColors.white,)
    );
  }
}