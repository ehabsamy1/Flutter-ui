import 'package:flutter/material.dart';
import 'package:storeapp/common/styles/spacing_styles.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPresses});

  final String image, title, subTitle;
  final VoidCallback? onPresses;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(image:  AssetImage(image),width: THelperFunctions.screenWidth() * 0.6 ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Title & SubTitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(subTitle, style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons
              SizedBox(width: double.infinity, child:  ElevatedButton(onPressed: onPresses,child: const Text(TTexts.tContinue))),

            ],
          ),
        ),
      ) ,
    );
  }
}
