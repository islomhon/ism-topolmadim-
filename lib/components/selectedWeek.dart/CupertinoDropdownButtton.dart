import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CupertinoDropdownButton extends StatefulWidget {
  final Function(String) onItemSelected; // Yangilangan parametr

  CupertinoDropdownButton({required this.onItemSelected});

  @override
  _CupertinoDropdownButtonState createState() =>
      _CupertinoDropdownButtonState();
}

class _CupertinoDropdownButtonState extends State<CupertinoDropdownButton> {
  String _selectedItem = ""; 

  void _showCupertinoDropdown(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          for (var item in ['Day', 'Week', 'Month'])
            CupertinoActionSheetAction(
              onPressed: () {
                setState(() {
                  _selectedItem = item;
                });

                widget.onItemSelected(item); // Call the function
                Navigator.pop(context);
              },
              child: Text(item),
            ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () => Navigator.pop(context),
          child: Text(
            "cancel",
            style: TextStyle(color: CupertinoColors.systemRed),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: CupertinoColors.systemGrey5,
      borderRadius: BorderRadius.circular(8),
      onPressed: () => _showCupertinoDropdown(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            _selectedItem,
            style: TextStyle(color: CupertinoColors.black, fontSize: 13),
          ),
          SizedBox(width: 8),
          Icon(
            CupertinoIcons.chevron_down,
            color: CupertinoColors.black,
            size: 15,
          ),
        ],
      ),
    );
  }
}
