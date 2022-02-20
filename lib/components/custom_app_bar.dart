import 'package:challenge/constants/my_colors.dart';
import 'package:flutter/material.dart';

customAppBar(){
  return AppBar(
        backgroundColor: MyColors.white,
        title:const Text('Meetup',style: TextStyle(color: MyColors.navigationActive),),
        centerTitle: true,
        actions: [Container(
          margin:const EdgeInsets.only(right: 15),
          child:const CircleAvatar(backgroundImage: NetworkImage('https://www.thesprucepets.com/thmb/M1g_5pp2iyizbZ1emWFcD_XU7Uo=/420x0/filters:no_upscale():max_bytes(150000):strip_icc()/adorable-white-pomeranian-puppy-spitz-921029690-5c8be25d46e0fb000172effe.jpg'),))],
      );
}