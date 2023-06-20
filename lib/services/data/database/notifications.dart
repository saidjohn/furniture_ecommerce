import '../../../models/notification_model.dart';

final notification1 = {
  "id": "1",
  "type": "message",
  "data": {
    "id": "01",
    "title": "Your order #12345 has been cancelled",
    "message":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec.",
    "orderId": "001",
    "orderNumber":"3",
    "image": "assets/images/img_product_11.png",
    "date": "06.02.2023",
    "action": "Bir narsalar",
    "status": "New",
    "isRead": true,
  },
};
final notification2 = {
  "id": "2",
  "type": "news",
  "data": {
    "id": "01",
    "message":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec.",
    "title": "Discover hot sale furniture this week.",
    "date": "05.06.2023",
    "status": "HOT!",
    "isRead": true,
  },
};
final notification3 = {
  "id": "3",
  "type": "message",
  "data": {
    // messsage
    "id": "01",
    "title": "Your order #1234567 has been confirmed",
    "message":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec.",
    "orderId": "001",
    "orderNumber":"5",
    "image": "assets/images/img_product_1.png",
    "date": "06.02.2023",
    "action": "Bir narsalar",
    "status": "",
    "isRead": true,
  },
};
final notification4 = {
  "id": "4",
  "type": "news",
  "data": {
    "id": "01",
    "message":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec.",
    "title": "Discover hot sale furnitures this week.",
    "date": "05.06.2023",
    "status": "HOT!",
    "isRead": true,
  },
};
final notification5 = {
  "id": "5",
  "type": "message",
  "data":
    {
      // messsage
      "id": "01",
      "title": "Your order #123456789 has been confirmed",
      "message":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec.",
      "orderId": "001",
      "orderNumber":"2",
      "image": "assets/images/img_product_9.png",
      "date": "06.02.2023",
      "action": "Bir narsalar",
      "status": "",
      "isRead": false,
    },
};

final notificationDatabase = [
  NotificationModel.fromJson(notification1),
  NotificationModel.fromJson(notification5),
  NotificationModel.fromJson(notification2),
  NotificationModel.fromJson(notification5),
  NotificationModel.fromJson(notification5),
  NotificationModel.fromJson(notification5),
  NotificationModel.fromJson(notification4),
  NotificationModel.fromJson(notification3),
  NotificationModel.fromJson(notification5),
];
