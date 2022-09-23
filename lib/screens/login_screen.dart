import 'package:cashmoney/screens/marry_status.dart';
import 'package:cashmoney/widget/components.dart';
import 'package:flutter/material.dart';

import 'date_picker_page.dart';
import 'educational_degree.dart';
import 'menu_type.dart';
import 'number_chil.dart';

class TableScreen extends StatelessWidget {
  TableScreen({Key? key}) : super(key: key);

  int currentHour = 0;

  List<String> gender = [
    "اعزب/ة",
    "متزوج/ة",
    "ارمل/ة",
  ];
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 40,
            right: 10,
            left: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const DatePickerPage();
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 65,
                    decoration: BoxDecoration(
                      color: Theme.of(context).focusColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('00'), Text('تاريخ الاصدار')],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const DatePickerPage();
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 65,
                    decoration: BoxDecoration(
                      color: Theme.of(context).focusColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('00'), Text(' انتهاء الصلاحية')],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const MarryStatus();
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 65,
                    decoration: BoxDecoration(
                      color: Theme.of(context).focusColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('00'), Text(' الحالة الزوجية')],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const MenuType();
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).focusColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text('نوع الجنس'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const EducationalDegree();
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).focusColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text('المستوى التعليمى'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const NumberOfChi();
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).focusColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text('عدد الاطفال'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  type: TextInputType.emailAddress,
                  validate: (value) {
                    return ('sssssss');
                  },
                  label: 'email ',
                  hintText: '000000@gamil.com',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
