
import 'dart:convert';

List<CategoryModel> categoryModelFromJson(String str) => List<CategoryModel>.from(json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel {
    String id;
    String code;
    String name;
    String parent;
    String slug;
    String dateAdded;
    String lastModified;
    String fontAwesomeClass;
    String thumbnail;
    String order;
    int numberOfCourses;

    CategoryModel({
        required this.id,
        required this.code,
        required this.name,
        required this.parent,
        required this.slug,
        required this.dateAdded,
        required this.lastModified,
        required this.fontAwesomeClass,
        required this.thumbnail,
        required this.order,
        required this.numberOfCourses,
    });

    CategoryModel copyWith({
        String? id,
        String? code,
        String? name,
        String? parent,
        String? slug,
        String? dateAdded,
        String? lastModified,
        String? fontAwesomeClass,
        String? thumbnail,
        String? order,
        int? numberOfCourses,
    }) => 
        CategoryModel(
            id: id ?? this.id,
            code: code ?? this.code,
            name: name ?? this.name,
            parent: parent ?? this.parent,
            slug: slug ?? this.slug,
            dateAdded: dateAdded ?? this.dateAdded,
            lastModified: lastModified ?? this.lastModified,
            fontAwesomeClass: fontAwesomeClass ?? this.fontAwesomeClass,
            thumbnail: thumbnail ?? this.thumbnail,
            order: order ?? this.order,
            numberOfCourses: numberOfCourses ?? this.numberOfCourses,
        );

    factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        parent: json["parent"],
        slug: json["slug"],
        dateAdded: json["date_added"],
        lastModified: json["last_modified"],
        fontAwesomeClass: json["font_awesome_class"],
        thumbnail: json["thumbnail"],
        order: json["order"],
        numberOfCourses: json["number_of_courses"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "parent": parent,
        "slug": slug,
        "date_added": dateAdded,
        "last_modified": lastModified,
        "font_awesome_class": fontAwesomeClass,
        "thumbnail": thumbnail,
        "order": order,
        "number_of_courses": numberOfCourses,
    };
}
