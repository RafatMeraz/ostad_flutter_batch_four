import 'package:crafty_bay/presentation/state_holders/category_controller.dart';
import 'package:crafty_bay/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:crafty_bay/presentation/ui/widgets/category_item.dart';
import 'package:crafty_bay/presentation/ui/widgets/center_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        Get.find<MainBottomNavController>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.find<MainBottomNavController>().backToHome();
            },
          ),
          title: const Text(
            'Category',
            style: TextStyle(fontSize: 18),
          ),
          elevation: 3,
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            Get.find<CategoryController>().getCategoryList();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GetBuilder<CategoryController>(builder: (categoryController) {
              return Visibility(
                visible: categoryController.inProgress == false,
                replacement: const CenterCircularProgressIndicator(),
                child: GridView.builder(
                  itemCount:
                      categoryController.categoryListModel.categoryList?.length ??
                          0,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.95,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return FittedBox(
                        child: CategoryItem(
                      category: categoryController
                          .categoryListModel.categoryList![index],
                    ));
                  },
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
