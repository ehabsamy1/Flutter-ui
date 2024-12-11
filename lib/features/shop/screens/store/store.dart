import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:storeapp/common/custom_shapes/containers/search_container.dart';
import 'package:storeapp/features/shop/screens/brand/all_brands.dart';
import 'package:storeapp/features/shop/screens/store/widgets/category_tab.dart';
import 'package:storeapp/utils/constants/colors.dart';
import 'package:storeapp/utils/constants/sizes.dart';
import 'package:storeapp/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/appbar/appnar.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/productscart/cart_menu_icon.dart';
import '../../../../common/widgets/productscart/product_card/prand_card.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          action: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: Colors.cyan,
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// Search bar
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        /// Featured brands
                        TSectionHeading(
                            title: 'Featured Brands', onPressed: () => Get.to(() => const AllBrandsScreen())),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const TBrandCard(showBorder: false,);
                            })
                      ],
                    ),
                  ),

                  /// Tabs
                  bottom: const TTabBar(
                      tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ]),
                ),
              ];
            },
            body:  const TabBarView(
              children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
            ],)),
      ),
    );
  }
}



