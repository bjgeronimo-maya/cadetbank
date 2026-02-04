import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';
import 'package:flutter/material.dart';
import 'ziggy_loader.dart';

mixin ZiggyOverlay {
  OverlayEntry? entry;

  OverlayEntry _createOverlayEntry(
    bool textVisible, {
    String text = Strings.loadingMessage,
  }) =>
      OverlayEntry(
        builder: (context) => Center(
          child: Material(
            color: Theme.of(context).shadowColor.withValues(alpha: 0.6),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ZiggyLoader(),
                  if (textVisible) ...[
                    const SizedBox(height: Dimens.s48),
                    Text(
                      text,
                      textAlign: TextAlign.center,
                    ),
                  ]
                ],
              ),
            ),
          ),
        ),
      );

  bool get isZiggyOverlayShowing => entry != null;

  void showZiggyOverlay(
    BuildContext context, {
    bool textVisible = true,
    String text = Strings.loadingMessage,
  }) {
    final overlayEntry = _createOverlayEntry(textVisible, text: text);
    entry = overlayEntry;
    Overlay.of(context).insert(overlayEntry);
  }

  void popZiggyOverlay() {
    /// entry.mounted is not set quickly enough to handle all edge-cases
    if (entry != null) {
      entry?.remove();
      entry = null;
    }
  }
}
