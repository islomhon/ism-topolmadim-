import 'package:flutter/material.dart';

class MonthCheckbox extends StatefulWidget {
  @override
  _MonthCheckboxState createState() => _MonthCheckboxState();
}

class _MonthCheckboxState extends State<MonthCheckbox> {
  List<bool> _isChecked = List.generate(31, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,

      child: SingleChildScrollView(
        child: Wrap(
          spacing: 5,
          runSpacing: 5,
          children: List.generate(31, (index) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                    activeColor:  Color.fromARGB(255, 73, 157, 99),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: _isChecked[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked[index] = value ?? false;
                      });
                    },
                  ),
                ),
                Text('${index + 1}', style: TextStyle(fontSize: 12)),
              ],
            );
          }),
        ),
      ),
    );
  }
}
