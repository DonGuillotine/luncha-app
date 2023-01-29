import 'package:flutter/material.dart';

Widget icontile(
BuildContext context,
String title,
IconData icon,
var routeName
){
  return ListTile(
    title: Text(title,style: Theme.of(context).textTheme.headline5,),
    leading: Icon(icon),
    onTap: (){
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => routeName)
      );
    },
  );
}