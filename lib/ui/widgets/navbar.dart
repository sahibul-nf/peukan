part of 'widgets.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  var light = LightColor();
  var size = SizeInfo();
  var responsive = Responsive();
  var home = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: light.bg,
      padding: (responsive.isMobile(context))
          ? EdgeInsets.symmetric(horizontal: 24)
          : null,
      child: Row(
        mainAxisAlignment: (responsive.isMobile(context))
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            child: Image.asset('assets/logo.png', height: 70),
            onTap: () {
              Get.toNamed("/");
            },
          ),
          (responsive.isMobile(context))
              ? GestureDetector(
                  child: Icon(UniconsLine.bars),
                  onTap: () {
                    Get.bottomSheet(SideMenu());
                  },
                )
              : Row(
                  children: [
                    NavbarItem(
                      text: "Peukan Store",
                      color: light.title,
                      onPress: () {
                        Get.toNamed("/store");
                      },
                    ),
                    SizedBox(width: 20),
                    NavbarItem(
                      text: "About Us",
                      color: light.title,
                      onPress: () {},
                    ),
                    SizedBox(width: 20),
                    NavbarItem(
                      text: "Patners",
                      color: light.title,
                      onPress: () {},
                    ),
                    SizedBox(width: 20),
                    NavbarItem(
                      text: "Petani Mapan",
                      color: light.title,
                      onPress: () {},
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
