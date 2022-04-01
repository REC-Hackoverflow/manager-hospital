import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(onPressed: () async{
                await FirebaseAuth.instance.signOut().then((value) {
                  Navigator.pushNamed(context, '/auth_screen');
                });
              }, child: Text('Logout'))
            ],
          ),
        ),
      ),
    );
  }
}
