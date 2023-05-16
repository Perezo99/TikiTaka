import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tikitaka/screens/main_menu.dart';
import 'package:tikitaka/screens/rooms/create_room_screen.dart';
import 'package:tikitaka/screens/rooms/game_room.dart';
import 'package:tikitaka/screens/rooms/join_room_screen.dart';

class Routes {
  static const String main = '/main';
  static const String join = '/join-room';
  static const String create = '/create-room';
  static const String game = '/game-room';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.main:
        return PageTransition(
          child: MainMenu(),
          type: PageTransitionType.bottomToTop,
          duration: Duration(milliseconds: 1000),
          reverseDuration: Duration(milliseconds: 1000),
        );

      case Routes.join:
        return PageTransition(
          child: JoinRoom(),
          type: PageTransitionType.bottomToTop,
          duration: Duration(milliseconds: 1000),
          reverseDuration: Duration(milliseconds: 1000),
        );

      case Routes.create:
        return PageTransition(
          child: CreateRoom(),
          type: PageTransitionType.bottomToTop,
          duration: Duration(milliseconds: 1000),
          reverseDuration: Duration(milliseconds: 1000),
        );

      case Routes.game:
        return PageTransition(
          child: GameRoom(),
          type: PageTransitionType.bottomToTop,
          duration: Duration(milliseconds: 1000),
          reverseDuration: Duration(milliseconds: 1000),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Page Found'),
        ),
        body: const Center(),
      ),
    );
  }
}
