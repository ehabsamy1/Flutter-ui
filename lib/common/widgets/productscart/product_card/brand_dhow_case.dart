import 'package:flutter/material.dart';
import 'package:storeapp/common/widgets/productscart/product_card/prand_card.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../custom_shapes/containers/rounded_container.dart';


class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
  super.key, required this.images,
});

final List<String> images;

@override
Widget build(BuildContext context) {
  return TRoundedContainer(
    showBorder: true,
    borderColor: TColors.darkGrey,
    backgroundColor: Colors.transparent,
    padding: const EdgeInsets.all(TSizes.md),
    margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
    child: Column(children: [
      /// products
      const TBrandCard(showBorder: false),
      const SizedBox(height: TSizes.spaceBtwItems),
      ///brand Top
      Row(
        children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),


      )
    ],),
  );
}
Widget brandTopProductImageWidget(String image , context){
  return Expanded(child: TRoundedContainer(
    height: 100,
    padding: const EdgeInsets.all(TSizes.md),
    margin: const EdgeInsets.only(right: TSizes.sm),
    backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
    child:  Image(fit: BoxFit.contain, image: AssetImage(image),),
  ));
}
}