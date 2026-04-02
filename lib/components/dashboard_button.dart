import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  final Function()? ontab;

  const DashboardButton({super.key, required this.ontab});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontab,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFE53935),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ), // EdgeInsets.symmetric
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ), // RoundedRectangleBorder
      ),
      child: Text(
        "Dashboard",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}


/*
 ElevatedButton(
                        onPressed: ontab,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE53935),
                          padding: EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ), // EdgeInsets.symmetric
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ), // RoundedRectangleBorder
                        ),
                        child: Text(
                          "Dashboard",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),*/