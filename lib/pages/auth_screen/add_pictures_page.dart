import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../themes.dart';

class AddPicturesPage extends StatelessWidget {
  AddPicturesPage({Key? key}) : super(key: key);
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    final email = args["email"];
    final password = args["password"];
    final name = args["name"];
    final address = args["address"];
    final geo_location = args["geo_location"];
    final hospitals = firestore.collection('hospitals');

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   padding: EdgeInsets.symmetric(vertical: 21),
            //   child: const Text(
            //     "All details have been ",
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         fontSize: 36,
            //         fontWeight: FontWeight.bold,
            //         color: AppColors.textLightMode),
            //   ),
            // ),
            Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 69,
            ),
            SizedBox(
              height: 21,
            ),
            GestureDetector(
              onTap: () async {
                try {
                  UserCredential userCredential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: email, password: password);
                  hospitals.add({
                    "address": address,
                    "current_services": [],
                    "email": email,
                    "hospital_picture_url": [],
                    "latitude": geo_location.latitude.toString(),
                    "longitude": geo_location.longitude.toString(),
                    "services": [],
                    "services_categories": []
                  });
                } catch (e) {
                  print(e);
                }
                Navigator.of(context).pushNamed('/');
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
                  "Complete Registration",
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
    );
  }
}
