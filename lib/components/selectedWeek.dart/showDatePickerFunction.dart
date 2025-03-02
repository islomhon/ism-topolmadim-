import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showCupertinoDatePicker({
  required BuildContext context,
  required DateTime initialDate,
  required Function(DateTime) onDateSelected,
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
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: initialDate,
                  onDateTimeChanged: onDateSelected,
                ),
              ),
            ],
          ),
        ),
  );
}
