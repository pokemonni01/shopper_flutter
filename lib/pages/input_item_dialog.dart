import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopper_flutter/change_notifier/input_item_change_notifier.dart';
import 'package:shopper_flutter/change_notifier/shopee_item_change_notifier.dart';

class InputItemDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer2<InputItemChangeNotifier, ShopeeItemChangeNotifier>(
      builder: (context, inputItem, shopeeItem, child) {
        return Dialog(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          child: Container(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Input Item Link'),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Item Url',
                      ),
                      onChanged: (input) {
                        inputItem.validateItemLink(input);
                      },
                    ),
                    FlatButton(
                      onPressed: inputItem.isLinkValid ? () {
                        shopeeItem.addItem(inputItem.shopeeLink);
                        Navigator.pop(context);
                      } : null,
                      child: Text('OK'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
