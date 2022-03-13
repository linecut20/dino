import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/cupertino.dart';

import 'character.dart';

class DinoGame extends FlameGame {
  late var _background;
  
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    //background 이미지 추가처리
    _background = await loadParallaxComponent([
      ParallaxImageData('parallax/plx-1.png'),
      ParallaxImageData('parallax/plx-2.png'),
      ParallaxImageData('parallax/plx-3.png'),
      ParallaxImageData('parallax/plx-4.png'),
      ParallaxImageData('parallax/plx-5.png'),
      ParallaxImageData('parallax/plx-6.png'),
    ],
      fill: LayerFill.height,
      alignment: Alignment.center,
      baseVelocity: Vector2(200, 0) // 횡 진행속도, 종 진행속도
    );

    add(_background);
    add(Dino());
  }
}