import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'character.dart';

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

class DinoGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(Dino());
  }
}