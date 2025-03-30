import 'package:flutter/material.dart';
import 'package:my_school/pages/courses/course_units.dart';
import 'package:my_school/pages/homepage/landing.dart';
import 'package:my_school/pages/notifications/notifications.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  final List<Map<String, String>> courses = [
    {"sn": "1", "code": "CS", "title": "Introduction to Computer Science"},
    {"sn": "2", "code": "ENG", "title": "Advanced English Composition"},
    {"sn": "3", "code": "MATH", "title": "Calculus and Linear Algebra"},
    {"sn": "4", "code": "BIO", "title": "Fundamentals of Biology"},
    {"sn": "5", "code": "ECON", "title": "Microeconomics Principles"},
    {"sn": "6", "code": "HIST", "title": "World History Overview"},
    {"sn": "7", "code": "PHYS", "title": "Physics for Engineers"},
    {"sn": "8", "code": "CHEM", "title": "Organic Chemistry"},
    {"sn": "9", "code": "PSYCH", "title": "Introduction to Psychology"},
    {"sn": "10", "code": "SOC", "title": "Sociology and Society"},
    {"sn": "11", "code": "BUS", "title": "Business Management Principles"},
    {"sn": "12", "code": "LAW", "title": "Introduction to Law"},
    {"sn": "13", "code": "MED", "title": "Basic Human Anatomy"},
    {"sn": "14", "code": "PHIL", "title": "Ethics and Philosophy"},
    {"sn": "15", "code": "STAT", "title": "Statistical Analysis"},
    {"sn": "16", "code": "ART", "title": "Modern Art History"},
    {"sn": "17", "code": "LIT", "title": "Shakespearean Literature"},
    {"sn": "18", "code": "IT", "title": "Cybersecurity and Data Privacy"},
    {"sn": "19", "code": "ENV", "title": "Environmental Science"},
    {"sn": "20", "code": "GEO", "title": "Geography and Earth Studies"},
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
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Courses",
                      style: TextStyle(
                        color: Color(0xFF1F242C),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(Icons.filter_list_sharp),
                  ],
                ),
                const SizedBox(height: 5),
                Column(
                  children: [
                    DataTable(
                      columnSpacing: 16.0,
                      headingRowColor: WidgetStateProperty.all(Colors.blue),
                      columns: const [
                        DataColumn(
                          label: Text(
                            'SN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'CODE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'COURSE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                      rows: List.generate(
                        courses.length,
                        (index) => DataRow(
                          color: WidgetStateProperty.resolveWith<Color?>((
                            Set<WidgetState> states,
                          ) {
                            return index.isEven
                                ? const Color(0xFFEEF2FA)
                                : Colors.white;
                          }),
                          cells: [
                            DataCell(
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const CourseUnits(),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  width: 20,
                                  child: Text(courses[index]['sn']!),
                                ),
                              ),
                            ),
                            DataCell(
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const CourseUnits(),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  width: 70,
                                  child: Text(
                                    courses[index]['code']!,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const CourseUnits(),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  width: 200,
                                  child: Text(
                                    courses[index]['title']!.toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
