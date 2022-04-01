import 'package:flutter/material.dart';

import '../../themes.dart';
import '../../widgets/app_bar.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);
  static String pageRoute = '/analytics_page';

  popServicesContainer(String services, String percentage) {
    return Container(
      height: 90,
      child: Card(
          child: ListTile(
            title: Text(
              services,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            trailing: Text(
              percentage,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green[800],
              ),
            ),
          ),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: SafeArea(
          child: ListView(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 25,
              ),
              Text(
                'Analytics',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Overview',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 300,
              ),
              Text('Popular Services',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              popServicesContainer("COVID-19 Related", "50%+"),
              popServicesContainer("Heart Related", "12%"),
              popServicesContainer("General", "12%"),
            ],
          ),
        ),
      ),
    );
  }
}
