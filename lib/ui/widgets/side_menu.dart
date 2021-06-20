part of 'widgets.dart';

class SideMenu extends StatelessWidget {
  var size = SizeInfo();
  var light = LightColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.fullHeight(context) * 0.7,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      decoration: BoxDecoration(
        color: light.bg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: EdgeInsets.all(4),
              width: size.fullWidth(context),
              color: light.text,
              child: NavbarItem(
                text: "Home",
                color: light.title,
                onPress: () => Get.toNamed("/"),
              ),
            ),
          ),
          SizedBox(height: 10),
          NavbarItem(
            text: "Peukan Store",
            color: light.title,
            onPress: () => Get.toNamed("/store"),
          ),
          SizedBox(height: 10),
          NavbarItem(
            text: "About Us",
            color: light.title,
            onPress: () {},
          ),
          SizedBox(height: 10),
          NavbarItem(
            text: "Patners",
            color: light.title,
            onPress: () {},
          ),
          SizedBox(height: 10),
          NavbarItem(
            text: "Petani Mapan",
            color: light.title,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
