import 'package:challenge/views/home/comps/events.dart';
import 'package:challenge/views/home/comps/group.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Events(),
          Group()
        ],
      )
    );
  }
}