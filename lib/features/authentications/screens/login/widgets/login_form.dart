import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_booking/navigation_menu.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/vaildators/vaildation.dart';
import '../../signup/signup_screen.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   // final controller = Get.put(LoginController());
    return Form(
      //key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              //controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
              validator: (value) => TValidator.validateEmail(value),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputField,
            ),

            /// Password
             TextFormField(
                //controller: controller.password,
               // obscureText: controller.hidePassword.value,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    // => controller.hidePassword.value =
                    //     !controller.hidePassword.value,
                    icon:
                    const Icon(
                        // controller.hidePassword.value
                        // ? Iconsax.eye_slash
                        // :
                    Iconsax.eye),
                  ),
                ),
                validator: (value) =>
                    TValidator.validateEmptyText('Password', value!),
              ),

            const SizedBox(
              height: TSizes.spaceBtwInputField / 2,
            ),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                     Checkbox(
                        value: true,
                        onChanged: (value){},
                        // value: controller.rememberMe.value,
                        // onChanged: (value) => controller.rememberMe.value =
                        //     !controller.rememberMe.value,
                      ),

                    const Text(TTexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () {},
                  // => Get.to(
                  //   () => const ForgetPassword(),
                 // ),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=>Get.to(()=>const NavigationMenu()),// => controller.emailAndPasswordSignIn(),
                child: const Text(TTexts.singIn),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SingUpScreen()),
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
