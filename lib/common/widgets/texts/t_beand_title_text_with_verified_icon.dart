import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:storeapp/common/widgets/texts/t_brand_title_text.dart';
import 'package:storeapp/utils/constants/enums.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
    this.textColor ,
    this.iconColor = TColors.primary,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
      Flexible(
        child: TBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
         textAlign: textAlign,
          brandTextSizes: brandTextSizes,
        ),
      ),
      const SizedBox(width: TSizes.xs),
      const Icon(
        Iconsax.verify5,
        color: TColors.primary,
        size: TSizes.iconXs,
      )
    ]);
  }
}
