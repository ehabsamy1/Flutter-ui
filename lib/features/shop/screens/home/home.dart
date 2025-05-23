import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:storeapp/features/shop/screens/all_product/all_product.dart';
import 'package:storeapp/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:storeapp/features/shop/screens/home/widgets/home_categories.dart';
import 'package:storeapp/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:storeapp/utils/constants/image_strings.dart';
import 'package:storeapp/utils/constants/sizes.dart';
import '../../../../common/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/productscart/product_card/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  THomeAppBar(),

                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Searchbar

                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// -- Categories
                        THomeCategories(),

                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            ),

            ///body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// promo slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// Heading
                   TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts()),),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  /// Popular
                  TGridLayout(itemCount: 2, mainAxisExtent: 80,itemBuilder:   (_, index) => const TProductCardVertical(),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

