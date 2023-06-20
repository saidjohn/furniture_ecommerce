
import 'order_item_model.dart';

class Order implements Comparable<Order> {
  String id;
  List<OrderItem> products;
  double total;
  int amount;
  String paymentId;
  String createdAt;
  String modifiedAt;

  Order({
    required this.id,
    required this.products,
    required this.total,
    required this.amount,
    required this.paymentId,
    required this.createdAt,
    required this.modifiedAt,
  });

  factory Order.fromJson(Map<String, Object?> json) {
    String id = json["id"] as String;
    List<OrderItem> products = (json["products"] as List<Map<String, Object?>>).map((e) => OrderItem.fromJson(e)).toList();
    double total = json["total"] as double;
    int amount = json["amount"] as int;
    String paymentId = json["paymentId"] as String;
    String createdAt = json["createdAt"] as String;
    String modifiedAt = json["modifiedAt"] as String;

    return Order(
        modifiedAt: modifiedAt,
        id: id,
        products: products,
        total: total,
        amount: amount,
        paymentId: paymentId,
        createdAt: createdAt);
  }

  Map<String, Object?> toJson() => {
        "id": id,
        "products": products.map((e) => e.toJson()).toList(),
        "total": total,
        "amount": amount,
        "paymentId": paymentId,
        "createdAt": createdAt,
        "modifiedAt": modifiedAt,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Order &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          products == other.products &&
          total == other.total &&
          amount == other.amount &&
          paymentId == other.paymentId &&
          createdAt == other.createdAt &&
          modifiedAt == other.modifiedAt;

  @override
  int get hashCode => Object.hash(
      id, products, total, amount, paymentId, createdAt, modifiedAt);

   @override
   int compareTo(Order other){
     return id.compareTo(other.id);
   }
  @override
  String toString() {
    return "Order{id: $id, products: $products, total: $total, amount: $amount, paymentId: $paymentId, createdAt: $createdAt, modifiedAt: $modifiedAt}";
  }
}
