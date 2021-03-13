import 'package:product_list/app/app.dart';
import 'package:get/get.dart';

/// The splash controller which will be used to control the [SplashView].
class SplashController extends GetxController {
  SplashController(this._splashPresenter);

  final SplashPresenter _splashPresenter;
}
