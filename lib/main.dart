import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

import 'package:flutter/services.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/notification_services.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

import 'core/app_export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  gettoken();
  // await Firebase.initializeApp(
  //     options: FirebaseOptions(
  //   apiKey: 'AIzaSyApfEvx_qDoiXEqo0eqCjOITJKTBz-Ymaw',
  //   appId: '1:669158799463:android:77972a2f29e3ee3774bcc2',
  //   messagingSenderId: '12345',
  //   projectId: 'monzo-de7a8',
  //   storageBucket: 'myapp-b9yt18.appspot.com',
  // ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    ZegoUIKit().init(
        appID: 61496105,
        appSign:
            "55ae0928b85eec9e32931cda5e5202643d5eca4c3ef60732f373e8cba5d4bde5");
    runApp(MyApp());
    _determinePosition();
  });
}

gettoken() {
  FireBaseNotificationServices notificationServices =
      FireBaseNotificationServices();
  notificationServices.getDeviceToken().then((value) {
    print('DEVICE TOKEN: $value');
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

Future _signInWithGooglel() async {
  // Trigger the authentication flow
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      return null;
    }
    googleUser.authentication;
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    credential;
    idToken = credential.idToken.toString();
    accesstoken = credential.toString();
    print(credential.idToken);
    log(credential.accessToken.toString());
    log(credential.idToken.toString());
    // Once signed in, return the UserCredential

 
        await FirebaseAuth.instance.signInWithCredential(credential);
   
  } catch (e) {
    print(e);
  }
}

Future signInWithGooglel() async {
  // Trigger the authentication flow
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      return null;
    }
    googleUser.authentication;
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    credential;
    idToken = credential.idToken.toString();
    accesstoken = credential.toString();
    print(credential.idToken);
    log(credential.accessToken.toString());
    log(credential.idToken.toString());
    // Once signed in, return the UserCredential

    return await FirebaseAuth.instance.signInWithCredential(credential);
  } catch (e) {
    print(e);
  }
}
