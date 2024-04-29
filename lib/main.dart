import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
 
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
     _determinePosition();
  });
}
Future<Position> _determinePosition() async {
  
  LocationPermission permission;
    permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  return await Geolocator.getCurrentPosition();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        
       theme: ThemeData(
              textTheme: Theme.of(context).textTheme.apply(
                    fontFamily: 'Poppins',
                  ),
              useMaterial3: false),
        debugShowCheckedModeBanner: false,
     
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'muhammad_zubair_s_application4',
        initialBinding: InitialBindings(),
        initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.pages,
      );
    });
  }
}
