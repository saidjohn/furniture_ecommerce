import 'package:furniture_app/models/base_notification.dart';

class NotificationModel {
  String id;
  String type;
  BaseNotification data;

  NotificationModel({
    required this.id,
    required this.type,
    required this.data,
  });

  factory NotificationModel.fromJson(Map<String, Object?> json) =>
      NotificationModel(
        id: json["id"] as String,
        type: json["type"] as String,
        data: ((json["type"] as String) == "message")
            ? MessageModel.fromJson((json["data"] as Map<String, Object?>))
            : NewsModel.fromJson((json["data"] as Map<String, Object?>)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "data": data,
      };

  @override
  String toString() {
    return 'NotificationModel{id: $id, type: $type, data: $data}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          type == other.type &&
          data == other.data;

  @override
  int get hashCode => id.hashCode ^ type.hashCode ^ data.hashCode;
}
