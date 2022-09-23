import 'package:flutter/material.dart';

import '../widget/git_card_widget.dart';

class GitCardScreen extends StatelessWidget {
  const GitCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GitCardWidget(),
    );
  }
}

