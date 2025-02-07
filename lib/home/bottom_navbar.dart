import '../../alltrips/all_trip_page.dart';
import '../../wallet/wallet_page.dart';
import '../../home/home_screen.dart';
import '../../profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    const WalletPage(),
    const AllTripsPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.green,
        selectedLabelStyle: const TextStyle(height: 1.5),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                "assets/images/location_icon.png",
                height: 30.h,
                width: 30.w,
              )),
          BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                "assets/images/wallet.png",
                height: 30.h,
                width: 30.w,
              )),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/report_icon.png",
              height: 30.h,
              width: 30.w,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/profile_icon.png",
              height: 30.h,
              width: 30.w,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
