import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:tikitaka/screens/providers/room_data_provider.dart';
import 'package:tikitaka/utils/const.dart';

class GameMethod {
  void checkWinner(BuildContext context, Socket socketClient) {
    RoomDataProvider roomDataProvider =
        Provider.of<RoomDataProvider>(context, listen: false);

    String winner = "";

    if (roomDataProvider.displayElement[0] ==
            roomDataProvider.displayElement[1] &&
        roomDataProvider.displayElement[0] ==
            roomDataProvider.displayElement[2] &&
        roomDataProvider.displayElement[0] != '') {
      winner = roomDataProvider.displayElement[0];
    }
    if (roomDataProvider.displayElement[3] ==
            roomDataProvider.displayElement[4] &&
        roomDataProvider.displayElement[3] ==
            roomDataProvider.displayElement[5] &&
        roomDataProvider.displayElement[3] != '') {
      winner = roomDataProvider.displayElement[3];
    }
    if (roomDataProvider.displayElement[6] ==
            roomDataProvider.displayElement[7] &&
        roomDataProvider.displayElement[6] ==
            roomDataProvider.displayElement[8] &&
        roomDataProvider.displayElement[6] != '') {
      winner = roomDataProvider.displayElement[6];
    }

    //column
    if (roomDataProvider.displayElement[0] ==
            roomDataProvider.displayElement[3] &&
        roomDataProvider.displayElement[0] ==
            roomDataProvider.displayElement[6] &&
        roomDataProvider.displayElement[0] != '') {
      winner = roomDataProvider.displayElement[0];
    }

    if (roomDataProvider.displayElement[1] ==
            roomDataProvider.displayElement[4] &&
        roomDataProvider.displayElement[1] ==
            roomDataProvider.displayElement[7] &&
        roomDataProvider.displayElement[1] != '') {
      winner = roomDataProvider.displayElement[1];
    }

    if (roomDataProvider.displayElement[2] ==
            roomDataProvider.displayElement[5] &&
        roomDataProvider.displayElement[2] ==
            roomDataProvider.displayElement[8] &&
        roomDataProvider.displayElement[2] != '') {
      winner = roomDataProvider.displayElement[2];
    }

    // diagonal
    if (roomDataProvider.displayElement[0] ==
            roomDataProvider.displayElement[4] &&
        roomDataProvider.displayElement[0] ==
            roomDataProvider.displayElement[8] &&
        roomDataProvider.displayElement[0] != '') {
      winner = roomDataProvider.displayElement[0];
    }

    if (roomDataProvider.displayElement[2] ==
            roomDataProvider.displayElement[4] &&
        roomDataProvider.displayElement[2] ==
            roomDataProvider.displayElement[6] &&
        roomDataProvider.displayElement[2] != '') {
      winner = roomDataProvider.displayElement[2];
    } else if (roomDataProvider.filledBoxes == 9) {
      winner = '';
      //display draw dialog box
      showGameDialog(context, 'Its a draw');
    }

    if (winner != '') {
      if (roomDataProvider.player1.playerType == winner) {
        //display dialog box player 1 wins
        showGameDialog(context, '${roomDataProvider.player1.nickname} won');
        socketClient.emit('winner', {
          'winnerSocketId': roomDataProvider.player1.socketID,
          'roomId': roomDataProvider.roomData['_id'],
        });
      } else {
        //display dialog box player 2 wins
        showGameDialog(context, '${roomDataProvider.player2.nickname} won');
        socketClient.emit('winner', {
          'winnerSocketId': roomDataProvider.player2.socketID,
          'roomId': roomDataProvider.roomData['_id'],
        });
      }
    }
  }

  void clearBoard(BuildContext context) {
    RoomDataProvider roomDataProvider = Provider.of(context, listen: false);

    for (int i = 0; i < roomDataProvider.roomData.length; i++) {
      roomDataProvider.updateDisplayElements(i, "");
    }

    roomDataProvider.setFilledBoxesToO();
  }
}
