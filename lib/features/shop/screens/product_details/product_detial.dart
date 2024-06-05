import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/common/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:storeapp/common/widgets/images/t_rounded_image.dart';
import 'package:storeapp/utils/constants/colors.dart';
import 'package:storeapp/utils/constants/image_strings.dart';
import 'package:storeapp/utils/constants/sizes.dart';
import 'package:storeapp/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 product Image Slider
            TCurvedEdgesWidget(
              child: Container(
                color: dark ? TColors.darkerGrey : TColors.light,
                child: Stack(
                  children: [
                    /// Main Large Image
                    const SizedBox(
                      height: 400,
                      child: Padding(
                        padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                        child: Center(
                            child: Image(
                                image: AssetImage(TImages.productImage1))),
                      ),
                    ),

                    /// Image Sizes
                    Positioned(
                      right: 0,
                      bottom: 30,
                      left: TSizes.defaultSpace,
                      child: SizedBox(
                        height: 80,
                        child: ListView.separated(
                          itemCount: 4,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          separatorBuilder: (_, __) => const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          itemBuilder: (_, index) => TRoundedImage(
                              width: 80,
                              backgroundColor: dark ? TColors.dark : TColors.white,
                              border: Border.all(color: TColors.primary),
                              padding: const EdgeInsets.all(TSizes.sm),
                              imageUrl: TImages.productImage3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )

            /// 2 product Details
          ],
        ),
      ),
    );
  }
}
