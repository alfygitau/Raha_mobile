import 'package:flutter/material.dart';
import 'package:my_school/pages/homepage/landing.dart';
import 'package:my_school/pages/notifications/notifications.dart';

class Departments extends StatefulWidget {
  const Departments({super.key});

  @override
  State<Departments> createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
  Map<int, bool> expandedTiles = {};
  final List<Map<String, dynamic>> faculties = [
    {
      "title": "Engineering",
      "date": "Updated: 25th March 2025",
      "status": "Active",
      "departments": [
        "Civil Engineering",
        "Mechanical Engineering",
        "Electrical Engineering",
      ],
    },
    {
      "title": "Medicine",
      "date": "Updated: 20th March 2025",
      "status": "Pending",
      "departments": [
        "Nursing",
        "Pharmacy",
        "Dentistry",
        "Surgery",
        "Food Science",
      ],
    },
    {
      "title": "Business",
      "date": "Updated: 18th March 2025",
      "status": "Active",
      "departments": [
        "Accounting",
        "Marketing",
        "Finance, Business Management",
      ],
    },
    {
      "title": "Science",
      "date": "Updated: 15th March 2025",
      "status": "Inactive",
      "departments": ["Mathematics", "Physical Science", "Biological Science"],
    },
    {
      "title": "Education",
      "date": "Updated: 15th March 2025",
      "status": "Inactive",
      "departments": [
        "Sociology",
        "Psychology",
        "Education Arts",
        "Social Science",
      ],
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Faculty Departments",
                      style: TextStyle(
                        color: Color(0xFF1F242C),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(Icons.filter_list_sharp),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children:
                      faculties.asMap().entries.map((entry) {
                        int index = entry.key;
                        Map<String, dynamic> faculty = entry.value;

                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: ExpansionTile(
                            title: Text(
                              faculty["title"],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D70E2),
                              ),
                            ),
                            subtitle: Text(
                              faculty["date"],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            trailing: Icon(
                              expandedTiles[index] == true
                                  ? Icons.keyboard_arrow_down_outlined
                                  : Icons.keyboard_arrow_right_outlined,
                              color: Colors.black87,
                            ),
                            onExpansionChanged: (bool expanded) {
                              setState(() {
                                expandedTiles[index] = expanded;
                              });
                            },
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 8,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children:
                                        faculty["departments"].map<Widget>((
                                          dept,
                                        ) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 5,
                                            ),
                                            child: Text(
                                              "- ${dept.toString().toUpperCase()}",
                                              style: const TextStyle(
                                                fontSize: 14,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
