import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storeapp/features/authentication/screens/login/widgets/login_form.dart';
import 'package:storeapp/features/authentication/screens/login/widgets/login_header.dart';
import 'package:storeapp/utils/constants/text_strings.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../common/widgets_login_signup/from_divider.dart';
import '../../../../common/widgets_login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [

            /// Header
            const TLoginHeader(),


            /// Form
            const TLoginForm(),


            /// Divider
            TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// Footer
            const TSocialButtons(),


          ],
        ),
      ),
    );
  }
}
