// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quran_app/ui/controllers/splash_controller.dart';
import 'package:get/get.dart';
import 'package:quran_app/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: size.width * 0.7,
                height: size.width * 0.7,
              ),
              SizedBox(height: 100),
              Text("هذا المصحف الرقمي صدقة جارية علي روح المغفور له بإذن الله"),
              SizedBox(height: 10),
              Text("محمد عبدالعاطى العشماوى",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              Image.asset(
                "assets/images/dad.png",
                width: 130,
                height: 130,
              ),
              Text("وعلي أرواح والديه"),
              SizedBox(
                height: 10,
              ),
              Text(
                "اللهم اغفر لهم وارحمهم وادخلهم فسيح جناتك",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kBlueColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
    );
  }
}
