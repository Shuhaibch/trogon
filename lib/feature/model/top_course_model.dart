// To parse this JSON data, do
//
//     final topCourseModel = topCourseModelFromJson(jsonString);

import 'dart:convert';

List<TopCourseModel> topCourseModelFromJson(String str) =>
    List<TopCourseModel>.from(
        json.decode(str).map((x) => TopCourseModel.fromJson(x)));

String topCourseModelToJson(List<TopCourseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TopCourseModel {
  String id;
  String title;
  String shortDescription;
  String description;
  List<String> outcomes;
  String language;
  String categoryId;
  String subCategoryId;
  String section;
  List<dynamic> requirements;
  String price;
  dynamic discountFlag;
  String discountedPrice;
  String level;
  String userId;
  String thumbnail;
  String videoUrl;
  String dateAdded;
  String lastModified;
  dynamic visibility;
  String isTopCourse;
  String isAdmin;
  String status;
  String courseOverviewProvider;
  String metaKeywords;
  String metaDescription;
  dynamic isFreeCourse;
  String topCourseModelExternal;
  String externalLink;
  int rating;
  int numberOfRatings;
  String instructorName;
  int totalEnrollment;
  String shareableLink;
  String fullPrice;
  String videoCount;

  TopCourseModel({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.description,
    required this.outcomes,
    required this.language,
    required this.categoryId,
    required this.subCategoryId,
    required this.section,
    required this.requirements,
    required this.price,
    required this.discountFlag,
    required this.discountedPrice,
    required this.level,
    required this.userId,
    required this.thumbnail,
    required this.videoUrl,
    required this.dateAdded,
    required this.lastModified,
    required this.visibility,
    required this.isTopCourse,
    required this.isAdmin,
    required this.status,
    required this.courseOverviewProvider,
    required this.metaKeywords,
    required this.metaDescription,
    required this.isFreeCourse,
    required this.topCourseModelExternal,
    required this.externalLink,
    required this.rating,
    required this.numberOfRatings,
    required this.instructorName,
    required this.totalEnrollment,
    required this.shareableLink,
    required this.fullPrice,
    required this.videoCount,
  });

  TopCourseModel copyWith({
    String? id,
    String? title,
    String? shortDescription,
    String? description,
    List<String>? outcomes,
    String? language,
    String? categoryId,
    String? subCategoryId,
    String? section,
    List<dynamic>? requirements,
    String? price,
    dynamic discountFlag,
    String? discountedPrice,
    String? level,
    String? userId,
    String? thumbnail,
    String? videoUrl,
    String? dateAdded,
    String? lastModified,
    dynamic visibility,
    String? isTopCourse,
    String? isAdmin,
    String? status,
    String? courseOverviewProvider,
    String? metaKeywords,
    String? metaDescription,
    dynamic isFreeCourse,
    String? topCourseModelExternal,
    String? externalLink,
    int? rating,
    int? numberOfRatings,
    String? instructorName,
    int? totalEnrollment,
    String? shareableLink,
    String? fullPrice,
    String? videoCount,
  }) =>
      TopCourseModel(
        id: id ?? this.id,
        title: title ?? this.title,
        shortDescription: shortDescription ?? this.shortDescription,
        description: description ?? this.description,
        outcomes: outcomes ?? this.outcomes,
        language: language ?? this.language,
        categoryId: categoryId ?? this.categoryId,
        subCategoryId: subCategoryId ?? this.subCategoryId,
        section: section ?? this.section,
        requirements: requirements ?? this.requirements,
        price: price ?? this.price,
        discountFlag: discountFlag ?? this.discountFlag,
        discountedPrice: discountedPrice ?? this.discountedPrice,
        level: level ?? this.level,
        userId: userId ?? this.userId,
        thumbnail: thumbnail ?? this.thumbnail,
        videoUrl: videoUrl ?? this.videoUrl,
        dateAdded: dateAdded ?? this.dateAdded,
        lastModified: lastModified ?? this.lastModified,
        visibility: visibility ?? this.visibility,
        isTopCourse: isTopCourse ?? this.isTopCourse,
        isAdmin: isAdmin ?? this.isAdmin,
        status: status ?? this.status,
        courseOverviewProvider:
            courseOverviewProvider ?? this.courseOverviewProvider,
        metaKeywords: metaKeywords ?? this.metaKeywords,
        metaDescription: metaDescription ?? this.metaDescription,
        isFreeCourse: isFreeCourse ?? this.isFreeCourse,
        topCourseModelExternal:
            topCourseModelExternal ?? this.topCourseModelExternal,
        externalLink: externalLink ?? this.externalLink,
        rating: rating ?? this.rating,
        numberOfRatings: numberOfRatings ?? this.numberOfRatings,
        instructorName: instructorName ?? this.instructorName,
        totalEnrollment: totalEnrollment ?? this.totalEnrollment,
        shareableLink: shareableLink ?? this.shareableLink,
        fullPrice: fullPrice ?? this.fullPrice,
        videoCount: videoCount ?? this.videoCount,
      );

  factory TopCourseModel.fromJson(Map<String, dynamic> json) => TopCourseModel(
        id: json["id"],
        title: json["title"],
        shortDescription: json["short_description"],
        description: json["description"],
        outcomes: List<String>.from(json["outcomes"].map((x) => x)),
        language: json["language"],
        categoryId: json["category_id"],
        subCategoryId: json["sub_category_id"],
        section: json["section"],
        requirements: List<dynamic>.from(json["requirements"].map((x) => x)),
        price: json["price"],
        discountFlag: json["discount_flag"],
        discountedPrice: json["discounted_price"],
        level: json["level"],
        userId: json["user_id"],
        thumbnail: json["thumbnail"],
        videoUrl: json["video_url"],
        dateAdded: json["date_added"],
        lastModified: json["last_modified"],
        visibility: json["visibility"],
        isTopCourse: json["is_top_course"],
        isAdmin: json["is_admin"],
        status: json["status"],
        courseOverviewProvider: json["course_overview_provider"],
        metaKeywords: json["meta_keywords"],
        metaDescription: json["meta_description"],
        isFreeCourse: json["is_free_course"],
        topCourseModelExternal: json["external"],
        externalLink: json["external_link"],
        rating: json["rating"],
        numberOfRatings: json["number_of_ratings"],
        instructorName: json["instructor_name"],
        totalEnrollment: json["total_enrollment"],
        shareableLink: json["shareable_link"],
        fullPrice: json["full_price"],
        videoCount: json["video_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "short_description": shortDescription,
        "description": description,
        "outcomes": List<dynamic>.from(outcomes.map((x) => x)),
        "language": language,
        "category_id": categoryId,
        "sub_category_id": subCategoryId,
        "section": section,
        "requirements": List<dynamic>.from(requirements.map((x) => x)),
        "price": price,
        "discount_flag": discountFlag,
        "discounted_price": discountedPrice,
        "level": level,
        "user_id": userId,
        "thumbnail": thumbnail,
        "video_url": videoUrl,
        "date_added": dateAdded,
        "last_modified": lastModified,
        "visibility": visibility,
        "is_top_course": isTopCourse,
        "is_admin": isAdmin,
        "status": status,
        "course_overview_provider": courseOverviewProvider,
        "meta_keywords": metaKeywords,
        "meta_description": metaDescription,
        "is_free_course": isFreeCourse,
        "external": topCourseModelExternal,
        "external_link": externalLink,
        "rating": rating,
        "number_of_ratings": numberOfRatings,
        "instructor_name": instructorName,
        "total_enrollment": totalEnrollment,
        "shareable_link": shareableLink,
        "full_price": fullPrice,
        "video_count": videoCount,
      };
}
