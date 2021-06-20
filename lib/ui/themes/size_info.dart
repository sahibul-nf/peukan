part of 'themes.dart';

class SizeInfo {
  // Text size
  final double h1 = 24;
  final double h2 = 22;
  final double h3 = 20;
  final double h4 = 18;
  final double h5 = 16;
  final double h6 = 14;
  final double h7 = 12;

  EdgeInsets padding(
      {double sLeft=0, double sRight=0, double sBottom=0, double sTop=0}) {
    return EdgeInsets.fromLTRB(
      sLeft,
      sTop,
      sRight,
      sBottom,
    );
  }

  EdgeInsets margin(
      {double sLeft=0, double sRight=0, double sBottom=0, double sTop=0}) {
    return EdgeInsets.fromLTRB(
      sLeft,
      sTop,
      sRight,
      sBottom,
    );
  }

  // for Full Width
  double fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // for Full Height
  double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

}
