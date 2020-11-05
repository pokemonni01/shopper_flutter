import 'package:flutter/cupertino.dart';

class InputItemChangeNotifier extends ChangeNotifier {

  bool isLinkValid = false;
  String shopeeLink = "";

  void validateItemLink(String input) {
    isLinkValid = input == 'a';
    shopeeLink = input;
    notifyListeners();
  }
}