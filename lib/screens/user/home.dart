import 'package:flutter/material.dart';
import 'package:luncha/screens/successful_page.dart';
import 'package:luncha/theme/luncha_theme.dart';
import 'package:luncha/widget/add_orders.dart';
import 'package:luncha/widget/drawer.dart';

class UserHomePage extends StatefulWidget {
  // const UserHomePage({Key? key}) : super(key: key);

  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  List orders = [];
  List prices = [];

  var txtOrderController = TextEditingController();
  var txtPriceController = TextEditingController();

  void _handleCancel() {
    txtOrderController.text = '';
    txtPriceController.text = '';
    Navigator.of(context).pop();
  }

  void _handleDone() {

    String order = txtOrderController.text;
    double price = double.parse(txtPriceController.text);
    print('here: $order  $price');
    setState(() {
      orders.add(order);
      prices.add(price);
    });
    Navigator.of(context).pop();
    txtOrderController.text = '';
    txtPriceController.text = '';
  }

  void _handleAddOrders() {
    addOrders(context, txtOrderController, txtPriceController,
        _handleDone, _handleCancel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text(
          'Luncha',
          style: LunchaTheme.yellowText.headline1,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bg.jpg'),
                )),
              ),
              Container(
                height: 252,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              )
            ]),
          ),

          Expanded(
            flex: 2,
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('PLACE YOUR ORDER',style: Theme.of(context).textTheme.headline4,),
               Expanded(
                   child: orders.isEmpty ? Center(
                     child: Icon(Icons.no_meals,size: 150,color: Colors.green),
                   )
                       : Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                     padding: EdgeInsets.only(top: 20,left: 20, right: 20),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20)
                     ),
                     child: Column(
                       children: [
                         ListView.builder(
                           shrinkWrap: true,
                         itemCount: orders.length,
                         itemBuilder: (_,i){
                           return Center(
                             child: Row(
                               // crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text(orders[i],style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 20
                                 ),

                                 ),
                                 Expanded(child: Container()),
                                 Text('N${prices[i]}', style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 20
                                 ),
                                 ),
                                 Expanded(child: Container()),
                                 IconButton(
                                     onPressed: (){
                                       // return orders.add();
                                     }, icon: Icon(Icons.cancel_outlined,size: 25,color: Colors.black,))

                               ],
                             ),
                           );
                         }),
                         // SizedBox(height: 30,),
                         ElevatedButton(
                             onPressed: (){
                               return Navigator.pushReplacement(context,
                                   MaterialPageRoute(builder: (context) => SuccessfulPage()));
                             }, child: Text('Order'))
                       ],
                     ),
                   )
               )
              ],
            ),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        onPressed: _handleAddOrders,
        tooltip: 'Add a order',
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
