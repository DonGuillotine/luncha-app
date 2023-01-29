import 'package:flutter/material.dart';
import 'package:luncha/screens/user/home.dart';
import 'package:luncha/widget/icon_tag.dart';

Widget drawer(BuildContext context){
  return Drawer(
    child: ListView(
      children: [
        SizedBox(
          height: 200.0,
          child: DrawerHeader(
          decoration: const BoxDecoration(color: Colors.orangeAccent),
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(19.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/photo.jpg'),
                  ),
                  ),
                  Positioned(
                    right: 1,
                      bottom: 1,
                      child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.camera_alt),
                          color: Colors.black,
                  )
                  )
                ],
              ),

              Text('Anderson Stephen', style: Theme.of(context).textTheme.headline5,)

            ],
          ),
        ),
        ),

        icontile(context, 'Home', Icons.home, UserHomePage())
      ],
    ),
  );
}