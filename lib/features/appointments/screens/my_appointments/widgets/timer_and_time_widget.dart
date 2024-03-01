import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TimerAndTime extends StatelessWidget {
  const TimerAndTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TRoundedContainer(
          backgroundColor: TColors.white,
          padding: EdgeInsets.all(TSizes.sm),
          child: Center(
            child: Image(
              height: 58,
              width: 58,
              image: AssetImage(TImage.timer2),
            ),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(child: Text('9:00 AM',style: Theme.of(context).textTheme.bodyLarge,))
      ],
    );
  }
}