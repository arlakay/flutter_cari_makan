import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cari_makan/home_page/home_page.dart';
import 'package:cari_makan/app_config.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    HttpClient result = super.createHttpClient(context);

    result.badCertificateCallback = (X509Certificate cert, String host, int port) => true;

    return result;
  }
}

class MyApp extends StatelessWidget {
  var baseURL = "";

  @override
  Widget build(BuildContext context) {
    baseURL = AppConfig.of(context).apiBaseUrl == null ? '' : AppConfig.of(context).apiBaseUrl;

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

