// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app/utils/constants.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  // SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 10, bottom: 10),
            color: kGrayColor,
            child: Image.asset(
              "assets/images/logo.png",
              height: 50,
              width: 50,
            ),
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      backgroundColor: MaterialStateProperty.all(kBlueColor),
                      shape: MaterialStateProperty.all(
                          ContinuousRectangleBorder())),
                  child: SizedBox(
                    height: size.height * 0.6,
                    width: size.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/audio-book.svg",
                          color: kWhiteColor,
                          width: 60,
                          height: 80,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("الاستماع",
                            style: TextStyle(
                                fontSize: 24,
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )),
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  ),
                  child: SizedBox(
                    height: size.height * 0.6,
                    width: size.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/quran.svg",
                          color: kWhiteColor,
                          width: 60,
                          height: 80,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("القراءة",
                            style: TextStyle(
                                fontSize: 24,
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ))
            ],
          ),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                backgroundColor: MaterialStateProperty.all(kGreenColor),
              ),
              child: SizedBox(
                height:
                    size.height * 0.4 - 70 - MediaQuery.of(context).padding.top,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/audio-book.svg",
                          color: kWhiteColor,
                          width: 30,
                          height: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "assets/images/quran.svg",
                          color: kWhiteColor,
                          width: 30,
                          height: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("الاثنان معا",
                        style: TextStyle(
                            fontSize: 24,
                            color: kWhiteColor,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
