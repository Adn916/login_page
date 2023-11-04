import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget { 
   ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
final _usernamecontroller = TextEditingController();

final _passwordcontroller = TextEditingController(); 

bool _isDataMatched = true;

final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Align(alignment: Alignment.center, child: Text("COSNOVIX LOGIN SCREEN")),
        leading: Icon(Icons.login),
      ),
      body: SafeArea(
        child: Container(
          
          padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment:CrossAxisAlignment.center,
            children: [
            Text("LOG IN",
            style: TextStyle(
              fontSize: 40,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,),),
             TextFormField(
              controller: _usernamecontroller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_3),
                labelText: "user name",
                hintText: "enter user name",
                helperText: "enter your user name here",
                labelStyle: TextStyle(
                  color: Colors.pink,
                ),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50))
                ),
        
                
                validator: (value) {

              if(value == null || value.isEmpty){
                return "value is  empty";
              }else{
                return null;
              }
             },

             
              ),
              Padding(padding:EdgeInsets.symmetric(
                vertical: 10
              )),
             TextFormField(
              controller: _passwordcontroller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: "password",
                hintText: "enter password",
                helperText: "enter your password",
                labelStyle: TextStyle(
                  color: Colors.pink,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                )
              ),
              obscureText: true,
        
              
             validator: (value) {

              if(value == null || value.isEmpty){
                return "value is  empty";
              }else{
                return null;
              }
             },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: !_isDataMatched,
                  child: Text("username  password  does not match",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                  ),
                ),
                
              ],
            ),
            ElevatedButton.icon(
            onPressed: (){
              if( _formKey.currentState!.validate()){
                checklogin(context);
              }else{
                print("data empty");
              }
             
              // checklogin(context);
            }, 
            icon: Icon(Icons.check), 
            label: Text("login")),
            ],
            ),
        )
          ),
      ),
    );
  }

  void checklogin(BuildContext ctx)async{ 
  final _username = _usernamecontroller.text;
  final _password = _passwordcontroller.text;
  if(_username == "adnan" && _password == "123"){
     final _srdprf=await SharedPreferences.getInstance();
     await _srdprf.setBool(savekeyname, true);

    print("username and password match");

    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1)=> ScreenHome())); 
  }else{
    
    //show text
    setState(() {
      _isDataMatched = false;
    });

    
  }
  }
}