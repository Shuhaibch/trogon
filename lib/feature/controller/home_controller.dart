import 'package:get/get.dart';
import 'package:trogon/data/home_repository.dart';
import 'package:trogon/feature/model/category_model.dart';
import 'package:trogon/feature/model/top_course_model.dart';
import 'package:trogon/utils/loader/loader.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  RxBool isLoading = false.obs;
  RxList<CategoryModel> categoryList = <CategoryModel>[].obs;
  RxList<TopCourseModel> topCourseList = <TopCourseModel>[].obs;
  final _homeRepository = Get.put(HomeRepository());
  
@override
  void onInit() {
    getTopCources();
    getCategories();
    super.onInit();
  }
  Future<void> getTopCources() async {
    isLoading.value = true;
    final product = await _homeRepository.fetchTopCourses();
    if (product['status'] == true) {
      topCourseList.addAll(product['data']);
      isLoading.value = false;
    } else {
      isLoading.value = false;
      CLoaders.errorSnackBar(
          title: 'Oh Snap!', message: product['data'].toString());
    }
  }
  Future<void> getCategories() async {
    isLoading.value = true;
    final product = await _homeRepository.fetchCategories();
    if (product['status'] == true) {
      categoryList.addAll(product['data']);
      isLoading.value = false;
    } else {
      isLoading.value = false;
      CLoaders.errorSnackBar(
          title: 'Oh Snap!', message: product['data'].toString());
    }
  }

}
