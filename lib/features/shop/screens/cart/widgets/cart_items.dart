import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/productscart/add_remove_button.dart';
import '../../../../../common/widgets/productscart/cart_item.dart';
import '../../../../../common/widgets/productscart/product_card/product_price.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key,  this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) =>
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        itemCount: 2,
        itemBuilder: (_, index) =>
         Column(
          children: [
            /// Cart Item
            const TCartItem(),
           if(showAddRemoveButtons) const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            if(showAddRemoveButtons)  const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [

                    /// Extra Space
                    SizedBox(width: 70,),

                    /// Add Remove Buttons
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),

                  /// -- Product total price
                TProductPriceText(price: '256'),

              ],
            ),
          ],
        ),
      );
  }
}
