import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:storeapp/common/widgets/appbar/appnar.dart';
import 'package:storeapp/features/shop/screens/product_reviews/widgets/rating_progress_indcator.dart';
import 'package:storeapp/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:storeapp/utils/constants/colors.dart';
import 'package:storeapp/utils/constants/sizes.dart';

import '../../../../common/widgets/productscart/ratings/rating_indictor.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      /// -- Appbar
      appBar: const TAppBar(
        title: Text('Reviews & ratings'),
        showBackArrow: true,
      ),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and reviews are verified and are from people who use the same type od device that you see'),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// Overall Product Ratings
              const TOverallProductRating(),

              const TRatingBarIndicator(rating: 3.5,),
              Text('12,611',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// User Reviews
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}






