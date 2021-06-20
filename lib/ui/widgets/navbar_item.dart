part of 'widgets.dart';

class NavbarItem extends StatelessWidget {
  final String? text;
  final void Function()? onPress;
  final Color? color;

  NavbarItem({this.text, this.color, this.onPress});

  // final light = LightColor();
  // final size = SizeInfo();
  final responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        // margin: const EdgeInsets.,
        child: Text(
          text.toString(),
        ),
      ),
      clipBehavior: Clip.none,
      style: TextButton.styleFrom(
        primary: color,

        backgroundColor: Colors.transparent,
        // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: responsive.isMobile(context)
              ? h5
              : responsive.isTablet(context)
                  ? h5
                  : h5,
          height: 1.6,
        ),
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
      onPressed: onPress,
    );
  }
}
