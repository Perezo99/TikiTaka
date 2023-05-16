import 'package:flutter/material.dart';
import 'package:tikitaka/screens/widgets/custom_button.dart';
import 'package:tikitaka/screens/widgets/custom_text.dart';
import 'package:tikitaka/screens/widgets/custom_textfield.dart';
import 'package:tikitaka/utils/responsive.dart';
import 'package:tikitaka/utils/socket_methods.dart';

class CreateRoom extends StatefulWidget {
  const CreateRoom({super.key});

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  final TextEditingController _nameController = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void initState() {
    super.initState();
    _socketMethods.createRoomSuccessListener(context);
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                shadows: [
                  Shadow(
                    blurRadius: 40,
                    color: Colors.red,
                  ),
                ],
                text: 'Create Room',
                fontSize: 70,
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                hintText: 'Enter your nickname',
                controller: _nameController,
              ),
              SizedBox(height: size.height * 0.045),
              CustomButton(
                onTap: () => _socketMethods.createRoom(_nameController.text),
                text: 'Create ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
