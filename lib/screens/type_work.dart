import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../widget/utils.dart';

List<String> work = [
  "عمل بدوام جزئي",
  "عمل بدوام كلى",
  "عاطل",
  "طالب",
  "عمل خاص",
  "اخرى",
];
class TypeWork extends StatefulWidget {
  const TypeWork({Key? key}) : super(key: key);

  @override
  State<TypeWork> createState() => _TypeWorkState();
}

class _TypeWorkState extends State<TypeWork> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:const [
           CustomType(),
             SizedBox(height: 24),

          ],
        ),
      ),
    );
  }

}
class CustomType extends StatefulWidget {
  const CustomType({Key? key}) : super(key: key);

  @override
  State<CustomType> createState() => _CustomTypeState();
}

class _CustomTypeState extends State<CustomType> {
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
          work,
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
