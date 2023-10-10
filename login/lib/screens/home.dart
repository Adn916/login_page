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
       body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.laptop_mac)),
                Text(
                  'ASUS',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.laptop_mac,color: Colors.blue,)),
                Text(
                  'HP',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.blue),
                ),
              ],
            ),
            color: Colors.grey,
          ),
          Container(
            alignment: Alignment.center,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.laptop_mac)),
                Text(
                  'ACER',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.laptop_mac,color: Colors.blue,)),
                Text(
                  'LENOVO',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.blue),
                ),
              ],
            ),
            color: Colors.grey,
          ),
          Container(
            alignment: Alignment.center,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.laptop_mac)),
                Text(
                  'SAMSUNG',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  signout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => ScreenLogin()), (route) => false);
  }
}