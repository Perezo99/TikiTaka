import 'package:flutter/material.dart';
import 'package:tikitaka/screens/widgets/custom_button.dart';
import 'package:tikitaka/utils/route_manager.dart';

import 'widgets/custom_text.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, Routes.create);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, Routes.join);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomText(
              shadows: [
                Shadow(
                  blurRadius: 40,
                  color: Colors.red,
                ),
              ],
              text: 'Tiki Taka',
              fontSize: 70,
            ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
                onTap: () => createRoom(context), text: 'Create Room'),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                CustomButton(onTap: () => joinRoom(context), text: 'Join Room'),
          ),
        ],
      ),
    );
  }
}
