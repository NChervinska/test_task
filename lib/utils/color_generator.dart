import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task/resources/app_constants.dart';

/// Random color generator
Color generateColor() {
  return Color.fromRGBO(
    _generateChannelValue(),
    _generateChannelValue(),
    _generateChannelValue(),
    1,
  );
}

int _generateChannelValue() {
  return Random().nextInt(AppConstants.maxChannelValue);
}
