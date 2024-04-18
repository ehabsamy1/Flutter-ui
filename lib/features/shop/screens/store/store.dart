import 'package:flutter/material.dart';
import 'package:storeapp/common/custom_shapes/containers/rounded_container.dart';
import 'package:storeapp/common/custom_shapes/containers/search_container.dart';
import 'package:storeapp/common/widgets_login_signup/appbar/appnar.dart';
import 'package:storeapp/common/widgets_login_signup/layouts/grid_layout.dart';
import 'package:storeapp/common/widgets_login_signup/productscart/cart_menu_icon.dart';
import 'package:storeapp/common/widgets_login_signup/texts/section_heading.dart';
import 'package:storeapp/common/widgets_login_signup/texts/t_beand_title_text_with_verified_icon.dart';
import 'package:storeapp/utils/constants/colors.dart';
import 'package:storeapp/utils/constants/enums.dart';
import 'package:storeapp/utils/constants/image_strings.dart';
import 'package:storeapp/utils/constants/sizes.dart';
import 'package:storeapp/utils/helpers/helper_functions.dart';

import '../../../../common/widgets_login_signup/images/t_circular_image.dart';


class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title:  Text('Store' , style: Theme.of(context).textTheme.headlineMedium),
        action: [
          TCartCounterIcon(onPressed: (){}, iconColor: Colors.cyan, ),
        ],

      ),

      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children:  [
                  /// Search bar
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSearchContainer(text: 'Search in Store', showBorder: true,showBackground: false,padding: EdgeInsets.zero,),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Featured brands
                  TSectionHeading(title: 'Featured Brands', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                   TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index){
                     return GestureDetector(
                       onTap: (){},
                       child: TRoundedContainer(
                         padding: const EdgeInsets.all(TSizes.sm),
                         showBorder: true,
                         backgroundColor: Colors.transparent,
                         child: Row(
                           children: [

                             /// Icon
                             Flexible(
                               child: TCircularImage(
                                 isNetworkImage: false,
                                 image: TImages.clothIcon,
                                 backgroundColor: Colors.transparent,
                                 overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.dark,
                               ),
                             ),
                             const SizedBox(width: TSizes.spaceBtwItems / 2),

                             /// Text
                             Expanded(
                               child: Column(
                                 mainAxisSize: MainAxisSize.min,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.large),
                                   Text(
                                     '256 product',
                                     overflow: TextOverflow.ellipsis,
                                     style: Theme.of(context).textTheme.labelMedium,
                               
                                   )
                                 ],
                               ),
                             )

                           ],
                         ),
                       ),
                     );
                   })
                ],
              ),
            ),
          )
        ];
      }, body: Container()),

    );
  }
}

