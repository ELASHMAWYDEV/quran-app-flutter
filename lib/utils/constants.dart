import 'package:flutter/material.dart';
import 'package:quran_app/utils/services/navigation_service.dart';
import 'package:get/get.dart';

const Color kPrimaryColor = Color(0xFF222F3E);
const Color kPrimaryLightColor = Color(0xFFDDF4FC);
const Color kBlueColor = Color(0xFF54A0FF);
const Color kWhiteColor = Color(0xFFFFFFFF);
const Color kGrayColor = Color(0xFF596275);
const Color kRedColor = Color(0xFFeb2a14);
const Color kGreenColor = Color(0xFF2ED573);
const Color kOrangeColor = Color(0xFFFF9F22);

const String kAppTitle = "القرأن الكريم";
String kFontFamilyPrimary = "Tajawal";
String kFontFamilySecondary = "YesevaOne";
String kFontFamilyQuran = "Hafs";
String kFontFamilyBesmellah = "110_Besmellah";

const String kQuranApiUrl = "https://api.alquran.cloud/v1";
const String kQuranAudioCdn = "https://cdn.islamic.network";

final Size size = MediaQuery.of(Get.find<NavigationService>().context()).size;
