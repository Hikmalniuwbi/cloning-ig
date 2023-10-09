import 'package:flutter/material.dart';

class SelectMultiBtn extends StatelessWidget {
  const SelectMultiBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.grey.shade600,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.content_copy_outlined,
                size: 18,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'SELECT MULTIPLE',
                style: TextStyle(fontSize: 12),
              ),
            ],
          )),
    );
  }
}
