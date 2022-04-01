import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manag_erside/pages/pages_routes.dart';
import 'package:manag_erside/widgets/app_bar.dart';

import '../themes.dart';

import '../themes.dart';
import 'app_bar.dart';

class ListSubServices extends StatelessWidget {
  const ListSubServices({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    final String route = args['route'];
    final String pageName = args['page_name'];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomAppBar(),
                SizedBox(height: 21.h),
                Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        pageName,
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textLightMode,
                        ),
                      ),
                    ),
                    SizedBox(height: 21.h),
                    ServiceListTile(ServiceName: "Bed Booking", route: route),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

class ServiceListTile extends StatelessWidget {
  const ServiceListTile({
    required this.ServiceName,
    required this.route,
    Key? key,
  }) : super(key: key);
  final String ServiceName;
  final Object? route;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 5.w),
      decoration: BoxDecoration(
        color: AppColors.cardLightMode,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ListTile(
        title: Text(
          ServiceName,
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.textLightMode,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: route == EditServicesPage.pageRoute
            ? GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
              )
            : Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
      ),
    );
  }
}
