import 'package:flutter/material.dart';
import 'package:furniture_app/models/base_notification.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/data/database/notifications.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 115,
      itemCount: notificationDatabase.length,
      itemBuilder: (context, index) {
        if (notificationDatabase[index].data is MessageModel) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
              color:
              (notificationDatabase[index].data as MessageModel).status ==
                  "New"
                  ? AppColors.cF0F0F0
                  : Colors.white,
              border: (index + 1 != notificationDatabase.length &&
                  (notificationDatabase[index].data as MessageModel)
                      .status !=
                      "New" &&
                  notificationDatabase[index].data is MessageModel &&
                  notificationDatabase[index + 1].data is MessageModel)
                  ? const Border(
                bottom: BorderSide(
                  color: AppColors.cF0F0F0,
                ),
              )
                  : null,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 20, top: 8),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        image: AssetImage(
                          (notificationDatabase[index].data as MessageModel)
                              .image as String,
                        ),
                        height: 95,
                        width: 95,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              (notificationDatabase[index].data
                              as MessageModel)
                                  .title,
                              maxLines: 2,
                              style: TextStyle(
                                fontFamily: AppTextStyles
                                    .nunitoSansBold12.fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Flexible(
                          child: Text(
                            (notificationDatabase[index].data
                            as MessageModel)
                                .message,
                            maxLines: 3,
                            style: AppTextStyles.nunitoSansRegular12
                                .copyWith(
                              color: AppColors.c808080,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        // Status text
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            (notificationDatabase[index].data as MessageModel)
                                .status,
                            style: AppTextStyles.nunitoSansBold16.copyWith(
                              color: const Color(0xFFF2994A),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Container(
            color: AppColors.cF0F0F0,
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      (notificationDatabase[index].data as NewsModel).status,
                      style: AppTextStyles.nunitoSansBold14.copyWith(
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFFEB5757),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                (notificationDatabase[index].data
                                as NewsModel)
                                    .title,
                                maxLines: 2,
                                style: AppTextStyles.nunitoSansBold16,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Flexible(
                              child: Text(
                                (notificationDatabase[index].data
                                as NewsModel)
                                    .message,
                                maxLines: 3,
                                style: AppTextStyles.nunitoSansRegular14
                                    .copyWith(
                                  color: AppColors.c808080,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
