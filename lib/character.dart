import 'package:flame/components.dart';

class Dino extends SpriteComponent {
  Future<void> onLoad() async {
    sprite = await Sprite.load('DinoSprites_tard.gif');
    size = Vector2.all(50);
    anchor = Anchor.center;
  }

  @override
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);
    position = gameSize / 2;
  }
}