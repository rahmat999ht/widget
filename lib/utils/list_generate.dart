import 'package:flutter/material.dart';

class UtilList {
  static Widget list({
    required BuildContext? xContext,
    required final int? itemCount,
    required final Widget? card,
    required int? xIndex,
  }) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        xContext = context;
        xIndex = index;
        return card!;
      },
    );
  }

  static listX({
    required int? value,
    required final element,
    required final Widget? card,
  }) {
    for (value in element) {
      return card;
    }
  }
}
