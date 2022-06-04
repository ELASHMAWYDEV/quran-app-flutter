// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/ui/components/footer.dart';
import 'package:quran_app/ui/components/header.dart';
import 'package:quran_app/ui/components/surah.dart';
import 'package:quran_app/utils/constants.dart';
import 'package:quran_app/utils/utils.dart';

class BothScreen extends StatefulWidget {
  const BothScreen({Key? key}) : super(key: key);

  @override
  State<BothScreen> createState() => _BothScreenState();
}

class _BothScreenState extends State<BothScreen> {
  dynamic data;

  @override
  void initState() {
    super.initState();
    getQuran();
  }

  dynamic getQuran() async {
    dynamic jsonData = await loadJsonFromAsset("assets/quran/quran.json");
    print(jsonData["data"]["surahs"][0]["ayahs"][0]["text"]);
    setState(() {
      data = jsonData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Column(
        children: [
          Header(),
          Container(
            height: size.height * 0.7 - (45 / 2),
            width: size.width,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/quran-page-blue-bg.png"))),
            child: SingleChildScrollView(
                child: Column(
                    children: data["data"]["surahs"]
                        .map<Widget>((surah) => Surah(
                            title: surah["name"],
                            ayahs: surah["ayahs"],
                            surahNumber: surah["number"]))
                        .toList())),
          ),
          Container(
            height: size.height * 0.3 -
                (45 / 2) -
                MediaQuery.of(context).padding.top -
                20 -
                35,
          ),
          Footer(
            juz: "الجزء الأول",
            readerName: "أبو بكر الشاطري",
            surahName: "سُورَةُ ٱلْفَاتِحَةِ",
          )
        ],
      ),
    );
  }
}
