
import 'package:flutter/material.dart';
import 'package:login/screens/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {

 @override
  void initState() {
    gotologin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png',height: 80,) ,
        ),
    );
  }


  @override
  void dispose() {
    super.dispose();
  }

  Future<void> gotologin() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>ScreenLogin()));
  }
} 