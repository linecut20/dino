import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'dinogame.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen(); //전체화면
  Flame.device.setLandscape(); //가로모드
  final myGame = DinoGame();
  runApp(
    GameWidget(
      game: myGame,
    ),
  );
}