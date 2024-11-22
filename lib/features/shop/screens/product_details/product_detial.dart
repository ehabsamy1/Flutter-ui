import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:storeapp/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:storeapp/utils/constants/sizes.dart';
import 'package:storeapp/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 product Image Slider
            const TProductImageSlider(),

            /// 2 product Details
            Padding(padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace , bottom: TSizes.defaultSpace),
            child: Column(
              children: [

                /// Rating & share
                Row(
                  children: [
                    /// Rating
                  Row(
                    children: [
                      const  Icon(Iconsax.star5, color: Colors.amber, size: 24,),
                      const SizedBox(width: TSizes.spaceBtwItems/ 2,),
                      Text.rich(
                        TextSpan(
                            children: [
                           TextSpan( text: '5.0' , style: Theme.of(context).textTheme.bodyLarge),
                              const TextSpan(text: '(199)'),

                              ]
                      ),
                      ),
                    ],

                  )
                    /// Share Button
                  ],
                )
                /// Price, Title, Stock , & Brand

                /// Attributes

                /// Checkout Button

                /// Reviews
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}


