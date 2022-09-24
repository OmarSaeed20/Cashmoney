import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double currentV = 100;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${currentV.round()}  ج.م',
                  style: const TextStyle(color: Colors.redAccent),
                ),
                const Text('مبلغ القرض[ج.م] '),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '100  ج.م',
                ),
                Text('18000 ج.م '),
              ],
            ),
            Slider(
                min: 100,
                max: 18000,
                divisions: 3600,
                label: currentV.round().toString(),
                value: currentV,
                thumbColor: Colors.teal,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() => currentV = value);
                }),
          ],
        ),
      ),
    );
  }
}
