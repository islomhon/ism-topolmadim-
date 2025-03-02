import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final String label;

  CustomCheckbox({required this.label});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor:  Color.fromARGB(255, 73, 157, 99),
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value ?? false;
            });
          },
        ),
        Text(widget.label),
      ],
    );
  }
}
