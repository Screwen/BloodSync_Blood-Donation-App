import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  //
  //all function format final void Function()? ontab;

  final void Function()? ontab;
  const DeleteButton({super.key, required this.ontab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: Icon(Icons.cancel, color: Colors.redAccent, size: 30),
    );
  }
}
