import 'package:flutter/material.dart';
import 'package:login/screens/login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Align(alignment: Alignment.center, child: Text("HOME")),
      backgroundColor: Colors.green,
      leading: Icon(Icons.home),
      actions: [
        IconButton(onPressed: (){
          signout(context);
        }, icon: Icon(Icons.exit_to_app),)
      ],
      
      ),
      body:SafeArea(
      child: Center (
        child:Text("HOME SCREEN") ,
    )
    )
    );
  }

  signout(BuildContext ctx){
    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)=>ScreenLogin()), (route) => false);

  }
}