import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storeapp/common/widgets_login_signup/success_screen/success_screen.dart';
import 'package:storeapp/features/authentication/screens/login/login.dart';
import 'package:storeapp/utils/constants/image_strings.dart';
import 'package:storeapp/utils/constants/sizes.dart';
import 'package:storeapp/utils/constants/text_strings.dart';
import 'package:storeapp/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                  image: const AssetImage(TImages.deliveredEmailIllustration),
                  width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Title & SubTitle
              Text(TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text('Ehab.samy22@yahoo.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() =>  SuccessScreen(
                            image: TImages.staticSuccessIllustration,
                        title: TTexts.yourAccountCreatedTitle,
                        subTitle: TTexts.yourAccountCreatedSubTitle,
                        onPresses: () => Get.to(() => const LoginScreen()),
                          )),
                      child: const Text(TTexts.tContinue))),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text(TTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
