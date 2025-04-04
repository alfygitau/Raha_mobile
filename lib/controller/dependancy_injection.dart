import 'package:get/get.dart';
import 'network_controller.dart'; // Import your NetworkController

class DependencyInjection {
  static void init() {
    // Initialize all the controllers and services here
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}
