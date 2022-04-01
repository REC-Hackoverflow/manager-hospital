import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../themes.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/single_services_widget.dart';

class EditServicesPage extends StatelessWidget {
  EditServicesPage({Key? key}) : super(key: key);
  static String pageRoute = "/edit_services_page";
  final List<Map> services = [
    {"page_name": "Covid-19 Related", "sub_services": []},
    {"page_name": "Heart Related", "sub_services": []},
    {"page_name": "Lung Related", "sub_services": []},
    {"page_name": "General Related", "sub_services": []},
  ];
  @override
  Widget build(BuildContext context) {
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
                      'Edit Services',
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
                            pageName: e['page_name'],
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
