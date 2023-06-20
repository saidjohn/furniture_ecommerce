part of 'base_notification.dart';

class NewsModel extends BaseNotification {
  String id;
  String title;
  String message;
  String date;
  String status;
  bool isRead;

  NewsModel({
    required this.id,
    required this.title,
    required this.message,
    required this.date,
    required this.status,
    required this.isRead,
  });

  factory NewsModel.fromJson(Map<String, Object?> json) => NewsModel(
    id: json["id"] as String,
    title: json["title"] as String,
    message: json["message"] as String,
    date: json["date"] as String,
    status: json["status"] as String,
    isRead: json["isRead"] as bool,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "message": message,
    "date": date,
    "status": status,
    "isRead": isRead,
  };

  @override
  String toString() {
    return 'NewsModel{id: $id, title: $title, message: $message, date: $date, status: $status, isRead: $isRead}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is NewsModel &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              title == other.title &&
              message == other.message &&
              date == other.date &&
              status == other.status &&
              isRead == other.isRead;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      message.hashCode ^
      date.hashCode ^
      status.hashCode ^
      isRead.hashCode;
}