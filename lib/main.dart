import 'package:flutter/material.dart';
import 'package:untitled/sgin_in.dart';
import 'package:untitled/add_store.dart';


void main() {
  runApp(mayaPP());
}

class mayaPP extends StatelessWidget //parent and child
{

  @override
  Widget build(BuildContext context)
  {

return MaterialApp(
  debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch:Colors.teal,),

  home: addstore()
);
  }

}

