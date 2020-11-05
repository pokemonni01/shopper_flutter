import 'package:flutter/material.dart';

import 'input_item_dialog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shopper'),),
      body: Center(

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
