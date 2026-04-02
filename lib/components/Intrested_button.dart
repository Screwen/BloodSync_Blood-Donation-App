import 'package:flutter/material.dart';

class IntrestedButton extends StatelessWidget {
  final Function()? ontab;
  final bool isIntrested;

  const IntrestedButton({
    super.key,
    required this.ontab,
    required this.isIntrested,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: ElevatedButton(
        onPressed: ontab,
        style: ElevatedButton.styleFrom(
          backgroundColor: isIntrested ? Color(0xFFE53935) : Colors.grey,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ), // EdgeInsets.symmetric
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ), // RoundedRectangleBorder
        ),
        child: Text(
          "Donate",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      /*Container(

        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isIntrested ? Colors.redAccent : Colors.grey,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            "Donate",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),*/
    );
  }
}
