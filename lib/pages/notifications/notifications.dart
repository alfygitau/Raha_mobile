import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final List<Map<String, String>> notifications = [
    {
      "title":
          "Important: Your upcoming examination schedule has been updated. Please check the student portal for details.",
      "date": "March 28, 2025",
    },
    {
      "title":
          "Reminder: The deadline for scholarship applications is approaching soon. Submit your application before the due date!",
      "date": "March 27, 2025",
    },
    {
      "title":
          "Event Alert: Join us for the Annual Tech Symposium featuring guest speakers from top technology firms.",
      "date": "March 26, 2025",
    },
    {
      "title":
          "Library Notice: Due to system maintenance, the digital library services will be temporarily unavailable on April 1, 2025.",
      "date": "March 25, 2025",
    },
    {
      "title":
          "Health Advisory: Free medical check-ups will be conducted at the university clinic from March 30 to April 2, 2025.",
      "date": "March 24, 2025",
    },
    {
      "title":
          "Internship Opportunity: Apply now for the Summer Internship Program with leading industry partners.",
      "date": "March 23, 2025",
    },
    {
      "title":
          "Library Notice: Due to system maintenance, the digital library services will be temporarily unavailable on April 1, 2025.",
      "date": "March 25, 2025",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset("assets/images/arrow-left.png"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Color(0xFF1F242C),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xFFFFCF62),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 16,
                ),
                SizedBox(width: 6),
                Text(
                  "24 new notifications",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ...notifications.map(
                (notification) => Container(
                  height: 112,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(31, 36, 44, 0.16),
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color(0xFFF6F8FC),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.notifications_outlined,
                          color: Color(0xFF2D70E2),
                          size: 32,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              notification["title"]!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              notification["date"]!,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
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
      ),
    );
  }
}
