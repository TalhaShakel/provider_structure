import 'package:flutter/cupertino.dart';

class HomePageProvider extends ChangeNotifier {
  bool? isEligible;
  String eligible = "";
  check(age) {
    if (age >= 18) {
      isEligible = true;
      eligible = "you are eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligible = "you are nOt eligible";
      notifyListeners();
    }
  }
}
