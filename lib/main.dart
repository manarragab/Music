import 'package:flutter/material.dart';
import 'package:music/Views/chooseScreen.dart';
import 'package:music/Views/forgetpassScreen.dart';
import 'package:music/Views/homeScreen.dart';
import 'package:music/Views/playSong.dart';
import 'package:music/Views/profileScreen.dart';
import 'package:music/Views/searchScreen.dart';
import 'package:music/Views/settingScreen.dart';
import 'package:music/Views/signUpInScreen.dart';
import 'package:music/Views/signinScreen.dart';
import 'package:music/Views/signupScreen.dart';
import 'package:music/Views/sliderScreen.dart';
import 'package:music/Views/songScreen.dart';
import 'package:music/Views/splashScreen.dart';
import 'package:music/Views/viewAlbums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

SharedPreferences? p;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  p = await SharedPreferences.getInstance();
  runApp(Music());
}

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: "/sign",
      getPages: [
        GetPage(name: "/splash", page: () => Splashscreen()),
        GetPage(name: "/slider", page: () => Sliderscreen()),
        GetPage(name: "/home", page: () => Homescreen()),
        GetPage(name: "/choose", page: () => ChooseScreen()),
        GetPage(name: "/sign", page: () => Signupinscreen()),
        GetPage(name: "/signin", page: () => Signinscreen()),
        GetPage(name: "/signup", page: () => Signupscreen()),
        GetPage(name: "/forgetpass", page: () => Forgetpassscreen()),
        GetPage(name: "/play", page: () => Playsong()),
        GetPage(name: "/search", page: () => Searchscreen()),
        GetPage(name: "/albums", page: () => Viewalbums()),
        GetPage(name: "/song", page: () => Songscreen()),
        GetPage(name: "/iconsong", page: () => Getsongs()),
        GetPage(name: "/profile", page: () => Profilescreen()),
        GetPage(name: "/setting", page: () => SettingScreen()),
      ],
    );
  }
}
