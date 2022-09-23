import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/utils.dart';

List<String> inCome = [
  "3000ج.م:5000ج.م",
  "5000ج.م:8000ج.م",
  "8000ج.م:10000ج.م",
  "10000ج.م:15000ج.م",
  "اكثر من 15000ج.م",
];

class IncomeSalary extends StatefulWidget {
  const IncomeSalary({Key? key}) : super(key: key);

  @override
  State<IncomeSalary> createState() => _IncomeSalaryState();
}

class _IncomeSalaryState extends State<IncomeSalary> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CustomTypeIN(),
            SizedBox(height: 24),

          ],
        ),
      ),
    );
  }
}

class CustomTypeIN extends StatefulWidget {
  const CustomTypeIN({Key? key}) : super(key: key);

  @override
  State<CustomTypeIN> createState() => _CustomTypeInState();
}

class _CustomTypeInState extends State<CustomTypeIN> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      // color: Colors.cyan,
      child: CupertinoPicker(
        itemExtent: 64,
        diameterRatio: 0.8,
        onSelectedItemChanged: (index) => setState(() => index = index),
        selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
          background: Colors.green.withOpacity(0.12),
        ),
        children: Utils.modelBuilder<String>(
          inCome,
          (index, value) {
            final isSelected = index == index;
            final color = isSelected ? Colors.black : Colors.grey[900];

            return Center(
              child: Text(
                value,
                style: TextStyle(
                  color: color,
                  fontSize: 24,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
