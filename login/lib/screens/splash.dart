
import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/screens/home.dart';
import 'package:login/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {

 @override
  void initState() {
    checkuserlogin();
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
  void checkuserlogin()async{
    final _sharedprf=await SharedPreferences.getInstance();
    final _userlogin=_sharedprf.getBool(savekeyname);
    if(_userlogin==null || _userlogin==false){
      gotologin();
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenHome()));
    }


  }
} 