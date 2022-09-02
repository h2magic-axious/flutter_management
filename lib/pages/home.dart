import 'package:flutter/material.dart';

import '../utils/root_aside.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Management"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(child: Aside()),
          Expanded(
            flex: 9,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
