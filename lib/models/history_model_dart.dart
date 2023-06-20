
class History implements Comparable{
  String id;
  String orderId;
  String createdAt;
  String modifyAt;
  String orderStatus;

  History({
    required this.id,
    required this.orderId,
    required this.createdAt,
    required this.modifyAt,
    required this.orderStatus
});

  @override
  int compareTo(other) {
    return id.compareTo(other.id);
  }

  factory History.fromJson(Map<String,  Object?> json) => History(
      id: json["id"] as String,
      orderId: json["orderId"] as String,
      createdAt: json["createdAt"] as String,
      modifyAt: json["modifyAt"] as String,
      orderStatus:json["orderStatus"] as String
  );

  Map <String, dynamic> toJson() => {
    "id": id,
    "orderId": orderId,
    "createdAt": createdAt,
    "modifyAt": modifyAt,
    "orderStatus": orderStatus,
  };

  @override
  String toString() {
    return 'History{'
        'id: $id, '
        'orderId: $orderId, '
        'createdAt: $createdAt, '
        'modifyAt: $modifyAt, '
        'orderStatus: $orderStatus}';
  }

  @override
  bool operator ==(Object other) =>
          other is History &&
              id == other.id &&
              orderId == other.orderId &&
              createdAt == other.createdAt &&
              modifyAt == other.modifyAt &&
              orderStatus == other.orderStatus;

  @override
  int get hashCode => Object.hash(id, orderId, createdAt, modifyAt, orderStatus);
}
