import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/button_widget.dart';
import '../widget/components.dart';
import '../widget/utils.dart';

class MenuType extends StatefulWidget {
  const MenuType({Key? key}) : super(key: key);

  @override
  State<MenuType> createState() =>
      _MenuTypeState();
}

class _MenuTypeState extends State<MenuType> {
  int index = 0;
  static List<String> types = [
    "ذكر",
    "انثى"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildCustomPicker(),
            const SizedBox(height: 24),
            ButtonWidget(
              onClicked: () => Utils.showSheet(
                context,
                child: buildCustomPicker(),
                onClicked: () {
                  final value = types[index];
                  // Utils.showSnackBar(context, 'Selected "$value"');
                  customToast(
                    context,
                    text: 'Selected "$value"',
                  );

                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCustomPicker() => SizedBox(
    height: 200,
    child: CupertinoPicker(
      itemExtent: 64,
      diameterRatio: 0.8,

      // looping: true,
      onSelectedItemChanged: (index) => setState(() => this.index = index),
      selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
        background: Colors.green.withOpacity(0.12),
      ),
      children: Utils.modelBuilder<String>(
        types,
            (index, value) {
          final isSelected = this.index == index;
          final color = isSelected ? Colors.black : Colors.grey[900];

          return Center(
            child: Text(
              value,
              style: TextStyle(color: color, fontSize: 24),
            ),
          );
        },
      ),
    ),
  );
}
