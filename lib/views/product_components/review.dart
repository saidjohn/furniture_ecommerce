import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/views/product_components/text_button.dart';

class Review {
  static Future review(
      BuildContext context, void Function(double raiting) onUpdate, void Function() onPress) {
    return showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (context) => BottomSheet(
        onClosing: () {},
        builder: (context) => SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  onUpdate(rating);
                },
              ),
              AppTextButton(
                label: Strings.addToCart.text,
                onPress: onPress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
