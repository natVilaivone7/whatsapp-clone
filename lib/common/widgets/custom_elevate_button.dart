import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    this.buttomWith = 0.0,
    super.key,
    required this.Onpressed,
    required this.text,
  });
  final VoidCallback Onpressed;
  final String text;
  final double buttomWith;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width - 100,
      child: ElevatedButton(
          // autofocus: true,
          onPressed: Onpressed,
          child: Text(
            text,
            style: TextStyle(fontSize: 23, color: Colors.white),
          )),
    );
  }
}
