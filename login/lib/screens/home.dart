import 'package:flutter/material.dart';
import 'package:login/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.center, child: Text("HOME")),
        backgroundColor: Colors.green,
        leading: Icon(Icons.home),
        actions: [
          //   IconButton(onPressed: (){
          //     signout(context);
          //   }, icon: Icon(Icons.exit_to_app),)
        ],
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            trailing: Icon(Icons.nat),
            leading: Icon(Icons.abc),
            title: Text("hello $index"),
          ),
        ),
      ),
    );
  }

  signout(BuildContext ctx) async {
    final _sharedpre = await SharedPreferences.getInstance();
    await _sharedpre.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => ScreenLogin()), (route) => false);
  }
}
