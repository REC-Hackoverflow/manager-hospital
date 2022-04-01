import 'package:flutter/material.dart';
import '../pages/auth_screen/add_pictures_page.dart';
import '../pages/auth_screen/location_page.dart';
import '../pages/pages_routes.dart';
import '../screens/screens_routes.dart';
import '../pages/auth_screen/register_page.dart';

import '../pages/auth_screen/login_page.dart';

var routes = <String, WidgetBuilder>{
  '/': (_) => HomeScreen(),
  AnalyticsPage.pageRoute: (_) => AnalyticsPage(),
  CurrentServicesPage.pageRoute: (_) => CurrentServicesPage(),
  AddServicesPage.pageRoute: (_) => AddServicesPage(),
  EditServicesPage.pageRoute: (_) => EditServicesPage(),
  '/auth_screen': (_) => LoginPage(),
  'list_services_screen': (_) => ListSubServices(),
  'settings_screen': (_) => SettingsScreen(),
  'register_page': (_) => RegisterPage(),
  'location_page': (_) => LocationPage(),
  'add_pictures_page': (_) => AddPicturesPage()
};
