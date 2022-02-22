import 'package:flame/game.dart';

import 'character.dart';

class DinoGame extends FlameGame {


  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(Dino());
  }
}