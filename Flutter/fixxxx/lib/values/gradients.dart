/*
*  gradients.dart
*  fixxxx
*
*  Created by wiwekadwi.
*  Copyright © 2018 wiweka. All rights reserved.
    */

import 'package:flutter/rendering.dart';


class Gradients {
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment(0.54939, 0.1603),
    end: Alignment(0.54939, 0.90862),
    stops: [
      0,
      1,
    ],
    colors: [
      Color.fromARGB(255, 100, 212, 234),
      Color.fromARGB(255, 72, 124, 224),
    ],
  );
}