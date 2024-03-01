import 'package:flutter/material.dart';
import 'package:hospital_booking/features/appointments/screens/my_appointments/widgets/THomeAppBar.dart';
import 'package:hospital_booking/features/appointments/screens/my_appointments/widgets/appointments_widget.dart';
import 'package:hospital_booking/utils/constants/image_strings.dart';
import '../../../../common/styles/spacing_styles.dart';

class MyAppointmentScreen extends StatelessWidget {
  const MyAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:const THomeAppBar(text:"Gasan",image: TImage.user,),
      body: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: ListView.builder(
          itemCount: 8,
          shrinkWrap: true,
          itemBuilder: (_, int index) =>const TAppointmentWidget(),

        ),
      ),
    );
  }
}




