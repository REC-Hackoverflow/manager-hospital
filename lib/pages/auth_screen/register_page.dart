import 'package:flutter/material.dart';

import '../../themes.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  // void dispose() {
  //   // Clean up the controller when the widget is removed from the widget tree.
  //   emailTextController.dispose();

  // }
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final nameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String error;
    return Scaffold(
      body: GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(60, 100, 60, 50),
                child: const Text(
                  "Hospital Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textLightMode),
                ),
              ),
              TextField(
                controller: nameTextController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter hospital name',
                  prefixIcon: Icon(
                    Icons.local_hospital,
                    color: AppColors.textLightMode,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                controller: emailTextController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: AppColors.textLightMode,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                controller: passwordTextController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter password',
                  prefixIcon: Icon(
                    Icons.password,
                    color: AppColors.textLightMode,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // TextField(
              //   autofocus: true,
              //   controller: repasswordTextController,
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     contentPadding: EdgeInsets.fromLTRB(0, 0, 5, 20),
              //     border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10)),
              //     hintText: 'Re-enter password',
              //     prefixIcon: Icon(
              //       Icons.password,
              //       color: AppColors.textLightMode,
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 16,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('location_page', arguments: {
                    "name": nameTextController.text,
                    "email": emailTextController.text,
                    "password": passwordTextController.text
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // Text(
              //   error,
              //   style: TextStyle(
              //     color: Colors.red,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
