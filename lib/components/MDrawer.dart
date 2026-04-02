import 'package:cse_project/components/ListTiles.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  final void Function()? onProfileTap;
  final void Function()? onSignOutTap;

  const Mydrawer({
    super.key,
    required this.onProfileTap,
    required this.onSignOutTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //header
              DrawerHeader(
                child: Icon(
                  Icons.medical_information,
                  size: 64,
                  color: Colors.white,
                ),
              ),

              //HOME
              Listtiles(
                icon: Icons.home,
                text: "H O M E",
                ontap: () => Navigator.pop(context),
              ),

              //pROFILE
              Listtiles(
                icon: Icons.person,
                text: "P R O F I L E",
                ontap: onProfileTap,
              ),
            ],
          ),

          //LOGOUT
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Listtiles(
              icon: Icons.logout,
              text: "L O G O U T",
              ontap: onSignOutTap,
            ),
          ),
        ],
      ),
    );
  }
}
