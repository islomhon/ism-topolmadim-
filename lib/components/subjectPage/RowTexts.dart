import 'package:flutter/material.dart';

class Rowtext extends StatelessWidget {
  final String text1;
  final String text2;
  final bool text3Enable;
  final String? text3;

  const Rowtext({
    super.key,
    required this.text1,
    required this.text2,
    this.text3Enable = false,
    this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(text1, style: TextStyle(fontSize: 13)),
          Text(text2, style: TextStyle(fontSize: 13)),
          if (text3Enable && text3 != null)
            Text(text3!, style: TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}
