import 'package:flutter/material.dart';
import 'package:my_school/pages/billings/transactions.dart';
import 'package:my_school/pages/homepage/landing.dart';
import 'package:my_school/pages/notifications/notifications.dart';

class Invoices extends StatefulWidget {
  const Invoices({super.key});

  @override
  State<Invoices> createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
  final List<Map<String, String>> invoices = [
    {"title": "Tuition Fees", "status": "Pending", "date": "5th March 2025"},
    {"title": "Tour", "status": "Paid", "date": "10th April 2025"},
    {"title": "Sport Trip", "status": "Pending", "date": "15th May 2025"},
    {"title": "Development Fee", "status": "Paid", "date": "1st June 2025"},
    {
      "title": "Examination Fees",
      "status": "Pending",
      "date": "20th July 2025",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FA),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.attach_money, color: Colors.white),
      ),
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
                Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 5,
                  ),
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MY BALANCE : KES 1,200",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1,
                            ),
                          ),
                          Text(
                            "Amount Paid : KES 8,800",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Total Amount : KES 10,000",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "5th March 2025",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 2,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.yellow,
                            ),
                            child: const Center(
                              child: Text(
                                "Not Cleared",
                                style: TextStyle(
                                  color: Colors.black,

                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Invoices",
                      style: TextStyle(
                        color: Color(0xFF1F242C),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(Icons.help_outline_rounded),
                  ],
                ),
                const SizedBox(height: 5),
                Column(
                  children:
                      invoices.map((invoice) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder:
                                    (BuildContext context) =>
                                        const Transactions(),
                              ),
                            );
                          },
                          child: Container(
                            height: 85,
                            width: double.infinity,
                            margin: const EdgeInsets.only(bottom: 8),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 5,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color:
                                            invoice["status"] == "Paid"
                                                ? Colors.green
                                                : const Color(
                                                  0xFF2D70E2,
                                                ), // Green for paid, blue for pending
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          invoice["title"]!,
                                          style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "Status: ${invoice["status"]}",
                                          style: TextStyle(
                                            color:
                                                invoice["status"] == "Paid"
                                                    ? Colors.green
                                                    : Colors.yellow,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          invoice["date"]!,
                                          style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 32,
                                  color:
                                      invoice["status"] == "Paid"
                                          ? Colors.green
                                          : const Color(0xFF2D70E2),
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
      ),
    );
  }
}
