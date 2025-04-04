import 'package:flutter/material.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_school/controller/dependancy_injection.dart';
import 'package:my_school/pages/welcome/welcome.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  // Ensure the bindings are initialized before using async operations
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependency injection
  DependencyInjection.init();

  // Load environment variables
  await dotenv.load(fileName: ".env");

  // Run the app after all initializations are complete
  runApp(
    GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        // Add necessary bindings here
      }),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My School',
      theme: ThemeData(
        fontFamily: 'NunitoSans',
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          secondary: Colors.black,
          surface: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        ),
        datePickerTheme: DatePickerThemeData(
          backgroundColor: Colors.white,
          headerBackgroundColor: const Color(0xFF4086FE),
          headerForegroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          todayBackgroundColor: WidgetStateProperty.all(
            const Color(0xFF4086FE),
          ),
          todayForegroundColor: WidgetStateProperty.all(Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const Color(0xFF4086FE);
            }
            return Colors.grey;
          }),
          overlayColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) {
              return const Color(0xFF4086FE).withOpacity(0.3);
            }
            return null;
          }),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const Color(0xFF4086FE);
            }
            return Colors.white;
          }),
          checkColor: WidgetStateProperty.all(Colors.black),
          side: const BorderSide(color: Colors.white),
        ),
        useMaterial3: true,
      ),
      home: const Welcome(),
    );
  }
}
