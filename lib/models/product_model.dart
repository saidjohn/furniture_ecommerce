import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/models/review_model.dart';


class Product implements Comparable<Product>{
  String id;
  String name;
  String desc;
  String createdAt;
  String modifyAt;
  Map<int, List<String>> images;
  List<int> colors;
  String sku;
  Category category;
  double price;
  List<Review> review;
  bool isFavorite;
  Map<int, int> totalQuantity;

  Product({
    required this.id,
    required this.name,
    required this.desc,
    required this.createdAt,
    required this.modifyAt,
    required this.images,
    required this.colors,
    required this.sku,
    required this.category,
    required this.price,
    required this.review,
    required this.isFavorite,
    required this.totalQuantity,
  });

  factory Product.fromJson(Map<String, Object?> json) => Product(
        id: json["id"] as String,
        name: json["name"] as String,
        desc: json["desc"] as String,
        createdAt: json["createdAt"] as String,
        modifyAt: json["modifyAt"] as String,
        images: json["images"] as Map<int, List<String>>,
        colors: json["colors"] as List<int>,
        sku: json["sku"] as String,
        category:  Category.fromJson(json["category"] as Map<String, Object?>),
        price: json["price"] as double,
        review: (json["review"] as List).map<Review>((json) => Review.fromJson(json as Map<String, Object?>)).toList(),
        isFavorite: json["isFavorite"] as bool,
        totalQuantity: json["totalQuantity"] as Map<int, int>,
      );

  Map<String, Object?> toJson() => {
        "id": id,
        "name": name,
        "desc": desc,
        "createdAt": createdAt,
        "modifyAt": modifyAt,
        "images": images,
        "colors": colors,
        "sku": sku,
        "category": category.toJson(),
        "price": price,
        "review": review.map((e) => e.toJson()).toList(),
        "isFavorite": isFavorite,
        "totalQuantity": totalQuantity,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          desc == other.desc &&
          createdAt == other.createdAt &&
          modifyAt == other.modifyAt &&
          images == other.images &&
          colors == other.colors &&
          sku == other.sku &&
          category == other.category &&
          price == other.price &&
          review == other.review &&
          isFavorite == other.isFavorite &&
          totalQuantity == other.totalQuantity;

  @override
  int get hashCode => Object.hash(id, name, desc, createdAt, modifyAt, images,
      colors, sku, category, price, review, isFavorite, totalQuantity);

  @override
  String toString() {
    return 'Product{id: $id, name: $name, desc: $desc, createdAt: $createdAt, modifyAt: $modifyAt, images: $images, colors: $colors, sku: $sku, category: $category, price: $price, review: $review, isFavorite: $isFavorite, totalQuantity: $totalQuantity}';
  }

  @override
  int compareTo(Product other) {
    return id.compareTo(other.id);
  }
}
