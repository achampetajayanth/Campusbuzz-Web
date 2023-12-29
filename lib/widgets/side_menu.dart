import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1d1d42),
      body: ListView(
        children: [
          const DrawerHeader(
            child: CircleAvatar(),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            horizontalTitleGap: 0,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.mail, color: Colors.white),
            title: const Text(
              'Email',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            horizontalTitleGap: 0,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.settings, color: Colors.white),
            title: const Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            horizontalTitleGap: 0,
          ),
        ],
      ),
    );
  }
}
