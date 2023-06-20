
import 'package:furniture_app/models/cart_item_model.dart';


class CartModel implements Comparable {
  String id;
  List<CartItem> carts;
  double total;
  String createdAt;
  String modifyAt;
  String userId;
  int amount;

  CartModel(
      {required this.id,
      required this.carts,
      required this.total,
      required this.createdAt,
      required this.modifyAt,
      required this.userId,
      required this.amount});

  @override
  int compareTo(other) {
    return userId.compareTo(other.userId);
  }

  factory CartModel.fromJson(Map<String, Object?> json) => CartModel(
      id: json["id"] as String,
      carts: (json["carts"] as List).map<CartItem>((json) => CartItem.fromJison(json as Map<String, Object?>)).toList(),
      total: json["total"] as double,
      createdAt: json["createdAt"] as String,
      modifyAt: json["modifyAt"] as String,
      userId: json["userId"] as String,
      amount: json["amount"] as int);

  Map<String, Object> toJson() => {
        "userId": userId,
        "id": id,
        "carts": carts.map((e) => e.toJson()).toList(),
        "total": total,
        "createdAt": createdAt,
        "modifyAt": modifyAt,
        "amount": amount,
      };

  @override
  String toString() {
    return "CartModel(id: $id, carts: $carts, total: $total, createdAt: $createdAt, modifyAt: $modifyAt, userId: $userId, amount: $amount)";
  }

  @override
  bool operator ==(Object other) =>
      other is CartModel &&
          id == other.id &&
          carts == other.carts &&
          total == other.total &&
          createdAt == other.createdAt &&
          modifyAt == other.modifyAt &&
          userId == other.userId &&
          amount == other.amount;

  @override
  int get hashCode => Object.hash(id, carts,total, createdAt, modifyAt,userId,amount);

}
