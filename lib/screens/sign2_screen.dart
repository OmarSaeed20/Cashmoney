import 'package:cashmoney/screens/type_work.dart';
import 'package:cashmoney/widget/components.dart';
import 'package:flutter/material.dart';

import '../widget/utils.dart';
import 'income_salary.dart';
import 'menu_type.dart';
import 'number_chil.dart';

class Sign2Screen extends StatelessWidget {
  Sign2Screen({Key? key}) : super(key: key);

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
                  onTap: () => Utils.showSheet(
                    context,
                    child: const CustomType(),
                    onClicked: () {
                      // final value =  work[index];
                      // Utils.showSnackBar(context, 'Selected "$value"');
                      // s

                      Navigator.pop(context);
                    },
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 65,
                    decoration: BoxDecoration(
                      color: Theme.of(context).focusColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('00'), Text('نوع الوظيفة')],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // InkWell(
                //   onTap: () => Utils.showSheet(
                //     context,
                //     child: const CustomType(),
                //     onClicked: () {
                //       // final value =  work[index];
                //       // Utils.showSnackBar(context, 'Selected "$value"');
                //       // s
                //
                //       Navigator.pop(context);
                //     },
                //   ),
                //   child: Container(
                //     padding: const EdgeInsets.symmetric(horizontal: 15),
                //     height: 65,
                //     decoration: BoxDecoration(
                //       color: Theme.of(context).focusColor,
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: const [Text('00'), Text(' الوظيفة')],
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // InkWell(
                //   onTap: () => Utils.showSheet(
                //     context,
                //     child: const CustomType(),
                //     onClicked: () {
                //       // final value =  work[index];
                //       // Utils.showSnackBar(context, 'Selected "$value"');
                //       // s
                //
                //       Navigator.pop(context);
                //     },
                //   ),
                //   child: Container(
                //     padding: const EdgeInsets.symmetric(horizontal: 15),
                //     height: 65,
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //       color: Theme.of(context).focusColor,
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: const Align(
                //       alignment: Alignment.centerRight,
                //       child: Text('مدة العمل'),
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                InkWell(
                  onTap: () => Utils.showSheet(
                    context,
                    child: const CustomTypeIN(),
                    onClicked: () {
                      // final value =  work[index];
                      // Utils.showSnackBar(context, 'Selected "$value"');
                      // s

                      Navigator.pop(context);
                    },
                  ),
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
                      child: Text('الدخل الشهرى'),
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
