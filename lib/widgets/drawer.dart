import 'package:flutter/material.dart';
import 'package:luncha/screens/user/home.dart';

import 'icon_tile.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        SizedBox(
          height: 200.0,
          child: DrawerHeader(
            decoration: BoxDecoration(color: Colors.orangeAccent),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/avatar.jpg"),
                      ),
                    ),
                    Positioned(
                      right: 1,
                      bottom: 1,
                      child: IconButton(
                        onPressed: () {
                          print("Change image");
                        },
                        icon: Icon(
                          Icons.camera,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
        ),
        iconTile(
          context,
          "Home",
          Icons.home,
          UserHomePage(),
        )
      ],
    ),
  );
}
