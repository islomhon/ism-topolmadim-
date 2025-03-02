import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Subjectteksfield extends StatefulWidget {
  const Subjectteksfield({super.key});

  @override
  State<Subjectteksfield> createState() => _SubjectteksfieldState();
}

class _SubjectteksfieldState extends State<Subjectteksfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade300,
      ),
      height: 37,
      child: Center(
        child: CupertinoTextField(
          placeholder: 'type keyword...',
          placeholderStyle: TextStyle(color: Colors.black45),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            border: Border.all(color: Colors.grey.shade500,),
            borderRadius: BorderRadius.circular(5)
          ),
        ),
      ),
    );
  }
}
