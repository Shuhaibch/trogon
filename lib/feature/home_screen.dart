import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trogon/commen/images/c_rounded_images.dart';
import 'package:trogon/commen/layout/grid_layout.dart';
import 'package:trogon/commen/shapes/container/rounded_container.dart';
import 'package:trogon/commen/text/section_heading.dart';
import 'package:trogon/commen/widget/appbar/custom_appbar.dart';
import 'package:trogon/commen/widget/course/category.dart';
import 'package:trogon/commen/widget/course/top_course_card.dart';
import 'package:trogon/feature/controller/home_controller.dart';
import 'package:trogon/feature/model/category_model.dart';
import 'package:trogon/utils/constants/sizes.dart';
import 'package:trogon/utils/helper/device_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: Colors.grey[850],
          child: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      appBar: const CAppbar(),
      body: SingleChildScrollView(
        child: Obx(
          () {
            if (controller.isLoading.value) {
              return const SizedBox(
                height: 600,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(CSizes.defaultSpace),
              child: Column(
                children: [
                  const CSectionHeading(
                    title: 'Top Course',
                  ),
                  SizedBox(
                    height: CHelperFuntions.screenHeight() * .31,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemBuilder: (context, index) => CTopCourcesContainer(
                        topCourse: controller.topCourseList[index],
                      ),
                      itemCount: controller.topCourseList.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),

                  const SizedBox(height: CSizes.spaceBtwSection),
                  //* Categories
                  const CSectionHeading(
                    title: 'Categories',
                    showActionButton: false,
                  ),
                  const SizedBox(height: CSizes.spaceBtwItem - 5),
                  CGridLayout(
                      itemCount: controller.categoryList.length,
                      itemBuilder: (_, index) => CategoriesContainer(
                          category: controller.categoryList[index],
                          color: index % 3 == 0
                              ? const Color.fromARGB(255, 124, 16, 240)
                              : index % 3 == 1
                                  ? const Color.fromARGB(255, 240, 103, 66)
                                  : const Color.fromARGB(255, 51, 182, 145)))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
