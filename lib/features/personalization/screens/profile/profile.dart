import 'package:flutter/material.dart';
import 'package:storeapp/common/widgets/appbar/appnar.dart';
import 'package:storeapp/common/widgets/images/t_circular_image.dart';
import 'package:storeapp/common/widgets/texts/section_heading.dart';
import 'package:storeapp/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:storeapp/utils/constants/image_strings.dart';
import 'package:storeapp/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      ///body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(

              /// Profile Picture
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const TCircularImage(
                        image: TImages.user,
                        width: 80,
                        height: 80,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Change Profile Picture'))
                    ],
                  ),
                ),

                /// Details
                const SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                ),
                const Divider(),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                const TSectionHeading(
                  title: 'Profile Information',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                /// Heading Profile Info
                 TProfileMenu(onPressed: () {}, title: 'Name', value: 'Coding with Ehab',),
                TProfileMenu(onPressed: () {}, title: 'Username', value: 'Coding_with_ehab',),

                const SizedBox(height: TSizes.spaceBtwItems),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),

                /// Heading Personal Info
                ///
                TProfileMenu(onPressed: () {}, title: 'User ID', value: '45689', icon: Icons.copy,),
                TProfileMenu(onPressed: () {}, title: 'E-mail', value: 'ehab.samy22@yahoo.com',),
                TProfileMenu(onPressed: () {}, title: 'Phone Number', value: '+20 01125165932',),
                TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male',),
                TProfileMenu(onPressed: () {}, title: 'Data of Birth', value: '24 December, 1996',),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),

                Center(
                  child: TextButton(
                    onPressed: (){},
                    child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

