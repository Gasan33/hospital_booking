import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/device/device_utility.dart';

class THomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const THomeAppBar({
    super.key, required this.text, required this.image,
  });

  final String text,image;


  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Row(
        children: [
          Text("Hello, ",style: Theme.of(context).textTheme.bodySmall,),
          Text(text,style: Theme.of(context).textTheme.titleLarge!.apply(color: TColors.primary),),
        ],
      ),
      actions: [
        TRoundedContainer(
          backgroundColor: TColors.primary.withOpacity(0.3),
          child:  Image(
            image: AssetImage(image),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}