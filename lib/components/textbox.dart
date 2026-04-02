import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final String username;
  final String sectionName;
  final void Function()? onPressed;
  const MyTextBox({
    super.key,
    required this.sectionName,
    required this.username,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE53935), Color(0xFFFF8A80)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        color: const Color.fromARGB(255, 255, 222, 222), //Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.only(left: 15, bottom: 15),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //sectiom
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionName,
                style: TextStyle(
                  color: const Color.fromARGB(255, 232, 232, 232),
                ),
              ),

              //button to change name
              IconButton(
                onPressed: onPressed,
                icon: Icon(Icons.settings),
                color: Colors.white,
              ),
            ],
          ),

          //user name
          Text(username, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
