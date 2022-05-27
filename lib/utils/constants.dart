import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/utils/services/navigation_service.dart';
import 'package:get/get.dart';

const Color kPrimaryColor = Color(0xFF1f203f);
const Color kPrimaryDarkColor = Color(0xFF1c1832);
const Color kPrimaryLightColor = Color(0xFF5380d1);
const Color kWhiteColor = Color(0xFFf7f7fb);
const Color kGrayColor = Color(0xFFC8C3CB);
const Color kRedColor = Color(0xFFeb2a14);
const Color kGreenColor = Color(0xFF00c89d);
const Color kOrangeColor = Color(0xFFFF9F22);

const String kAppTitle = "القرأن الكريم";
String kFontFamilyPrimary = "KFGQPC HAFS Uthmanic Script";
String kFontFamilySecondary = "Tajawal";
String kFontFamilyBesmellah = "110_Besmellah";

const String kQuranApiUrl = "https://api.alquran.cloud/v1";
const String kQuranAudioCdn = "https://cdn.islamic.network";

final Size size = MediaQuery.of(Get.find<NavigationService>().context()).size;
