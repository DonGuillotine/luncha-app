import 'package:flutter/material.dart';
import 'package:luncha/widgets.dart';

Future<void> addOrders(
  BuildContext context,
  TextEditingController txtOrders,
  TextEditingController txtPrice,
  Function yes,
  Function no,
) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => AlertDialog(
      title: const Text('Input your orders'),
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              Expanded(
                  child: entryField(context, 'Enter Orders', txtOrders,
                      txtColor: Colors.black)),
              Expanded(
                  child: entryField(context, 'Enter Price', txtPrice,
                      keyboardType: TextInputType.number,
                      txtColor: Colors.black))
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
            onPressed: no,
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.red),
            )),
        TextButton(
            onPressed: yes,
            child: const Text(
              'Done',
              style: TextStyle(color: Colors.green),
            ))
      ],
    ),
  );
}
