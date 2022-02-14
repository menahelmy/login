import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class loginScreen extends StatelessWidget {
  var emailcontroller=TextEditingController();
  var passcontroller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(

    ),
    body:Padding(padding:const EdgeInsets.all(20.0),
      child:Center(
      child:SingleChildScrollView(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Login",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,

          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        TextFormField(
          controller: emailcontroller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal) ),

            labelText: "Email Address",
            prefixIcon: Icon(
              Icons.email,
            ),
            border: OutlineInputBorder(),
          ),

        ),
        SizedBox(
          height: 15.0,
        ),
        TextFormField(
          controller: passcontroller,//علشان اخذ الي دخل
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal) ),
            labelText: "Password",

            prefixIcon: Icon(
              Icons.lock,

            ),
            suffixIcon: Icon(
              Icons.remove_red_eye,

            ),
            border: OutlineInputBorder(),
          ),

        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          width:double.infinity,

          child: MaterialButton(onPressed:()
          {
            print(emailcontroller.text);
            print(passcontroller.text);
          },
          child: Text("Login",
            style: TextStyle(
              color:Colors.white,
            ),
          ),
        ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          children: [
            Text(
              "Don\'t have an account?",
            ),
            TextButton(onPressed:() {}, child: Text("Register Now",

            ),),
          ],
        ),
      ],


    ),
    ),
    ),
    ),
    );
  }
}
