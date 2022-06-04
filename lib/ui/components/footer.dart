import 'package:flutter/material.dart';
import 'package:quran_app/utils/constants.dart';

class Footer extends StatelessWidget {
  const Footer(
      {Key? key,
      required this.juz,
      required this.surahName,
      required this.readerName})
      : super(key: key);

  final String juz;
  final String surahName;
  final String readerName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Positioned(
            left: 0,
            child: Container(
              color: kGrayColor,
              height: 45,
              width: size.width / 3,
              child: TextButton(
                onPressed: () {},
                child: Center(
                    child: Text(
                  readerName,
                  style: TextStyle(
                      fontFamily: "Hafs", fontSize: 14, color: kWhiteColor),
                )),
              ),
            ),
          ),
          Container(
            color: kGrayColor,
            height: 45,
            width: size.width / 3,
            child: TextButton(
              onPressed: () {},
              child: Center(
                  child: Text(
                juz,
                style: TextStyle(
                    fontFamily: "Hafs", fontSize: 14, color: kWhiteColor),
              )),
            ),
          ),
          Positioned(
            left: size.width / 3,
            child: Container(
              height: 45,
              width: size.width / 3,
              decoration: BoxDecoration(color: kGrayColor, boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 1,
                    blurRadius: 5)
              ]),
              child: TextButton(
                onPressed: () {},
                child: Center(
                    child: Text(
                  surahName,
                  style: TextStyle(
                      fontFamily: "Hafs", fontSize: 14, color: kWhiteColor),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
