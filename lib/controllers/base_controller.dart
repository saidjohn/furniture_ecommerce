import 'package:flutter/cupertino.dart';

abstract class BaseController {
  BaseController() {
    initial();
  }

  void initial() {
    debugPrint("$runtimeType created");
  }

  void close() {
    debugPrint("$runtimeType deleted");
  }
}
