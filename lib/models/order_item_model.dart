import 'product_model.dart';

class OrderItem implements Comparable<OrderItem> {
  String id;
  Product product;
  double total;
  String createdAt;
  String modifyAt;
  int quantity;

  OrderItem(
      this.id,
      this.product,
      this.total,
      this.createdAt,
      this.modifyAt,
      this.quantity,
      );

  factory OrderItem.fromJson(Map<String, Object?> json) {
    String id = json['id'] as String;
    Product product = Product.fromJson(json['product'] as Map<String, Object>);
    double total = json['total'] as double;
    String createdAt = json['createdAt'] as String;
    String modifyAt = json['modifyAt'] as String;
    int quantity = json['quantity'] as int;

    return OrderItem(id, product, total, createdAt, modifyAt, quantity);
  }

  Map<String, Object> toJson() => {
    "id": id,
    "product": product.toJson(),
    "total": total,
    "createdAt": createdAt,
    "modifyAt": modifyAt,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is OrderItem &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              product == other.product &&
              total == other.total &&
              createdAt == other.createdAt &&
              modifyAt == other.modifyAt &&
              quantity == other.quantity;

  @override
  int get hashCode {
    return Object.hash(id, product, total, createdAt, modifyAt, quantity);
  }

  @override
  int compareTo(OrderItem other) {
    return total.compareTo(other.total);
  }

  @override
  String toString() {
    return 'OrderItem{id: $id, product: $product, total: $total, createdAt: $createdAt, modifyAt: $modifyAt, quantity: $quantity}';
  }
}