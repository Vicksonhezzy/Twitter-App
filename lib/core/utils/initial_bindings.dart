import 'package:get/get.dart';
import 'package:twitter/controllers/controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());

    // Get.put(PrefUtils());
    // Get.put(ApiClient());
    // Connectivity connectivity = Connectivity();
    // Get.put(NetworkInfo(connectivity));
  }
}
