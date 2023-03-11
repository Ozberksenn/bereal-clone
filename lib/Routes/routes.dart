import 'package:bereal/Screens/MainScreens/main.dart';
import 'package:get/get.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: main , page:() => const MainPage())
    
  ];

  static getMain() => main;

  static String main = '/main';
}