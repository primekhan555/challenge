import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Text(' Your next event',style: TextStyle(fontSize: 20)),
  Card(
    // margin: EdgeInsets.symmetric(horizontal: 20),
    
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Sat Feb 19 . 12:00 Pm'),
              Text('Flutter Festival,',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Islamabad',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('data'),
            ],),
            Container(
              child: Image.network('https://secure-content.meetupstatic.com/images/classic-events/501629680/676x380.webp',
              height: 100,
              width: 100,
              ),
            )
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(children: [
              Icon(Icons.check),Text('data'),Icon(Icons.video_call),Text('Online Event')
            ],),
            Icon(Icons.upload_rounded)
          ],),
        ],
      ),
    ),
  )
],

      ),
    );
  }
}