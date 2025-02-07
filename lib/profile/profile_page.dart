import 'package:cargo_driver_app/home/vehicle_setting.dart';

import '../../alltrips/all_trip_page.dart';
import '../../notification/notifcation_page.dart';
import '../../payment/payment_page.dart';
import '../../profile/update_profile.dart';
import '../../widgets/build_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../constant/colors_utils.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: const Alignment(0.5, 0.5),
            colors: [
              bgColor,
              bgColor.withOpacity(0.1),
              bgColor.withOpacity(0.1),
              bgColor.withOpacity(0.1)
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.h,
            ),
            Padding(
              padding: EdgeInsets.all(16.0.h),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: textBrownColor,
                    child: Image.asset(
                      'assets/images/profile.png',
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Abdullah',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            ListTile(
              onTap: () => Get.to(() => UpdateProfile()),
              dense: true,
              leading: Image.asset(
                'assets/images/profile_icon.png',
                color: Colors.black,
                height: 20.h,
                width: 20.h,
              ),
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 16.sp),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              onTap: () => Get.to(() => const VehicleSettingPage()),
              dense: true,
              leading: Image.asset(
                'assets/images/setting.png',
                color: Colors.black,
                height: 20.h,
                width: 20.h,
              ),
              title: Text(
                'vehicle setting',
                style: TextStyle(fontSize: 16.sp),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              onTap: () => Get.to(() => const AllTripsPage()),
              dense: true,
              leading: Image.asset(
                'assets/images/driver_way.png',
                color: Colors.black,
                height: 20.h,
                width: 20.h,
              ),
              title: Text(
                'Trips',
                style: TextStyle(fontSize: 16.sp),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              onTap: () => Get.to(() => const NotificationPage()),
              dense: true,
              leading: Image.asset(
                'assets/images/notification.png',
                color: Colors.black,
                height: 20.h,
                width: 20.h,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(fontSize: 16.sp),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              onTap: () => Get.to(() => const PaymentPage()),
              dense: true,
              leading: Image.asset(
                'assets/images/payment.png',
                color: Colors.black,
                height: 20.h,
                width: 20.h,
              ),
              title: Text(
                'Payment',
                style: TextStyle(fontSize: 16.sp),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              onTap: () => buildDialog(
                  onPress1: Get.back,
                  onPress2: Get.back,
                  btntext1: 'No',
                  btntext2: 'Yes',
                  btnColor2: Colors.redAccent,
                  height: 40,
                  width: 60,
                  isDelete: true,
                  title: 'Delete Account',
                  subtitle: 'Are You Sure You Want To\n Delete Your Account?'),
              dense: true,
              leading: Image.asset(
                'assets/images/deletacnt.png',
                height: 20.h,
                width: 20.h,
              ),
              title: Text(
                'Delete Account',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            const Divider(),
            const Spacer(),
            InkWell(
              onTap: () => buildDialog(
                  onPress1: Get.back,
                  onPress2: Get.back,
                  btntext1: 'No',
                  btntext2: 'Yes',
                  height: 40,
                  width: 60,
                  isDelete: false,
                  title: 'Sign Out',
                  subtitle: 'Are You Sure You Want To\nSign Out?'),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Icon(Icons.logout), Text('Sign Out')],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
