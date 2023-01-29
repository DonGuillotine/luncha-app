import 'package:flutter/material.dart';
import 'package:luncha/widget.dart';

Future<void> addOrders(
    BuildContext context,
    TextEditingController txtOrders,
    TextEditingController txtPrice,
    Function yes,
    Function no,
    ){
  return showDialog(
    barrierDismissible: false,
      context: context,
      builder: (_) => AlertDialog(
        // backgroundColor: Colors.white,
        title: Text('Input your Orders'),
        content: Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            height: 150,
            child: Column(
              children: <Widget>[
                Expanded(child: entryField(context, 'Enter Orders', txtOrders,txtColor: Colors.black,txtLength: 12)),
                Expanded(child: entryField(context, 'Enter Price', txtPrice,keyboardType: TextInputType.number,txtColor: Colors.black,txtLength: 5))
              ],
            ),
          ),
        ),
        actions: [
          TextButton(onPressed: no, child: Text('Cancel',style: TextStyle(
            color: Colors.red
          ),
      )
      ),
          TextButton(onPressed: yes, child: Text('Done',style: TextStyle(
              color: Colors.green
          ),)),
        ],
      ));
}