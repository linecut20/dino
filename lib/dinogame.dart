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
      fill: LayerFill.width,
      alignment: Alignment.center,
      baseVelocity: Vector2(150, 0)
    );

    add(_background);
    add(Dino());
  }
}