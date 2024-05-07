import 'package:flutter/material.dart';
import 'package:storeapp/common/custom_shapes/containers/search_container.dart';
import 'package:storeapp/common/widgets_login_signup/appbar/appnar.dart';
import 'package:storeapp/common/widgets_login_signup/appbar/tabbar.dart';
import 'package:storeapp/common/widgets_login_signup/layouts/grid_layout.dart';
import 'package:storeapp/common/widgets_login_signup/productscart/cart_menu_icon.dart';
import 'package:storeapp/common/widgets_login_signup/texts/section_heading.dart';
import 'package:storeapp/features/shop/screens/store/widgets/category_tab.dart';
import 'package:storeapp/utils/constants/colors.dart';
import 'package:storeapp/utils/constants/sizes.dart';
import 'package:storeapp/utils/helpers/helper_functions.dart';
import '../../../../common/widgets_login_signup/productscart/product_card/prand_card.dart';

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
                            title: 'Featured Brands', onPressed: () {}),
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



