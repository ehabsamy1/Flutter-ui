import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:storeapp/common/widgets/appbar/appnar.dart';
import 'package:storeapp/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:storeapp/features/shop/screens/checkout/checkout.dart';
import 'package:storeapp/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          /// -- Items in Cart
          child: TCartItems(),
      ),
      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout \$256.0')),
      ),
    );
  }
}



