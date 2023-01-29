import 'package:flutter/material.dart';
import 'package:luncha/screens/login.dart';
import 'package:luncha/theme/luncha_theme.dart';

import 'orders.dart';

class LunchiHomePage extends StatefulWidget {
  // const LunchiHomePage({Key? key}) : super(key: key);

  @override
  _LunchiHomePageState createState() => _LunchiHomePageState();
}

class _LunchiHomePageState extends State<LunchiHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Luncha',
          style: LunchaTheme.yellowText.headline1,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.fill
          )
        ),
        child: Stack(
          children: [
            Container(
              color: Colors.black54,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)
                          )
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Orders()));
                      },
                      child: SizedBox(
                        width: 150,
                        height: size.height * 0.2,
                        child: Center(child: Text('Orders',style:
                          Theme.of(context).textTheme.headline5,)),
                      )),
                  SizedBox(height:size.height * 0.15,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                    ),
                      onPressed: (){
                      return Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=> LoginScreen()));
                      },
                      child: SizedBox(
                        width: 150,
                        height: size.height * 0.2,
                        child: Center(child: Text('Logout',style:
                        Theme.of(context).textTheme.headline5,)),
                      ))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
