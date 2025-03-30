import 'package:flutter/material.dart';
import 'package:my_school/pages/accomodation/rooms.dart';
import 'package:my_school/pages/homepage/landing.dart';
import 'package:my_school/pages/notifications/notifications.dart';

class Hostels extends StatefulWidget {
  const Hostels({super.key});

  @override
  State<Hostels> createState() => _HostelsState();
}

class _HostelsState extends State<Hostels> {
  final List<Map<String, dynamic>> hostels = [
    {
      'code': 'H101',
      'name': 'Sunrise Hostel',
      'location': 'Main Campus, Block A',
      'availableRooms': 50,
      'totalRooms': 150,
    },
    {
      'code': 'H102',
      'name': 'Sunset Hostel',
      'location': 'Main Campus, Block B',
      'availableRooms': 40,
      'totalRooms': 120,
    },
    {
      'code': 'H103',
      'name': 'Elite Hostel',
      'location': 'West Campus, Block C',
      'availableRooms': 30,
      'totalRooms': 100,
    },
    {
      'code': 'H104',
      'name': 'Silver Hostel',
      'location': 'East Campus, Block D',
      'availableRooms': 20,
      'totalRooms': 80,
    },
    {
      'code': 'H105',
      'name': 'Gold Hostel',
      'location': 'North Campus, Block E',
      'availableRooms': 25,
      'totalRooms': 90,
    },
    {
      'code': 'H106',
      'name': 'Diamond Hostel',
      'location': 'South Campus, Block F',
      'availableRooms': 35,
      'totalRooms': 110,
    },
    {
      'code': 'H107',
      'name': 'Platinum Hostel',
      'location': 'Main Campus, Block G',
      'availableRooms': 45,
      'totalRooms': 130,
    },
    {
      'code': 'H108',
      'name': 'Emerald Hostel',
      'location': 'West Campus, Block H',
      'availableRooms': 15,
      'totalRooms': 70,
    },
    {
      'code': 'H109',
      'name': 'Pearl Hostel',
      'location': 'East Campus, Block I',
      'availableRooms': 10,
      'totalRooms': 60,
    },
    {
      'code': 'H110',
      'name': 'Ruby Hostel',
      'location': 'North Campus, Block J',
      'availableRooms': 55,
      'totalRooms': 160,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFEEF2FA),
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Landing(),
                  ),
                );
              },
              child: Image.asset('assets/images/logo.png', height: 30),
            ),
            const SizedBox(width: 8),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Raha',
                  style: TextStyle(
                    color: Color(0xFF1F242C),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "School",
                  style: TextStyle(
                    color: Color(0xFF2D70E2),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/setting-2.png', height: 30),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Image.asset('assets/images/notification.png', height: 30),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Notifications(),
                    ),
                  );
                },
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hostels",
                      style: TextStyle(
                        color: Color(0xFF1F242C),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(Icons.filter_list_sharp),
                  ],
                ),
                const SizedBox(height: 10),
                ...hostels.map(
                  (hostel) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const Rooms(),
                          ),
                        );
                      },
                      child: Container(
                        height: 102,
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1F242C),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "HL",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800,
                                      height: 1,
                                    ),
                                  ),
                                  Text(
                                    hostel["code"]?.substring(1),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800,
                                      height: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 2,
                              height: double.infinity,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    hostel["name"],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on_outlined,
                                        size: 14,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        hostel["location"],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.room_service_outlined,
                                        size: 14,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        "Available rooms: ${hostel["availableRooms"]}",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.meeting_room_outlined,
                                        size: 14,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        "Total rooms: ${hostel["totalRooms"]}",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
