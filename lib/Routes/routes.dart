import 'package:bereal/pages/login/login.dart';
import 'package:bereal/pages/login/register.dart';
import 'package:bereal/pages/profile/profile.dart';
import 'package:get/get.dart';

import '../pages/home/main.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: login, page: () => LoginView()),
    GetPage(name: register, page: () => RegisterView()),
    GetPage(name: main, page: () => MainPage()),
    GetPage(name: profile, page: () => ProfileView()),
  ];

  static getLogin() => login;
  static getRegister() => register;
  static getMain() => main;
  static getProfile() => profile;
  static getMapdeneme() => mapdeneme;

  static String login = '/login';
  static String register = '/register';
  static String main = '/main';
  static String profile = '/profile';
  static String mapdeneme = '/mapdeneme';
}
