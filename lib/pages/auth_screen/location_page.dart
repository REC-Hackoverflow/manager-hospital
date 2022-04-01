import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../themes.dart';

class LocationPage extends StatefulWidget {
  LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  Position _currentPosition = new Position(
    longitude: 0.0,
    latitude: 0.0,
    timestamp: DateTime.now(),
    accuracy: 0.0,
    altitude: 0.0,
    heading: 0.0,
    speed: 0.0,
    speedAccuracy: 0.0,
  );
  _getCurrentLocation() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  final addressTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    final email = args["email"];
    final password = args["password"];
    final name = args["name"];
    var error = "";

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(60, 100, 60, 50),
                child: const Text(
                  "Enter your location",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textLightMode),
                ),
              ),
              TextField(
                controller: addressTextController,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter address of the hospital',
                  prefixIcon: Icon(
                    Icons.location_city,
                    color: AppColors.textLightMode,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              GestureDetector(
                onTap: _getCurrentLocation,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: const Text(
                    "Click to add geo location",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(_currentPosition.latitude.toString()),
              Text(
                error,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textLightMode,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  print(_currentPosition);
                  print(name);
                  print(password);
                  print(email);
                  print(addressTextController.text);
                  Navigator.of(context)
                      .pushNamed('add_pictures_page', arguments: {
                    "name": name,
                    "password": password,
                    "email": email,
                    "address": addressTextController.text,
                    "geo_location": _currentPosition
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
