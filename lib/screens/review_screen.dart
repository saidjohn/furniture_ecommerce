import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/review_controller.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/l10n/app_localizations.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);
  static const id = "/review";

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  late final ReviewController controller;
  late final AppLocalizations l10n;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    l10n = AppLocalizations.of(context);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = ReviewController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          l10n.ratingAndReview,
          style: AppTextStyles.merriWeatherBold18.copyWith(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () => controller.goToBack(context),
          child: const Icon(
            CupertinoIcons.back,
            color: AppColors.c303030,
            size: 30,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/img_product_9.png"),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 1),
                        )
                      ]),
                ),
                const SizedBox(width: 20),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.minimalStand,
                      style: AppTextStyles.nunitoSansRegular14,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(height: 20, width: 20, child: SvgIcon.star),
                        const SizedBox(width: 10),
                        const Text(
                          "4.5",
                          style: AppTextStyles.nunitoSansBold24,
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "10 ${l10n.reviews}",
                      style: AppTextStyles.nunitoSansSemiBold18,
                    ),
                    const Row(
                      children: [],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            const Divider(
              color: AppColors.cF0F0F0,
              thickness: 1,
            ),
            const SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ReviewItem(
                      userImage: "img_person_1.png",
                      userName: "Bruno Fernandes",
                      createdAt: "20/03/2020",
                      comment: l10n.loremIpsum,
                      rating: 5,
                    ),
                    const SizedBox(height: 20),
                    ReviewItem(
                      userImage: "img_person_2.png",
                      userName: "Tracy Mosby",
                      createdAt: "20/03/2020",
                      comment: l10n.loremIpsum,
                      rating: 4,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 100,
        color: AppColors.cFFFFFF,
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 30),
        child: InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.c303030),
              child: Text(
                l10n.writeReviews,
                style: AppTextStyles.nunitoSansRegular18
                    .copyWith(color: AppColors.cFFFFFF),
              ),
            )),
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  const ReviewItem(
      {Key? key,
      required this.createdAt,
      required this.userName,
      required this.userImage,
      this.rating = 0,
      this.comment = ""})
      : super(key: key);
  final String userName;
  final String userImage;
  final String createdAt;
  final String comment;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 240,
            padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.cFFFFFF,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      userName,
                      style: AppTextStyles.nunitoSansSemiBold14,
                    ),
                    const Spacer(),
                    Text(
                      createdAt,
                      style: AppTextStyles.nunitoSansRegular12,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: List.generate(
                    rating,
                    (index) =>
                        SizedBox(height: 16, width: 21, child: SvgIcon.star),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  comment,
                  style: AppTextStyles.nunitoSansLight14,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              child: Image.asset("assets/images/$userImage"),
            ),
          ),
        ],
      ),
    );
  }
}
