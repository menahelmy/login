import 'package:flutter/material.dart';
import 'package:login/login_screen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: AssetImage(
                  'images/intro.jpg'
                ),
            ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: 120.0,
            color: Colors.teal,
            child: MaterialButton(onPressed: ()
              {
                Navigator.push(
                  context,MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                ),
                );
              },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
          ),
            SizedBox(
              height:10.0 ,
            ),
            Container(
              width: 120.0,
              color: Colors.teal,
              child: MaterialButton(onPressed: ()
              {

              },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}