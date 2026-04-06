import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storeapp/common/custom_shapes/containers/rounded_container.dart';
import 'package:storeapp/common/widgets/texts/section_heading.dart';
import 'package:storeapp/features/shop/controllers/checkout_controller.dart';
import 'package:storeapp/utils/constants/colors.dart';
import 'package:storeapp/utils/constants/sizes.dart';
import 'package:storeapp/utils/helpers/helper_functions.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CheckoutController>();
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        TSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () => controller.showPaymentMethodsSheet(context),
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Obx(() {
          final selectedMethod = controller.selectedPaymentMethod.value;

          return Row(
            children: [
              TRoundedContainer(
                width: 60,
                height: 35,
                backgroundColor: dark ? TColors.light : TColors.white,
                padding: const EdgeInsets.all(TSizes.sm),
                child: Image(
                  image: AssetImage(selectedMethod.asset),
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwItems / 2),
              Text(
                selectedMethod.title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          );
        }),
      ],
    );
  }
}
