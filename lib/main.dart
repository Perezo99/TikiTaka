import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tikitaka/screens/main_menu.dart';
import 'package:tikitaka/screens/providers/room_data_provider.dart';
import 'package:tikitaka/utils/color_manager.dart';
import 'package:tikitaka/utils/route_manager.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RoomDataProvider(),
      child: MaterialApp(
        title: 'TikiTaka',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: ColorManager.primaryColor),
        home: const MainMenu(),
      ),
    );
  }
}
