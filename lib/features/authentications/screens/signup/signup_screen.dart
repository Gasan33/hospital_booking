import 'package:flutter/material.dart';
import 'package:hospital_booking/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:hospital_booking/features/authentications/screens/login/widgets/login_header.dart';
import 'package:hospital_booking/utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/sing_up_form.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.grey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 320,
              child: TPrimaryHeaderContainer(
                child: TLoginHeader(),
              ),
            ),
            /// Title
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  Text(
                    TTexts.singUpTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// Form
                  const TSingUpForm(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            // /// Or SingUP With
            // TFormDivider(dividerText: TTexts.orSingUpWith.capitalize!),
            //
            // const SizedBox(
            //   height: TSizes.spaceBtwSections,
            // ),
            //
            // /// Social Button
            // const TSocialButtons(),
          ],
        ),
      ),
    );
  }
}
