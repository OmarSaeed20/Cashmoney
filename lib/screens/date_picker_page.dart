import 'package:cashmoney/widget/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widget/button_widget.dart';
import '../widget/utils.dart';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({Key? key}) : super(key: key);

  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Expanded(child: buildDatePicker()),
              // const SizedBox(height: 24),
              ButtonWidget(
                onClicked: () => Utils.showSheet(
                  context,
                  child: Container(
                    height: 250,
                      child: buildDatePicker()),
                  onClicked: () {
                    final value = DateFormat('yyyy/MM/dd').format(dateTime);
                    // Utils.showSnackBar(context, 'Selected "$value"');
                    customToast(
                      context,
                      text: 'Selected "$value"',
                    );

                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      );

  Widget buildDatePicker() => CupertinoDatePicker(
        initialDateTime: dateTime,
        minimumYear: 2005,
        maximumYear: 2030,
        mode: CupertinoDatePickerMode.date,
        onDateTimeChanged: (dateTime) {
          setState(() => this.dateTime = dateTime);
        },

      );

}
