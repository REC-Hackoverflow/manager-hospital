import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({
    required this.pageIcon,
    required this.pageName,
    required this.pageRoute,
    Key? key,
  }) : super(key: key);
  final String pageName;
  final IconData pageIcon;
  final String pageRoute;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pageRoute);
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
          leading: Icon(
            pageIcon,
            color: Colors.black,
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
