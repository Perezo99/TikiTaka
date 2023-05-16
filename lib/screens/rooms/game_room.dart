import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tikitaka/screens/providers/room_data_provider.dart';
import 'package:tikitaka/screens/widgets/scoreboard.dart';
import 'package:tikitaka/screens/widgets/tictactoe_board.dart';
import 'package:tikitaka/screens/widgets/waiting.dart';
import 'package:tikitaka/utils/socket_methods.dart';

class GameRoom extends StatefulWidget {
  const GameRoom({super.key});

  @override
  State<GameRoom> createState() => _GameRoomState();
}

class _GameRoomState extends State<GameRoom> {
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void initState() {
    super.initState();
    _socketMethods.updateRoomListener(context);
    _socketMethods.updatePlayersStateListener(context);
    _socketMethods.pointIncreaseListener(context);
    _socketMethods.endGameListener(context);
  }

  @override
  Widget build(BuildContext context) {
    RoomDataProvider roomDataProvider = Provider.of<RoomDataProvider>(context);
    return Scaffold(
        body: roomDataProvider.roomData['isJoin']
            ? const Waiting()
            : SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const ScoreBoard(),
                    const TicTacToe(),
                    Text(
                      '${roomDataProvider.roomData['turn']['nickname']}\'s turn',
                    ),
                  ],
                ),
              ));
  }
}
