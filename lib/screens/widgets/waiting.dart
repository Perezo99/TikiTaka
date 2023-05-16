import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tikitaka/screens/providers/room_data_provider.dart';
import 'package:tikitaka/screens/widgets/custom_textfield.dart';

class Waiting extends StatefulWidget {
  const Waiting({super.key});

  @override
  State<Waiting> createState() => _WaitingState();
}

class _WaitingState extends State<Waiting> {
  late TextEditingController roomIdController;

  @override
  void initState() {
    super.initState();
    roomIdController = TextEditingController(
      text:
          Provider.of<RoomDataProvider>(context, listen: false).roomData['_id'],
    );
  }

  @override
  void dispose() {
    super.dispose();
    roomIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Waiting for a player to join'),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: '',
          controller: roomIdController,
          isReadOnly: true,
        ),
      ],
    );
  }
}
