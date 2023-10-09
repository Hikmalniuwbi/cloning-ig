import 'package:flutter/material.dart';

class RecentDropBtn extends StatefulWidget {
  const RecentDropBtn({super.key});

  @override
  State<RecentDropBtn> createState() => _RecentDropBtnState();
}

class _RecentDropBtnState extends State<RecentDropBtn> {
  String selectedDropdownValue = 'Recents';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedDropdownValue,
      items: <String>["Recents", "Camera", "Galeri", "Screenshot"]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        if (newValue != null)
          setState(() {
            selectedDropdownValue = newValue;
          });
      },
    );
  }
}
