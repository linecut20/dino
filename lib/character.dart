import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';

class Dino extends SpriteAnimationComponent{
  Future<void> onLoad() async {
    // sprite = await Sprite.load('DinoSprites_tard.gif');
    // size = Vector2.all(50);

    // 0 ~ 3 : 정지
    // 4 ~ 10 : 이동
    // 11 ~ 13 : 점프
    // 14 ~ 16 : 피격
    // 17 ~ 23 : 질주
    //SpriteSheet (type : Animation)의 파라미터를 통해 커스텀한 정보를
    //SpriteAnimationComponent에 animation으로 적용 가능
    var sprite = SpriteSheet(
      image: await Flame.images.load('DinoSprites - tard.png'),
      srcSize: Vector2.all(24)
    ).createAnimation(
      from: 0,
      to: 3,
      stepTime: 0.1, row: 0,
    );

    animation = sprite;
    width = 80;
    height = 80;
  }

  @override
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);
    position = Vector2(gameSize.x / 10, gameSize.y / 1.7);
  }
}