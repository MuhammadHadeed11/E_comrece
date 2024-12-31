import 'package:ecommernce/common/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommernce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommernce/common/widgets/texts/usable_row.dart';
import 'package:ecommernce/features/personalization/screens/profile_screen/profile_screen.dart';
import 'package:ecommernce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/list_tiles.dart';
import '../../../../common/widgets/list_tiles/user_list_tile.dart';
import '../../../../utils/constants/colors.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            PrimaryHeaderContainer(child: Column(
              children: [
                CustomAppBar(
                  title: Text("Account", style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),
                const SizedBox(height: TSizes.spaceBtwSections/2,),
                UserListTile(onpressed: ()=>Get.to(()=>const ProfileScreen()),),
                const SizedBox(height: TSizes.spaceBtwSections,)
              ],
            )),
             Column(
              children: [
                Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    const UsableRow(text: "Account Setting", showActionButton: false,),
                    CustomListTiles(icon: Iconsax.safe_home, title: 'My Addresses', subtitle: 'Set shopping delivery address', ontap: () { },),
                    CustomListTiles(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add, remove products and move to checkout',ontap: () { },),
                    CustomListTiles(icon: Iconsax.bag_tick, title: 'My Orders', subtitle: 'In-progress and Completed Orders',ontap: () { },),
                    CustomListTiles(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance with registered bank account',ontap: () { },),
                    CustomListTiles(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupons',ontap: () { },),
                    CustomListTiles(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Set any kind of notification messagee',ontap: () { },),
                    CustomListTiles(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts',ontap: () { },),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                    const UsableRow(text: "App Settings", showActionButton: false,),
                    CustomListTiles(icon: Iconsax.document_upload, title: 'Load Data', subtitle: "Upload data to your Cloud Firebase",
                        ontap: (){}, ),
                    CustomListTiles(icon: Iconsax.location, title: "Geolocation", subtitle: "Set recommendations based on location",
                        ontap: (){},trailing: Switch(value: true, onChanged: (value){}),),
                    CustomListTiles(icon: Iconsax.security_user, title: "Safe Mode", subtitle: "Search result is safe for all ages",
                        ontap: (){},trailing: Switch(value: false, onChanged: (value){}),),
                    CustomListTiles(icon: Iconsax.image, title: "HD Image Quality", subtitle: "Set image quality to be seen",
                        ontap: (){},trailing: Switch(value: true, onChanged: (value){}),),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                    SizedBox(width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Logout")),)
                  ]),)

              ],
            )
          ],
        ),
      ),
    );
  }
}


