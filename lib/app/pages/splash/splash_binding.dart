import 'package:product_list/app/app.dart';
import 'package:get/get.dart';

/// A list of bindings which will be used in the route of [SplashView].
class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(
        Get.put(
          SplashPresenter(),
        ),
      ),
    );
  }
}
