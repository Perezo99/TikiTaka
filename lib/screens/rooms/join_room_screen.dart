import 'package:flutter/material.dart';
import 'package:tikitaka/utils/socket_methods.dart';

import '../../utils/responsive.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textfield.dart';

class JoinRoom extends StatefulWidget {
  const JoinRoom({super.key});

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIDController = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void initState() {
    super.initState();
    _socketMethods.joinRoomSuccessListener(context);
    _socketMethods.errorOccurredListener(context);
    _socketMethods.updatePlayersStateListener(context);
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIDController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  shadows: [
                    Shadow(
                      blurRadius: 40,
                      color: Colors.red,
                    ),
                  ],
                  text: 'Join Room',
                  fontSize: 70,
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                CustomTextField(
                  hintText: 'Enter your nickname',
                  controller: _nameController,
                ),
                SizedBox(height: 12),
                CustomTextField(
                  hintText: 'Enter Game ID',
                  controller: _gameIDController,
                ),
                SizedBox(height: size.height * 0.045),
                CustomButton(
                  onTap: () => _socketMethods.joinRoom(
                      _nameController.text, _gameIDController.text),
                  text: 'Join ',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
