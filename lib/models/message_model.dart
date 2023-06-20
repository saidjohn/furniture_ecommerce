part of 'base_notification.dart';

class MessageModel extends BaseNotification{
  String id;
  String title;
  String message;
  String orderNumber;
  String orderId;
  String? image;
  String date;
  String action;
  String status;
  bool isRead;

  MessageModel({
    required this.id,
    required this.title,
    required this.message,
    required this.orderNumber,
    required this.orderId,
    required this.image,
    required this.date,
    required this.action,
    required this.status,
    required this.isRead,
  });

  factory MessageModel.fromJson(Map<String, Object?> json) => MessageModel(
    id: json["id"] as String,
    title: json["title"] as String,
    message: json["message"] as String,
    orderNumber: json["orderNumber"] as String,
    orderId: json["orderId"] as String,
    image: json["image"] as String,
    date: json["date"] as String,
    action: json["action"] as String,
    status: json["status"] as String,
    isRead: json["isRead"] as bool,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "message": message,
    "orderNumber": orderNumber,
    "orderId": orderId,
    "image": image,
    "date": date,
    "action": action,
    "status": status,
    "isRead": isRead,
  };

  @override
  String toString() {
    return 'MessageModel{id: $id, title: $title, message: $message, orderNumber: $orderNumber, orderId: $orderId, image: $image, date: $date, action: $action, status: $status, isRead: $isRead}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is MessageModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              title == other.title &&
              message == other.message &&
              orderNumber == other.orderNumber &&
              orderId == other.orderId &&
              image == other.image &&
              date == other.date &&
              action == other.action &&
              status == other.status &&
              isRead == other.isRead;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      message.hashCode ^
      orderNumber.hashCode ^
      orderId.hashCode ^
      image.hashCode ^
      date.hashCode ^
      action.hashCode ^
      status.hashCode ^
      isRead.hashCode;
}