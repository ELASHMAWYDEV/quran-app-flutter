// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:quran_app/utils/constants.dart';
import 'package:quran_app/utils/utils.dart';

class Surah extends StatelessWidget {
  const Surah(
      {Key? key,
      required this.title,
      required this.ayahs,
      required this.surahNumber})
      : super(key: key);

  final String title;
  final List<dynamic> ayahs;
  final int surahNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: size.width - 70,
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/quran-surah-title-bg.png")),
          ),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                  overflow: TextOverflow.visible,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Hafs",
                  fontSize: 14,
                  height: 1.3),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Visibility(
          visible: surahNumber != 1,
          child: Text(
            "k",
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: "Besmellah",
              fontSize: 32,
            ),
          ),
        ),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 24,
                    fontFamily: "Hafs",
                    fontWeight: FontWeight.bold),
                children: ayahs
                    .map<TextSpan>((ayah) => TextSpan(
                            text:
                                "${ayah['text'].replaceAll(surahNumber != 1 ? "بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ" : "", "")} ",
                            children: [
                              TextSpan(
                                  text:
                                      "${replaceWithArabicNumber(ayah['numberInSurah'].toString())} ")
                            ]))
                    .toList())),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
