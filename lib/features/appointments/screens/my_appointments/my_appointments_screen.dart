import 'package:flutter/material.dart';
import 'package:hospital_booking/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:hospital_booking/common/widgets/texts/icon_and_text_widget.dart';
import 'package:hospital_booking/features/appointments/screens/my_appointments/widgets/timer_and_time_widget.dart';
import 'package:hospital_booking/utils/constants/colors.dart';
import 'package:hospital_booking/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class MyAppointmentScreen extends StatelessWidget {
  const MyAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text("Hello Gasan"),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: TRoundedContainer(
              backgroundColor: TColors.primary.withOpacity(0.3),
              child: const Image(
                image: AssetImage(TImage.user),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: TRoundedContainer(
            padding: const EdgeInsets.all(TSizes.md),
            backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
            //height: 200,
            child:   Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const TimerAndTime(),
                    const SizedBox(width: TSizes.spaceBtwItems,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('in 3 days',style: Theme.of(context).textTheme.bodyLarge,),
                         Text('Consultation Whit Dr.Salah',style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary),),
                        const TIconAndTextWidget(text: 'september 10',icon: Iconsax.calendar,),
                        const TIconAndTextWidget(text: '9:00 AM',icon: Iconsax.clock,),
                        const TIconAndTextWidget(text: '0545671677',icon: Iconsax.call,),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


