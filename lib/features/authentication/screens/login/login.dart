import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/styles/spacing_styles.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_e_commerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter_e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter_e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-title
              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}





