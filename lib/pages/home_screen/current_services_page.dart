import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/single_services_widget.dart';

class CurrentServicesPage extends StatelessWidget {
  const CurrentServicesPage({Key? key}) : super(key: key);
  static String pageRoute = "/current_services_page";

  @override
  Widget build(BuildContext context) {
    final List<String> services = [
      'Covid-19 Related',
      'Heart Related',
      'Lung Related',
      'Ortho Related',
      'General'
    ];
    return Scaffold(
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
                      'Current Services',
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textLightMode,
                      ),
                    ),
                  ),
                  SizedBox(height: 21.h),
                  ...services
                      .map((e) => SingleServices(
                            pageName: e,
                            sub_services: [],
                          ))
                      .toList()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
