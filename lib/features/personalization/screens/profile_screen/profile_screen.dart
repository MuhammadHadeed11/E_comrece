import 'package:ecommernce/common/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommernce/common/widgets/image/circular_image.dart';
import 'package:ecommernce/common/widgets/texts/usable_row.dart';
import 'package:ecommernce/utils/constants/colors.dart';
import 'package:ecommernce/utils/constants/sizes.dart';
import 'package:ecommernce/utils/constants/text_srings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/profile_list_tiles.dart';
import '../../../../utils/constants/image_strings.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Profile', style: Theme.of(context).textTheme.headlineMedium,)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImages(image: TImages.user, height: 80, width: 80,),
                    TextButton( onPressed: () {  },child: Text('Change Profile Picture', style: Theme.of(context).textTheme.bodySmall),)
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              const Divider(thickness: 2),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const UsableRow(text: "Profile Information", showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              ProfileListTiles(text: 'Name', text2: 'Muhammad Hadeed', ontap: () {  },),
              ProfileListTiles(text: 'Username', text2: 'muhammad_hadeed', ontap: () {  },),
              const Divider(thickness: 2),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const UsableRow(text: "Personal Information", showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              ProfileListTiles(text: 'User ID', text2: '2103180', ontap: () {}, icon: Iconsax.copy,),
              ProfileListTiles(text: 'E-mail', text2: TText.email_id, ontap: () {  },),
              ProfileListTiles(text: 'Phone Number', text2: '+92 3208502282', ontap: () {  },),
              ProfileListTiles(text: 'Gender', text2: 'Male', ontap: () {  },),
              ProfileListTiles(text: 'Date of Birth', text2: '13 Oct, 2003', ontap: () {  },),
              const Divider(thickness: 2,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TextButton(onPressed: (){}, child: Text("Delete Account", style: Theme.of(context).textTheme.bodySmall!.apply(color: TColors.error),))
            ],
          ),
        ),
      ),
    );
  }
}
