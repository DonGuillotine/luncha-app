import 'package:flutter/material.dart';
import 'package:luncha/screens/user/home.dart';

class SuccessfulPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle,
                size: 200,
              color: Colors.green,),
              Text('YOU HAVE',style: TextStyle(
                fontSize: 30
              ),),
              Text('SUCCESSFULLY',style: TextStyle(
                  fontSize: 30
              ),),
              Text('PLACED YOUR',style: TextStyle(
                  fontSize: 30
              ),),
              Text('ORDER',style: TextStyle(
                  fontSize: 30
              ),),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (){
                  return Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => UserHomePage()
                      )
                  );
                },
                child: Text('CLOSE'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
