import 'package:flutter/material.dart';
import 'package:storeapp/common/widgets/appbar/appnar.dart';
import 'package:storeapp/utils/constants/sizes.dart';

import '../../../../common/widgets/productscart/sottable/sortable_products.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TSortableProducts(),
        ),
      ),
    );
  }
}


