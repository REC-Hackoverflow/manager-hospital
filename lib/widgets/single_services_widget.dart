import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes.dart';

class SingleServices extends StatelessWidget {
  SingleServices({
    required this.pageName,
    required this.sub_services,
    Key? key,
  }) : super(key: key);
  final String pageName;
  final List sub_services;
  @override
  Widget build(BuildContext context) {
    String? routeName = ModalRoute.of(context)?.settings.name;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'list_services_screen',
            arguments: {"route": routeName, "page_name": pageName});
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 5.w),
        decoration: BoxDecoration(
          color: AppColors.cardLightMode,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ListTile(
          title: Text(
            pageName,
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.textLightMode,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            Icons.navigate_next,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
