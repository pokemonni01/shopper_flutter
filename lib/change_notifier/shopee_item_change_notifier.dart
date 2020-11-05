import 'dart:developer';

import 'package:flutter/cupertino.dart';

class ShopeeItemChangeNotifier extends ChangeNotifier {

  var itemList = <String>[];

  void addItem(String item) {
    itemList.add(item);
    log('item: $item');
    notifyListeners();
  }
}