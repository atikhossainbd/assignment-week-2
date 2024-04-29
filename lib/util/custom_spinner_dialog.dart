import 'package:flutter/material.dart';

class CustomSpinnerDialog extends StatefulWidget {
  final String title;
  final Function(int) onItemSelected;

  const CustomSpinnerDialog({required this.title, required this.onItemSelected});

  @override
  _CustomSpinnerDialogState createState() => _CustomSpinnerDialogState();
}

class _CustomSpinnerDialogState extends State<CustomSpinnerDialog> {
  int _selectedValue = 1; // Initial selected value

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: Column(
        mainAxisSize: MainAxisSize.min, // Avoid excessive height
        children: [
          DropdownButton<int>(
            value: _selectedValue,
            items: [
              DropdownMenuItem(
                value: 1,
                child: Text("Option 1"),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text("Option 2"),
              ),
              DropdownMenuItem(
                value: 3,
                child: Text("Option 3"),
              ),
              DropdownMenuItem(
                value: 4,
                child: Text("Option 4"),
              ),
            ],
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Cancel"),
        ),
        TextButton(
          onPressed: () => widget.onItemSelected(_selectedValue),
          child: Text("Select"),
        ),
      ],
    );
  }
}

void showCustomSpinnerDialog(BuildContext context, String title, Function(int) onItemSelected) {
  showDialog(
    context: context,
    builder: (context) => CustomSpinnerDialog(title: title, onItemSelected: onItemSelected),
  );
}