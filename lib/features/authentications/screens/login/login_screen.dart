import 'package:flutter/material.dart';
import 'package:hospital_booking/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:hospital_booking/features/authentications/screens/login/widgets/login_form.dart';
import 'package:hospital_booking/features/authentications/screens/login/widgets/login_header.dart';
import 'package:hospital_booking/utils/constants/colors.dart';

import '../../../../common/styles/spacing_styles.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: TColors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Logo Title & Sub-Title
            SizedBox(
              height: 320,
              child: TPrimaryHeaderContainer(
                  child: TLoginHeader()
              ),
            ),

            /// Form
            Padding(
              padding: TSpacingStyle.paddingWithAppBarHeight,
              child: TLoginForm(),
            ),

            /// Divider
            // TFormDivider(dividerText: TTexts.orSingInWith.capitalize!),
            // const SizedBox(
            //   height: TSizes.spaceBtwSections,
            // ),
            //
            // /// Footer
            // const TSocialButtons(),
          ],
        ),
      ),
    );
  }
}



