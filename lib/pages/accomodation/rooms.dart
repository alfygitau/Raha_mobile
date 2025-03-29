import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_school/pages/accomodation/book_room.dart';
import 'package:my_school/pages/accomodation/request_maintenance.dart';
import 'package:my_school/pages/homepage/landing.dart';

class Rooms extends StatefulWidget {
  const Rooms({super.key});

  @override
  State<Rooms> createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
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
                onPressed: () {},
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
                      "Rooms",
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
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 350 ? 4 : 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 98.33 / 96,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    ContainerWidget(text: "101"),
                    ContainerWidget(text: "102"),
                    ContainerWidget(text: "103"),
                    ContainerWidget(text: "104"),
                    ContainerWidget(text: "105", isAvailable: false),
                    ContainerWidget(text: "105"),
                    ContainerWidget(text: "106"),
                    ContainerWidget(text: "107"),
                    ContainerWidget(text: "108"),
                    ContainerWidget(text: "109"),
                    ContainerWidget(text: "110"),
                    ContainerWidget(text: "111"),
                    ContainerWidget(text: "112", isAvailable: false),
                    ContainerWidget(text: "113"),
                    ContainerWidget(text: "114"),
                    ContainerWidget(text: "115"),
                    ContainerWidget(text: "116"),
                    ContainerWidget(text: "117"),
                    ContainerWidget(text: "118"),
                    ContainerWidget(text: "119", isAvailable: false),
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
  final String text;
  final bool isAvailable;

  const ContainerWidget({
    super.key,
    this.isAvailable = true,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showRoomDetailsBottomSheet(context, {
          "id": "65035f5b-dce2-465f-ac09-821166206cd7",
          "roomNumber": "101",
          "price": 3000,
          "type": "Double",
          "isAvailable": true,
          "createdAt": "2025-03-26T07:55:12.117Z",
          "updatedAt": "2025-03-26T09:25:43.642Z",
        });
      },
      child: Container(
        width: 80,
        height: 80,
        padding: const EdgeInsets.fromLTRB(17, 16, 17, 16),
        decoration: BoxDecoration(
          color: isAvailable ? const Color(0xFFFEFEFE) : Colors.grey,
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
            const Text(
              "RM",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 12,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

void showRoomDetailsBottomSheet(
  BuildContext context,
  Map<String, dynamic> roomData,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: Image.asset("assets/images/line.png")),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Room Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.help_outline, color: Colors.blue),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            _infoRow("Room Number", roomData["roomNumber"]),
            _infoRow("Price", "Ksh ${roomData["price"]}"),
            _infoRow("Type", roomData["type"]),
            _infoRow(
              "Availability",
              roomData["isAvailable"] ? "Available ✅" : "Occupied ❌",
              color: roomData["isAvailable"] ? Colors.green : Colors.red,
            ),
            _infoRow(
              "Created At",
              DateFormat(
                'yyyy-MM-dd HH:mm',
              ).format(DateTime.parse(roomData["createdAt"])),
            ),
            _infoRow(
              "Updated At",
              DateFormat(
                'yyyy-MM-dd HH:mm',
              ).format(DateTime.parse(roomData["updatedAt"])),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => const BookRoom(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text("Book"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder:
                              (BuildContext context) =>
                                  const RequestMaintenance(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1F242C),
                    ),
                    child: const Text("Maintain"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      );
    },
  );
}

Widget _infoRow(String title, String value, {Color color = Colors.black}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: color,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
