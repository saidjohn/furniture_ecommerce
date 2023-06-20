import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/base_controller.dart';

class ReviewController extends BaseController {
  void goToWriteReview(BuildContext context) {
    // Navigator.of(context).pushReplacementNamed();
  }

  void goToBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}
