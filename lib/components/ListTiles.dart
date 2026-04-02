import 'package:flutter/material.dart';

class Listtiles extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? ontap;
  const Listtiles({
    super.key,
    required this.icon,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(text, style: TextStyle(color: Colors.white)),
        onTap: ontap,
      ),
    );
  }
}
