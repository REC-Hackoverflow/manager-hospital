import 'package:flutter/material.dart';

import '../themes.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.primary,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
            child: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('settings_screen');
            },
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
          ),
          label: '',
        ),
      ],
    );
  }
}
