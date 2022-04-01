// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/pages_routes.dart';
import '../themes.dart';
import '../widgets/app_bar.dart';
import '../widgets/navbar.dart';
import '../widgets/single_page_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomAppBar(),
              SizedBox(
                height: 21.h,
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textLightMode,
                      ),
                    ),
                  ),
                  SizedBox(height: 21.h),
                  SinglePage(
                    pageIcon: Icons.bar_chart,
                    pageName: "Analytics",
                    pageRoute: AnalyticsPage.pageRoute,
                  ),
                  SinglePage(
                    pageIcon: Icons.medical_services,
                    pageName: "Current Services",
                    pageRoute: CurrentServicesPage.pageRoute,
                  ),
                  SinglePage(
                    pageIcon: Icons.add,
                    pageName: "Add Services",
                    pageRoute: AddServicesPage.pageRoute,
                  ),
                  SinglePage(
                    pageIcon: Icons.edit,
                    pageName: "Edit Services",
                    pageRoute: EditServicesPage.pageRoute,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
