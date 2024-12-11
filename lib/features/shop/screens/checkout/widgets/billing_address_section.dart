


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/utils/constants/sizes.dart';
import 'package:storeapp/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
children: [
  TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change',onPressed: (){},),
  Text('Ehab Samy', style: Theme.of(context).textTheme.bodyLarge,),
const SizedBox(height: TSizes.spaceBtwItems / 2,),
Row(
  children: [
    const Icon(Icons.phone, color: Colors.grey, size: 16,),
    const SizedBox(width: TSizes.spaceBtwItems,),
    Text('+20 01125165932', style: Theme.of(context).textTheme.bodyMedium,)
  ],
),
  const SizedBox(height: TSizes.spaceBtwItems / 2,),
  Row(
    children: [
      const Icon(Icons.location_history, color: Colors.grey, size: 16,),
      const SizedBox(width: TSizes.spaceBtwItems,),
      Expanded(child: Text('Egypt , cairo , halwan', style: Theme.of(context).textTheme.bodyMedium,))
    ],
  ),
],
    );
  }
}
