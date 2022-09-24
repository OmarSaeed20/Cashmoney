import 'package:cashmoney/widget/model_details_widget.dart';
import 'package:cashmoney/widget/stepper_widget.dart';
import 'package:flutter/material.dart';

class LoanDetails extends StatelessWidget {
  const LoanDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            SliderWidget(),
            SizedBox(height: 15,),
            ModelDetailsWidget(),
          ],
        ),
      ),
    );
  }
}
