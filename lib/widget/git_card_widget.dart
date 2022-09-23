import 'package:flutter/material.dart';

class GitCardWidget extends StatelessWidget {
  const GitCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Column(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xF3E7B436),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Image.asset(
                                    'assets/feedback 1.png',
                                    color: Colors.white,
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Unsecured',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Column(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Image.asset(
                                      'assets/rocket 1.png',
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Fast',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Column(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF4CAF50),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 2),
                                    child: Expanded(
                                      child: Image.asset(
                                        'assets/smartphone 1.png',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              '100% Online',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.green,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'اعلى قيمة للقرض(ج.م)',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    '18,000',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.blue),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'اطلب الان',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'فقط 3 خطوات لاتمام طلبك',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 35,
                                        width: 35,
                                        child: Container(
                                          padding: const EdgeInsets.all(5),
                                          child: Image.asset(
                                            'assets/user 0.png',
                                          ),
                                        )),
                                    const Expanded(
                                      child: Text(
                                        'ادخل الملف\nالشخصى',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                    height: 40,
                                    width: 35,
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      child: Image.asset(
                                        'assets/arrow-right 1.png',
                                        color: const Color(0xEFE57C30),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 35,
                                        width: 35,
                                        child: Container(
                                          padding: const EdgeInsets.all(5),
                                          child: Image.asset(
                                            'assets/comment 2.png',
                                          ),
                                        )),
                                    const Expanded(
                                      child: Text(
                                        'الحصول علي\n الموافقة',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                    height: 40,
                                    width: 35,
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      child: Image.asset(
                                        'assets/arrow-right 1.png',
                                        color: const Color(0xEFE57C30),
                                      ),
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 35,
                                        width: 35,
                                        child: Container(
                                          padding: const EdgeInsets.all(5),
                                          child: Image.asset(
                                            'assets/wallet 1.png',
                                          ),
                                        )),
                                    const Expanded(
                                      child: Text(
                                        'تحصيل النقود',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
