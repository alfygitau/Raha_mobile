import 'package:flutter/material.dart';
import 'package:my_school/pages/accomodation/bookings.dart';
import 'package:my_school/pages/accomodation/hostels.dart';
import 'package:my_school/pages/accomodation/rooms.dart';
import 'package:my_school/pages/homepage/admissions.dart';
import 'package:my_school/pages/homepage/my_home.dart';
import 'package:my_school/pages/profile/my_profile.dart';
import 'package:my_school/reusables/bottom_navigation.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _selectedIndex = 0;

  // List of pages
  final List<Widget> _pages = [
    const MyHome(),
    const Admissions(),
    const Hostels(),
    const MyProfile(),
    const Rooms(),
    const Bookings()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FA),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNav(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
