import 'package:product_list/app/app.dart';
import 'package:get/get.dart';

/// The Products controller which will be used to control the [ProductsView].
class ProductsController extends GetxController {
  ProductsController(this._productsPresenter);

  final ProductsPresenter _productsPresenter;
}
