import 'package:cari_makan/app_config.dart';
import 'package:cari_makan/main.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  
  HttpOverrides.global = new MyHttpOverrides();

  var configuredApp = new AppConfig(
    appName: 'PP Tippers',
    flavorName: 'prod',
    apiBaseUrl: 'https://oasys.homecredit.co.id',
    child: new MyApp(),
  );
  
  runApp(configuredApp);


}