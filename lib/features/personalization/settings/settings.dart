import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:storeapp/common/custom_shapes/containers/primary_header_container.dart';
import 'package:storeapp/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:storeapp/common/widgets/texts/section_heading.dart';
import 'package:storeapp/utils/constants/colors.dart';
import 'package:storeapp/utils/constants/sizes.dart';

import '../../../common/widgets/appbar/appnar.dart';
import '../../../common/widgets/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// Header
            TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    TAppBar(
                        title: Text(
                          'Account',
                          style: Theme
                              .of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white),
                        )),

                    /// User Profile card
                    const TUserProfileTitle(),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                  ],
                )),

            /// Body
             Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  ///Account Settings
                  const TSectionHeading(
                    title: 'Account Setting', showActionButton: false,),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const TSettingsMenuTile(icon: Iconsax.safe_home,
                      title: 'My Addresses',
                      subTitle: 'Set shopping delivery address'),
                  const TSettingsMenuTile(icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout'),
                  const TSettingsMenuTile(icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In-progress and Completed Orders'),
                  const TSettingsMenuTile(icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registered bank account'),
                  const TSettingsMenuTile(icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons'),
                  const TSettingsMenuTile(icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification'),
                  const TSettingsMenuTile(icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts'),

                  ///App Settings
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSectionHeading(
                    title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSettingsMenuTile(icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase'),


                  TSettingsMenuTile(icon: Iconsax.location,
                      title: 'Geolocation',
                      subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(icon: Iconsax.image,
                    title: 'Safe Mode',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value:false, onChanged: (value){}),
                  ),
                  /// Logout Button
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(width: double.infinity, child:  OutlinedButton(onPressed: (){}, child: const Text('Logout')),),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
