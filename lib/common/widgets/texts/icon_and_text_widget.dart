import 'package:flutter/material.dart';
import 'package:hospital_booking/utils/constants/sizes.dart';

class TIconAndTextWidget extends StatelessWidget {
  const TIconAndTextWidget({super.key, this.icon, required this.text, this.size=16});

  final IconData? icon;
  final String text;
  final double? size;


  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(icon,size: size,),
       const SizedBox(width: TSizes.spaceBtwItems,),
        Text(text,style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}
