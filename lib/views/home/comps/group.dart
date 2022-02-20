import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  const Group({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
children: [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Your Group',style: TextStyle(fontSize: 20),),
      Text('See All'),
    ],
  ),
  Column(
    children: [
      Container(
        height: 250,
        child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(height: 200,width: 100,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
image: DecorationImage(
  fit: BoxFit.cover,
  image: 
NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_500,q_auto:good,w_500/v1/gcs/platform-data-goog/events/flutter-festival-gdglawrence_sm.png')),
              borderRadius: BorderRadius.circular(20)
            ),
            );
          },
        ),
      ),
      Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.g_translate_sharp),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Start new group'),
          Text('Organize your own events'),

        ],),
        Icon(Icons.arrow_forward_ios)
      ],)
    ],
  )
],

      ),
    );
  }
}