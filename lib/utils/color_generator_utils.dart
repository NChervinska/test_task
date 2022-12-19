import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task/resources/app_constants.dart';

/// Random color generator
Color generateRandomColor() {
  return Color.fromRGBO(
    _randomChannelValue(),
    _randomChannelValue(),
    _randomChannelValue(),
    1,
  );
}

int _randomChannelValue() {
  return Random().nextInt(AppConstants.maxChannelValue);
}
