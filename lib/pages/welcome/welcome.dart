import 'package:flutter/material.dart';
import 'dart:async';
import 'package:my_school/pages/auth/login.dart';
import 'package:permission_handler/permission_handler.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _requestAllPermissions();
    });
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => const Login()),
      ),
    );
  }

  Future<void> _requestAllPermissions() async {
    List<Permission> permissions = [
      Permission.camera,
      Permission.microphone,
      Permission.storage,
      Permission.location,
      Permission.audio,
    ];
    Map<Permission, PermissionStatus> statuses = await permissions.request();
    if (statuses.values.any((status) => status.isPermanentlyDenied)) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2FA),
      body: Center(child: Image.asset("assets/images/logo.png")),
    );
  }
}
