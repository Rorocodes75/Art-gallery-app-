import 'package:art_gallery_app/constant/spacing.dart';
import 'package:art_gallery_app/extension/nav.dart';
import 'package:art_gallery_app/pages/homepage.dart';
import 'package:art_gallery_app/pages/login.dart';
import 'package:art_gallery_app/services/database.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

@override
@override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 242, 212),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "sing up",
              style: TextStyle(fontSize: 24),
            ),
            height24,
            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: "enter email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),),
              ),
            ),
            height24,
            TextField(controller: password,
            decoration: const InputDecoration(
                labelText: "enter password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center, children:[
              Text("if you have an account"),
             TextButton(onPressed: (){
              context.pushAndRemove(const LoginPage());
             }, child: Text("login",style: TextStyle(color: Colors.black),),),

            ],),
            height24,
            ElevatedButton(onPressed: () async {
              try{
              await Database().singup(email: email.text, password: password.text);
              if(context.mounted){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=> const Homepage()));
              }} catch(e){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())),);
            }}, style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 248, 237, 237)
            ),
             child: const Text("sing up",style: TextStyle(fontSize: 18,color: Colors.black),))
          ],
        ),
      ),
    );
  }
}