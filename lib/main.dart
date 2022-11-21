import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled1/pages/bottom_nav_page.dart';

import 'package:untitled1/pages/login_page.dart';
import 'package:untitled1/pages/main_page.dart';

import 'package:untitled1/translations/codegen_loader.g.dart';
import 'objects/user.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  runApp(EasyLocalization(
    path: 'assets/translations',
    assetLoader: CodegenLoader(),
    supportedLocales: [
      Locale('en'),
      Locale('ru')
    ],
    fallbackLocale: Locale('en'),
    child: MaterialApp(
      home: ShopApp(),
    ),
  ));
}
class ShopApp extends StatefulWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  _ShopAppState createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        home: BottomBar(),
      );

  }
}
