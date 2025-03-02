import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showCupertinoTimePicker({
  required BuildContext context,
  required TimeOfDay initialTime,
  required Function(TimeOfDay) onTimeSelected,
}) {
  showCupertinoModalPopup(
    context: context,
    builder:
        (_) => Container(
          height: 250,
          color: CupertinoColors.systemBackground.resolveFrom(context),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(10),
                child: CupertinoButton(
                  child: Text("Done"),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),

              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.time,
                  initialDateTime: DateTime(
                    2025,
                    1,
                    1,
                    initialTime.hour,
                    initialTime.minute,
                  ),
                  use24hFormat: true,
                  onDateTimeChanged: (DateTime newTime) {
                    onTimeSelected(
                      TimeOfDay(hour: newTime.hour, minute: newTime.minute),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
  );
}
