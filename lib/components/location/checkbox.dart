import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  @override
  _CheckBoxExampleState createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  void updateSelection(int index) {
    setState(() {
      if (index == 1) {
        isChecked1 = true;
        isChecked2 = false;
      } else {
        isChecked1 = false;
        isChecked2 = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox Misoli")),
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Checkbox(
                activeColor: Color.fromARGB(255, 73, 157, 99),
                value: isChecked1,
                onChanged: (value) => updateSelection(1),
              ),
              Text("Variant 1"),
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Color.fromARGB(255, 73, 157, 99),
                value: isChecked2,
                onChanged: (value) => updateSelection(2),
              ),
              Text("Variant 2"),
            ],
          ),
        ],
      ),
    );
  }
}
