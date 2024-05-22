import 'package:flutter/material.dart';
import 'package:trogon/commen/images/c_rounded_images.dart';
import 'package:trogon/commen/shapes/container/rounded_container.dart';
import 'package:trogon/feature/model/top_course_model.dart';
import 'package:trogon/utils/helper/device_helper.dart';

class CTopCourcesContainer extends StatelessWidget {
  const CTopCourcesContainer({
    super.key,
    required this.topCourse,
  });
  final TopCourseModel topCourse;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: CRoundedContainer(
        // height: CHelperFuntions.screenHeight() * .25,
        width: CHelperFuntions.screenWidth() * .43,
        boxshadow: const [
          BoxShadow(blurRadius: 5, color: Colors.grey),
        ],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CRoundedImage(
                    width: CHelperFuntions.screenWidth() * .43,
                    height: 130,
                    fit: BoxFit.cover,
                    isNetworkImage: true,
                    imageUrl: topCourse.thumbnail),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                  child: SizedBox(
                    height: 60,
                    child: Text(
                      topCourse.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, bottom: 25),
              child: Text(
                '${topCourse.fullPrice} INR +GST',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
