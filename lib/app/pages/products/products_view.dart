import 'package:flutter/material.dart';
import 'package:product_list/app/app.dart';
import 'package:get/get.dart';
import 'package:product_list/domain/entities/category_list.dart';

/// The splash view which will show the splash screen and perform the basic
/// ui work.
class ProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<ProductsController>(
        builder: (_controller) => DefaultTabController(
          length: _controller.getTabLength(),
          initialIndex: _controller.getInitialIndex(),
          child: Scaffold(
            backgroundColor: Get.theme.backgroundColor,
            appBar: _getAppBar(_controller.categoryList),
          ),
        ),
      );

  /// Get app bar for the home page
  AppBar _getAppBar(CategoryList categoryList) => AppBar(
        backgroundColor: Get.theme.backgroundColor,
        elevation: Dimens.zero,
        centerTitle: true,
        iconTheme: Styles.iconThemeData,
        title: Text(
          StringConstants.prodcuts,
          style: Styles.oppositeBoldl18,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Styles.iconThemeData.color,
            ),
          ),
        ],
        bottom: TabBar(
          labelStyle: Styles.primaryBold20,
          indicatorColor: ColorsValue.accentColor,
          unselectedLabelStyle: Styles.subtitlel14,
          labelColor: ColorsValue.accentColor,
          unselectedLabelColor: ColorsValue.subtitleColor,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          onTap: (index) {},
          tabs: categoryList.data
              .map(
                (category) => Tab(
                  text: category.categoryName,
                ),
              )
              .toList(),
        ),
      );
}
