import 'package:challenge/components/custom_app_bar.dart';
import 'package:challenge/components/custom_bottom_navigation.dart';
import 'package:challenge/constants/my_colors.dart';
import 'package:challenge/views/explore.dart';
import 'package:challenge/views/home/home.dart';
import 'package:challenge/views/messages.dart';
import 'package:challenge/views/notifications.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenge',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selected=0;
List<Widget> screens=[Home(),Explore(),Notifications(),Messages()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: screens.elementAt(selected),
      bottomNavigationBar:CustomBottomNavigation(selected: selected,onTap: (index)=>setState(()=>selected=index),),
    );
  }
}
