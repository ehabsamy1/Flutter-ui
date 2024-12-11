

import 'package:flutter/material.dart';
import 'package:storeapp/common/widgets/appbar/appnar.dart';
import 'package:storeapp/common/widgets/productscart/product_card/prand_card.dart';
import 'package:storeapp/common/widgets/productscart/sottable/sortable_products.dart';
import 'package:storeapp/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: TAppBar(title: Text('Nike'),),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
              TBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSections,),

              TSortableProducts(),

            ],
          ),
        ),
      ),
    );
  }
}
