import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geetanjali/app/color/app_color.dart';
import 'package:geetanjali/app/controller/home_controller.dart';
import 'package:get/get.dart';

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: ToggleButtons(
        color: AppColor.tabbrown,
        borderColor: AppColor.tabbrown,
        fillColor: AppColor.tabbrown,
        borderWidth: 1,
        selectedBorderColor: AppColor.tabbrown,
        selectedColor: Colors.white,
        textStyle: const TextStyle(fontSize: 12, fontFamily: "Gabriela"),
        borderRadius: BorderRadius.circular(8),
        constraints: BoxConstraints(maxWidth: 350, maxHeight: 30),
        renderBorder: true,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: Text('NOW PLAYING'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            child: Text('ALL TRACKS'),
          ),
        ],
        onPressed: (int index) {
          setState(() {
            for (int i = 0; i < isSelected.length; i++) {
              isSelected[i] = i == index;
            }
            Get.find<HomeController>().setHomeTabIndex(index);
          });
        },
        isSelected: isSelected,
      ),
    );
  }
}
