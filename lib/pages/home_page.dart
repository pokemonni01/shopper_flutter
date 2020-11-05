import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopper_flutter/change_notifier/shopee_item_change_notifier.dart';

import 'input_item_dialog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shopper'),),
      body: Center(
        child: _ItemList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => InputItemDialog(),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}

class _ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ShopeeItemChangeNotifier>(
      builder: (context, shopeeItem, child) {
        return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: shopeeItem.itemList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.amberAccent,
                child: Center(child: Text('Item Name:  ${shopeeItem.itemList[index]}')),
              );
            }
        );
      },
    );
  }
}
