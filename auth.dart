import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:madproject/login_or_register.dart';
import 'package:madproject/homepage.dart';
class AuthPage extends StatelessWidget{
  const AuthPage({super.key});

  @override

  Widget build(BuildContext context)
  {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          //user logged in
          if(snapshot.hasData){
            return const HomePage();
          }
          else
            {
              return const LoginOrRegister();
            }
        },
      )
    );
  }
}