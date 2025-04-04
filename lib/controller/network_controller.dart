import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkController extends GetxController {
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(List<ConnectivityResult> results) {
    // Check if the list is empty or if it contains ConnectivityResult.none.
    if (results.isEmpty || results.contains(ConnectivityResult.none)) {
      if (!Get.isSnackbarOpen) {
        Get.snackbar(
          "No Internet",
          "You are offline. Please check your connection.",
          snackPosition: SnackPosition.TOP,
          backgroundColor:
              Get.theme.snackBarTheme.backgroundColor ?? Get.theme.primaryColor,
          colorText:
              Get.theme.snackBarTheme.actionTextColor ??
              Get.theme.colorScheme.onPrimary,
          isDismissible: false,
          instantInit: false,
          // duration: const Duration(days: 1),
        );
      }
    } else {
      if (Get.isSnackbarOpen) {
        Get.closeCurrentSnackbar();
      }
    }
  }
}