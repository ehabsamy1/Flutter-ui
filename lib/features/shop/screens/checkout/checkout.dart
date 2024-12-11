import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:storeapp/common/custom_shapes/containers/rounded_container.dart';
import 'package:storeapp/common/widgets/productscart/billing_amount_section.dart';
import 'package:storeapp/common/widgets/success_screen/success_screen.dart';
import 'package:storeapp/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:storeapp/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:storeapp/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:storeapp/navigation_menu.dart';
import 'package:storeapp/utils/constants/colors.dart';
import 'package:storeapp/utils/constants/image_strings.dart';
import 'package:storeapp/utils/constants/sizes.dart';
import 'package:storeapp/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appnar.dart';
import '../../../../common/widgets/productscart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in Cart
              const TCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// -- Coupon TextField
              TCouponCode(dark: dark),
              const SizedBox(
                height: TSizes.spaceBtwSections,),
              /// -- Billing section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black: TColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    /// Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    /// Payment Methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    /// address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () => Get.to(() =>  SuccessScreen(image: TImages.successfulPaymentIcon, title: 'Payment Success!', subTitle: 'Your item will be shipped soon!', onPresses: () => Get.offAll(() => const NavigationMenu()))), child: const Text('Checkout \$256.0')),
      ),
    );
  }
}


