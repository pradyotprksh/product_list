import 'package:product_list/app/app.dart';
import 'package:get/get.dart';
import 'package:product_list/domain/domain.dart';

/// The Products controller which will be used to control the [ProductsView].
class ProductsController extends GetxController {
  ProductsController(this._productsPresenter);

  final ProductsPresenter _productsPresenter;

  CategoryList categoryList;

  /// Get category length
  int getTabLength() {
    _productsPresenter.toString();
    categoryList = Get.find<HomeController>().categoryList;
    return categoryList?.data?.length ?? 0;
  }

  /// Get initial index
  int getInitialIndex() {
    var currentIndex = 0;
    categoryList ??= Get.find<HomeController>().categoryList;
    var categoryId =
        (Get.arguments as Map<String, dynamic>)['categoryId'] as String;
    print(categoryId);
    if (categoryId != null) {
      var index = categoryList.data.indexOf(
        Datum(categoryId: categoryId),
      );
      if (index > 0) currentIndex = index;
    }
    return currentIndex;
  }
}
