import 'package:flutter/material.dart';
import 'package:storeapp/common/widgets_login_signup/layouts/grid_layout.dart';
import 'package:storeapp/common/widgets_login_signup/productscart/product_card/product_card_vertical.dart';
import 'package:storeapp/common/widgets_login_signup/texts/section_heading.dart';

import '../../../../../common/widgets_login_signup/productscart/product_card/brand_dhow_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';


class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [ Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Brands
            const TBrandShowcase(images: [TImages.productImage3,TImages.productImage2,TImages.productImage1],),
            const TBrandShowcase(images: [TImages.productImage3,TImages.productImage2,TImages.productImage1],),
            const SizedBox(height: TSizes.spaceBtwItems,),
            /// Products
            TSectionHeading(title: 'You might like',showActionButton: true, onPressed: () {}),
            const SizedBox(height: TSizes.spaceBtwItems),
            TGridLayout(itemCount: 4, itemBuilder: (_,index) => const TProductCardVertical())
          ],
        ),
      ),
    ]
    );
  }
}
