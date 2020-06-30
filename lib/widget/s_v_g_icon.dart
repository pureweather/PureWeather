import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
// SVG icon
class SVGIcon extends StatelessWidget {
  final String svgAsset;

  SVGIcon(this.svgAsset);

  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = IconTheme.of(context);
    Color color;

    final double iconOpacity = iconTheme.opacity;
    Color iconColor = color ?? iconTheme.color;
    if (iconOpacity != 1.0)
      iconColor = iconColor.withOpacity(iconColor.opacity * iconOpacity);

    return AvdPicture.asset(
      svgAsset,
      color: iconColor,
    );
  }
}
