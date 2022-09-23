import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.blueGrey,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 42),
                primary: Colors.teal,
              ),
              onPressed: onClicked,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.add_task_outlined, size: 28),
                  SizedBox(width: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Expanded(
                      child: Text(
                        'Select',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
