import 'package:flutter/material.dart';
import 'package:my_school/pages/accomodation/hostels.dart';
import 'package:my_school/pages/courses/courses.dart';
import 'package:my_school/pages/homepage/admissions.dart';
import 'package:my_school/pages/homepage/landing.dart';
import 'package:my_school/pages/news/news.dart';
import 'package:my_school/pages/notifications/notifications.dart';
import 'package:my_school/pages/profile/my_profile.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          top: 33,
                          child: Container(
                            height: 159,
                            width: 163,
                            decoration: const BoxDecoration(
                              color: Color(0xFF4086FE),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(90),
                                topRight: Radius.circular(90),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            height: 192,
                            width: 163,
                            child: Image.asset(
                              "assets/images/my_profile.png",
                              width: 120,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Text(
                            "#141807956",
                            style: TextStyle(
                              color: Color(0xFF2D70E2),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Alfred Kariuki Gitau",
                            style: TextStyle(
                              color: Color(0xFF1F242C),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "alfygitau@gmail.com",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset("assets/images/teacher.png"),
                              const SizedBox(width: 10),
                              const Text(
                                "254*******436",
                                style: TextStyle(
                                  color: Color(0xFF4086FE),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Image.asset("assets/images/eye-slash.png"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 112,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF4086FE),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Latest Announcements",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Registration for Certified Student Internship Program at Company...",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 400 ? 3 : 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 98.33 / 96,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const ContainerWidget(
                      icon: Icons.school_outlined,
                      text: "Faculty",
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const Courses(),
                          ),
                        );
                      },
                      child: const ContainerWidget(
                        icon: Icons.cast_for_education_outlined,
                        text: "Courses",
                      ),
                    ),
                    const ContainerWidget(
                      icon: Icons.space_dashboard_outlined,
                      text: "Departments",
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const Hostels(),
                          ),
                        );
                      },
                      child: const ContainerWidget(
                        icon: Icons.security,
                        text: "Hostels",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const News(),
                          ),
                        );
                      },
                      child: const ContainerWidget(
                        icon: Icons.new_releases_outlined,
                        text: "News & Notices",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder:
                                (BuildContext context) => const Admissions(),
                          ),
                        );
                      },
                      child: const ContainerWidget(
                        icon: Icons.settings_applications_outlined,
                        text: "Admissions",
                      ),
                    ),
                    const ContainerWidget(
                      icon: Icons.book_outlined,
                      text: "Resources",
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder:
                                (BuildContext context) => const MyProfile(),
                          ),
                        );
                      },
                      child: const ContainerWidget(
                        icon: Icons.person_2_outlined,
                        text: "Profile",
                      ),
                    ),
                    const ContainerWidget(
                      icon: Icons.money_outlined,
                      text: "Finances & Fees",
                    ),
                    const ContainerWidget(
                      icon: Icons.document_scanner_outlined,
                      text: "Examinations",
                    ),
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

class ContainerWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContainerWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98.33,
      height: 96,
      padding: const EdgeInsets.fromLTRB(17, 16, 17, 16),
      decoration: BoxDecoration(
        color: const Color(0xFFFEFEFE),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1D51AB29),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
          BoxShadow(
            color: Color(0xFFFFFFFF),
            blurRadius: 12,
            offset: Offset(-2, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Colors.blue),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
