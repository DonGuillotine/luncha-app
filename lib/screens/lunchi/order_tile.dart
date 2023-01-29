import 'package:flutter/material.dart';
class OrderTile extends StatelessWidget {
  // const OrderTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange,width: 0.2),
        borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Anderson Stephen',style: TextStyle(
            color: Colors.black,
            fontSize: 25
          ),),
          Divider(thickness: 1,color: Colors.black,),
          Row(
            children: [
              Text('Anderson Stephen',style: TextStyle(
                  color: Colors.black,
                  fontSize: 19
              ),),
              Expanded(child: Container()),
              Text('200',style: TextStyle(
                  color: Colors.black,
                  fontSize: 19
              ),),
            ],
          )
        ],
      ),
    );
  }
}
