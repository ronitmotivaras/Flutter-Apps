import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtUname = TextEditingController();

  TextEditingController txtPwd = TextEditingController();

  bool isHidden =true;
  String msg=" ";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Login Form',style: TextStyle(fontSize: 50),),
        TextField(
          controller: txtUname,
          decoration: InputDecoration(
            labelText: 'Username',
            hintText: 'Enter your Username',
          ),
        ),
        TextField(
          controller: txtPwd,
          obscureText: isHidden,  decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your Password',
            suffixIcon: IconButton(onPressed: (){
              isHidden=!isHidden;
              print('isHidden $isHidden');
              setState(() {
                
              });
            },icon: Icon(isHidden ? Icons.visibility : Icons.visibility_off),)
          ),),
        ElevatedButton(onPressed: (){
          print('from login button clicked ${txtUname.text} ${txtPwd.text}');
          if(txtUname.text.isEmpty || txtPwd.text.isEmpty){
            msg = "Enter Details in all";
          }else
          if(txtUname.text==txtPwd.text){
            msg= ('Welcome ${txtUname.text}');
          }else{
            msg =('Invalid Credentials');
          }
          print(msg);
          setState(() {
            
          });
        }, child: Text("Login"),),
        Text(msg),
        
      ],),
    );
  }
}