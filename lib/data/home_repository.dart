import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:trogon/feature/model/category_model.dart';
import 'package:trogon/feature/model/top_course_model.dart';

class HomeRepository extends GetxController {
  static HomeRepository get instance => Get.find();

  fetchTopCourses() async {
    try {
      var responce = await http.get(
        Uri.parse('https://futursity.com/course/api/top_courses'),
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final List result = jsonDecode(responce.body);
        final List<TopCourseModel> topCourses =
            result.map((e) => TopCourseModel.fromJson(e)).toList();

        return {"status": true, "data": topCourses};
      } else {
        return {"status": false, "data": responce.body};
      }
    } catch (e) {
      return {"status": false, "data": 'Error Occured'};
    }
  }
  fetchCategories() async {
    try {
      var responce = await http.get(
        Uri.parse('https://futursity.com/course/api/categories'),
      );
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final List result = jsonDecode(responce.body);
        final List<CategoryModel> categories =
            result.map((e) => CategoryModel.fromJson(e)).toList();

        return {"status": true, "data": categories};
      } else {
        return {"status": false, "data": responce.body};
      }
    } catch (e) {
      return {"status": false, "data": 'Error Occured'};
    }
  }
}
