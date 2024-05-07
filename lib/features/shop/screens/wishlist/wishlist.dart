import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storeapp/features/shop/screens/home/home.dart';
import 'package:storeapp/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appnar.dart';
import '../../../../common/widgets/icons/t_circlar_icon.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/productscart/product_card/product_card_vertical.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        action: [
          TCircularIcon(icon: Icons.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
          ],
        ),
        ),
      ),
    );
  }
}
