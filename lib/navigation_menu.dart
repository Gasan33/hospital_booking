import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_booking/features/appointments/screens/my_appointments/my_appointments_screen.dart';
import 'package:hospital_booking/utils/constants/colors.dart';
import 'package:hospital_booking/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode=THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80.0,
          elevation: 0.0,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: darkMode?TColors.black:Colors.white,
          indicatorColor: darkMode?TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.add_circle,),
              label: 'New',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const MyAppointmentScreen(),
    Container(),
    Container(),
  ];
}
