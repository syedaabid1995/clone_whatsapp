import 'package:flutter/material.dart';
import 'package:whatsapp_clone/login_page.dart';
import 'package:whatsapp_clone/splash.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child: SafeArea(
     child:Scaffold(
       body: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children:[
         Column(
         children: [
           const SizedBox(height: 100,),
           const Text("welcome to Whatsapp", style: TextStyle(color: Colors.green ,fontSize: 35,fontWeight: FontWeight.w600)),
         ],
         ),
         Image.asset("assets/welcomelogo.jpg"),

        Column(
            children:[const SizedBox(
              height: 50 ,
              width: 300,
              child: Text("Read our Privacy Policy.Tap Agree and Continue to"
                  " accept the Terms of Service"),
             ),
              SizedBox(
                height: 50,
                  width: 300,
                  child:TextButton(onPressed:(){
                   Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>  LoginScreen()),
                 );
              } ,
             style: TextButton.styleFrom(
             primary: Colors.white,
             backgroundColor: Colors.green,
             ),
                child:const Text("AGREE AND CONTINUE"))

              ),
              const SizedBox(height: 20),

            ]

        )
       ]
     ),
     ),
     ),
     );
  }
}