// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/utils/constants.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 10, bottom: 10),
      child: Center(
        child: SizedBox(
          width: 35,
          height: 35,
          child: TextButton(
            onPressed: () {
              Get.bottomSheet(Container(
                height: 300,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ));
            },
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)))),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  border: Border.all(color: kWhiteColor, width: 4),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(100)),
              child: Container(
                width: 27,
                height: 27,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: kWhiteColor.withOpacity(0.8), width: 3),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(100)),
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: kWhiteColor.withOpacity(0.5), width: 3),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
