
import 'package:flutter/material.dart';
import 'package:trogon/commen/images/c_rounded_images.dart';
import 'package:trogon/commen/shapes/container/rounded_container.dart';
import 'package:trogon/feature/model/category_model.dart';
import 'package:trogon/utils/helper/device_helper.dart';

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({
    super.key,
    required this.color,
    required this.category,
  });
  final Color color;
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: CRoundedContainer(
        backgroundColor: color,
        height: CHelperFuntions.screenHeight() * .23,
        width: CHelperFuntions.screenWidth() * .48,
        boxshadow: const [
          BoxShadow(blurRadius: 5, color: Colors.grey),
        ],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CRoundedImage(
                    height: 110,
                    width: CHelperFuntions.screenWidth() * .48,
                    fit: BoxFit.cover,
                    isNetworkImage: true,
                    imageUrl: category.thumbnail),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                  child: SizedBox(
                    height: 60,
                    child: Text(
                      category.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10),
              child: Text('${category.numberOfCourses} Cources',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }
}
