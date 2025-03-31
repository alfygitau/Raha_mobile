import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExaminationResult extends StatefulWidget {
  const ExaminationResult({super.key});

  @override
  State<ExaminationResult> createState() => _ExaminationResultState();
}

class _ExaminationResultState extends State<ExaminationResult> {
  final List<Map<String, dynamic>> units = [
    {
      "id": "1",
      "studentId": "STU001",
      "examId": "EXAM101",
      "courseId": "CSE202",
      "unitId": "UNIT301",
      "unitName": "Data Structures",
      "score": 28.5,
      "grade": "A",
      "isFinalized": true,
      "createdAt": "2025-03-31T10:00:00Z",
    },
    {
      "id": "2",
      "studentId": "STU002",
      "examId": "EXAM102",
      "courseId": "CSE202",
      "unitId": "UNIT302",
      "unitName": "Database Systems",
      "score": 15.0,
      "grade": "B",
      "isFinalized": true,
      "createdAt": "2025-03-31T10:05:00Z",
    },
    {
      "id": "3",
      "studentId": "STU003",
      "examId": "EXAM103",
      "courseId": "CSE202",
      "unitId": "UNIT303",
      "unitName": "Software Engineering",
      "score": 22.0,
      "grade": "A",
      "isFinalized": true,
      "createdAt": "2025-03-31T10:10:00Z",
    },
    {
      "id": "4",
      "studentId": "STU004",
      "examId": "EXAM104",
      "courseId": "CSE202",
      "unitId": "UNIT304",
      "unitName": "Computer Networks",
      "score": 22.5,
      "grade": "B+",
      "isFinalized": true,
      "createdAt": "2025-03-31T10:15:00Z",
    },
    {
      "id": "5",
      "studentId": "STU005",
      "examId": "EXAM105",
      "courseId": "CSE202",
      "unitId": "UNIT305",
      "unitName": "Artificial Intelligence",
      "score": 19.0,
      "grade": "A",
      "isFinalized": true,
      "createdAt": "2025-03-31T10:20:00Z",
    },
    {
      "id": "6",
      "studentId": "STU006",
      "examId": "EXAM106",
      "courseId": "CSE202",
      "unitId": "UNIT306",
      "unitName": "Operating Systems",
      "score": 18.0,
      "grade": "C",
      "isFinalized": true,
      "createdAt": "2025-03-31T10:25:00Z",
    },
    {
      "id": "7",
      "studentId": "STU007",
      "examId": "EXAM107",
      "courseId": "CSE202",
      "unitId": "UNIT307",
      "unitName": "Cyber Security",
      "score": 26.5,
      "grade": "B+",
      "isFinalized": true,
      "createdAt": "2025-03-31T10:30:00Z",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: const Color(0xFF2D70E2),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 230,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xFF2D70E2)),
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).padding.top),
                    const Text(
                      "CONTINOUS ASSESSMENT TEST 1",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      "Bachelor of Science, Computer Science",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      "5th April 2025",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 200,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Course units",
                                style: TextStyle(
                                  color: Color(0xFF1F242C),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Column(
                              children:
                                  units.map((unit) {
                                    return GestureDetector(
                                      child: Container(
                                        height: 60,
                                        width: double.infinity,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        margin: const EdgeInsets.only(
                                          bottom: 12,
                                        ),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFEEF2FA),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  unit["unitId"],
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    height: 1,
                                                  ),
                                                ),
                                                Text(
                                                  unit["unitName"],
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                              ],
                                            ),
                                             Text(
                                              unit['score'].toString(),
                                              style: const TextStyle(
                                                color: Color(0xFF2D70E2),
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -50,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: 70,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Assess. Time",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "1 Hours",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 2,
                              height: double.infinity,
                              color: const Color(0xFF2D70E2),
                            ),
                            const Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Status",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "Done",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 2,
                              height: double.infinity,
                              color: const Color(0xFF2D70E2),
                            ),
                            const Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Max Score",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "30",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
