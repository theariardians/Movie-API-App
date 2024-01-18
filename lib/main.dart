import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:moviepediaapp/pages/home_page.dart';
import 'package:moviepediaapp/pages/login_page.dart';
import 'package:moviepediaapp/pages/main_page.dart';
import 'package:moviepediaapp/pages/details_page.dart';
import 'package:moviepediaapp/pages/splash_page.dart';
import 'package:moviepediaapp/themes/themes.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MoviePedia',
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => const SplashPage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/main', page: () => const MainPage()),
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/deatils', page: () => const DetailsPage()),
      ],
    );
  }
}
