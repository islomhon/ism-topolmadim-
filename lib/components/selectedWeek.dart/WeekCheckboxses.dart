import 'package:figma_ui/components/checkbox.dart';
import 'package:flutter/material.dart';

class Weekcheckbox extends StatelessWidget {
  const Weekcheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomCheckbox(label: 'monday'),
              CustomCheckbox(label: 'tuesday'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomCheckbox(label: 'wednesday'),
              CustomCheckbox(label: 'thursday'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomCheckbox(label: 'friday'),
              CustomCheckbox(label: 'saturday'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [CustomCheckbox(label: 'sunday')],
          ),
        ],
      ),
    );
  }
}
