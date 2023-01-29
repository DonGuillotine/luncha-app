import 'package:flutter/material.dart';
import 'package:luncha/screens/lunchi/home.dart';
import 'package:luncha/screens/successful_page.dart';
import 'package:luncha/screens/user/home.dart';
import 'package:luncha/widget.dart';
import '../navigation.dart';
import '../theme/luncha_theme.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var txtID = TextEditingController();
  var err = 0, errText = '';


  void loginCheck(){
    String id = txtID.text;

    setState(() {
       err = 0; errText = '';
    });

    if (id == 'test'){
      print(errText);
          Navigator.pushReplacementNamed(context, userHome);



    }else if(id == 'next'){
      Navigator.pushReplacementNamed(context, lunchiHome);
    }else{
      print('Invalid details');
      setState(() {
        err = 1;
        errText = 'Invalid details';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
  child: Stack(
      children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget>[
                    Text(
                      'WELCOME',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      'TO',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      'Luncha',
                      style: LunchaTheme.yellowText.headline1,
                    ),

                    Container(
                      width: double.infinity,

                      margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: entryField(
                          context,
                          'Enter Your ID',
                          txtID,
                         hasLabel: true,
                        txtColor: Colors.black
                      )
                    ),
                    const SizedBox(height: 15,),
                    ElevatedButton(onPressed: loginCheck, child:
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                      style: ElevatedButton.styleFrom(primary: Colors.orange,
                      onPrimary: Colors.grey),
                    ),
                    const SizedBox(height: 10),

                    (err == 0)?Container():Text(errText,
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                      ),),

                    // ElevatedButton(onPressed: (){}, child:
                    // Text(
                    //   'Lunchi',
                    //   style: Theme.of(context).textTheme.headline6,
                    // ),
                    //   style: ElevatedButton.styleFrom(primary: Colors.orange,
                    //       onPrimary: Colors.grey),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
